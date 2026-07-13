import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg6ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg6_rows22 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow2999 rho ∧ Seg6.relationRow3000 rho ∧ Seg6.relationRow3001 rho ∧ Seg6.relationRow3002 rho ∧ Seg6.relationRow3003 rho ∧ Seg6.relationRow3004 rho ∧ Seg6.relationRow3005 rho ∧ Seg6.relationRow3006 rho ∧ Seg6.relationRow3007 rho ∧ Seg6.relationRow3008 rho ∧ Seg6.relationRow3009 rho ∧ Seg6.relationRow3010 rho ∧ Seg6.relationRow3011 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p37, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart37 at p37
  rcases p37 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2999, r3000, r3001, r3002, r3003, r3004, r3005, r3006, r3007, r3008, r3009, r3010, r3011, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r2999, r3000, r3001, r3002, r3003, r3004, r3005, r3006, r3007, r3008, r3009, r3010, r3011⟩

theorem seg6_rung22 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1912 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX22 rho : Seg6.F), (seg6AccY22 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3396 : Seg6.F), (rho 3397 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX22 rho : Seg6.F), (seg6AccY22 rho : Seg6.F)⟩
        ⟨(rho 3396 : Seg6.F), (rho 3397 : Seg6.F)⟩
        ⟨(seg6AccX23 rho : Seg6.F), (seg6AccY23 rho : Seg6.F)⟩
        ⟨(rho 3409 : Seg6.F), (rho 3410 : Seg6.F)⟩ := by
  obtain ⟨r2999, r3000, r3001, r3002, r3003, r3004, r3005, r3006, r3007, r3008, r3009, r3010, r3011⟩ := seg6_rows22 rho h
  unfold Seg6.relationRow2999 at r2999
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2999
  unfold Seg6.relationRow3000 at r3000
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3000
  unfold Seg6.relationRow3001 at r3001
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3001
  unfold Seg6.relationRow3002 at r3002
  unfold Seg6.relationRow3003 at r3003
  unfold Seg6.relationRow3004 at r3004
  unfold Seg6.relationRow3005 at r3005
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3005
  unfold Seg6.relationRow3006 at r3006
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3006
  unfold Seg6.relationRow3007 at r3007
  unfold Seg6.relationRow3008 at r3008
  unfold Seg6.relationRow3009 at r3009
  unfold Seg6.relationRow3010 at r3010
  unfold Seg6.relationRow3011 at r3011
  have hrung22 (bit : Bool) (hbit : rho 1912 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX22 rho : Seg6.F), (seg6AccY22 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3396 : Seg6.F), (rho 3397 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX22 rho : Seg6.F), (seg6AccY22 rho : Seg6.F)⟩
        ⟨(rho 3396 : Seg6.F), (rho 3397 : Seg6.F)⟩
        ⟨(seg6AccX23 rho : Seg6.F), (seg6AccY23 rho : Seg6.F)⟩
        ⟨(rho 3409 : Seg6.F), (rho 3410 : Seg6.F)⟩ := by
    have hnextx : seg6AccX23 rho = seg6AccX22 rho + rho 3404 := by
      unfold seg6AccX23 seg6AccX22
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 22]
      ring
    have hnexty : seg6AccY23 rho = seg6AccY22 rho + rho 3405 := by
      unfold seg6AccY23 seg6AccY22
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 22]
      ring
    have ha0 : (rho 3396 + rho 3397) * (seg6AccX22 rho + seg6AccY22 rho) = rho 3398 := by
      unfold seg6AccX22 seg6AccY22
      linear_combination r2999
    have ha1 : rho 3397 * seg6AccX22 rho = rho 3399 := by
      unfold seg6AccX22
      linear_combination r3000
    have ha2 : rho 3396 * seg6AccY22 rho = rho 3400 := by
      unfold seg6AccY22
      linear_combination r3001
    have ha3 : 3021 * rho 3399 * rho 3400 = rho 3401 := by
      linear_combination r3002
    have ha4 : rho 3402 * (1 + rho 3401) = rho 3399 + rho 3400 := by
      linear_combination r3003
    have ha5 : rho 3403 * (1 - rho 3401) = rho 3398 - rho 3399 - rho 3400 := by
      linear_combination r3004
    have haddx :
        rho 3402 * (1 + 3021 * (rho 3397 * seg6AccX22 rho) * (rho 3396 * seg6AccY22 rho)) =
          rho 3397 * seg6AccX22 rho + rho 3396 * seg6AccY22 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3403 * (1 - 3021 * (rho 3397 * seg6AccX22 rho) * (rho 3396 * seg6AccY22 rho)) =
          (-1) * (rho 3397 * seg6AccX22 rho) - rho 3396 * seg6AccY22 rho +
            (seg6AccY22 rho - seg6AccX22 rho * (-1)) * (rho 3396 + rho 3397) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3403 * (1 - rho 3401) = rho 3398 - rho 3399 - rho 3400 := ha5
        _ = (-1) * rho 3399 - rho 3400 + (seg6AccY22 rho - seg6AccX22 rho * (-1)) * (rho 3396 + rho 3397) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX23 rho = seg6AccX22 rho - Bool.toZMod bit * (seg6AccX22 rho - rho 3402) := by
      have hd : rho 3404 = Bool.toZMod bit * (rho 3402 - seg6AccX22 rho) := by
        rw [← hbit]
        unfold seg6AccX22
        linear_combination -r3005
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY23 rho = seg6AccY22 rho - Bool.toZMod bit * (seg6AccY22 rho - rho 3403) := by
      have hd : rho 3405 = Bool.toZMod bit * (rho 3403 - seg6AccY22 rho) := by
        rw [← hbit]
        unfold seg6AccY22
        linear_combination -r3006
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3396 * rho 3397 = rho 3406 := by linear_combination r3007
    have hd1 : rho 3396 * rho 3396 = rho 3407 := by linear_combination r3008
    have hd2 : rho 3397 * rho 3397 = rho 3408 := by linear_combination r3009
    have hd3 : rho 3409 * (rho 3397 * rho 3397 + rho 3396 * rho 3396 * (-1)) = 2 * (rho 3396 * rho 3397) := by
      rw [hd0, hd1, hd2]
      linear_combination r3010
    have hd4 : rho 3410 * (2 - (rho 3397 * rho 3397 + rho 3396 * rho 3396 * (-1))) = rho 3397 * rho 3397 - rho 3396 * rho 3396 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3011
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX22 rho : Seg6.F), (seg6AccY22 rho : Seg6.F)⟩
      ⟨(rho 3396 : Seg6.F), (rho 3397 : Seg6.F)⟩
      ⟨(rho 3402 : Seg6.F), (rho 3403 : Seg6.F)⟩
      ⟨(seg6AccX23 rho : Seg6.F), (seg6AccY23 rho : Seg6.F)⟩
      ⟨(rho 3409 : Seg6.F), (rho 3410 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung22

theorem seg6_rows23 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow3012 rho ∧ Seg6.relationRow3013 rho ∧ Seg6.relationRow3014 rho ∧ Seg6.relationRow3015 rho ∧ Seg6.relationRow3016 rho ∧ Seg6.relationRow3017 rho ∧ Seg6.relationRow3018 rho ∧ Seg6.relationRow3019 rho ∧ Seg6.relationRow3020 rho ∧ Seg6.relationRow3021 rho ∧ Seg6.relationRow3022 rho ∧ Seg6.relationRow3023 rho ∧ Seg6.relationRow3024 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p37, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart37 at p37
  rcases p37 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3012, r3013, r3014, r3015, r3016, r3017, r3018, r3019, r3020, r3021, r3022, r3023, r3024, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3012, r3013, r3014, r3015, r3016, r3017, r3018, r3019, r3020, r3021, r3022, r3023, r3024⟩

theorem seg6_rung23 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1913 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX23 rho : Seg6.F), (seg6AccY23 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3409 : Seg6.F), (rho 3410 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX23 rho : Seg6.F), (seg6AccY23 rho : Seg6.F)⟩
        ⟨(rho 3409 : Seg6.F), (rho 3410 : Seg6.F)⟩
        ⟨(seg6AccX24 rho : Seg6.F), (seg6AccY24 rho : Seg6.F)⟩
        ⟨(rho 3422 : Seg6.F), (rho 3423 : Seg6.F)⟩ := by
  obtain ⟨r3012, r3013, r3014, r3015, r3016, r3017, r3018, r3019, r3020, r3021, r3022, r3023, r3024⟩ := seg6_rows23 rho h
  unfold Seg6.relationRow3012 at r3012
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3012
  unfold Seg6.relationRow3013 at r3013
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3013
  unfold Seg6.relationRow3014 at r3014
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3014
  unfold Seg6.relationRow3015 at r3015
  unfold Seg6.relationRow3016 at r3016
  unfold Seg6.relationRow3017 at r3017
  unfold Seg6.relationRow3018 at r3018
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3018
  unfold Seg6.relationRow3019 at r3019
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3019
  unfold Seg6.relationRow3020 at r3020
  unfold Seg6.relationRow3021 at r3021
  unfold Seg6.relationRow3022 at r3022
  unfold Seg6.relationRow3023 at r3023
  unfold Seg6.relationRow3024 at r3024
  have hrung23 (bit : Bool) (hbit : rho 1913 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX23 rho : Seg6.F), (seg6AccY23 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3409 : Seg6.F), (rho 3410 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX23 rho : Seg6.F), (seg6AccY23 rho : Seg6.F)⟩
        ⟨(rho 3409 : Seg6.F), (rho 3410 : Seg6.F)⟩
        ⟨(seg6AccX24 rho : Seg6.F), (seg6AccY24 rho : Seg6.F)⟩
        ⟨(rho 3422 : Seg6.F), (rho 3423 : Seg6.F)⟩ := by
    have hnextx : seg6AccX24 rho = seg6AccX23 rho + rho 3417 := by
      unfold seg6AccX24 seg6AccX23
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 23]
      ring
    have hnexty : seg6AccY24 rho = seg6AccY23 rho + rho 3418 := by
      unfold seg6AccY24 seg6AccY23
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 23]
      ring
    have ha0 : (rho 3409 + rho 3410) * (seg6AccX23 rho + seg6AccY23 rho) = rho 3411 := by
      unfold seg6AccX23 seg6AccY23
      linear_combination r3012
    have ha1 : rho 3410 * seg6AccX23 rho = rho 3412 := by
      unfold seg6AccX23
      linear_combination r3013
    have ha2 : rho 3409 * seg6AccY23 rho = rho 3413 := by
      unfold seg6AccY23
      linear_combination r3014
    have ha3 : 3021 * rho 3412 * rho 3413 = rho 3414 := by
      linear_combination r3015
    have ha4 : rho 3415 * (1 + rho 3414) = rho 3412 + rho 3413 := by
      linear_combination r3016
    have ha5 : rho 3416 * (1 - rho 3414) = rho 3411 - rho 3412 - rho 3413 := by
      linear_combination r3017
    have haddx :
        rho 3415 * (1 + 3021 * (rho 3410 * seg6AccX23 rho) * (rho 3409 * seg6AccY23 rho)) =
          rho 3410 * seg6AccX23 rho + rho 3409 * seg6AccY23 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3416 * (1 - 3021 * (rho 3410 * seg6AccX23 rho) * (rho 3409 * seg6AccY23 rho)) =
          (-1) * (rho 3410 * seg6AccX23 rho) - rho 3409 * seg6AccY23 rho +
            (seg6AccY23 rho - seg6AccX23 rho * (-1)) * (rho 3409 + rho 3410) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3416 * (1 - rho 3414) = rho 3411 - rho 3412 - rho 3413 := ha5
        _ = (-1) * rho 3412 - rho 3413 + (seg6AccY23 rho - seg6AccX23 rho * (-1)) * (rho 3409 + rho 3410) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX24 rho = seg6AccX23 rho - Bool.toZMod bit * (seg6AccX23 rho - rho 3415) := by
      have hd : rho 3417 = Bool.toZMod bit * (rho 3415 - seg6AccX23 rho) := by
        rw [← hbit]
        unfold seg6AccX23
        linear_combination -r3018
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY24 rho = seg6AccY23 rho - Bool.toZMod bit * (seg6AccY23 rho - rho 3416) := by
      have hd : rho 3418 = Bool.toZMod bit * (rho 3416 - seg6AccY23 rho) := by
        rw [← hbit]
        unfold seg6AccY23
        linear_combination -r3019
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3409 * rho 3410 = rho 3419 := by linear_combination r3020
    have hd1 : rho 3409 * rho 3409 = rho 3420 := by linear_combination r3021
    have hd2 : rho 3410 * rho 3410 = rho 3421 := by linear_combination r3022
    have hd3 : rho 3422 * (rho 3410 * rho 3410 + rho 3409 * rho 3409 * (-1)) = 2 * (rho 3409 * rho 3410) := by
      rw [hd0, hd1, hd2]
      linear_combination r3023
    have hd4 : rho 3423 * (2 - (rho 3410 * rho 3410 + rho 3409 * rho 3409 * (-1))) = rho 3410 * rho 3410 - rho 3409 * rho 3409 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3024
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX23 rho : Seg6.F), (seg6AccY23 rho : Seg6.F)⟩
      ⟨(rho 3409 : Seg6.F), (rho 3410 : Seg6.F)⟩
      ⟨(rho 3415 : Seg6.F), (rho 3416 : Seg6.F)⟩
      ⟨(seg6AccX24 rho : Seg6.F), (seg6AccY24 rho : Seg6.F)⟩
      ⟨(rho 3422 : Seg6.F), (rho 3423 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung23

theorem seg6_rows24 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow3025 rho ∧ Seg6.relationRow3026 rho ∧ Seg6.relationRow3027 rho ∧ Seg6.relationRow3028 rho ∧ Seg6.relationRow3029 rho ∧ Seg6.relationRow3030 rho ∧ Seg6.relationRow3031 rho ∧ Seg6.relationRow3032 rho ∧ Seg6.relationRow3033 rho ∧ Seg6.relationRow3034 rho ∧ Seg6.relationRow3035 rho ∧ Seg6.relationRow3036 rho ∧ Seg6.relationRow3037 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p37, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart37 at p37
  rcases p37 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3025, r3026, r3027, r3028, r3029, r3030, r3031, r3032, r3033, r3034, r3035, r3036, r3037, _, _⟩
  exact ⟨r3025, r3026, r3027, r3028, r3029, r3030, r3031, r3032, r3033, r3034, r3035, r3036, r3037⟩

theorem seg6_rung24 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1914 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX24 rho : Seg6.F), (seg6AccY24 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3422 : Seg6.F), (rho 3423 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX24 rho : Seg6.F), (seg6AccY24 rho : Seg6.F)⟩
        ⟨(rho 3422 : Seg6.F), (rho 3423 : Seg6.F)⟩
        ⟨(seg6AccX25 rho : Seg6.F), (seg6AccY25 rho : Seg6.F)⟩
        ⟨(rho 3435 : Seg6.F), (rho 3436 : Seg6.F)⟩ := by
  obtain ⟨r3025, r3026, r3027, r3028, r3029, r3030, r3031, r3032, r3033, r3034, r3035, r3036, r3037⟩ := seg6_rows24 rho h
  unfold Seg6.relationRow3025 at r3025
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3025
  unfold Seg6.relationRow3026 at r3026
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3026
  unfold Seg6.relationRow3027 at r3027
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3027
  unfold Seg6.relationRow3028 at r3028
  unfold Seg6.relationRow3029 at r3029
  unfold Seg6.relationRow3030 at r3030
  unfold Seg6.relationRow3031 at r3031
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3031
  unfold Seg6.relationRow3032 at r3032
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3032
  unfold Seg6.relationRow3033 at r3033
  unfold Seg6.relationRow3034 at r3034
  unfold Seg6.relationRow3035 at r3035
  unfold Seg6.relationRow3036 at r3036
  unfold Seg6.relationRow3037 at r3037
  have hrung24 (bit : Bool) (hbit : rho 1914 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX24 rho : Seg6.F), (seg6AccY24 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3422 : Seg6.F), (rho 3423 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX24 rho : Seg6.F), (seg6AccY24 rho : Seg6.F)⟩
        ⟨(rho 3422 : Seg6.F), (rho 3423 : Seg6.F)⟩
        ⟨(seg6AccX25 rho : Seg6.F), (seg6AccY25 rho : Seg6.F)⟩
        ⟨(rho 3435 : Seg6.F), (rho 3436 : Seg6.F)⟩ := by
    have hnextx : seg6AccX25 rho = seg6AccX24 rho + rho 3430 := by
      unfold seg6AccX25 seg6AccX24
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 24]
      ring
    have hnexty : seg6AccY25 rho = seg6AccY24 rho + rho 3431 := by
      unfold seg6AccY25 seg6AccY24
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 24]
      ring
    have ha0 : (rho 3422 + rho 3423) * (seg6AccX24 rho + seg6AccY24 rho) = rho 3424 := by
      unfold seg6AccX24 seg6AccY24
      linear_combination r3025
    have ha1 : rho 3423 * seg6AccX24 rho = rho 3425 := by
      unfold seg6AccX24
      linear_combination r3026
    have ha2 : rho 3422 * seg6AccY24 rho = rho 3426 := by
      unfold seg6AccY24
      linear_combination r3027
    have ha3 : 3021 * rho 3425 * rho 3426 = rho 3427 := by
      linear_combination r3028
    have ha4 : rho 3428 * (1 + rho 3427) = rho 3425 + rho 3426 := by
      linear_combination r3029
    have ha5 : rho 3429 * (1 - rho 3427) = rho 3424 - rho 3425 - rho 3426 := by
      linear_combination r3030
    have haddx :
        rho 3428 * (1 + 3021 * (rho 3423 * seg6AccX24 rho) * (rho 3422 * seg6AccY24 rho)) =
          rho 3423 * seg6AccX24 rho + rho 3422 * seg6AccY24 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3429 * (1 - 3021 * (rho 3423 * seg6AccX24 rho) * (rho 3422 * seg6AccY24 rho)) =
          (-1) * (rho 3423 * seg6AccX24 rho) - rho 3422 * seg6AccY24 rho +
            (seg6AccY24 rho - seg6AccX24 rho * (-1)) * (rho 3422 + rho 3423) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3429 * (1 - rho 3427) = rho 3424 - rho 3425 - rho 3426 := ha5
        _ = (-1) * rho 3425 - rho 3426 + (seg6AccY24 rho - seg6AccX24 rho * (-1)) * (rho 3422 + rho 3423) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX25 rho = seg6AccX24 rho - Bool.toZMod bit * (seg6AccX24 rho - rho 3428) := by
      have hd : rho 3430 = Bool.toZMod bit * (rho 3428 - seg6AccX24 rho) := by
        rw [← hbit]
        unfold seg6AccX24
        linear_combination -r3031
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY25 rho = seg6AccY24 rho - Bool.toZMod bit * (seg6AccY24 rho - rho 3429) := by
      have hd : rho 3431 = Bool.toZMod bit * (rho 3429 - seg6AccY24 rho) := by
        rw [← hbit]
        unfold seg6AccY24
        linear_combination -r3032
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3422 * rho 3423 = rho 3432 := by linear_combination r3033
    have hd1 : rho 3422 * rho 3422 = rho 3433 := by linear_combination r3034
    have hd2 : rho 3423 * rho 3423 = rho 3434 := by linear_combination r3035
    have hd3 : rho 3435 * (rho 3423 * rho 3423 + rho 3422 * rho 3422 * (-1)) = 2 * (rho 3422 * rho 3423) := by
      rw [hd0, hd1, hd2]
      linear_combination r3036
    have hd4 : rho 3436 * (2 - (rho 3423 * rho 3423 + rho 3422 * rho 3422 * (-1))) = rho 3423 * rho 3423 - rho 3422 * rho 3422 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3037
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX24 rho : Seg6.F), (seg6AccY24 rho : Seg6.F)⟩
      ⟨(rho 3422 : Seg6.F), (rho 3423 : Seg6.F)⟩
      ⟨(rho 3428 : Seg6.F), (rho 3429 : Seg6.F)⟩
      ⟨(seg6AccX25 rho : Seg6.F), (seg6AccY25 rho : Seg6.F)⟩
      ⟨(rho 3435 : Seg6.F), (rho 3436 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung24

theorem seg6_rows25 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow3038 rho ∧ Seg6.relationRow3039 rho ∧ Seg6.relationRow3040 rho ∧ Seg6.relationRow3041 rho ∧ Seg6.relationRow3042 rho ∧ Seg6.relationRow3043 rho ∧ Seg6.relationRow3044 rho ∧ Seg6.relationRow3045 rho ∧ Seg6.relationRow3046 rho ∧ Seg6.relationRow3047 rho ∧ Seg6.relationRow3048 rho ∧ Seg6.relationRow3049 rho ∧ Seg6.relationRow3050 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p37, p38, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart37 at p37
  rcases p37 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3038, r3039⟩
  unfold Seg6.relationPart38 at p38
  rcases p38 with ⟨r3040, r3041, r3042, r3043, r3044, r3045, r3046, r3047, r3048, r3049, r3050, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3038, r3039, r3040, r3041, r3042, r3043, r3044, r3045, r3046, r3047, r3048, r3049, r3050⟩

theorem seg6_rung25 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1915 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX25 rho : Seg6.F), (seg6AccY25 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3435 : Seg6.F), (rho 3436 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX25 rho : Seg6.F), (seg6AccY25 rho : Seg6.F)⟩
        ⟨(rho 3435 : Seg6.F), (rho 3436 : Seg6.F)⟩
        ⟨(seg6AccX26 rho : Seg6.F), (seg6AccY26 rho : Seg6.F)⟩
        ⟨(rho 3448 : Seg6.F), (rho 3449 : Seg6.F)⟩ := by
  obtain ⟨r3038, r3039, r3040, r3041, r3042, r3043, r3044, r3045, r3046, r3047, r3048, r3049, r3050⟩ := seg6_rows25 rho h
  unfold Seg6.relationRow3038 at r3038
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3038
  unfold Seg6.relationRow3039 at r3039
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3039
  unfold Seg6.relationRow3040 at r3040
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3040
  unfold Seg6.relationRow3041 at r3041
  unfold Seg6.relationRow3042 at r3042
  unfold Seg6.relationRow3043 at r3043
  unfold Seg6.relationRow3044 at r3044
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3044
  unfold Seg6.relationRow3045 at r3045
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3045
  unfold Seg6.relationRow3046 at r3046
  unfold Seg6.relationRow3047 at r3047
  unfold Seg6.relationRow3048 at r3048
  unfold Seg6.relationRow3049 at r3049
  unfold Seg6.relationRow3050 at r3050
  have hrung25 (bit : Bool) (hbit : rho 1915 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX25 rho : Seg6.F), (seg6AccY25 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3435 : Seg6.F), (rho 3436 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX25 rho : Seg6.F), (seg6AccY25 rho : Seg6.F)⟩
        ⟨(rho 3435 : Seg6.F), (rho 3436 : Seg6.F)⟩
        ⟨(seg6AccX26 rho : Seg6.F), (seg6AccY26 rho : Seg6.F)⟩
        ⟨(rho 3448 : Seg6.F), (rho 3449 : Seg6.F)⟩ := by
    have hnextx : seg6AccX26 rho = seg6AccX25 rho + rho 3443 := by
      unfold seg6AccX26 seg6AccX25
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 25]
      ring
    have hnexty : seg6AccY26 rho = seg6AccY25 rho + rho 3444 := by
      unfold seg6AccY26 seg6AccY25
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 25]
      ring
    have ha0 : (rho 3435 + rho 3436) * (seg6AccX25 rho + seg6AccY25 rho) = rho 3437 := by
      unfold seg6AccX25 seg6AccY25
      linear_combination r3038
    have ha1 : rho 3436 * seg6AccX25 rho = rho 3438 := by
      unfold seg6AccX25
      linear_combination r3039
    have ha2 : rho 3435 * seg6AccY25 rho = rho 3439 := by
      unfold seg6AccY25
      linear_combination r3040
    have ha3 : 3021 * rho 3438 * rho 3439 = rho 3440 := by
      linear_combination r3041
    have ha4 : rho 3441 * (1 + rho 3440) = rho 3438 + rho 3439 := by
      linear_combination r3042
    have ha5 : rho 3442 * (1 - rho 3440) = rho 3437 - rho 3438 - rho 3439 := by
      linear_combination r3043
    have haddx :
        rho 3441 * (1 + 3021 * (rho 3436 * seg6AccX25 rho) * (rho 3435 * seg6AccY25 rho)) =
          rho 3436 * seg6AccX25 rho + rho 3435 * seg6AccY25 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3442 * (1 - 3021 * (rho 3436 * seg6AccX25 rho) * (rho 3435 * seg6AccY25 rho)) =
          (-1) * (rho 3436 * seg6AccX25 rho) - rho 3435 * seg6AccY25 rho +
            (seg6AccY25 rho - seg6AccX25 rho * (-1)) * (rho 3435 + rho 3436) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3442 * (1 - rho 3440) = rho 3437 - rho 3438 - rho 3439 := ha5
        _ = (-1) * rho 3438 - rho 3439 + (seg6AccY25 rho - seg6AccX25 rho * (-1)) * (rho 3435 + rho 3436) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX26 rho = seg6AccX25 rho - Bool.toZMod bit * (seg6AccX25 rho - rho 3441) := by
      have hd : rho 3443 = Bool.toZMod bit * (rho 3441 - seg6AccX25 rho) := by
        rw [← hbit]
        unfold seg6AccX25
        linear_combination -r3044
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY26 rho = seg6AccY25 rho - Bool.toZMod bit * (seg6AccY25 rho - rho 3442) := by
      have hd : rho 3444 = Bool.toZMod bit * (rho 3442 - seg6AccY25 rho) := by
        rw [← hbit]
        unfold seg6AccY25
        linear_combination -r3045
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3435 * rho 3436 = rho 3445 := by linear_combination r3046
    have hd1 : rho 3435 * rho 3435 = rho 3446 := by linear_combination r3047
    have hd2 : rho 3436 * rho 3436 = rho 3447 := by linear_combination r3048
    have hd3 : rho 3448 * (rho 3436 * rho 3436 + rho 3435 * rho 3435 * (-1)) = 2 * (rho 3435 * rho 3436) := by
      rw [hd0, hd1, hd2]
      linear_combination r3049
    have hd4 : rho 3449 * (2 - (rho 3436 * rho 3436 + rho 3435 * rho 3435 * (-1))) = rho 3436 * rho 3436 - rho 3435 * rho 3435 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3050
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX25 rho : Seg6.F), (seg6AccY25 rho : Seg6.F)⟩
      ⟨(rho 3435 : Seg6.F), (rho 3436 : Seg6.F)⟩
      ⟨(rho 3441 : Seg6.F), (rho 3442 : Seg6.F)⟩
      ⟨(seg6AccX26 rho : Seg6.F), (seg6AccY26 rho : Seg6.F)⟩
      ⟨(rho 3448 : Seg6.F), (rho 3449 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung25

theorem seg6_rows26 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow3051 rho ∧ Seg6.relationRow3052 rho ∧ Seg6.relationRow3053 rho ∧ Seg6.relationRow3054 rho ∧ Seg6.relationRow3055 rho ∧ Seg6.relationRow3056 rho ∧ Seg6.relationRow3057 rho ∧ Seg6.relationRow3058 rho ∧ Seg6.relationRow3059 rho ∧ Seg6.relationRow3060 rho ∧ Seg6.relationRow3061 rho ∧ Seg6.relationRow3062 rho ∧ Seg6.relationRow3063 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p38, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart38 at p38
  rcases p38 with ⟨_, _, _, _, _, _, _, _, _, _, _, r3051, r3052, r3053, r3054, r3055, r3056, r3057, r3058, r3059, r3060, r3061, r3062, r3063, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3051, r3052, r3053, r3054, r3055, r3056, r3057, r3058, r3059, r3060, r3061, r3062, r3063⟩

theorem seg6_rung26 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1916 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX26 rho : Seg6.F), (seg6AccY26 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3448 : Seg6.F), (rho 3449 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX26 rho : Seg6.F), (seg6AccY26 rho : Seg6.F)⟩
        ⟨(rho 3448 : Seg6.F), (rho 3449 : Seg6.F)⟩
        ⟨(seg6AccX27 rho : Seg6.F), (seg6AccY27 rho : Seg6.F)⟩
        ⟨(rho 3461 : Seg6.F), (rho 3462 : Seg6.F)⟩ := by
  obtain ⟨r3051, r3052, r3053, r3054, r3055, r3056, r3057, r3058, r3059, r3060, r3061, r3062, r3063⟩ := seg6_rows26 rho h
  unfold Seg6.relationRow3051 at r3051
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3051
  unfold Seg6.relationRow3052 at r3052
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3052
  unfold Seg6.relationRow3053 at r3053
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3053
  unfold Seg6.relationRow3054 at r3054
  unfold Seg6.relationRow3055 at r3055
  unfold Seg6.relationRow3056 at r3056
  unfold Seg6.relationRow3057 at r3057
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3057
  unfold Seg6.relationRow3058 at r3058
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3058
  unfold Seg6.relationRow3059 at r3059
  unfold Seg6.relationRow3060 at r3060
  unfold Seg6.relationRow3061 at r3061
  unfold Seg6.relationRow3062 at r3062
  unfold Seg6.relationRow3063 at r3063
  have hrung26 (bit : Bool) (hbit : rho 1916 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX26 rho : Seg6.F), (seg6AccY26 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3448 : Seg6.F), (rho 3449 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX26 rho : Seg6.F), (seg6AccY26 rho : Seg6.F)⟩
        ⟨(rho 3448 : Seg6.F), (rho 3449 : Seg6.F)⟩
        ⟨(seg6AccX27 rho : Seg6.F), (seg6AccY27 rho : Seg6.F)⟩
        ⟨(rho 3461 : Seg6.F), (rho 3462 : Seg6.F)⟩ := by
    have hnextx : seg6AccX27 rho = seg6AccX26 rho + rho 3456 := by
      unfold seg6AccX27 seg6AccX26
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 26]
      ring
    have hnexty : seg6AccY27 rho = seg6AccY26 rho + rho 3457 := by
      unfold seg6AccY27 seg6AccY26
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 26]
      ring
    have ha0 : (rho 3448 + rho 3449) * (seg6AccX26 rho + seg6AccY26 rho) = rho 3450 := by
      unfold seg6AccX26 seg6AccY26
      linear_combination r3051
    have ha1 : rho 3449 * seg6AccX26 rho = rho 3451 := by
      unfold seg6AccX26
      linear_combination r3052
    have ha2 : rho 3448 * seg6AccY26 rho = rho 3452 := by
      unfold seg6AccY26
      linear_combination r3053
    have ha3 : 3021 * rho 3451 * rho 3452 = rho 3453 := by
      linear_combination r3054
    have ha4 : rho 3454 * (1 + rho 3453) = rho 3451 + rho 3452 := by
      linear_combination r3055
    have ha5 : rho 3455 * (1 - rho 3453) = rho 3450 - rho 3451 - rho 3452 := by
      linear_combination r3056
    have haddx :
        rho 3454 * (1 + 3021 * (rho 3449 * seg6AccX26 rho) * (rho 3448 * seg6AccY26 rho)) =
          rho 3449 * seg6AccX26 rho + rho 3448 * seg6AccY26 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3455 * (1 - 3021 * (rho 3449 * seg6AccX26 rho) * (rho 3448 * seg6AccY26 rho)) =
          (-1) * (rho 3449 * seg6AccX26 rho) - rho 3448 * seg6AccY26 rho +
            (seg6AccY26 rho - seg6AccX26 rho * (-1)) * (rho 3448 + rho 3449) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3455 * (1 - rho 3453) = rho 3450 - rho 3451 - rho 3452 := ha5
        _ = (-1) * rho 3451 - rho 3452 + (seg6AccY26 rho - seg6AccX26 rho * (-1)) * (rho 3448 + rho 3449) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX27 rho = seg6AccX26 rho - Bool.toZMod bit * (seg6AccX26 rho - rho 3454) := by
      have hd : rho 3456 = Bool.toZMod bit * (rho 3454 - seg6AccX26 rho) := by
        rw [← hbit]
        unfold seg6AccX26
        linear_combination -r3057
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY27 rho = seg6AccY26 rho - Bool.toZMod bit * (seg6AccY26 rho - rho 3455) := by
      have hd : rho 3457 = Bool.toZMod bit * (rho 3455 - seg6AccY26 rho) := by
        rw [← hbit]
        unfold seg6AccY26
        linear_combination -r3058
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3448 * rho 3449 = rho 3458 := by linear_combination r3059
    have hd1 : rho 3448 * rho 3448 = rho 3459 := by linear_combination r3060
    have hd2 : rho 3449 * rho 3449 = rho 3460 := by linear_combination r3061
    have hd3 : rho 3461 * (rho 3449 * rho 3449 + rho 3448 * rho 3448 * (-1)) = 2 * (rho 3448 * rho 3449) := by
      rw [hd0, hd1, hd2]
      linear_combination r3062
    have hd4 : rho 3462 * (2 - (rho 3449 * rho 3449 + rho 3448 * rho 3448 * (-1))) = rho 3449 * rho 3449 - rho 3448 * rho 3448 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3063
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX26 rho : Seg6.F), (seg6AccY26 rho : Seg6.F)⟩
      ⟨(rho 3448 : Seg6.F), (rho 3449 : Seg6.F)⟩
      ⟨(rho 3454 : Seg6.F), (rho 3455 : Seg6.F)⟩
      ⟨(seg6AccX27 rho : Seg6.F), (seg6AccY27 rho : Seg6.F)⟩
      ⟨(rho 3461 : Seg6.F), (rho 3462 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung26

theorem seg6_rows27 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow3064 rho ∧ Seg6.relationRow3065 rho ∧ Seg6.relationRow3066 rho ∧ Seg6.relationRow3067 rho ∧ Seg6.relationRow3068 rho ∧ Seg6.relationRow3069 rho ∧ Seg6.relationRow3070 rho ∧ Seg6.relationRow3071 rho ∧ Seg6.relationRow3072 rho ∧ Seg6.relationRow3073 rho ∧ Seg6.relationRow3074 rho ∧ Seg6.relationRow3075 rho ∧ Seg6.relationRow3076 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p38, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart38 at p38
  rcases p38 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3064, r3065, r3066, r3067, r3068, r3069, r3070, r3071, r3072, r3073, r3074, r3075, r3076, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3064, r3065, r3066, r3067, r3068, r3069, r3070, r3071, r3072, r3073, r3074, r3075, r3076⟩

theorem seg6_rung27 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1917 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX27 rho : Seg6.F), (seg6AccY27 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3461 : Seg6.F), (rho 3462 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX27 rho : Seg6.F), (seg6AccY27 rho : Seg6.F)⟩
        ⟨(rho 3461 : Seg6.F), (rho 3462 : Seg6.F)⟩
        ⟨(seg6AccX28 rho : Seg6.F), (seg6AccY28 rho : Seg6.F)⟩
        ⟨(rho 3474 : Seg6.F), (rho 3475 : Seg6.F)⟩ := by
  obtain ⟨r3064, r3065, r3066, r3067, r3068, r3069, r3070, r3071, r3072, r3073, r3074, r3075, r3076⟩ := seg6_rows27 rho h
  unfold Seg6.relationRow3064 at r3064
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3064
  unfold Seg6.relationRow3065 at r3065
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3065
  unfold Seg6.relationRow3066 at r3066
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3066
  unfold Seg6.relationRow3067 at r3067
  unfold Seg6.relationRow3068 at r3068
  unfold Seg6.relationRow3069 at r3069
  unfold Seg6.relationRow3070 at r3070
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3070
  unfold Seg6.relationRow3071 at r3071
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3071
  unfold Seg6.relationRow3072 at r3072
  unfold Seg6.relationRow3073 at r3073
  unfold Seg6.relationRow3074 at r3074
  unfold Seg6.relationRow3075 at r3075
  unfold Seg6.relationRow3076 at r3076
  have hrung27 (bit : Bool) (hbit : rho 1917 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX27 rho : Seg6.F), (seg6AccY27 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3461 : Seg6.F), (rho 3462 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX27 rho : Seg6.F), (seg6AccY27 rho : Seg6.F)⟩
        ⟨(rho 3461 : Seg6.F), (rho 3462 : Seg6.F)⟩
        ⟨(seg6AccX28 rho : Seg6.F), (seg6AccY28 rho : Seg6.F)⟩
        ⟨(rho 3474 : Seg6.F), (rho 3475 : Seg6.F)⟩ := by
    have hnextx : seg6AccX28 rho = seg6AccX27 rho + rho 3469 := by
      unfold seg6AccX28 seg6AccX27
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 27]
      ring
    have hnexty : seg6AccY28 rho = seg6AccY27 rho + rho 3470 := by
      unfold seg6AccY28 seg6AccY27
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 27]
      ring
    have ha0 : (rho 3461 + rho 3462) * (seg6AccX27 rho + seg6AccY27 rho) = rho 3463 := by
      unfold seg6AccX27 seg6AccY27
      linear_combination r3064
    have ha1 : rho 3462 * seg6AccX27 rho = rho 3464 := by
      unfold seg6AccX27
      linear_combination r3065
    have ha2 : rho 3461 * seg6AccY27 rho = rho 3465 := by
      unfold seg6AccY27
      linear_combination r3066
    have ha3 : 3021 * rho 3464 * rho 3465 = rho 3466 := by
      linear_combination r3067
    have ha4 : rho 3467 * (1 + rho 3466) = rho 3464 + rho 3465 := by
      linear_combination r3068
    have ha5 : rho 3468 * (1 - rho 3466) = rho 3463 - rho 3464 - rho 3465 := by
      linear_combination r3069
    have haddx :
        rho 3467 * (1 + 3021 * (rho 3462 * seg6AccX27 rho) * (rho 3461 * seg6AccY27 rho)) =
          rho 3462 * seg6AccX27 rho + rho 3461 * seg6AccY27 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3468 * (1 - 3021 * (rho 3462 * seg6AccX27 rho) * (rho 3461 * seg6AccY27 rho)) =
          (-1) * (rho 3462 * seg6AccX27 rho) - rho 3461 * seg6AccY27 rho +
            (seg6AccY27 rho - seg6AccX27 rho * (-1)) * (rho 3461 + rho 3462) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3468 * (1 - rho 3466) = rho 3463 - rho 3464 - rho 3465 := ha5
        _ = (-1) * rho 3464 - rho 3465 + (seg6AccY27 rho - seg6AccX27 rho * (-1)) * (rho 3461 + rho 3462) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX28 rho = seg6AccX27 rho - Bool.toZMod bit * (seg6AccX27 rho - rho 3467) := by
      have hd : rho 3469 = Bool.toZMod bit * (rho 3467 - seg6AccX27 rho) := by
        rw [← hbit]
        unfold seg6AccX27
        linear_combination -r3070
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY28 rho = seg6AccY27 rho - Bool.toZMod bit * (seg6AccY27 rho - rho 3468) := by
      have hd : rho 3470 = Bool.toZMod bit * (rho 3468 - seg6AccY27 rho) := by
        rw [← hbit]
        unfold seg6AccY27
        linear_combination -r3071
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3461 * rho 3462 = rho 3471 := by linear_combination r3072
    have hd1 : rho 3461 * rho 3461 = rho 3472 := by linear_combination r3073
    have hd2 : rho 3462 * rho 3462 = rho 3473 := by linear_combination r3074
    have hd3 : rho 3474 * (rho 3462 * rho 3462 + rho 3461 * rho 3461 * (-1)) = 2 * (rho 3461 * rho 3462) := by
      rw [hd0, hd1, hd2]
      linear_combination r3075
    have hd4 : rho 3475 * (2 - (rho 3462 * rho 3462 + rho 3461 * rho 3461 * (-1))) = rho 3462 * rho 3462 - rho 3461 * rho 3461 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3076
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX27 rho : Seg6.F), (seg6AccY27 rho : Seg6.F)⟩
      ⟨(rho 3461 : Seg6.F), (rho 3462 : Seg6.F)⟩
      ⟨(rho 3467 : Seg6.F), (rho 3468 : Seg6.F)⟩
      ⟨(seg6AccX28 rho : Seg6.F), (seg6AccY28 rho : Seg6.F)⟩
      ⟨(rho 3474 : Seg6.F), (rho 3475 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung27

theorem seg6_rows28 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow3077 rho ∧ Seg6.relationRow3078 rho ∧ Seg6.relationRow3079 rho ∧ Seg6.relationRow3080 rho ∧ Seg6.relationRow3081 rho ∧ Seg6.relationRow3082 rho ∧ Seg6.relationRow3083 rho ∧ Seg6.relationRow3084 rho ∧ Seg6.relationRow3085 rho ∧ Seg6.relationRow3086 rho ∧ Seg6.relationRow3087 rho ∧ Seg6.relationRow3088 rho ∧ Seg6.relationRow3089 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p38, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart38 at p38
  rcases p38 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3077, r3078, r3079, r3080, r3081, r3082, r3083, r3084, r3085, r3086, r3087, r3088, r3089, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3077, r3078, r3079, r3080, r3081, r3082, r3083, r3084, r3085, r3086, r3087, r3088, r3089⟩

theorem seg6_rung28 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1918 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX28 rho : Seg6.F), (seg6AccY28 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3474 : Seg6.F), (rho 3475 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX28 rho : Seg6.F), (seg6AccY28 rho : Seg6.F)⟩
        ⟨(rho 3474 : Seg6.F), (rho 3475 : Seg6.F)⟩
        ⟨(seg6AccX29 rho : Seg6.F), (seg6AccY29 rho : Seg6.F)⟩
        ⟨(rho 3487 : Seg6.F), (rho 3488 : Seg6.F)⟩ := by
  obtain ⟨r3077, r3078, r3079, r3080, r3081, r3082, r3083, r3084, r3085, r3086, r3087, r3088, r3089⟩ := seg6_rows28 rho h
  unfold Seg6.relationRow3077 at r3077
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3077
  unfold Seg6.relationRow3078 at r3078
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3078
  unfold Seg6.relationRow3079 at r3079
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3079
  unfold Seg6.relationRow3080 at r3080
  unfold Seg6.relationRow3081 at r3081
  unfold Seg6.relationRow3082 at r3082
  unfold Seg6.relationRow3083 at r3083
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3083
  unfold Seg6.relationRow3084 at r3084
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3084
  unfold Seg6.relationRow3085 at r3085
  unfold Seg6.relationRow3086 at r3086
  unfold Seg6.relationRow3087 at r3087
  unfold Seg6.relationRow3088 at r3088
  unfold Seg6.relationRow3089 at r3089
  have hrung28 (bit : Bool) (hbit : rho 1918 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX28 rho : Seg6.F), (seg6AccY28 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3474 : Seg6.F), (rho 3475 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX28 rho : Seg6.F), (seg6AccY28 rho : Seg6.F)⟩
        ⟨(rho 3474 : Seg6.F), (rho 3475 : Seg6.F)⟩
        ⟨(seg6AccX29 rho : Seg6.F), (seg6AccY29 rho : Seg6.F)⟩
        ⟨(rho 3487 : Seg6.F), (rho 3488 : Seg6.F)⟩ := by
    have hnextx : seg6AccX29 rho = seg6AccX28 rho + rho 3482 := by
      unfold seg6AccX29 seg6AccX28
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 28]
      ring
    have hnexty : seg6AccY29 rho = seg6AccY28 rho + rho 3483 := by
      unfold seg6AccY29 seg6AccY28
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 28]
      ring
    have ha0 : (rho 3474 + rho 3475) * (seg6AccX28 rho + seg6AccY28 rho) = rho 3476 := by
      unfold seg6AccX28 seg6AccY28
      linear_combination r3077
    have ha1 : rho 3475 * seg6AccX28 rho = rho 3477 := by
      unfold seg6AccX28
      linear_combination r3078
    have ha2 : rho 3474 * seg6AccY28 rho = rho 3478 := by
      unfold seg6AccY28
      linear_combination r3079
    have ha3 : 3021 * rho 3477 * rho 3478 = rho 3479 := by
      linear_combination r3080
    have ha4 : rho 3480 * (1 + rho 3479) = rho 3477 + rho 3478 := by
      linear_combination r3081
    have ha5 : rho 3481 * (1 - rho 3479) = rho 3476 - rho 3477 - rho 3478 := by
      linear_combination r3082
    have haddx :
        rho 3480 * (1 + 3021 * (rho 3475 * seg6AccX28 rho) * (rho 3474 * seg6AccY28 rho)) =
          rho 3475 * seg6AccX28 rho + rho 3474 * seg6AccY28 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3481 * (1 - 3021 * (rho 3475 * seg6AccX28 rho) * (rho 3474 * seg6AccY28 rho)) =
          (-1) * (rho 3475 * seg6AccX28 rho) - rho 3474 * seg6AccY28 rho +
            (seg6AccY28 rho - seg6AccX28 rho * (-1)) * (rho 3474 + rho 3475) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3481 * (1 - rho 3479) = rho 3476 - rho 3477 - rho 3478 := ha5
        _ = (-1) * rho 3477 - rho 3478 + (seg6AccY28 rho - seg6AccX28 rho * (-1)) * (rho 3474 + rho 3475) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX29 rho = seg6AccX28 rho - Bool.toZMod bit * (seg6AccX28 rho - rho 3480) := by
      have hd : rho 3482 = Bool.toZMod bit * (rho 3480 - seg6AccX28 rho) := by
        rw [← hbit]
        unfold seg6AccX28
        linear_combination -r3083
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY29 rho = seg6AccY28 rho - Bool.toZMod bit * (seg6AccY28 rho - rho 3481) := by
      have hd : rho 3483 = Bool.toZMod bit * (rho 3481 - seg6AccY28 rho) := by
        rw [← hbit]
        unfold seg6AccY28
        linear_combination -r3084
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3474 * rho 3475 = rho 3484 := by linear_combination r3085
    have hd1 : rho 3474 * rho 3474 = rho 3485 := by linear_combination r3086
    have hd2 : rho 3475 * rho 3475 = rho 3486 := by linear_combination r3087
    have hd3 : rho 3487 * (rho 3475 * rho 3475 + rho 3474 * rho 3474 * (-1)) = 2 * (rho 3474 * rho 3475) := by
      rw [hd0, hd1, hd2]
      linear_combination r3088
    have hd4 : rho 3488 * (2 - (rho 3475 * rho 3475 + rho 3474 * rho 3474 * (-1))) = rho 3475 * rho 3475 - rho 3474 * rho 3474 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3089
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX28 rho : Seg6.F), (seg6AccY28 rho : Seg6.F)⟩
      ⟨(rho 3474 : Seg6.F), (rho 3475 : Seg6.F)⟩
      ⟨(rho 3480 : Seg6.F), (rho 3481 : Seg6.F)⟩
      ⟨(seg6AccX29 rho : Seg6.F), (seg6AccY29 rho : Seg6.F)⟩
      ⟨(rho 3487 : Seg6.F), (rho 3488 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung28

theorem seg6_rows29 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow3090 rho ∧ Seg6.relationRow3091 rho ∧ Seg6.relationRow3092 rho ∧ Seg6.relationRow3093 rho ∧ Seg6.relationRow3094 rho ∧ Seg6.relationRow3095 rho ∧ Seg6.relationRow3096 rho ∧ Seg6.relationRow3097 rho ∧ Seg6.relationRow3098 rho ∧ Seg6.relationRow3099 rho ∧ Seg6.relationRow3100 rho ∧ Seg6.relationRow3101 rho ∧ Seg6.relationRow3102 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p38, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart38 at p38
  rcases p38 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3090, r3091, r3092, r3093, r3094, r3095, r3096, r3097, r3098, r3099, r3100, r3101, r3102, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3090, r3091, r3092, r3093, r3094, r3095, r3096, r3097, r3098, r3099, r3100, r3101, r3102⟩

theorem seg6_rung29 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1919 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX29 rho : Seg6.F), (seg6AccY29 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3487 : Seg6.F), (rho 3488 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX29 rho : Seg6.F), (seg6AccY29 rho : Seg6.F)⟩
        ⟨(rho 3487 : Seg6.F), (rho 3488 : Seg6.F)⟩
        ⟨(seg6AccX30 rho : Seg6.F), (seg6AccY30 rho : Seg6.F)⟩
        ⟨(rho 3500 : Seg6.F), (rho 3501 : Seg6.F)⟩ := by
  obtain ⟨r3090, r3091, r3092, r3093, r3094, r3095, r3096, r3097, r3098, r3099, r3100, r3101, r3102⟩ := seg6_rows29 rho h
  unfold Seg6.relationRow3090 at r3090
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3090
  unfold Seg6.relationRow3091 at r3091
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3091
  unfold Seg6.relationRow3092 at r3092
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3092
  unfold Seg6.relationRow3093 at r3093
  unfold Seg6.relationRow3094 at r3094
  unfold Seg6.relationRow3095 at r3095
  unfold Seg6.relationRow3096 at r3096
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3096
  unfold Seg6.relationRow3097 at r3097
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3097
  unfold Seg6.relationRow3098 at r3098
  unfold Seg6.relationRow3099 at r3099
  unfold Seg6.relationRow3100 at r3100
  unfold Seg6.relationRow3101 at r3101
  unfold Seg6.relationRow3102 at r3102
  have hrung29 (bit : Bool) (hbit : rho 1919 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX29 rho : Seg6.F), (seg6AccY29 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3487 : Seg6.F), (rho 3488 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX29 rho : Seg6.F), (seg6AccY29 rho : Seg6.F)⟩
        ⟨(rho 3487 : Seg6.F), (rho 3488 : Seg6.F)⟩
        ⟨(seg6AccX30 rho : Seg6.F), (seg6AccY30 rho : Seg6.F)⟩
        ⟨(rho 3500 : Seg6.F), (rho 3501 : Seg6.F)⟩ := by
    have hnextx : seg6AccX30 rho = seg6AccX29 rho + rho 3495 := by
      unfold seg6AccX30 seg6AccX29
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 29]
      ring
    have hnexty : seg6AccY30 rho = seg6AccY29 rho + rho 3496 := by
      unfold seg6AccY30 seg6AccY29
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 29]
      ring
    have ha0 : (rho 3487 + rho 3488) * (seg6AccX29 rho + seg6AccY29 rho) = rho 3489 := by
      unfold seg6AccX29 seg6AccY29
      linear_combination r3090
    have ha1 : rho 3488 * seg6AccX29 rho = rho 3490 := by
      unfold seg6AccX29
      linear_combination r3091
    have ha2 : rho 3487 * seg6AccY29 rho = rho 3491 := by
      unfold seg6AccY29
      linear_combination r3092
    have ha3 : 3021 * rho 3490 * rho 3491 = rho 3492 := by
      linear_combination r3093
    have ha4 : rho 3493 * (1 + rho 3492) = rho 3490 + rho 3491 := by
      linear_combination r3094
    have ha5 : rho 3494 * (1 - rho 3492) = rho 3489 - rho 3490 - rho 3491 := by
      linear_combination r3095
    have haddx :
        rho 3493 * (1 + 3021 * (rho 3488 * seg6AccX29 rho) * (rho 3487 * seg6AccY29 rho)) =
          rho 3488 * seg6AccX29 rho + rho 3487 * seg6AccY29 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3494 * (1 - 3021 * (rho 3488 * seg6AccX29 rho) * (rho 3487 * seg6AccY29 rho)) =
          (-1) * (rho 3488 * seg6AccX29 rho) - rho 3487 * seg6AccY29 rho +
            (seg6AccY29 rho - seg6AccX29 rho * (-1)) * (rho 3487 + rho 3488) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3494 * (1 - rho 3492) = rho 3489 - rho 3490 - rho 3491 := ha5
        _ = (-1) * rho 3490 - rho 3491 + (seg6AccY29 rho - seg6AccX29 rho * (-1)) * (rho 3487 + rho 3488) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX30 rho = seg6AccX29 rho - Bool.toZMod bit * (seg6AccX29 rho - rho 3493) := by
      have hd : rho 3495 = Bool.toZMod bit * (rho 3493 - seg6AccX29 rho) := by
        rw [← hbit]
        unfold seg6AccX29
        linear_combination -r3096
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY30 rho = seg6AccY29 rho - Bool.toZMod bit * (seg6AccY29 rho - rho 3494) := by
      have hd : rho 3496 = Bool.toZMod bit * (rho 3494 - seg6AccY29 rho) := by
        rw [← hbit]
        unfold seg6AccY29
        linear_combination -r3097
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3487 * rho 3488 = rho 3497 := by linear_combination r3098
    have hd1 : rho 3487 * rho 3487 = rho 3498 := by linear_combination r3099
    have hd2 : rho 3488 * rho 3488 = rho 3499 := by linear_combination r3100
    have hd3 : rho 3500 * (rho 3488 * rho 3488 + rho 3487 * rho 3487 * (-1)) = 2 * (rho 3487 * rho 3488) := by
      rw [hd0, hd1, hd2]
      linear_combination r3101
    have hd4 : rho 3501 * (2 - (rho 3488 * rho 3488 + rho 3487 * rho 3487 * (-1))) = rho 3488 * rho 3488 - rho 3487 * rho 3487 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3102
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX29 rho : Seg6.F), (seg6AccY29 rho : Seg6.F)⟩
      ⟨(rho 3487 : Seg6.F), (rho 3488 : Seg6.F)⟩
      ⟨(rho 3493 : Seg6.F), (rho 3494 : Seg6.F)⟩
      ⟨(seg6AccX30 rho : Seg6.F), (seg6AccY30 rho : Seg6.F)⟩
      ⟨(rho 3500 : Seg6.F), (rho 3501 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung29

theorem seg6_rows30 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow3103 rho ∧ Seg6.relationRow3104 rho ∧ Seg6.relationRow3105 rho ∧ Seg6.relationRow3106 rho ∧ Seg6.relationRow3107 rho ∧ Seg6.relationRow3108 rho ∧ Seg6.relationRow3109 rho ∧ Seg6.relationRow3110 rho ∧ Seg6.relationRow3111 rho ∧ Seg6.relationRow3112 rho ∧ Seg6.relationRow3113 rho ∧ Seg6.relationRow3114 rho ∧ Seg6.relationRow3115 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p38, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart38 at p38
  rcases p38 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3103, r3104, r3105, r3106, r3107, r3108, r3109, r3110, r3111, r3112, r3113, r3114, r3115, _, _, _, _⟩
  exact ⟨r3103, r3104, r3105, r3106, r3107, r3108, r3109, r3110, r3111, r3112, r3113, r3114, r3115⟩

theorem seg6_rung30 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1920 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX30 rho : Seg6.F), (seg6AccY30 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3500 : Seg6.F), (rho 3501 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX30 rho : Seg6.F), (seg6AccY30 rho : Seg6.F)⟩
        ⟨(rho 3500 : Seg6.F), (rho 3501 : Seg6.F)⟩
        ⟨(seg6AccX31 rho : Seg6.F), (seg6AccY31 rho : Seg6.F)⟩
        ⟨(rho 3513 : Seg6.F), (rho 3514 : Seg6.F)⟩ := by
  obtain ⟨r3103, r3104, r3105, r3106, r3107, r3108, r3109, r3110, r3111, r3112, r3113, r3114, r3115⟩ := seg6_rows30 rho h
  unfold Seg6.relationRow3103 at r3103
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3103
  unfold Seg6.relationRow3104 at r3104
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3104
  unfold Seg6.relationRow3105 at r3105
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3105
  unfold Seg6.relationRow3106 at r3106
  unfold Seg6.relationRow3107 at r3107
  unfold Seg6.relationRow3108 at r3108
  unfold Seg6.relationRow3109 at r3109
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3109
  unfold Seg6.relationRow3110 at r3110
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3110
  unfold Seg6.relationRow3111 at r3111
  unfold Seg6.relationRow3112 at r3112
  unfold Seg6.relationRow3113 at r3113
  unfold Seg6.relationRow3114 at r3114
  unfold Seg6.relationRow3115 at r3115
  have hrung30 (bit : Bool) (hbit : rho 1920 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX30 rho : Seg6.F), (seg6AccY30 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3500 : Seg6.F), (rho 3501 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX30 rho : Seg6.F), (seg6AccY30 rho : Seg6.F)⟩
        ⟨(rho 3500 : Seg6.F), (rho 3501 : Seg6.F)⟩
        ⟨(seg6AccX31 rho : Seg6.F), (seg6AccY31 rho : Seg6.F)⟩
        ⟨(rho 3513 : Seg6.F), (rho 3514 : Seg6.F)⟩ := by
    have hnextx : seg6AccX31 rho = seg6AccX30 rho + rho 3508 := by
      unfold seg6AccX31 seg6AccX30
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 30]
      ring
    have hnexty : seg6AccY31 rho = seg6AccY30 rho + rho 3509 := by
      unfold seg6AccY31 seg6AccY30
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 30]
      ring
    have ha0 : (rho 3500 + rho 3501) * (seg6AccX30 rho + seg6AccY30 rho) = rho 3502 := by
      unfold seg6AccX30 seg6AccY30
      linear_combination r3103
    have ha1 : rho 3501 * seg6AccX30 rho = rho 3503 := by
      unfold seg6AccX30
      linear_combination r3104
    have ha2 : rho 3500 * seg6AccY30 rho = rho 3504 := by
      unfold seg6AccY30
      linear_combination r3105
    have ha3 : 3021 * rho 3503 * rho 3504 = rho 3505 := by
      linear_combination r3106
    have ha4 : rho 3506 * (1 + rho 3505) = rho 3503 + rho 3504 := by
      linear_combination r3107
    have ha5 : rho 3507 * (1 - rho 3505) = rho 3502 - rho 3503 - rho 3504 := by
      linear_combination r3108
    have haddx :
        rho 3506 * (1 + 3021 * (rho 3501 * seg6AccX30 rho) * (rho 3500 * seg6AccY30 rho)) =
          rho 3501 * seg6AccX30 rho + rho 3500 * seg6AccY30 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3507 * (1 - 3021 * (rho 3501 * seg6AccX30 rho) * (rho 3500 * seg6AccY30 rho)) =
          (-1) * (rho 3501 * seg6AccX30 rho) - rho 3500 * seg6AccY30 rho +
            (seg6AccY30 rho - seg6AccX30 rho * (-1)) * (rho 3500 + rho 3501) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3507 * (1 - rho 3505) = rho 3502 - rho 3503 - rho 3504 := ha5
        _ = (-1) * rho 3503 - rho 3504 + (seg6AccY30 rho - seg6AccX30 rho * (-1)) * (rho 3500 + rho 3501) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX31 rho = seg6AccX30 rho - Bool.toZMod bit * (seg6AccX30 rho - rho 3506) := by
      have hd : rho 3508 = Bool.toZMod bit * (rho 3506 - seg6AccX30 rho) := by
        rw [← hbit]
        unfold seg6AccX30
        linear_combination -r3109
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY31 rho = seg6AccY30 rho - Bool.toZMod bit * (seg6AccY30 rho - rho 3507) := by
      have hd : rho 3509 = Bool.toZMod bit * (rho 3507 - seg6AccY30 rho) := by
        rw [← hbit]
        unfold seg6AccY30
        linear_combination -r3110
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3500 * rho 3501 = rho 3510 := by linear_combination r3111
    have hd1 : rho 3500 * rho 3500 = rho 3511 := by linear_combination r3112
    have hd2 : rho 3501 * rho 3501 = rho 3512 := by linear_combination r3113
    have hd3 : rho 3513 * (rho 3501 * rho 3501 + rho 3500 * rho 3500 * (-1)) = 2 * (rho 3500 * rho 3501) := by
      rw [hd0, hd1, hd2]
      linear_combination r3114
    have hd4 : rho 3514 * (2 - (rho 3501 * rho 3501 + rho 3500 * rho 3500 * (-1))) = rho 3501 * rho 3501 - rho 3500 * rho 3500 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3115
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX30 rho : Seg6.F), (seg6AccY30 rho : Seg6.F)⟩
      ⟨(rho 3500 : Seg6.F), (rho 3501 : Seg6.F)⟩
      ⟨(rho 3506 : Seg6.F), (rho 3507 : Seg6.F)⟩
      ⟨(seg6AccX31 rho : Seg6.F), (seg6AccY31 rho : Seg6.F)⟩
      ⟨(rho 3513 : Seg6.F), (rho 3514 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung30

theorem seg6_rows31 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow3116 rho ∧ Seg6.relationRow3117 rho ∧ Seg6.relationRow3118 rho ∧ Seg6.relationRow3119 rho ∧ Seg6.relationRow3120 rho ∧ Seg6.relationRow3121 rho ∧ Seg6.relationRow3122 rho ∧ Seg6.relationRow3123 rho ∧ Seg6.relationRow3124 rho ∧ Seg6.relationRow3125 rho ∧ Seg6.relationRow3126 rho ∧ Seg6.relationRow3127 rho ∧ Seg6.relationRow3128 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p38, p39,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart38 at p38
  rcases p38 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3116, r3117, r3118, r3119⟩
  unfold Seg6.relationPart39 at p39
  rcases p39 with ⟨r3120, r3121, r3122, r3123, r3124, r3125, r3126, r3127, r3128, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3116, r3117, r3118, r3119, r3120, r3121, r3122, r3123, r3124, r3125, r3126, r3127, r3128⟩

theorem seg6_rung31 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1921 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX31 rho : Seg6.F), (seg6AccY31 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3513 : Seg6.F), (rho 3514 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX31 rho : Seg6.F), (seg6AccY31 rho : Seg6.F)⟩
        ⟨(rho 3513 : Seg6.F), (rho 3514 : Seg6.F)⟩
        ⟨(seg6AccX32 rho : Seg6.F), (seg6AccY32 rho : Seg6.F)⟩
        ⟨(rho 3526 : Seg6.F), (rho 3527 : Seg6.F)⟩ := by
  obtain ⟨r3116, r3117, r3118, r3119, r3120, r3121, r3122, r3123, r3124, r3125, r3126, r3127, r3128⟩ := seg6_rows31 rho h
  unfold Seg6.relationRow3116 at r3116
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3116
  unfold Seg6.relationRow3117 at r3117
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3117
  unfold Seg6.relationRow3118 at r3118
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3118
  unfold Seg6.relationRow3119 at r3119
  unfold Seg6.relationRow3120 at r3120
  unfold Seg6.relationRow3121 at r3121
  unfold Seg6.relationRow3122 at r3122
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3122
  unfold Seg6.relationRow3123 at r3123
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3123
  unfold Seg6.relationRow3124 at r3124
  unfold Seg6.relationRow3125 at r3125
  unfold Seg6.relationRow3126 at r3126
  unfold Seg6.relationRow3127 at r3127
  unfold Seg6.relationRow3128 at r3128
  have hrung31 (bit : Bool) (hbit : rho 1921 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX31 rho : Seg6.F), (seg6AccY31 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3513 : Seg6.F), (rho 3514 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX31 rho : Seg6.F), (seg6AccY31 rho : Seg6.F)⟩
        ⟨(rho 3513 : Seg6.F), (rho 3514 : Seg6.F)⟩
        ⟨(seg6AccX32 rho : Seg6.F), (seg6AccY32 rho : Seg6.F)⟩
        ⟨(rho 3526 : Seg6.F), (rho 3527 : Seg6.F)⟩ := by
    have hnextx : seg6AccX32 rho = seg6AccX31 rho + rho 3521 := by
      unfold seg6AccX32 seg6AccX31
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 31]
      ring
    have hnexty : seg6AccY32 rho = seg6AccY31 rho + rho 3522 := by
      unfold seg6AccY32 seg6AccY31
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 31]
      ring
    have ha0 : (rho 3513 + rho 3514) * (seg6AccX31 rho + seg6AccY31 rho) = rho 3515 := by
      unfold seg6AccX31 seg6AccY31
      linear_combination r3116
    have ha1 : rho 3514 * seg6AccX31 rho = rho 3516 := by
      unfold seg6AccX31
      linear_combination r3117
    have ha2 : rho 3513 * seg6AccY31 rho = rho 3517 := by
      unfold seg6AccY31
      linear_combination r3118
    have ha3 : 3021 * rho 3516 * rho 3517 = rho 3518 := by
      linear_combination r3119
    have ha4 : rho 3519 * (1 + rho 3518) = rho 3516 + rho 3517 := by
      linear_combination r3120
    have ha5 : rho 3520 * (1 - rho 3518) = rho 3515 - rho 3516 - rho 3517 := by
      linear_combination r3121
    have haddx :
        rho 3519 * (1 + 3021 * (rho 3514 * seg6AccX31 rho) * (rho 3513 * seg6AccY31 rho)) =
          rho 3514 * seg6AccX31 rho + rho 3513 * seg6AccY31 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3520 * (1 - 3021 * (rho 3514 * seg6AccX31 rho) * (rho 3513 * seg6AccY31 rho)) =
          (-1) * (rho 3514 * seg6AccX31 rho) - rho 3513 * seg6AccY31 rho +
            (seg6AccY31 rho - seg6AccX31 rho * (-1)) * (rho 3513 + rho 3514) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3520 * (1 - rho 3518) = rho 3515 - rho 3516 - rho 3517 := ha5
        _ = (-1) * rho 3516 - rho 3517 + (seg6AccY31 rho - seg6AccX31 rho * (-1)) * (rho 3513 + rho 3514) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX32 rho = seg6AccX31 rho - Bool.toZMod bit * (seg6AccX31 rho - rho 3519) := by
      have hd : rho 3521 = Bool.toZMod bit * (rho 3519 - seg6AccX31 rho) := by
        rw [← hbit]
        unfold seg6AccX31
        linear_combination -r3122
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY32 rho = seg6AccY31 rho - Bool.toZMod bit * (seg6AccY31 rho - rho 3520) := by
      have hd : rho 3522 = Bool.toZMod bit * (rho 3520 - seg6AccY31 rho) := by
        rw [← hbit]
        unfold seg6AccY31
        linear_combination -r3123
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3513 * rho 3514 = rho 3523 := by linear_combination r3124
    have hd1 : rho 3513 * rho 3513 = rho 3524 := by linear_combination r3125
    have hd2 : rho 3514 * rho 3514 = rho 3525 := by linear_combination r3126
    have hd3 : rho 3526 * (rho 3514 * rho 3514 + rho 3513 * rho 3513 * (-1)) = 2 * (rho 3513 * rho 3514) := by
      rw [hd0, hd1, hd2]
      linear_combination r3127
    have hd4 : rho 3527 * (2 - (rho 3514 * rho 3514 + rho 3513 * rho 3513 * (-1))) = rho 3514 * rho 3514 - rho 3513 * rho 3513 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3128
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX31 rho : Seg6.F), (seg6AccY31 rho : Seg6.F)⟩
      ⟨(rho 3513 : Seg6.F), (rho 3514 : Seg6.F)⟩
      ⟨(rho 3519 : Seg6.F), (rho 3520 : Seg6.F)⟩
      ⟨(seg6AccX32 rho : Seg6.F), (seg6AccY32 rho : Seg6.F)⟩
      ⟨(rho 3526 : Seg6.F), (rho 3527 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung31

theorem seg6_rows32 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow3129 rho ∧ Seg6.relationRow3130 rho ∧ Seg6.relationRow3131 rho ∧ Seg6.relationRow3132 rho ∧ Seg6.relationRow3133 rho ∧ Seg6.relationRow3134 rho ∧ Seg6.relationRow3135 rho ∧ Seg6.relationRow3136 rho ∧ Seg6.relationRow3137 rho ∧ Seg6.relationRow3138 rho ∧ Seg6.relationRow3139 rho ∧ Seg6.relationRow3140 rho ∧ Seg6.relationRow3141 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p39,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart39 at p39
  rcases p39 with ⟨_, _, _, _, _, _, _, _, _, r3129, r3130, r3131, r3132, r3133, r3134, r3135, r3136, r3137, r3138, r3139, r3140, r3141, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3129, r3130, r3131, r3132, r3133, r3134, r3135, r3136, r3137, r3138, r3139, r3140, r3141⟩

theorem seg6_rung32 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1922 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX32 rho : Seg6.F), (seg6AccY32 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3526 : Seg6.F), (rho 3527 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX32 rho : Seg6.F), (seg6AccY32 rho : Seg6.F)⟩
        ⟨(rho 3526 : Seg6.F), (rho 3527 : Seg6.F)⟩
        ⟨(seg6AccX33 rho : Seg6.F), (seg6AccY33 rho : Seg6.F)⟩
        ⟨(rho 3539 : Seg6.F), (rho 3540 : Seg6.F)⟩ := by
  obtain ⟨r3129, r3130, r3131, r3132, r3133, r3134, r3135, r3136, r3137, r3138, r3139, r3140, r3141⟩ := seg6_rows32 rho h
  unfold Seg6.relationRow3129 at r3129
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3129
  unfold Seg6.relationRow3130 at r3130
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3130
  unfold Seg6.relationRow3131 at r3131
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3131
  unfold Seg6.relationRow3132 at r3132
  unfold Seg6.relationRow3133 at r3133
  unfold Seg6.relationRow3134 at r3134
  unfold Seg6.relationRow3135 at r3135
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3135
  unfold Seg6.relationRow3136 at r3136
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3136
  unfold Seg6.relationRow3137 at r3137
  unfold Seg6.relationRow3138 at r3138
  unfold Seg6.relationRow3139 at r3139
  unfold Seg6.relationRow3140 at r3140
  unfold Seg6.relationRow3141 at r3141
  have hrung32 (bit : Bool) (hbit : rho 1922 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX32 rho : Seg6.F), (seg6AccY32 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3526 : Seg6.F), (rho 3527 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX32 rho : Seg6.F), (seg6AccY32 rho : Seg6.F)⟩
        ⟨(rho 3526 : Seg6.F), (rho 3527 : Seg6.F)⟩
        ⟨(seg6AccX33 rho : Seg6.F), (seg6AccY33 rho : Seg6.F)⟩
        ⟨(rho 3539 : Seg6.F), (rho 3540 : Seg6.F)⟩ := by
    have hnextx : seg6AccX33 rho = seg6AccX32 rho + rho 3534 := by
      unfold seg6AccX33 seg6AccX32
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 32]
      ring
    have hnexty : seg6AccY33 rho = seg6AccY32 rho + rho 3535 := by
      unfold seg6AccY33 seg6AccY32
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 32]
      ring
    have ha0 : (rho 3526 + rho 3527) * (seg6AccX32 rho + seg6AccY32 rho) = rho 3528 := by
      unfold seg6AccX32 seg6AccY32
      linear_combination r3129
    have ha1 : rho 3527 * seg6AccX32 rho = rho 3529 := by
      unfold seg6AccX32
      linear_combination r3130
    have ha2 : rho 3526 * seg6AccY32 rho = rho 3530 := by
      unfold seg6AccY32
      linear_combination r3131
    have ha3 : 3021 * rho 3529 * rho 3530 = rho 3531 := by
      linear_combination r3132
    have ha4 : rho 3532 * (1 + rho 3531) = rho 3529 + rho 3530 := by
      linear_combination r3133
    have ha5 : rho 3533 * (1 - rho 3531) = rho 3528 - rho 3529 - rho 3530 := by
      linear_combination r3134
    have haddx :
        rho 3532 * (1 + 3021 * (rho 3527 * seg6AccX32 rho) * (rho 3526 * seg6AccY32 rho)) =
          rho 3527 * seg6AccX32 rho + rho 3526 * seg6AccY32 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3533 * (1 - 3021 * (rho 3527 * seg6AccX32 rho) * (rho 3526 * seg6AccY32 rho)) =
          (-1) * (rho 3527 * seg6AccX32 rho) - rho 3526 * seg6AccY32 rho +
            (seg6AccY32 rho - seg6AccX32 rho * (-1)) * (rho 3526 + rho 3527) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3533 * (1 - rho 3531) = rho 3528 - rho 3529 - rho 3530 := ha5
        _ = (-1) * rho 3529 - rho 3530 + (seg6AccY32 rho - seg6AccX32 rho * (-1)) * (rho 3526 + rho 3527) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX33 rho = seg6AccX32 rho - Bool.toZMod bit * (seg6AccX32 rho - rho 3532) := by
      have hd : rho 3534 = Bool.toZMod bit * (rho 3532 - seg6AccX32 rho) := by
        rw [← hbit]
        unfold seg6AccX32
        linear_combination -r3135
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY33 rho = seg6AccY32 rho - Bool.toZMod bit * (seg6AccY32 rho - rho 3533) := by
      have hd : rho 3535 = Bool.toZMod bit * (rho 3533 - seg6AccY32 rho) := by
        rw [← hbit]
        unfold seg6AccY32
        linear_combination -r3136
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3526 * rho 3527 = rho 3536 := by linear_combination r3137
    have hd1 : rho 3526 * rho 3526 = rho 3537 := by linear_combination r3138
    have hd2 : rho 3527 * rho 3527 = rho 3538 := by linear_combination r3139
    have hd3 : rho 3539 * (rho 3527 * rho 3527 + rho 3526 * rho 3526 * (-1)) = 2 * (rho 3526 * rho 3527) := by
      rw [hd0, hd1, hd2]
      linear_combination r3140
    have hd4 : rho 3540 * (2 - (rho 3527 * rho 3527 + rho 3526 * rho 3526 * (-1))) = rho 3527 * rho 3527 - rho 3526 * rho 3526 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3141
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX32 rho : Seg6.F), (seg6AccY32 rho : Seg6.F)⟩
      ⟨(rho 3526 : Seg6.F), (rho 3527 : Seg6.F)⟩
      ⟨(rho 3532 : Seg6.F), (rho 3533 : Seg6.F)⟩
      ⟨(seg6AccX33 rho : Seg6.F), (seg6AccY33 rho : Seg6.F)⟩
      ⟨(rho 3539 : Seg6.F), (rho 3540 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung32

theorem seg6_hstep_c2 (rho : Nat -> Seg6.F) (h : Seg6.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (1890 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 22 ≤ i → i < 33 →
      EdwardsBridge.onCurve (seg6LadderAccState rho i) →
      EdwardsBridge.onCurve (seg6LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg6LadderAccState rho i) (seg6LadderCurState rho i)
        (seg6LadderAccState rho (i + 1)) (seg6LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg6_rung22 rho h bits[22]! (hbitAt 22 (by omega)) hacc hcur
  · exact seg6_rung23 rho h bits[23]! (hbitAt 23 (by omega)) hacc hcur
  · exact seg6_rung24 rho h bits[24]! (hbitAt 24 (by omega)) hacc hcur
  · exact seg6_rung25 rho h bits[25]! (hbitAt 25 (by omega)) hacc hcur
  · exact seg6_rung26 rho h bits[26]! (hbitAt 26 (by omega)) hacc hcur
  · exact seg6_rung27 rho h bits[27]! (hbitAt 27 (by omega)) hacc hcur
  · exact seg6_rung28 rho h bits[28]! (hbitAt 28 (by omega)) hacc hcur
  · exact seg6_rung29 rho h bits[29]! (hbitAt 29 (by omega)) hacc hcur
  · exact seg6_rung30 rho h bits[30]! (hbitAt 30 (by omega)) hacc hcur
  · exact seg6_rung31 rho h bits[31]! (hbitAt 31 (by omega)) hacc hcur
  · exact seg6_rung32 rho h bits[32]! (hbitAt 32 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
