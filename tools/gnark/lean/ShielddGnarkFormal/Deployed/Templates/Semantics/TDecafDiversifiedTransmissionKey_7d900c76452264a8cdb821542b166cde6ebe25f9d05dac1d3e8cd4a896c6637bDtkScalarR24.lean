import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDtkScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs

theorem dtk_rows144 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4585 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4586 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4587 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4588 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4589 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4590 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4591 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4592 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4593 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4594 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4595 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4596 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4597 rho := by
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
  rcases p57 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4585, r4586, r4587, r4588, r4589, r4590, r4591, r4592, r4593, r4594, r4595, r4596, r4597, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4585, r4586, r4587, r4588, r4589, r4590, r4591, r4592, r4593, r4594, r4595, r4596, r4597⟩

theorem dtk_rung144 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1127 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX144 rho : F), (dtkAccY144 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4077 : F), (rho 4078 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX144 rho : F), (dtkAccY144 rho : F)⟩
        ⟨(rho 4077 : F), (rho 4078 : F)⟩
        ⟨(dtkAccX145 rho : F), (dtkAccY145 rho : F)⟩
        ⟨(rho 4090 : F), (rho 4091 : F)⟩ := by
  obtain ⟨r4585, r4586, r4587, r4588, r4589, r4590, r4591, r4592, r4593, r4594, r4595, r4596, r4597⟩ := dtk_rows144 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4585 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc806 at r4585
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4585
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4586 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc807 at r4586
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4586
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4587 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc808 at r4587
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4587
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4588 at r4588
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4589 at r4589
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4590 at r4590
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4591 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc809 at r4591
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4591
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4592 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc810 at r4592
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4592
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4593 at r4593
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4594 at r4594
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4595 at r4595
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4596 at r4596
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4597 at r4597
  have hrung144 (bit : Bool) (hbit : rho 1127 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX144 rho : F), (dtkAccY144 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4077 : F), (rho 4078 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX144 rho : F), (dtkAccY144 rho : F)⟩
        ⟨(rho 4077 : F), (rho 4078 : F)⟩
        ⟨(dtkAccX145 rho : F), (dtkAccY145 rho : F)⟩
        ⟨(rho 4090 : F), (rho 4091 : F)⟩ := by
    have hnextx : dtkAccX145 rho = dtkAccX144 rho + rho 4085 := by
      unfold dtkAccX145 dtkAccX144
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 143]
      ring
    have hnexty : dtkAccY145 rho = dtkAccY144 rho + rho 4086 := by
      unfold dtkAccY145 dtkAccY144
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 144]
      ring
    have ha0 : (rho 4077 + rho 4078) * (dtkAccX144 rho + dtkAccY144 rho) = rho 4079 := by
      unfold dtkAccX144 dtkAccY144
      linear_combination r4585
    have ha1 : rho 4078 * dtkAccX144 rho = rho 4080 := by
      unfold dtkAccX144
      linear_combination r4586
    have ha2 : rho 4077 * dtkAccY144 rho = rho 4081 := by
      unfold dtkAccY144
      linear_combination r4587
    have ha3 : 3021 * rho 4080 * rho 4081 = rho 4082 := by
      linear_combination r4588
    have ha4 : rho 4083 * (1 + rho 4082) = rho 4080 + rho 4081 := by
      linear_combination r4589
    have ha5 : rho 4084 * (1 - rho 4082) = rho 4079 - rho 4080 - rho 4081 := by
      linear_combination r4590
    have haddx :
        rho 4083 * (1 + 3021 * (rho 4078 * dtkAccX144 rho) * (rho 4077 * dtkAccY144 rho)) =
          rho 4078 * dtkAccX144 rho + rho 4077 * dtkAccY144 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4084 * (1 - 3021 * (rho 4078 * dtkAccX144 rho) * (rho 4077 * dtkAccY144 rho)) =
          (-1) * (rho 4078 * dtkAccX144 rho) - rho 4077 * dtkAccY144 rho +
            (dtkAccY144 rho - dtkAccX144 rho * (-1)) * (rho 4077 + rho 4078) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4084 * (1 - rho 4082) = rho 4079 - rho 4080 - rho 4081 := ha5
        _ = (-1) * rho 4080 - rho 4081 + (dtkAccY144 rho - dtkAccX144 rho * (-1)) * (rho 4077 + rho 4078) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX145 rho = dtkAccX144 rho - Bool.toZMod bit * (dtkAccX144 rho - rho 4083) := by
      have hd : rho 4085 = Bool.toZMod bit * (rho 4083 - dtkAccX144 rho) := by
        rw [← hbit]
        unfold dtkAccX144
        linear_combination -r4591
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY145 rho = dtkAccY144 rho - Bool.toZMod bit * (dtkAccY144 rho - rho 4084) := by
      have hd : rho 4086 = Bool.toZMod bit * (rho 4084 - dtkAccY144 rho) := by
        rw [← hbit]
        unfold dtkAccY144
        linear_combination -r4592
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4077 * rho 4078 = rho 4087 := by linear_combination r4593
    have hd1 : rho 4077 * rho 4077 = rho 4088 := by linear_combination r4594
    have hd2 : rho 4078 * rho 4078 = rho 4089 := by linear_combination r4595
    have hd3 : rho 4090 * (rho 4078 * rho 4078 + rho 4077 * rho 4077 * (-1)) = 2 * (rho 4077 * rho 4078) := by
      rw [hd0, hd1, hd2]
      linear_combination r4596
    have hd4 : rho 4091 * (2 - (rho 4078 * rho 4078 + rho 4077 * rho 4077 * (-1))) = rho 4078 * rho 4078 - rho 4077 * rho 4077 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4597
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX144 rho : F), (dtkAccY144 rho : F)⟩
      ⟨(rho 4077 : F), (rho 4078 : F)⟩
      ⟨(rho 4083 : F), (rho 4084 : F)⟩
      ⟨(dtkAccX145 rho : F), (dtkAccY145 rho : F)⟩
      ⟨(rho 4090 : F), (rho 4091 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung144

theorem dtk_rows145 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4598 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4599 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4600 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4601 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4602 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4603 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4604 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4605 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4606 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4607 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4608 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4609 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4610 rho := by
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
  rcases p57 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4598, r4599, r4600, r4601, r4602, r4603, r4604, r4605, r4606, r4607, r4608, r4609, r4610, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4598, r4599, r4600, r4601, r4602, r4603, r4604, r4605, r4606, r4607, r4608, r4609, r4610⟩

theorem dtk_rung145 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1128 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX145 rho : F), (dtkAccY145 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4090 : F), (rho 4091 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX145 rho : F), (dtkAccY145 rho : F)⟩
        ⟨(rho 4090 : F), (rho 4091 : F)⟩
        ⟨(dtkAccX146 rho : F), (dtkAccY146 rho : F)⟩
        ⟨(rho 4103 : F), (rho 4104 : F)⟩ := by
  obtain ⟨r4598, r4599, r4600, r4601, r4602, r4603, r4604, r4605, r4606, r4607, r4608, r4609, r4610⟩ := dtk_rows145 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4598 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc811 at r4598
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4598
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4599 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc812 at r4599
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4599
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4600 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc813 at r4600
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4600
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4601 at r4601
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4602 at r4602
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4603 at r4603
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4604 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc814 at r4604
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4604
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4605 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc815 at r4605
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4605
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4606 at r4606
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4607 at r4607
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4608 at r4608
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4609 at r4609
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4610 at r4610
  have hrung145 (bit : Bool) (hbit : rho 1128 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX145 rho : F), (dtkAccY145 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4090 : F), (rho 4091 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX145 rho : F), (dtkAccY145 rho : F)⟩
        ⟨(rho 4090 : F), (rho 4091 : F)⟩
        ⟨(dtkAccX146 rho : F), (dtkAccY146 rho : F)⟩
        ⟨(rho 4103 : F), (rho 4104 : F)⟩ := by
    have hnextx : dtkAccX146 rho = dtkAccX145 rho + rho 4098 := by
      unfold dtkAccX146 dtkAccX145
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 144]
      ring
    have hnexty : dtkAccY146 rho = dtkAccY145 rho + rho 4099 := by
      unfold dtkAccY146 dtkAccY145
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 145]
      ring
    have ha0 : (rho 4090 + rho 4091) * (dtkAccX145 rho + dtkAccY145 rho) = rho 4092 := by
      unfold dtkAccX145 dtkAccY145
      linear_combination r4598
    have ha1 : rho 4091 * dtkAccX145 rho = rho 4093 := by
      unfold dtkAccX145
      linear_combination r4599
    have ha2 : rho 4090 * dtkAccY145 rho = rho 4094 := by
      unfold dtkAccY145
      linear_combination r4600
    have ha3 : 3021 * rho 4093 * rho 4094 = rho 4095 := by
      linear_combination r4601
    have ha4 : rho 4096 * (1 + rho 4095) = rho 4093 + rho 4094 := by
      linear_combination r4602
    have ha5 : rho 4097 * (1 - rho 4095) = rho 4092 - rho 4093 - rho 4094 := by
      linear_combination r4603
    have haddx :
        rho 4096 * (1 + 3021 * (rho 4091 * dtkAccX145 rho) * (rho 4090 * dtkAccY145 rho)) =
          rho 4091 * dtkAccX145 rho + rho 4090 * dtkAccY145 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4097 * (1 - 3021 * (rho 4091 * dtkAccX145 rho) * (rho 4090 * dtkAccY145 rho)) =
          (-1) * (rho 4091 * dtkAccX145 rho) - rho 4090 * dtkAccY145 rho +
            (dtkAccY145 rho - dtkAccX145 rho * (-1)) * (rho 4090 + rho 4091) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4097 * (1 - rho 4095) = rho 4092 - rho 4093 - rho 4094 := ha5
        _ = (-1) * rho 4093 - rho 4094 + (dtkAccY145 rho - dtkAccX145 rho * (-1)) * (rho 4090 + rho 4091) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX146 rho = dtkAccX145 rho - Bool.toZMod bit * (dtkAccX145 rho - rho 4096) := by
      have hd : rho 4098 = Bool.toZMod bit * (rho 4096 - dtkAccX145 rho) := by
        rw [← hbit]
        unfold dtkAccX145
        linear_combination -r4604
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY146 rho = dtkAccY145 rho - Bool.toZMod bit * (dtkAccY145 rho - rho 4097) := by
      have hd : rho 4099 = Bool.toZMod bit * (rho 4097 - dtkAccY145 rho) := by
        rw [← hbit]
        unfold dtkAccY145
        linear_combination -r4605
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4090 * rho 4091 = rho 4100 := by linear_combination r4606
    have hd1 : rho 4090 * rho 4090 = rho 4101 := by linear_combination r4607
    have hd2 : rho 4091 * rho 4091 = rho 4102 := by linear_combination r4608
    have hd3 : rho 4103 * (rho 4091 * rho 4091 + rho 4090 * rho 4090 * (-1)) = 2 * (rho 4090 * rho 4091) := by
      rw [hd0, hd1, hd2]
      linear_combination r4609
    have hd4 : rho 4104 * (2 - (rho 4091 * rho 4091 + rho 4090 * rho 4090 * (-1))) = rho 4091 * rho 4091 - rho 4090 * rho 4090 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4610
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX145 rho : F), (dtkAccY145 rho : F)⟩
      ⟨(rho 4090 : F), (rho 4091 : F)⟩
      ⟨(rho 4096 : F), (rho 4097 : F)⟩
      ⟨(dtkAccX146 rho : F), (dtkAccY146 rho : F)⟩
      ⟨(rho 4103 : F), (rho 4104 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung145

theorem dtk_rows146 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4611 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4612 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4613 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4614 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4615 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4616 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4617 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4618 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4619 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4620 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4621 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4622 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4623 rho := by
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
  rcases p57 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4611, r4612, r4613, r4614, r4615, r4616, r4617, r4618, r4619, r4620, r4621, r4622, r4623, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4611, r4612, r4613, r4614, r4615, r4616, r4617, r4618, r4619, r4620, r4621, r4622, r4623⟩

theorem dtk_rung146 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1129 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX146 rho : F), (dtkAccY146 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4103 : F), (rho 4104 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX146 rho : F), (dtkAccY146 rho : F)⟩
        ⟨(rho 4103 : F), (rho 4104 : F)⟩
        ⟨(dtkAccX147 rho : F), (dtkAccY147 rho : F)⟩
        ⟨(rho 4116 : F), (rho 4117 : F)⟩ := by
  obtain ⟨r4611, r4612, r4613, r4614, r4615, r4616, r4617, r4618, r4619, r4620, r4621, r4622, r4623⟩ := dtk_rows146 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4611 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc816 at r4611
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4611
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4612 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc817 at r4612
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4612
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4613 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc818 at r4613
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4613
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4614 at r4614
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4615 at r4615
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4616 at r4616
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4617 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc819 at r4617
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4617
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4618 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc820 at r4618
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4618
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4619 at r4619
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4620 at r4620
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4621 at r4621
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4622 at r4622
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4623 at r4623
  have hrung146 (bit : Bool) (hbit : rho 1129 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX146 rho : F), (dtkAccY146 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4103 : F), (rho 4104 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX146 rho : F), (dtkAccY146 rho : F)⟩
        ⟨(rho 4103 : F), (rho 4104 : F)⟩
        ⟨(dtkAccX147 rho : F), (dtkAccY147 rho : F)⟩
        ⟨(rho 4116 : F), (rho 4117 : F)⟩ := by
    have hnextx : dtkAccX147 rho = dtkAccX146 rho + rho 4111 := by
      unfold dtkAccX147 dtkAccX146
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 145]
      ring
    have hnexty : dtkAccY147 rho = dtkAccY146 rho + rho 4112 := by
      unfold dtkAccY147 dtkAccY146
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 146]
      ring
    have ha0 : (rho 4103 + rho 4104) * (dtkAccX146 rho + dtkAccY146 rho) = rho 4105 := by
      unfold dtkAccX146 dtkAccY146
      linear_combination r4611
    have ha1 : rho 4104 * dtkAccX146 rho = rho 4106 := by
      unfold dtkAccX146
      linear_combination r4612
    have ha2 : rho 4103 * dtkAccY146 rho = rho 4107 := by
      unfold dtkAccY146
      linear_combination r4613
    have ha3 : 3021 * rho 4106 * rho 4107 = rho 4108 := by
      linear_combination r4614
    have ha4 : rho 4109 * (1 + rho 4108) = rho 4106 + rho 4107 := by
      linear_combination r4615
    have ha5 : rho 4110 * (1 - rho 4108) = rho 4105 - rho 4106 - rho 4107 := by
      linear_combination r4616
    have haddx :
        rho 4109 * (1 + 3021 * (rho 4104 * dtkAccX146 rho) * (rho 4103 * dtkAccY146 rho)) =
          rho 4104 * dtkAccX146 rho + rho 4103 * dtkAccY146 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4110 * (1 - 3021 * (rho 4104 * dtkAccX146 rho) * (rho 4103 * dtkAccY146 rho)) =
          (-1) * (rho 4104 * dtkAccX146 rho) - rho 4103 * dtkAccY146 rho +
            (dtkAccY146 rho - dtkAccX146 rho * (-1)) * (rho 4103 + rho 4104) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4110 * (1 - rho 4108) = rho 4105 - rho 4106 - rho 4107 := ha5
        _ = (-1) * rho 4106 - rho 4107 + (dtkAccY146 rho - dtkAccX146 rho * (-1)) * (rho 4103 + rho 4104) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX147 rho = dtkAccX146 rho - Bool.toZMod bit * (dtkAccX146 rho - rho 4109) := by
      have hd : rho 4111 = Bool.toZMod bit * (rho 4109 - dtkAccX146 rho) := by
        rw [← hbit]
        unfold dtkAccX146
        linear_combination -r4617
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY147 rho = dtkAccY146 rho - Bool.toZMod bit * (dtkAccY146 rho - rho 4110) := by
      have hd : rho 4112 = Bool.toZMod bit * (rho 4110 - dtkAccY146 rho) := by
        rw [← hbit]
        unfold dtkAccY146
        linear_combination -r4618
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4103 * rho 4104 = rho 4113 := by linear_combination r4619
    have hd1 : rho 4103 * rho 4103 = rho 4114 := by linear_combination r4620
    have hd2 : rho 4104 * rho 4104 = rho 4115 := by linear_combination r4621
    have hd3 : rho 4116 * (rho 4104 * rho 4104 + rho 4103 * rho 4103 * (-1)) = 2 * (rho 4103 * rho 4104) := by
      rw [hd0, hd1, hd2]
      linear_combination r4622
    have hd4 : rho 4117 * (2 - (rho 4104 * rho 4104 + rho 4103 * rho 4103 * (-1))) = rho 4104 * rho 4104 - rho 4103 * rho 4103 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4623
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX146 rho : F), (dtkAccY146 rho : F)⟩
      ⟨(rho 4103 : F), (rho 4104 : F)⟩
      ⟨(rho 4109 : F), (rho 4110 : F)⟩
      ⟨(dtkAccX147 rho : F), (dtkAccY147 rho : F)⟩
      ⟨(rho 4116 : F), (rho 4117 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung146

theorem dtk_rows147 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4624 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4625 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4626 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4627 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4628 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4629 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4630 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4631 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4632 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4633 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4634 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4635 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4636 rho := by
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
  rcases p57 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4624, r4625, r4626, r4627, r4628, r4629, r4630, r4631, r4632, r4633, r4634, r4635, r4636, _, _, _⟩
  exact ⟨r4624, r4625, r4626, r4627, r4628, r4629, r4630, r4631, r4632, r4633, r4634, r4635, r4636⟩

theorem dtk_rung147 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1130 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX147 rho : F), (dtkAccY147 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4116 : F), (rho 4117 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX147 rho : F), (dtkAccY147 rho : F)⟩
        ⟨(rho 4116 : F), (rho 4117 : F)⟩
        ⟨(dtkAccX148 rho : F), (dtkAccY148 rho : F)⟩
        ⟨(rho 4129 : F), (rho 4130 : F)⟩ := by
  obtain ⟨r4624, r4625, r4626, r4627, r4628, r4629, r4630, r4631, r4632, r4633, r4634, r4635, r4636⟩ := dtk_rows147 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4624 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc821 at r4624
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4624
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4625 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc822 at r4625
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4625
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4626 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc823 at r4626
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4626
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4627 at r4627
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4628 at r4628
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4629 at r4629
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4630 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc824 at r4630
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4630
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4631 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc825 at r4631
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4631
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4632 at r4632
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4633 at r4633
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4634 at r4634
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4635 at r4635
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4636 at r4636
  have hrung147 (bit : Bool) (hbit : rho 1130 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX147 rho : F), (dtkAccY147 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4116 : F), (rho 4117 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX147 rho : F), (dtkAccY147 rho : F)⟩
        ⟨(rho 4116 : F), (rho 4117 : F)⟩
        ⟨(dtkAccX148 rho : F), (dtkAccY148 rho : F)⟩
        ⟨(rho 4129 : F), (rho 4130 : F)⟩ := by
    have hnextx : dtkAccX148 rho = dtkAccX147 rho + rho 4124 := by
      unfold dtkAccX148 dtkAccX147
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 146]
      ring
    have hnexty : dtkAccY148 rho = dtkAccY147 rho + rho 4125 := by
      unfold dtkAccY148 dtkAccY147
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 147]
      ring
    have ha0 : (rho 4116 + rho 4117) * (dtkAccX147 rho + dtkAccY147 rho) = rho 4118 := by
      unfold dtkAccX147 dtkAccY147
      linear_combination r4624
    have ha1 : rho 4117 * dtkAccX147 rho = rho 4119 := by
      unfold dtkAccX147
      linear_combination r4625
    have ha2 : rho 4116 * dtkAccY147 rho = rho 4120 := by
      unfold dtkAccY147
      linear_combination r4626
    have ha3 : 3021 * rho 4119 * rho 4120 = rho 4121 := by
      linear_combination r4627
    have ha4 : rho 4122 * (1 + rho 4121) = rho 4119 + rho 4120 := by
      linear_combination r4628
    have ha5 : rho 4123 * (1 - rho 4121) = rho 4118 - rho 4119 - rho 4120 := by
      linear_combination r4629
    have haddx :
        rho 4122 * (1 + 3021 * (rho 4117 * dtkAccX147 rho) * (rho 4116 * dtkAccY147 rho)) =
          rho 4117 * dtkAccX147 rho + rho 4116 * dtkAccY147 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4123 * (1 - 3021 * (rho 4117 * dtkAccX147 rho) * (rho 4116 * dtkAccY147 rho)) =
          (-1) * (rho 4117 * dtkAccX147 rho) - rho 4116 * dtkAccY147 rho +
            (dtkAccY147 rho - dtkAccX147 rho * (-1)) * (rho 4116 + rho 4117) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4123 * (1 - rho 4121) = rho 4118 - rho 4119 - rho 4120 := ha5
        _ = (-1) * rho 4119 - rho 4120 + (dtkAccY147 rho - dtkAccX147 rho * (-1)) * (rho 4116 + rho 4117) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX148 rho = dtkAccX147 rho - Bool.toZMod bit * (dtkAccX147 rho - rho 4122) := by
      have hd : rho 4124 = Bool.toZMod bit * (rho 4122 - dtkAccX147 rho) := by
        rw [← hbit]
        unfold dtkAccX147
        linear_combination -r4630
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY148 rho = dtkAccY147 rho - Bool.toZMod bit * (dtkAccY147 rho - rho 4123) := by
      have hd : rho 4125 = Bool.toZMod bit * (rho 4123 - dtkAccY147 rho) := by
        rw [← hbit]
        unfold dtkAccY147
        linear_combination -r4631
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4116 * rho 4117 = rho 4126 := by linear_combination r4632
    have hd1 : rho 4116 * rho 4116 = rho 4127 := by linear_combination r4633
    have hd2 : rho 4117 * rho 4117 = rho 4128 := by linear_combination r4634
    have hd3 : rho 4129 * (rho 4117 * rho 4117 + rho 4116 * rho 4116 * (-1)) = 2 * (rho 4116 * rho 4117) := by
      rw [hd0, hd1, hd2]
      linear_combination r4635
    have hd4 : rho 4130 * (2 - (rho 4117 * rho 4117 + rho 4116 * rho 4116 * (-1))) = rho 4117 * rho 4117 - rho 4116 * rho 4116 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4636
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX147 rho : F), (dtkAccY147 rho : F)⟩
      ⟨(rho 4116 : F), (rho 4117 : F)⟩
      ⟨(rho 4122 : F), (rho 4123 : F)⟩
      ⟨(dtkAccX148 rho : F), (dtkAccY148 rho : F)⟩
      ⟨(rho 4129 : F), (rho 4130 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung147

theorem dtk_rows148 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4637 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4638 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4639 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4640 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4641 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4642 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4643 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4644 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4645 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4646 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4647 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4648 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4649 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p57, p58, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart57 at p57
  rcases p57 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4637, r4638, r4639⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart58 at p58
  rcases p58 with ⟨r4640, r4641, r4642, r4643, r4644, r4645, r4646, r4647, r4648, r4649, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4637, r4638, r4639, r4640, r4641, r4642, r4643, r4644, r4645, r4646, r4647, r4648, r4649⟩

theorem dtk_rung148 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1131 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX148 rho : F), (dtkAccY148 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4129 : F), (rho 4130 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX148 rho : F), (dtkAccY148 rho : F)⟩
        ⟨(rho 4129 : F), (rho 4130 : F)⟩
        ⟨(dtkAccX149 rho : F), (dtkAccY149 rho : F)⟩
        ⟨(rho 4142 : F), (rho 4143 : F)⟩ := by
  obtain ⟨r4637, r4638, r4639, r4640, r4641, r4642, r4643, r4644, r4645, r4646, r4647, r4648, r4649⟩ := dtk_rows148 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4637 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc826 at r4637
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4637
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4638 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc827 at r4638
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4638
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4639 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc828 at r4639
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4639
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4640 at r4640
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4641 at r4641
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4642 at r4642
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4643 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc829 at r4643
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4643
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4644 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc830 at r4644
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4644
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4645 at r4645
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4646 at r4646
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4647 at r4647
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4648 at r4648
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4649 at r4649
  have hrung148 (bit : Bool) (hbit : rho 1131 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX148 rho : F), (dtkAccY148 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4129 : F), (rho 4130 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX148 rho : F), (dtkAccY148 rho : F)⟩
        ⟨(rho 4129 : F), (rho 4130 : F)⟩
        ⟨(dtkAccX149 rho : F), (dtkAccY149 rho : F)⟩
        ⟨(rho 4142 : F), (rho 4143 : F)⟩ := by
    have hnextx : dtkAccX149 rho = dtkAccX148 rho + rho 4137 := by
      unfold dtkAccX149 dtkAccX148
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 147]
      ring
    have hnexty : dtkAccY149 rho = dtkAccY148 rho + rho 4138 := by
      unfold dtkAccY149 dtkAccY148
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 148]
      ring
    have ha0 : (rho 4129 + rho 4130) * (dtkAccX148 rho + dtkAccY148 rho) = rho 4131 := by
      unfold dtkAccX148 dtkAccY148
      linear_combination r4637
    have ha1 : rho 4130 * dtkAccX148 rho = rho 4132 := by
      unfold dtkAccX148
      linear_combination r4638
    have ha2 : rho 4129 * dtkAccY148 rho = rho 4133 := by
      unfold dtkAccY148
      linear_combination r4639
    have ha3 : 3021 * rho 4132 * rho 4133 = rho 4134 := by
      linear_combination r4640
    have ha4 : rho 4135 * (1 + rho 4134) = rho 4132 + rho 4133 := by
      linear_combination r4641
    have ha5 : rho 4136 * (1 - rho 4134) = rho 4131 - rho 4132 - rho 4133 := by
      linear_combination r4642
    have haddx :
        rho 4135 * (1 + 3021 * (rho 4130 * dtkAccX148 rho) * (rho 4129 * dtkAccY148 rho)) =
          rho 4130 * dtkAccX148 rho + rho 4129 * dtkAccY148 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4136 * (1 - 3021 * (rho 4130 * dtkAccX148 rho) * (rho 4129 * dtkAccY148 rho)) =
          (-1) * (rho 4130 * dtkAccX148 rho) - rho 4129 * dtkAccY148 rho +
            (dtkAccY148 rho - dtkAccX148 rho * (-1)) * (rho 4129 + rho 4130) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4136 * (1 - rho 4134) = rho 4131 - rho 4132 - rho 4133 := ha5
        _ = (-1) * rho 4132 - rho 4133 + (dtkAccY148 rho - dtkAccX148 rho * (-1)) * (rho 4129 + rho 4130) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX149 rho = dtkAccX148 rho - Bool.toZMod bit * (dtkAccX148 rho - rho 4135) := by
      have hd : rho 4137 = Bool.toZMod bit * (rho 4135 - dtkAccX148 rho) := by
        rw [← hbit]
        unfold dtkAccX148
        linear_combination -r4643
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY149 rho = dtkAccY148 rho - Bool.toZMod bit * (dtkAccY148 rho - rho 4136) := by
      have hd : rho 4138 = Bool.toZMod bit * (rho 4136 - dtkAccY148 rho) := by
        rw [← hbit]
        unfold dtkAccY148
        linear_combination -r4644
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4129 * rho 4130 = rho 4139 := by linear_combination r4645
    have hd1 : rho 4129 * rho 4129 = rho 4140 := by linear_combination r4646
    have hd2 : rho 4130 * rho 4130 = rho 4141 := by linear_combination r4647
    have hd3 : rho 4142 * (rho 4130 * rho 4130 + rho 4129 * rho 4129 * (-1)) = 2 * (rho 4129 * rho 4130) := by
      rw [hd0, hd1, hd2]
      linear_combination r4648
    have hd4 : rho 4143 * (2 - (rho 4130 * rho 4130 + rho 4129 * rho 4129 * (-1))) = rho 4130 * rho 4130 - rho 4129 * rho 4129 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4649
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX148 rho : F), (dtkAccY148 rho : F)⟩
      ⟨(rho 4129 : F), (rho 4130 : F)⟩
      ⟨(rho 4135 : F), (rho 4136 : F)⟩
      ⟨(dtkAccX149 rho : F), (dtkAccY149 rho : F)⟩
      ⟨(rho 4142 : F), (rho 4143 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung148

theorem dtk_rows149 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4650 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4651 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4652 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4653 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4654 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4655 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4656 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4657 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4658 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4659 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4660 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4661 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4662 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p58, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart58 at p58
  rcases p58 with ⟨_, _, _, _, _, _, _, _, _, _, r4650, r4651, r4652, r4653, r4654, r4655, r4656, r4657, r4658, r4659, r4660, r4661, r4662, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4650, r4651, r4652, r4653, r4654, r4655, r4656, r4657, r4658, r4659, r4660, r4661, r4662⟩

theorem dtk_rung149 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1132 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX149 rho : F), (dtkAccY149 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4142 : F), (rho 4143 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX149 rho : F), (dtkAccY149 rho : F)⟩
        ⟨(rho 4142 : F), (rho 4143 : F)⟩
        ⟨(dtkAccX150 rho : F), (dtkAccY150 rho : F)⟩
        ⟨(rho 4155 : F), (rho 4156 : F)⟩ := by
  obtain ⟨r4650, r4651, r4652, r4653, r4654, r4655, r4656, r4657, r4658, r4659, r4660, r4661, r4662⟩ := dtk_rows149 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4650 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc831 at r4650
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4650
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4651 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc832 at r4651
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4651
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4652 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc833 at r4652
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4652
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4653 at r4653
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4654 at r4654
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4655 at r4655
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4656 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc834 at r4656
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4656
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4657 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc835 at r4657
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4657
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4658 at r4658
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4659 at r4659
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4660 at r4660
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4661 at r4661
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4662 at r4662
  have hrung149 (bit : Bool) (hbit : rho 1132 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX149 rho : F), (dtkAccY149 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4142 : F), (rho 4143 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX149 rho : F), (dtkAccY149 rho : F)⟩
        ⟨(rho 4142 : F), (rho 4143 : F)⟩
        ⟨(dtkAccX150 rho : F), (dtkAccY150 rho : F)⟩
        ⟨(rho 4155 : F), (rho 4156 : F)⟩ := by
    have hnextx : dtkAccX150 rho = dtkAccX149 rho + rho 4150 := by
      unfold dtkAccX150 dtkAccX149
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 148]
      ring
    have hnexty : dtkAccY150 rho = dtkAccY149 rho + rho 4151 := by
      unfold dtkAccY150 dtkAccY149
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 149]
      ring
    have ha0 : (rho 4142 + rho 4143) * (dtkAccX149 rho + dtkAccY149 rho) = rho 4144 := by
      unfold dtkAccX149 dtkAccY149
      linear_combination r4650
    have ha1 : rho 4143 * dtkAccX149 rho = rho 4145 := by
      unfold dtkAccX149
      linear_combination r4651
    have ha2 : rho 4142 * dtkAccY149 rho = rho 4146 := by
      unfold dtkAccY149
      linear_combination r4652
    have ha3 : 3021 * rho 4145 * rho 4146 = rho 4147 := by
      linear_combination r4653
    have ha4 : rho 4148 * (1 + rho 4147) = rho 4145 + rho 4146 := by
      linear_combination r4654
    have ha5 : rho 4149 * (1 - rho 4147) = rho 4144 - rho 4145 - rho 4146 := by
      linear_combination r4655
    have haddx :
        rho 4148 * (1 + 3021 * (rho 4143 * dtkAccX149 rho) * (rho 4142 * dtkAccY149 rho)) =
          rho 4143 * dtkAccX149 rho + rho 4142 * dtkAccY149 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4149 * (1 - 3021 * (rho 4143 * dtkAccX149 rho) * (rho 4142 * dtkAccY149 rho)) =
          (-1) * (rho 4143 * dtkAccX149 rho) - rho 4142 * dtkAccY149 rho +
            (dtkAccY149 rho - dtkAccX149 rho * (-1)) * (rho 4142 + rho 4143) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4149 * (1 - rho 4147) = rho 4144 - rho 4145 - rho 4146 := ha5
        _ = (-1) * rho 4145 - rho 4146 + (dtkAccY149 rho - dtkAccX149 rho * (-1)) * (rho 4142 + rho 4143) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX150 rho = dtkAccX149 rho - Bool.toZMod bit * (dtkAccX149 rho - rho 4148) := by
      have hd : rho 4150 = Bool.toZMod bit * (rho 4148 - dtkAccX149 rho) := by
        rw [← hbit]
        unfold dtkAccX149
        linear_combination -r4656
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY150 rho = dtkAccY149 rho - Bool.toZMod bit * (dtkAccY149 rho - rho 4149) := by
      have hd : rho 4151 = Bool.toZMod bit * (rho 4149 - dtkAccY149 rho) := by
        rw [← hbit]
        unfold dtkAccY149
        linear_combination -r4657
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4142 * rho 4143 = rho 4152 := by linear_combination r4658
    have hd1 : rho 4142 * rho 4142 = rho 4153 := by linear_combination r4659
    have hd2 : rho 4143 * rho 4143 = rho 4154 := by linear_combination r4660
    have hd3 : rho 4155 * (rho 4143 * rho 4143 + rho 4142 * rho 4142 * (-1)) = 2 * (rho 4142 * rho 4143) := by
      rw [hd0, hd1, hd2]
      linear_combination r4661
    have hd4 : rho 4156 * (2 - (rho 4143 * rho 4143 + rho 4142 * rho 4142 * (-1))) = rho 4143 * rho 4143 - rho 4142 * rho 4142 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4662
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX149 rho : F), (dtkAccY149 rho : F)⟩
      ⟨(rho 4142 : F), (rho 4143 : F)⟩
      ⟨(rho 4148 : F), (rho 4149 : F)⟩
      ⟨(dtkAccX150 rho : F), (dtkAccY150 rho : F)⟩
      ⟨(rho 4155 : F), (rho 4156 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung149

theorem dtk_hstep_c24 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (983 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 144 ≤ i → i < 150 →
      EdwardsBridge.onCurve (dtkLadderAccState rho i) →
      EdwardsBridge.onCurve (dtkLadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (dtkLadderAccState rho i) (dtkLadderCurState rho i)
        (dtkLadderAccState rho (i + 1)) (dtkLadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact dtk_rung144 rho h bits[144]! (hbitAt 144 (by omega)) hacc hcur
  · exact dtk_rung145 rho h bits[145]! (hbitAt 145 (by omega)) hacc hcur
  · exact dtk_rung146 rho h bits[146]! (hbitAt 146 (by omega)) hacc hcur
  · exact dtk_rung147 rho h bits[147]! (hbitAt 147 (by omega)) hacc hcur
  · exact dtk_rung148 rho h bits[148]! (hbitAt 148 (by omega)) hacc hcur
  · exact dtk_rung149 rho h bits[149]! (hbitAt 149 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport
