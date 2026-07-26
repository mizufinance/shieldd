import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDtkScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs

theorem dtk_rows102 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4039 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4040 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4041 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4042 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4043 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4044 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4045 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4046 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4047 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4048 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4049 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4050 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4051 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p50, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart50 at p50
  rcases p50 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4039, r4040, r4041, r4042, r4043, r4044, r4045, r4046, r4047, r4048, r4049, r4050, r4051, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4039, r4040, r4041, r4042, r4043, r4044, r4045, r4046, r4047, r4048, r4049, r4050, r4051⟩

theorem dtk_rung102 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1085 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX102 rho : F), (dtkAccY102 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3531 : F), (rho 3532 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX102 rho : F), (dtkAccY102 rho : F)⟩
        ⟨(rho 3531 : F), (rho 3532 : F)⟩
        ⟨(dtkAccX103 rho : F), (dtkAccY103 rho : F)⟩
        ⟨(rho 3544 : F), (rho 3545 : F)⟩ := by
  obtain ⟨r4039, r4040, r4041, r4042, r4043, r4044, r4045, r4046, r4047, r4048, r4049, r4050, r4051⟩ := dtk_rows102 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4039 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc596 at r4039
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4039
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4040 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc597 at r4040
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4040
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4041 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc598 at r4041
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4041
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4042 at r4042
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4043 at r4043
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4044 at r4044
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4045 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc599 at r4045
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4045
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4046 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc600 at r4046
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4046
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4047 at r4047
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4048 at r4048
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4049 at r4049
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4050 at r4050
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4051 at r4051
  have hrung102 (bit : Bool) (hbit : rho 1085 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX102 rho : F), (dtkAccY102 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3531 : F), (rho 3532 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX102 rho : F), (dtkAccY102 rho : F)⟩
        ⟨(rho 3531 : F), (rho 3532 : F)⟩
        ⟨(dtkAccX103 rho : F), (dtkAccY103 rho : F)⟩
        ⟨(rho 3544 : F), (rho 3545 : F)⟩ := by
    have hnextx : dtkAccX103 rho = dtkAccX102 rho + rho 3539 := by
      unfold dtkAccX103 dtkAccX102
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 101]
      ring
    have hnexty : dtkAccY103 rho = dtkAccY102 rho + rho 3540 := by
      unfold dtkAccY103 dtkAccY102
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 102]
      ring
    have ha0 : (rho 3531 + rho 3532) * (dtkAccX102 rho + dtkAccY102 rho) = rho 3533 := by
      unfold dtkAccX102 dtkAccY102
      linear_combination r4039
    have ha1 : rho 3532 * dtkAccX102 rho = rho 3534 := by
      unfold dtkAccX102
      linear_combination r4040
    have ha2 : rho 3531 * dtkAccY102 rho = rho 3535 := by
      unfold dtkAccY102
      linear_combination r4041
    have ha3 : 3021 * rho 3534 * rho 3535 = rho 3536 := by
      linear_combination r4042
    have ha4 : rho 3537 * (1 + rho 3536) = rho 3534 + rho 3535 := by
      linear_combination r4043
    have ha5 : rho 3538 * (1 - rho 3536) = rho 3533 - rho 3534 - rho 3535 := by
      linear_combination r4044
    have haddx :
        rho 3537 * (1 + 3021 * (rho 3532 * dtkAccX102 rho) * (rho 3531 * dtkAccY102 rho)) =
          rho 3532 * dtkAccX102 rho + rho 3531 * dtkAccY102 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3538 * (1 - 3021 * (rho 3532 * dtkAccX102 rho) * (rho 3531 * dtkAccY102 rho)) =
          (-1) * (rho 3532 * dtkAccX102 rho) - rho 3531 * dtkAccY102 rho +
            (dtkAccY102 rho - dtkAccX102 rho * (-1)) * (rho 3531 + rho 3532) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3538 * (1 - rho 3536) = rho 3533 - rho 3534 - rho 3535 := ha5
        _ = (-1) * rho 3534 - rho 3535 + (dtkAccY102 rho - dtkAccX102 rho * (-1)) * (rho 3531 + rho 3532) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX103 rho = dtkAccX102 rho - Bool.toZMod bit * (dtkAccX102 rho - rho 3537) := by
      have hd : rho 3539 = Bool.toZMod bit * (rho 3537 - dtkAccX102 rho) := by
        rw [← hbit]
        unfold dtkAccX102
        linear_combination -r4045
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY103 rho = dtkAccY102 rho - Bool.toZMod bit * (dtkAccY102 rho - rho 3538) := by
      have hd : rho 3540 = Bool.toZMod bit * (rho 3538 - dtkAccY102 rho) := by
        rw [← hbit]
        unfold dtkAccY102
        linear_combination -r4046
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3531 * rho 3532 = rho 3541 := by linear_combination r4047
    have hd1 : rho 3531 * rho 3531 = rho 3542 := by linear_combination r4048
    have hd2 : rho 3532 * rho 3532 = rho 3543 := by linear_combination r4049
    have hd3 : rho 3544 * (rho 3532 * rho 3532 + rho 3531 * rho 3531 * (-1)) = 2 * (rho 3531 * rho 3532) := by
      rw [hd0, hd1, hd2]
      linear_combination r4050
    have hd4 : rho 3545 * (2 - (rho 3532 * rho 3532 + rho 3531 * rho 3531 * (-1))) = rho 3532 * rho 3532 - rho 3531 * rho 3531 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4051
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX102 rho : F), (dtkAccY102 rho : F)⟩
      ⟨(rho 3531 : F), (rho 3532 : F)⟩
      ⟨(rho 3537 : F), (rho 3538 : F)⟩
      ⟨(dtkAccX103 rho : F), (dtkAccY103 rho : F)⟩
      ⟨(rho 3544 : F), (rho 3545 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung102

theorem dtk_rows103 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4052 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4053 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4054 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4055 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4056 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4057 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4058 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4059 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4060 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4061 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4062 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4063 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4064 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p50, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart50 at p50
  rcases p50 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4052, r4053, r4054, r4055, r4056, r4057, r4058, r4059, r4060, r4061, r4062, r4063, r4064, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4052, r4053, r4054, r4055, r4056, r4057, r4058, r4059, r4060, r4061, r4062, r4063, r4064⟩

theorem dtk_rung103 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1086 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX103 rho : F), (dtkAccY103 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3544 : F), (rho 3545 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX103 rho : F), (dtkAccY103 rho : F)⟩
        ⟨(rho 3544 : F), (rho 3545 : F)⟩
        ⟨(dtkAccX104 rho : F), (dtkAccY104 rho : F)⟩
        ⟨(rho 3557 : F), (rho 3558 : F)⟩ := by
  obtain ⟨r4052, r4053, r4054, r4055, r4056, r4057, r4058, r4059, r4060, r4061, r4062, r4063, r4064⟩ := dtk_rows103 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4052 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc601 at r4052
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4052
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4053 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc602 at r4053
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4053
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4054 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc603 at r4054
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4054
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4055 at r4055
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4056 at r4056
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4057 at r4057
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4058 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc604 at r4058
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4058
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4059 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc605 at r4059
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4059
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4060 at r4060
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4061 at r4061
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4062 at r4062
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4063 at r4063
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4064 at r4064
  have hrung103 (bit : Bool) (hbit : rho 1086 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX103 rho : F), (dtkAccY103 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3544 : F), (rho 3545 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX103 rho : F), (dtkAccY103 rho : F)⟩
        ⟨(rho 3544 : F), (rho 3545 : F)⟩
        ⟨(dtkAccX104 rho : F), (dtkAccY104 rho : F)⟩
        ⟨(rho 3557 : F), (rho 3558 : F)⟩ := by
    have hnextx : dtkAccX104 rho = dtkAccX103 rho + rho 3552 := by
      unfold dtkAccX104 dtkAccX103
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 102]
      ring
    have hnexty : dtkAccY104 rho = dtkAccY103 rho + rho 3553 := by
      unfold dtkAccY104 dtkAccY103
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 103]
      ring
    have ha0 : (rho 3544 + rho 3545) * (dtkAccX103 rho + dtkAccY103 rho) = rho 3546 := by
      unfold dtkAccX103 dtkAccY103
      linear_combination r4052
    have ha1 : rho 3545 * dtkAccX103 rho = rho 3547 := by
      unfold dtkAccX103
      linear_combination r4053
    have ha2 : rho 3544 * dtkAccY103 rho = rho 3548 := by
      unfold dtkAccY103
      linear_combination r4054
    have ha3 : 3021 * rho 3547 * rho 3548 = rho 3549 := by
      linear_combination r4055
    have ha4 : rho 3550 * (1 + rho 3549) = rho 3547 + rho 3548 := by
      linear_combination r4056
    have ha5 : rho 3551 * (1 - rho 3549) = rho 3546 - rho 3547 - rho 3548 := by
      linear_combination r4057
    have haddx :
        rho 3550 * (1 + 3021 * (rho 3545 * dtkAccX103 rho) * (rho 3544 * dtkAccY103 rho)) =
          rho 3545 * dtkAccX103 rho + rho 3544 * dtkAccY103 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3551 * (1 - 3021 * (rho 3545 * dtkAccX103 rho) * (rho 3544 * dtkAccY103 rho)) =
          (-1) * (rho 3545 * dtkAccX103 rho) - rho 3544 * dtkAccY103 rho +
            (dtkAccY103 rho - dtkAccX103 rho * (-1)) * (rho 3544 + rho 3545) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3551 * (1 - rho 3549) = rho 3546 - rho 3547 - rho 3548 := ha5
        _ = (-1) * rho 3547 - rho 3548 + (dtkAccY103 rho - dtkAccX103 rho * (-1)) * (rho 3544 + rho 3545) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX104 rho = dtkAccX103 rho - Bool.toZMod bit * (dtkAccX103 rho - rho 3550) := by
      have hd : rho 3552 = Bool.toZMod bit * (rho 3550 - dtkAccX103 rho) := by
        rw [← hbit]
        unfold dtkAccX103
        linear_combination -r4058
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY104 rho = dtkAccY103 rho - Bool.toZMod bit * (dtkAccY103 rho - rho 3551) := by
      have hd : rho 3553 = Bool.toZMod bit * (rho 3551 - dtkAccY103 rho) := by
        rw [← hbit]
        unfold dtkAccY103
        linear_combination -r4059
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3544 * rho 3545 = rho 3554 := by linear_combination r4060
    have hd1 : rho 3544 * rho 3544 = rho 3555 := by linear_combination r4061
    have hd2 : rho 3545 * rho 3545 = rho 3556 := by linear_combination r4062
    have hd3 : rho 3557 * (rho 3545 * rho 3545 + rho 3544 * rho 3544 * (-1)) = 2 * (rho 3544 * rho 3545) := by
      rw [hd0, hd1, hd2]
      linear_combination r4063
    have hd4 : rho 3558 * (2 - (rho 3545 * rho 3545 + rho 3544 * rho 3544 * (-1))) = rho 3545 * rho 3545 - rho 3544 * rho 3544 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4064
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX103 rho : F), (dtkAccY103 rho : F)⟩
      ⟨(rho 3544 : F), (rho 3545 : F)⟩
      ⟨(rho 3550 : F), (rho 3551 : F)⟩
      ⟨(dtkAccX104 rho : F), (dtkAccY104 rho : F)⟩
      ⟨(rho 3557 : F), (rho 3558 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung103

theorem dtk_rows104 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4065 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4066 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4067 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4068 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4069 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4070 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4071 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4072 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4073 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4074 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4075 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4076 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4077 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p50, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart50 at p50
  rcases p50 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4065, r4066, r4067, r4068, r4069, r4070, r4071, r4072, r4073, r4074, r4075, r4076, r4077, _, _⟩
  exact ⟨r4065, r4066, r4067, r4068, r4069, r4070, r4071, r4072, r4073, r4074, r4075, r4076, r4077⟩

theorem dtk_rung104 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1087 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX104 rho : F), (dtkAccY104 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3557 : F), (rho 3558 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX104 rho : F), (dtkAccY104 rho : F)⟩
        ⟨(rho 3557 : F), (rho 3558 : F)⟩
        ⟨(dtkAccX105 rho : F), (dtkAccY105 rho : F)⟩
        ⟨(rho 3570 : F), (rho 3571 : F)⟩ := by
  obtain ⟨r4065, r4066, r4067, r4068, r4069, r4070, r4071, r4072, r4073, r4074, r4075, r4076, r4077⟩ := dtk_rows104 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4065 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc606 at r4065
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4065
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4066 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc607 at r4066
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4066
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4067 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc608 at r4067
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4067
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4068 at r4068
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4069 at r4069
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4070 at r4070
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4071 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc609 at r4071
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4071
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4072 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc610 at r4072
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4072
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4073 at r4073
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4074 at r4074
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4075 at r4075
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4076 at r4076
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4077 at r4077
  have hrung104 (bit : Bool) (hbit : rho 1087 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX104 rho : F), (dtkAccY104 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3557 : F), (rho 3558 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX104 rho : F), (dtkAccY104 rho : F)⟩
        ⟨(rho 3557 : F), (rho 3558 : F)⟩
        ⟨(dtkAccX105 rho : F), (dtkAccY105 rho : F)⟩
        ⟨(rho 3570 : F), (rho 3571 : F)⟩ := by
    have hnextx : dtkAccX105 rho = dtkAccX104 rho + rho 3565 := by
      unfold dtkAccX105 dtkAccX104
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 103]
      ring
    have hnexty : dtkAccY105 rho = dtkAccY104 rho + rho 3566 := by
      unfold dtkAccY105 dtkAccY104
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 104]
      ring
    have ha0 : (rho 3557 + rho 3558) * (dtkAccX104 rho + dtkAccY104 rho) = rho 3559 := by
      unfold dtkAccX104 dtkAccY104
      linear_combination r4065
    have ha1 : rho 3558 * dtkAccX104 rho = rho 3560 := by
      unfold dtkAccX104
      linear_combination r4066
    have ha2 : rho 3557 * dtkAccY104 rho = rho 3561 := by
      unfold dtkAccY104
      linear_combination r4067
    have ha3 : 3021 * rho 3560 * rho 3561 = rho 3562 := by
      linear_combination r4068
    have ha4 : rho 3563 * (1 + rho 3562) = rho 3560 + rho 3561 := by
      linear_combination r4069
    have ha5 : rho 3564 * (1 - rho 3562) = rho 3559 - rho 3560 - rho 3561 := by
      linear_combination r4070
    have haddx :
        rho 3563 * (1 + 3021 * (rho 3558 * dtkAccX104 rho) * (rho 3557 * dtkAccY104 rho)) =
          rho 3558 * dtkAccX104 rho + rho 3557 * dtkAccY104 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3564 * (1 - 3021 * (rho 3558 * dtkAccX104 rho) * (rho 3557 * dtkAccY104 rho)) =
          (-1) * (rho 3558 * dtkAccX104 rho) - rho 3557 * dtkAccY104 rho +
            (dtkAccY104 rho - dtkAccX104 rho * (-1)) * (rho 3557 + rho 3558) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3564 * (1 - rho 3562) = rho 3559 - rho 3560 - rho 3561 := ha5
        _ = (-1) * rho 3560 - rho 3561 + (dtkAccY104 rho - dtkAccX104 rho * (-1)) * (rho 3557 + rho 3558) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX105 rho = dtkAccX104 rho - Bool.toZMod bit * (dtkAccX104 rho - rho 3563) := by
      have hd : rho 3565 = Bool.toZMod bit * (rho 3563 - dtkAccX104 rho) := by
        rw [← hbit]
        unfold dtkAccX104
        linear_combination -r4071
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY105 rho = dtkAccY104 rho - Bool.toZMod bit * (dtkAccY104 rho - rho 3564) := by
      have hd : rho 3566 = Bool.toZMod bit * (rho 3564 - dtkAccY104 rho) := by
        rw [← hbit]
        unfold dtkAccY104
        linear_combination -r4072
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3557 * rho 3558 = rho 3567 := by linear_combination r4073
    have hd1 : rho 3557 * rho 3557 = rho 3568 := by linear_combination r4074
    have hd2 : rho 3558 * rho 3558 = rho 3569 := by linear_combination r4075
    have hd3 : rho 3570 * (rho 3558 * rho 3558 + rho 3557 * rho 3557 * (-1)) = 2 * (rho 3557 * rho 3558) := by
      rw [hd0, hd1, hd2]
      linear_combination r4076
    have hd4 : rho 3571 * (2 - (rho 3558 * rho 3558 + rho 3557 * rho 3557 * (-1))) = rho 3558 * rho 3558 - rho 3557 * rho 3557 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4077
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX104 rho : F), (dtkAccY104 rho : F)⟩
      ⟨(rho 3557 : F), (rho 3558 : F)⟩
      ⟨(rho 3563 : F), (rho 3564 : F)⟩
      ⟨(dtkAccX105 rho : F), (dtkAccY105 rho : F)⟩
      ⟨(rho 3570 : F), (rho 3571 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung104

theorem dtk_rows105 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4078 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4079 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4080 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4081 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4082 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4083 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4084 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4085 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4086 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4087 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4088 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4089 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4090 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p50, p51, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart50 at p50
  rcases p50 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4078, r4079⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart51 at p51
  rcases p51 with ⟨r4080, r4081, r4082, r4083, r4084, r4085, r4086, r4087, r4088, r4089, r4090, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4078, r4079, r4080, r4081, r4082, r4083, r4084, r4085, r4086, r4087, r4088, r4089, r4090⟩

theorem dtk_rung105 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1088 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX105 rho : F), (dtkAccY105 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3570 : F), (rho 3571 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX105 rho : F), (dtkAccY105 rho : F)⟩
        ⟨(rho 3570 : F), (rho 3571 : F)⟩
        ⟨(dtkAccX106 rho : F), (dtkAccY106 rho : F)⟩
        ⟨(rho 3583 : F), (rho 3584 : F)⟩ := by
  obtain ⟨r4078, r4079, r4080, r4081, r4082, r4083, r4084, r4085, r4086, r4087, r4088, r4089, r4090⟩ := dtk_rows105 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4078 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc611 at r4078
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4078
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4079 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc612 at r4079
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4079
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4080 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc613 at r4080
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4080
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4081 at r4081
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4082 at r4082
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4083 at r4083
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4084 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc614 at r4084
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4084
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4085 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc615 at r4085
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4085
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4086 at r4086
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4087 at r4087
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4088 at r4088
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4089 at r4089
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4090 at r4090
  have hrung105 (bit : Bool) (hbit : rho 1088 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX105 rho : F), (dtkAccY105 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3570 : F), (rho 3571 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX105 rho : F), (dtkAccY105 rho : F)⟩
        ⟨(rho 3570 : F), (rho 3571 : F)⟩
        ⟨(dtkAccX106 rho : F), (dtkAccY106 rho : F)⟩
        ⟨(rho 3583 : F), (rho 3584 : F)⟩ := by
    have hnextx : dtkAccX106 rho = dtkAccX105 rho + rho 3578 := by
      unfold dtkAccX106 dtkAccX105
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 104]
      ring
    have hnexty : dtkAccY106 rho = dtkAccY105 rho + rho 3579 := by
      unfold dtkAccY106 dtkAccY105
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 105]
      ring
    have ha0 : (rho 3570 + rho 3571) * (dtkAccX105 rho + dtkAccY105 rho) = rho 3572 := by
      unfold dtkAccX105 dtkAccY105
      linear_combination r4078
    have ha1 : rho 3571 * dtkAccX105 rho = rho 3573 := by
      unfold dtkAccX105
      linear_combination r4079
    have ha2 : rho 3570 * dtkAccY105 rho = rho 3574 := by
      unfold dtkAccY105
      linear_combination r4080
    have ha3 : 3021 * rho 3573 * rho 3574 = rho 3575 := by
      linear_combination r4081
    have ha4 : rho 3576 * (1 + rho 3575) = rho 3573 + rho 3574 := by
      linear_combination r4082
    have ha5 : rho 3577 * (1 - rho 3575) = rho 3572 - rho 3573 - rho 3574 := by
      linear_combination r4083
    have haddx :
        rho 3576 * (1 + 3021 * (rho 3571 * dtkAccX105 rho) * (rho 3570 * dtkAccY105 rho)) =
          rho 3571 * dtkAccX105 rho + rho 3570 * dtkAccY105 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3577 * (1 - 3021 * (rho 3571 * dtkAccX105 rho) * (rho 3570 * dtkAccY105 rho)) =
          (-1) * (rho 3571 * dtkAccX105 rho) - rho 3570 * dtkAccY105 rho +
            (dtkAccY105 rho - dtkAccX105 rho * (-1)) * (rho 3570 + rho 3571) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3577 * (1 - rho 3575) = rho 3572 - rho 3573 - rho 3574 := ha5
        _ = (-1) * rho 3573 - rho 3574 + (dtkAccY105 rho - dtkAccX105 rho * (-1)) * (rho 3570 + rho 3571) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX106 rho = dtkAccX105 rho - Bool.toZMod bit * (dtkAccX105 rho - rho 3576) := by
      have hd : rho 3578 = Bool.toZMod bit * (rho 3576 - dtkAccX105 rho) := by
        rw [← hbit]
        unfold dtkAccX105
        linear_combination -r4084
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY106 rho = dtkAccY105 rho - Bool.toZMod bit * (dtkAccY105 rho - rho 3577) := by
      have hd : rho 3579 = Bool.toZMod bit * (rho 3577 - dtkAccY105 rho) := by
        rw [← hbit]
        unfold dtkAccY105
        linear_combination -r4085
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3570 * rho 3571 = rho 3580 := by linear_combination r4086
    have hd1 : rho 3570 * rho 3570 = rho 3581 := by linear_combination r4087
    have hd2 : rho 3571 * rho 3571 = rho 3582 := by linear_combination r4088
    have hd3 : rho 3583 * (rho 3571 * rho 3571 + rho 3570 * rho 3570 * (-1)) = 2 * (rho 3570 * rho 3571) := by
      rw [hd0, hd1, hd2]
      linear_combination r4089
    have hd4 : rho 3584 * (2 - (rho 3571 * rho 3571 + rho 3570 * rho 3570 * (-1))) = rho 3571 * rho 3571 - rho 3570 * rho 3570 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4090
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX105 rho : F), (dtkAccY105 rho : F)⟩
      ⟨(rho 3570 : F), (rho 3571 : F)⟩
      ⟨(rho 3576 : F), (rho 3577 : F)⟩
      ⟨(dtkAccX106 rho : F), (dtkAccY106 rho : F)⟩
      ⟨(rho 3583 : F), (rho 3584 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung105

theorem dtk_rows106 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4091 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4092 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4093 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4094 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4095 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4096 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4097 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4098 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4099 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4100 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4101 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4102 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4103 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p51, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart51 at p51
  rcases p51 with ⟨_, _, _, _, _, _, _, _, _, _, _, r4091, r4092, r4093, r4094, r4095, r4096, r4097, r4098, r4099, r4100, r4101, r4102, r4103, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4091, r4092, r4093, r4094, r4095, r4096, r4097, r4098, r4099, r4100, r4101, r4102, r4103⟩

theorem dtk_rung106 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1089 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX106 rho : F), (dtkAccY106 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3583 : F), (rho 3584 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX106 rho : F), (dtkAccY106 rho : F)⟩
        ⟨(rho 3583 : F), (rho 3584 : F)⟩
        ⟨(dtkAccX107 rho : F), (dtkAccY107 rho : F)⟩
        ⟨(rho 3596 : F), (rho 3597 : F)⟩ := by
  obtain ⟨r4091, r4092, r4093, r4094, r4095, r4096, r4097, r4098, r4099, r4100, r4101, r4102, r4103⟩ := dtk_rows106 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4091 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc616 at r4091
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4091
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4092 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc617 at r4092
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4092
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4093 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc618 at r4093
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4093
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4094 at r4094
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4095 at r4095
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4096 at r4096
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4097 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc619 at r4097
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4097
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4098 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc620 at r4098
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4098
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4099 at r4099
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4100 at r4100
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4101 at r4101
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4102 at r4102
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4103 at r4103
  have hrung106 (bit : Bool) (hbit : rho 1089 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX106 rho : F), (dtkAccY106 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3583 : F), (rho 3584 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX106 rho : F), (dtkAccY106 rho : F)⟩
        ⟨(rho 3583 : F), (rho 3584 : F)⟩
        ⟨(dtkAccX107 rho : F), (dtkAccY107 rho : F)⟩
        ⟨(rho 3596 : F), (rho 3597 : F)⟩ := by
    have hnextx : dtkAccX107 rho = dtkAccX106 rho + rho 3591 := by
      unfold dtkAccX107 dtkAccX106
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 105]
      ring
    have hnexty : dtkAccY107 rho = dtkAccY106 rho + rho 3592 := by
      unfold dtkAccY107 dtkAccY106
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 106]
      ring
    have ha0 : (rho 3583 + rho 3584) * (dtkAccX106 rho + dtkAccY106 rho) = rho 3585 := by
      unfold dtkAccX106 dtkAccY106
      linear_combination r4091
    have ha1 : rho 3584 * dtkAccX106 rho = rho 3586 := by
      unfold dtkAccX106
      linear_combination r4092
    have ha2 : rho 3583 * dtkAccY106 rho = rho 3587 := by
      unfold dtkAccY106
      linear_combination r4093
    have ha3 : 3021 * rho 3586 * rho 3587 = rho 3588 := by
      linear_combination r4094
    have ha4 : rho 3589 * (1 + rho 3588) = rho 3586 + rho 3587 := by
      linear_combination r4095
    have ha5 : rho 3590 * (1 - rho 3588) = rho 3585 - rho 3586 - rho 3587 := by
      linear_combination r4096
    have haddx :
        rho 3589 * (1 + 3021 * (rho 3584 * dtkAccX106 rho) * (rho 3583 * dtkAccY106 rho)) =
          rho 3584 * dtkAccX106 rho + rho 3583 * dtkAccY106 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3590 * (1 - 3021 * (rho 3584 * dtkAccX106 rho) * (rho 3583 * dtkAccY106 rho)) =
          (-1) * (rho 3584 * dtkAccX106 rho) - rho 3583 * dtkAccY106 rho +
            (dtkAccY106 rho - dtkAccX106 rho * (-1)) * (rho 3583 + rho 3584) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3590 * (1 - rho 3588) = rho 3585 - rho 3586 - rho 3587 := ha5
        _ = (-1) * rho 3586 - rho 3587 + (dtkAccY106 rho - dtkAccX106 rho * (-1)) * (rho 3583 + rho 3584) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX107 rho = dtkAccX106 rho - Bool.toZMod bit * (dtkAccX106 rho - rho 3589) := by
      have hd : rho 3591 = Bool.toZMod bit * (rho 3589 - dtkAccX106 rho) := by
        rw [← hbit]
        unfold dtkAccX106
        linear_combination -r4097
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY107 rho = dtkAccY106 rho - Bool.toZMod bit * (dtkAccY106 rho - rho 3590) := by
      have hd : rho 3592 = Bool.toZMod bit * (rho 3590 - dtkAccY106 rho) := by
        rw [← hbit]
        unfold dtkAccY106
        linear_combination -r4098
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3583 * rho 3584 = rho 3593 := by linear_combination r4099
    have hd1 : rho 3583 * rho 3583 = rho 3594 := by linear_combination r4100
    have hd2 : rho 3584 * rho 3584 = rho 3595 := by linear_combination r4101
    have hd3 : rho 3596 * (rho 3584 * rho 3584 + rho 3583 * rho 3583 * (-1)) = 2 * (rho 3583 * rho 3584) := by
      rw [hd0, hd1, hd2]
      linear_combination r4102
    have hd4 : rho 3597 * (2 - (rho 3584 * rho 3584 + rho 3583 * rho 3583 * (-1))) = rho 3584 * rho 3584 - rho 3583 * rho 3583 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4103
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX106 rho : F), (dtkAccY106 rho : F)⟩
      ⟨(rho 3583 : F), (rho 3584 : F)⟩
      ⟨(rho 3589 : F), (rho 3590 : F)⟩
      ⟨(dtkAccX107 rho : F), (dtkAccY107 rho : F)⟩
      ⟨(rho 3596 : F), (rho 3597 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung106

theorem dtk_rows107 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4104 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4105 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4106 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4107 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4108 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4109 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4110 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4111 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4112 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4113 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4114 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4115 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4116 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p51, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart51 at p51
  rcases p51 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4104, r4105, r4106, r4107, r4108, r4109, r4110, r4111, r4112, r4113, r4114, r4115, r4116, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4104, r4105, r4106, r4107, r4108, r4109, r4110, r4111, r4112, r4113, r4114, r4115, r4116⟩

theorem dtk_rung107 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1090 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX107 rho : F), (dtkAccY107 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3596 : F), (rho 3597 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX107 rho : F), (dtkAccY107 rho : F)⟩
        ⟨(rho 3596 : F), (rho 3597 : F)⟩
        ⟨(dtkAccX108 rho : F), (dtkAccY108 rho : F)⟩
        ⟨(rho 3609 : F), (rho 3610 : F)⟩ := by
  obtain ⟨r4104, r4105, r4106, r4107, r4108, r4109, r4110, r4111, r4112, r4113, r4114, r4115, r4116⟩ := dtk_rows107 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4104 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc621 at r4104
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4104
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4105 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc622 at r4105
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4105
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4106 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc623 at r4106
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4106
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4107 at r4107
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4108 at r4108
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4109 at r4109
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4110 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc624 at r4110
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4110
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4111 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc625 at r4111
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4111
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4112 at r4112
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4113 at r4113
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4114 at r4114
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4115 at r4115
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4116 at r4116
  have hrung107 (bit : Bool) (hbit : rho 1090 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX107 rho : F), (dtkAccY107 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3596 : F), (rho 3597 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX107 rho : F), (dtkAccY107 rho : F)⟩
        ⟨(rho 3596 : F), (rho 3597 : F)⟩
        ⟨(dtkAccX108 rho : F), (dtkAccY108 rho : F)⟩
        ⟨(rho 3609 : F), (rho 3610 : F)⟩ := by
    have hnextx : dtkAccX108 rho = dtkAccX107 rho + rho 3604 := by
      unfold dtkAccX108 dtkAccX107
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 106]
      ring
    have hnexty : dtkAccY108 rho = dtkAccY107 rho + rho 3605 := by
      unfold dtkAccY108 dtkAccY107
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 107]
      ring
    have ha0 : (rho 3596 + rho 3597) * (dtkAccX107 rho + dtkAccY107 rho) = rho 3598 := by
      unfold dtkAccX107 dtkAccY107
      linear_combination r4104
    have ha1 : rho 3597 * dtkAccX107 rho = rho 3599 := by
      unfold dtkAccX107
      linear_combination r4105
    have ha2 : rho 3596 * dtkAccY107 rho = rho 3600 := by
      unfold dtkAccY107
      linear_combination r4106
    have ha3 : 3021 * rho 3599 * rho 3600 = rho 3601 := by
      linear_combination r4107
    have ha4 : rho 3602 * (1 + rho 3601) = rho 3599 + rho 3600 := by
      linear_combination r4108
    have ha5 : rho 3603 * (1 - rho 3601) = rho 3598 - rho 3599 - rho 3600 := by
      linear_combination r4109
    have haddx :
        rho 3602 * (1 + 3021 * (rho 3597 * dtkAccX107 rho) * (rho 3596 * dtkAccY107 rho)) =
          rho 3597 * dtkAccX107 rho + rho 3596 * dtkAccY107 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3603 * (1 - 3021 * (rho 3597 * dtkAccX107 rho) * (rho 3596 * dtkAccY107 rho)) =
          (-1) * (rho 3597 * dtkAccX107 rho) - rho 3596 * dtkAccY107 rho +
            (dtkAccY107 rho - dtkAccX107 rho * (-1)) * (rho 3596 + rho 3597) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3603 * (1 - rho 3601) = rho 3598 - rho 3599 - rho 3600 := ha5
        _ = (-1) * rho 3599 - rho 3600 + (dtkAccY107 rho - dtkAccX107 rho * (-1)) * (rho 3596 + rho 3597) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX108 rho = dtkAccX107 rho - Bool.toZMod bit * (dtkAccX107 rho - rho 3602) := by
      have hd : rho 3604 = Bool.toZMod bit * (rho 3602 - dtkAccX107 rho) := by
        rw [← hbit]
        unfold dtkAccX107
        linear_combination -r4110
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY108 rho = dtkAccY107 rho - Bool.toZMod bit * (dtkAccY107 rho - rho 3603) := by
      have hd : rho 3605 = Bool.toZMod bit * (rho 3603 - dtkAccY107 rho) := by
        rw [← hbit]
        unfold dtkAccY107
        linear_combination -r4111
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3596 * rho 3597 = rho 3606 := by linear_combination r4112
    have hd1 : rho 3596 * rho 3596 = rho 3607 := by linear_combination r4113
    have hd2 : rho 3597 * rho 3597 = rho 3608 := by linear_combination r4114
    have hd3 : rho 3609 * (rho 3597 * rho 3597 + rho 3596 * rho 3596 * (-1)) = 2 * (rho 3596 * rho 3597) := by
      rw [hd0, hd1, hd2]
      linear_combination r4115
    have hd4 : rho 3610 * (2 - (rho 3597 * rho 3597 + rho 3596 * rho 3596 * (-1))) = rho 3597 * rho 3597 - rho 3596 * rho 3596 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4116
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX107 rho : F), (dtkAccY107 rho : F)⟩
      ⟨(rho 3596 : F), (rho 3597 : F)⟩
      ⟨(rho 3602 : F), (rho 3603 : F)⟩
      ⟨(dtkAccX108 rho : F), (dtkAccY108 rho : F)⟩
      ⟨(rho 3609 : F), (rho 3610 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung107

theorem dtk_hstep_c17 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (983 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 102 ≤ i → i < 108 →
      EdwardsBridge.onCurve (dtkLadderAccState rho i) →
      EdwardsBridge.onCurve (dtkLadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (dtkLadderAccState rho i) (dtkLadderCurState rho i)
        (dtkLadderAccState rho (i + 1)) (dtkLadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact dtk_rung102 rho h bits[102]! (hbitAt 102 (by omega)) hacc hcur
  · exact dtk_rung103 rho h bits[103]! (hbitAt 103 (by omega)) hacc hcur
  · exact dtk_rung104 rho h bits[104]! (hbitAt 104 (by omega)) hacc hcur
  · exact dtk_rung105 rho h bits[105]! (hbitAt 105 (by omega)) hacc hcur
  · exact dtk_rung106 rho h bits[106]! (hbitAt 106 (by omega)) hacc hcur
  · exact dtk_rung107 rho h bits[107]! (hbitAt 107 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport
