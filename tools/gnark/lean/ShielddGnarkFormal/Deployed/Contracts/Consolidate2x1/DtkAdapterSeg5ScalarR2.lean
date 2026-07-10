import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg5_rows22 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow3251 rho ∧ Seg5.relationRow3252 rho ∧ Seg5.relationRow3253 rho ∧ Seg5.relationRow3254 rho ∧ Seg5.relationRow3255 rho ∧ Seg5.relationRow3256 rho ∧ Seg5.relationRow3257 rho ∧ Seg5.relationRow3258 rho ∧ Seg5.relationRow3259 rho ∧ Seg5.relationRow3260 rho ∧ Seg5.relationRow3261 rho ∧ Seg5.relationRow3262 rho ∧ Seg5.relationRow3263 rho := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart40 at p40
  rcases p40 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3251, r3252, r3253, r3254, r3255, r3256, r3257, r3258, r3259, r3260, r3261, r3262, r3263, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3251, r3252, r3253, r3254, r3255, r3256, r3257, r3258, r3259, r3260, r3261, r3262, r3263⟩

theorem seg5_rung22 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2437 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX22 rho : Seg5.F), (seg5AccY22 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 2944 : Seg5.F), (rho 2945 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX22 rho : Seg5.F), (seg5AccY22 rho : Seg5.F)⟩
        ⟨(rho 2944 : Seg5.F), (rho 2945 : Seg5.F)⟩
        ⟨(seg5AccX23 rho : Seg5.F), (seg5AccY23 rho : Seg5.F)⟩
        ⟨(rho 2957 : Seg5.F), (rho 2958 : Seg5.F)⟩ := by
  obtain ⟨r3251, r3252, r3253, r3254, r3255, r3256, r3257, r3258, r3259, r3260, r3261, r3262, r3263⟩ := seg5_rows22 rho h
  unfold Seg5.relationRow3251 at r3251
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3251
  unfold Seg5.relationRow3252 at r3252
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3252
  unfold Seg5.relationRow3253 at r3253
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3253
  unfold Seg5.relationRow3254 at r3254
  unfold Seg5.relationRow3255 at r3255
  unfold Seg5.relationRow3256 at r3256
  unfold Seg5.relationRow3257 at r3257
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3257
  unfold Seg5.relationRow3258 at r3258
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3258
  unfold Seg5.relationRow3259 at r3259
  unfold Seg5.relationRow3260 at r3260
  unfold Seg5.relationRow3261 at r3261
  unfold Seg5.relationRow3262 at r3262
  unfold Seg5.relationRow3263 at r3263
  have hrung22 (bit : Bool) (hbit : rho 2437 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX22 rho : Seg5.F), (seg5AccY22 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 2944 : Seg5.F), (rho 2945 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX22 rho : Seg5.F), (seg5AccY22 rho : Seg5.F)⟩
        ⟨(rho 2944 : Seg5.F), (rho 2945 : Seg5.F)⟩
        ⟨(seg5AccX23 rho : Seg5.F), (seg5AccY23 rho : Seg5.F)⟩
        ⟨(rho 2957 : Seg5.F), (rho 2958 : Seg5.F)⟩ := by
    have hnextx : seg5AccX23 rho = seg5AccX22 rho + rho 2952 := by
      unfold seg5AccX23 seg5AccX22
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 22]
      ring
    have hnexty : seg5AccY23 rho = seg5AccY22 rho + rho 2953 := by
      unfold seg5AccY23 seg5AccY22
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 22]
      ring
    have ha0 : (rho 2944 + rho 2945) * (seg5AccX22 rho + seg5AccY22 rho) = rho 2946 := by
      unfold seg5AccX22 seg5AccY22
      linear_combination r3251
    have ha1 : rho 2945 * seg5AccX22 rho = rho 2947 := by
      unfold seg5AccX22
      linear_combination r3252
    have ha2 : rho 2944 * seg5AccY22 rho = rho 2948 := by
      unfold seg5AccY22
      linear_combination r3253
    have ha3 : 3021 * rho 2947 * rho 2948 = rho 2949 := by
      linear_combination r3254
    have ha4 : rho 2950 * (1 + rho 2949) = rho 2947 + rho 2948 := by
      linear_combination r3255
    have ha5 : rho 2951 * (1 - rho 2949) = rho 2946 - rho 2947 - rho 2948 := by
      linear_combination r3256
    have haddx :
        rho 2950 * (1 + 3021 * (rho 2945 * seg5AccX22 rho) * (rho 2944 * seg5AccY22 rho)) =
          rho 2945 * seg5AccX22 rho + rho 2944 * seg5AccY22 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 2951 * (1 - 3021 * (rho 2945 * seg5AccX22 rho) * (rho 2944 * seg5AccY22 rho)) =
          (-1) * (rho 2945 * seg5AccX22 rho) - rho 2944 * seg5AccY22 rho +
            (seg5AccY22 rho - seg5AccX22 rho * (-1)) * (rho 2944 + rho 2945) := by
      rw [ha1, ha2, ha3]
      calc
        rho 2951 * (1 - rho 2949) = rho 2946 - rho 2947 - rho 2948 := ha5
        _ = (-1) * rho 2947 - rho 2948 + (seg5AccY22 rho - seg5AccX22 rho * (-1)) * (rho 2944 + rho 2945) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX23 rho = seg5AccX22 rho - Bool.toZMod bit * (seg5AccX22 rho - rho 2950) := by
      have hd : rho 2952 = Bool.toZMod bit * (rho 2950 - seg5AccX22 rho) := by
        rw [← hbit]
        unfold seg5AccX22
        linear_combination -r3257
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY23 rho = seg5AccY22 rho - Bool.toZMod bit * (seg5AccY22 rho - rho 2951) := by
      have hd : rho 2953 = Bool.toZMod bit * (rho 2951 - seg5AccY22 rho) := by
        rw [← hbit]
        unfold seg5AccY22
        linear_combination -r3258
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 2944 * rho 2945 = rho 2954 := by linear_combination r3259
    have hd1 : rho 2944 * rho 2944 = rho 2955 := by linear_combination r3260
    have hd2 : rho 2945 * rho 2945 = rho 2956 := by linear_combination r3261
    have hd3 : rho 2957 * (rho 2945 * rho 2945 + rho 2944 * rho 2944 * (-1)) = 2 * (rho 2944 * rho 2945) := by
      rw [hd0, hd1, hd2]
      linear_combination r3262
    have hd4 : rho 2958 * (2 - (rho 2945 * rho 2945 + rho 2944 * rho 2944 * (-1))) = rho 2945 * rho 2945 - rho 2944 * rho 2944 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3263
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX22 rho : Seg5.F), (seg5AccY22 rho : Seg5.F)⟩
      ⟨(rho 2944 : Seg5.F), (rho 2945 : Seg5.F)⟩
      ⟨(rho 2950 : Seg5.F), (rho 2951 : Seg5.F)⟩
      ⟨(seg5AccX23 rho : Seg5.F), (seg5AccY23 rho : Seg5.F)⟩
      ⟨(rho 2957 : Seg5.F), (rho 2958 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung22

theorem seg5_rows23 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow3264 rho ∧ Seg5.relationRow3265 rho ∧ Seg5.relationRow3266 rho ∧ Seg5.relationRow3267 rho ∧ Seg5.relationRow3268 rho ∧ Seg5.relationRow3269 rho ∧ Seg5.relationRow3270 rho ∧ Seg5.relationRow3271 rho ∧ Seg5.relationRow3272 rho ∧ Seg5.relationRow3273 rho ∧ Seg5.relationRow3274 rho ∧ Seg5.relationRow3275 rho ∧ Seg5.relationRow3276 rho := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart40 at p40
  rcases p40 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3264, r3265, r3266, r3267, r3268, r3269, r3270, r3271, r3272, r3273, r3274, r3275, r3276, _, _, _⟩
  exact ⟨r3264, r3265, r3266, r3267, r3268, r3269, r3270, r3271, r3272, r3273, r3274, r3275, r3276⟩

theorem seg5_rung23 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2438 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX23 rho : Seg5.F), (seg5AccY23 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 2957 : Seg5.F), (rho 2958 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX23 rho : Seg5.F), (seg5AccY23 rho : Seg5.F)⟩
        ⟨(rho 2957 : Seg5.F), (rho 2958 : Seg5.F)⟩
        ⟨(seg5AccX24 rho : Seg5.F), (seg5AccY24 rho : Seg5.F)⟩
        ⟨(rho 2970 : Seg5.F), (rho 2971 : Seg5.F)⟩ := by
  obtain ⟨r3264, r3265, r3266, r3267, r3268, r3269, r3270, r3271, r3272, r3273, r3274, r3275, r3276⟩ := seg5_rows23 rho h
  unfold Seg5.relationRow3264 at r3264
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3264
  unfold Seg5.relationRow3265 at r3265
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3265
  unfold Seg5.relationRow3266 at r3266
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3266
  unfold Seg5.relationRow3267 at r3267
  unfold Seg5.relationRow3268 at r3268
  unfold Seg5.relationRow3269 at r3269
  unfold Seg5.relationRow3270 at r3270
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3270
  unfold Seg5.relationRow3271 at r3271
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3271
  unfold Seg5.relationRow3272 at r3272
  unfold Seg5.relationRow3273 at r3273
  unfold Seg5.relationRow3274 at r3274
  unfold Seg5.relationRow3275 at r3275
  unfold Seg5.relationRow3276 at r3276
  have hrung23 (bit : Bool) (hbit : rho 2438 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX23 rho : Seg5.F), (seg5AccY23 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 2957 : Seg5.F), (rho 2958 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX23 rho : Seg5.F), (seg5AccY23 rho : Seg5.F)⟩
        ⟨(rho 2957 : Seg5.F), (rho 2958 : Seg5.F)⟩
        ⟨(seg5AccX24 rho : Seg5.F), (seg5AccY24 rho : Seg5.F)⟩
        ⟨(rho 2970 : Seg5.F), (rho 2971 : Seg5.F)⟩ := by
    have hnextx : seg5AccX24 rho = seg5AccX23 rho + rho 2965 := by
      unfold seg5AccX24 seg5AccX23
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 23]
      ring
    have hnexty : seg5AccY24 rho = seg5AccY23 rho + rho 2966 := by
      unfold seg5AccY24 seg5AccY23
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 23]
      ring
    have ha0 : (rho 2957 + rho 2958) * (seg5AccX23 rho + seg5AccY23 rho) = rho 2959 := by
      unfold seg5AccX23 seg5AccY23
      linear_combination r3264
    have ha1 : rho 2958 * seg5AccX23 rho = rho 2960 := by
      unfold seg5AccX23
      linear_combination r3265
    have ha2 : rho 2957 * seg5AccY23 rho = rho 2961 := by
      unfold seg5AccY23
      linear_combination r3266
    have ha3 : 3021 * rho 2960 * rho 2961 = rho 2962 := by
      linear_combination r3267
    have ha4 : rho 2963 * (1 + rho 2962) = rho 2960 + rho 2961 := by
      linear_combination r3268
    have ha5 : rho 2964 * (1 - rho 2962) = rho 2959 - rho 2960 - rho 2961 := by
      linear_combination r3269
    have haddx :
        rho 2963 * (1 + 3021 * (rho 2958 * seg5AccX23 rho) * (rho 2957 * seg5AccY23 rho)) =
          rho 2958 * seg5AccX23 rho + rho 2957 * seg5AccY23 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 2964 * (1 - 3021 * (rho 2958 * seg5AccX23 rho) * (rho 2957 * seg5AccY23 rho)) =
          (-1) * (rho 2958 * seg5AccX23 rho) - rho 2957 * seg5AccY23 rho +
            (seg5AccY23 rho - seg5AccX23 rho * (-1)) * (rho 2957 + rho 2958) := by
      rw [ha1, ha2, ha3]
      calc
        rho 2964 * (1 - rho 2962) = rho 2959 - rho 2960 - rho 2961 := ha5
        _ = (-1) * rho 2960 - rho 2961 + (seg5AccY23 rho - seg5AccX23 rho * (-1)) * (rho 2957 + rho 2958) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX24 rho = seg5AccX23 rho - Bool.toZMod bit * (seg5AccX23 rho - rho 2963) := by
      have hd : rho 2965 = Bool.toZMod bit * (rho 2963 - seg5AccX23 rho) := by
        rw [← hbit]
        unfold seg5AccX23
        linear_combination -r3270
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY24 rho = seg5AccY23 rho - Bool.toZMod bit * (seg5AccY23 rho - rho 2964) := by
      have hd : rho 2966 = Bool.toZMod bit * (rho 2964 - seg5AccY23 rho) := by
        rw [← hbit]
        unfold seg5AccY23
        linear_combination -r3271
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 2957 * rho 2958 = rho 2967 := by linear_combination r3272
    have hd1 : rho 2957 * rho 2957 = rho 2968 := by linear_combination r3273
    have hd2 : rho 2958 * rho 2958 = rho 2969 := by linear_combination r3274
    have hd3 : rho 2970 * (rho 2958 * rho 2958 + rho 2957 * rho 2957 * (-1)) = 2 * (rho 2957 * rho 2958) := by
      rw [hd0, hd1, hd2]
      linear_combination r3275
    have hd4 : rho 2971 * (2 - (rho 2958 * rho 2958 + rho 2957 * rho 2957 * (-1))) = rho 2958 * rho 2958 - rho 2957 * rho 2957 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3276
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX23 rho : Seg5.F), (seg5AccY23 rho : Seg5.F)⟩
      ⟨(rho 2957 : Seg5.F), (rho 2958 : Seg5.F)⟩
      ⟨(rho 2963 : Seg5.F), (rho 2964 : Seg5.F)⟩
      ⟨(seg5AccX24 rho : Seg5.F), (seg5AccY24 rho : Seg5.F)⟩
      ⟨(rho 2970 : Seg5.F), (rho 2971 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung23

theorem seg5_rows24 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow3277 rho ∧ Seg5.relationRow3278 rho ∧ Seg5.relationRow3279 rho ∧ Seg5.relationRow3280 rho ∧ Seg5.relationRow3281 rho ∧ Seg5.relationRow3282 rho ∧ Seg5.relationRow3283 rho ∧ Seg5.relationRow3284 rho ∧ Seg5.relationRow3285 rho ∧ Seg5.relationRow3286 rho ∧ Seg5.relationRow3287 rho ∧ Seg5.relationRow3288 rho ∧ Seg5.relationRow3289 rho := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart40 at p40
  rcases p40 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3277, r3278, r3279⟩
  unfold Seg5.relationPart41 at p41
  rcases p41 with ⟨r3280, r3281, r3282, r3283, r3284, r3285, r3286, r3287, r3288, r3289, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3277, r3278, r3279, r3280, r3281, r3282, r3283, r3284, r3285, r3286, r3287, r3288, r3289⟩

theorem seg5_rung24 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2439 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX24 rho : Seg5.F), (seg5AccY24 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 2970 : Seg5.F), (rho 2971 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX24 rho : Seg5.F), (seg5AccY24 rho : Seg5.F)⟩
        ⟨(rho 2970 : Seg5.F), (rho 2971 : Seg5.F)⟩
        ⟨(seg5AccX25 rho : Seg5.F), (seg5AccY25 rho : Seg5.F)⟩
        ⟨(rho 2983 : Seg5.F), (rho 2984 : Seg5.F)⟩ := by
  obtain ⟨r3277, r3278, r3279, r3280, r3281, r3282, r3283, r3284, r3285, r3286, r3287, r3288, r3289⟩ := seg5_rows24 rho h
  unfold Seg5.relationRow3277 at r3277
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3277
  unfold Seg5.relationRow3278 at r3278
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3278
  unfold Seg5.relationRow3279 at r3279
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3279
  unfold Seg5.relationRow3280 at r3280
  unfold Seg5.relationRow3281 at r3281
  unfold Seg5.relationRow3282 at r3282
  unfold Seg5.relationRow3283 at r3283
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3283
  unfold Seg5.relationRow3284 at r3284
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3284
  unfold Seg5.relationRow3285 at r3285
  unfold Seg5.relationRow3286 at r3286
  unfold Seg5.relationRow3287 at r3287
  unfold Seg5.relationRow3288 at r3288
  unfold Seg5.relationRow3289 at r3289
  have hrung24 (bit : Bool) (hbit : rho 2439 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX24 rho : Seg5.F), (seg5AccY24 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 2970 : Seg5.F), (rho 2971 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX24 rho : Seg5.F), (seg5AccY24 rho : Seg5.F)⟩
        ⟨(rho 2970 : Seg5.F), (rho 2971 : Seg5.F)⟩
        ⟨(seg5AccX25 rho : Seg5.F), (seg5AccY25 rho : Seg5.F)⟩
        ⟨(rho 2983 : Seg5.F), (rho 2984 : Seg5.F)⟩ := by
    have hnextx : seg5AccX25 rho = seg5AccX24 rho + rho 2978 := by
      unfold seg5AccX25 seg5AccX24
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 24]
      ring
    have hnexty : seg5AccY25 rho = seg5AccY24 rho + rho 2979 := by
      unfold seg5AccY25 seg5AccY24
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 24]
      ring
    have ha0 : (rho 2970 + rho 2971) * (seg5AccX24 rho + seg5AccY24 rho) = rho 2972 := by
      unfold seg5AccX24 seg5AccY24
      linear_combination r3277
    have ha1 : rho 2971 * seg5AccX24 rho = rho 2973 := by
      unfold seg5AccX24
      linear_combination r3278
    have ha2 : rho 2970 * seg5AccY24 rho = rho 2974 := by
      unfold seg5AccY24
      linear_combination r3279
    have ha3 : 3021 * rho 2973 * rho 2974 = rho 2975 := by
      linear_combination r3280
    have ha4 : rho 2976 * (1 + rho 2975) = rho 2973 + rho 2974 := by
      linear_combination r3281
    have ha5 : rho 2977 * (1 - rho 2975) = rho 2972 - rho 2973 - rho 2974 := by
      linear_combination r3282
    have haddx :
        rho 2976 * (1 + 3021 * (rho 2971 * seg5AccX24 rho) * (rho 2970 * seg5AccY24 rho)) =
          rho 2971 * seg5AccX24 rho + rho 2970 * seg5AccY24 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 2977 * (1 - 3021 * (rho 2971 * seg5AccX24 rho) * (rho 2970 * seg5AccY24 rho)) =
          (-1) * (rho 2971 * seg5AccX24 rho) - rho 2970 * seg5AccY24 rho +
            (seg5AccY24 rho - seg5AccX24 rho * (-1)) * (rho 2970 + rho 2971) := by
      rw [ha1, ha2, ha3]
      calc
        rho 2977 * (1 - rho 2975) = rho 2972 - rho 2973 - rho 2974 := ha5
        _ = (-1) * rho 2973 - rho 2974 + (seg5AccY24 rho - seg5AccX24 rho * (-1)) * (rho 2970 + rho 2971) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX25 rho = seg5AccX24 rho - Bool.toZMod bit * (seg5AccX24 rho - rho 2976) := by
      have hd : rho 2978 = Bool.toZMod bit * (rho 2976 - seg5AccX24 rho) := by
        rw [← hbit]
        unfold seg5AccX24
        linear_combination -r3283
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY25 rho = seg5AccY24 rho - Bool.toZMod bit * (seg5AccY24 rho - rho 2977) := by
      have hd : rho 2979 = Bool.toZMod bit * (rho 2977 - seg5AccY24 rho) := by
        rw [← hbit]
        unfold seg5AccY24
        linear_combination -r3284
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 2970 * rho 2971 = rho 2980 := by linear_combination r3285
    have hd1 : rho 2970 * rho 2970 = rho 2981 := by linear_combination r3286
    have hd2 : rho 2971 * rho 2971 = rho 2982 := by linear_combination r3287
    have hd3 : rho 2983 * (rho 2971 * rho 2971 + rho 2970 * rho 2970 * (-1)) = 2 * (rho 2970 * rho 2971) := by
      rw [hd0, hd1, hd2]
      linear_combination r3288
    have hd4 : rho 2984 * (2 - (rho 2971 * rho 2971 + rho 2970 * rho 2970 * (-1))) = rho 2971 * rho 2971 - rho 2970 * rho 2970 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3289
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX24 rho : Seg5.F), (seg5AccY24 rho : Seg5.F)⟩
      ⟨(rho 2970 : Seg5.F), (rho 2971 : Seg5.F)⟩
      ⟨(rho 2976 : Seg5.F), (rho 2977 : Seg5.F)⟩
      ⟨(seg5AccX25 rho : Seg5.F), (seg5AccY25 rho : Seg5.F)⟩
      ⟨(rho 2983 : Seg5.F), (rho 2984 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung24

theorem seg5_rows25 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow3290 rho ∧ Seg5.relationRow3291 rho ∧ Seg5.relationRow3292 rho ∧ Seg5.relationRow3293 rho ∧ Seg5.relationRow3294 rho ∧ Seg5.relationRow3295 rho ∧ Seg5.relationRow3296 rho ∧ Seg5.relationRow3297 rho ∧ Seg5.relationRow3298 rho ∧ Seg5.relationRow3299 rho ∧ Seg5.relationRow3300 rho ∧ Seg5.relationRow3301 rho ∧ Seg5.relationRow3302 rho := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart41 at p41
  rcases p41 with ⟨_, _, _, _, _, _, _, _, _, _, r3290, r3291, r3292, r3293, r3294, r3295, r3296, r3297, r3298, r3299, r3300, r3301, r3302, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3290, r3291, r3292, r3293, r3294, r3295, r3296, r3297, r3298, r3299, r3300, r3301, r3302⟩

theorem seg5_rung25 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2440 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX25 rho : Seg5.F), (seg5AccY25 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 2983 : Seg5.F), (rho 2984 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX25 rho : Seg5.F), (seg5AccY25 rho : Seg5.F)⟩
        ⟨(rho 2983 : Seg5.F), (rho 2984 : Seg5.F)⟩
        ⟨(seg5AccX26 rho : Seg5.F), (seg5AccY26 rho : Seg5.F)⟩
        ⟨(rho 2996 : Seg5.F), (rho 2997 : Seg5.F)⟩ := by
  obtain ⟨r3290, r3291, r3292, r3293, r3294, r3295, r3296, r3297, r3298, r3299, r3300, r3301, r3302⟩ := seg5_rows25 rho h
  unfold Seg5.relationRow3290 at r3290
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3290
  unfold Seg5.relationRow3291 at r3291
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3291
  unfold Seg5.relationRow3292 at r3292
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3292
  unfold Seg5.relationRow3293 at r3293
  unfold Seg5.relationRow3294 at r3294
  unfold Seg5.relationRow3295 at r3295
  unfold Seg5.relationRow3296 at r3296
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3296
  unfold Seg5.relationRow3297 at r3297
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3297
  unfold Seg5.relationRow3298 at r3298
  unfold Seg5.relationRow3299 at r3299
  unfold Seg5.relationRow3300 at r3300
  unfold Seg5.relationRow3301 at r3301
  unfold Seg5.relationRow3302 at r3302
  have hrung25 (bit : Bool) (hbit : rho 2440 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX25 rho : Seg5.F), (seg5AccY25 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 2983 : Seg5.F), (rho 2984 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX25 rho : Seg5.F), (seg5AccY25 rho : Seg5.F)⟩
        ⟨(rho 2983 : Seg5.F), (rho 2984 : Seg5.F)⟩
        ⟨(seg5AccX26 rho : Seg5.F), (seg5AccY26 rho : Seg5.F)⟩
        ⟨(rho 2996 : Seg5.F), (rho 2997 : Seg5.F)⟩ := by
    have hnextx : seg5AccX26 rho = seg5AccX25 rho + rho 2991 := by
      unfold seg5AccX26 seg5AccX25
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 25]
      ring
    have hnexty : seg5AccY26 rho = seg5AccY25 rho + rho 2992 := by
      unfold seg5AccY26 seg5AccY25
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 25]
      ring
    have ha0 : (rho 2983 + rho 2984) * (seg5AccX25 rho + seg5AccY25 rho) = rho 2985 := by
      unfold seg5AccX25 seg5AccY25
      linear_combination r3290
    have ha1 : rho 2984 * seg5AccX25 rho = rho 2986 := by
      unfold seg5AccX25
      linear_combination r3291
    have ha2 : rho 2983 * seg5AccY25 rho = rho 2987 := by
      unfold seg5AccY25
      linear_combination r3292
    have ha3 : 3021 * rho 2986 * rho 2987 = rho 2988 := by
      linear_combination r3293
    have ha4 : rho 2989 * (1 + rho 2988) = rho 2986 + rho 2987 := by
      linear_combination r3294
    have ha5 : rho 2990 * (1 - rho 2988) = rho 2985 - rho 2986 - rho 2987 := by
      linear_combination r3295
    have haddx :
        rho 2989 * (1 + 3021 * (rho 2984 * seg5AccX25 rho) * (rho 2983 * seg5AccY25 rho)) =
          rho 2984 * seg5AccX25 rho + rho 2983 * seg5AccY25 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 2990 * (1 - 3021 * (rho 2984 * seg5AccX25 rho) * (rho 2983 * seg5AccY25 rho)) =
          (-1) * (rho 2984 * seg5AccX25 rho) - rho 2983 * seg5AccY25 rho +
            (seg5AccY25 rho - seg5AccX25 rho * (-1)) * (rho 2983 + rho 2984) := by
      rw [ha1, ha2, ha3]
      calc
        rho 2990 * (1 - rho 2988) = rho 2985 - rho 2986 - rho 2987 := ha5
        _ = (-1) * rho 2986 - rho 2987 + (seg5AccY25 rho - seg5AccX25 rho * (-1)) * (rho 2983 + rho 2984) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX26 rho = seg5AccX25 rho - Bool.toZMod bit * (seg5AccX25 rho - rho 2989) := by
      have hd : rho 2991 = Bool.toZMod bit * (rho 2989 - seg5AccX25 rho) := by
        rw [← hbit]
        unfold seg5AccX25
        linear_combination -r3296
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY26 rho = seg5AccY25 rho - Bool.toZMod bit * (seg5AccY25 rho - rho 2990) := by
      have hd : rho 2992 = Bool.toZMod bit * (rho 2990 - seg5AccY25 rho) := by
        rw [← hbit]
        unfold seg5AccY25
        linear_combination -r3297
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 2983 * rho 2984 = rho 2993 := by linear_combination r3298
    have hd1 : rho 2983 * rho 2983 = rho 2994 := by linear_combination r3299
    have hd2 : rho 2984 * rho 2984 = rho 2995 := by linear_combination r3300
    have hd3 : rho 2996 * (rho 2984 * rho 2984 + rho 2983 * rho 2983 * (-1)) = 2 * (rho 2983 * rho 2984) := by
      rw [hd0, hd1, hd2]
      linear_combination r3301
    have hd4 : rho 2997 * (2 - (rho 2984 * rho 2984 + rho 2983 * rho 2983 * (-1))) = rho 2984 * rho 2984 - rho 2983 * rho 2983 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3302
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX25 rho : Seg5.F), (seg5AccY25 rho : Seg5.F)⟩
      ⟨(rho 2983 : Seg5.F), (rho 2984 : Seg5.F)⟩
      ⟨(rho 2989 : Seg5.F), (rho 2990 : Seg5.F)⟩
      ⟨(seg5AccX26 rho : Seg5.F), (seg5AccY26 rho : Seg5.F)⟩
      ⟨(rho 2996 : Seg5.F), (rho 2997 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung25

theorem seg5_rows26 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow3303 rho ∧ Seg5.relationRow3304 rho ∧ Seg5.relationRow3305 rho ∧ Seg5.relationRow3306 rho ∧ Seg5.relationRow3307 rho ∧ Seg5.relationRow3308 rho ∧ Seg5.relationRow3309 rho ∧ Seg5.relationRow3310 rho ∧ Seg5.relationRow3311 rho ∧ Seg5.relationRow3312 rho ∧ Seg5.relationRow3313 rho ∧ Seg5.relationRow3314 rho ∧ Seg5.relationRow3315 rho := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart41 at p41
  rcases p41 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3303, r3304, r3305, r3306, r3307, r3308, r3309, r3310, r3311, r3312, r3313, r3314, r3315, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3303, r3304, r3305, r3306, r3307, r3308, r3309, r3310, r3311, r3312, r3313, r3314, r3315⟩

theorem seg5_rung26 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2441 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX26 rho : Seg5.F), (seg5AccY26 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 2996 : Seg5.F), (rho 2997 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX26 rho : Seg5.F), (seg5AccY26 rho : Seg5.F)⟩
        ⟨(rho 2996 : Seg5.F), (rho 2997 : Seg5.F)⟩
        ⟨(seg5AccX27 rho : Seg5.F), (seg5AccY27 rho : Seg5.F)⟩
        ⟨(rho 3009 : Seg5.F), (rho 3010 : Seg5.F)⟩ := by
  obtain ⟨r3303, r3304, r3305, r3306, r3307, r3308, r3309, r3310, r3311, r3312, r3313, r3314, r3315⟩ := seg5_rows26 rho h
  unfold Seg5.relationRow3303 at r3303
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3303
  unfold Seg5.relationRow3304 at r3304
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3304
  unfold Seg5.relationRow3305 at r3305
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3305
  unfold Seg5.relationRow3306 at r3306
  unfold Seg5.relationRow3307 at r3307
  unfold Seg5.relationRow3308 at r3308
  unfold Seg5.relationRow3309 at r3309
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3309
  unfold Seg5.relationRow3310 at r3310
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3310
  unfold Seg5.relationRow3311 at r3311
  unfold Seg5.relationRow3312 at r3312
  unfold Seg5.relationRow3313 at r3313
  unfold Seg5.relationRow3314 at r3314
  unfold Seg5.relationRow3315 at r3315
  have hrung26 (bit : Bool) (hbit : rho 2441 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX26 rho : Seg5.F), (seg5AccY26 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 2996 : Seg5.F), (rho 2997 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX26 rho : Seg5.F), (seg5AccY26 rho : Seg5.F)⟩
        ⟨(rho 2996 : Seg5.F), (rho 2997 : Seg5.F)⟩
        ⟨(seg5AccX27 rho : Seg5.F), (seg5AccY27 rho : Seg5.F)⟩
        ⟨(rho 3009 : Seg5.F), (rho 3010 : Seg5.F)⟩ := by
    have hnextx : seg5AccX27 rho = seg5AccX26 rho + rho 3004 := by
      unfold seg5AccX27 seg5AccX26
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 26]
      ring
    have hnexty : seg5AccY27 rho = seg5AccY26 rho + rho 3005 := by
      unfold seg5AccY27 seg5AccY26
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 26]
      ring
    have ha0 : (rho 2996 + rho 2997) * (seg5AccX26 rho + seg5AccY26 rho) = rho 2998 := by
      unfold seg5AccX26 seg5AccY26
      linear_combination r3303
    have ha1 : rho 2997 * seg5AccX26 rho = rho 2999 := by
      unfold seg5AccX26
      linear_combination r3304
    have ha2 : rho 2996 * seg5AccY26 rho = rho 3000 := by
      unfold seg5AccY26
      linear_combination r3305
    have ha3 : 3021 * rho 2999 * rho 3000 = rho 3001 := by
      linear_combination r3306
    have ha4 : rho 3002 * (1 + rho 3001) = rho 2999 + rho 3000 := by
      linear_combination r3307
    have ha5 : rho 3003 * (1 - rho 3001) = rho 2998 - rho 2999 - rho 3000 := by
      linear_combination r3308
    have haddx :
        rho 3002 * (1 + 3021 * (rho 2997 * seg5AccX26 rho) * (rho 2996 * seg5AccY26 rho)) =
          rho 2997 * seg5AccX26 rho + rho 2996 * seg5AccY26 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3003 * (1 - 3021 * (rho 2997 * seg5AccX26 rho) * (rho 2996 * seg5AccY26 rho)) =
          (-1) * (rho 2997 * seg5AccX26 rho) - rho 2996 * seg5AccY26 rho +
            (seg5AccY26 rho - seg5AccX26 rho * (-1)) * (rho 2996 + rho 2997) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3003 * (1 - rho 3001) = rho 2998 - rho 2999 - rho 3000 := ha5
        _ = (-1) * rho 2999 - rho 3000 + (seg5AccY26 rho - seg5AccX26 rho * (-1)) * (rho 2996 + rho 2997) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX27 rho = seg5AccX26 rho - Bool.toZMod bit * (seg5AccX26 rho - rho 3002) := by
      have hd : rho 3004 = Bool.toZMod bit * (rho 3002 - seg5AccX26 rho) := by
        rw [← hbit]
        unfold seg5AccX26
        linear_combination -r3309
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY27 rho = seg5AccY26 rho - Bool.toZMod bit * (seg5AccY26 rho - rho 3003) := by
      have hd : rho 3005 = Bool.toZMod bit * (rho 3003 - seg5AccY26 rho) := by
        rw [← hbit]
        unfold seg5AccY26
        linear_combination -r3310
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 2996 * rho 2997 = rho 3006 := by linear_combination r3311
    have hd1 : rho 2996 * rho 2996 = rho 3007 := by linear_combination r3312
    have hd2 : rho 2997 * rho 2997 = rho 3008 := by linear_combination r3313
    have hd3 : rho 3009 * (rho 2997 * rho 2997 + rho 2996 * rho 2996 * (-1)) = 2 * (rho 2996 * rho 2997) := by
      rw [hd0, hd1, hd2]
      linear_combination r3314
    have hd4 : rho 3010 * (2 - (rho 2997 * rho 2997 + rho 2996 * rho 2996 * (-1))) = rho 2997 * rho 2997 - rho 2996 * rho 2996 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3315
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX26 rho : Seg5.F), (seg5AccY26 rho : Seg5.F)⟩
      ⟨(rho 2996 : Seg5.F), (rho 2997 : Seg5.F)⟩
      ⟨(rho 3002 : Seg5.F), (rho 3003 : Seg5.F)⟩
      ⟨(seg5AccX27 rho : Seg5.F), (seg5AccY27 rho : Seg5.F)⟩
      ⟨(rho 3009 : Seg5.F), (rho 3010 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung26

theorem seg5_rows27 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow3316 rho ∧ Seg5.relationRow3317 rho ∧ Seg5.relationRow3318 rho ∧ Seg5.relationRow3319 rho ∧ Seg5.relationRow3320 rho ∧ Seg5.relationRow3321 rho ∧ Seg5.relationRow3322 rho ∧ Seg5.relationRow3323 rho ∧ Seg5.relationRow3324 rho ∧ Seg5.relationRow3325 rho ∧ Seg5.relationRow3326 rho ∧ Seg5.relationRow3327 rho ∧ Seg5.relationRow3328 rho := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart41 at p41
  rcases p41 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3316, r3317, r3318, r3319, r3320, r3321, r3322, r3323, r3324, r3325, r3326, r3327, r3328, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3316, r3317, r3318, r3319, r3320, r3321, r3322, r3323, r3324, r3325, r3326, r3327, r3328⟩

theorem seg5_rung27 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2442 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX27 rho : Seg5.F), (seg5AccY27 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3009 : Seg5.F), (rho 3010 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX27 rho : Seg5.F), (seg5AccY27 rho : Seg5.F)⟩
        ⟨(rho 3009 : Seg5.F), (rho 3010 : Seg5.F)⟩
        ⟨(seg5AccX28 rho : Seg5.F), (seg5AccY28 rho : Seg5.F)⟩
        ⟨(rho 3022 : Seg5.F), (rho 3023 : Seg5.F)⟩ := by
  obtain ⟨r3316, r3317, r3318, r3319, r3320, r3321, r3322, r3323, r3324, r3325, r3326, r3327, r3328⟩ := seg5_rows27 rho h
  unfold Seg5.relationRow3316 at r3316
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3316
  unfold Seg5.relationRow3317 at r3317
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3317
  unfold Seg5.relationRow3318 at r3318
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3318
  unfold Seg5.relationRow3319 at r3319
  unfold Seg5.relationRow3320 at r3320
  unfold Seg5.relationRow3321 at r3321
  unfold Seg5.relationRow3322 at r3322
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3322
  unfold Seg5.relationRow3323 at r3323
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3323
  unfold Seg5.relationRow3324 at r3324
  unfold Seg5.relationRow3325 at r3325
  unfold Seg5.relationRow3326 at r3326
  unfold Seg5.relationRow3327 at r3327
  unfold Seg5.relationRow3328 at r3328
  have hrung27 (bit : Bool) (hbit : rho 2442 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX27 rho : Seg5.F), (seg5AccY27 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3009 : Seg5.F), (rho 3010 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX27 rho : Seg5.F), (seg5AccY27 rho : Seg5.F)⟩
        ⟨(rho 3009 : Seg5.F), (rho 3010 : Seg5.F)⟩
        ⟨(seg5AccX28 rho : Seg5.F), (seg5AccY28 rho : Seg5.F)⟩
        ⟨(rho 3022 : Seg5.F), (rho 3023 : Seg5.F)⟩ := by
    have hnextx : seg5AccX28 rho = seg5AccX27 rho + rho 3017 := by
      unfold seg5AccX28 seg5AccX27
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 27]
      ring
    have hnexty : seg5AccY28 rho = seg5AccY27 rho + rho 3018 := by
      unfold seg5AccY28 seg5AccY27
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 27]
      ring
    have ha0 : (rho 3009 + rho 3010) * (seg5AccX27 rho + seg5AccY27 rho) = rho 3011 := by
      unfold seg5AccX27 seg5AccY27
      linear_combination r3316
    have ha1 : rho 3010 * seg5AccX27 rho = rho 3012 := by
      unfold seg5AccX27
      linear_combination r3317
    have ha2 : rho 3009 * seg5AccY27 rho = rho 3013 := by
      unfold seg5AccY27
      linear_combination r3318
    have ha3 : 3021 * rho 3012 * rho 3013 = rho 3014 := by
      linear_combination r3319
    have ha4 : rho 3015 * (1 + rho 3014) = rho 3012 + rho 3013 := by
      linear_combination r3320
    have ha5 : rho 3016 * (1 - rho 3014) = rho 3011 - rho 3012 - rho 3013 := by
      linear_combination r3321
    have haddx :
        rho 3015 * (1 + 3021 * (rho 3010 * seg5AccX27 rho) * (rho 3009 * seg5AccY27 rho)) =
          rho 3010 * seg5AccX27 rho + rho 3009 * seg5AccY27 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3016 * (1 - 3021 * (rho 3010 * seg5AccX27 rho) * (rho 3009 * seg5AccY27 rho)) =
          (-1) * (rho 3010 * seg5AccX27 rho) - rho 3009 * seg5AccY27 rho +
            (seg5AccY27 rho - seg5AccX27 rho * (-1)) * (rho 3009 + rho 3010) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3016 * (1 - rho 3014) = rho 3011 - rho 3012 - rho 3013 := ha5
        _ = (-1) * rho 3012 - rho 3013 + (seg5AccY27 rho - seg5AccX27 rho * (-1)) * (rho 3009 + rho 3010) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX28 rho = seg5AccX27 rho - Bool.toZMod bit * (seg5AccX27 rho - rho 3015) := by
      have hd : rho 3017 = Bool.toZMod bit * (rho 3015 - seg5AccX27 rho) := by
        rw [← hbit]
        unfold seg5AccX27
        linear_combination -r3322
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY28 rho = seg5AccY27 rho - Bool.toZMod bit * (seg5AccY27 rho - rho 3016) := by
      have hd : rho 3018 = Bool.toZMod bit * (rho 3016 - seg5AccY27 rho) := by
        rw [← hbit]
        unfold seg5AccY27
        linear_combination -r3323
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3009 * rho 3010 = rho 3019 := by linear_combination r3324
    have hd1 : rho 3009 * rho 3009 = rho 3020 := by linear_combination r3325
    have hd2 : rho 3010 * rho 3010 = rho 3021 := by linear_combination r3326
    have hd3 : rho 3022 * (rho 3010 * rho 3010 + rho 3009 * rho 3009 * (-1)) = 2 * (rho 3009 * rho 3010) := by
      rw [hd0, hd1, hd2]
      linear_combination r3327
    have hd4 : rho 3023 * (2 - (rho 3010 * rho 3010 + rho 3009 * rho 3009 * (-1))) = rho 3010 * rho 3010 - rho 3009 * rho 3009 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3328
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX27 rho : Seg5.F), (seg5AccY27 rho : Seg5.F)⟩
      ⟨(rho 3009 : Seg5.F), (rho 3010 : Seg5.F)⟩
      ⟨(rho 3015 : Seg5.F), (rho 3016 : Seg5.F)⟩
      ⟨(seg5AccX28 rho : Seg5.F), (seg5AccY28 rho : Seg5.F)⟩
      ⟨(rho 3022 : Seg5.F), (rho 3023 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung27

theorem seg5_rows28 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow3329 rho ∧ Seg5.relationRow3330 rho ∧ Seg5.relationRow3331 rho ∧ Seg5.relationRow3332 rho ∧ Seg5.relationRow3333 rho ∧ Seg5.relationRow3334 rho ∧ Seg5.relationRow3335 rho ∧ Seg5.relationRow3336 rho ∧ Seg5.relationRow3337 rho ∧ Seg5.relationRow3338 rho ∧ Seg5.relationRow3339 rho ∧ Seg5.relationRow3340 rho ∧ Seg5.relationRow3341 rho := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart41 at p41
  rcases p41 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3329, r3330, r3331, r3332, r3333, r3334, r3335, r3336, r3337, r3338, r3339, r3340, r3341, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3329, r3330, r3331, r3332, r3333, r3334, r3335, r3336, r3337, r3338, r3339, r3340, r3341⟩

theorem seg5_rung28 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2443 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX28 rho : Seg5.F), (seg5AccY28 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3022 : Seg5.F), (rho 3023 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX28 rho : Seg5.F), (seg5AccY28 rho : Seg5.F)⟩
        ⟨(rho 3022 : Seg5.F), (rho 3023 : Seg5.F)⟩
        ⟨(seg5AccX29 rho : Seg5.F), (seg5AccY29 rho : Seg5.F)⟩
        ⟨(rho 3035 : Seg5.F), (rho 3036 : Seg5.F)⟩ := by
  obtain ⟨r3329, r3330, r3331, r3332, r3333, r3334, r3335, r3336, r3337, r3338, r3339, r3340, r3341⟩ := seg5_rows28 rho h
  unfold Seg5.relationRow3329 at r3329
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3329
  unfold Seg5.relationRow3330 at r3330
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3330
  unfold Seg5.relationRow3331 at r3331
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3331
  unfold Seg5.relationRow3332 at r3332
  unfold Seg5.relationRow3333 at r3333
  unfold Seg5.relationRow3334 at r3334
  unfold Seg5.relationRow3335 at r3335
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3335
  unfold Seg5.relationRow3336 at r3336
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3336
  unfold Seg5.relationRow3337 at r3337
  unfold Seg5.relationRow3338 at r3338
  unfold Seg5.relationRow3339 at r3339
  unfold Seg5.relationRow3340 at r3340
  unfold Seg5.relationRow3341 at r3341
  have hrung28 (bit : Bool) (hbit : rho 2443 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX28 rho : Seg5.F), (seg5AccY28 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3022 : Seg5.F), (rho 3023 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX28 rho : Seg5.F), (seg5AccY28 rho : Seg5.F)⟩
        ⟨(rho 3022 : Seg5.F), (rho 3023 : Seg5.F)⟩
        ⟨(seg5AccX29 rho : Seg5.F), (seg5AccY29 rho : Seg5.F)⟩
        ⟨(rho 3035 : Seg5.F), (rho 3036 : Seg5.F)⟩ := by
    have hnextx : seg5AccX29 rho = seg5AccX28 rho + rho 3030 := by
      unfold seg5AccX29 seg5AccX28
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 28]
      ring
    have hnexty : seg5AccY29 rho = seg5AccY28 rho + rho 3031 := by
      unfold seg5AccY29 seg5AccY28
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 28]
      ring
    have ha0 : (rho 3022 + rho 3023) * (seg5AccX28 rho + seg5AccY28 rho) = rho 3024 := by
      unfold seg5AccX28 seg5AccY28
      linear_combination r3329
    have ha1 : rho 3023 * seg5AccX28 rho = rho 3025 := by
      unfold seg5AccX28
      linear_combination r3330
    have ha2 : rho 3022 * seg5AccY28 rho = rho 3026 := by
      unfold seg5AccY28
      linear_combination r3331
    have ha3 : 3021 * rho 3025 * rho 3026 = rho 3027 := by
      linear_combination r3332
    have ha4 : rho 3028 * (1 + rho 3027) = rho 3025 + rho 3026 := by
      linear_combination r3333
    have ha5 : rho 3029 * (1 - rho 3027) = rho 3024 - rho 3025 - rho 3026 := by
      linear_combination r3334
    have haddx :
        rho 3028 * (1 + 3021 * (rho 3023 * seg5AccX28 rho) * (rho 3022 * seg5AccY28 rho)) =
          rho 3023 * seg5AccX28 rho + rho 3022 * seg5AccY28 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3029 * (1 - 3021 * (rho 3023 * seg5AccX28 rho) * (rho 3022 * seg5AccY28 rho)) =
          (-1) * (rho 3023 * seg5AccX28 rho) - rho 3022 * seg5AccY28 rho +
            (seg5AccY28 rho - seg5AccX28 rho * (-1)) * (rho 3022 + rho 3023) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3029 * (1 - rho 3027) = rho 3024 - rho 3025 - rho 3026 := ha5
        _ = (-1) * rho 3025 - rho 3026 + (seg5AccY28 rho - seg5AccX28 rho * (-1)) * (rho 3022 + rho 3023) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX29 rho = seg5AccX28 rho - Bool.toZMod bit * (seg5AccX28 rho - rho 3028) := by
      have hd : rho 3030 = Bool.toZMod bit * (rho 3028 - seg5AccX28 rho) := by
        rw [← hbit]
        unfold seg5AccX28
        linear_combination -r3335
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY29 rho = seg5AccY28 rho - Bool.toZMod bit * (seg5AccY28 rho - rho 3029) := by
      have hd : rho 3031 = Bool.toZMod bit * (rho 3029 - seg5AccY28 rho) := by
        rw [← hbit]
        unfold seg5AccY28
        linear_combination -r3336
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3022 * rho 3023 = rho 3032 := by linear_combination r3337
    have hd1 : rho 3022 * rho 3022 = rho 3033 := by linear_combination r3338
    have hd2 : rho 3023 * rho 3023 = rho 3034 := by linear_combination r3339
    have hd3 : rho 3035 * (rho 3023 * rho 3023 + rho 3022 * rho 3022 * (-1)) = 2 * (rho 3022 * rho 3023) := by
      rw [hd0, hd1, hd2]
      linear_combination r3340
    have hd4 : rho 3036 * (2 - (rho 3023 * rho 3023 + rho 3022 * rho 3022 * (-1))) = rho 3023 * rho 3023 - rho 3022 * rho 3022 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3341
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX28 rho : Seg5.F), (seg5AccY28 rho : Seg5.F)⟩
      ⟨(rho 3022 : Seg5.F), (rho 3023 : Seg5.F)⟩
      ⟨(rho 3028 : Seg5.F), (rho 3029 : Seg5.F)⟩
      ⟨(seg5AccX29 rho : Seg5.F), (seg5AccY29 rho : Seg5.F)⟩
      ⟨(rho 3035 : Seg5.F), (rho 3036 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung28

theorem seg5_rows29 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow3342 rho ∧ Seg5.relationRow3343 rho ∧ Seg5.relationRow3344 rho ∧ Seg5.relationRow3345 rho ∧ Seg5.relationRow3346 rho ∧ Seg5.relationRow3347 rho ∧ Seg5.relationRow3348 rho ∧ Seg5.relationRow3349 rho ∧ Seg5.relationRow3350 rho ∧ Seg5.relationRow3351 rho ∧ Seg5.relationRow3352 rho ∧ Seg5.relationRow3353 rho ∧ Seg5.relationRow3354 rho := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart41 at p41
  rcases p41 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3342, r3343, r3344, r3345, r3346, r3347, r3348, r3349, r3350, r3351, r3352, r3353, r3354, _, _, _, _, _⟩
  exact ⟨r3342, r3343, r3344, r3345, r3346, r3347, r3348, r3349, r3350, r3351, r3352, r3353, r3354⟩

theorem seg5_rung29 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2444 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX29 rho : Seg5.F), (seg5AccY29 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3035 : Seg5.F), (rho 3036 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX29 rho : Seg5.F), (seg5AccY29 rho : Seg5.F)⟩
        ⟨(rho 3035 : Seg5.F), (rho 3036 : Seg5.F)⟩
        ⟨(seg5AccX30 rho : Seg5.F), (seg5AccY30 rho : Seg5.F)⟩
        ⟨(rho 3048 : Seg5.F), (rho 3049 : Seg5.F)⟩ := by
  obtain ⟨r3342, r3343, r3344, r3345, r3346, r3347, r3348, r3349, r3350, r3351, r3352, r3353, r3354⟩ := seg5_rows29 rho h
  unfold Seg5.relationRow3342 at r3342
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3342
  unfold Seg5.relationRow3343 at r3343
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3343
  unfold Seg5.relationRow3344 at r3344
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3344
  unfold Seg5.relationRow3345 at r3345
  unfold Seg5.relationRow3346 at r3346
  unfold Seg5.relationRow3347 at r3347
  unfold Seg5.relationRow3348 at r3348
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3348
  unfold Seg5.relationRow3349 at r3349
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3349
  unfold Seg5.relationRow3350 at r3350
  unfold Seg5.relationRow3351 at r3351
  unfold Seg5.relationRow3352 at r3352
  unfold Seg5.relationRow3353 at r3353
  unfold Seg5.relationRow3354 at r3354
  have hrung29 (bit : Bool) (hbit : rho 2444 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX29 rho : Seg5.F), (seg5AccY29 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3035 : Seg5.F), (rho 3036 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX29 rho : Seg5.F), (seg5AccY29 rho : Seg5.F)⟩
        ⟨(rho 3035 : Seg5.F), (rho 3036 : Seg5.F)⟩
        ⟨(seg5AccX30 rho : Seg5.F), (seg5AccY30 rho : Seg5.F)⟩
        ⟨(rho 3048 : Seg5.F), (rho 3049 : Seg5.F)⟩ := by
    have hnextx : seg5AccX30 rho = seg5AccX29 rho + rho 3043 := by
      unfold seg5AccX30 seg5AccX29
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 29]
      ring
    have hnexty : seg5AccY30 rho = seg5AccY29 rho + rho 3044 := by
      unfold seg5AccY30 seg5AccY29
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 29]
      ring
    have ha0 : (rho 3035 + rho 3036) * (seg5AccX29 rho + seg5AccY29 rho) = rho 3037 := by
      unfold seg5AccX29 seg5AccY29
      linear_combination r3342
    have ha1 : rho 3036 * seg5AccX29 rho = rho 3038 := by
      unfold seg5AccX29
      linear_combination r3343
    have ha2 : rho 3035 * seg5AccY29 rho = rho 3039 := by
      unfold seg5AccY29
      linear_combination r3344
    have ha3 : 3021 * rho 3038 * rho 3039 = rho 3040 := by
      linear_combination r3345
    have ha4 : rho 3041 * (1 + rho 3040) = rho 3038 + rho 3039 := by
      linear_combination r3346
    have ha5 : rho 3042 * (1 - rho 3040) = rho 3037 - rho 3038 - rho 3039 := by
      linear_combination r3347
    have haddx :
        rho 3041 * (1 + 3021 * (rho 3036 * seg5AccX29 rho) * (rho 3035 * seg5AccY29 rho)) =
          rho 3036 * seg5AccX29 rho + rho 3035 * seg5AccY29 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3042 * (1 - 3021 * (rho 3036 * seg5AccX29 rho) * (rho 3035 * seg5AccY29 rho)) =
          (-1) * (rho 3036 * seg5AccX29 rho) - rho 3035 * seg5AccY29 rho +
            (seg5AccY29 rho - seg5AccX29 rho * (-1)) * (rho 3035 + rho 3036) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3042 * (1 - rho 3040) = rho 3037 - rho 3038 - rho 3039 := ha5
        _ = (-1) * rho 3038 - rho 3039 + (seg5AccY29 rho - seg5AccX29 rho * (-1)) * (rho 3035 + rho 3036) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX30 rho = seg5AccX29 rho - Bool.toZMod bit * (seg5AccX29 rho - rho 3041) := by
      have hd : rho 3043 = Bool.toZMod bit * (rho 3041 - seg5AccX29 rho) := by
        rw [← hbit]
        unfold seg5AccX29
        linear_combination -r3348
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY30 rho = seg5AccY29 rho - Bool.toZMod bit * (seg5AccY29 rho - rho 3042) := by
      have hd : rho 3044 = Bool.toZMod bit * (rho 3042 - seg5AccY29 rho) := by
        rw [← hbit]
        unfold seg5AccY29
        linear_combination -r3349
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3035 * rho 3036 = rho 3045 := by linear_combination r3350
    have hd1 : rho 3035 * rho 3035 = rho 3046 := by linear_combination r3351
    have hd2 : rho 3036 * rho 3036 = rho 3047 := by linear_combination r3352
    have hd3 : rho 3048 * (rho 3036 * rho 3036 + rho 3035 * rho 3035 * (-1)) = 2 * (rho 3035 * rho 3036) := by
      rw [hd0, hd1, hd2]
      linear_combination r3353
    have hd4 : rho 3049 * (2 - (rho 3036 * rho 3036 + rho 3035 * rho 3035 * (-1))) = rho 3036 * rho 3036 - rho 3035 * rho 3035 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3354
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX29 rho : Seg5.F), (seg5AccY29 rho : Seg5.F)⟩
      ⟨(rho 3035 : Seg5.F), (rho 3036 : Seg5.F)⟩
      ⟨(rho 3041 : Seg5.F), (rho 3042 : Seg5.F)⟩
      ⟨(seg5AccX30 rho : Seg5.F), (seg5AccY30 rho : Seg5.F)⟩
      ⟨(rho 3048 : Seg5.F), (rho 3049 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung29

theorem seg5_rows30 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow3355 rho ∧ Seg5.relationRow3356 rho ∧ Seg5.relationRow3357 rho ∧ Seg5.relationRow3358 rho ∧ Seg5.relationRow3359 rho ∧ Seg5.relationRow3360 rho ∧ Seg5.relationRow3361 rho ∧ Seg5.relationRow3362 rho ∧ Seg5.relationRow3363 rho ∧ Seg5.relationRow3364 rho ∧ Seg5.relationRow3365 rho ∧ Seg5.relationRow3366 rho ∧ Seg5.relationRow3367 rho := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart41 at p41
  rcases p41 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3355, r3356, r3357, r3358, r3359⟩
  unfold Seg5.relationPart42 at p42
  rcases p42 with ⟨r3360, r3361, r3362, r3363, r3364, r3365, r3366, r3367, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3355, r3356, r3357, r3358, r3359, r3360, r3361, r3362, r3363, r3364, r3365, r3366, r3367⟩

theorem seg5_rung30 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2445 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX30 rho : Seg5.F), (seg5AccY30 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3048 : Seg5.F), (rho 3049 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX30 rho : Seg5.F), (seg5AccY30 rho : Seg5.F)⟩
        ⟨(rho 3048 : Seg5.F), (rho 3049 : Seg5.F)⟩
        ⟨(seg5AccX31 rho : Seg5.F), (seg5AccY31 rho : Seg5.F)⟩
        ⟨(rho 3061 : Seg5.F), (rho 3062 : Seg5.F)⟩ := by
  obtain ⟨r3355, r3356, r3357, r3358, r3359, r3360, r3361, r3362, r3363, r3364, r3365, r3366, r3367⟩ := seg5_rows30 rho h
  unfold Seg5.relationRow3355 at r3355
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3355
  unfold Seg5.relationRow3356 at r3356
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3356
  unfold Seg5.relationRow3357 at r3357
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3357
  unfold Seg5.relationRow3358 at r3358
  unfold Seg5.relationRow3359 at r3359
  unfold Seg5.relationRow3360 at r3360
  unfold Seg5.relationRow3361 at r3361
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3361
  unfold Seg5.relationRow3362 at r3362
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3362
  unfold Seg5.relationRow3363 at r3363
  unfold Seg5.relationRow3364 at r3364
  unfold Seg5.relationRow3365 at r3365
  unfold Seg5.relationRow3366 at r3366
  unfold Seg5.relationRow3367 at r3367
  have hrung30 (bit : Bool) (hbit : rho 2445 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX30 rho : Seg5.F), (seg5AccY30 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3048 : Seg5.F), (rho 3049 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX30 rho : Seg5.F), (seg5AccY30 rho : Seg5.F)⟩
        ⟨(rho 3048 : Seg5.F), (rho 3049 : Seg5.F)⟩
        ⟨(seg5AccX31 rho : Seg5.F), (seg5AccY31 rho : Seg5.F)⟩
        ⟨(rho 3061 : Seg5.F), (rho 3062 : Seg5.F)⟩ := by
    have hnextx : seg5AccX31 rho = seg5AccX30 rho + rho 3056 := by
      unfold seg5AccX31 seg5AccX30
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 30]
      ring
    have hnexty : seg5AccY31 rho = seg5AccY30 rho + rho 3057 := by
      unfold seg5AccY31 seg5AccY30
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 30]
      ring
    have ha0 : (rho 3048 + rho 3049) * (seg5AccX30 rho + seg5AccY30 rho) = rho 3050 := by
      unfold seg5AccX30 seg5AccY30
      linear_combination r3355
    have ha1 : rho 3049 * seg5AccX30 rho = rho 3051 := by
      unfold seg5AccX30
      linear_combination r3356
    have ha2 : rho 3048 * seg5AccY30 rho = rho 3052 := by
      unfold seg5AccY30
      linear_combination r3357
    have ha3 : 3021 * rho 3051 * rho 3052 = rho 3053 := by
      linear_combination r3358
    have ha4 : rho 3054 * (1 + rho 3053) = rho 3051 + rho 3052 := by
      linear_combination r3359
    have ha5 : rho 3055 * (1 - rho 3053) = rho 3050 - rho 3051 - rho 3052 := by
      linear_combination r3360
    have haddx :
        rho 3054 * (1 + 3021 * (rho 3049 * seg5AccX30 rho) * (rho 3048 * seg5AccY30 rho)) =
          rho 3049 * seg5AccX30 rho + rho 3048 * seg5AccY30 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3055 * (1 - 3021 * (rho 3049 * seg5AccX30 rho) * (rho 3048 * seg5AccY30 rho)) =
          (-1) * (rho 3049 * seg5AccX30 rho) - rho 3048 * seg5AccY30 rho +
            (seg5AccY30 rho - seg5AccX30 rho * (-1)) * (rho 3048 + rho 3049) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3055 * (1 - rho 3053) = rho 3050 - rho 3051 - rho 3052 := ha5
        _ = (-1) * rho 3051 - rho 3052 + (seg5AccY30 rho - seg5AccX30 rho * (-1)) * (rho 3048 + rho 3049) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX31 rho = seg5AccX30 rho - Bool.toZMod bit * (seg5AccX30 rho - rho 3054) := by
      have hd : rho 3056 = Bool.toZMod bit * (rho 3054 - seg5AccX30 rho) := by
        rw [← hbit]
        unfold seg5AccX30
        linear_combination -r3361
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY31 rho = seg5AccY30 rho - Bool.toZMod bit * (seg5AccY30 rho - rho 3055) := by
      have hd : rho 3057 = Bool.toZMod bit * (rho 3055 - seg5AccY30 rho) := by
        rw [← hbit]
        unfold seg5AccY30
        linear_combination -r3362
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3048 * rho 3049 = rho 3058 := by linear_combination r3363
    have hd1 : rho 3048 * rho 3048 = rho 3059 := by linear_combination r3364
    have hd2 : rho 3049 * rho 3049 = rho 3060 := by linear_combination r3365
    have hd3 : rho 3061 * (rho 3049 * rho 3049 + rho 3048 * rho 3048 * (-1)) = 2 * (rho 3048 * rho 3049) := by
      rw [hd0, hd1, hd2]
      linear_combination r3366
    have hd4 : rho 3062 * (2 - (rho 3049 * rho 3049 + rho 3048 * rho 3048 * (-1))) = rho 3049 * rho 3049 - rho 3048 * rho 3048 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3367
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX30 rho : Seg5.F), (seg5AccY30 rho : Seg5.F)⟩
      ⟨(rho 3048 : Seg5.F), (rho 3049 : Seg5.F)⟩
      ⟨(rho 3054 : Seg5.F), (rho 3055 : Seg5.F)⟩
      ⟨(seg5AccX31 rho : Seg5.F), (seg5AccY31 rho : Seg5.F)⟩
      ⟨(rho 3061 : Seg5.F), (rho 3062 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung30

theorem seg5_rows31 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow3368 rho ∧ Seg5.relationRow3369 rho ∧ Seg5.relationRow3370 rho ∧ Seg5.relationRow3371 rho ∧ Seg5.relationRow3372 rho ∧ Seg5.relationRow3373 rho ∧ Seg5.relationRow3374 rho ∧ Seg5.relationRow3375 rho ∧ Seg5.relationRow3376 rho ∧ Seg5.relationRow3377 rho ∧ Seg5.relationRow3378 rho ∧ Seg5.relationRow3379 rho ∧ Seg5.relationRow3380 rho := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart42 at p42
  rcases p42 with ⟨_, _, _, _, _, _, _, _, r3368, r3369, r3370, r3371, r3372, r3373, r3374, r3375, r3376, r3377, r3378, r3379, r3380, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3368, r3369, r3370, r3371, r3372, r3373, r3374, r3375, r3376, r3377, r3378, r3379, r3380⟩

theorem seg5_rung31 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2446 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX31 rho : Seg5.F), (seg5AccY31 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3061 : Seg5.F), (rho 3062 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX31 rho : Seg5.F), (seg5AccY31 rho : Seg5.F)⟩
        ⟨(rho 3061 : Seg5.F), (rho 3062 : Seg5.F)⟩
        ⟨(seg5AccX32 rho : Seg5.F), (seg5AccY32 rho : Seg5.F)⟩
        ⟨(rho 3074 : Seg5.F), (rho 3075 : Seg5.F)⟩ := by
  obtain ⟨r3368, r3369, r3370, r3371, r3372, r3373, r3374, r3375, r3376, r3377, r3378, r3379, r3380⟩ := seg5_rows31 rho h
  unfold Seg5.relationRow3368 at r3368
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3368
  unfold Seg5.relationRow3369 at r3369
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3369
  unfold Seg5.relationRow3370 at r3370
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3370
  unfold Seg5.relationRow3371 at r3371
  unfold Seg5.relationRow3372 at r3372
  unfold Seg5.relationRow3373 at r3373
  unfold Seg5.relationRow3374 at r3374
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3374
  unfold Seg5.relationRow3375 at r3375
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3375
  unfold Seg5.relationRow3376 at r3376
  unfold Seg5.relationRow3377 at r3377
  unfold Seg5.relationRow3378 at r3378
  unfold Seg5.relationRow3379 at r3379
  unfold Seg5.relationRow3380 at r3380
  have hrung31 (bit : Bool) (hbit : rho 2446 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX31 rho : Seg5.F), (seg5AccY31 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3061 : Seg5.F), (rho 3062 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX31 rho : Seg5.F), (seg5AccY31 rho : Seg5.F)⟩
        ⟨(rho 3061 : Seg5.F), (rho 3062 : Seg5.F)⟩
        ⟨(seg5AccX32 rho : Seg5.F), (seg5AccY32 rho : Seg5.F)⟩
        ⟨(rho 3074 : Seg5.F), (rho 3075 : Seg5.F)⟩ := by
    have hnextx : seg5AccX32 rho = seg5AccX31 rho + rho 3069 := by
      unfold seg5AccX32 seg5AccX31
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 31]
      ring
    have hnexty : seg5AccY32 rho = seg5AccY31 rho + rho 3070 := by
      unfold seg5AccY32 seg5AccY31
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 31]
      ring
    have ha0 : (rho 3061 + rho 3062) * (seg5AccX31 rho + seg5AccY31 rho) = rho 3063 := by
      unfold seg5AccX31 seg5AccY31
      linear_combination r3368
    have ha1 : rho 3062 * seg5AccX31 rho = rho 3064 := by
      unfold seg5AccX31
      linear_combination r3369
    have ha2 : rho 3061 * seg5AccY31 rho = rho 3065 := by
      unfold seg5AccY31
      linear_combination r3370
    have ha3 : 3021 * rho 3064 * rho 3065 = rho 3066 := by
      linear_combination r3371
    have ha4 : rho 3067 * (1 + rho 3066) = rho 3064 + rho 3065 := by
      linear_combination r3372
    have ha5 : rho 3068 * (1 - rho 3066) = rho 3063 - rho 3064 - rho 3065 := by
      linear_combination r3373
    have haddx :
        rho 3067 * (1 + 3021 * (rho 3062 * seg5AccX31 rho) * (rho 3061 * seg5AccY31 rho)) =
          rho 3062 * seg5AccX31 rho + rho 3061 * seg5AccY31 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3068 * (1 - 3021 * (rho 3062 * seg5AccX31 rho) * (rho 3061 * seg5AccY31 rho)) =
          (-1) * (rho 3062 * seg5AccX31 rho) - rho 3061 * seg5AccY31 rho +
            (seg5AccY31 rho - seg5AccX31 rho * (-1)) * (rho 3061 + rho 3062) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3068 * (1 - rho 3066) = rho 3063 - rho 3064 - rho 3065 := ha5
        _ = (-1) * rho 3064 - rho 3065 + (seg5AccY31 rho - seg5AccX31 rho * (-1)) * (rho 3061 + rho 3062) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX32 rho = seg5AccX31 rho - Bool.toZMod bit * (seg5AccX31 rho - rho 3067) := by
      have hd : rho 3069 = Bool.toZMod bit * (rho 3067 - seg5AccX31 rho) := by
        rw [← hbit]
        unfold seg5AccX31
        linear_combination -r3374
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY32 rho = seg5AccY31 rho - Bool.toZMod bit * (seg5AccY31 rho - rho 3068) := by
      have hd : rho 3070 = Bool.toZMod bit * (rho 3068 - seg5AccY31 rho) := by
        rw [← hbit]
        unfold seg5AccY31
        linear_combination -r3375
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3061 * rho 3062 = rho 3071 := by linear_combination r3376
    have hd1 : rho 3061 * rho 3061 = rho 3072 := by linear_combination r3377
    have hd2 : rho 3062 * rho 3062 = rho 3073 := by linear_combination r3378
    have hd3 : rho 3074 * (rho 3062 * rho 3062 + rho 3061 * rho 3061 * (-1)) = 2 * (rho 3061 * rho 3062) := by
      rw [hd0, hd1, hd2]
      linear_combination r3379
    have hd4 : rho 3075 * (2 - (rho 3062 * rho 3062 + rho 3061 * rho 3061 * (-1))) = rho 3062 * rho 3062 - rho 3061 * rho 3061 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3380
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX31 rho : Seg5.F), (seg5AccY31 rho : Seg5.F)⟩
      ⟨(rho 3061 : Seg5.F), (rho 3062 : Seg5.F)⟩
      ⟨(rho 3067 : Seg5.F), (rho 3068 : Seg5.F)⟩
      ⟨(seg5AccX32 rho : Seg5.F), (seg5AccY32 rho : Seg5.F)⟩
      ⟨(rho 3074 : Seg5.F), (rho 3075 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung31

theorem seg5_rows32 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow3381 rho ∧ Seg5.relationRow3382 rho ∧ Seg5.relationRow3383 rho ∧ Seg5.relationRow3384 rho ∧ Seg5.relationRow3385 rho ∧ Seg5.relationRow3386 rho ∧ Seg5.relationRow3387 rho ∧ Seg5.relationRow3388 rho ∧ Seg5.relationRow3389 rho ∧ Seg5.relationRow3390 rho ∧ Seg5.relationRow3391 rho ∧ Seg5.relationRow3392 rho ∧ Seg5.relationRow3393 rho := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart42 at p42
  rcases p42 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3381, r3382, r3383, r3384, r3385, r3386, r3387, r3388, r3389, r3390, r3391, r3392, r3393, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3381, r3382, r3383, r3384, r3385, r3386, r3387, r3388, r3389, r3390, r3391, r3392, r3393⟩

theorem seg5_rung32 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2447 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX32 rho : Seg5.F), (seg5AccY32 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3074 : Seg5.F), (rho 3075 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX32 rho : Seg5.F), (seg5AccY32 rho : Seg5.F)⟩
        ⟨(rho 3074 : Seg5.F), (rho 3075 : Seg5.F)⟩
        ⟨(seg5AccX33 rho : Seg5.F), (seg5AccY33 rho : Seg5.F)⟩
        ⟨(rho 3087 : Seg5.F), (rho 3088 : Seg5.F)⟩ := by
  obtain ⟨r3381, r3382, r3383, r3384, r3385, r3386, r3387, r3388, r3389, r3390, r3391, r3392, r3393⟩ := seg5_rows32 rho h
  unfold Seg5.relationRow3381 at r3381
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3381
  unfold Seg5.relationRow3382 at r3382
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3382
  unfold Seg5.relationRow3383 at r3383
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3383
  unfold Seg5.relationRow3384 at r3384
  unfold Seg5.relationRow3385 at r3385
  unfold Seg5.relationRow3386 at r3386
  unfold Seg5.relationRow3387 at r3387
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3387
  unfold Seg5.relationRow3388 at r3388
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3388
  unfold Seg5.relationRow3389 at r3389
  unfold Seg5.relationRow3390 at r3390
  unfold Seg5.relationRow3391 at r3391
  unfold Seg5.relationRow3392 at r3392
  unfold Seg5.relationRow3393 at r3393
  have hrung32 (bit : Bool) (hbit : rho 2447 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX32 rho : Seg5.F), (seg5AccY32 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3074 : Seg5.F), (rho 3075 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX32 rho : Seg5.F), (seg5AccY32 rho : Seg5.F)⟩
        ⟨(rho 3074 : Seg5.F), (rho 3075 : Seg5.F)⟩
        ⟨(seg5AccX33 rho : Seg5.F), (seg5AccY33 rho : Seg5.F)⟩
        ⟨(rho 3087 : Seg5.F), (rho 3088 : Seg5.F)⟩ := by
    have hnextx : seg5AccX33 rho = seg5AccX32 rho + rho 3082 := by
      unfold seg5AccX33 seg5AccX32
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 32]
      ring
    have hnexty : seg5AccY33 rho = seg5AccY32 rho + rho 3083 := by
      unfold seg5AccY33 seg5AccY32
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 32]
      ring
    have ha0 : (rho 3074 + rho 3075) * (seg5AccX32 rho + seg5AccY32 rho) = rho 3076 := by
      unfold seg5AccX32 seg5AccY32
      linear_combination r3381
    have ha1 : rho 3075 * seg5AccX32 rho = rho 3077 := by
      unfold seg5AccX32
      linear_combination r3382
    have ha2 : rho 3074 * seg5AccY32 rho = rho 3078 := by
      unfold seg5AccY32
      linear_combination r3383
    have ha3 : 3021 * rho 3077 * rho 3078 = rho 3079 := by
      linear_combination r3384
    have ha4 : rho 3080 * (1 + rho 3079) = rho 3077 + rho 3078 := by
      linear_combination r3385
    have ha5 : rho 3081 * (1 - rho 3079) = rho 3076 - rho 3077 - rho 3078 := by
      linear_combination r3386
    have haddx :
        rho 3080 * (1 + 3021 * (rho 3075 * seg5AccX32 rho) * (rho 3074 * seg5AccY32 rho)) =
          rho 3075 * seg5AccX32 rho + rho 3074 * seg5AccY32 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3081 * (1 - 3021 * (rho 3075 * seg5AccX32 rho) * (rho 3074 * seg5AccY32 rho)) =
          (-1) * (rho 3075 * seg5AccX32 rho) - rho 3074 * seg5AccY32 rho +
            (seg5AccY32 rho - seg5AccX32 rho * (-1)) * (rho 3074 + rho 3075) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3081 * (1 - rho 3079) = rho 3076 - rho 3077 - rho 3078 := ha5
        _ = (-1) * rho 3077 - rho 3078 + (seg5AccY32 rho - seg5AccX32 rho * (-1)) * (rho 3074 + rho 3075) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX33 rho = seg5AccX32 rho - Bool.toZMod bit * (seg5AccX32 rho - rho 3080) := by
      have hd : rho 3082 = Bool.toZMod bit * (rho 3080 - seg5AccX32 rho) := by
        rw [← hbit]
        unfold seg5AccX32
        linear_combination -r3387
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY33 rho = seg5AccY32 rho - Bool.toZMod bit * (seg5AccY32 rho - rho 3081) := by
      have hd : rho 3083 = Bool.toZMod bit * (rho 3081 - seg5AccY32 rho) := by
        rw [← hbit]
        unfold seg5AccY32
        linear_combination -r3388
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3074 * rho 3075 = rho 3084 := by linear_combination r3389
    have hd1 : rho 3074 * rho 3074 = rho 3085 := by linear_combination r3390
    have hd2 : rho 3075 * rho 3075 = rho 3086 := by linear_combination r3391
    have hd3 : rho 3087 * (rho 3075 * rho 3075 + rho 3074 * rho 3074 * (-1)) = 2 * (rho 3074 * rho 3075) := by
      rw [hd0, hd1, hd2]
      linear_combination r3392
    have hd4 : rho 3088 * (2 - (rho 3075 * rho 3075 + rho 3074 * rho 3074 * (-1))) = rho 3075 * rho 3075 - rho 3074 * rho 3074 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3393
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX32 rho : Seg5.F), (seg5AccY32 rho : Seg5.F)⟩
      ⟨(rho 3074 : Seg5.F), (rho 3075 : Seg5.F)⟩
      ⟨(rho 3080 : Seg5.F), (rho 3081 : Seg5.F)⟩
      ⟨(seg5AccX33 rho : Seg5.F), (seg5AccY33 rho : Seg5.F)⟩
      ⟨(rho 3087 : Seg5.F), (rho 3088 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung32

theorem seg5_hstep_c2 (rho : Nat -> Seg5.F) (h : Seg5.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (2415 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 22 ≤ i → i < 33 →
      EdwardsBridge.onCurve (seg5LadderAccState rho i) →
      EdwardsBridge.onCurve (seg5LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg5LadderAccState rho i) (seg5LadderCurState rho i)
        (seg5LadderAccState rho (i + 1)) (seg5LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg5_rung22 rho h bits[22]! (hbitAt 22 (by omega)) hacc hcur
  · exact seg5_rung23 rho h bits[23]! (hbitAt 23 (by omega)) hacc hcur
  · exact seg5_rung24 rho h bits[24]! (hbitAt 24 (by omega)) hacc hcur
  · exact seg5_rung25 rho h bits[25]! (hbitAt 25 (by omega)) hacc hcur
  · exact seg5_rung26 rho h bits[26]! (hbitAt 26 (by omega)) hacc hcur
  · exact seg5_rung27 rho h bits[27]! (hbitAt 27 (by omega)) hacc hcur
  · exact seg5_rung28 rho h bits[28]! (hbitAt 28 (by omega)) hacc hcur
  · exact seg5_rung29 rho h bits[29]! (hbitAt 29 (by omega)) hacc hcur
  · exact seg5_rung30 rho h bits[30]! (hbitAt 30 (by omega)) hacc hcur
  · exact seg5_rung31 rho h bits[31]! (hbitAt 31 (by omega)) hacc hcur
  · exact seg5_rung32 rho h bits[32]! (hbitAt 32 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
