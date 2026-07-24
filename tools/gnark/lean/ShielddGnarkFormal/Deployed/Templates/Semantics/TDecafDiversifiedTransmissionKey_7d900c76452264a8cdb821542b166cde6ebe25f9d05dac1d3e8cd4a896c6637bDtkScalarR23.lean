import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDtkScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs

theorem dtk_rows138 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4507 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4508 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4509 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4510 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4511 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4512 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4513 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4514 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4515 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4516 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4517 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4518 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4519 rho := by
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
  rcases p56 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4507, r4508, r4509, r4510, r4511, r4512, r4513, r4514, r4515, r4516, r4517, r4518, r4519, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4507, r4508, r4509, r4510, r4511, r4512, r4513, r4514, r4515, r4516, r4517, r4518, r4519⟩

theorem dtk_rung138 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1121 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX138 rho : F), (dtkAccY138 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3999 : F), (rho 4000 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX138 rho : F), (dtkAccY138 rho : F)⟩
        ⟨(rho 3999 : F), (rho 4000 : F)⟩
        ⟨(dtkAccX139 rho : F), (dtkAccY139 rho : F)⟩
        ⟨(rho 4012 : F), (rho 4013 : F)⟩ := by
  obtain ⟨r4507, r4508, r4509, r4510, r4511, r4512, r4513, r4514, r4515, r4516, r4517, r4518, r4519⟩ := dtk_rows138 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4507 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc776 at r4507
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4507
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4508 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc777 at r4508
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4508
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4509 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc778 at r4509
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4509
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4510 at r4510
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4511 at r4511
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4512 at r4512
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4513 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc779 at r4513
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4513
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4514 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc780 at r4514
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4514
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4515 at r4515
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4516 at r4516
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4517 at r4517
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4518 at r4518
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4519 at r4519
  have hrung138 (bit : Bool) (hbit : rho 1121 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX138 rho : F), (dtkAccY138 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3999 : F), (rho 4000 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX138 rho : F), (dtkAccY138 rho : F)⟩
        ⟨(rho 3999 : F), (rho 4000 : F)⟩
        ⟨(dtkAccX139 rho : F), (dtkAccY139 rho : F)⟩
        ⟨(rho 4012 : F), (rho 4013 : F)⟩ := by
    have hnextx : dtkAccX139 rho = dtkAccX138 rho + rho 4007 := by
      unfold dtkAccX139 dtkAccX138
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 137]
      ring
    have hnexty : dtkAccY139 rho = dtkAccY138 rho + rho 4008 := by
      unfold dtkAccY139 dtkAccY138
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 138]
      ring
    have ha0 : (rho 3999 + rho 4000) * (dtkAccX138 rho + dtkAccY138 rho) = rho 4001 := by
      unfold dtkAccX138 dtkAccY138
      linear_combination r4507
    have ha1 : rho 4000 * dtkAccX138 rho = rho 4002 := by
      unfold dtkAccX138
      linear_combination r4508
    have ha2 : rho 3999 * dtkAccY138 rho = rho 4003 := by
      unfold dtkAccY138
      linear_combination r4509
    have ha3 : 3021 * rho 4002 * rho 4003 = rho 4004 := by
      linear_combination r4510
    have ha4 : rho 4005 * (1 + rho 4004) = rho 4002 + rho 4003 := by
      linear_combination r4511
    have ha5 : rho 4006 * (1 - rho 4004) = rho 4001 - rho 4002 - rho 4003 := by
      linear_combination r4512
    have haddx :
        rho 4005 * (1 + 3021 * (rho 4000 * dtkAccX138 rho) * (rho 3999 * dtkAccY138 rho)) =
          rho 4000 * dtkAccX138 rho + rho 3999 * dtkAccY138 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4006 * (1 - 3021 * (rho 4000 * dtkAccX138 rho) * (rho 3999 * dtkAccY138 rho)) =
          (-1) * (rho 4000 * dtkAccX138 rho) - rho 3999 * dtkAccY138 rho +
            (dtkAccY138 rho - dtkAccX138 rho * (-1)) * (rho 3999 + rho 4000) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4006 * (1 - rho 4004) = rho 4001 - rho 4002 - rho 4003 := ha5
        _ = (-1) * rho 4002 - rho 4003 + (dtkAccY138 rho - dtkAccX138 rho * (-1)) * (rho 3999 + rho 4000) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX139 rho = dtkAccX138 rho - Bool.toZMod bit * (dtkAccX138 rho - rho 4005) := by
      have hd : rho 4007 = Bool.toZMod bit * (rho 4005 - dtkAccX138 rho) := by
        rw [← hbit]
        unfold dtkAccX138
        linear_combination -r4513
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY139 rho = dtkAccY138 rho - Bool.toZMod bit * (dtkAccY138 rho - rho 4006) := by
      have hd : rho 4008 = Bool.toZMod bit * (rho 4006 - dtkAccY138 rho) := by
        rw [← hbit]
        unfold dtkAccY138
        linear_combination -r4514
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3999 * rho 4000 = rho 4009 := by linear_combination r4515
    have hd1 : rho 3999 * rho 3999 = rho 4010 := by linear_combination r4516
    have hd2 : rho 4000 * rho 4000 = rho 4011 := by linear_combination r4517
    have hd3 : rho 4012 * (rho 4000 * rho 4000 + rho 3999 * rho 3999 * (-1)) = 2 * (rho 3999 * rho 4000) := by
      rw [hd0, hd1, hd2]
      linear_combination r4518
    have hd4 : rho 4013 * (2 - (rho 4000 * rho 4000 + rho 3999 * rho 3999 * (-1))) = rho 4000 * rho 4000 - rho 3999 * rho 3999 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4519
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX138 rho : F), (dtkAccY138 rho : F)⟩
      ⟨(rho 3999 : F), (rho 4000 : F)⟩
      ⟨(rho 4005 : F), (rho 4006 : F)⟩
      ⟨(dtkAccX139 rho : F), (dtkAccY139 rho : F)⟩
      ⟨(rho 4012 : F), (rho 4013 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung138

theorem dtk_rows139 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4520 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4521 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4522 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4523 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4524 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4525 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4526 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4527 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4528 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4529 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4530 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4531 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4532 rho := by
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
  rcases p56 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4520, r4521, r4522, r4523, r4524, r4525, r4526, r4527, r4528, r4529, r4530, r4531, r4532, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4520, r4521, r4522, r4523, r4524, r4525, r4526, r4527, r4528, r4529, r4530, r4531, r4532⟩

theorem dtk_rung139 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1122 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX139 rho : F), (dtkAccY139 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4012 : F), (rho 4013 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX139 rho : F), (dtkAccY139 rho : F)⟩
        ⟨(rho 4012 : F), (rho 4013 : F)⟩
        ⟨(dtkAccX140 rho : F), (dtkAccY140 rho : F)⟩
        ⟨(rho 4025 : F), (rho 4026 : F)⟩ := by
  obtain ⟨r4520, r4521, r4522, r4523, r4524, r4525, r4526, r4527, r4528, r4529, r4530, r4531, r4532⟩ := dtk_rows139 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4520 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc781 at r4520
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4520
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4521 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc782 at r4521
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4521
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4522 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc783 at r4522
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4522
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4523 at r4523
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4524 at r4524
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4525 at r4525
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4526 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc784 at r4526
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4526
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4527 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc785 at r4527
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4527
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4528 at r4528
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4529 at r4529
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4530 at r4530
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4531 at r4531
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4532 at r4532
  have hrung139 (bit : Bool) (hbit : rho 1122 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX139 rho : F), (dtkAccY139 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4012 : F), (rho 4013 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX139 rho : F), (dtkAccY139 rho : F)⟩
        ⟨(rho 4012 : F), (rho 4013 : F)⟩
        ⟨(dtkAccX140 rho : F), (dtkAccY140 rho : F)⟩
        ⟨(rho 4025 : F), (rho 4026 : F)⟩ := by
    have hnextx : dtkAccX140 rho = dtkAccX139 rho + rho 4020 := by
      unfold dtkAccX140 dtkAccX139
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 138]
      ring
    have hnexty : dtkAccY140 rho = dtkAccY139 rho + rho 4021 := by
      unfold dtkAccY140 dtkAccY139
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 139]
      ring
    have ha0 : (rho 4012 + rho 4013) * (dtkAccX139 rho + dtkAccY139 rho) = rho 4014 := by
      unfold dtkAccX139 dtkAccY139
      linear_combination r4520
    have ha1 : rho 4013 * dtkAccX139 rho = rho 4015 := by
      unfold dtkAccX139
      linear_combination r4521
    have ha2 : rho 4012 * dtkAccY139 rho = rho 4016 := by
      unfold dtkAccY139
      linear_combination r4522
    have ha3 : 3021 * rho 4015 * rho 4016 = rho 4017 := by
      linear_combination r4523
    have ha4 : rho 4018 * (1 + rho 4017) = rho 4015 + rho 4016 := by
      linear_combination r4524
    have ha5 : rho 4019 * (1 - rho 4017) = rho 4014 - rho 4015 - rho 4016 := by
      linear_combination r4525
    have haddx :
        rho 4018 * (1 + 3021 * (rho 4013 * dtkAccX139 rho) * (rho 4012 * dtkAccY139 rho)) =
          rho 4013 * dtkAccX139 rho + rho 4012 * dtkAccY139 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4019 * (1 - 3021 * (rho 4013 * dtkAccX139 rho) * (rho 4012 * dtkAccY139 rho)) =
          (-1) * (rho 4013 * dtkAccX139 rho) - rho 4012 * dtkAccY139 rho +
            (dtkAccY139 rho - dtkAccX139 rho * (-1)) * (rho 4012 + rho 4013) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4019 * (1 - rho 4017) = rho 4014 - rho 4015 - rho 4016 := ha5
        _ = (-1) * rho 4015 - rho 4016 + (dtkAccY139 rho - dtkAccX139 rho * (-1)) * (rho 4012 + rho 4013) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX140 rho = dtkAccX139 rho - Bool.toZMod bit * (dtkAccX139 rho - rho 4018) := by
      have hd : rho 4020 = Bool.toZMod bit * (rho 4018 - dtkAccX139 rho) := by
        rw [← hbit]
        unfold dtkAccX139
        linear_combination -r4526
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY140 rho = dtkAccY139 rho - Bool.toZMod bit * (dtkAccY139 rho - rho 4019) := by
      have hd : rho 4021 = Bool.toZMod bit * (rho 4019 - dtkAccY139 rho) := by
        rw [← hbit]
        unfold dtkAccY139
        linear_combination -r4527
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4012 * rho 4013 = rho 4022 := by linear_combination r4528
    have hd1 : rho 4012 * rho 4012 = rho 4023 := by linear_combination r4529
    have hd2 : rho 4013 * rho 4013 = rho 4024 := by linear_combination r4530
    have hd3 : rho 4025 * (rho 4013 * rho 4013 + rho 4012 * rho 4012 * (-1)) = 2 * (rho 4012 * rho 4013) := by
      rw [hd0, hd1, hd2]
      linear_combination r4531
    have hd4 : rho 4026 * (2 - (rho 4013 * rho 4013 + rho 4012 * rho 4012 * (-1))) = rho 4013 * rho 4013 - rho 4012 * rho 4012 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4532
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX139 rho : F), (dtkAccY139 rho : F)⟩
      ⟨(rho 4012 : F), (rho 4013 : F)⟩
      ⟨(rho 4018 : F), (rho 4019 : F)⟩
      ⟨(dtkAccX140 rho : F), (dtkAccY140 rho : F)⟩
      ⟨(rho 4025 : F), (rho 4026 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung139

theorem dtk_rows140 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4533 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4534 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4535 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4536 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4537 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4538 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4539 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4540 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4541 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4542 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4543 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4544 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4545 rho := by
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
  rcases p56 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4533, r4534, r4535, r4536, r4537, r4538, r4539, r4540, r4541, r4542, r4543, r4544, r4545, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4533, r4534, r4535, r4536, r4537, r4538, r4539, r4540, r4541, r4542, r4543, r4544, r4545⟩

theorem dtk_rung140 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1123 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX140 rho : F), (dtkAccY140 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4025 : F), (rho 4026 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX140 rho : F), (dtkAccY140 rho : F)⟩
        ⟨(rho 4025 : F), (rho 4026 : F)⟩
        ⟨(dtkAccX141 rho : F), (dtkAccY141 rho : F)⟩
        ⟨(rho 4038 : F), (rho 4039 : F)⟩ := by
  obtain ⟨r4533, r4534, r4535, r4536, r4537, r4538, r4539, r4540, r4541, r4542, r4543, r4544, r4545⟩ := dtk_rows140 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4533 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc786 at r4533
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4533
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4534 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc787 at r4534
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4534
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4535 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc788 at r4535
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4535
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4536 at r4536
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4537 at r4537
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4538 at r4538
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4539 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc789 at r4539
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4539
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4540 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc790 at r4540
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4540
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4541 at r4541
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4542 at r4542
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4543 at r4543
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4544 at r4544
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4545 at r4545
  have hrung140 (bit : Bool) (hbit : rho 1123 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX140 rho : F), (dtkAccY140 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4025 : F), (rho 4026 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX140 rho : F), (dtkAccY140 rho : F)⟩
        ⟨(rho 4025 : F), (rho 4026 : F)⟩
        ⟨(dtkAccX141 rho : F), (dtkAccY141 rho : F)⟩
        ⟨(rho 4038 : F), (rho 4039 : F)⟩ := by
    have hnextx : dtkAccX141 rho = dtkAccX140 rho + rho 4033 := by
      unfold dtkAccX141 dtkAccX140
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 139]
      ring
    have hnexty : dtkAccY141 rho = dtkAccY140 rho + rho 4034 := by
      unfold dtkAccY141 dtkAccY140
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 140]
      ring
    have ha0 : (rho 4025 + rho 4026) * (dtkAccX140 rho + dtkAccY140 rho) = rho 4027 := by
      unfold dtkAccX140 dtkAccY140
      linear_combination r4533
    have ha1 : rho 4026 * dtkAccX140 rho = rho 4028 := by
      unfold dtkAccX140
      linear_combination r4534
    have ha2 : rho 4025 * dtkAccY140 rho = rho 4029 := by
      unfold dtkAccY140
      linear_combination r4535
    have ha3 : 3021 * rho 4028 * rho 4029 = rho 4030 := by
      linear_combination r4536
    have ha4 : rho 4031 * (1 + rho 4030) = rho 4028 + rho 4029 := by
      linear_combination r4537
    have ha5 : rho 4032 * (1 - rho 4030) = rho 4027 - rho 4028 - rho 4029 := by
      linear_combination r4538
    have haddx :
        rho 4031 * (1 + 3021 * (rho 4026 * dtkAccX140 rho) * (rho 4025 * dtkAccY140 rho)) =
          rho 4026 * dtkAccX140 rho + rho 4025 * dtkAccY140 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4032 * (1 - 3021 * (rho 4026 * dtkAccX140 rho) * (rho 4025 * dtkAccY140 rho)) =
          (-1) * (rho 4026 * dtkAccX140 rho) - rho 4025 * dtkAccY140 rho +
            (dtkAccY140 rho - dtkAccX140 rho * (-1)) * (rho 4025 + rho 4026) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4032 * (1 - rho 4030) = rho 4027 - rho 4028 - rho 4029 := ha5
        _ = (-1) * rho 4028 - rho 4029 + (dtkAccY140 rho - dtkAccX140 rho * (-1)) * (rho 4025 + rho 4026) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX141 rho = dtkAccX140 rho - Bool.toZMod bit * (dtkAccX140 rho - rho 4031) := by
      have hd : rho 4033 = Bool.toZMod bit * (rho 4031 - dtkAccX140 rho) := by
        rw [← hbit]
        unfold dtkAccX140
        linear_combination -r4539
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY141 rho = dtkAccY140 rho - Bool.toZMod bit * (dtkAccY140 rho - rho 4032) := by
      have hd : rho 4034 = Bool.toZMod bit * (rho 4032 - dtkAccY140 rho) := by
        rw [← hbit]
        unfold dtkAccY140
        linear_combination -r4540
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4025 * rho 4026 = rho 4035 := by linear_combination r4541
    have hd1 : rho 4025 * rho 4025 = rho 4036 := by linear_combination r4542
    have hd2 : rho 4026 * rho 4026 = rho 4037 := by linear_combination r4543
    have hd3 : rho 4038 * (rho 4026 * rho 4026 + rho 4025 * rho 4025 * (-1)) = 2 * (rho 4025 * rho 4026) := by
      rw [hd0, hd1, hd2]
      linear_combination r4544
    have hd4 : rho 4039 * (2 - (rho 4026 * rho 4026 + rho 4025 * rho 4025 * (-1))) = rho 4026 * rho 4026 - rho 4025 * rho 4025 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4545
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX140 rho : F), (dtkAccY140 rho : F)⟩
      ⟨(rho 4025 : F), (rho 4026 : F)⟩
      ⟨(rho 4031 : F), (rho 4032 : F)⟩
      ⟨(dtkAccX141 rho : F), (dtkAccY141 rho : F)⟩
      ⟨(rho 4038 : F), (rho 4039 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung140

theorem dtk_rows141 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4546 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4547 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4548 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4549 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4550 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4551 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4552 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4553 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4554 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4555 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4556 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4557 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4558 rho := by
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
  rcases p56 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4546, r4547, r4548, r4549, r4550, r4551, r4552, r4553, r4554, r4555, r4556, r4557, r4558, _⟩
  exact ⟨r4546, r4547, r4548, r4549, r4550, r4551, r4552, r4553, r4554, r4555, r4556, r4557, r4558⟩

theorem dtk_rung141 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1124 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX141 rho : F), (dtkAccY141 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4038 : F), (rho 4039 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX141 rho : F), (dtkAccY141 rho : F)⟩
        ⟨(rho 4038 : F), (rho 4039 : F)⟩
        ⟨(dtkAccX142 rho : F), (dtkAccY142 rho : F)⟩
        ⟨(rho 4051 : F), (rho 4052 : F)⟩ := by
  obtain ⟨r4546, r4547, r4548, r4549, r4550, r4551, r4552, r4553, r4554, r4555, r4556, r4557, r4558⟩ := dtk_rows141 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4546 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc791 at r4546
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4546
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4547 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc792 at r4547
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4547
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4548 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc793 at r4548
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4548
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4549 at r4549
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4550 at r4550
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4551 at r4551
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4552 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc794 at r4552
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4552
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4553 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc795 at r4553
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4553
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4554 at r4554
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4555 at r4555
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4556 at r4556
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4557 at r4557
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4558 at r4558
  have hrung141 (bit : Bool) (hbit : rho 1124 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX141 rho : F), (dtkAccY141 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4038 : F), (rho 4039 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX141 rho : F), (dtkAccY141 rho : F)⟩
        ⟨(rho 4038 : F), (rho 4039 : F)⟩
        ⟨(dtkAccX142 rho : F), (dtkAccY142 rho : F)⟩
        ⟨(rho 4051 : F), (rho 4052 : F)⟩ := by
    have hnextx : dtkAccX142 rho = dtkAccX141 rho + rho 4046 := by
      unfold dtkAccX142 dtkAccX141
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 140]
      ring
    have hnexty : dtkAccY142 rho = dtkAccY141 rho + rho 4047 := by
      unfold dtkAccY142 dtkAccY141
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 141]
      ring
    have ha0 : (rho 4038 + rho 4039) * (dtkAccX141 rho + dtkAccY141 rho) = rho 4040 := by
      unfold dtkAccX141 dtkAccY141
      linear_combination r4546
    have ha1 : rho 4039 * dtkAccX141 rho = rho 4041 := by
      unfold dtkAccX141
      linear_combination r4547
    have ha2 : rho 4038 * dtkAccY141 rho = rho 4042 := by
      unfold dtkAccY141
      linear_combination r4548
    have ha3 : 3021 * rho 4041 * rho 4042 = rho 4043 := by
      linear_combination r4549
    have ha4 : rho 4044 * (1 + rho 4043) = rho 4041 + rho 4042 := by
      linear_combination r4550
    have ha5 : rho 4045 * (1 - rho 4043) = rho 4040 - rho 4041 - rho 4042 := by
      linear_combination r4551
    have haddx :
        rho 4044 * (1 + 3021 * (rho 4039 * dtkAccX141 rho) * (rho 4038 * dtkAccY141 rho)) =
          rho 4039 * dtkAccX141 rho + rho 4038 * dtkAccY141 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4045 * (1 - 3021 * (rho 4039 * dtkAccX141 rho) * (rho 4038 * dtkAccY141 rho)) =
          (-1) * (rho 4039 * dtkAccX141 rho) - rho 4038 * dtkAccY141 rho +
            (dtkAccY141 rho - dtkAccX141 rho * (-1)) * (rho 4038 + rho 4039) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4045 * (1 - rho 4043) = rho 4040 - rho 4041 - rho 4042 := ha5
        _ = (-1) * rho 4041 - rho 4042 + (dtkAccY141 rho - dtkAccX141 rho * (-1)) * (rho 4038 + rho 4039) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX142 rho = dtkAccX141 rho - Bool.toZMod bit * (dtkAccX141 rho - rho 4044) := by
      have hd : rho 4046 = Bool.toZMod bit * (rho 4044 - dtkAccX141 rho) := by
        rw [← hbit]
        unfold dtkAccX141
        linear_combination -r4552
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY142 rho = dtkAccY141 rho - Bool.toZMod bit * (dtkAccY141 rho - rho 4045) := by
      have hd : rho 4047 = Bool.toZMod bit * (rho 4045 - dtkAccY141 rho) := by
        rw [← hbit]
        unfold dtkAccY141
        linear_combination -r4553
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4038 * rho 4039 = rho 4048 := by linear_combination r4554
    have hd1 : rho 4038 * rho 4038 = rho 4049 := by linear_combination r4555
    have hd2 : rho 4039 * rho 4039 = rho 4050 := by linear_combination r4556
    have hd3 : rho 4051 * (rho 4039 * rho 4039 + rho 4038 * rho 4038 * (-1)) = 2 * (rho 4038 * rho 4039) := by
      rw [hd0, hd1, hd2]
      linear_combination r4557
    have hd4 : rho 4052 * (2 - (rho 4039 * rho 4039 + rho 4038 * rho 4038 * (-1))) = rho 4039 * rho 4039 - rho 4038 * rho 4038 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4558
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX141 rho : F), (dtkAccY141 rho : F)⟩
      ⟨(rho 4038 : F), (rho 4039 : F)⟩
      ⟨(rho 4044 : F), (rho 4045 : F)⟩
      ⟨(dtkAccX142 rho : F), (dtkAccY142 rho : F)⟩
      ⟨(rho 4051 : F), (rho 4052 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung141

theorem dtk_rows142 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4559 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4560 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4561 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4562 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4563 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4564 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4565 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4566 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4567 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4568 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4569 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4570 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4571 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p56, p57, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart56 at p56
  rcases p56 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4559⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart57 at p57
  rcases p57 with ⟨r4560, r4561, r4562, r4563, r4564, r4565, r4566, r4567, r4568, r4569, r4570, r4571, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4559, r4560, r4561, r4562, r4563, r4564, r4565, r4566, r4567, r4568, r4569, r4570, r4571⟩

theorem dtk_rung142 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1125 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX142 rho : F), (dtkAccY142 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4051 : F), (rho 4052 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX142 rho : F), (dtkAccY142 rho : F)⟩
        ⟨(rho 4051 : F), (rho 4052 : F)⟩
        ⟨(dtkAccX143 rho : F), (dtkAccY143 rho : F)⟩
        ⟨(rho 4064 : F), (rho 4065 : F)⟩ := by
  obtain ⟨r4559, r4560, r4561, r4562, r4563, r4564, r4565, r4566, r4567, r4568, r4569, r4570, r4571⟩ := dtk_rows142 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4559 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc796 at r4559
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4559
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4560 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc797 at r4560
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4560
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4561 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc798 at r4561
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4561
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4562 at r4562
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4563 at r4563
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4564 at r4564
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4565 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc799 at r4565
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4565
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4566 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc800 at r4566
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4566
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4567 at r4567
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4568 at r4568
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4569 at r4569
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4570 at r4570
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4571 at r4571
  have hrung142 (bit : Bool) (hbit : rho 1125 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX142 rho : F), (dtkAccY142 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4051 : F), (rho 4052 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX142 rho : F), (dtkAccY142 rho : F)⟩
        ⟨(rho 4051 : F), (rho 4052 : F)⟩
        ⟨(dtkAccX143 rho : F), (dtkAccY143 rho : F)⟩
        ⟨(rho 4064 : F), (rho 4065 : F)⟩ := by
    have hnextx : dtkAccX143 rho = dtkAccX142 rho + rho 4059 := by
      unfold dtkAccX143 dtkAccX142
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 141]
      ring
    have hnexty : dtkAccY143 rho = dtkAccY142 rho + rho 4060 := by
      unfold dtkAccY143 dtkAccY142
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 142]
      ring
    have ha0 : (rho 4051 + rho 4052) * (dtkAccX142 rho + dtkAccY142 rho) = rho 4053 := by
      unfold dtkAccX142 dtkAccY142
      linear_combination r4559
    have ha1 : rho 4052 * dtkAccX142 rho = rho 4054 := by
      unfold dtkAccX142
      linear_combination r4560
    have ha2 : rho 4051 * dtkAccY142 rho = rho 4055 := by
      unfold dtkAccY142
      linear_combination r4561
    have ha3 : 3021 * rho 4054 * rho 4055 = rho 4056 := by
      linear_combination r4562
    have ha4 : rho 4057 * (1 + rho 4056) = rho 4054 + rho 4055 := by
      linear_combination r4563
    have ha5 : rho 4058 * (1 - rho 4056) = rho 4053 - rho 4054 - rho 4055 := by
      linear_combination r4564
    have haddx :
        rho 4057 * (1 + 3021 * (rho 4052 * dtkAccX142 rho) * (rho 4051 * dtkAccY142 rho)) =
          rho 4052 * dtkAccX142 rho + rho 4051 * dtkAccY142 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4058 * (1 - 3021 * (rho 4052 * dtkAccX142 rho) * (rho 4051 * dtkAccY142 rho)) =
          (-1) * (rho 4052 * dtkAccX142 rho) - rho 4051 * dtkAccY142 rho +
            (dtkAccY142 rho - dtkAccX142 rho * (-1)) * (rho 4051 + rho 4052) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4058 * (1 - rho 4056) = rho 4053 - rho 4054 - rho 4055 := ha5
        _ = (-1) * rho 4054 - rho 4055 + (dtkAccY142 rho - dtkAccX142 rho * (-1)) * (rho 4051 + rho 4052) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX143 rho = dtkAccX142 rho - Bool.toZMod bit * (dtkAccX142 rho - rho 4057) := by
      have hd : rho 4059 = Bool.toZMod bit * (rho 4057 - dtkAccX142 rho) := by
        rw [← hbit]
        unfold dtkAccX142
        linear_combination -r4565
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY143 rho = dtkAccY142 rho - Bool.toZMod bit * (dtkAccY142 rho - rho 4058) := by
      have hd : rho 4060 = Bool.toZMod bit * (rho 4058 - dtkAccY142 rho) := by
        rw [← hbit]
        unfold dtkAccY142
        linear_combination -r4566
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4051 * rho 4052 = rho 4061 := by linear_combination r4567
    have hd1 : rho 4051 * rho 4051 = rho 4062 := by linear_combination r4568
    have hd2 : rho 4052 * rho 4052 = rho 4063 := by linear_combination r4569
    have hd3 : rho 4064 * (rho 4052 * rho 4052 + rho 4051 * rho 4051 * (-1)) = 2 * (rho 4051 * rho 4052) := by
      rw [hd0, hd1, hd2]
      linear_combination r4570
    have hd4 : rho 4065 * (2 - (rho 4052 * rho 4052 + rho 4051 * rho 4051 * (-1))) = rho 4052 * rho 4052 - rho 4051 * rho 4051 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4571
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX142 rho : F), (dtkAccY142 rho : F)⟩
      ⟨(rho 4051 : F), (rho 4052 : F)⟩
      ⟨(rho 4057 : F), (rho 4058 : F)⟩
      ⟨(dtkAccX143 rho : F), (dtkAccY143 rho : F)⟩
      ⟨(rho 4064 : F), (rho 4065 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung142

theorem dtk_rows143 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4572 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4573 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4574 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4575 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4576 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4577 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4578 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4579 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4580 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4581 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4582 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4583 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4584 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p57, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart57 at p57
  rcases p57 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, r4572, r4573, r4574, r4575, r4576, r4577, r4578, r4579, r4580, r4581, r4582, r4583, r4584, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4572, r4573, r4574, r4575, r4576, r4577, r4578, r4579, r4580, r4581, r4582, r4583, r4584⟩

theorem dtk_rung143 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1126 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX143 rho : F), (dtkAccY143 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4064 : F), (rho 4065 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX143 rho : F), (dtkAccY143 rho : F)⟩
        ⟨(rho 4064 : F), (rho 4065 : F)⟩
        ⟨(dtkAccX144 rho : F), (dtkAccY144 rho : F)⟩
        ⟨(rho 4077 : F), (rho 4078 : F)⟩ := by
  obtain ⟨r4572, r4573, r4574, r4575, r4576, r4577, r4578, r4579, r4580, r4581, r4582, r4583, r4584⟩ := dtk_rows143 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4572 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc801 at r4572
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4572
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4573 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc802 at r4573
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4573
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4574 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc803 at r4574
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4574
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4575 at r4575
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4576 at r4576
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4577 at r4577
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4578 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc804 at r4578
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4578
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4579 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc805 at r4579
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4579
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4580 at r4580
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4581 at r4581
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4582 at r4582
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4583 at r4583
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4584 at r4584
  have hrung143 (bit : Bool) (hbit : rho 1126 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX143 rho : F), (dtkAccY143 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4064 : F), (rho 4065 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX143 rho : F), (dtkAccY143 rho : F)⟩
        ⟨(rho 4064 : F), (rho 4065 : F)⟩
        ⟨(dtkAccX144 rho : F), (dtkAccY144 rho : F)⟩
        ⟨(rho 4077 : F), (rho 4078 : F)⟩ := by
    have hnextx : dtkAccX144 rho = dtkAccX143 rho + rho 4072 := by
      unfold dtkAccX144 dtkAccX143
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 142]
      ring
    have hnexty : dtkAccY144 rho = dtkAccY143 rho + rho 4073 := by
      unfold dtkAccY144 dtkAccY143
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 143]
      ring
    have ha0 : (rho 4064 + rho 4065) * (dtkAccX143 rho + dtkAccY143 rho) = rho 4066 := by
      unfold dtkAccX143 dtkAccY143
      linear_combination r4572
    have ha1 : rho 4065 * dtkAccX143 rho = rho 4067 := by
      unfold dtkAccX143
      linear_combination r4573
    have ha2 : rho 4064 * dtkAccY143 rho = rho 4068 := by
      unfold dtkAccY143
      linear_combination r4574
    have ha3 : 3021 * rho 4067 * rho 4068 = rho 4069 := by
      linear_combination r4575
    have ha4 : rho 4070 * (1 + rho 4069) = rho 4067 + rho 4068 := by
      linear_combination r4576
    have ha5 : rho 4071 * (1 - rho 4069) = rho 4066 - rho 4067 - rho 4068 := by
      linear_combination r4577
    have haddx :
        rho 4070 * (1 + 3021 * (rho 4065 * dtkAccX143 rho) * (rho 4064 * dtkAccY143 rho)) =
          rho 4065 * dtkAccX143 rho + rho 4064 * dtkAccY143 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4071 * (1 - 3021 * (rho 4065 * dtkAccX143 rho) * (rho 4064 * dtkAccY143 rho)) =
          (-1) * (rho 4065 * dtkAccX143 rho) - rho 4064 * dtkAccY143 rho +
            (dtkAccY143 rho - dtkAccX143 rho * (-1)) * (rho 4064 + rho 4065) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4071 * (1 - rho 4069) = rho 4066 - rho 4067 - rho 4068 := ha5
        _ = (-1) * rho 4067 - rho 4068 + (dtkAccY143 rho - dtkAccX143 rho * (-1)) * (rho 4064 + rho 4065) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX144 rho = dtkAccX143 rho - Bool.toZMod bit * (dtkAccX143 rho - rho 4070) := by
      have hd : rho 4072 = Bool.toZMod bit * (rho 4070 - dtkAccX143 rho) := by
        rw [← hbit]
        unfold dtkAccX143
        linear_combination -r4578
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY144 rho = dtkAccY143 rho - Bool.toZMod bit * (dtkAccY143 rho - rho 4071) := by
      have hd : rho 4073 = Bool.toZMod bit * (rho 4071 - dtkAccY143 rho) := by
        rw [← hbit]
        unfold dtkAccY143
        linear_combination -r4579
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4064 * rho 4065 = rho 4074 := by linear_combination r4580
    have hd1 : rho 4064 * rho 4064 = rho 4075 := by linear_combination r4581
    have hd2 : rho 4065 * rho 4065 = rho 4076 := by linear_combination r4582
    have hd3 : rho 4077 * (rho 4065 * rho 4065 + rho 4064 * rho 4064 * (-1)) = 2 * (rho 4064 * rho 4065) := by
      rw [hd0, hd1, hd2]
      linear_combination r4583
    have hd4 : rho 4078 * (2 - (rho 4065 * rho 4065 + rho 4064 * rho 4064 * (-1))) = rho 4065 * rho 4065 - rho 4064 * rho 4064 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4584
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX143 rho : F), (dtkAccY143 rho : F)⟩
      ⟨(rho 4064 : F), (rho 4065 : F)⟩
      ⟨(rho 4070 : F), (rho 4071 : F)⟩
      ⟨(dtkAccX144 rho : F), (dtkAccY144 rho : F)⟩
      ⟨(rho 4077 : F), (rho 4078 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung143

theorem dtk_hstep_c23 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (983 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 138 ≤ i → i < 144 →
      EdwardsBridge.onCurve (dtkLadderAccState rho i) →
      EdwardsBridge.onCurve (dtkLadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (dtkLadderAccState rho i) (dtkLadderCurState rho i)
        (dtkLadderAccState rho (i + 1)) (dtkLadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact dtk_rung138 rho h bits[138]! (hbitAt 138 (by omega)) hacc hcur
  · exact dtk_rung139 rho h bits[139]! (hbitAt 139 (by omega)) hacc hcur
  · exact dtk_rung140 rho h bits[140]! (hbitAt 140 (by omega)) hacc hcur
  · exact dtk_rung141 rho h bits[141]! (hbitAt 141 (by omega)) hacc hcur
  · exact dtk_rung142 rho h bits[142]! (hbitAt 142 (by omega)) hacc hcur
  · exact dtk_rung143 rho h bits[143]! (hbitAt 143 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport
