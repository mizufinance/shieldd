import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDtkScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs

theorem dtk_rows48 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3337 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3338 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3339 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3340 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3341 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3342 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3343 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3344 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3345 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3346 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3347 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3348 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3349 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p41, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart41 at p41
  rcases p41 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3337, r3338, r3339, r3340, r3341, r3342, r3343, r3344, r3345, r3346, r3347, r3348, r3349, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3337, r3338, r3339, r3340, r3341, r3342, r3343, r3344, r3345, r3346, r3347, r3348, r3349⟩

theorem dtk_rung48 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1031 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX48 rho : F), (dtkAccY48 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 2829 : F), (rho 2830 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX48 rho : F), (dtkAccY48 rho : F)⟩
        ⟨(rho 2829 : F), (rho 2830 : F)⟩
        ⟨(dtkAccX49 rho : F), (dtkAccY49 rho : F)⟩
        ⟨(rho 2842 : F), (rho 2843 : F)⟩ := by
  obtain ⟨r3337, r3338, r3339, r3340, r3341, r3342, r3343, r3344, r3345, r3346, r3347, r3348, r3349⟩ := dtk_rows48 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3337 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc326 at r3337
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3337
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3338 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc327 at r3338
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3338
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3339 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc328 at r3339
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3339
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3340 at r3340
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3341 at r3341
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3342 at r3342
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3343 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc329 at r3343
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3343
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3344 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc330 at r3344
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3344
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3345 at r3345
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3346 at r3346
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3347 at r3347
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3348 at r3348
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3349 at r3349
  have hrung48 (bit : Bool) (hbit : rho 1031 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX48 rho : F), (dtkAccY48 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 2829 : F), (rho 2830 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX48 rho : F), (dtkAccY48 rho : F)⟩
        ⟨(rho 2829 : F), (rho 2830 : F)⟩
        ⟨(dtkAccX49 rho : F), (dtkAccY49 rho : F)⟩
        ⟨(rho 2842 : F), (rho 2843 : F)⟩ := by
    have hnextx : dtkAccX49 rho = dtkAccX48 rho + rho 2837 := by
      unfold dtkAccX49 dtkAccX48
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 47]
      ring
    have hnexty : dtkAccY49 rho = dtkAccY48 rho + rho 2838 := by
      unfold dtkAccY49 dtkAccY48
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 48]
      ring
    have ha0 : (rho 2829 + rho 2830) * (dtkAccX48 rho + dtkAccY48 rho) = rho 2831 := by
      unfold dtkAccX48 dtkAccY48
      linear_combination r3337
    have ha1 : rho 2830 * dtkAccX48 rho = rho 2832 := by
      unfold dtkAccX48
      linear_combination r3338
    have ha2 : rho 2829 * dtkAccY48 rho = rho 2833 := by
      unfold dtkAccY48
      linear_combination r3339
    have ha3 : 3021 * rho 2832 * rho 2833 = rho 2834 := by
      linear_combination r3340
    have ha4 : rho 2835 * (1 + rho 2834) = rho 2832 + rho 2833 := by
      linear_combination r3341
    have ha5 : rho 2836 * (1 - rho 2834) = rho 2831 - rho 2832 - rho 2833 := by
      linear_combination r3342
    have haddx :
        rho 2835 * (1 + 3021 * (rho 2830 * dtkAccX48 rho) * (rho 2829 * dtkAccY48 rho)) =
          rho 2830 * dtkAccX48 rho + rho 2829 * dtkAccY48 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 2836 * (1 - 3021 * (rho 2830 * dtkAccX48 rho) * (rho 2829 * dtkAccY48 rho)) =
          (-1) * (rho 2830 * dtkAccX48 rho) - rho 2829 * dtkAccY48 rho +
            (dtkAccY48 rho - dtkAccX48 rho * (-1)) * (rho 2829 + rho 2830) := by
      rw [ha1, ha2, ha3]
      calc
        rho 2836 * (1 - rho 2834) = rho 2831 - rho 2832 - rho 2833 := ha5
        _ = (-1) * rho 2832 - rho 2833 + (dtkAccY48 rho - dtkAccX48 rho * (-1)) * (rho 2829 + rho 2830) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX49 rho = dtkAccX48 rho - Bool.toZMod bit * (dtkAccX48 rho - rho 2835) := by
      have hd : rho 2837 = Bool.toZMod bit * (rho 2835 - dtkAccX48 rho) := by
        rw [← hbit]
        unfold dtkAccX48
        linear_combination -r3343
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY49 rho = dtkAccY48 rho - Bool.toZMod bit * (dtkAccY48 rho - rho 2836) := by
      have hd : rho 2838 = Bool.toZMod bit * (rho 2836 - dtkAccY48 rho) := by
        rw [← hbit]
        unfold dtkAccY48
        linear_combination -r3344
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 2829 * rho 2830 = rho 2839 := by linear_combination r3345
    have hd1 : rho 2829 * rho 2829 = rho 2840 := by linear_combination r3346
    have hd2 : rho 2830 * rho 2830 = rho 2841 := by linear_combination r3347
    have hd3 : rho 2842 * (rho 2830 * rho 2830 + rho 2829 * rho 2829 * (-1)) = 2 * (rho 2829 * rho 2830) := by
      rw [hd0, hd1, hd2]
      linear_combination r3348
    have hd4 : rho 2843 * (2 - (rho 2830 * rho 2830 + rho 2829 * rho 2829 * (-1))) = rho 2830 * rho 2830 - rho 2829 * rho 2829 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3349
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX48 rho : F), (dtkAccY48 rho : F)⟩
      ⟨(rho 2829 : F), (rho 2830 : F)⟩
      ⟨(rho 2835 : F), (rho 2836 : F)⟩
      ⟨(dtkAccX49 rho : F), (dtkAccY49 rho : F)⟩
      ⟨(rho 2842 : F), (rho 2843 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung48

theorem dtk_rows49 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3350 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3351 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3352 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3353 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3354 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3355 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3356 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3357 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3358 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3359 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3360 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3361 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3362 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p41, p42, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart41 at p41
  rcases p41 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3350, r3351, r3352, r3353, r3354, r3355, r3356, r3357, r3358, r3359⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart42 at p42
  rcases p42 with ⟨r3360, r3361, r3362, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3350, r3351, r3352, r3353, r3354, r3355, r3356, r3357, r3358, r3359, r3360, r3361, r3362⟩

theorem dtk_rung49 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1032 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX49 rho : F), (dtkAccY49 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 2842 : F), (rho 2843 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX49 rho : F), (dtkAccY49 rho : F)⟩
        ⟨(rho 2842 : F), (rho 2843 : F)⟩
        ⟨(dtkAccX50 rho : F), (dtkAccY50 rho : F)⟩
        ⟨(rho 2855 : F), (rho 2856 : F)⟩ := by
  obtain ⟨r3350, r3351, r3352, r3353, r3354, r3355, r3356, r3357, r3358, r3359, r3360, r3361, r3362⟩ := dtk_rows49 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3350 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc331 at r3350
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3350
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3351 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc332 at r3351
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3351
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3352 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc333 at r3352
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3352
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3353 at r3353
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3354 at r3354
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3355 at r3355
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3356 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc334 at r3356
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3356
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3357 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc335 at r3357
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3357
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3358 at r3358
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3359 at r3359
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3360 at r3360
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3361 at r3361
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3362 at r3362
  have hrung49 (bit : Bool) (hbit : rho 1032 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX49 rho : F), (dtkAccY49 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 2842 : F), (rho 2843 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX49 rho : F), (dtkAccY49 rho : F)⟩
        ⟨(rho 2842 : F), (rho 2843 : F)⟩
        ⟨(dtkAccX50 rho : F), (dtkAccY50 rho : F)⟩
        ⟨(rho 2855 : F), (rho 2856 : F)⟩ := by
    have hnextx : dtkAccX50 rho = dtkAccX49 rho + rho 2850 := by
      unfold dtkAccX50 dtkAccX49
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 48]
      ring
    have hnexty : dtkAccY50 rho = dtkAccY49 rho + rho 2851 := by
      unfold dtkAccY50 dtkAccY49
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 49]
      ring
    have ha0 : (rho 2842 + rho 2843) * (dtkAccX49 rho + dtkAccY49 rho) = rho 2844 := by
      unfold dtkAccX49 dtkAccY49
      linear_combination r3350
    have ha1 : rho 2843 * dtkAccX49 rho = rho 2845 := by
      unfold dtkAccX49
      linear_combination r3351
    have ha2 : rho 2842 * dtkAccY49 rho = rho 2846 := by
      unfold dtkAccY49
      linear_combination r3352
    have ha3 : 3021 * rho 2845 * rho 2846 = rho 2847 := by
      linear_combination r3353
    have ha4 : rho 2848 * (1 + rho 2847) = rho 2845 + rho 2846 := by
      linear_combination r3354
    have ha5 : rho 2849 * (1 - rho 2847) = rho 2844 - rho 2845 - rho 2846 := by
      linear_combination r3355
    have haddx :
        rho 2848 * (1 + 3021 * (rho 2843 * dtkAccX49 rho) * (rho 2842 * dtkAccY49 rho)) =
          rho 2843 * dtkAccX49 rho + rho 2842 * dtkAccY49 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 2849 * (1 - 3021 * (rho 2843 * dtkAccX49 rho) * (rho 2842 * dtkAccY49 rho)) =
          (-1) * (rho 2843 * dtkAccX49 rho) - rho 2842 * dtkAccY49 rho +
            (dtkAccY49 rho - dtkAccX49 rho * (-1)) * (rho 2842 + rho 2843) := by
      rw [ha1, ha2, ha3]
      calc
        rho 2849 * (1 - rho 2847) = rho 2844 - rho 2845 - rho 2846 := ha5
        _ = (-1) * rho 2845 - rho 2846 + (dtkAccY49 rho - dtkAccX49 rho * (-1)) * (rho 2842 + rho 2843) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX50 rho = dtkAccX49 rho - Bool.toZMod bit * (dtkAccX49 rho - rho 2848) := by
      have hd : rho 2850 = Bool.toZMod bit * (rho 2848 - dtkAccX49 rho) := by
        rw [← hbit]
        unfold dtkAccX49
        linear_combination -r3356
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY50 rho = dtkAccY49 rho - Bool.toZMod bit * (dtkAccY49 rho - rho 2849) := by
      have hd : rho 2851 = Bool.toZMod bit * (rho 2849 - dtkAccY49 rho) := by
        rw [← hbit]
        unfold dtkAccY49
        linear_combination -r3357
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 2842 * rho 2843 = rho 2852 := by linear_combination r3358
    have hd1 : rho 2842 * rho 2842 = rho 2853 := by linear_combination r3359
    have hd2 : rho 2843 * rho 2843 = rho 2854 := by linear_combination r3360
    have hd3 : rho 2855 * (rho 2843 * rho 2843 + rho 2842 * rho 2842 * (-1)) = 2 * (rho 2842 * rho 2843) := by
      rw [hd0, hd1, hd2]
      linear_combination r3361
    have hd4 : rho 2856 * (2 - (rho 2843 * rho 2843 + rho 2842 * rho 2842 * (-1))) = rho 2843 * rho 2843 - rho 2842 * rho 2842 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3362
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX49 rho : F), (dtkAccY49 rho : F)⟩
      ⟨(rho 2842 : F), (rho 2843 : F)⟩
      ⟨(rho 2848 : F), (rho 2849 : F)⟩
      ⟨(dtkAccX50 rho : F), (dtkAccY50 rho : F)⟩
      ⟨(rho 2855 : F), (rho 2856 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung49

theorem dtk_rows50 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3363 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3364 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3365 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3366 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3367 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3368 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3369 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3370 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3371 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3372 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3373 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3374 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3375 rho := by
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
  rcases p42 with ⟨_, _, _, r3363, r3364, r3365, r3366, r3367, r3368, r3369, r3370, r3371, r3372, r3373, r3374, r3375, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3363, r3364, r3365, r3366, r3367, r3368, r3369, r3370, r3371, r3372, r3373, r3374, r3375⟩

theorem dtk_rung50 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1033 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX50 rho : F), (dtkAccY50 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 2855 : F), (rho 2856 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX50 rho : F), (dtkAccY50 rho : F)⟩
        ⟨(rho 2855 : F), (rho 2856 : F)⟩
        ⟨(dtkAccX51 rho : F), (dtkAccY51 rho : F)⟩
        ⟨(rho 2868 : F), (rho 2869 : F)⟩ := by
  obtain ⟨r3363, r3364, r3365, r3366, r3367, r3368, r3369, r3370, r3371, r3372, r3373, r3374, r3375⟩ := dtk_rows50 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3363 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc336 at r3363
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3363
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3364 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc337 at r3364
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3364
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3365 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc338 at r3365
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3365
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3366 at r3366
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3367 at r3367
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3368 at r3368
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3369 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc339 at r3369
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3369
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3370 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc340 at r3370
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3370
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3371 at r3371
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3372 at r3372
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3373 at r3373
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3374 at r3374
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3375 at r3375
  have hrung50 (bit : Bool) (hbit : rho 1033 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX50 rho : F), (dtkAccY50 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 2855 : F), (rho 2856 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX50 rho : F), (dtkAccY50 rho : F)⟩
        ⟨(rho 2855 : F), (rho 2856 : F)⟩
        ⟨(dtkAccX51 rho : F), (dtkAccY51 rho : F)⟩
        ⟨(rho 2868 : F), (rho 2869 : F)⟩ := by
    have hnextx : dtkAccX51 rho = dtkAccX50 rho + rho 2863 := by
      unfold dtkAccX51 dtkAccX50
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 49]
      ring
    have hnexty : dtkAccY51 rho = dtkAccY50 rho + rho 2864 := by
      unfold dtkAccY51 dtkAccY50
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 50]
      ring
    have ha0 : (rho 2855 + rho 2856) * (dtkAccX50 rho + dtkAccY50 rho) = rho 2857 := by
      unfold dtkAccX50 dtkAccY50
      linear_combination r3363
    have ha1 : rho 2856 * dtkAccX50 rho = rho 2858 := by
      unfold dtkAccX50
      linear_combination r3364
    have ha2 : rho 2855 * dtkAccY50 rho = rho 2859 := by
      unfold dtkAccY50
      linear_combination r3365
    have ha3 : 3021 * rho 2858 * rho 2859 = rho 2860 := by
      linear_combination r3366
    have ha4 : rho 2861 * (1 + rho 2860) = rho 2858 + rho 2859 := by
      linear_combination r3367
    have ha5 : rho 2862 * (1 - rho 2860) = rho 2857 - rho 2858 - rho 2859 := by
      linear_combination r3368
    have haddx :
        rho 2861 * (1 + 3021 * (rho 2856 * dtkAccX50 rho) * (rho 2855 * dtkAccY50 rho)) =
          rho 2856 * dtkAccX50 rho + rho 2855 * dtkAccY50 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 2862 * (1 - 3021 * (rho 2856 * dtkAccX50 rho) * (rho 2855 * dtkAccY50 rho)) =
          (-1) * (rho 2856 * dtkAccX50 rho) - rho 2855 * dtkAccY50 rho +
            (dtkAccY50 rho - dtkAccX50 rho * (-1)) * (rho 2855 + rho 2856) := by
      rw [ha1, ha2, ha3]
      calc
        rho 2862 * (1 - rho 2860) = rho 2857 - rho 2858 - rho 2859 := ha5
        _ = (-1) * rho 2858 - rho 2859 + (dtkAccY50 rho - dtkAccX50 rho * (-1)) * (rho 2855 + rho 2856) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX51 rho = dtkAccX50 rho - Bool.toZMod bit * (dtkAccX50 rho - rho 2861) := by
      have hd : rho 2863 = Bool.toZMod bit * (rho 2861 - dtkAccX50 rho) := by
        rw [← hbit]
        unfold dtkAccX50
        linear_combination -r3369
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY51 rho = dtkAccY50 rho - Bool.toZMod bit * (dtkAccY50 rho - rho 2862) := by
      have hd : rho 2864 = Bool.toZMod bit * (rho 2862 - dtkAccY50 rho) := by
        rw [← hbit]
        unfold dtkAccY50
        linear_combination -r3370
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 2855 * rho 2856 = rho 2865 := by linear_combination r3371
    have hd1 : rho 2855 * rho 2855 = rho 2866 := by linear_combination r3372
    have hd2 : rho 2856 * rho 2856 = rho 2867 := by linear_combination r3373
    have hd3 : rho 2868 * (rho 2856 * rho 2856 + rho 2855 * rho 2855 * (-1)) = 2 * (rho 2855 * rho 2856) := by
      rw [hd0, hd1, hd2]
      linear_combination r3374
    have hd4 : rho 2869 * (2 - (rho 2856 * rho 2856 + rho 2855 * rho 2855 * (-1))) = rho 2856 * rho 2856 - rho 2855 * rho 2855 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3375
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX50 rho : F), (dtkAccY50 rho : F)⟩
      ⟨(rho 2855 : F), (rho 2856 : F)⟩
      ⟨(rho 2861 : F), (rho 2862 : F)⟩
      ⟨(dtkAccX51 rho : F), (dtkAccY51 rho : F)⟩
      ⟨(rho 2868 : F), (rho 2869 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung50

theorem dtk_rows51 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3376 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3377 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3378 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3379 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3380 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3381 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3382 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3383 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3384 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3385 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3386 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3387 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3388 rho := by
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
  rcases p42 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3376, r3377, r3378, r3379, r3380, r3381, r3382, r3383, r3384, r3385, r3386, r3387, r3388, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3376, r3377, r3378, r3379, r3380, r3381, r3382, r3383, r3384, r3385, r3386, r3387, r3388⟩

theorem dtk_rung51 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1034 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX51 rho : F), (dtkAccY51 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 2868 : F), (rho 2869 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX51 rho : F), (dtkAccY51 rho : F)⟩
        ⟨(rho 2868 : F), (rho 2869 : F)⟩
        ⟨(dtkAccX52 rho : F), (dtkAccY52 rho : F)⟩
        ⟨(rho 2881 : F), (rho 2882 : F)⟩ := by
  obtain ⟨r3376, r3377, r3378, r3379, r3380, r3381, r3382, r3383, r3384, r3385, r3386, r3387, r3388⟩ := dtk_rows51 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3376 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc341 at r3376
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3376
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3377 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc342 at r3377
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3377
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3378 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc343 at r3378
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3378
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3379 at r3379
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3380 at r3380
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3381 at r3381
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3382 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc344 at r3382
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3382
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3383 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc345 at r3383
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3383
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3384 at r3384
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3385 at r3385
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3386 at r3386
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3387 at r3387
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3388 at r3388
  have hrung51 (bit : Bool) (hbit : rho 1034 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX51 rho : F), (dtkAccY51 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 2868 : F), (rho 2869 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX51 rho : F), (dtkAccY51 rho : F)⟩
        ⟨(rho 2868 : F), (rho 2869 : F)⟩
        ⟨(dtkAccX52 rho : F), (dtkAccY52 rho : F)⟩
        ⟨(rho 2881 : F), (rho 2882 : F)⟩ := by
    have hnextx : dtkAccX52 rho = dtkAccX51 rho + rho 2876 := by
      unfold dtkAccX52 dtkAccX51
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 50]
      ring
    have hnexty : dtkAccY52 rho = dtkAccY51 rho + rho 2877 := by
      unfold dtkAccY52 dtkAccY51
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 51]
      ring
    have ha0 : (rho 2868 + rho 2869) * (dtkAccX51 rho + dtkAccY51 rho) = rho 2870 := by
      unfold dtkAccX51 dtkAccY51
      linear_combination r3376
    have ha1 : rho 2869 * dtkAccX51 rho = rho 2871 := by
      unfold dtkAccX51
      linear_combination r3377
    have ha2 : rho 2868 * dtkAccY51 rho = rho 2872 := by
      unfold dtkAccY51
      linear_combination r3378
    have ha3 : 3021 * rho 2871 * rho 2872 = rho 2873 := by
      linear_combination r3379
    have ha4 : rho 2874 * (1 + rho 2873) = rho 2871 + rho 2872 := by
      linear_combination r3380
    have ha5 : rho 2875 * (1 - rho 2873) = rho 2870 - rho 2871 - rho 2872 := by
      linear_combination r3381
    have haddx :
        rho 2874 * (1 + 3021 * (rho 2869 * dtkAccX51 rho) * (rho 2868 * dtkAccY51 rho)) =
          rho 2869 * dtkAccX51 rho + rho 2868 * dtkAccY51 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 2875 * (1 - 3021 * (rho 2869 * dtkAccX51 rho) * (rho 2868 * dtkAccY51 rho)) =
          (-1) * (rho 2869 * dtkAccX51 rho) - rho 2868 * dtkAccY51 rho +
            (dtkAccY51 rho - dtkAccX51 rho * (-1)) * (rho 2868 + rho 2869) := by
      rw [ha1, ha2, ha3]
      calc
        rho 2875 * (1 - rho 2873) = rho 2870 - rho 2871 - rho 2872 := ha5
        _ = (-1) * rho 2871 - rho 2872 + (dtkAccY51 rho - dtkAccX51 rho * (-1)) * (rho 2868 + rho 2869) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX52 rho = dtkAccX51 rho - Bool.toZMod bit * (dtkAccX51 rho - rho 2874) := by
      have hd : rho 2876 = Bool.toZMod bit * (rho 2874 - dtkAccX51 rho) := by
        rw [← hbit]
        unfold dtkAccX51
        linear_combination -r3382
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY52 rho = dtkAccY51 rho - Bool.toZMod bit * (dtkAccY51 rho - rho 2875) := by
      have hd : rho 2877 = Bool.toZMod bit * (rho 2875 - dtkAccY51 rho) := by
        rw [← hbit]
        unfold dtkAccY51
        linear_combination -r3383
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 2868 * rho 2869 = rho 2878 := by linear_combination r3384
    have hd1 : rho 2868 * rho 2868 = rho 2879 := by linear_combination r3385
    have hd2 : rho 2869 * rho 2869 = rho 2880 := by linear_combination r3386
    have hd3 : rho 2881 * (rho 2869 * rho 2869 + rho 2868 * rho 2868 * (-1)) = 2 * (rho 2868 * rho 2869) := by
      rw [hd0, hd1, hd2]
      linear_combination r3387
    have hd4 : rho 2882 * (2 - (rho 2869 * rho 2869 + rho 2868 * rho 2868 * (-1))) = rho 2869 * rho 2869 - rho 2868 * rho 2868 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3388
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX51 rho : F), (dtkAccY51 rho : F)⟩
      ⟨(rho 2868 : F), (rho 2869 : F)⟩
      ⟨(rho 2874 : F), (rho 2875 : F)⟩
      ⟨(dtkAccX52 rho : F), (dtkAccY52 rho : F)⟩
      ⟨(rho 2881 : F), (rho 2882 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung51

theorem dtk_rows52 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3389 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3390 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3391 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3392 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3393 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3394 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3395 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3396 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3397 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3398 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3399 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3400 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3401 rho := by
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
  rcases p42 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3389, r3390, r3391, r3392, r3393, r3394, r3395, r3396, r3397, r3398, r3399, r3400, r3401, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3389, r3390, r3391, r3392, r3393, r3394, r3395, r3396, r3397, r3398, r3399, r3400, r3401⟩

theorem dtk_rung52 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1035 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX52 rho : F), (dtkAccY52 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 2881 : F), (rho 2882 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX52 rho : F), (dtkAccY52 rho : F)⟩
        ⟨(rho 2881 : F), (rho 2882 : F)⟩
        ⟨(dtkAccX53 rho : F), (dtkAccY53 rho : F)⟩
        ⟨(rho 2894 : F), (rho 2895 : F)⟩ := by
  obtain ⟨r3389, r3390, r3391, r3392, r3393, r3394, r3395, r3396, r3397, r3398, r3399, r3400, r3401⟩ := dtk_rows52 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3389 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc346 at r3389
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3389
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3390 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc347 at r3390
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3390
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3391 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc348 at r3391
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3391
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3392 at r3392
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3393 at r3393
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3394 at r3394
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3395 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc349 at r3395
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3395
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3396 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc350 at r3396
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3396
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3397 at r3397
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3398 at r3398
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3399 at r3399
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3400 at r3400
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3401 at r3401
  have hrung52 (bit : Bool) (hbit : rho 1035 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX52 rho : F), (dtkAccY52 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 2881 : F), (rho 2882 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX52 rho : F), (dtkAccY52 rho : F)⟩
        ⟨(rho 2881 : F), (rho 2882 : F)⟩
        ⟨(dtkAccX53 rho : F), (dtkAccY53 rho : F)⟩
        ⟨(rho 2894 : F), (rho 2895 : F)⟩ := by
    have hnextx : dtkAccX53 rho = dtkAccX52 rho + rho 2889 := by
      unfold dtkAccX53 dtkAccX52
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 51]
      ring
    have hnexty : dtkAccY53 rho = dtkAccY52 rho + rho 2890 := by
      unfold dtkAccY53 dtkAccY52
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 52]
      ring
    have ha0 : (rho 2881 + rho 2882) * (dtkAccX52 rho + dtkAccY52 rho) = rho 2883 := by
      unfold dtkAccX52 dtkAccY52
      linear_combination r3389
    have ha1 : rho 2882 * dtkAccX52 rho = rho 2884 := by
      unfold dtkAccX52
      linear_combination r3390
    have ha2 : rho 2881 * dtkAccY52 rho = rho 2885 := by
      unfold dtkAccY52
      linear_combination r3391
    have ha3 : 3021 * rho 2884 * rho 2885 = rho 2886 := by
      linear_combination r3392
    have ha4 : rho 2887 * (1 + rho 2886) = rho 2884 + rho 2885 := by
      linear_combination r3393
    have ha5 : rho 2888 * (1 - rho 2886) = rho 2883 - rho 2884 - rho 2885 := by
      linear_combination r3394
    have haddx :
        rho 2887 * (1 + 3021 * (rho 2882 * dtkAccX52 rho) * (rho 2881 * dtkAccY52 rho)) =
          rho 2882 * dtkAccX52 rho + rho 2881 * dtkAccY52 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 2888 * (1 - 3021 * (rho 2882 * dtkAccX52 rho) * (rho 2881 * dtkAccY52 rho)) =
          (-1) * (rho 2882 * dtkAccX52 rho) - rho 2881 * dtkAccY52 rho +
            (dtkAccY52 rho - dtkAccX52 rho * (-1)) * (rho 2881 + rho 2882) := by
      rw [ha1, ha2, ha3]
      calc
        rho 2888 * (1 - rho 2886) = rho 2883 - rho 2884 - rho 2885 := ha5
        _ = (-1) * rho 2884 - rho 2885 + (dtkAccY52 rho - dtkAccX52 rho * (-1)) * (rho 2881 + rho 2882) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX53 rho = dtkAccX52 rho - Bool.toZMod bit * (dtkAccX52 rho - rho 2887) := by
      have hd : rho 2889 = Bool.toZMod bit * (rho 2887 - dtkAccX52 rho) := by
        rw [← hbit]
        unfold dtkAccX52
        linear_combination -r3395
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY53 rho = dtkAccY52 rho - Bool.toZMod bit * (dtkAccY52 rho - rho 2888) := by
      have hd : rho 2890 = Bool.toZMod bit * (rho 2888 - dtkAccY52 rho) := by
        rw [← hbit]
        unfold dtkAccY52
        linear_combination -r3396
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 2881 * rho 2882 = rho 2891 := by linear_combination r3397
    have hd1 : rho 2881 * rho 2881 = rho 2892 := by linear_combination r3398
    have hd2 : rho 2882 * rho 2882 = rho 2893 := by linear_combination r3399
    have hd3 : rho 2894 * (rho 2882 * rho 2882 + rho 2881 * rho 2881 * (-1)) = 2 * (rho 2881 * rho 2882) := by
      rw [hd0, hd1, hd2]
      linear_combination r3400
    have hd4 : rho 2895 * (2 - (rho 2882 * rho 2882 + rho 2881 * rho 2881 * (-1))) = rho 2882 * rho 2882 - rho 2881 * rho 2881 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3401
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX52 rho : F), (dtkAccY52 rho : F)⟩
      ⟨(rho 2881 : F), (rho 2882 : F)⟩
      ⟨(rho 2887 : F), (rho 2888 : F)⟩
      ⟨(dtkAccX53 rho : F), (dtkAccY53 rho : F)⟩
      ⟨(rho 2894 : F), (rho 2895 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung52

theorem dtk_rows53 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3402 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3403 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3404 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3405 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3406 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3407 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3408 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3409 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3410 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3411 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3412 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3413 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3414 rho := by
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
  rcases p42 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3402, r3403, r3404, r3405, r3406, r3407, r3408, r3409, r3410, r3411, r3412, r3413, r3414, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3402, r3403, r3404, r3405, r3406, r3407, r3408, r3409, r3410, r3411, r3412, r3413, r3414⟩

theorem dtk_rung53 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1036 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX53 rho : F), (dtkAccY53 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 2894 : F), (rho 2895 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX53 rho : F), (dtkAccY53 rho : F)⟩
        ⟨(rho 2894 : F), (rho 2895 : F)⟩
        ⟨(dtkAccX54 rho : F), (dtkAccY54 rho : F)⟩
        ⟨(rho 2907 : F), (rho 2908 : F)⟩ := by
  obtain ⟨r3402, r3403, r3404, r3405, r3406, r3407, r3408, r3409, r3410, r3411, r3412, r3413, r3414⟩ := dtk_rows53 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3402 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc351 at r3402
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3402
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3403 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc352 at r3403
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3403
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3404 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc353 at r3404
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3404
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3405 at r3405
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3406 at r3406
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3407 at r3407
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3408 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc354 at r3408
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3408
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3409 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc355 at r3409
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3409
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3410 at r3410
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3411 at r3411
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3412 at r3412
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3413 at r3413
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3414 at r3414
  have hrung53 (bit : Bool) (hbit : rho 1036 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX53 rho : F), (dtkAccY53 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 2894 : F), (rho 2895 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX53 rho : F), (dtkAccY53 rho : F)⟩
        ⟨(rho 2894 : F), (rho 2895 : F)⟩
        ⟨(dtkAccX54 rho : F), (dtkAccY54 rho : F)⟩
        ⟨(rho 2907 : F), (rho 2908 : F)⟩ := by
    have hnextx : dtkAccX54 rho = dtkAccX53 rho + rho 2902 := by
      unfold dtkAccX54 dtkAccX53
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 52]
      ring
    have hnexty : dtkAccY54 rho = dtkAccY53 rho + rho 2903 := by
      unfold dtkAccY54 dtkAccY53
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 53]
      ring
    have ha0 : (rho 2894 + rho 2895) * (dtkAccX53 rho + dtkAccY53 rho) = rho 2896 := by
      unfold dtkAccX53 dtkAccY53
      linear_combination r3402
    have ha1 : rho 2895 * dtkAccX53 rho = rho 2897 := by
      unfold dtkAccX53
      linear_combination r3403
    have ha2 : rho 2894 * dtkAccY53 rho = rho 2898 := by
      unfold dtkAccY53
      linear_combination r3404
    have ha3 : 3021 * rho 2897 * rho 2898 = rho 2899 := by
      linear_combination r3405
    have ha4 : rho 2900 * (1 + rho 2899) = rho 2897 + rho 2898 := by
      linear_combination r3406
    have ha5 : rho 2901 * (1 - rho 2899) = rho 2896 - rho 2897 - rho 2898 := by
      linear_combination r3407
    have haddx :
        rho 2900 * (1 + 3021 * (rho 2895 * dtkAccX53 rho) * (rho 2894 * dtkAccY53 rho)) =
          rho 2895 * dtkAccX53 rho + rho 2894 * dtkAccY53 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 2901 * (1 - 3021 * (rho 2895 * dtkAccX53 rho) * (rho 2894 * dtkAccY53 rho)) =
          (-1) * (rho 2895 * dtkAccX53 rho) - rho 2894 * dtkAccY53 rho +
            (dtkAccY53 rho - dtkAccX53 rho * (-1)) * (rho 2894 + rho 2895) := by
      rw [ha1, ha2, ha3]
      calc
        rho 2901 * (1 - rho 2899) = rho 2896 - rho 2897 - rho 2898 := ha5
        _ = (-1) * rho 2897 - rho 2898 + (dtkAccY53 rho - dtkAccX53 rho * (-1)) * (rho 2894 + rho 2895) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX54 rho = dtkAccX53 rho - Bool.toZMod bit * (dtkAccX53 rho - rho 2900) := by
      have hd : rho 2902 = Bool.toZMod bit * (rho 2900 - dtkAccX53 rho) := by
        rw [← hbit]
        unfold dtkAccX53
        linear_combination -r3408
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY54 rho = dtkAccY53 rho - Bool.toZMod bit * (dtkAccY53 rho - rho 2901) := by
      have hd : rho 2903 = Bool.toZMod bit * (rho 2901 - dtkAccY53 rho) := by
        rw [← hbit]
        unfold dtkAccY53
        linear_combination -r3409
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 2894 * rho 2895 = rho 2904 := by linear_combination r3410
    have hd1 : rho 2894 * rho 2894 = rho 2905 := by linear_combination r3411
    have hd2 : rho 2895 * rho 2895 = rho 2906 := by linear_combination r3412
    have hd3 : rho 2907 * (rho 2895 * rho 2895 + rho 2894 * rho 2894 * (-1)) = 2 * (rho 2894 * rho 2895) := by
      rw [hd0, hd1, hd2]
      linear_combination r3413
    have hd4 : rho 2908 * (2 - (rho 2895 * rho 2895 + rho 2894 * rho 2894 * (-1))) = rho 2895 * rho 2895 - rho 2894 * rho 2894 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3414
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX53 rho : F), (dtkAccY53 rho : F)⟩
      ⟨(rho 2894 : F), (rho 2895 : F)⟩
      ⟨(rho 2900 : F), (rho 2901 : F)⟩
      ⟨(dtkAccX54 rho : F), (dtkAccY54 rho : F)⟩
      ⟨(rho 2907 : F), (rho 2908 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung53

theorem dtk_hstep_c8 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (983 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 48 ≤ i → i < 54 →
      EdwardsBridge.onCurve (dtkLadderAccState rho i) →
      EdwardsBridge.onCurve (dtkLadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (dtkLadderAccState rho i) (dtkLadderCurState rho i)
        (dtkLadderAccState rho (i + 1)) (dtkLadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact dtk_rung48 rho h bits[48]! (hbitAt 48 (by omega)) hacc hcur
  · exact dtk_rung49 rho h bits[49]! (hbitAt 49 (by omega)) hacc hcur
  · exact dtk_rung50 rho h bits[50]! (hbitAt 50 (by omega)) hacc hcur
  · exact dtk_rung51 rho h bits[51]! (hbitAt 51 (by omega)) hacc hcur
  · exact dtk_rung52 rho h bits[52]! (hbitAt 52 (by omega)) hacc hcur
  · exact dtk_rung53 rho h bits[53]! (hbitAt 53 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport
