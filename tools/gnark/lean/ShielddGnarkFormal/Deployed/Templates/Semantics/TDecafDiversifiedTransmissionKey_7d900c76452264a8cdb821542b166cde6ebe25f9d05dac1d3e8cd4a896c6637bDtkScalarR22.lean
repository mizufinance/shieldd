import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDtkScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs

theorem dtk_rows132 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4429 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4430 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4431 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4432 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4433 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4434 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4435 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4436 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4437 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4438 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4439 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4440 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4441 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p55, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart55 at p55
  rcases p55 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4429, r4430, r4431, r4432, r4433, r4434, r4435, r4436, r4437, r4438, r4439, r4440, r4441, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4429, r4430, r4431, r4432, r4433, r4434, r4435, r4436, r4437, r4438, r4439, r4440, r4441⟩

theorem dtk_rung132 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1115 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX132 rho : F), (dtkAccY132 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3921 : F), (rho 3922 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX132 rho : F), (dtkAccY132 rho : F)⟩
        ⟨(rho 3921 : F), (rho 3922 : F)⟩
        ⟨(dtkAccX133 rho : F), (dtkAccY133 rho : F)⟩
        ⟨(rho 3934 : F), (rho 3935 : F)⟩ := by
  obtain ⟨r4429, r4430, r4431, r4432, r4433, r4434, r4435, r4436, r4437, r4438, r4439, r4440, r4441⟩ := dtk_rows132 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4429 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc746 at r4429
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4429
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4430 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc747 at r4430
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4430
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4431 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc748 at r4431
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4431
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4432 at r4432
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4433 at r4433
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4434 at r4434
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4435 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc749 at r4435
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4435
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4436 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc750 at r4436
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4436
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4437 at r4437
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4438 at r4438
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4439 at r4439
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4440 at r4440
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4441 at r4441
  have hrung132 (bit : Bool) (hbit : rho 1115 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX132 rho : F), (dtkAccY132 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3921 : F), (rho 3922 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX132 rho : F), (dtkAccY132 rho : F)⟩
        ⟨(rho 3921 : F), (rho 3922 : F)⟩
        ⟨(dtkAccX133 rho : F), (dtkAccY133 rho : F)⟩
        ⟨(rho 3934 : F), (rho 3935 : F)⟩ := by
    have hnextx : dtkAccX133 rho = dtkAccX132 rho + rho 3929 := by
      unfold dtkAccX133 dtkAccX132
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 131]
      ring
    have hnexty : dtkAccY133 rho = dtkAccY132 rho + rho 3930 := by
      unfold dtkAccY133 dtkAccY132
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 132]
      ring
    have ha0 : (rho 3921 + rho 3922) * (dtkAccX132 rho + dtkAccY132 rho) = rho 3923 := by
      unfold dtkAccX132 dtkAccY132
      linear_combination r4429
    have ha1 : rho 3922 * dtkAccX132 rho = rho 3924 := by
      unfold dtkAccX132
      linear_combination r4430
    have ha2 : rho 3921 * dtkAccY132 rho = rho 3925 := by
      unfold dtkAccY132
      linear_combination r4431
    have ha3 : 3021 * rho 3924 * rho 3925 = rho 3926 := by
      linear_combination r4432
    have ha4 : rho 3927 * (1 + rho 3926) = rho 3924 + rho 3925 := by
      linear_combination r4433
    have ha5 : rho 3928 * (1 - rho 3926) = rho 3923 - rho 3924 - rho 3925 := by
      linear_combination r4434
    have haddx :
        rho 3927 * (1 + 3021 * (rho 3922 * dtkAccX132 rho) * (rho 3921 * dtkAccY132 rho)) =
          rho 3922 * dtkAccX132 rho + rho 3921 * dtkAccY132 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3928 * (1 - 3021 * (rho 3922 * dtkAccX132 rho) * (rho 3921 * dtkAccY132 rho)) =
          (-1) * (rho 3922 * dtkAccX132 rho) - rho 3921 * dtkAccY132 rho +
            (dtkAccY132 rho - dtkAccX132 rho * (-1)) * (rho 3921 + rho 3922) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3928 * (1 - rho 3926) = rho 3923 - rho 3924 - rho 3925 := ha5
        _ = (-1) * rho 3924 - rho 3925 + (dtkAccY132 rho - dtkAccX132 rho * (-1)) * (rho 3921 + rho 3922) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX133 rho = dtkAccX132 rho - Bool.toZMod bit * (dtkAccX132 rho - rho 3927) := by
      have hd : rho 3929 = Bool.toZMod bit * (rho 3927 - dtkAccX132 rho) := by
        rw [← hbit]
        unfold dtkAccX132
        linear_combination -r4435
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY133 rho = dtkAccY132 rho - Bool.toZMod bit * (dtkAccY132 rho - rho 3928) := by
      have hd : rho 3930 = Bool.toZMod bit * (rho 3928 - dtkAccY132 rho) := by
        rw [← hbit]
        unfold dtkAccY132
        linear_combination -r4436
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3921 * rho 3922 = rho 3931 := by linear_combination r4437
    have hd1 : rho 3921 * rho 3921 = rho 3932 := by linear_combination r4438
    have hd2 : rho 3922 * rho 3922 = rho 3933 := by linear_combination r4439
    have hd3 : rho 3934 * (rho 3922 * rho 3922 + rho 3921 * rho 3921 * (-1)) = 2 * (rho 3921 * rho 3922) := by
      rw [hd0, hd1, hd2]
      linear_combination r4440
    have hd4 : rho 3935 * (2 - (rho 3922 * rho 3922 + rho 3921 * rho 3921 * (-1))) = rho 3922 * rho 3922 - rho 3921 * rho 3921 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4441
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX132 rho : F), (dtkAccY132 rho : F)⟩
      ⟨(rho 3921 : F), (rho 3922 : F)⟩
      ⟨(rho 3927 : F), (rho 3928 : F)⟩
      ⟨(dtkAccX133 rho : F), (dtkAccY133 rho : F)⟩
      ⟨(rho 3934 : F), (rho 3935 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung132

theorem dtk_rows133 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4442 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4443 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4444 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4445 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4446 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4447 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4448 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4449 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4450 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4451 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4452 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4453 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4454 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p55, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart55 at p55
  rcases p55 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4442, r4443, r4444, r4445, r4446, r4447, r4448, r4449, r4450, r4451, r4452, r4453, r4454, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4442, r4443, r4444, r4445, r4446, r4447, r4448, r4449, r4450, r4451, r4452, r4453, r4454⟩

theorem dtk_rung133 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1116 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX133 rho : F), (dtkAccY133 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3934 : F), (rho 3935 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX133 rho : F), (dtkAccY133 rho : F)⟩
        ⟨(rho 3934 : F), (rho 3935 : F)⟩
        ⟨(dtkAccX134 rho : F), (dtkAccY134 rho : F)⟩
        ⟨(rho 3947 : F), (rho 3948 : F)⟩ := by
  obtain ⟨r4442, r4443, r4444, r4445, r4446, r4447, r4448, r4449, r4450, r4451, r4452, r4453, r4454⟩ := dtk_rows133 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4442 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc751 at r4442
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4442
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4443 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc752 at r4443
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4443
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4444 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc753 at r4444
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4444
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4445 at r4445
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4446 at r4446
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4447 at r4447
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4448 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc754 at r4448
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4448
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4449 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc755 at r4449
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4449
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4450 at r4450
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4451 at r4451
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4452 at r4452
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4453 at r4453
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4454 at r4454
  have hrung133 (bit : Bool) (hbit : rho 1116 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX133 rho : F), (dtkAccY133 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3934 : F), (rho 3935 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX133 rho : F), (dtkAccY133 rho : F)⟩
        ⟨(rho 3934 : F), (rho 3935 : F)⟩
        ⟨(dtkAccX134 rho : F), (dtkAccY134 rho : F)⟩
        ⟨(rho 3947 : F), (rho 3948 : F)⟩ := by
    have hnextx : dtkAccX134 rho = dtkAccX133 rho + rho 3942 := by
      unfold dtkAccX134 dtkAccX133
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 132]
      ring
    have hnexty : dtkAccY134 rho = dtkAccY133 rho + rho 3943 := by
      unfold dtkAccY134 dtkAccY133
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 133]
      ring
    have ha0 : (rho 3934 + rho 3935) * (dtkAccX133 rho + dtkAccY133 rho) = rho 3936 := by
      unfold dtkAccX133 dtkAccY133
      linear_combination r4442
    have ha1 : rho 3935 * dtkAccX133 rho = rho 3937 := by
      unfold dtkAccX133
      linear_combination r4443
    have ha2 : rho 3934 * dtkAccY133 rho = rho 3938 := by
      unfold dtkAccY133
      linear_combination r4444
    have ha3 : 3021 * rho 3937 * rho 3938 = rho 3939 := by
      linear_combination r4445
    have ha4 : rho 3940 * (1 + rho 3939) = rho 3937 + rho 3938 := by
      linear_combination r4446
    have ha5 : rho 3941 * (1 - rho 3939) = rho 3936 - rho 3937 - rho 3938 := by
      linear_combination r4447
    have haddx :
        rho 3940 * (1 + 3021 * (rho 3935 * dtkAccX133 rho) * (rho 3934 * dtkAccY133 rho)) =
          rho 3935 * dtkAccX133 rho + rho 3934 * dtkAccY133 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3941 * (1 - 3021 * (rho 3935 * dtkAccX133 rho) * (rho 3934 * dtkAccY133 rho)) =
          (-1) * (rho 3935 * dtkAccX133 rho) - rho 3934 * dtkAccY133 rho +
            (dtkAccY133 rho - dtkAccX133 rho * (-1)) * (rho 3934 + rho 3935) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3941 * (1 - rho 3939) = rho 3936 - rho 3937 - rho 3938 := ha5
        _ = (-1) * rho 3937 - rho 3938 + (dtkAccY133 rho - dtkAccX133 rho * (-1)) * (rho 3934 + rho 3935) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX134 rho = dtkAccX133 rho - Bool.toZMod bit * (dtkAccX133 rho - rho 3940) := by
      have hd : rho 3942 = Bool.toZMod bit * (rho 3940 - dtkAccX133 rho) := by
        rw [← hbit]
        unfold dtkAccX133
        linear_combination -r4448
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY134 rho = dtkAccY133 rho - Bool.toZMod bit * (dtkAccY133 rho - rho 3941) := by
      have hd : rho 3943 = Bool.toZMod bit * (rho 3941 - dtkAccY133 rho) := by
        rw [← hbit]
        unfold dtkAccY133
        linear_combination -r4449
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3934 * rho 3935 = rho 3944 := by linear_combination r4450
    have hd1 : rho 3934 * rho 3934 = rho 3945 := by linear_combination r4451
    have hd2 : rho 3935 * rho 3935 = rho 3946 := by linear_combination r4452
    have hd3 : rho 3947 * (rho 3935 * rho 3935 + rho 3934 * rho 3934 * (-1)) = 2 * (rho 3934 * rho 3935) := by
      rw [hd0, hd1, hd2]
      linear_combination r4453
    have hd4 : rho 3948 * (2 - (rho 3935 * rho 3935 + rho 3934 * rho 3934 * (-1))) = rho 3935 * rho 3935 - rho 3934 * rho 3934 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4454
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX133 rho : F), (dtkAccY133 rho : F)⟩
      ⟨(rho 3934 : F), (rho 3935 : F)⟩
      ⟨(rho 3940 : F), (rho 3941 : F)⟩
      ⟨(dtkAccX134 rho : F), (dtkAccY134 rho : F)⟩
      ⟨(rho 3947 : F), (rho 3948 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung133

theorem dtk_rows134 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4455 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4456 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4457 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4458 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4459 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4460 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4461 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4462 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4463 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4464 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4465 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4466 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4467 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p55, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart55 at p55
  rcases p55 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4455, r4456, r4457, r4458, r4459, r4460, r4461, r4462, r4463, r4464, r4465, r4466, r4467, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4455, r4456, r4457, r4458, r4459, r4460, r4461, r4462, r4463, r4464, r4465, r4466, r4467⟩

theorem dtk_rung134 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1117 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX134 rho : F), (dtkAccY134 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3947 : F), (rho 3948 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX134 rho : F), (dtkAccY134 rho : F)⟩
        ⟨(rho 3947 : F), (rho 3948 : F)⟩
        ⟨(dtkAccX135 rho : F), (dtkAccY135 rho : F)⟩
        ⟨(rho 3960 : F), (rho 3961 : F)⟩ := by
  obtain ⟨r4455, r4456, r4457, r4458, r4459, r4460, r4461, r4462, r4463, r4464, r4465, r4466, r4467⟩ := dtk_rows134 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4455 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc756 at r4455
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4455
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4456 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc757 at r4456
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4456
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4457 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc758 at r4457
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4457
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4458 at r4458
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4459 at r4459
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4460 at r4460
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4461 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc759 at r4461
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4461
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4462 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc760 at r4462
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4462
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4463 at r4463
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4464 at r4464
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4465 at r4465
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4466 at r4466
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4467 at r4467
  have hrung134 (bit : Bool) (hbit : rho 1117 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX134 rho : F), (dtkAccY134 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3947 : F), (rho 3948 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX134 rho : F), (dtkAccY134 rho : F)⟩
        ⟨(rho 3947 : F), (rho 3948 : F)⟩
        ⟨(dtkAccX135 rho : F), (dtkAccY135 rho : F)⟩
        ⟨(rho 3960 : F), (rho 3961 : F)⟩ := by
    have hnextx : dtkAccX135 rho = dtkAccX134 rho + rho 3955 := by
      unfold dtkAccX135 dtkAccX134
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 133]
      ring
    have hnexty : dtkAccY135 rho = dtkAccY134 rho + rho 3956 := by
      unfold dtkAccY135 dtkAccY134
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 134]
      ring
    have ha0 : (rho 3947 + rho 3948) * (dtkAccX134 rho + dtkAccY134 rho) = rho 3949 := by
      unfold dtkAccX134 dtkAccY134
      linear_combination r4455
    have ha1 : rho 3948 * dtkAccX134 rho = rho 3950 := by
      unfold dtkAccX134
      linear_combination r4456
    have ha2 : rho 3947 * dtkAccY134 rho = rho 3951 := by
      unfold dtkAccY134
      linear_combination r4457
    have ha3 : 3021 * rho 3950 * rho 3951 = rho 3952 := by
      linear_combination r4458
    have ha4 : rho 3953 * (1 + rho 3952) = rho 3950 + rho 3951 := by
      linear_combination r4459
    have ha5 : rho 3954 * (1 - rho 3952) = rho 3949 - rho 3950 - rho 3951 := by
      linear_combination r4460
    have haddx :
        rho 3953 * (1 + 3021 * (rho 3948 * dtkAccX134 rho) * (rho 3947 * dtkAccY134 rho)) =
          rho 3948 * dtkAccX134 rho + rho 3947 * dtkAccY134 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3954 * (1 - 3021 * (rho 3948 * dtkAccX134 rho) * (rho 3947 * dtkAccY134 rho)) =
          (-1) * (rho 3948 * dtkAccX134 rho) - rho 3947 * dtkAccY134 rho +
            (dtkAccY134 rho - dtkAccX134 rho * (-1)) * (rho 3947 + rho 3948) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3954 * (1 - rho 3952) = rho 3949 - rho 3950 - rho 3951 := ha5
        _ = (-1) * rho 3950 - rho 3951 + (dtkAccY134 rho - dtkAccX134 rho * (-1)) * (rho 3947 + rho 3948) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX135 rho = dtkAccX134 rho - Bool.toZMod bit * (dtkAccX134 rho - rho 3953) := by
      have hd : rho 3955 = Bool.toZMod bit * (rho 3953 - dtkAccX134 rho) := by
        rw [← hbit]
        unfold dtkAccX134
        linear_combination -r4461
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY135 rho = dtkAccY134 rho - Bool.toZMod bit * (dtkAccY134 rho - rho 3954) := by
      have hd : rho 3956 = Bool.toZMod bit * (rho 3954 - dtkAccY134 rho) := by
        rw [← hbit]
        unfold dtkAccY134
        linear_combination -r4462
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3947 * rho 3948 = rho 3957 := by linear_combination r4463
    have hd1 : rho 3947 * rho 3947 = rho 3958 := by linear_combination r4464
    have hd2 : rho 3948 * rho 3948 = rho 3959 := by linear_combination r4465
    have hd3 : rho 3960 * (rho 3948 * rho 3948 + rho 3947 * rho 3947 * (-1)) = 2 * (rho 3947 * rho 3948) := by
      rw [hd0, hd1, hd2]
      linear_combination r4466
    have hd4 : rho 3961 * (2 - (rho 3948 * rho 3948 + rho 3947 * rho 3947 * (-1))) = rho 3948 * rho 3948 - rho 3947 * rho 3947 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4467
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX134 rho : F), (dtkAccY134 rho : F)⟩
      ⟨(rho 3947 : F), (rho 3948 : F)⟩
      ⟨(rho 3953 : F), (rho 3954 : F)⟩
      ⟨(dtkAccX135 rho : F), (dtkAccY135 rho : F)⟩
      ⟨(rho 3960 : F), (rho 3961 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung134

theorem dtk_rows135 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4468 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4469 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4470 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4471 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4472 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4473 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4474 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4475 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4476 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4477 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4478 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4479 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4480 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p55, p56, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart55 at p55
  rcases p55 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4468, r4469, r4470, r4471, r4472, r4473, r4474, r4475, r4476, r4477, r4478, r4479⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart56 at p56
  rcases p56 with ⟨r4480, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4468, r4469, r4470, r4471, r4472, r4473, r4474, r4475, r4476, r4477, r4478, r4479, r4480⟩

theorem dtk_rung135 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1118 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX135 rho : F), (dtkAccY135 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3960 : F), (rho 3961 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX135 rho : F), (dtkAccY135 rho : F)⟩
        ⟨(rho 3960 : F), (rho 3961 : F)⟩
        ⟨(dtkAccX136 rho : F), (dtkAccY136 rho : F)⟩
        ⟨(rho 3973 : F), (rho 3974 : F)⟩ := by
  obtain ⟨r4468, r4469, r4470, r4471, r4472, r4473, r4474, r4475, r4476, r4477, r4478, r4479, r4480⟩ := dtk_rows135 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4468 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc761 at r4468
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4468
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4469 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc762 at r4469
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4469
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4470 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc763 at r4470
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4470
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4471 at r4471
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4472 at r4472
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4473 at r4473
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4474 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc764 at r4474
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4474
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4475 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc765 at r4475
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4475
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4476 at r4476
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4477 at r4477
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4478 at r4478
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4479 at r4479
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4480 at r4480
  have hrung135 (bit : Bool) (hbit : rho 1118 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX135 rho : F), (dtkAccY135 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3960 : F), (rho 3961 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX135 rho : F), (dtkAccY135 rho : F)⟩
        ⟨(rho 3960 : F), (rho 3961 : F)⟩
        ⟨(dtkAccX136 rho : F), (dtkAccY136 rho : F)⟩
        ⟨(rho 3973 : F), (rho 3974 : F)⟩ := by
    have hnextx : dtkAccX136 rho = dtkAccX135 rho + rho 3968 := by
      unfold dtkAccX136 dtkAccX135
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 134]
      ring
    have hnexty : dtkAccY136 rho = dtkAccY135 rho + rho 3969 := by
      unfold dtkAccY136 dtkAccY135
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 135]
      ring
    have ha0 : (rho 3960 + rho 3961) * (dtkAccX135 rho + dtkAccY135 rho) = rho 3962 := by
      unfold dtkAccX135 dtkAccY135
      linear_combination r4468
    have ha1 : rho 3961 * dtkAccX135 rho = rho 3963 := by
      unfold dtkAccX135
      linear_combination r4469
    have ha2 : rho 3960 * dtkAccY135 rho = rho 3964 := by
      unfold dtkAccY135
      linear_combination r4470
    have ha3 : 3021 * rho 3963 * rho 3964 = rho 3965 := by
      linear_combination r4471
    have ha4 : rho 3966 * (1 + rho 3965) = rho 3963 + rho 3964 := by
      linear_combination r4472
    have ha5 : rho 3967 * (1 - rho 3965) = rho 3962 - rho 3963 - rho 3964 := by
      linear_combination r4473
    have haddx :
        rho 3966 * (1 + 3021 * (rho 3961 * dtkAccX135 rho) * (rho 3960 * dtkAccY135 rho)) =
          rho 3961 * dtkAccX135 rho + rho 3960 * dtkAccY135 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3967 * (1 - 3021 * (rho 3961 * dtkAccX135 rho) * (rho 3960 * dtkAccY135 rho)) =
          (-1) * (rho 3961 * dtkAccX135 rho) - rho 3960 * dtkAccY135 rho +
            (dtkAccY135 rho - dtkAccX135 rho * (-1)) * (rho 3960 + rho 3961) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3967 * (1 - rho 3965) = rho 3962 - rho 3963 - rho 3964 := ha5
        _ = (-1) * rho 3963 - rho 3964 + (dtkAccY135 rho - dtkAccX135 rho * (-1)) * (rho 3960 + rho 3961) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX136 rho = dtkAccX135 rho - Bool.toZMod bit * (dtkAccX135 rho - rho 3966) := by
      have hd : rho 3968 = Bool.toZMod bit * (rho 3966 - dtkAccX135 rho) := by
        rw [← hbit]
        unfold dtkAccX135
        linear_combination -r4474
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY136 rho = dtkAccY135 rho - Bool.toZMod bit * (dtkAccY135 rho - rho 3967) := by
      have hd : rho 3969 = Bool.toZMod bit * (rho 3967 - dtkAccY135 rho) := by
        rw [← hbit]
        unfold dtkAccY135
        linear_combination -r4475
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3960 * rho 3961 = rho 3970 := by linear_combination r4476
    have hd1 : rho 3960 * rho 3960 = rho 3971 := by linear_combination r4477
    have hd2 : rho 3961 * rho 3961 = rho 3972 := by linear_combination r4478
    have hd3 : rho 3973 * (rho 3961 * rho 3961 + rho 3960 * rho 3960 * (-1)) = 2 * (rho 3960 * rho 3961) := by
      rw [hd0, hd1, hd2]
      linear_combination r4479
    have hd4 : rho 3974 * (2 - (rho 3961 * rho 3961 + rho 3960 * rho 3960 * (-1))) = rho 3961 * rho 3961 - rho 3960 * rho 3960 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4480
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX135 rho : F), (dtkAccY135 rho : F)⟩
      ⟨(rho 3960 : F), (rho 3961 : F)⟩
      ⟨(rho 3966 : F), (rho 3967 : F)⟩
      ⟨(dtkAccX136 rho : F), (dtkAccY136 rho : F)⟩
      ⟨(rho 3973 : F), (rho 3974 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung135

theorem dtk_rows136 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4481 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4482 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4483 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4484 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4485 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4486 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4487 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4488 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4489 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4490 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4491 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4492 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4493 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p56, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart56 at p56
  rcases p56 with ⟨_, r4481, r4482, r4483, r4484, r4485, r4486, r4487, r4488, r4489, r4490, r4491, r4492, r4493, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4481, r4482, r4483, r4484, r4485, r4486, r4487, r4488, r4489, r4490, r4491, r4492, r4493⟩

theorem dtk_rung136 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1119 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX136 rho : F), (dtkAccY136 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3973 : F), (rho 3974 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX136 rho : F), (dtkAccY136 rho : F)⟩
        ⟨(rho 3973 : F), (rho 3974 : F)⟩
        ⟨(dtkAccX137 rho : F), (dtkAccY137 rho : F)⟩
        ⟨(rho 3986 : F), (rho 3987 : F)⟩ := by
  obtain ⟨r4481, r4482, r4483, r4484, r4485, r4486, r4487, r4488, r4489, r4490, r4491, r4492, r4493⟩ := dtk_rows136 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4481 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc766 at r4481
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4481
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4482 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc767 at r4482
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4482
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4483 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc768 at r4483
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4483
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4484 at r4484
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4485 at r4485
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4486 at r4486
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4487 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc769 at r4487
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4487
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4488 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc770 at r4488
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4488
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4489 at r4489
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4490 at r4490
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4491 at r4491
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4492 at r4492
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4493 at r4493
  have hrung136 (bit : Bool) (hbit : rho 1119 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX136 rho : F), (dtkAccY136 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3973 : F), (rho 3974 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX136 rho : F), (dtkAccY136 rho : F)⟩
        ⟨(rho 3973 : F), (rho 3974 : F)⟩
        ⟨(dtkAccX137 rho : F), (dtkAccY137 rho : F)⟩
        ⟨(rho 3986 : F), (rho 3987 : F)⟩ := by
    have hnextx : dtkAccX137 rho = dtkAccX136 rho + rho 3981 := by
      unfold dtkAccX137 dtkAccX136
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 135]
      ring
    have hnexty : dtkAccY137 rho = dtkAccY136 rho + rho 3982 := by
      unfold dtkAccY137 dtkAccY136
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 136]
      ring
    have ha0 : (rho 3973 + rho 3974) * (dtkAccX136 rho + dtkAccY136 rho) = rho 3975 := by
      unfold dtkAccX136 dtkAccY136
      linear_combination r4481
    have ha1 : rho 3974 * dtkAccX136 rho = rho 3976 := by
      unfold dtkAccX136
      linear_combination r4482
    have ha2 : rho 3973 * dtkAccY136 rho = rho 3977 := by
      unfold dtkAccY136
      linear_combination r4483
    have ha3 : 3021 * rho 3976 * rho 3977 = rho 3978 := by
      linear_combination r4484
    have ha4 : rho 3979 * (1 + rho 3978) = rho 3976 + rho 3977 := by
      linear_combination r4485
    have ha5 : rho 3980 * (1 - rho 3978) = rho 3975 - rho 3976 - rho 3977 := by
      linear_combination r4486
    have haddx :
        rho 3979 * (1 + 3021 * (rho 3974 * dtkAccX136 rho) * (rho 3973 * dtkAccY136 rho)) =
          rho 3974 * dtkAccX136 rho + rho 3973 * dtkAccY136 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3980 * (1 - 3021 * (rho 3974 * dtkAccX136 rho) * (rho 3973 * dtkAccY136 rho)) =
          (-1) * (rho 3974 * dtkAccX136 rho) - rho 3973 * dtkAccY136 rho +
            (dtkAccY136 rho - dtkAccX136 rho * (-1)) * (rho 3973 + rho 3974) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3980 * (1 - rho 3978) = rho 3975 - rho 3976 - rho 3977 := ha5
        _ = (-1) * rho 3976 - rho 3977 + (dtkAccY136 rho - dtkAccX136 rho * (-1)) * (rho 3973 + rho 3974) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX137 rho = dtkAccX136 rho - Bool.toZMod bit * (dtkAccX136 rho - rho 3979) := by
      have hd : rho 3981 = Bool.toZMod bit * (rho 3979 - dtkAccX136 rho) := by
        rw [← hbit]
        unfold dtkAccX136
        linear_combination -r4487
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY137 rho = dtkAccY136 rho - Bool.toZMod bit * (dtkAccY136 rho - rho 3980) := by
      have hd : rho 3982 = Bool.toZMod bit * (rho 3980 - dtkAccY136 rho) := by
        rw [← hbit]
        unfold dtkAccY136
        linear_combination -r4488
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3973 * rho 3974 = rho 3983 := by linear_combination r4489
    have hd1 : rho 3973 * rho 3973 = rho 3984 := by linear_combination r4490
    have hd2 : rho 3974 * rho 3974 = rho 3985 := by linear_combination r4491
    have hd3 : rho 3986 * (rho 3974 * rho 3974 + rho 3973 * rho 3973 * (-1)) = 2 * (rho 3973 * rho 3974) := by
      rw [hd0, hd1, hd2]
      linear_combination r4492
    have hd4 : rho 3987 * (2 - (rho 3974 * rho 3974 + rho 3973 * rho 3973 * (-1))) = rho 3974 * rho 3974 - rho 3973 * rho 3973 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4493
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX136 rho : F), (dtkAccY136 rho : F)⟩
      ⟨(rho 3973 : F), (rho 3974 : F)⟩
      ⟨(rho 3979 : F), (rho 3980 : F)⟩
      ⟨(dtkAccX137 rho : F), (dtkAccY137 rho : F)⟩
      ⟨(rho 3986 : F), (rho 3987 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung136

theorem dtk_rows137 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4494 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4495 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4496 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4497 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4498 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4499 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4500 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4501 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4502 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4503 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4504 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4505 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4506 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p56, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart56 at p56
  rcases p56 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, r4494, r4495, r4496, r4497, r4498, r4499, r4500, r4501, r4502, r4503, r4504, r4505, r4506, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4494, r4495, r4496, r4497, r4498, r4499, r4500, r4501, r4502, r4503, r4504, r4505, r4506⟩

theorem dtk_rung137 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1120 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX137 rho : F), (dtkAccY137 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3986 : F), (rho 3987 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX137 rho : F), (dtkAccY137 rho : F)⟩
        ⟨(rho 3986 : F), (rho 3987 : F)⟩
        ⟨(dtkAccX138 rho : F), (dtkAccY138 rho : F)⟩
        ⟨(rho 3999 : F), (rho 4000 : F)⟩ := by
  obtain ⟨r4494, r4495, r4496, r4497, r4498, r4499, r4500, r4501, r4502, r4503, r4504, r4505, r4506⟩ := dtk_rows137 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4494 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc771 at r4494
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4494
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4495 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc772 at r4495
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4495
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4496 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc773 at r4496
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4496
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4497 at r4497
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4498 at r4498
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4499 at r4499
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4500 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc774 at r4500
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4500
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4501 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc775 at r4501
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4501
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4502 at r4502
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4503 at r4503
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4504 at r4504
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4505 at r4505
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4506 at r4506
  have hrung137 (bit : Bool) (hbit : rho 1120 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX137 rho : F), (dtkAccY137 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3986 : F), (rho 3987 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX137 rho : F), (dtkAccY137 rho : F)⟩
        ⟨(rho 3986 : F), (rho 3987 : F)⟩
        ⟨(dtkAccX138 rho : F), (dtkAccY138 rho : F)⟩
        ⟨(rho 3999 : F), (rho 4000 : F)⟩ := by
    have hnextx : dtkAccX138 rho = dtkAccX137 rho + rho 3994 := by
      unfold dtkAccX138 dtkAccX137
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 136]
      ring
    have hnexty : dtkAccY138 rho = dtkAccY137 rho + rho 3995 := by
      unfold dtkAccY138 dtkAccY137
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 137]
      ring
    have ha0 : (rho 3986 + rho 3987) * (dtkAccX137 rho + dtkAccY137 rho) = rho 3988 := by
      unfold dtkAccX137 dtkAccY137
      linear_combination r4494
    have ha1 : rho 3987 * dtkAccX137 rho = rho 3989 := by
      unfold dtkAccX137
      linear_combination r4495
    have ha2 : rho 3986 * dtkAccY137 rho = rho 3990 := by
      unfold dtkAccY137
      linear_combination r4496
    have ha3 : 3021 * rho 3989 * rho 3990 = rho 3991 := by
      linear_combination r4497
    have ha4 : rho 3992 * (1 + rho 3991) = rho 3989 + rho 3990 := by
      linear_combination r4498
    have ha5 : rho 3993 * (1 - rho 3991) = rho 3988 - rho 3989 - rho 3990 := by
      linear_combination r4499
    have haddx :
        rho 3992 * (1 + 3021 * (rho 3987 * dtkAccX137 rho) * (rho 3986 * dtkAccY137 rho)) =
          rho 3987 * dtkAccX137 rho + rho 3986 * dtkAccY137 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3993 * (1 - 3021 * (rho 3987 * dtkAccX137 rho) * (rho 3986 * dtkAccY137 rho)) =
          (-1) * (rho 3987 * dtkAccX137 rho) - rho 3986 * dtkAccY137 rho +
            (dtkAccY137 rho - dtkAccX137 rho * (-1)) * (rho 3986 + rho 3987) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3993 * (1 - rho 3991) = rho 3988 - rho 3989 - rho 3990 := ha5
        _ = (-1) * rho 3989 - rho 3990 + (dtkAccY137 rho - dtkAccX137 rho * (-1)) * (rho 3986 + rho 3987) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX138 rho = dtkAccX137 rho - Bool.toZMod bit * (dtkAccX137 rho - rho 3992) := by
      have hd : rho 3994 = Bool.toZMod bit * (rho 3992 - dtkAccX137 rho) := by
        rw [← hbit]
        unfold dtkAccX137
        linear_combination -r4500
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY138 rho = dtkAccY137 rho - Bool.toZMod bit * (dtkAccY137 rho - rho 3993) := by
      have hd : rho 3995 = Bool.toZMod bit * (rho 3993 - dtkAccY137 rho) := by
        rw [← hbit]
        unfold dtkAccY137
        linear_combination -r4501
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3986 * rho 3987 = rho 3996 := by linear_combination r4502
    have hd1 : rho 3986 * rho 3986 = rho 3997 := by linear_combination r4503
    have hd2 : rho 3987 * rho 3987 = rho 3998 := by linear_combination r4504
    have hd3 : rho 3999 * (rho 3987 * rho 3987 + rho 3986 * rho 3986 * (-1)) = 2 * (rho 3986 * rho 3987) := by
      rw [hd0, hd1, hd2]
      linear_combination r4505
    have hd4 : rho 4000 * (2 - (rho 3987 * rho 3987 + rho 3986 * rho 3986 * (-1))) = rho 3987 * rho 3987 - rho 3986 * rho 3986 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4506
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX137 rho : F), (dtkAccY137 rho : F)⟩
      ⟨(rho 3986 : F), (rho 3987 : F)⟩
      ⟨(rho 3992 : F), (rho 3993 : F)⟩
      ⟨(dtkAccX138 rho : F), (dtkAccY138 rho : F)⟩
      ⟨(rho 3999 : F), (rho 4000 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung137

theorem dtk_hstep_c22 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (983 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 132 ≤ i → i < 138 →
      EdwardsBridge.onCurve (dtkLadderAccState rho i) →
      EdwardsBridge.onCurve (dtkLadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (dtkLadderAccState rho i) (dtkLadderCurState rho i)
        (dtkLadderAccState rho (i + 1)) (dtkLadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact dtk_rung132 rho h bits[132]! (hbitAt 132 (by omega)) hacc hcur
  · exact dtk_rung133 rho h bits[133]! (hbitAt 133 (by omega)) hacc hcur
  · exact dtk_rung134 rho h bits[134]! (hbitAt 134 (by omega)) hacc hcur
  · exact dtk_rung135 rho h bits[135]! (hbitAt 135 (by omega)) hacc hcur
  · exact dtk_rung136 rho h bits[136]! (hbitAt 136 (by omega)) hacc hcur
  · exact dtk_rung137 rho h bits[137]! (hbitAt 137 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport
