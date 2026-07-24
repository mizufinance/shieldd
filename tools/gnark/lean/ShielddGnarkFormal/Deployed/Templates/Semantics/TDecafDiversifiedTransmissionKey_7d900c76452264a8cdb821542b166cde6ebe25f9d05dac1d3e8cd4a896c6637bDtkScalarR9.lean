import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDtkScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs

theorem dtk_rows54 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3415 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3416 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3417 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3418 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3419 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3420 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3421 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3422 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3423 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3424 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3425 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3426 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3427 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p42, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart42 at p42
  rcases p42 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3415, r3416, r3417, r3418, r3419, r3420, r3421, r3422, r3423, r3424, r3425, r3426, r3427, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3415, r3416, r3417, r3418, r3419, r3420, r3421, r3422, r3423, r3424, r3425, r3426, r3427⟩

theorem dtk_rung54 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1037 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX54 rho : F), (dtkAccY54 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 2907 : F), (rho 2908 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX54 rho : F), (dtkAccY54 rho : F)⟩
        ⟨(rho 2907 : F), (rho 2908 : F)⟩
        ⟨(dtkAccX55 rho : F), (dtkAccY55 rho : F)⟩
        ⟨(rho 2920 : F), (rho 2921 : F)⟩ := by
  obtain ⟨r3415, r3416, r3417, r3418, r3419, r3420, r3421, r3422, r3423, r3424, r3425, r3426, r3427⟩ := dtk_rows54 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3415 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc356 at r3415
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3415
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3416 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc357 at r3416
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3416
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3417 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc358 at r3417
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3417
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3418 at r3418
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3419 at r3419
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3420 at r3420
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3421 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc359 at r3421
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3421
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3422 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc360 at r3422
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3422
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3423 at r3423
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3424 at r3424
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3425 at r3425
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3426 at r3426
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3427 at r3427
  have hrung54 (bit : Bool) (hbit : rho 1037 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX54 rho : F), (dtkAccY54 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 2907 : F), (rho 2908 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX54 rho : F), (dtkAccY54 rho : F)⟩
        ⟨(rho 2907 : F), (rho 2908 : F)⟩
        ⟨(dtkAccX55 rho : F), (dtkAccY55 rho : F)⟩
        ⟨(rho 2920 : F), (rho 2921 : F)⟩ := by
    have hnextx : dtkAccX55 rho = dtkAccX54 rho + rho 2915 := by
      unfold dtkAccX55 dtkAccX54
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 53]
      ring
    have hnexty : dtkAccY55 rho = dtkAccY54 rho + rho 2916 := by
      unfold dtkAccY55 dtkAccY54
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 54]
      ring
    have ha0 : (rho 2907 + rho 2908) * (dtkAccX54 rho + dtkAccY54 rho) = rho 2909 := by
      unfold dtkAccX54 dtkAccY54
      linear_combination r3415
    have ha1 : rho 2908 * dtkAccX54 rho = rho 2910 := by
      unfold dtkAccX54
      linear_combination r3416
    have ha2 : rho 2907 * dtkAccY54 rho = rho 2911 := by
      unfold dtkAccY54
      linear_combination r3417
    have ha3 : 3021 * rho 2910 * rho 2911 = rho 2912 := by
      linear_combination r3418
    have ha4 : rho 2913 * (1 + rho 2912) = rho 2910 + rho 2911 := by
      linear_combination r3419
    have ha5 : rho 2914 * (1 - rho 2912) = rho 2909 - rho 2910 - rho 2911 := by
      linear_combination r3420
    have haddx :
        rho 2913 * (1 + 3021 * (rho 2908 * dtkAccX54 rho) * (rho 2907 * dtkAccY54 rho)) =
          rho 2908 * dtkAccX54 rho + rho 2907 * dtkAccY54 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 2914 * (1 - 3021 * (rho 2908 * dtkAccX54 rho) * (rho 2907 * dtkAccY54 rho)) =
          (-1) * (rho 2908 * dtkAccX54 rho) - rho 2907 * dtkAccY54 rho +
            (dtkAccY54 rho - dtkAccX54 rho * (-1)) * (rho 2907 + rho 2908) := by
      rw [ha1, ha2, ha3]
      calc
        rho 2914 * (1 - rho 2912) = rho 2909 - rho 2910 - rho 2911 := ha5
        _ = (-1) * rho 2910 - rho 2911 + (dtkAccY54 rho - dtkAccX54 rho * (-1)) * (rho 2907 + rho 2908) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX55 rho = dtkAccX54 rho - Bool.toZMod bit * (dtkAccX54 rho - rho 2913) := by
      have hd : rho 2915 = Bool.toZMod bit * (rho 2913 - dtkAccX54 rho) := by
        rw [← hbit]
        unfold dtkAccX54
        linear_combination -r3421
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY55 rho = dtkAccY54 rho - Bool.toZMod bit * (dtkAccY54 rho - rho 2914) := by
      have hd : rho 2916 = Bool.toZMod bit * (rho 2914 - dtkAccY54 rho) := by
        rw [← hbit]
        unfold dtkAccY54
        linear_combination -r3422
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 2907 * rho 2908 = rho 2917 := by linear_combination r3423
    have hd1 : rho 2907 * rho 2907 = rho 2918 := by linear_combination r3424
    have hd2 : rho 2908 * rho 2908 = rho 2919 := by linear_combination r3425
    have hd3 : rho 2920 * (rho 2908 * rho 2908 + rho 2907 * rho 2907 * (-1)) = 2 * (rho 2907 * rho 2908) := by
      rw [hd0, hd1, hd2]
      linear_combination r3426
    have hd4 : rho 2921 * (2 - (rho 2908 * rho 2908 + rho 2907 * rho 2907 * (-1))) = rho 2908 * rho 2908 - rho 2907 * rho 2907 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3427
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX54 rho : F), (dtkAccY54 rho : F)⟩
      ⟨(rho 2907 : F), (rho 2908 : F)⟩
      ⟨(rho 2913 : F), (rho 2914 : F)⟩
      ⟨(dtkAccX55 rho : F), (dtkAccY55 rho : F)⟩
      ⟨(rho 2920 : F), (rho 2921 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung54

theorem dtk_rows55 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3428 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3429 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3430 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3431 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3432 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3433 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3434 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3435 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3436 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3437 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3438 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3439 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3440 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p42, p43, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart42 at p42
  rcases p42 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3428, r3429, r3430, r3431, r3432, r3433, r3434, r3435, r3436, r3437, r3438, r3439⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart43 at p43
  rcases p43 with ⟨r3440, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3428, r3429, r3430, r3431, r3432, r3433, r3434, r3435, r3436, r3437, r3438, r3439, r3440⟩

theorem dtk_rung55 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1038 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX55 rho : F), (dtkAccY55 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 2920 : F), (rho 2921 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX55 rho : F), (dtkAccY55 rho : F)⟩
        ⟨(rho 2920 : F), (rho 2921 : F)⟩
        ⟨(dtkAccX56 rho : F), (dtkAccY56 rho : F)⟩
        ⟨(rho 2933 : F), (rho 2934 : F)⟩ := by
  obtain ⟨r3428, r3429, r3430, r3431, r3432, r3433, r3434, r3435, r3436, r3437, r3438, r3439, r3440⟩ := dtk_rows55 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3428 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc361 at r3428
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3428
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3429 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc362 at r3429
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3429
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3430 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc363 at r3430
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3430
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3431 at r3431
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3432 at r3432
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3433 at r3433
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3434 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc364 at r3434
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3434
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3435 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc365 at r3435
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3435
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3436 at r3436
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3437 at r3437
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3438 at r3438
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3439 at r3439
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3440 at r3440
  have hrung55 (bit : Bool) (hbit : rho 1038 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX55 rho : F), (dtkAccY55 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 2920 : F), (rho 2921 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX55 rho : F), (dtkAccY55 rho : F)⟩
        ⟨(rho 2920 : F), (rho 2921 : F)⟩
        ⟨(dtkAccX56 rho : F), (dtkAccY56 rho : F)⟩
        ⟨(rho 2933 : F), (rho 2934 : F)⟩ := by
    have hnextx : dtkAccX56 rho = dtkAccX55 rho + rho 2928 := by
      unfold dtkAccX56 dtkAccX55
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 54]
      ring
    have hnexty : dtkAccY56 rho = dtkAccY55 rho + rho 2929 := by
      unfold dtkAccY56 dtkAccY55
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 55]
      ring
    have ha0 : (rho 2920 + rho 2921) * (dtkAccX55 rho + dtkAccY55 rho) = rho 2922 := by
      unfold dtkAccX55 dtkAccY55
      linear_combination r3428
    have ha1 : rho 2921 * dtkAccX55 rho = rho 2923 := by
      unfold dtkAccX55
      linear_combination r3429
    have ha2 : rho 2920 * dtkAccY55 rho = rho 2924 := by
      unfold dtkAccY55
      linear_combination r3430
    have ha3 : 3021 * rho 2923 * rho 2924 = rho 2925 := by
      linear_combination r3431
    have ha4 : rho 2926 * (1 + rho 2925) = rho 2923 + rho 2924 := by
      linear_combination r3432
    have ha5 : rho 2927 * (1 - rho 2925) = rho 2922 - rho 2923 - rho 2924 := by
      linear_combination r3433
    have haddx :
        rho 2926 * (1 + 3021 * (rho 2921 * dtkAccX55 rho) * (rho 2920 * dtkAccY55 rho)) =
          rho 2921 * dtkAccX55 rho + rho 2920 * dtkAccY55 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 2927 * (1 - 3021 * (rho 2921 * dtkAccX55 rho) * (rho 2920 * dtkAccY55 rho)) =
          (-1) * (rho 2921 * dtkAccX55 rho) - rho 2920 * dtkAccY55 rho +
            (dtkAccY55 rho - dtkAccX55 rho * (-1)) * (rho 2920 + rho 2921) := by
      rw [ha1, ha2, ha3]
      calc
        rho 2927 * (1 - rho 2925) = rho 2922 - rho 2923 - rho 2924 := ha5
        _ = (-1) * rho 2923 - rho 2924 + (dtkAccY55 rho - dtkAccX55 rho * (-1)) * (rho 2920 + rho 2921) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX56 rho = dtkAccX55 rho - Bool.toZMod bit * (dtkAccX55 rho - rho 2926) := by
      have hd : rho 2928 = Bool.toZMod bit * (rho 2926 - dtkAccX55 rho) := by
        rw [← hbit]
        unfold dtkAccX55
        linear_combination -r3434
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY56 rho = dtkAccY55 rho - Bool.toZMod bit * (dtkAccY55 rho - rho 2927) := by
      have hd : rho 2929 = Bool.toZMod bit * (rho 2927 - dtkAccY55 rho) := by
        rw [← hbit]
        unfold dtkAccY55
        linear_combination -r3435
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 2920 * rho 2921 = rho 2930 := by linear_combination r3436
    have hd1 : rho 2920 * rho 2920 = rho 2931 := by linear_combination r3437
    have hd2 : rho 2921 * rho 2921 = rho 2932 := by linear_combination r3438
    have hd3 : rho 2933 * (rho 2921 * rho 2921 + rho 2920 * rho 2920 * (-1)) = 2 * (rho 2920 * rho 2921) := by
      rw [hd0, hd1, hd2]
      linear_combination r3439
    have hd4 : rho 2934 * (2 - (rho 2921 * rho 2921 + rho 2920 * rho 2920 * (-1))) = rho 2921 * rho 2921 - rho 2920 * rho 2920 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3440
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX55 rho : F), (dtkAccY55 rho : F)⟩
      ⟨(rho 2920 : F), (rho 2921 : F)⟩
      ⟨(rho 2926 : F), (rho 2927 : F)⟩
      ⟨(dtkAccX56 rho : F), (dtkAccY56 rho : F)⟩
      ⟨(rho 2933 : F), (rho 2934 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung55

theorem dtk_rows56 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3441 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3442 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3443 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3444 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3445 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3446 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3447 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3448 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3449 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3450 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3451 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3452 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3453 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p43, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart43 at p43
  rcases p43 with ⟨_, r3441, r3442, r3443, r3444, r3445, r3446, r3447, r3448, r3449, r3450, r3451, r3452, r3453, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3441, r3442, r3443, r3444, r3445, r3446, r3447, r3448, r3449, r3450, r3451, r3452, r3453⟩

theorem dtk_rung56 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1039 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX56 rho : F), (dtkAccY56 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 2933 : F), (rho 2934 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX56 rho : F), (dtkAccY56 rho : F)⟩
        ⟨(rho 2933 : F), (rho 2934 : F)⟩
        ⟨(dtkAccX57 rho : F), (dtkAccY57 rho : F)⟩
        ⟨(rho 2946 : F), (rho 2947 : F)⟩ := by
  obtain ⟨r3441, r3442, r3443, r3444, r3445, r3446, r3447, r3448, r3449, r3450, r3451, r3452, r3453⟩ := dtk_rows56 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3441 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc366 at r3441
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3441
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3442 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc367 at r3442
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3442
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3443 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc368 at r3443
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3443
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3444 at r3444
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3445 at r3445
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3446 at r3446
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3447 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc369 at r3447
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3447
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3448 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc370 at r3448
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3448
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3449 at r3449
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3450 at r3450
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3451 at r3451
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3452 at r3452
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3453 at r3453
  have hrung56 (bit : Bool) (hbit : rho 1039 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX56 rho : F), (dtkAccY56 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 2933 : F), (rho 2934 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX56 rho : F), (dtkAccY56 rho : F)⟩
        ⟨(rho 2933 : F), (rho 2934 : F)⟩
        ⟨(dtkAccX57 rho : F), (dtkAccY57 rho : F)⟩
        ⟨(rho 2946 : F), (rho 2947 : F)⟩ := by
    have hnextx : dtkAccX57 rho = dtkAccX56 rho + rho 2941 := by
      unfold dtkAccX57 dtkAccX56
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 55]
      ring
    have hnexty : dtkAccY57 rho = dtkAccY56 rho + rho 2942 := by
      unfold dtkAccY57 dtkAccY56
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 56]
      ring
    have ha0 : (rho 2933 + rho 2934) * (dtkAccX56 rho + dtkAccY56 rho) = rho 2935 := by
      unfold dtkAccX56 dtkAccY56
      linear_combination r3441
    have ha1 : rho 2934 * dtkAccX56 rho = rho 2936 := by
      unfold dtkAccX56
      linear_combination r3442
    have ha2 : rho 2933 * dtkAccY56 rho = rho 2937 := by
      unfold dtkAccY56
      linear_combination r3443
    have ha3 : 3021 * rho 2936 * rho 2937 = rho 2938 := by
      linear_combination r3444
    have ha4 : rho 2939 * (1 + rho 2938) = rho 2936 + rho 2937 := by
      linear_combination r3445
    have ha5 : rho 2940 * (1 - rho 2938) = rho 2935 - rho 2936 - rho 2937 := by
      linear_combination r3446
    have haddx :
        rho 2939 * (1 + 3021 * (rho 2934 * dtkAccX56 rho) * (rho 2933 * dtkAccY56 rho)) =
          rho 2934 * dtkAccX56 rho + rho 2933 * dtkAccY56 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 2940 * (1 - 3021 * (rho 2934 * dtkAccX56 rho) * (rho 2933 * dtkAccY56 rho)) =
          (-1) * (rho 2934 * dtkAccX56 rho) - rho 2933 * dtkAccY56 rho +
            (dtkAccY56 rho - dtkAccX56 rho * (-1)) * (rho 2933 + rho 2934) := by
      rw [ha1, ha2, ha3]
      calc
        rho 2940 * (1 - rho 2938) = rho 2935 - rho 2936 - rho 2937 := ha5
        _ = (-1) * rho 2936 - rho 2937 + (dtkAccY56 rho - dtkAccX56 rho * (-1)) * (rho 2933 + rho 2934) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX57 rho = dtkAccX56 rho - Bool.toZMod bit * (dtkAccX56 rho - rho 2939) := by
      have hd : rho 2941 = Bool.toZMod bit * (rho 2939 - dtkAccX56 rho) := by
        rw [← hbit]
        unfold dtkAccX56
        linear_combination -r3447
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY57 rho = dtkAccY56 rho - Bool.toZMod bit * (dtkAccY56 rho - rho 2940) := by
      have hd : rho 2942 = Bool.toZMod bit * (rho 2940 - dtkAccY56 rho) := by
        rw [← hbit]
        unfold dtkAccY56
        linear_combination -r3448
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 2933 * rho 2934 = rho 2943 := by linear_combination r3449
    have hd1 : rho 2933 * rho 2933 = rho 2944 := by linear_combination r3450
    have hd2 : rho 2934 * rho 2934 = rho 2945 := by linear_combination r3451
    have hd3 : rho 2946 * (rho 2934 * rho 2934 + rho 2933 * rho 2933 * (-1)) = 2 * (rho 2933 * rho 2934) := by
      rw [hd0, hd1, hd2]
      linear_combination r3452
    have hd4 : rho 2947 * (2 - (rho 2934 * rho 2934 + rho 2933 * rho 2933 * (-1))) = rho 2934 * rho 2934 - rho 2933 * rho 2933 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3453
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX56 rho : F), (dtkAccY56 rho : F)⟩
      ⟨(rho 2933 : F), (rho 2934 : F)⟩
      ⟨(rho 2939 : F), (rho 2940 : F)⟩
      ⟨(dtkAccX57 rho : F), (dtkAccY57 rho : F)⟩
      ⟨(rho 2946 : F), (rho 2947 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung56

theorem dtk_rows57 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3454 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3455 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3456 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3457 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3458 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3459 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3460 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3461 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3462 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3463 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3464 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3465 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3466 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p43, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart43 at p43
  rcases p43 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, r3454, r3455, r3456, r3457, r3458, r3459, r3460, r3461, r3462, r3463, r3464, r3465, r3466, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3454, r3455, r3456, r3457, r3458, r3459, r3460, r3461, r3462, r3463, r3464, r3465, r3466⟩

theorem dtk_rung57 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1040 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX57 rho : F), (dtkAccY57 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 2946 : F), (rho 2947 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX57 rho : F), (dtkAccY57 rho : F)⟩
        ⟨(rho 2946 : F), (rho 2947 : F)⟩
        ⟨(dtkAccX58 rho : F), (dtkAccY58 rho : F)⟩
        ⟨(rho 2959 : F), (rho 2960 : F)⟩ := by
  obtain ⟨r3454, r3455, r3456, r3457, r3458, r3459, r3460, r3461, r3462, r3463, r3464, r3465, r3466⟩ := dtk_rows57 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3454 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc371 at r3454
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3454
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3455 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc372 at r3455
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3455
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3456 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc373 at r3456
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3456
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3457 at r3457
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3458 at r3458
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3459 at r3459
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3460 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc374 at r3460
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3460
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3461 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc375 at r3461
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3461
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3462 at r3462
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3463 at r3463
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3464 at r3464
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3465 at r3465
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3466 at r3466
  have hrung57 (bit : Bool) (hbit : rho 1040 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX57 rho : F), (dtkAccY57 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 2946 : F), (rho 2947 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX57 rho : F), (dtkAccY57 rho : F)⟩
        ⟨(rho 2946 : F), (rho 2947 : F)⟩
        ⟨(dtkAccX58 rho : F), (dtkAccY58 rho : F)⟩
        ⟨(rho 2959 : F), (rho 2960 : F)⟩ := by
    have hnextx : dtkAccX58 rho = dtkAccX57 rho + rho 2954 := by
      unfold dtkAccX58 dtkAccX57
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 56]
      ring
    have hnexty : dtkAccY58 rho = dtkAccY57 rho + rho 2955 := by
      unfold dtkAccY58 dtkAccY57
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 57]
      ring
    have ha0 : (rho 2946 + rho 2947) * (dtkAccX57 rho + dtkAccY57 rho) = rho 2948 := by
      unfold dtkAccX57 dtkAccY57
      linear_combination r3454
    have ha1 : rho 2947 * dtkAccX57 rho = rho 2949 := by
      unfold dtkAccX57
      linear_combination r3455
    have ha2 : rho 2946 * dtkAccY57 rho = rho 2950 := by
      unfold dtkAccY57
      linear_combination r3456
    have ha3 : 3021 * rho 2949 * rho 2950 = rho 2951 := by
      linear_combination r3457
    have ha4 : rho 2952 * (1 + rho 2951) = rho 2949 + rho 2950 := by
      linear_combination r3458
    have ha5 : rho 2953 * (1 - rho 2951) = rho 2948 - rho 2949 - rho 2950 := by
      linear_combination r3459
    have haddx :
        rho 2952 * (1 + 3021 * (rho 2947 * dtkAccX57 rho) * (rho 2946 * dtkAccY57 rho)) =
          rho 2947 * dtkAccX57 rho + rho 2946 * dtkAccY57 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 2953 * (1 - 3021 * (rho 2947 * dtkAccX57 rho) * (rho 2946 * dtkAccY57 rho)) =
          (-1) * (rho 2947 * dtkAccX57 rho) - rho 2946 * dtkAccY57 rho +
            (dtkAccY57 rho - dtkAccX57 rho * (-1)) * (rho 2946 + rho 2947) := by
      rw [ha1, ha2, ha3]
      calc
        rho 2953 * (1 - rho 2951) = rho 2948 - rho 2949 - rho 2950 := ha5
        _ = (-1) * rho 2949 - rho 2950 + (dtkAccY57 rho - dtkAccX57 rho * (-1)) * (rho 2946 + rho 2947) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX58 rho = dtkAccX57 rho - Bool.toZMod bit * (dtkAccX57 rho - rho 2952) := by
      have hd : rho 2954 = Bool.toZMod bit * (rho 2952 - dtkAccX57 rho) := by
        rw [← hbit]
        unfold dtkAccX57
        linear_combination -r3460
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY58 rho = dtkAccY57 rho - Bool.toZMod bit * (dtkAccY57 rho - rho 2953) := by
      have hd : rho 2955 = Bool.toZMod bit * (rho 2953 - dtkAccY57 rho) := by
        rw [← hbit]
        unfold dtkAccY57
        linear_combination -r3461
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 2946 * rho 2947 = rho 2956 := by linear_combination r3462
    have hd1 : rho 2946 * rho 2946 = rho 2957 := by linear_combination r3463
    have hd2 : rho 2947 * rho 2947 = rho 2958 := by linear_combination r3464
    have hd3 : rho 2959 * (rho 2947 * rho 2947 + rho 2946 * rho 2946 * (-1)) = 2 * (rho 2946 * rho 2947) := by
      rw [hd0, hd1, hd2]
      linear_combination r3465
    have hd4 : rho 2960 * (2 - (rho 2947 * rho 2947 + rho 2946 * rho 2946 * (-1))) = rho 2947 * rho 2947 - rho 2946 * rho 2946 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3466
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX57 rho : F), (dtkAccY57 rho : F)⟩
      ⟨(rho 2946 : F), (rho 2947 : F)⟩
      ⟨(rho 2952 : F), (rho 2953 : F)⟩
      ⟨(dtkAccX58 rho : F), (dtkAccY58 rho : F)⟩
      ⟨(rho 2959 : F), (rho 2960 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung57

theorem dtk_rows58 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3467 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3468 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3469 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3470 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3471 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3472 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3473 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3474 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3475 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3476 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3477 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3478 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3479 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p43, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart43 at p43
  rcases p43 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3467, r3468, r3469, r3470, r3471, r3472, r3473, r3474, r3475, r3476, r3477, r3478, r3479, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3467, r3468, r3469, r3470, r3471, r3472, r3473, r3474, r3475, r3476, r3477, r3478, r3479⟩

theorem dtk_rung58 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1041 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX58 rho : F), (dtkAccY58 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 2959 : F), (rho 2960 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX58 rho : F), (dtkAccY58 rho : F)⟩
        ⟨(rho 2959 : F), (rho 2960 : F)⟩
        ⟨(dtkAccX59 rho : F), (dtkAccY59 rho : F)⟩
        ⟨(rho 2972 : F), (rho 2973 : F)⟩ := by
  obtain ⟨r3467, r3468, r3469, r3470, r3471, r3472, r3473, r3474, r3475, r3476, r3477, r3478, r3479⟩ := dtk_rows58 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3467 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc376 at r3467
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3467
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3468 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc377 at r3468
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3468
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3469 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc378 at r3469
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3469
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3470 at r3470
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3471 at r3471
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3472 at r3472
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3473 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc379 at r3473
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3473
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3474 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc380 at r3474
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3474
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3475 at r3475
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3476 at r3476
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3477 at r3477
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3478 at r3478
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3479 at r3479
  have hrung58 (bit : Bool) (hbit : rho 1041 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX58 rho : F), (dtkAccY58 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 2959 : F), (rho 2960 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX58 rho : F), (dtkAccY58 rho : F)⟩
        ⟨(rho 2959 : F), (rho 2960 : F)⟩
        ⟨(dtkAccX59 rho : F), (dtkAccY59 rho : F)⟩
        ⟨(rho 2972 : F), (rho 2973 : F)⟩ := by
    have hnextx : dtkAccX59 rho = dtkAccX58 rho + rho 2967 := by
      unfold dtkAccX59 dtkAccX58
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 57]
      ring
    have hnexty : dtkAccY59 rho = dtkAccY58 rho + rho 2968 := by
      unfold dtkAccY59 dtkAccY58
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 58]
      ring
    have ha0 : (rho 2959 + rho 2960) * (dtkAccX58 rho + dtkAccY58 rho) = rho 2961 := by
      unfold dtkAccX58 dtkAccY58
      linear_combination r3467
    have ha1 : rho 2960 * dtkAccX58 rho = rho 2962 := by
      unfold dtkAccX58
      linear_combination r3468
    have ha2 : rho 2959 * dtkAccY58 rho = rho 2963 := by
      unfold dtkAccY58
      linear_combination r3469
    have ha3 : 3021 * rho 2962 * rho 2963 = rho 2964 := by
      linear_combination r3470
    have ha4 : rho 2965 * (1 + rho 2964) = rho 2962 + rho 2963 := by
      linear_combination r3471
    have ha5 : rho 2966 * (1 - rho 2964) = rho 2961 - rho 2962 - rho 2963 := by
      linear_combination r3472
    have haddx :
        rho 2965 * (1 + 3021 * (rho 2960 * dtkAccX58 rho) * (rho 2959 * dtkAccY58 rho)) =
          rho 2960 * dtkAccX58 rho + rho 2959 * dtkAccY58 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 2966 * (1 - 3021 * (rho 2960 * dtkAccX58 rho) * (rho 2959 * dtkAccY58 rho)) =
          (-1) * (rho 2960 * dtkAccX58 rho) - rho 2959 * dtkAccY58 rho +
            (dtkAccY58 rho - dtkAccX58 rho * (-1)) * (rho 2959 + rho 2960) := by
      rw [ha1, ha2, ha3]
      calc
        rho 2966 * (1 - rho 2964) = rho 2961 - rho 2962 - rho 2963 := ha5
        _ = (-1) * rho 2962 - rho 2963 + (dtkAccY58 rho - dtkAccX58 rho * (-1)) * (rho 2959 + rho 2960) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX59 rho = dtkAccX58 rho - Bool.toZMod bit * (dtkAccX58 rho - rho 2965) := by
      have hd : rho 2967 = Bool.toZMod bit * (rho 2965 - dtkAccX58 rho) := by
        rw [← hbit]
        unfold dtkAccX58
        linear_combination -r3473
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY59 rho = dtkAccY58 rho - Bool.toZMod bit * (dtkAccY58 rho - rho 2966) := by
      have hd : rho 2968 = Bool.toZMod bit * (rho 2966 - dtkAccY58 rho) := by
        rw [← hbit]
        unfold dtkAccY58
        linear_combination -r3474
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 2959 * rho 2960 = rho 2969 := by linear_combination r3475
    have hd1 : rho 2959 * rho 2959 = rho 2970 := by linear_combination r3476
    have hd2 : rho 2960 * rho 2960 = rho 2971 := by linear_combination r3477
    have hd3 : rho 2972 * (rho 2960 * rho 2960 + rho 2959 * rho 2959 * (-1)) = 2 * (rho 2959 * rho 2960) := by
      rw [hd0, hd1, hd2]
      linear_combination r3478
    have hd4 : rho 2973 * (2 - (rho 2960 * rho 2960 + rho 2959 * rho 2959 * (-1))) = rho 2960 * rho 2960 - rho 2959 * rho 2959 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3479
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX58 rho : F), (dtkAccY58 rho : F)⟩
      ⟨(rho 2959 : F), (rho 2960 : F)⟩
      ⟨(rho 2965 : F), (rho 2966 : F)⟩
      ⟨(dtkAccX59 rho : F), (dtkAccY59 rho : F)⟩
      ⟨(rho 2972 : F), (rho 2973 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung58

theorem dtk_rows59 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3480 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3481 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3482 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3483 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3484 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3485 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3486 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3487 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3488 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3489 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3490 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3491 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3492 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p43, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart43 at p43
  rcases p43 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3480, r3481, r3482, r3483, r3484, r3485, r3486, r3487, r3488, r3489, r3490, r3491, r3492, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3480, r3481, r3482, r3483, r3484, r3485, r3486, r3487, r3488, r3489, r3490, r3491, r3492⟩

theorem dtk_rung59 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1042 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX59 rho : F), (dtkAccY59 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 2972 : F), (rho 2973 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX59 rho : F), (dtkAccY59 rho : F)⟩
        ⟨(rho 2972 : F), (rho 2973 : F)⟩
        ⟨(dtkAccX60 rho : F), (dtkAccY60 rho : F)⟩
        ⟨(rho 2985 : F), (rho 2986 : F)⟩ := by
  obtain ⟨r3480, r3481, r3482, r3483, r3484, r3485, r3486, r3487, r3488, r3489, r3490, r3491, r3492⟩ := dtk_rows59 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3480 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc381 at r3480
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3480
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3481 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc382 at r3481
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3481
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3482 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc383 at r3482
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3482
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3483 at r3483
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3484 at r3484
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3485 at r3485
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3486 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc384 at r3486
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3486
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3487 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc385 at r3487
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3487
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3488 at r3488
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3489 at r3489
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3490 at r3490
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3491 at r3491
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3492 at r3492
  have hrung59 (bit : Bool) (hbit : rho 1042 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX59 rho : F), (dtkAccY59 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 2972 : F), (rho 2973 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX59 rho : F), (dtkAccY59 rho : F)⟩
        ⟨(rho 2972 : F), (rho 2973 : F)⟩
        ⟨(dtkAccX60 rho : F), (dtkAccY60 rho : F)⟩
        ⟨(rho 2985 : F), (rho 2986 : F)⟩ := by
    have hnextx : dtkAccX60 rho = dtkAccX59 rho + rho 2980 := by
      unfold dtkAccX60 dtkAccX59
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 58]
      ring
    have hnexty : dtkAccY60 rho = dtkAccY59 rho + rho 2981 := by
      unfold dtkAccY60 dtkAccY59
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 59]
      ring
    have ha0 : (rho 2972 + rho 2973) * (dtkAccX59 rho + dtkAccY59 rho) = rho 2974 := by
      unfold dtkAccX59 dtkAccY59
      linear_combination r3480
    have ha1 : rho 2973 * dtkAccX59 rho = rho 2975 := by
      unfold dtkAccX59
      linear_combination r3481
    have ha2 : rho 2972 * dtkAccY59 rho = rho 2976 := by
      unfold dtkAccY59
      linear_combination r3482
    have ha3 : 3021 * rho 2975 * rho 2976 = rho 2977 := by
      linear_combination r3483
    have ha4 : rho 2978 * (1 + rho 2977) = rho 2975 + rho 2976 := by
      linear_combination r3484
    have ha5 : rho 2979 * (1 - rho 2977) = rho 2974 - rho 2975 - rho 2976 := by
      linear_combination r3485
    have haddx :
        rho 2978 * (1 + 3021 * (rho 2973 * dtkAccX59 rho) * (rho 2972 * dtkAccY59 rho)) =
          rho 2973 * dtkAccX59 rho + rho 2972 * dtkAccY59 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 2979 * (1 - 3021 * (rho 2973 * dtkAccX59 rho) * (rho 2972 * dtkAccY59 rho)) =
          (-1) * (rho 2973 * dtkAccX59 rho) - rho 2972 * dtkAccY59 rho +
            (dtkAccY59 rho - dtkAccX59 rho * (-1)) * (rho 2972 + rho 2973) := by
      rw [ha1, ha2, ha3]
      calc
        rho 2979 * (1 - rho 2977) = rho 2974 - rho 2975 - rho 2976 := ha5
        _ = (-1) * rho 2975 - rho 2976 + (dtkAccY59 rho - dtkAccX59 rho * (-1)) * (rho 2972 + rho 2973) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX60 rho = dtkAccX59 rho - Bool.toZMod bit * (dtkAccX59 rho - rho 2978) := by
      have hd : rho 2980 = Bool.toZMod bit * (rho 2978 - dtkAccX59 rho) := by
        rw [← hbit]
        unfold dtkAccX59
        linear_combination -r3486
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY60 rho = dtkAccY59 rho - Bool.toZMod bit * (dtkAccY59 rho - rho 2979) := by
      have hd : rho 2981 = Bool.toZMod bit * (rho 2979 - dtkAccY59 rho) := by
        rw [← hbit]
        unfold dtkAccY59
        linear_combination -r3487
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 2972 * rho 2973 = rho 2982 := by linear_combination r3488
    have hd1 : rho 2972 * rho 2972 = rho 2983 := by linear_combination r3489
    have hd2 : rho 2973 * rho 2973 = rho 2984 := by linear_combination r3490
    have hd3 : rho 2985 * (rho 2973 * rho 2973 + rho 2972 * rho 2972 * (-1)) = 2 * (rho 2972 * rho 2973) := by
      rw [hd0, hd1, hd2]
      linear_combination r3491
    have hd4 : rho 2986 * (2 - (rho 2973 * rho 2973 + rho 2972 * rho 2972 * (-1))) = rho 2973 * rho 2973 - rho 2972 * rho 2972 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3492
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX59 rho : F), (dtkAccY59 rho : F)⟩
      ⟨(rho 2972 : F), (rho 2973 : F)⟩
      ⟨(rho 2978 : F), (rho 2979 : F)⟩
      ⟨(dtkAccX60 rho : F), (dtkAccY60 rho : F)⟩
      ⟨(rho 2985 : F), (rho 2986 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung59

theorem dtk_hstep_c9 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (983 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 54 ≤ i → i < 60 →
      EdwardsBridge.onCurve (dtkLadderAccState rho i) →
      EdwardsBridge.onCurve (dtkLadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (dtkLadderAccState rho i) (dtkLadderCurState rho i)
        (dtkLadderAccState rho (i + 1)) (dtkLadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact dtk_rung54 rho h bits[54]! (hbitAt 54 (by omega)) hacc hcur
  · exact dtk_rung55 rho h bits[55]! (hbitAt 55 (by omega)) hacc hcur
  · exact dtk_rung56 rho h bits[56]! (hbitAt 56 (by omega)) hacc hcur
  · exact dtk_rung57 rho h bits[57]! (hbitAt 57 (by omega)) hacc hcur
  · exact dtk_rung58 rho h bits[58]! (hbitAt 58 (by omega)) hacc hcur
  · exact dtk_rung59 rho h bits[59]! (hbitAt 59 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport
