import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDtkScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs

theorem dtk_rows114 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4195 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4196 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4197 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4198 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4199 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4200 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4201 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4202 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4203 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4204 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4205 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4206 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4207 rho := by
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
  rcases p52 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4195, r4196, r4197, r4198, r4199, r4200, r4201, r4202, r4203, r4204, r4205, r4206, r4207, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4195, r4196, r4197, r4198, r4199, r4200, r4201, r4202, r4203, r4204, r4205, r4206, r4207⟩

theorem dtk_rung114 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1097 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX114 rho : F), (dtkAccY114 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3687 : F), (rho 3688 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX114 rho : F), (dtkAccY114 rho : F)⟩
        ⟨(rho 3687 : F), (rho 3688 : F)⟩
        ⟨(dtkAccX115 rho : F), (dtkAccY115 rho : F)⟩
        ⟨(rho 3700 : F), (rho 3701 : F)⟩ := by
  obtain ⟨r4195, r4196, r4197, r4198, r4199, r4200, r4201, r4202, r4203, r4204, r4205, r4206, r4207⟩ := dtk_rows114 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4195 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc656 at r4195
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4195
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4196 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc657 at r4196
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4196
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4197 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc658 at r4197
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4197
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4198 at r4198
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4199 at r4199
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4200 at r4200
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4201 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc659 at r4201
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4201
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4202 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc660 at r4202
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4202
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4203 at r4203
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4204 at r4204
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4205 at r4205
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4206 at r4206
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4207 at r4207
  have hrung114 (bit : Bool) (hbit : rho 1097 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX114 rho : F), (dtkAccY114 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3687 : F), (rho 3688 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX114 rho : F), (dtkAccY114 rho : F)⟩
        ⟨(rho 3687 : F), (rho 3688 : F)⟩
        ⟨(dtkAccX115 rho : F), (dtkAccY115 rho : F)⟩
        ⟨(rho 3700 : F), (rho 3701 : F)⟩ := by
    have hnextx : dtkAccX115 rho = dtkAccX114 rho + rho 3695 := by
      unfold dtkAccX115 dtkAccX114
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 113]
      ring
    have hnexty : dtkAccY115 rho = dtkAccY114 rho + rho 3696 := by
      unfold dtkAccY115 dtkAccY114
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 114]
      ring
    have ha0 : (rho 3687 + rho 3688) * (dtkAccX114 rho + dtkAccY114 rho) = rho 3689 := by
      unfold dtkAccX114 dtkAccY114
      linear_combination r4195
    have ha1 : rho 3688 * dtkAccX114 rho = rho 3690 := by
      unfold dtkAccX114
      linear_combination r4196
    have ha2 : rho 3687 * dtkAccY114 rho = rho 3691 := by
      unfold dtkAccY114
      linear_combination r4197
    have ha3 : 3021 * rho 3690 * rho 3691 = rho 3692 := by
      linear_combination r4198
    have ha4 : rho 3693 * (1 + rho 3692) = rho 3690 + rho 3691 := by
      linear_combination r4199
    have ha5 : rho 3694 * (1 - rho 3692) = rho 3689 - rho 3690 - rho 3691 := by
      linear_combination r4200
    have haddx :
        rho 3693 * (1 + 3021 * (rho 3688 * dtkAccX114 rho) * (rho 3687 * dtkAccY114 rho)) =
          rho 3688 * dtkAccX114 rho + rho 3687 * dtkAccY114 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3694 * (1 - 3021 * (rho 3688 * dtkAccX114 rho) * (rho 3687 * dtkAccY114 rho)) =
          (-1) * (rho 3688 * dtkAccX114 rho) - rho 3687 * dtkAccY114 rho +
            (dtkAccY114 rho - dtkAccX114 rho * (-1)) * (rho 3687 + rho 3688) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3694 * (1 - rho 3692) = rho 3689 - rho 3690 - rho 3691 := ha5
        _ = (-1) * rho 3690 - rho 3691 + (dtkAccY114 rho - dtkAccX114 rho * (-1)) * (rho 3687 + rho 3688) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX115 rho = dtkAccX114 rho - Bool.toZMod bit * (dtkAccX114 rho - rho 3693) := by
      have hd : rho 3695 = Bool.toZMod bit * (rho 3693 - dtkAccX114 rho) := by
        rw [← hbit]
        unfold dtkAccX114
        linear_combination -r4201
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY115 rho = dtkAccY114 rho - Bool.toZMod bit * (dtkAccY114 rho - rho 3694) := by
      have hd : rho 3696 = Bool.toZMod bit * (rho 3694 - dtkAccY114 rho) := by
        rw [← hbit]
        unfold dtkAccY114
        linear_combination -r4202
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3687 * rho 3688 = rho 3697 := by linear_combination r4203
    have hd1 : rho 3687 * rho 3687 = rho 3698 := by linear_combination r4204
    have hd2 : rho 3688 * rho 3688 = rho 3699 := by linear_combination r4205
    have hd3 : rho 3700 * (rho 3688 * rho 3688 + rho 3687 * rho 3687 * (-1)) = 2 * (rho 3687 * rho 3688) := by
      rw [hd0, hd1, hd2]
      linear_combination r4206
    have hd4 : rho 3701 * (2 - (rho 3688 * rho 3688 + rho 3687 * rho 3687 * (-1))) = rho 3688 * rho 3688 - rho 3687 * rho 3687 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4207
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX114 rho : F), (dtkAccY114 rho : F)⟩
      ⟨(rho 3687 : F), (rho 3688 : F)⟩
      ⟨(rho 3693 : F), (rho 3694 : F)⟩
      ⟨(dtkAccX115 rho : F), (dtkAccY115 rho : F)⟩
      ⟨(rho 3700 : F), (rho 3701 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung114

theorem dtk_rows115 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4208 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4209 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4210 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4211 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4212 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4213 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4214 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4215 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4216 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4217 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4218 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4219 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4220 rho := by
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
  rcases p52 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4208, r4209, r4210, r4211, r4212, r4213, r4214, r4215, r4216, r4217, r4218, r4219, r4220, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4208, r4209, r4210, r4211, r4212, r4213, r4214, r4215, r4216, r4217, r4218, r4219, r4220⟩

theorem dtk_rung115 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1098 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX115 rho : F), (dtkAccY115 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3700 : F), (rho 3701 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX115 rho : F), (dtkAccY115 rho : F)⟩
        ⟨(rho 3700 : F), (rho 3701 : F)⟩
        ⟨(dtkAccX116 rho : F), (dtkAccY116 rho : F)⟩
        ⟨(rho 3713 : F), (rho 3714 : F)⟩ := by
  obtain ⟨r4208, r4209, r4210, r4211, r4212, r4213, r4214, r4215, r4216, r4217, r4218, r4219, r4220⟩ := dtk_rows115 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4208 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc661 at r4208
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4208
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4209 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc662 at r4209
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4209
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4210 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc663 at r4210
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4210
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4211 at r4211
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4212 at r4212
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4213 at r4213
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4214 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc664 at r4214
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4214
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4215 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc665 at r4215
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4215
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4216 at r4216
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4217 at r4217
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4218 at r4218
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4219 at r4219
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4220 at r4220
  have hrung115 (bit : Bool) (hbit : rho 1098 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX115 rho : F), (dtkAccY115 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3700 : F), (rho 3701 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX115 rho : F), (dtkAccY115 rho : F)⟩
        ⟨(rho 3700 : F), (rho 3701 : F)⟩
        ⟨(dtkAccX116 rho : F), (dtkAccY116 rho : F)⟩
        ⟨(rho 3713 : F), (rho 3714 : F)⟩ := by
    have hnextx : dtkAccX116 rho = dtkAccX115 rho + rho 3708 := by
      unfold dtkAccX116 dtkAccX115
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 114]
      ring
    have hnexty : dtkAccY116 rho = dtkAccY115 rho + rho 3709 := by
      unfold dtkAccY116 dtkAccY115
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 115]
      ring
    have ha0 : (rho 3700 + rho 3701) * (dtkAccX115 rho + dtkAccY115 rho) = rho 3702 := by
      unfold dtkAccX115 dtkAccY115
      linear_combination r4208
    have ha1 : rho 3701 * dtkAccX115 rho = rho 3703 := by
      unfold dtkAccX115
      linear_combination r4209
    have ha2 : rho 3700 * dtkAccY115 rho = rho 3704 := by
      unfold dtkAccY115
      linear_combination r4210
    have ha3 : 3021 * rho 3703 * rho 3704 = rho 3705 := by
      linear_combination r4211
    have ha4 : rho 3706 * (1 + rho 3705) = rho 3703 + rho 3704 := by
      linear_combination r4212
    have ha5 : rho 3707 * (1 - rho 3705) = rho 3702 - rho 3703 - rho 3704 := by
      linear_combination r4213
    have haddx :
        rho 3706 * (1 + 3021 * (rho 3701 * dtkAccX115 rho) * (rho 3700 * dtkAccY115 rho)) =
          rho 3701 * dtkAccX115 rho + rho 3700 * dtkAccY115 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3707 * (1 - 3021 * (rho 3701 * dtkAccX115 rho) * (rho 3700 * dtkAccY115 rho)) =
          (-1) * (rho 3701 * dtkAccX115 rho) - rho 3700 * dtkAccY115 rho +
            (dtkAccY115 rho - dtkAccX115 rho * (-1)) * (rho 3700 + rho 3701) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3707 * (1 - rho 3705) = rho 3702 - rho 3703 - rho 3704 := ha5
        _ = (-1) * rho 3703 - rho 3704 + (dtkAccY115 rho - dtkAccX115 rho * (-1)) * (rho 3700 + rho 3701) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX116 rho = dtkAccX115 rho - Bool.toZMod bit * (dtkAccX115 rho - rho 3706) := by
      have hd : rho 3708 = Bool.toZMod bit * (rho 3706 - dtkAccX115 rho) := by
        rw [← hbit]
        unfold dtkAccX115
        linear_combination -r4214
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY116 rho = dtkAccY115 rho - Bool.toZMod bit * (dtkAccY115 rho - rho 3707) := by
      have hd : rho 3709 = Bool.toZMod bit * (rho 3707 - dtkAccY115 rho) := by
        rw [← hbit]
        unfold dtkAccY115
        linear_combination -r4215
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3700 * rho 3701 = rho 3710 := by linear_combination r4216
    have hd1 : rho 3700 * rho 3700 = rho 3711 := by linear_combination r4217
    have hd2 : rho 3701 * rho 3701 = rho 3712 := by linear_combination r4218
    have hd3 : rho 3713 * (rho 3701 * rho 3701 + rho 3700 * rho 3700 * (-1)) = 2 * (rho 3700 * rho 3701) := by
      rw [hd0, hd1, hd2]
      linear_combination r4219
    have hd4 : rho 3714 * (2 - (rho 3701 * rho 3701 + rho 3700 * rho 3700 * (-1))) = rho 3701 * rho 3701 - rho 3700 * rho 3700 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4220
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX115 rho : F), (dtkAccY115 rho : F)⟩
      ⟨(rho 3700 : F), (rho 3701 : F)⟩
      ⟨(rho 3706 : F), (rho 3707 : F)⟩
      ⟨(dtkAccX116 rho : F), (dtkAccY116 rho : F)⟩
      ⟨(rho 3713 : F), (rho 3714 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung115

theorem dtk_rows116 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4221 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4222 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4223 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4224 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4225 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4226 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4227 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4228 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4229 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4230 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4231 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4232 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4233 rho := by
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
  rcases p52 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4221, r4222, r4223, r4224, r4225, r4226, r4227, r4228, r4229, r4230, r4231, r4232, r4233, _, _, _, _, _, _⟩
  exact ⟨r4221, r4222, r4223, r4224, r4225, r4226, r4227, r4228, r4229, r4230, r4231, r4232, r4233⟩

theorem dtk_rung116 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1099 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX116 rho : F), (dtkAccY116 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3713 : F), (rho 3714 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX116 rho : F), (dtkAccY116 rho : F)⟩
        ⟨(rho 3713 : F), (rho 3714 : F)⟩
        ⟨(dtkAccX117 rho : F), (dtkAccY117 rho : F)⟩
        ⟨(rho 3726 : F), (rho 3727 : F)⟩ := by
  obtain ⟨r4221, r4222, r4223, r4224, r4225, r4226, r4227, r4228, r4229, r4230, r4231, r4232, r4233⟩ := dtk_rows116 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4221 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc666 at r4221
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4221
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4222 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc667 at r4222
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4222
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4223 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc668 at r4223
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4223
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4224 at r4224
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4225 at r4225
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4226 at r4226
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4227 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc669 at r4227
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4227
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4228 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc670 at r4228
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4228
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4229 at r4229
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4230 at r4230
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4231 at r4231
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4232 at r4232
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4233 at r4233
  have hrung116 (bit : Bool) (hbit : rho 1099 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX116 rho : F), (dtkAccY116 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3713 : F), (rho 3714 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX116 rho : F), (dtkAccY116 rho : F)⟩
        ⟨(rho 3713 : F), (rho 3714 : F)⟩
        ⟨(dtkAccX117 rho : F), (dtkAccY117 rho : F)⟩
        ⟨(rho 3726 : F), (rho 3727 : F)⟩ := by
    have hnextx : dtkAccX117 rho = dtkAccX116 rho + rho 3721 := by
      unfold dtkAccX117 dtkAccX116
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 115]
      ring
    have hnexty : dtkAccY117 rho = dtkAccY116 rho + rho 3722 := by
      unfold dtkAccY117 dtkAccY116
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 116]
      ring
    have ha0 : (rho 3713 + rho 3714) * (dtkAccX116 rho + dtkAccY116 rho) = rho 3715 := by
      unfold dtkAccX116 dtkAccY116
      linear_combination r4221
    have ha1 : rho 3714 * dtkAccX116 rho = rho 3716 := by
      unfold dtkAccX116
      linear_combination r4222
    have ha2 : rho 3713 * dtkAccY116 rho = rho 3717 := by
      unfold dtkAccY116
      linear_combination r4223
    have ha3 : 3021 * rho 3716 * rho 3717 = rho 3718 := by
      linear_combination r4224
    have ha4 : rho 3719 * (1 + rho 3718) = rho 3716 + rho 3717 := by
      linear_combination r4225
    have ha5 : rho 3720 * (1 - rho 3718) = rho 3715 - rho 3716 - rho 3717 := by
      linear_combination r4226
    have haddx :
        rho 3719 * (1 + 3021 * (rho 3714 * dtkAccX116 rho) * (rho 3713 * dtkAccY116 rho)) =
          rho 3714 * dtkAccX116 rho + rho 3713 * dtkAccY116 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3720 * (1 - 3021 * (rho 3714 * dtkAccX116 rho) * (rho 3713 * dtkAccY116 rho)) =
          (-1) * (rho 3714 * dtkAccX116 rho) - rho 3713 * dtkAccY116 rho +
            (dtkAccY116 rho - dtkAccX116 rho * (-1)) * (rho 3713 + rho 3714) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3720 * (1 - rho 3718) = rho 3715 - rho 3716 - rho 3717 := ha5
        _ = (-1) * rho 3716 - rho 3717 + (dtkAccY116 rho - dtkAccX116 rho * (-1)) * (rho 3713 + rho 3714) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX117 rho = dtkAccX116 rho - Bool.toZMod bit * (dtkAccX116 rho - rho 3719) := by
      have hd : rho 3721 = Bool.toZMod bit * (rho 3719 - dtkAccX116 rho) := by
        rw [← hbit]
        unfold dtkAccX116
        linear_combination -r4227
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY117 rho = dtkAccY116 rho - Bool.toZMod bit * (dtkAccY116 rho - rho 3720) := by
      have hd : rho 3722 = Bool.toZMod bit * (rho 3720 - dtkAccY116 rho) := by
        rw [← hbit]
        unfold dtkAccY116
        linear_combination -r4228
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3713 * rho 3714 = rho 3723 := by linear_combination r4229
    have hd1 : rho 3713 * rho 3713 = rho 3724 := by linear_combination r4230
    have hd2 : rho 3714 * rho 3714 = rho 3725 := by linear_combination r4231
    have hd3 : rho 3726 * (rho 3714 * rho 3714 + rho 3713 * rho 3713 * (-1)) = 2 * (rho 3713 * rho 3714) := by
      rw [hd0, hd1, hd2]
      linear_combination r4232
    have hd4 : rho 3727 * (2 - (rho 3714 * rho 3714 + rho 3713 * rho 3713 * (-1))) = rho 3714 * rho 3714 - rho 3713 * rho 3713 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4233
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX116 rho : F), (dtkAccY116 rho : F)⟩
      ⟨(rho 3713 : F), (rho 3714 : F)⟩
      ⟨(rho 3719 : F), (rho 3720 : F)⟩
      ⟨(dtkAccX117 rho : F), (dtkAccY117 rho : F)⟩
      ⟨(rho 3726 : F), (rho 3727 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung116

theorem dtk_rows117 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4234 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4235 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4236 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4237 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4238 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4239 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4240 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4241 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4242 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4243 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4244 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4245 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4246 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p52, p53, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart52 at p52
  rcases p52 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4234, r4235, r4236, r4237, r4238, r4239⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart53 at p53
  rcases p53 with ⟨r4240, r4241, r4242, r4243, r4244, r4245, r4246, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4234, r4235, r4236, r4237, r4238, r4239, r4240, r4241, r4242, r4243, r4244, r4245, r4246⟩

theorem dtk_rung117 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1100 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX117 rho : F), (dtkAccY117 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3726 : F), (rho 3727 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX117 rho : F), (dtkAccY117 rho : F)⟩
        ⟨(rho 3726 : F), (rho 3727 : F)⟩
        ⟨(dtkAccX118 rho : F), (dtkAccY118 rho : F)⟩
        ⟨(rho 3739 : F), (rho 3740 : F)⟩ := by
  obtain ⟨r4234, r4235, r4236, r4237, r4238, r4239, r4240, r4241, r4242, r4243, r4244, r4245, r4246⟩ := dtk_rows117 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4234 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc671 at r4234
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4234
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4235 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc672 at r4235
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4235
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4236 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc673 at r4236
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4236
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4237 at r4237
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4238 at r4238
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4239 at r4239
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4240 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc674 at r4240
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4240
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4241 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc675 at r4241
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4241
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4242 at r4242
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4243 at r4243
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4244 at r4244
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4245 at r4245
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4246 at r4246
  have hrung117 (bit : Bool) (hbit : rho 1100 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX117 rho : F), (dtkAccY117 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3726 : F), (rho 3727 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX117 rho : F), (dtkAccY117 rho : F)⟩
        ⟨(rho 3726 : F), (rho 3727 : F)⟩
        ⟨(dtkAccX118 rho : F), (dtkAccY118 rho : F)⟩
        ⟨(rho 3739 : F), (rho 3740 : F)⟩ := by
    have hnextx : dtkAccX118 rho = dtkAccX117 rho + rho 3734 := by
      unfold dtkAccX118 dtkAccX117
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 116]
      ring
    have hnexty : dtkAccY118 rho = dtkAccY117 rho + rho 3735 := by
      unfold dtkAccY118 dtkAccY117
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 117]
      ring
    have ha0 : (rho 3726 + rho 3727) * (dtkAccX117 rho + dtkAccY117 rho) = rho 3728 := by
      unfold dtkAccX117 dtkAccY117
      linear_combination r4234
    have ha1 : rho 3727 * dtkAccX117 rho = rho 3729 := by
      unfold dtkAccX117
      linear_combination r4235
    have ha2 : rho 3726 * dtkAccY117 rho = rho 3730 := by
      unfold dtkAccY117
      linear_combination r4236
    have ha3 : 3021 * rho 3729 * rho 3730 = rho 3731 := by
      linear_combination r4237
    have ha4 : rho 3732 * (1 + rho 3731) = rho 3729 + rho 3730 := by
      linear_combination r4238
    have ha5 : rho 3733 * (1 - rho 3731) = rho 3728 - rho 3729 - rho 3730 := by
      linear_combination r4239
    have haddx :
        rho 3732 * (1 + 3021 * (rho 3727 * dtkAccX117 rho) * (rho 3726 * dtkAccY117 rho)) =
          rho 3727 * dtkAccX117 rho + rho 3726 * dtkAccY117 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3733 * (1 - 3021 * (rho 3727 * dtkAccX117 rho) * (rho 3726 * dtkAccY117 rho)) =
          (-1) * (rho 3727 * dtkAccX117 rho) - rho 3726 * dtkAccY117 rho +
            (dtkAccY117 rho - dtkAccX117 rho * (-1)) * (rho 3726 + rho 3727) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3733 * (1 - rho 3731) = rho 3728 - rho 3729 - rho 3730 := ha5
        _ = (-1) * rho 3729 - rho 3730 + (dtkAccY117 rho - dtkAccX117 rho * (-1)) * (rho 3726 + rho 3727) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX118 rho = dtkAccX117 rho - Bool.toZMod bit * (dtkAccX117 rho - rho 3732) := by
      have hd : rho 3734 = Bool.toZMod bit * (rho 3732 - dtkAccX117 rho) := by
        rw [← hbit]
        unfold dtkAccX117
        linear_combination -r4240
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY118 rho = dtkAccY117 rho - Bool.toZMod bit * (dtkAccY117 rho - rho 3733) := by
      have hd : rho 3735 = Bool.toZMod bit * (rho 3733 - dtkAccY117 rho) := by
        rw [← hbit]
        unfold dtkAccY117
        linear_combination -r4241
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3726 * rho 3727 = rho 3736 := by linear_combination r4242
    have hd1 : rho 3726 * rho 3726 = rho 3737 := by linear_combination r4243
    have hd2 : rho 3727 * rho 3727 = rho 3738 := by linear_combination r4244
    have hd3 : rho 3739 * (rho 3727 * rho 3727 + rho 3726 * rho 3726 * (-1)) = 2 * (rho 3726 * rho 3727) := by
      rw [hd0, hd1, hd2]
      linear_combination r4245
    have hd4 : rho 3740 * (2 - (rho 3727 * rho 3727 + rho 3726 * rho 3726 * (-1))) = rho 3727 * rho 3727 - rho 3726 * rho 3726 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4246
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX117 rho : F), (dtkAccY117 rho : F)⟩
      ⟨(rho 3726 : F), (rho 3727 : F)⟩
      ⟨(rho 3732 : F), (rho 3733 : F)⟩
      ⟨(dtkAccX118 rho : F), (dtkAccY118 rho : F)⟩
      ⟨(rho 3739 : F), (rho 3740 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung117

theorem dtk_rows118 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4247 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4248 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4249 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4250 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4251 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4252 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4253 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4254 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4255 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4256 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4257 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4258 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4259 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p53, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart53 at p53
  rcases p53 with ⟨_, _, _, _, _, _, _, r4247, r4248, r4249, r4250, r4251, r4252, r4253, r4254, r4255, r4256, r4257, r4258, r4259, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4247, r4248, r4249, r4250, r4251, r4252, r4253, r4254, r4255, r4256, r4257, r4258, r4259⟩

theorem dtk_rung118 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1101 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX118 rho : F), (dtkAccY118 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3739 : F), (rho 3740 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX118 rho : F), (dtkAccY118 rho : F)⟩
        ⟨(rho 3739 : F), (rho 3740 : F)⟩
        ⟨(dtkAccX119 rho : F), (dtkAccY119 rho : F)⟩
        ⟨(rho 3752 : F), (rho 3753 : F)⟩ := by
  obtain ⟨r4247, r4248, r4249, r4250, r4251, r4252, r4253, r4254, r4255, r4256, r4257, r4258, r4259⟩ := dtk_rows118 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4247 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc676 at r4247
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4247
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4248 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc677 at r4248
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4248
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4249 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc678 at r4249
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4249
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4250 at r4250
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4251 at r4251
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4252 at r4252
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4253 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc679 at r4253
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4253
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4254 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc680 at r4254
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4254
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4255 at r4255
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4256 at r4256
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4257 at r4257
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4258 at r4258
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4259 at r4259
  have hrung118 (bit : Bool) (hbit : rho 1101 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX118 rho : F), (dtkAccY118 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3739 : F), (rho 3740 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX118 rho : F), (dtkAccY118 rho : F)⟩
        ⟨(rho 3739 : F), (rho 3740 : F)⟩
        ⟨(dtkAccX119 rho : F), (dtkAccY119 rho : F)⟩
        ⟨(rho 3752 : F), (rho 3753 : F)⟩ := by
    have hnextx : dtkAccX119 rho = dtkAccX118 rho + rho 3747 := by
      unfold dtkAccX119 dtkAccX118
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 117]
      ring
    have hnexty : dtkAccY119 rho = dtkAccY118 rho + rho 3748 := by
      unfold dtkAccY119 dtkAccY118
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 118]
      ring
    have ha0 : (rho 3739 + rho 3740) * (dtkAccX118 rho + dtkAccY118 rho) = rho 3741 := by
      unfold dtkAccX118 dtkAccY118
      linear_combination r4247
    have ha1 : rho 3740 * dtkAccX118 rho = rho 3742 := by
      unfold dtkAccX118
      linear_combination r4248
    have ha2 : rho 3739 * dtkAccY118 rho = rho 3743 := by
      unfold dtkAccY118
      linear_combination r4249
    have ha3 : 3021 * rho 3742 * rho 3743 = rho 3744 := by
      linear_combination r4250
    have ha4 : rho 3745 * (1 + rho 3744) = rho 3742 + rho 3743 := by
      linear_combination r4251
    have ha5 : rho 3746 * (1 - rho 3744) = rho 3741 - rho 3742 - rho 3743 := by
      linear_combination r4252
    have haddx :
        rho 3745 * (1 + 3021 * (rho 3740 * dtkAccX118 rho) * (rho 3739 * dtkAccY118 rho)) =
          rho 3740 * dtkAccX118 rho + rho 3739 * dtkAccY118 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3746 * (1 - 3021 * (rho 3740 * dtkAccX118 rho) * (rho 3739 * dtkAccY118 rho)) =
          (-1) * (rho 3740 * dtkAccX118 rho) - rho 3739 * dtkAccY118 rho +
            (dtkAccY118 rho - dtkAccX118 rho * (-1)) * (rho 3739 + rho 3740) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3746 * (1 - rho 3744) = rho 3741 - rho 3742 - rho 3743 := ha5
        _ = (-1) * rho 3742 - rho 3743 + (dtkAccY118 rho - dtkAccX118 rho * (-1)) * (rho 3739 + rho 3740) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX119 rho = dtkAccX118 rho - Bool.toZMod bit * (dtkAccX118 rho - rho 3745) := by
      have hd : rho 3747 = Bool.toZMod bit * (rho 3745 - dtkAccX118 rho) := by
        rw [← hbit]
        unfold dtkAccX118
        linear_combination -r4253
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY119 rho = dtkAccY118 rho - Bool.toZMod bit * (dtkAccY118 rho - rho 3746) := by
      have hd : rho 3748 = Bool.toZMod bit * (rho 3746 - dtkAccY118 rho) := by
        rw [← hbit]
        unfold dtkAccY118
        linear_combination -r4254
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3739 * rho 3740 = rho 3749 := by linear_combination r4255
    have hd1 : rho 3739 * rho 3739 = rho 3750 := by linear_combination r4256
    have hd2 : rho 3740 * rho 3740 = rho 3751 := by linear_combination r4257
    have hd3 : rho 3752 * (rho 3740 * rho 3740 + rho 3739 * rho 3739 * (-1)) = 2 * (rho 3739 * rho 3740) := by
      rw [hd0, hd1, hd2]
      linear_combination r4258
    have hd4 : rho 3753 * (2 - (rho 3740 * rho 3740 + rho 3739 * rho 3739 * (-1))) = rho 3740 * rho 3740 - rho 3739 * rho 3739 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4259
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX118 rho : F), (dtkAccY118 rho : F)⟩
      ⟨(rho 3739 : F), (rho 3740 : F)⟩
      ⟨(rho 3745 : F), (rho 3746 : F)⟩
      ⟨(dtkAccX119 rho : F), (dtkAccY119 rho : F)⟩
      ⟨(rho 3752 : F), (rho 3753 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung118

theorem dtk_rows119 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4260 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4261 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4262 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4263 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4264 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4265 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4266 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4267 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4268 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4269 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4270 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4271 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4272 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p53, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart53 at p53
  rcases p53 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4260, r4261, r4262, r4263, r4264, r4265, r4266, r4267, r4268, r4269, r4270, r4271, r4272, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4260, r4261, r4262, r4263, r4264, r4265, r4266, r4267, r4268, r4269, r4270, r4271, r4272⟩

theorem dtk_rung119 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1102 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX119 rho : F), (dtkAccY119 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3752 : F), (rho 3753 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX119 rho : F), (dtkAccY119 rho : F)⟩
        ⟨(rho 3752 : F), (rho 3753 : F)⟩
        ⟨(dtkAccX120 rho : F), (dtkAccY120 rho : F)⟩
        ⟨(rho 3765 : F), (rho 3766 : F)⟩ := by
  obtain ⟨r4260, r4261, r4262, r4263, r4264, r4265, r4266, r4267, r4268, r4269, r4270, r4271, r4272⟩ := dtk_rows119 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4260 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc681 at r4260
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4260
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4261 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc682 at r4261
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4261
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4262 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc683 at r4262
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4262
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4263 at r4263
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4264 at r4264
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4265 at r4265
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4266 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc684 at r4266
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4266
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4267 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc685 at r4267
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4267
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4268 at r4268
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4269 at r4269
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4270 at r4270
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4271 at r4271
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4272 at r4272
  have hrung119 (bit : Bool) (hbit : rho 1102 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX119 rho : F), (dtkAccY119 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3752 : F), (rho 3753 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX119 rho : F), (dtkAccY119 rho : F)⟩
        ⟨(rho 3752 : F), (rho 3753 : F)⟩
        ⟨(dtkAccX120 rho : F), (dtkAccY120 rho : F)⟩
        ⟨(rho 3765 : F), (rho 3766 : F)⟩ := by
    have hnextx : dtkAccX120 rho = dtkAccX119 rho + rho 3760 := by
      unfold dtkAccX120 dtkAccX119
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 118]
      ring
    have hnexty : dtkAccY120 rho = dtkAccY119 rho + rho 3761 := by
      unfold dtkAccY120 dtkAccY119
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 119]
      ring
    have ha0 : (rho 3752 + rho 3753) * (dtkAccX119 rho + dtkAccY119 rho) = rho 3754 := by
      unfold dtkAccX119 dtkAccY119
      linear_combination r4260
    have ha1 : rho 3753 * dtkAccX119 rho = rho 3755 := by
      unfold dtkAccX119
      linear_combination r4261
    have ha2 : rho 3752 * dtkAccY119 rho = rho 3756 := by
      unfold dtkAccY119
      linear_combination r4262
    have ha3 : 3021 * rho 3755 * rho 3756 = rho 3757 := by
      linear_combination r4263
    have ha4 : rho 3758 * (1 + rho 3757) = rho 3755 + rho 3756 := by
      linear_combination r4264
    have ha5 : rho 3759 * (1 - rho 3757) = rho 3754 - rho 3755 - rho 3756 := by
      linear_combination r4265
    have haddx :
        rho 3758 * (1 + 3021 * (rho 3753 * dtkAccX119 rho) * (rho 3752 * dtkAccY119 rho)) =
          rho 3753 * dtkAccX119 rho + rho 3752 * dtkAccY119 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3759 * (1 - 3021 * (rho 3753 * dtkAccX119 rho) * (rho 3752 * dtkAccY119 rho)) =
          (-1) * (rho 3753 * dtkAccX119 rho) - rho 3752 * dtkAccY119 rho +
            (dtkAccY119 rho - dtkAccX119 rho * (-1)) * (rho 3752 + rho 3753) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3759 * (1 - rho 3757) = rho 3754 - rho 3755 - rho 3756 := ha5
        _ = (-1) * rho 3755 - rho 3756 + (dtkAccY119 rho - dtkAccX119 rho * (-1)) * (rho 3752 + rho 3753) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX120 rho = dtkAccX119 rho - Bool.toZMod bit * (dtkAccX119 rho - rho 3758) := by
      have hd : rho 3760 = Bool.toZMod bit * (rho 3758 - dtkAccX119 rho) := by
        rw [← hbit]
        unfold dtkAccX119
        linear_combination -r4266
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY120 rho = dtkAccY119 rho - Bool.toZMod bit * (dtkAccY119 rho - rho 3759) := by
      have hd : rho 3761 = Bool.toZMod bit * (rho 3759 - dtkAccY119 rho) := by
        rw [← hbit]
        unfold dtkAccY119
        linear_combination -r4267
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3752 * rho 3753 = rho 3762 := by linear_combination r4268
    have hd1 : rho 3752 * rho 3752 = rho 3763 := by linear_combination r4269
    have hd2 : rho 3753 * rho 3753 = rho 3764 := by linear_combination r4270
    have hd3 : rho 3765 * (rho 3753 * rho 3753 + rho 3752 * rho 3752 * (-1)) = 2 * (rho 3752 * rho 3753) := by
      rw [hd0, hd1, hd2]
      linear_combination r4271
    have hd4 : rho 3766 * (2 - (rho 3753 * rho 3753 + rho 3752 * rho 3752 * (-1))) = rho 3753 * rho 3753 - rho 3752 * rho 3752 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4272
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX119 rho : F), (dtkAccY119 rho : F)⟩
      ⟨(rho 3752 : F), (rho 3753 : F)⟩
      ⟨(rho 3758 : F), (rho 3759 : F)⟩
      ⟨(dtkAccX120 rho : F), (dtkAccY120 rho : F)⟩
      ⟨(rho 3765 : F), (rho 3766 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung119

theorem dtk_hstep_c19 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (983 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 114 ≤ i → i < 120 →
      EdwardsBridge.onCurve (dtkLadderAccState rho i) →
      EdwardsBridge.onCurve (dtkLadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (dtkLadderAccState rho i) (dtkLadderCurState rho i)
        (dtkLadderAccState rho (i + 1)) (dtkLadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact dtk_rung114 rho h bits[114]! (hbitAt 114 (by omega)) hacc hcur
  · exact dtk_rung115 rho h bits[115]! (hbitAt 115 (by omega)) hacc hcur
  · exact dtk_rung116 rho h bits[116]! (hbitAt 116 (by omega)) hacc hcur
  · exact dtk_rung117 rho h bits[117]! (hbitAt 117 (by omega)) hacc hcur
  · exact dtk_rung118 rho h bits[118]! (hbitAt 118 (by omega)) hacc hcur
  · exact dtk_rung119 rho h bits[119]! (hbitAt 119 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport
