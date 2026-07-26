import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDtkScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs

theorem dtk_rows126 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4351 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4352 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4353 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4354 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4355 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4356 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4357 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4358 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4359 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4360 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4361 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4362 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4363 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p54, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart54 at p54
  rcases p54 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4351, r4352, r4353, r4354, r4355, r4356, r4357, r4358, r4359, r4360, r4361, r4362, r4363, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4351, r4352, r4353, r4354, r4355, r4356, r4357, r4358, r4359, r4360, r4361, r4362, r4363⟩

theorem dtk_rung126 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1109 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX126 rho : F), (dtkAccY126 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3843 : F), (rho 3844 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX126 rho : F), (dtkAccY126 rho : F)⟩
        ⟨(rho 3843 : F), (rho 3844 : F)⟩
        ⟨(dtkAccX127 rho : F), (dtkAccY127 rho : F)⟩
        ⟨(rho 3856 : F), (rho 3857 : F)⟩ := by
  obtain ⟨r4351, r4352, r4353, r4354, r4355, r4356, r4357, r4358, r4359, r4360, r4361, r4362, r4363⟩ := dtk_rows126 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4351 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc716 at r4351
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4351
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4352 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc717 at r4352
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4352
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4353 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc718 at r4353
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4353
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4354 at r4354
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4355 at r4355
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4356 at r4356
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4357 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc719 at r4357
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4357
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4358 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc720 at r4358
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4358
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4359 at r4359
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4360 at r4360
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4361 at r4361
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4362 at r4362
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4363 at r4363
  have hrung126 (bit : Bool) (hbit : rho 1109 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX126 rho : F), (dtkAccY126 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3843 : F), (rho 3844 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX126 rho : F), (dtkAccY126 rho : F)⟩
        ⟨(rho 3843 : F), (rho 3844 : F)⟩
        ⟨(dtkAccX127 rho : F), (dtkAccY127 rho : F)⟩
        ⟨(rho 3856 : F), (rho 3857 : F)⟩ := by
    have hnextx : dtkAccX127 rho = dtkAccX126 rho + rho 3851 := by
      unfold dtkAccX127 dtkAccX126
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 125]
      ring
    have hnexty : dtkAccY127 rho = dtkAccY126 rho + rho 3852 := by
      unfold dtkAccY127 dtkAccY126
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 126]
      ring
    have ha0 : (rho 3843 + rho 3844) * (dtkAccX126 rho + dtkAccY126 rho) = rho 3845 := by
      unfold dtkAccX126 dtkAccY126
      linear_combination r4351
    have ha1 : rho 3844 * dtkAccX126 rho = rho 3846 := by
      unfold dtkAccX126
      linear_combination r4352
    have ha2 : rho 3843 * dtkAccY126 rho = rho 3847 := by
      unfold dtkAccY126
      linear_combination r4353
    have ha3 : 3021 * rho 3846 * rho 3847 = rho 3848 := by
      linear_combination r4354
    have ha4 : rho 3849 * (1 + rho 3848) = rho 3846 + rho 3847 := by
      linear_combination r4355
    have ha5 : rho 3850 * (1 - rho 3848) = rho 3845 - rho 3846 - rho 3847 := by
      linear_combination r4356
    have haddx :
        rho 3849 * (1 + 3021 * (rho 3844 * dtkAccX126 rho) * (rho 3843 * dtkAccY126 rho)) =
          rho 3844 * dtkAccX126 rho + rho 3843 * dtkAccY126 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3850 * (1 - 3021 * (rho 3844 * dtkAccX126 rho) * (rho 3843 * dtkAccY126 rho)) =
          (-1) * (rho 3844 * dtkAccX126 rho) - rho 3843 * dtkAccY126 rho +
            (dtkAccY126 rho - dtkAccX126 rho * (-1)) * (rho 3843 + rho 3844) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3850 * (1 - rho 3848) = rho 3845 - rho 3846 - rho 3847 := ha5
        _ = (-1) * rho 3846 - rho 3847 + (dtkAccY126 rho - dtkAccX126 rho * (-1)) * (rho 3843 + rho 3844) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX127 rho = dtkAccX126 rho - Bool.toZMod bit * (dtkAccX126 rho - rho 3849) := by
      have hd : rho 3851 = Bool.toZMod bit * (rho 3849 - dtkAccX126 rho) := by
        rw [← hbit]
        unfold dtkAccX126
        linear_combination -r4357
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY127 rho = dtkAccY126 rho - Bool.toZMod bit * (dtkAccY126 rho - rho 3850) := by
      have hd : rho 3852 = Bool.toZMod bit * (rho 3850 - dtkAccY126 rho) := by
        rw [← hbit]
        unfold dtkAccY126
        linear_combination -r4358
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3843 * rho 3844 = rho 3853 := by linear_combination r4359
    have hd1 : rho 3843 * rho 3843 = rho 3854 := by linear_combination r4360
    have hd2 : rho 3844 * rho 3844 = rho 3855 := by linear_combination r4361
    have hd3 : rho 3856 * (rho 3844 * rho 3844 + rho 3843 * rho 3843 * (-1)) = 2 * (rho 3843 * rho 3844) := by
      rw [hd0, hd1, hd2]
      linear_combination r4362
    have hd4 : rho 3857 * (2 - (rho 3844 * rho 3844 + rho 3843 * rho 3843 * (-1))) = rho 3844 * rho 3844 - rho 3843 * rho 3843 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4363
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX126 rho : F), (dtkAccY126 rho : F)⟩
      ⟨(rho 3843 : F), (rho 3844 : F)⟩
      ⟨(rho 3849 : F), (rho 3850 : F)⟩
      ⟨(dtkAccX127 rho : F), (dtkAccY127 rho : F)⟩
      ⟨(rho 3856 : F), (rho 3857 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung126

theorem dtk_rows127 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4364 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4365 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4366 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4367 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4368 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4369 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4370 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4371 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4372 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4373 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4374 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4375 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4376 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p54, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart54 at p54
  rcases p54 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4364, r4365, r4366, r4367, r4368, r4369, r4370, r4371, r4372, r4373, r4374, r4375, r4376, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4364, r4365, r4366, r4367, r4368, r4369, r4370, r4371, r4372, r4373, r4374, r4375, r4376⟩

theorem dtk_rung127 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1110 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX127 rho : F), (dtkAccY127 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3856 : F), (rho 3857 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX127 rho : F), (dtkAccY127 rho : F)⟩
        ⟨(rho 3856 : F), (rho 3857 : F)⟩
        ⟨(dtkAccX128 rho : F), (dtkAccY128 rho : F)⟩
        ⟨(rho 3869 : F), (rho 3870 : F)⟩ := by
  obtain ⟨r4364, r4365, r4366, r4367, r4368, r4369, r4370, r4371, r4372, r4373, r4374, r4375, r4376⟩ := dtk_rows127 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4364 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc721 at r4364
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4364
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4365 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc722 at r4365
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4365
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4366 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc723 at r4366
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4366
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4367 at r4367
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4368 at r4368
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4369 at r4369
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4370 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc724 at r4370
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4370
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4371 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc725 at r4371
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4371
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4372 at r4372
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4373 at r4373
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4374 at r4374
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4375 at r4375
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4376 at r4376
  have hrung127 (bit : Bool) (hbit : rho 1110 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX127 rho : F), (dtkAccY127 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3856 : F), (rho 3857 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX127 rho : F), (dtkAccY127 rho : F)⟩
        ⟨(rho 3856 : F), (rho 3857 : F)⟩
        ⟨(dtkAccX128 rho : F), (dtkAccY128 rho : F)⟩
        ⟨(rho 3869 : F), (rho 3870 : F)⟩ := by
    have hnextx : dtkAccX128 rho = dtkAccX127 rho + rho 3864 := by
      unfold dtkAccX128 dtkAccX127
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 126]
      ring
    have hnexty : dtkAccY128 rho = dtkAccY127 rho + rho 3865 := by
      unfold dtkAccY128 dtkAccY127
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 127]
      ring
    have ha0 : (rho 3856 + rho 3857) * (dtkAccX127 rho + dtkAccY127 rho) = rho 3858 := by
      unfold dtkAccX127 dtkAccY127
      linear_combination r4364
    have ha1 : rho 3857 * dtkAccX127 rho = rho 3859 := by
      unfold dtkAccX127
      linear_combination r4365
    have ha2 : rho 3856 * dtkAccY127 rho = rho 3860 := by
      unfold dtkAccY127
      linear_combination r4366
    have ha3 : 3021 * rho 3859 * rho 3860 = rho 3861 := by
      linear_combination r4367
    have ha4 : rho 3862 * (1 + rho 3861) = rho 3859 + rho 3860 := by
      linear_combination r4368
    have ha5 : rho 3863 * (1 - rho 3861) = rho 3858 - rho 3859 - rho 3860 := by
      linear_combination r4369
    have haddx :
        rho 3862 * (1 + 3021 * (rho 3857 * dtkAccX127 rho) * (rho 3856 * dtkAccY127 rho)) =
          rho 3857 * dtkAccX127 rho + rho 3856 * dtkAccY127 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3863 * (1 - 3021 * (rho 3857 * dtkAccX127 rho) * (rho 3856 * dtkAccY127 rho)) =
          (-1) * (rho 3857 * dtkAccX127 rho) - rho 3856 * dtkAccY127 rho +
            (dtkAccY127 rho - dtkAccX127 rho * (-1)) * (rho 3856 + rho 3857) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3863 * (1 - rho 3861) = rho 3858 - rho 3859 - rho 3860 := ha5
        _ = (-1) * rho 3859 - rho 3860 + (dtkAccY127 rho - dtkAccX127 rho * (-1)) * (rho 3856 + rho 3857) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX128 rho = dtkAccX127 rho - Bool.toZMod bit * (dtkAccX127 rho - rho 3862) := by
      have hd : rho 3864 = Bool.toZMod bit * (rho 3862 - dtkAccX127 rho) := by
        rw [← hbit]
        unfold dtkAccX127
        linear_combination -r4370
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY128 rho = dtkAccY127 rho - Bool.toZMod bit * (dtkAccY127 rho - rho 3863) := by
      have hd : rho 3865 = Bool.toZMod bit * (rho 3863 - dtkAccY127 rho) := by
        rw [← hbit]
        unfold dtkAccY127
        linear_combination -r4371
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3856 * rho 3857 = rho 3866 := by linear_combination r4372
    have hd1 : rho 3856 * rho 3856 = rho 3867 := by linear_combination r4373
    have hd2 : rho 3857 * rho 3857 = rho 3868 := by linear_combination r4374
    have hd3 : rho 3869 * (rho 3857 * rho 3857 + rho 3856 * rho 3856 * (-1)) = 2 * (rho 3856 * rho 3857) := by
      rw [hd0, hd1, hd2]
      linear_combination r4375
    have hd4 : rho 3870 * (2 - (rho 3857 * rho 3857 + rho 3856 * rho 3856 * (-1))) = rho 3857 * rho 3857 - rho 3856 * rho 3856 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4376
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX127 rho : F), (dtkAccY127 rho : F)⟩
      ⟨(rho 3856 : F), (rho 3857 : F)⟩
      ⟨(rho 3862 : F), (rho 3863 : F)⟩
      ⟨(dtkAccX128 rho : F), (dtkAccY128 rho : F)⟩
      ⟨(rho 3869 : F), (rho 3870 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung127

theorem dtk_rows128 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4377 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4378 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4379 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4380 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4381 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4382 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4383 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4384 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4385 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4386 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4387 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4388 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4389 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p54, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart54 at p54
  rcases p54 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4377, r4378, r4379, r4380, r4381, r4382, r4383, r4384, r4385, r4386, r4387, r4388, r4389, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4377, r4378, r4379, r4380, r4381, r4382, r4383, r4384, r4385, r4386, r4387, r4388, r4389⟩

theorem dtk_rung128 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1111 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX128 rho : F), (dtkAccY128 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3869 : F), (rho 3870 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX128 rho : F), (dtkAccY128 rho : F)⟩
        ⟨(rho 3869 : F), (rho 3870 : F)⟩
        ⟨(dtkAccX129 rho : F), (dtkAccY129 rho : F)⟩
        ⟨(rho 3882 : F), (rho 3883 : F)⟩ := by
  obtain ⟨r4377, r4378, r4379, r4380, r4381, r4382, r4383, r4384, r4385, r4386, r4387, r4388, r4389⟩ := dtk_rows128 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4377 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc726 at r4377
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4377
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4378 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc727 at r4378
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4378
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4379 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc728 at r4379
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4379
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4380 at r4380
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4381 at r4381
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4382 at r4382
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4383 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc729 at r4383
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4383
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4384 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc730 at r4384
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4384
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4385 at r4385
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4386 at r4386
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4387 at r4387
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4388 at r4388
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4389 at r4389
  have hrung128 (bit : Bool) (hbit : rho 1111 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX128 rho : F), (dtkAccY128 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3869 : F), (rho 3870 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX128 rho : F), (dtkAccY128 rho : F)⟩
        ⟨(rho 3869 : F), (rho 3870 : F)⟩
        ⟨(dtkAccX129 rho : F), (dtkAccY129 rho : F)⟩
        ⟨(rho 3882 : F), (rho 3883 : F)⟩ := by
    have hnextx : dtkAccX129 rho = dtkAccX128 rho + rho 3877 := by
      unfold dtkAccX129 dtkAccX128
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 127]
      ring
    have hnexty : dtkAccY129 rho = dtkAccY128 rho + rho 3878 := by
      unfold dtkAccY129 dtkAccY128
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 128]
      ring
    have ha0 : (rho 3869 + rho 3870) * (dtkAccX128 rho + dtkAccY128 rho) = rho 3871 := by
      unfold dtkAccX128 dtkAccY128
      linear_combination r4377
    have ha1 : rho 3870 * dtkAccX128 rho = rho 3872 := by
      unfold dtkAccX128
      linear_combination r4378
    have ha2 : rho 3869 * dtkAccY128 rho = rho 3873 := by
      unfold dtkAccY128
      linear_combination r4379
    have ha3 : 3021 * rho 3872 * rho 3873 = rho 3874 := by
      linear_combination r4380
    have ha4 : rho 3875 * (1 + rho 3874) = rho 3872 + rho 3873 := by
      linear_combination r4381
    have ha5 : rho 3876 * (1 - rho 3874) = rho 3871 - rho 3872 - rho 3873 := by
      linear_combination r4382
    have haddx :
        rho 3875 * (1 + 3021 * (rho 3870 * dtkAccX128 rho) * (rho 3869 * dtkAccY128 rho)) =
          rho 3870 * dtkAccX128 rho + rho 3869 * dtkAccY128 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3876 * (1 - 3021 * (rho 3870 * dtkAccX128 rho) * (rho 3869 * dtkAccY128 rho)) =
          (-1) * (rho 3870 * dtkAccX128 rho) - rho 3869 * dtkAccY128 rho +
            (dtkAccY128 rho - dtkAccX128 rho * (-1)) * (rho 3869 + rho 3870) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3876 * (1 - rho 3874) = rho 3871 - rho 3872 - rho 3873 := ha5
        _ = (-1) * rho 3872 - rho 3873 + (dtkAccY128 rho - dtkAccX128 rho * (-1)) * (rho 3869 + rho 3870) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX129 rho = dtkAccX128 rho - Bool.toZMod bit * (dtkAccX128 rho - rho 3875) := by
      have hd : rho 3877 = Bool.toZMod bit * (rho 3875 - dtkAccX128 rho) := by
        rw [← hbit]
        unfold dtkAccX128
        linear_combination -r4383
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY129 rho = dtkAccY128 rho - Bool.toZMod bit * (dtkAccY128 rho - rho 3876) := by
      have hd : rho 3878 = Bool.toZMod bit * (rho 3876 - dtkAccY128 rho) := by
        rw [← hbit]
        unfold dtkAccY128
        linear_combination -r4384
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3869 * rho 3870 = rho 3879 := by linear_combination r4385
    have hd1 : rho 3869 * rho 3869 = rho 3880 := by linear_combination r4386
    have hd2 : rho 3870 * rho 3870 = rho 3881 := by linear_combination r4387
    have hd3 : rho 3882 * (rho 3870 * rho 3870 + rho 3869 * rho 3869 * (-1)) = 2 * (rho 3869 * rho 3870) := by
      rw [hd0, hd1, hd2]
      linear_combination r4388
    have hd4 : rho 3883 * (2 - (rho 3870 * rho 3870 + rho 3869 * rho 3869 * (-1))) = rho 3870 * rho 3870 - rho 3869 * rho 3869 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4389
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX128 rho : F), (dtkAccY128 rho : F)⟩
      ⟨(rho 3869 : F), (rho 3870 : F)⟩
      ⟨(rho 3875 : F), (rho 3876 : F)⟩
      ⟨(dtkAccX129 rho : F), (dtkAccY129 rho : F)⟩
      ⟨(rho 3882 : F), (rho 3883 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung128

theorem dtk_rows129 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4390 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4391 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4392 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4393 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4394 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4395 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4396 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4397 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4398 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4399 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4400 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4401 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4402 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p54, p55, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart54 at p54
  rcases p54 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4390, r4391, r4392, r4393, r4394, r4395, r4396, r4397, r4398, r4399⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart55 at p55
  rcases p55 with ⟨r4400, r4401, r4402, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4390, r4391, r4392, r4393, r4394, r4395, r4396, r4397, r4398, r4399, r4400, r4401, r4402⟩

theorem dtk_rung129 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1112 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX129 rho : F), (dtkAccY129 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3882 : F), (rho 3883 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX129 rho : F), (dtkAccY129 rho : F)⟩
        ⟨(rho 3882 : F), (rho 3883 : F)⟩
        ⟨(dtkAccX130 rho : F), (dtkAccY130 rho : F)⟩
        ⟨(rho 3895 : F), (rho 3896 : F)⟩ := by
  obtain ⟨r4390, r4391, r4392, r4393, r4394, r4395, r4396, r4397, r4398, r4399, r4400, r4401, r4402⟩ := dtk_rows129 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4390 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc731 at r4390
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4390
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4391 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc732 at r4391
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4391
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4392 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc733 at r4392
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4392
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4393 at r4393
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4394 at r4394
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4395 at r4395
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4396 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc734 at r4396
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4396
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4397 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc735 at r4397
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4397
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4398 at r4398
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4399 at r4399
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4400 at r4400
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4401 at r4401
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4402 at r4402
  have hrung129 (bit : Bool) (hbit : rho 1112 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX129 rho : F), (dtkAccY129 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3882 : F), (rho 3883 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX129 rho : F), (dtkAccY129 rho : F)⟩
        ⟨(rho 3882 : F), (rho 3883 : F)⟩
        ⟨(dtkAccX130 rho : F), (dtkAccY130 rho : F)⟩
        ⟨(rho 3895 : F), (rho 3896 : F)⟩ := by
    have hnextx : dtkAccX130 rho = dtkAccX129 rho + rho 3890 := by
      unfold dtkAccX130 dtkAccX129
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 128]
      ring
    have hnexty : dtkAccY130 rho = dtkAccY129 rho + rho 3891 := by
      unfold dtkAccY130 dtkAccY129
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 129]
      ring
    have ha0 : (rho 3882 + rho 3883) * (dtkAccX129 rho + dtkAccY129 rho) = rho 3884 := by
      unfold dtkAccX129 dtkAccY129
      linear_combination r4390
    have ha1 : rho 3883 * dtkAccX129 rho = rho 3885 := by
      unfold dtkAccX129
      linear_combination r4391
    have ha2 : rho 3882 * dtkAccY129 rho = rho 3886 := by
      unfold dtkAccY129
      linear_combination r4392
    have ha3 : 3021 * rho 3885 * rho 3886 = rho 3887 := by
      linear_combination r4393
    have ha4 : rho 3888 * (1 + rho 3887) = rho 3885 + rho 3886 := by
      linear_combination r4394
    have ha5 : rho 3889 * (1 - rho 3887) = rho 3884 - rho 3885 - rho 3886 := by
      linear_combination r4395
    have haddx :
        rho 3888 * (1 + 3021 * (rho 3883 * dtkAccX129 rho) * (rho 3882 * dtkAccY129 rho)) =
          rho 3883 * dtkAccX129 rho + rho 3882 * dtkAccY129 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3889 * (1 - 3021 * (rho 3883 * dtkAccX129 rho) * (rho 3882 * dtkAccY129 rho)) =
          (-1) * (rho 3883 * dtkAccX129 rho) - rho 3882 * dtkAccY129 rho +
            (dtkAccY129 rho - dtkAccX129 rho * (-1)) * (rho 3882 + rho 3883) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3889 * (1 - rho 3887) = rho 3884 - rho 3885 - rho 3886 := ha5
        _ = (-1) * rho 3885 - rho 3886 + (dtkAccY129 rho - dtkAccX129 rho * (-1)) * (rho 3882 + rho 3883) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX130 rho = dtkAccX129 rho - Bool.toZMod bit * (dtkAccX129 rho - rho 3888) := by
      have hd : rho 3890 = Bool.toZMod bit * (rho 3888 - dtkAccX129 rho) := by
        rw [← hbit]
        unfold dtkAccX129
        linear_combination -r4396
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY130 rho = dtkAccY129 rho - Bool.toZMod bit * (dtkAccY129 rho - rho 3889) := by
      have hd : rho 3891 = Bool.toZMod bit * (rho 3889 - dtkAccY129 rho) := by
        rw [← hbit]
        unfold dtkAccY129
        linear_combination -r4397
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3882 * rho 3883 = rho 3892 := by linear_combination r4398
    have hd1 : rho 3882 * rho 3882 = rho 3893 := by linear_combination r4399
    have hd2 : rho 3883 * rho 3883 = rho 3894 := by linear_combination r4400
    have hd3 : rho 3895 * (rho 3883 * rho 3883 + rho 3882 * rho 3882 * (-1)) = 2 * (rho 3882 * rho 3883) := by
      rw [hd0, hd1, hd2]
      linear_combination r4401
    have hd4 : rho 3896 * (2 - (rho 3883 * rho 3883 + rho 3882 * rho 3882 * (-1))) = rho 3883 * rho 3883 - rho 3882 * rho 3882 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4402
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX129 rho : F), (dtkAccY129 rho : F)⟩
      ⟨(rho 3882 : F), (rho 3883 : F)⟩
      ⟨(rho 3888 : F), (rho 3889 : F)⟩
      ⟨(dtkAccX130 rho : F), (dtkAccY130 rho : F)⟩
      ⟨(rho 3895 : F), (rho 3896 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung129

theorem dtk_rows130 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4403 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4404 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4405 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4406 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4407 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4408 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4409 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4410 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4411 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4412 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4413 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4414 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4415 rho := by
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
  rcases p55 with ⟨_, _, _, r4403, r4404, r4405, r4406, r4407, r4408, r4409, r4410, r4411, r4412, r4413, r4414, r4415, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4403, r4404, r4405, r4406, r4407, r4408, r4409, r4410, r4411, r4412, r4413, r4414, r4415⟩

theorem dtk_rung130 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1113 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX130 rho : F), (dtkAccY130 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3895 : F), (rho 3896 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX130 rho : F), (dtkAccY130 rho : F)⟩
        ⟨(rho 3895 : F), (rho 3896 : F)⟩
        ⟨(dtkAccX131 rho : F), (dtkAccY131 rho : F)⟩
        ⟨(rho 3908 : F), (rho 3909 : F)⟩ := by
  obtain ⟨r4403, r4404, r4405, r4406, r4407, r4408, r4409, r4410, r4411, r4412, r4413, r4414, r4415⟩ := dtk_rows130 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4403 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc736 at r4403
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4403
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4404 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc737 at r4404
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4404
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4405 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc738 at r4405
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4405
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4406 at r4406
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4407 at r4407
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4408 at r4408
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4409 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc739 at r4409
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4409
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4410 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc740 at r4410
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4410
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4411 at r4411
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4412 at r4412
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4413 at r4413
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4414 at r4414
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4415 at r4415
  have hrung130 (bit : Bool) (hbit : rho 1113 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX130 rho : F), (dtkAccY130 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3895 : F), (rho 3896 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX130 rho : F), (dtkAccY130 rho : F)⟩
        ⟨(rho 3895 : F), (rho 3896 : F)⟩
        ⟨(dtkAccX131 rho : F), (dtkAccY131 rho : F)⟩
        ⟨(rho 3908 : F), (rho 3909 : F)⟩ := by
    have hnextx : dtkAccX131 rho = dtkAccX130 rho + rho 3903 := by
      unfold dtkAccX131 dtkAccX130
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 129]
      ring
    have hnexty : dtkAccY131 rho = dtkAccY130 rho + rho 3904 := by
      unfold dtkAccY131 dtkAccY130
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 130]
      ring
    have ha0 : (rho 3895 + rho 3896) * (dtkAccX130 rho + dtkAccY130 rho) = rho 3897 := by
      unfold dtkAccX130 dtkAccY130
      linear_combination r4403
    have ha1 : rho 3896 * dtkAccX130 rho = rho 3898 := by
      unfold dtkAccX130
      linear_combination r4404
    have ha2 : rho 3895 * dtkAccY130 rho = rho 3899 := by
      unfold dtkAccY130
      linear_combination r4405
    have ha3 : 3021 * rho 3898 * rho 3899 = rho 3900 := by
      linear_combination r4406
    have ha4 : rho 3901 * (1 + rho 3900) = rho 3898 + rho 3899 := by
      linear_combination r4407
    have ha5 : rho 3902 * (1 - rho 3900) = rho 3897 - rho 3898 - rho 3899 := by
      linear_combination r4408
    have haddx :
        rho 3901 * (1 + 3021 * (rho 3896 * dtkAccX130 rho) * (rho 3895 * dtkAccY130 rho)) =
          rho 3896 * dtkAccX130 rho + rho 3895 * dtkAccY130 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3902 * (1 - 3021 * (rho 3896 * dtkAccX130 rho) * (rho 3895 * dtkAccY130 rho)) =
          (-1) * (rho 3896 * dtkAccX130 rho) - rho 3895 * dtkAccY130 rho +
            (dtkAccY130 rho - dtkAccX130 rho * (-1)) * (rho 3895 + rho 3896) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3902 * (1 - rho 3900) = rho 3897 - rho 3898 - rho 3899 := ha5
        _ = (-1) * rho 3898 - rho 3899 + (dtkAccY130 rho - dtkAccX130 rho * (-1)) * (rho 3895 + rho 3896) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX131 rho = dtkAccX130 rho - Bool.toZMod bit * (dtkAccX130 rho - rho 3901) := by
      have hd : rho 3903 = Bool.toZMod bit * (rho 3901 - dtkAccX130 rho) := by
        rw [← hbit]
        unfold dtkAccX130
        linear_combination -r4409
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY131 rho = dtkAccY130 rho - Bool.toZMod bit * (dtkAccY130 rho - rho 3902) := by
      have hd : rho 3904 = Bool.toZMod bit * (rho 3902 - dtkAccY130 rho) := by
        rw [← hbit]
        unfold dtkAccY130
        linear_combination -r4410
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3895 * rho 3896 = rho 3905 := by linear_combination r4411
    have hd1 : rho 3895 * rho 3895 = rho 3906 := by linear_combination r4412
    have hd2 : rho 3896 * rho 3896 = rho 3907 := by linear_combination r4413
    have hd3 : rho 3908 * (rho 3896 * rho 3896 + rho 3895 * rho 3895 * (-1)) = 2 * (rho 3895 * rho 3896) := by
      rw [hd0, hd1, hd2]
      linear_combination r4414
    have hd4 : rho 3909 * (2 - (rho 3896 * rho 3896 + rho 3895 * rho 3895 * (-1))) = rho 3896 * rho 3896 - rho 3895 * rho 3895 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4415
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX130 rho : F), (dtkAccY130 rho : F)⟩
      ⟨(rho 3895 : F), (rho 3896 : F)⟩
      ⟨(rho 3901 : F), (rho 3902 : F)⟩
      ⟨(dtkAccX131 rho : F), (dtkAccY131 rho : F)⟩
      ⟨(rho 3908 : F), (rho 3909 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung130

theorem dtk_rows131 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4416 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4417 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4418 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4419 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4420 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4421 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4422 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4423 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4424 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4425 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4426 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4427 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4428 rho := by
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
  rcases p55 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4416, r4417, r4418, r4419, r4420, r4421, r4422, r4423, r4424, r4425, r4426, r4427, r4428, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4416, r4417, r4418, r4419, r4420, r4421, r4422, r4423, r4424, r4425, r4426, r4427, r4428⟩

theorem dtk_rung131 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1114 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX131 rho : F), (dtkAccY131 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3908 : F), (rho 3909 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX131 rho : F), (dtkAccY131 rho : F)⟩
        ⟨(rho 3908 : F), (rho 3909 : F)⟩
        ⟨(dtkAccX132 rho : F), (dtkAccY132 rho : F)⟩
        ⟨(rho 3921 : F), (rho 3922 : F)⟩ := by
  obtain ⟨r4416, r4417, r4418, r4419, r4420, r4421, r4422, r4423, r4424, r4425, r4426, r4427, r4428⟩ := dtk_rows131 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4416 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc741 at r4416
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4416
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4417 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc742 at r4417
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4417
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4418 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc743 at r4418
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4418
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4419 at r4419
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4420 at r4420
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4421 at r4421
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4422 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc744 at r4422
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4422
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4423 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc745 at r4423
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4423
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4424 at r4424
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4425 at r4425
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4426 at r4426
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4427 at r4427
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4428 at r4428
  have hrung131 (bit : Bool) (hbit : rho 1114 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX131 rho : F), (dtkAccY131 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3908 : F), (rho 3909 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX131 rho : F), (dtkAccY131 rho : F)⟩
        ⟨(rho 3908 : F), (rho 3909 : F)⟩
        ⟨(dtkAccX132 rho : F), (dtkAccY132 rho : F)⟩
        ⟨(rho 3921 : F), (rho 3922 : F)⟩ := by
    have hnextx : dtkAccX132 rho = dtkAccX131 rho + rho 3916 := by
      unfold dtkAccX132 dtkAccX131
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 130]
      ring
    have hnexty : dtkAccY132 rho = dtkAccY131 rho + rho 3917 := by
      unfold dtkAccY132 dtkAccY131
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 131]
      ring
    have ha0 : (rho 3908 + rho 3909) * (dtkAccX131 rho + dtkAccY131 rho) = rho 3910 := by
      unfold dtkAccX131 dtkAccY131
      linear_combination r4416
    have ha1 : rho 3909 * dtkAccX131 rho = rho 3911 := by
      unfold dtkAccX131
      linear_combination r4417
    have ha2 : rho 3908 * dtkAccY131 rho = rho 3912 := by
      unfold dtkAccY131
      linear_combination r4418
    have ha3 : 3021 * rho 3911 * rho 3912 = rho 3913 := by
      linear_combination r4419
    have ha4 : rho 3914 * (1 + rho 3913) = rho 3911 + rho 3912 := by
      linear_combination r4420
    have ha5 : rho 3915 * (1 - rho 3913) = rho 3910 - rho 3911 - rho 3912 := by
      linear_combination r4421
    have haddx :
        rho 3914 * (1 + 3021 * (rho 3909 * dtkAccX131 rho) * (rho 3908 * dtkAccY131 rho)) =
          rho 3909 * dtkAccX131 rho + rho 3908 * dtkAccY131 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3915 * (1 - 3021 * (rho 3909 * dtkAccX131 rho) * (rho 3908 * dtkAccY131 rho)) =
          (-1) * (rho 3909 * dtkAccX131 rho) - rho 3908 * dtkAccY131 rho +
            (dtkAccY131 rho - dtkAccX131 rho * (-1)) * (rho 3908 + rho 3909) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3915 * (1 - rho 3913) = rho 3910 - rho 3911 - rho 3912 := ha5
        _ = (-1) * rho 3911 - rho 3912 + (dtkAccY131 rho - dtkAccX131 rho * (-1)) * (rho 3908 + rho 3909) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX132 rho = dtkAccX131 rho - Bool.toZMod bit * (dtkAccX131 rho - rho 3914) := by
      have hd : rho 3916 = Bool.toZMod bit * (rho 3914 - dtkAccX131 rho) := by
        rw [← hbit]
        unfold dtkAccX131
        linear_combination -r4422
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY132 rho = dtkAccY131 rho - Bool.toZMod bit * (dtkAccY131 rho - rho 3915) := by
      have hd : rho 3917 = Bool.toZMod bit * (rho 3915 - dtkAccY131 rho) := by
        rw [← hbit]
        unfold dtkAccY131
        linear_combination -r4423
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3908 * rho 3909 = rho 3918 := by linear_combination r4424
    have hd1 : rho 3908 * rho 3908 = rho 3919 := by linear_combination r4425
    have hd2 : rho 3909 * rho 3909 = rho 3920 := by linear_combination r4426
    have hd3 : rho 3921 * (rho 3909 * rho 3909 + rho 3908 * rho 3908 * (-1)) = 2 * (rho 3908 * rho 3909) := by
      rw [hd0, hd1, hd2]
      linear_combination r4427
    have hd4 : rho 3922 * (2 - (rho 3909 * rho 3909 + rho 3908 * rho 3908 * (-1))) = rho 3909 * rho 3909 - rho 3908 * rho 3908 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4428
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX131 rho : F), (dtkAccY131 rho : F)⟩
      ⟨(rho 3908 : F), (rho 3909 : F)⟩
      ⟨(rho 3914 : F), (rho 3915 : F)⟩
      ⟨(dtkAccX132 rho : F), (dtkAccY132 rho : F)⟩
      ⟨(rho 3921 : F), (rho 3922 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung131

theorem dtk_hstep_c21 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (983 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 126 ≤ i → i < 132 →
      EdwardsBridge.onCurve (dtkLadderAccState rho i) →
      EdwardsBridge.onCurve (dtkLadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (dtkLadderAccState rho i) (dtkLadderCurState rho i)
        (dtkLadderAccState rho (i + 1)) (dtkLadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact dtk_rung126 rho h bits[126]! (hbitAt 126 (by omega)) hacc hcur
  · exact dtk_rung127 rho h bits[127]! (hbitAt 127 (by omega)) hacc hcur
  · exact dtk_rung128 rho h bits[128]! (hbitAt 128 (by omega)) hacc hcur
  · exact dtk_rung129 rho h bits[129]! (hbitAt 129 (by omega)) hacc hcur
  · exact dtk_rung130 rho h bits[130]! (hbitAt 130 (by omega)) hacc hcur
  · exact dtk_rung131 rho h bits[131]! (hbitAt 131 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport
