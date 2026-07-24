import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDtkScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs

theorem dtk_rows108 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4117 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4118 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4119 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4120 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4121 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4122 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4123 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4124 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4125 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4126 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4127 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4128 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4129 rho := by
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
  rcases p51 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4117, r4118, r4119, r4120, r4121, r4122, r4123, r4124, r4125, r4126, r4127, r4128, r4129, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4117, r4118, r4119, r4120, r4121, r4122, r4123, r4124, r4125, r4126, r4127, r4128, r4129⟩

theorem dtk_rung108 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1091 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX108 rho : F), (dtkAccY108 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3609 : F), (rho 3610 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX108 rho : F), (dtkAccY108 rho : F)⟩
        ⟨(rho 3609 : F), (rho 3610 : F)⟩
        ⟨(dtkAccX109 rho : F), (dtkAccY109 rho : F)⟩
        ⟨(rho 3622 : F), (rho 3623 : F)⟩ := by
  obtain ⟨r4117, r4118, r4119, r4120, r4121, r4122, r4123, r4124, r4125, r4126, r4127, r4128, r4129⟩ := dtk_rows108 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4117 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc626 at r4117
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4117
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4118 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc627 at r4118
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4118
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4119 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc628 at r4119
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4119
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4120 at r4120
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4121 at r4121
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4122 at r4122
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4123 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc629 at r4123
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4123
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4124 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc630 at r4124
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4124
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4125 at r4125
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4126 at r4126
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4127 at r4127
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4128 at r4128
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4129 at r4129
  have hrung108 (bit : Bool) (hbit : rho 1091 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX108 rho : F), (dtkAccY108 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3609 : F), (rho 3610 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX108 rho : F), (dtkAccY108 rho : F)⟩
        ⟨(rho 3609 : F), (rho 3610 : F)⟩
        ⟨(dtkAccX109 rho : F), (dtkAccY109 rho : F)⟩
        ⟨(rho 3622 : F), (rho 3623 : F)⟩ := by
    have hnextx : dtkAccX109 rho = dtkAccX108 rho + rho 3617 := by
      unfold dtkAccX109 dtkAccX108
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 107]
      ring
    have hnexty : dtkAccY109 rho = dtkAccY108 rho + rho 3618 := by
      unfold dtkAccY109 dtkAccY108
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 108]
      ring
    have ha0 : (rho 3609 + rho 3610) * (dtkAccX108 rho + dtkAccY108 rho) = rho 3611 := by
      unfold dtkAccX108 dtkAccY108
      linear_combination r4117
    have ha1 : rho 3610 * dtkAccX108 rho = rho 3612 := by
      unfold dtkAccX108
      linear_combination r4118
    have ha2 : rho 3609 * dtkAccY108 rho = rho 3613 := by
      unfold dtkAccY108
      linear_combination r4119
    have ha3 : 3021 * rho 3612 * rho 3613 = rho 3614 := by
      linear_combination r4120
    have ha4 : rho 3615 * (1 + rho 3614) = rho 3612 + rho 3613 := by
      linear_combination r4121
    have ha5 : rho 3616 * (1 - rho 3614) = rho 3611 - rho 3612 - rho 3613 := by
      linear_combination r4122
    have haddx :
        rho 3615 * (1 + 3021 * (rho 3610 * dtkAccX108 rho) * (rho 3609 * dtkAccY108 rho)) =
          rho 3610 * dtkAccX108 rho + rho 3609 * dtkAccY108 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3616 * (1 - 3021 * (rho 3610 * dtkAccX108 rho) * (rho 3609 * dtkAccY108 rho)) =
          (-1) * (rho 3610 * dtkAccX108 rho) - rho 3609 * dtkAccY108 rho +
            (dtkAccY108 rho - dtkAccX108 rho * (-1)) * (rho 3609 + rho 3610) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3616 * (1 - rho 3614) = rho 3611 - rho 3612 - rho 3613 := ha5
        _ = (-1) * rho 3612 - rho 3613 + (dtkAccY108 rho - dtkAccX108 rho * (-1)) * (rho 3609 + rho 3610) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX109 rho = dtkAccX108 rho - Bool.toZMod bit * (dtkAccX108 rho - rho 3615) := by
      have hd : rho 3617 = Bool.toZMod bit * (rho 3615 - dtkAccX108 rho) := by
        rw [← hbit]
        unfold dtkAccX108
        linear_combination -r4123
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY109 rho = dtkAccY108 rho - Bool.toZMod bit * (dtkAccY108 rho - rho 3616) := by
      have hd : rho 3618 = Bool.toZMod bit * (rho 3616 - dtkAccY108 rho) := by
        rw [← hbit]
        unfold dtkAccY108
        linear_combination -r4124
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3609 * rho 3610 = rho 3619 := by linear_combination r4125
    have hd1 : rho 3609 * rho 3609 = rho 3620 := by linear_combination r4126
    have hd2 : rho 3610 * rho 3610 = rho 3621 := by linear_combination r4127
    have hd3 : rho 3622 * (rho 3610 * rho 3610 + rho 3609 * rho 3609 * (-1)) = 2 * (rho 3609 * rho 3610) := by
      rw [hd0, hd1, hd2]
      linear_combination r4128
    have hd4 : rho 3623 * (2 - (rho 3610 * rho 3610 + rho 3609 * rho 3609 * (-1))) = rho 3610 * rho 3610 - rho 3609 * rho 3609 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4129
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX108 rho : F), (dtkAccY108 rho : F)⟩
      ⟨(rho 3609 : F), (rho 3610 : F)⟩
      ⟨(rho 3615 : F), (rho 3616 : F)⟩
      ⟨(dtkAccX109 rho : F), (dtkAccY109 rho : F)⟩
      ⟨(rho 3622 : F), (rho 3623 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung108

theorem dtk_rows109 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4130 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4131 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4132 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4133 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4134 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4135 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4136 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4137 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4138 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4139 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4140 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4141 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4142 rho := by
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
  rcases p51 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4130, r4131, r4132, r4133, r4134, r4135, r4136, r4137, r4138, r4139, r4140, r4141, r4142, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4130, r4131, r4132, r4133, r4134, r4135, r4136, r4137, r4138, r4139, r4140, r4141, r4142⟩

theorem dtk_rung109 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1092 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX109 rho : F), (dtkAccY109 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3622 : F), (rho 3623 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX109 rho : F), (dtkAccY109 rho : F)⟩
        ⟨(rho 3622 : F), (rho 3623 : F)⟩
        ⟨(dtkAccX110 rho : F), (dtkAccY110 rho : F)⟩
        ⟨(rho 3635 : F), (rho 3636 : F)⟩ := by
  obtain ⟨r4130, r4131, r4132, r4133, r4134, r4135, r4136, r4137, r4138, r4139, r4140, r4141, r4142⟩ := dtk_rows109 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4130 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc631 at r4130
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4130
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4131 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc632 at r4131
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4131
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4132 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc633 at r4132
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4132
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4133 at r4133
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4134 at r4134
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4135 at r4135
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4136 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc634 at r4136
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4136
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4137 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc635 at r4137
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4137
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4138 at r4138
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4139 at r4139
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4140 at r4140
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4141 at r4141
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4142 at r4142
  have hrung109 (bit : Bool) (hbit : rho 1092 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX109 rho : F), (dtkAccY109 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3622 : F), (rho 3623 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX109 rho : F), (dtkAccY109 rho : F)⟩
        ⟨(rho 3622 : F), (rho 3623 : F)⟩
        ⟨(dtkAccX110 rho : F), (dtkAccY110 rho : F)⟩
        ⟨(rho 3635 : F), (rho 3636 : F)⟩ := by
    have hnextx : dtkAccX110 rho = dtkAccX109 rho + rho 3630 := by
      unfold dtkAccX110 dtkAccX109
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 108]
      ring
    have hnexty : dtkAccY110 rho = dtkAccY109 rho + rho 3631 := by
      unfold dtkAccY110 dtkAccY109
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 109]
      ring
    have ha0 : (rho 3622 + rho 3623) * (dtkAccX109 rho + dtkAccY109 rho) = rho 3624 := by
      unfold dtkAccX109 dtkAccY109
      linear_combination r4130
    have ha1 : rho 3623 * dtkAccX109 rho = rho 3625 := by
      unfold dtkAccX109
      linear_combination r4131
    have ha2 : rho 3622 * dtkAccY109 rho = rho 3626 := by
      unfold dtkAccY109
      linear_combination r4132
    have ha3 : 3021 * rho 3625 * rho 3626 = rho 3627 := by
      linear_combination r4133
    have ha4 : rho 3628 * (1 + rho 3627) = rho 3625 + rho 3626 := by
      linear_combination r4134
    have ha5 : rho 3629 * (1 - rho 3627) = rho 3624 - rho 3625 - rho 3626 := by
      linear_combination r4135
    have haddx :
        rho 3628 * (1 + 3021 * (rho 3623 * dtkAccX109 rho) * (rho 3622 * dtkAccY109 rho)) =
          rho 3623 * dtkAccX109 rho + rho 3622 * dtkAccY109 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3629 * (1 - 3021 * (rho 3623 * dtkAccX109 rho) * (rho 3622 * dtkAccY109 rho)) =
          (-1) * (rho 3623 * dtkAccX109 rho) - rho 3622 * dtkAccY109 rho +
            (dtkAccY109 rho - dtkAccX109 rho * (-1)) * (rho 3622 + rho 3623) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3629 * (1 - rho 3627) = rho 3624 - rho 3625 - rho 3626 := ha5
        _ = (-1) * rho 3625 - rho 3626 + (dtkAccY109 rho - dtkAccX109 rho * (-1)) * (rho 3622 + rho 3623) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX110 rho = dtkAccX109 rho - Bool.toZMod bit * (dtkAccX109 rho - rho 3628) := by
      have hd : rho 3630 = Bool.toZMod bit * (rho 3628 - dtkAccX109 rho) := by
        rw [← hbit]
        unfold dtkAccX109
        linear_combination -r4136
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY110 rho = dtkAccY109 rho - Bool.toZMod bit * (dtkAccY109 rho - rho 3629) := by
      have hd : rho 3631 = Bool.toZMod bit * (rho 3629 - dtkAccY109 rho) := by
        rw [← hbit]
        unfold dtkAccY109
        linear_combination -r4137
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3622 * rho 3623 = rho 3632 := by linear_combination r4138
    have hd1 : rho 3622 * rho 3622 = rho 3633 := by linear_combination r4139
    have hd2 : rho 3623 * rho 3623 = rho 3634 := by linear_combination r4140
    have hd3 : rho 3635 * (rho 3623 * rho 3623 + rho 3622 * rho 3622 * (-1)) = 2 * (rho 3622 * rho 3623) := by
      rw [hd0, hd1, hd2]
      linear_combination r4141
    have hd4 : rho 3636 * (2 - (rho 3623 * rho 3623 + rho 3622 * rho 3622 * (-1))) = rho 3623 * rho 3623 - rho 3622 * rho 3622 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4142
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX109 rho : F), (dtkAccY109 rho : F)⟩
      ⟨(rho 3622 : F), (rho 3623 : F)⟩
      ⟨(rho 3628 : F), (rho 3629 : F)⟩
      ⟨(dtkAccX110 rho : F), (dtkAccY110 rho : F)⟩
      ⟨(rho 3635 : F), (rho 3636 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung109

theorem dtk_rows110 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4143 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4144 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4145 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4146 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4147 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4148 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4149 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4150 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4151 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4152 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4153 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4154 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4155 rho := by
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
  rcases p51 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4143, r4144, r4145, r4146, r4147, r4148, r4149, r4150, r4151, r4152, r4153, r4154, r4155, _, _, _, _⟩
  exact ⟨r4143, r4144, r4145, r4146, r4147, r4148, r4149, r4150, r4151, r4152, r4153, r4154, r4155⟩

theorem dtk_rung110 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1093 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX110 rho : F), (dtkAccY110 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3635 : F), (rho 3636 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX110 rho : F), (dtkAccY110 rho : F)⟩
        ⟨(rho 3635 : F), (rho 3636 : F)⟩
        ⟨(dtkAccX111 rho : F), (dtkAccY111 rho : F)⟩
        ⟨(rho 3648 : F), (rho 3649 : F)⟩ := by
  obtain ⟨r4143, r4144, r4145, r4146, r4147, r4148, r4149, r4150, r4151, r4152, r4153, r4154, r4155⟩ := dtk_rows110 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4143 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc636 at r4143
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4143
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4144 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc637 at r4144
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4144
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4145 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc638 at r4145
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4145
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4146 at r4146
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4147 at r4147
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4148 at r4148
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4149 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc639 at r4149
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4149
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4150 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc640 at r4150
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4150
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4151 at r4151
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4152 at r4152
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4153 at r4153
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4154 at r4154
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4155 at r4155
  have hrung110 (bit : Bool) (hbit : rho 1093 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX110 rho : F), (dtkAccY110 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3635 : F), (rho 3636 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX110 rho : F), (dtkAccY110 rho : F)⟩
        ⟨(rho 3635 : F), (rho 3636 : F)⟩
        ⟨(dtkAccX111 rho : F), (dtkAccY111 rho : F)⟩
        ⟨(rho 3648 : F), (rho 3649 : F)⟩ := by
    have hnextx : dtkAccX111 rho = dtkAccX110 rho + rho 3643 := by
      unfold dtkAccX111 dtkAccX110
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 109]
      ring
    have hnexty : dtkAccY111 rho = dtkAccY110 rho + rho 3644 := by
      unfold dtkAccY111 dtkAccY110
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 110]
      ring
    have ha0 : (rho 3635 + rho 3636) * (dtkAccX110 rho + dtkAccY110 rho) = rho 3637 := by
      unfold dtkAccX110 dtkAccY110
      linear_combination r4143
    have ha1 : rho 3636 * dtkAccX110 rho = rho 3638 := by
      unfold dtkAccX110
      linear_combination r4144
    have ha2 : rho 3635 * dtkAccY110 rho = rho 3639 := by
      unfold dtkAccY110
      linear_combination r4145
    have ha3 : 3021 * rho 3638 * rho 3639 = rho 3640 := by
      linear_combination r4146
    have ha4 : rho 3641 * (1 + rho 3640) = rho 3638 + rho 3639 := by
      linear_combination r4147
    have ha5 : rho 3642 * (1 - rho 3640) = rho 3637 - rho 3638 - rho 3639 := by
      linear_combination r4148
    have haddx :
        rho 3641 * (1 + 3021 * (rho 3636 * dtkAccX110 rho) * (rho 3635 * dtkAccY110 rho)) =
          rho 3636 * dtkAccX110 rho + rho 3635 * dtkAccY110 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3642 * (1 - 3021 * (rho 3636 * dtkAccX110 rho) * (rho 3635 * dtkAccY110 rho)) =
          (-1) * (rho 3636 * dtkAccX110 rho) - rho 3635 * dtkAccY110 rho +
            (dtkAccY110 rho - dtkAccX110 rho * (-1)) * (rho 3635 + rho 3636) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3642 * (1 - rho 3640) = rho 3637 - rho 3638 - rho 3639 := ha5
        _ = (-1) * rho 3638 - rho 3639 + (dtkAccY110 rho - dtkAccX110 rho * (-1)) * (rho 3635 + rho 3636) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX111 rho = dtkAccX110 rho - Bool.toZMod bit * (dtkAccX110 rho - rho 3641) := by
      have hd : rho 3643 = Bool.toZMod bit * (rho 3641 - dtkAccX110 rho) := by
        rw [← hbit]
        unfold dtkAccX110
        linear_combination -r4149
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY111 rho = dtkAccY110 rho - Bool.toZMod bit * (dtkAccY110 rho - rho 3642) := by
      have hd : rho 3644 = Bool.toZMod bit * (rho 3642 - dtkAccY110 rho) := by
        rw [← hbit]
        unfold dtkAccY110
        linear_combination -r4150
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3635 * rho 3636 = rho 3645 := by linear_combination r4151
    have hd1 : rho 3635 * rho 3635 = rho 3646 := by linear_combination r4152
    have hd2 : rho 3636 * rho 3636 = rho 3647 := by linear_combination r4153
    have hd3 : rho 3648 * (rho 3636 * rho 3636 + rho 3635 * rho 3635 * (-1)) = 2 * (rho 3635 * rho 3636) := by
      rw [hd0, hd1, hd2]
      linear_combination r4154
    have hd4 : rho 3649 * (2 - (rho 3636 * rho 3636 + rho 3635 * rho 3635 * (-1))) = rho 3636 * rho 3636 - rho 3635 * rho 3635 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4155
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX110 rho : F), (dtkAccY110 rho : F)⟩
      ⟨(rho 3635 : F), (rho 3636 : F)⟩
      ⟨(rho 3641 : F), (rho 3642 : F)⟩
      ⟨(dtkAccX111 rho : F), (dtkAccY111 rho : F)⟩
      ⟨(rho 3648 : F), (rho 3649 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung110

theorem dtk_rows111 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4156 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4157 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4158 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4159 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4160 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4161 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4162 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4163 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4164 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4165 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4166 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4167 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4168 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p51, p52, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart51 at p51
  rcases p51 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4156, r4157, r4158, r4159⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart52 at p52
  rcases p52 with ⟨r4160, r4161, r4162, r4163, r4164, r4165, r4166, r4167, r4168, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4156, r4157, r4158, r4159, r4160, r4161, r4162, r4163, r4164, r4165, r4166, r4167, r4168⟩

theorem dtk_rung111 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1094 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX111 rho : F), (dtkAccY111 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3648 : F), (rho 3649 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX111 rho : F), (dtkAccY111 rho : F)⟩
        ⟨(rho 3648 : F), (rho 3649 : F)⟩
        ⟨(dtkAccX112 rho : F), (dtkAccY112 rho : F)⟩
        ⟨(rho 3661 : F), (rho 3662 : F)⟩ := by
  obtain ⟨r4156, r4157, r4158, r4159, r4160, r4161, r4162, r4163, r4164, r4165, r4166, r4167, r4168⟩ := dtk_rows111 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4156 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc641 at r4156
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4156
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4157 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc642 at r4157
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4157
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4158 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc643 at r4158
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4158
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4159 at r4159
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4160 at r4160
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4161 at r4161
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4162 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc644 at r4162
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4162
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4163 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc645 at r4163
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4163
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4164 at r4164
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4165 at r4165
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4166 at r4166
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4167 at r4167
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4168 at r4168
  have hrung111 (bit : Bool) (hbit : rho 1094 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX111 rho : F), (dtkAccY111 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3648 : F), (rho 3649 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX111 rho : F), (dtkAccY111 rho : F)⟩
        ⟨(rho 3648 : F), (rho 3649 : F)⟩
        ⟨(dtkAccX112 rho : F), (dtkAccY112 rho : F)⟩
        ⟨(rho 3661 : F), (rho 3662 : F)⟩ := by
    have hnextx : dtkAccX112 rho = dtkAccX111 rho + rho 3656 := by
      unfold dtkAccX112 dtkAccX111
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 110]
      ring
    have hnexty : dtkAccY112 rho = dtkAccY111 rho + rho 3657 := by
      unfold dtkAccY112 dtkAccY111
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 111]
      ring
    have ha0 : (rho 3648 + rho 3649) * (dtkAccX111 rho + dtkAccY111 rho) = rho 3650 := by
      unfold dtkAccX111 dtkAccY111
      linear_combination r4156
    have ha1 : rho 3649 * dtkAccX111 rho = rho 3651 := by
      unfold dtkAccX111
      linear_combination r4157
    have ha2 : rho 3648 * dtkAccY111 rho = rho 3652 := by
      unfold dtkAccY111
      linear_combination r4158
    have ha3 : 3021 * rho 3651 * rho 3652 = rho 3653 := by
      linear_combination r4159
    have ha4 : rho 3654 * (1 + rho 3653) = rho 3651 + rho 3652 := by
      linear_combination r4160
    have ha5 : rho 3655 * (1 - rho 3653) = rho 3650 - rho 3651 - rho 3652 := by
      linear_combination r4161
    have haddx :
        rho 3654 * (1 + 3021 * (rho 3649 * dtkAccX111 rho) * (rho 3648 * dtkAccY111 rho)) =
          rho 3649 * dtkAccX111 rho + rho 3648 * dtkAccY111 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3655 * (1 - 3021 * (rho 3649 * dtkAccX111 rho) * (rho 3648 * dtkAccY111 rho)) =
          (-1) * (rho 3649 * dtkAccX111 rho) - rho 3648 * dtkAccY111 rho +
            (dtkAccY111 rho - dtkAccX111 rho * (-1)) * (rho 3648 + rho 3649) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3655 * (1 - rho 3653) = rho 3650 - rho 3651 - rho 3652 := ha5
        _ = (-1) * rho 3651 - rho 3652 + (dtkAccY111 rho - dtkAccX111 rho * (-1)) * (rho 3648 + rho 3649) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX112 rho = dtkAccX111 rho - Bool.toZMod bit * (dtkAccX111 rho - rho 3654) := by
      have hd : rho 3656 = Bool.toZMod bit * (rho 3654 - dtkAccX111 rho) := by
        rw [← hbit]
        unfold dtkAccX111
        linear_combination -r4162
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY112 rho = dtkAccY111 rho - Bool.toZMod bit * (dtkAccY111 rho - rho 3655) := by
      have hd : rho 3657 = Bool.toZMod bit * (rho 3655 - dtkAccY111 rho) := by
        rw [← hbit]
        unfold dtkAccY111
        linear_combination -r4163
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3648 * rho 3649 = rho 3658 := by linear_combination r4164
    have hd1 : rho 3648 * rho 3648 = rho 3659 := by linear_combination r4165
    have hd2 : rho 3649 * rho 3649 = rho 3660 := by linear_combination r4166
    have hd3 : rho 3661 * (rho 3649 * rho 3649 + rho 3648 * rho 3648 * (-1)) = 2 * (rho 3648 * rho 3649) := by
      rw [hd0, hd1, hd2]
      linear_combination r4167
    have hd4 : rho 3662 * (2 - (rho 3649 * rho 3649 + rho 3648 * rho 3648 * (-1))) = rho 3649 * rho 3649 - rho 3648 * rho 3648 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4168
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX111 rho : F), (dtkAccY111 rho : F)⟩
      ⟨(rho 3648 : F), (rho 3649 : F)⟩
      ⟨(rho 3654 : F), (rho 3655 : F)⟩
      ⟨(dtkAccX112 rho : F), (dtkAccY112 rho : F)⟩
      ⟨(rho 3661 : F), (rho 3662 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung111

theorem dtk_rows112 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4169 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4170 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4171 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4172 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4173 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4174 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4175 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4176 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4177 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4178 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4179 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4180 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4181 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p52, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart52 at p52
  rcases p52 with ⟨_, _, _, _, _, _, _, _, _, r4169, r4170, r4171, r4172, r4173, r4174, r4175, r4176, r4177, r4178, r4179, r4180, r4181, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4169, r4170, r4171, r4172, r4173, r4174, r4175, r4176, r4177, r4178, r4179, r4180, r4181⟩

theorem dtk_rung112 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1095 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX112 rho : F), (dtkAccY112 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3661 : F), (rho 3662 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX112 rho : F), (dtkAccY112 rho : F)⟩
        ⟨(rho 3661 : F), (rho 3662 : F)⟩
        ⟨(dtkAccX113 rho : F), (dtkAccY113 rho : F)⟩
        ⟨(rho 3674 : F), (rho 3675 : F)⟩ := by
  obtain ⟨r4169, r4170, r4171, r4172, r4173, r4174, r4175, r4176, r4177, r4178, r4179, r4180, r4181⟩ := dtk_rows112 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4169 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc646 at r4169
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4169
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4170 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc647 at r4170
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4170
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4171 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc648 at r4171
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4171
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4172 at r4172
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4173 at r4173
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4174 at r4174
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4175 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc649 at r4175
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4175
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4176 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc650 at r4176
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4176
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4177 at r4177
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4178 at r4178
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4179 at r4179
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4180 at r4180
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4181 at r4181
  have hrung112 (bit : Bool) (hbit : rho 1095 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX112 rho : F), (dtkAccY112 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3661 : F), (rho 3662 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX112 rho : F), (dtkAccY112 rho : F)⟩
        ⟨(rho 3661 : F), (rho 3662 : F)⟩
        ⟨(dtkAccX113 rho : F), (dtkAccY113 rho : F)⟩
        ⟨(rho 3674 : F), (rho 3675 : F)⟩ := by
    have hnextx : dtkAccX113 rho = dtkAccX112 rho + rho 3669 := by
      unfold dtkAccX113 dtkAccX112
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 111]
      ring
    have hnexty : dtkAccY113 rho = dtkAccY112 rho + rho 3670 := by
      unfold dtkAccY113 dtkAccY112
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 112]
      ring
    have ha0 : (rho 3661 + rho 3662) * (dtkAccX112 rho + dtkAccY112 rho) = rho 3663 := by
      unfold dtkAccX112 dtkAccY112
      linear_combination r4169
    have ha1 : rho 3662 * dtkAccX112 rho = rho 3664 := by
      unfold dtkAccX112
      linear_combination r4170
    have ha2 : rho 3661 * dtkAccY112 rho = rho 3665 := by
      unfold dtkAccY112
      linear_combination r4171
    have ha3 : 3021 * rho 3664 * rho 3665 = rho 3666 := by
      linear_combination r4172
    have ha4 : rho 3667 * (1 + rho 3666) = rho 3664 + rho 3665 := by
      linear_combination r4173
    have ha5 : rho 3668 * (1 - rho 3666) = rho 3663 - rho 3664 - rho 3665 := by
      linear_combination r4174
    have haddx :
        rho 3667 * (1 + 3021 * (rho 3662 * dtkAccX112 rho) * (rho 3661 * dtkAccY112 rho)) =
          rho 3662 * dtkAccX112 rho + rho 3661 * dtkAccY112 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3668 * (1 - 3021 * (rho 3662 * dtkAccX112 rho) * (rho 3661 * dtkAccY112 rho)) =
          (-1) * (rho 3662 * dtkAccX112 rho) - rho 3661 * dtkAccY112 rho +
            (dtkAccY112 rho - dtkAccX112 rho * (-1)) * (rho 3661 + rho 3662) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3668 * (1 - rho 3666) = rho 3663 - rho 3664 - rho 3665 := ha5
        _ = (-1) * rho 3664 - rho 3665 + (dtkAccY112 rho - dtkAccX112 rho * (-1)) * (rho 3661 + rho 3662) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX113 rho = dtkAccX112 rho - Bool.toZMod bit * (dtkAccX112 rho - rho 3667) := by
      have hd : rho 3669 = Bool.toZMod bit * (rho 3667 - dtkAccX112 rho) := by
        rw [← hbit]
        unfold dtkAccX112
        linear_combination -r4175
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY113 rho = dtkAccY112 rho - Bool.toZMod bit * (dtkAccY112 rho - rho 3668) := by
      have hd : rho 3670 = Bool.toZMod bit * (rho 3668 - dtkAccY112 rho) := by
        rw [← hbit]
        unfold dtkAccY112
        linear_combination -r4176
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3661 * rho 3662 = rho 3671 := by linear_combination r4177
    have hd1 : rho 3661 * rho 3661 = rho 3672 := by linear_combination r4178
    have hd2 : rho 3662 * rho 3662 = rho 3673 := by linear_combination r4179
    have hd3 : rho 3674 * (rho 3662 * rho 3662 + rho 3661 * rho 3661 * (-1)) = 2 * (rho 3661 * rho 3662) := by
      rw [hd0, hd1, hd2]
      linear_combination r4180
    have hd4 : rho 3675 * (2 - (rho 3662 * rho 3662 + rho 3661 * rho 3661 * (-1))) = rho 3662 * rho 3662 - rho 3661 * rho 3661 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4181
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX112 rho : F), (dtkAccY112 rho : F)⟩
      ⟨(rho 3661 : F), (rho 3662 : F)⟩
      ⟨(rho 3667 : F), (rho 3668 : F)⟩
      ⟨(dtkAccX113 rho : F), (dtkAccY113 rho : F)⟩
      ⟨(rho 3674 : F), (rho 3675 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung112

theorem dtk_rows113 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4182 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4183 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4184 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4185 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4186 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4187 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4188 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4189 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4190 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4191 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4192 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4193 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4194 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p52, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart52 at p52
  rcases p52 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4182, r4183, r4184, r4185, r4186, r4187, r4188, r4189, r4190, r4191, r4192, r4193, r4194, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4182, r4183, r4184, r4185, r4186, r4187, r4188, r4189, r4190, r4191, r4192, r4193, r4194⟩

theorem dtk_rung113 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1096 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX113 rho : F), (dtkAccY113 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3674 : F), (rho 3675 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX113 rho : F), (dtkAccY113 rho : F)⟩
        ⟨(rho 3674 : F), (rho 3675 : F)⟩
        ⟨(dtkAccX114 rho : F), (dtkAccY114 rho : F)⟩
        ⟨(rho 3687 : F), (rho 3688 : F)⟩ := by
  obtain ⟨r4182, r4183, r4184, r4185, r4186, r4187, r4188, r4189, r4190, r4191, r4192, r4193, r4194⟩ := dtk_rows113 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4182 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc651 at r4182
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4182
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4183 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc652 at r4183
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4183
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4184 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc653 at r4184
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4184
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4185 at r4185
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4186 at r4186
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4187 at r4187
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4188 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc654 at r4188
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4188
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4189 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc655 at r4189
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4189
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4190 at r4190
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4191 at r4191
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4192 at r4192
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4193 at r4193
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4194 at r4194
  have hrung113 (bit : Bool) (hbit : rho 1096 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX113 rho : F), (dtkAccY113 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3674 : F), (rho 3675 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX113 rho : F), (dtkAccY113 rho : F)⟩
        ⟨(rho 3674 : F), (rho 3675 : F)⟩
        ⟨(dtkAccX114 rho : F), (dtkAccY114 rho : F)⟩
        ⟨(rho 3687 : F), (rho 3688 : F)⟩ := by
    have hnextx : dtkAccX114 rho = dtkAccX113 rho + rho 3682 := by
      unfold dtkAccX114 dtkAccX113
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 112]
      ring
    have hnexty : dtkAccY114 rho = dtkAccY113 rho + rho 3683 := by
      unfold dtkAccY114 dtkAccY113
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 113]
      ring
    have ha0 : (rho 3674 + rho 3675) * (dtkAccX113 rho + dtkAccY113 rho) = rho 3676 := by
      unfold dtkAccX113 dtkAccY113
      linear_combination r4182
    have ha1 : rho 3675 * dtkAccX113 rho = rho 3677 := by
      unfold dtkAccX113
      linear_combination r4183
    have ha2 : rho 3674 * dtkAccY113 rho = rho 3678 := by
      unfold dtkAccY113
      linear_combination r4184
    have ha3 : 3021 * rho 3677 * rho 3678 = rho 3679 := by
      linear_combination r4185
    have ha4 : rho 3680 * (1 + rho 3679) = rho 3677 + rho 3678 := by
      linear_combination r4186
    have ha5 : rho 3681 * (1 - rho 3679) = rho 3676 - rho 3677 - rho 3678 := by
      linear_combination r4187
    have haddx :
        rho 3680 * (1 + 3021 * (rho 3675 * dtkAccX113 rho) * (rho 3674 * dtkAccY113 rho)) =
          rho 3675 * dtkAccX113 rho + rho 3674 * dtkAccY113 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3681 * (1 - 3021 * (rho 3675 * dtkAccX113 rho) * (rho 3674 * dtkAccY113 rho)) =
          (-1) * (rho 3675 * dtkAccX113 rho) - rho 3674 * dtkAccY113 rho +
            (dtkAccY113 rho - dtkAccX113 rho * (-1)) * (rho 3674 + rho 3675) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3681 * (1 - rho 3679) = rho 3676 - rho 3677 - rho 3678 := ha5
        _ = (-1) * rho 3677 - rho 3678 + (dtkAccY113 rho - dtkAccX113 rho * (-1)) * (rho 3674 + rho 3675) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX114 rho = dtkAccX113 rho - Bool.toZMod bit * (dtkAccX113 rho - rho 3680) := by
      have hd : rho 3682 = Bool.toZMod bit * (rho 3680 - dtkAccX113 rho) := by
        rw [← hbit]
        unfold dtkAccX113
        linear_combination -r4188
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY114 rho = dtkAccY113 rho - Bool.toZMod bit * (dtkAccY113 rho - rho 3681) := by
      have hd : rho 3683 = Bool.toZMod bit * (rho 3681 - dtkAccY113 rho) := by
        rw [← hbit]
        unfold dtkAccY113
        linear_combination -r4189
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3674 * rho 3675 = rho 3684 := by linear_combination r4190
    have hd1 : rho 3674 * rho 3674 = rho 3685 := by linear_combination r4191
    have hd2 : rho 3675 * rho 3675 = rho 3686 := by linear_combination r4192
    have hd3 : rho 3687 * (rho 3675 * rho 3675 + rho 3674 * rho 3674 * (-1)) = 2 * (rho 3674 * rho 3675) := by
      rw [hd0, hd1, hd2]
      linear_combination r4193
    have hd4 : rho 3688 * (2 - (rho 3675 * rho 3675 + rho 3674 * rho 3674 * (-1))) = rho 3675 * rho 3675 - rho 3674 * rho 3674 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4194
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX113 rho : F), (dtkAccY113 rho : F)⟩
      ⟨(rho 3674 : F), (rho 3675 : F)⟩
      ⟨(rho 3680 : F), (rho 3681 : F)⟩
      ⟨(dtkAccX114 rho : F), (dtkAccY114 rho : F)⟩
      ⟨(rho 3687 : F), (rho 3688 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung113

theorem dtk_hstep_c18 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (983 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 108 ≤ i → i < 114 →
      EdwardsBridge.onCurve (dtkLadderAccState rho i) →
      EdwardsBridge.onCurve (dtkLadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (dtkLadderAccState rho i) (dtkLadderCurState rho i)
        (dtkLadderAccState rho (i + 1)) (dtkLadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact dtk_rung108 rho h bits[108]! (hbitAt 108 (by omega)) hacc hcur
  · exact dtk_rung109 rho h bits[109]! (hbitAt 109 (by omega)) hacc hcur
  · exact dtk_rung110 rho h bits[110]! (hbitAt 110 (by omega)) hacc hcur
  · exact dtk_rung111 rho h bits[111]! (hbitAt 111 (by omega)) hacc hcur
  · exact dtk_rung112 rho h bits[112]! (hbitAt 112 (by omega)) hacc hcur
  · exact dtk_rung113 rho h bits[113]! (hbitAt 113 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport
