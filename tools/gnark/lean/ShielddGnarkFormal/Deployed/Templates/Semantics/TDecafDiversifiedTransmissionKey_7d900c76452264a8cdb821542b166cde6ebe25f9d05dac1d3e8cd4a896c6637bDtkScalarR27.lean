import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDtkScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs

theorem dtk_rows162 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4831 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4832 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4833 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4834 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4835 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4836 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4837 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4838 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4839 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4840 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4841 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4842 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4843 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4844 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p60, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart60 at p60
  rcases p60 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4831, r4832, r4833, r4834, r4835, r4836, r4837, r4838, r4839, r4840, r4841, r4842, r4843, r4844, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4831, r4832, r4833, r4834, r4835, r4836, r4837, r4838, r4839, r4840, r4841, r4842, r4843, r4844⟩

theorem dtk_rung162 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1145 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX162 rho : F), (dtkAccY162 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4323 : F), (rho 4324 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX162 rho : F), (dtkAccY162 rho : F)⟩
        ⟨(rho 4323 : F), (rho 4324 : F)⟩
        ⟨(dtkAccX163 rho : F), (dtkAccY163 rho : F)⟩
        ⟨(rho 4337 : F), (rho 4338 : F)⟩ := by
  obtain ⟨r4831, r4832, r4833, r4834, r4835, r4836, r4837, r4838, r4839, r4840, r4841, r4842, r4843, r4844⟩ := dtk_rows162 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4831 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc896 at r4831
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4831
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4832 at r4832
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4833 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc897 at r4833
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4833
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4834 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc898 at r4834
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4834
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4835 at r4835
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4836 at r4836
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4837 at r4837
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4838 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc899 at r4838
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4838
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4839 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc900 at r4839
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4839
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4840 at r4840
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4841 at r4841
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4842 at r4842
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4843 at r4843
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4844 at r4844
  have hrung162 (bit : Bool) (hbit : rho 1145 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX162 rho : F), (dtkAccY162 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4323 : F), (rho 4324 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX162 rho : F), (dtkAccY162 rho : F)⟩
        ⟨(rho 4323 : F), (rho 4324 : F)⟩
        ⟨(dtkAccX163 rho : F), (dtkAccY163 rho : F)⟩
        ⟨(rho 4337 : F), (rho 4338 : F)⟩ := by
    have hnextx : dtkAccX163 rho = dtkAccX162 rho + rho 4332 := by
      unfold dtkAccX163 dtkAccX162
      ring
    have hnexty : dtkAccY163 rho = dtkAccY162 rho + rho 4333 := by
      unfold dtkAccY163 dtkAccY162
      ring
    have hsum : dtkAccX162 rho + dtkAccY162 rho = rho 4325 := by
      unfold dtkAccX162 dtkAccY162
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 150] at r4831
      linear_combination r4831
    have ha0 : (rho 4323 + rho 4324) * (dtkAccX162 rho + dtkAccY162 rho) = rho 4326 := by
      rw [hsum]
      linear_combination r4832
    have ha1 : rho 4324 * dtkAccX162 rho = rho 4327 := by
      unfold dtkAccX162
      linear_combination r4833
    have ha2 : rho 4323 * dtkAccY162 rho = rho 4328 := by
      unfold dtkAccY162
      linear_combination r4834
    have ha3 : 3021 * rho 4327 * rho 4328 = rho 4329 := by
      linear_combination r4835
    have ha4 : rho 4330 * (1 + rho 4329) = rho 4327 + rho 4328 := by
      linear_combination r4836
    have ha5 : rho 4331 * (1 - rho 4329) = rho 4326 - rho 4327 - rho 4328 := by
      linear_combination r4837
    have haddx :
        rho 4330 * (1 + 3021 * (rho 4324 * dtkAccX162 rho) * (rho 4323 * dtkAccY162 rho)) =
          rho 4324 * dtkAccX162 rho + rho 4323 * dtkAccY162 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4331 * (1 - 3021 * (rho 4324 * dtkAccX162 rho) * (rho 4323 * dtkAccY162 rho)) =
          (-1) * (rho 4324 * dtkAccX162 rho) - rho 4323 * dtkAccY162 rho +
            (dtkAccY162 rho - dtkAccX162 rho * (-1)) * (rho 4323 + rho 4324) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4331 * (1 - rho 4329) = rho 4326 - rho 4327 - rho 4328 := ha5
        _ = (-1) * rho 4327 - rho 4328 + (dtkAccY162 rho - dtkAccX162 rho * (-1)) * (rho 4323 + rho 4324) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX163 rho = dtkAccX162 rho - Bool.toZMod bit * (dtkAccX162 rho - rho 4330) := by
      have hd : rho 4332 = Bool.toZMod bit * (rho 4330 - dtkAccX162 rho) := by
        rw [← hbit]
        unfold dtkAccX162
        linear_combination -r4838
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY163 rho = dtkAccY162 rho - Bool.toZMod bit * (dtkAccY162 rho - rho 4331) := by
      have hd : rho 4333 = Bool.toZMod bit * (rho 4331 - dtkAccY162 rho) := by
        rw [← hbit]
        unfold dtkAccY162
        linear_combination -r4839
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4323 * rho 4324 = rho 4334 := by linear_combination r4840
    have hd1 : rho 4323 * rho 4323 = rho 4335 := by linear_combination r4841
    have hd2 : rho 4324 * rho 4324 = rho 4336 := by linear_combination r4842
    have hd3 : rho 4337 * (rho 4324 * rho 4324 + rho 4323 * rho 4323 * (-1)) = 2 * (rho 4323 * rho 4324) := by
      rw [hd0, hd1, hd2]
      linear_combination r4843
    have hd4 : rho 4338 * (2 - (rho 4324 * rho 4324 + rho 4323 * rho 4323 * (-1))) = rho 4324 * rho 4324 - rho 4323 * rho 4323 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4844
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX162 rho : F), (dtkAccY162 rho : F)⟩
      ⟨(rho 4323 : F), (rho 4324 : F)⟩
      ⟨(rho 4330 : F), (rho 4331 : F)⟩
      ⟨(dtkAccX163 rho : F), (dtkAccY163 rho : F)⟩
      ⟨(rho 4337 : F), (rho 4338 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung162

theorem dtk_rows163 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4845 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4846 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4847 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4848 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4849 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4850 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4851 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4852 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4853 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4854 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4855 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4856 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4857 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4858 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p60, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart60 at p60
  rcases p60 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4845, r4846, r4847, r4848, r4849, r4850, r4851, r4852, r4853, r4854, r4855, r4856, r4857, r4858, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4845, r4846, r4847, r4848, r4849, r4850, r4851, r4852, r4853, r4854, r4855, r4856, r4857, r4858⟩

theorem dtk_rung163 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1146 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX163 rho : F), (dtkAccY163 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4337 : F), (rho 4338 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX163 rho : F), (dtkAccY163 rho : F)⟩
        ⟨(rho 4337 : F), (rho 4338 : F)⟩
        ⟨(dtkAccX164 rho : F), (dtkAccY164 rho : F)⟩
        ⟨(rho 4351 : F), (rho 4352 : F)⟩ := by
  obtain ⟨r4845, r4846, r4847, r4848, r4849, r4850, r4851, r4852, r4853, r4854, r4855, r4856, r4857, r4858⟩ := dtk_rows163 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4845 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc901 at r4845
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4845
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4846 at r4846
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4847 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc902 at r4847
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4847
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4848 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc903 at r4848
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4848
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4849 at r4849
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4850 at r4850
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4851 at r4851
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4852 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc904 at r4852
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4852
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4853 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc905 at r4853
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4853
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4854 at r4854
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4855 at r4855
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4856 at r4856
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4857 at r4857
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4858 at r4858
  have hrung163 (bit : Bool) (hbit : rho 1146 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX163 rho : F), (dtkAccY163 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4337 : F), (rho 4338 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX163 rho : F), (dtkAccY163 rho : F)⟩
        ⟨(rho 4337 : F), (rho 4338 : F)⟩
        ⟨(dtkAccX164 rho : F), (dtkAccY164 rho : F)⟩
        ⟨(rho 4351 : F), (rho 4352 : F)⟩ := by
    have hnextx : dtkAccX164 rho = dtkAccX163 rho + rho 4346 := by
      unfold dtkAccX164 dtkAccX163
      ring
    have hnexty : dtkAccY164 rho = dtkAccY163 rho + rho 4347 := by
      unfold dtkAccY164 dtkAccY163
      ring
    have hsum : dtkAccX163 rho + dtkAccY163 rho = rho 4339 := by
      unfold dtkAccX163 dtkAccY163
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 150] at r4845
      linear_combination r4845
    have ha0 : (rho 4337 + rho 4338) * (dtkAccX163 rho + dtkAccY163 rho) = rho 4340 := by
      rw [hsum]
      linear_combination r4846
    have ha1 : rho 4338 * dtkAccX163 rho = rho 4341 := by
      unfold dtkAccX163
      linear_combination r4847
    have ha2 : rho 4337 * dtkAccY163 rho = rho 4342 := by
      unfold dtkAccY163
      linear_combination r4848
    have ha3 : 3021 * rho 4341 * rho 4342 = rho 4343 := by
      linear_combination r4849
    have ha4 : rho 4344 * (1 + rho 4343) = rho 4341 + rho 4342 := by
      linear_combination r4850
    have ha5 : rho 4345 * (1 - rho 4343) = rho 4340 - rho 4341 - rho 4342 := by
      linear_combination r4851
    have haddx :
        rho 4344 * (1 + 3021 * (rho 4338 * dtkAccX163 rho) * (rho 4337 * dtkAccY163 rho)) =
          rho 4338 * dtkAccX163 rho + rho 4337 * dtkAccY163 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4345 * (1 - 3021 * (rho 4338 * dtkAccX163 rho) * (rho 4337 * dtkAccY163 rho)) =
          (-1) * (rho 4338 * dtkAccX163 rho) - rho 4337 * dtkAccY163 rho +
            (dtkAccY163 rho - dtkAccX163 rho * (-1)) * (rho 4337 + rho 4338) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4345 * (1 - rho 4343) = rho 4340 - rho 4341 - rho 4342 := ha5
        _ = (-1) * rho 4341 - rho 4342 + (dtkAccY163 rho - dtkAccX163 rho * (-1)) * (rho 4337 + rho 4338) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX164 rho = dtkAccX163 rho - Bool.toZMod bit * (dtkAccX163 rho - rho 4344) := by
      have hd : rho 4346 = Bool.toZMod bit * (rho 4344 - dtkAccX163 rho) := by
        rw [← hbit]
        unfold dtkAccX163
        linear_combination -r4852
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY164 rho = dtkAccY163 rho - Bool.toZMod bit * (dtkAccY163 rho - rho 4345) := by
      have hd : rho 4347 = Bool.toZMod bit * (rho 4345 - dtkAccY163 rho) := by
        rw [← hbit]
        unfold dtkAccY163
        linear_combination -r4853
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4337 * rho 4338 = rho 4348 := by linear_combination r4854
    have hd1 : rho 4337 * rho 4337 = rho 4349 := by linear_combination r4855
    have hd2 : rho 4338 * rho 4338 = rho 4350 := by linear_combination r4856
    have hd3 : rho 4351 * (rho 4338 * rho 4338 + rho 4337 * rho 4337 * (-1)) = 2 * (rho 4337 * rho 4338) := by
      rw [hd0, hd1, hd2]
      linear_combination r4857
    have hd4 : rho 4352 * (2 - (rho 4338 * rho 4338 + rho 4337 * rho 4337 * (-1))) = rho 4338 * rho 4338 - rho 4337 * rho 4337 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4858
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX163 rho : F), (dtkAccY163 rho : F)⟩
      ⟨(rho 4337 : F), (rho 4338 : F)⟩
      ⟨(rho 4344 : F), (rho 4345 : F)⟩
      ⟨(dtkAccX164 rho : F), (dtkAccY164 rho : F)⟩
      ⟨(rho 4351 : F), (rho 4352 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung163

theorem dtk_rows164 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4859 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4860 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4861 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4862 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4863 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4864 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4865 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4866 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4867 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4868 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4869 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4870 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4871 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4872 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p60, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart60 at p60
  rcases p60 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4859, r4860, r4861, r4862, r4863, r4864, r4865, r4866, r4867, r4868, r4869, r4870, r4871, r4872, _, _, _, _, _, _, _⟩
  exact ⟨r4859, r4860, r4861, r4862, r4863, r4864, r4865, r4866, r4867, r4868, r4869, r4870, r4871, r4872⟩

theorem dtk_rung164 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1147 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX164 rho : F), (dtkAccY164 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4351 : F), (rho 4352 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX164 rho : F), (dtkAccY164 rho : F)⟩
        ⟨(rho 4351 : F), (rho 4352 : F)⟩
        ⟨(dtkAccX165 rho : F), (dtkAccY165 rho : F)⟩
        ⟨(rho 4365 : F), (rho 4366 : F)⟩ := by
  obtain ⟨r4859, r4860, r4861, r4862, r4863, r4864, r4865, r4866, r4867, r4868, r4869, r4870, r4871, r4872⟩ := dtk_rows164 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4859 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc906 at r4859
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4859
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4860 at r4860
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4861 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc907 at r4861
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4861
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4862 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc908 at r4862
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4862
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4863 at r4863
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4864 at r4864
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4865 at r4865
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4866 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc909 at r4866
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4866
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4867 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc910 at r4867
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4867
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4868 at r4868
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4869 at r4869
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4870 at r4870
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4871 at r4871
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4872 at r4872
  have hrung164 (bit : Bool) (hbit : rho 1147 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX164 rho : F), (dtkAccY164 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4351 : F), (rho 4352 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX164 rho : F), (dtkAccY164 rho : F)⟩
        ⟨(rho 4351 : F), (rho 4352 : F)⟩
        ⟨(dtkAccX165 rho : F), (dtkAccY165 rho : F)⟩
        ⟨(rho 4365 : F), (rho 4366 : F)⟩ := by
    have hnextx : dtkAccX165 rho = dtkAccX164 rho + rho 4360 := by
      unfold dtkAccX165 dtkAccX164
      ring
    have hnexty : dtkAccY165 rho = dtkAccY164 rho + rho 4361 := by
      unfold dtkAccY165 dtkAccY164
      ring
    have hsum : dtkAccX164 rho + dtkAccY164 rho = rho 4353 := by
      unfold dtkAccX164 dtkAccY164
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 150] at r4859
      linear_combination r4859
    have ha0 : (rho 4351 + rho 4352) * (dtkAccX164 rho + dtkAccY164 rho) = rho 4354 := by
      rw [hsum]
      linear_combination r4860
    have ha1 : rho 4352 * dtkAccX164 rho = rho 4355 := by
      unfold dtkAccX164
      linear_combination r4861
    have ha2 : rho 4351 * dtkAccY164 rho = rho 4356 := by
      unfold dtkAccY164
      linear_combination r4862
    have ha3 : 3021 * rho 4355 * rho 4356 = rho 4357 := by
      linear_combination r4863
    have ha4 : rho 4358 * (1 + rho 4357) = rho 4355 + rho 4356 := by
      linear_combination r4864
    have ha5 : rho 4359 * (1 - rho 4357) = rho 4354 - rho 4355 - rho 4356 := by
      linear_combination r4865
    have haddx :
        rho 4358 * (1 + 3021 * (rho 4352 * dtkAccX164 rho) * (rho 4351 * dtkAccY164 rho)) =
          rho 4352 * dtkAccX164 rho + rho 4351 * dtkAccY164 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4359 * (1 - 3021 * (rho 4352 * dtkAccX164 rho) * (rho 4351 * dtkAccY164 rho)) =
          (-1) * (rho 4352 * dtkAccX164 rho) - rho 4351 * dtkAccY164 rho +
            (dtkAccY164 rho - dtkAccX164 rho * (-1)) * (rho 4351 + rho 4352) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4359 * (1 - rho 4357) = rho 4354 - rho 4355 - rho 4356 := ha5
        _ = (-1) * rho 4355 - rho 4356 + (dtkAccY164 rho - dtkAccX164 rho * (-1)) * (rho 4351 + rho 4352) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX165 rho = dtkAccX164 rho - Bool.toZMod bit * (dtkAccX164 rho - rho 4358) := by
      have hd : rho 4360 = Bool.toZMod bit * (rho 4358 - dtkAccX164 rho) := by
        rw [← hbit]
        unfold dtkAccX164
        linear_combination -r4866
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY165 rho = dtkAccY164 rho - Bool.toZMod bit * (dtkAccY164 rho - rho 4359) := by
      have hd : rho 4361 = Bool.toZMod bit * (rho 4359 - dtkAccY164 rho) := by
        rw [← hbit]
        unfold dtkAccY164
        linear_combination -r4867
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4351 * rho 4352 = rho 4362 := by linear_combination r4868
    have hd1 : rho 4351 * rho 4351 = rho 4363 := by linear_combination r4869
    have hd2 : rho 4352 * rho 4352 = rho 4364 := by linear_combination r4870
    have hd3 : rho 4365 * (rho 4352 * rho 4352 + rho 4351 * rho 4351 * (-1)) = 2 * (rho 4351 * rho 4352) := by
      rw [hd0, hd1, hd2]
      linear_combination r4871
    have hd4 : rho 4366 * (2 - (rho 4352 * rho 4352 + rho 4351 * rho 4351 * (-1))) = rho 4352 * rho 4352 - rho 4351 * rho 4351 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4872
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX164 rho : F), (dtkAccY164 rho : F)⟩
      ⟨(rho 4351 : F), (rho 4352 : F)⟩
      ⟨(rho 4358 : F), (rho 4359 : F)⟩
      ⟨(dtkAccX165 rho : F), (dtkAccY165 rho : F)⟩
      ⟨(rho 4365 : F), (rho 4366 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung164

theorem dtk_rows165 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4873 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4874 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4875 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4876 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4877 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4878 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4879 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4880 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4881 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4882 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4883 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4884 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4885 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4886 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p60, p61, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart60 at p60
  rcases p60 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4873, r4874, r4875, r4876, r4877, r4878, r4879⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart61 at p61
  rcases p61 with ⟨r4880, r4881, r4882, r4883, r4884, r4885, r4886, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4873, r4874, r4875, r4876, r4877, r4878, r4879, r4880, r4881, r4882, r4883, r4884, r4885, r4886⟩

theorem dtk_rung165 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1148 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX165 rho : F), (dtkAccY165 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4365 : F), (rho 4366 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX165 rho : F), (dtkAccY165 rho : F)⟩
        ⟨(rho 4365 : F), (rho 4366 : F)⟩
        ⟨(dtkAccX166 rho : F), (dtkAccY166 rho : F)⟩
        ⟨(rho 4379 : F), (rho 4380 : F)⟩ := by
  obtain ⟨r4873, r4874, r4875, r4876, r4877, r4878, r4879, r4880, r4881, r4882, r4883, r4884, r4885, r4886⟩ := dtk_rows165 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4873 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc911 at r4873
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4873
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4874 at r4874
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4875 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc912 at r4875
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4875
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4876 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc913 at r4876
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4876
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4877 at r4877
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4878 at r4878
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4879 at r4879
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4880 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc914 at r4880
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4880
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4881 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc915 at r4881
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4881
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4882 at r4882
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4883 at r4883
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4884 at r4884
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4885 at r4885
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4886 at r4886
  have hrung165 (bit : Bool) (hbit : rho 1148 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX165 rho : F), (dtkAccY165 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4365 : F), (rho 4366 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX165 rho : F), (dtkAccY165 rho : F)⟩
        ⟨(rho 4365 : F), (rho 4366 : F)⟩
        ⟨(dtkAccX166 rho : F), (dtkAccY166 rho : F)⟩
        ⟨(rho 4379 : F), (rho 4380 : F)⟩ := by
    have hnextx : dtkAccX166 rho = dtkAccX165 rho + rho 4374 := by
      unfold dtkAccX166 dtkAccX165
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 15, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 14, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 13, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 12, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 11, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 10, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 9, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 8, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 7, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 6, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 5, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 4, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 3, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 2, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 1, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 4164 14]
      ring
    have hnexty : dtkAccY166 rho = dtkAccY165 rho + rho 4375 := by
      unfold dtkAccY166 dtkAccY165
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4165 14 15, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4165 14 14, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4165 14 13, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4165 14 12, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4165 14 11, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4165 14 10, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4165 14 9, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4165 14 8, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4165 14 7, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4165 14 6, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4165 14 5, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4165 14 4, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4165 14 3, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4165 14 2, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4165 14 1, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4165 14 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 4165 14]
      ring
    have hsum : dtkAccX165 rho + dtkAccY165 rho = rho 4367 := by
      unfold dtkAccX165 dtkAccY165
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 150] at r4873
      linear_combination r4873
    have ha0 : (rho 4365 + rho 4366) * (dtkAccX165 rho + dtkAccY165 rho) = rho 4368 := by
      rw [hsum]
      linear_combination r4874
    have ha1 : rho 4366 * dtkAccX165 rho = rho 4369 := by
      unfold dtkAccX165
      linear_combination r4875
    have ha2 : rho 4365 * dtkAccY165 rho = rho 4370 := by
      unfold dtkAccY165
      linear_combination r4876
    have ha3 : 3021 * rho 4369 * rho 4370 = rho 4371 := by
      linear_combination r4877
    have ha4 : rho 4372 * (1 + rho 4371) = rho 4369 + rho 4370 := by
      linear_combination r4878
    have ha5 : rho 4373 * (1 - rho 4371) = rho 4368 - rho 4369 - rho 4370 := by
      linear_combination r4879
    have haddx :
        rho 4372 * (1 + 3021 * (rho 4366 * dtkAccX165 rho) * (rho 4365 * dtkAccY165 rho)) =
          rho 4366 * dtkAccX165 rho + rho 4365 * dtkAccY165 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4373 * (1 - 3021 * (rho 4366 * dtkAccX165 rho) * (rho 4365 * dtkAccY165 rho)) =
          (-1) * (rho 4366 * dtkAccX165 rho) - rho 4365 * dtkAccY165 rho +
            (dtkAccY165 rho - dtkAccX165 rho * (-1)) * (rho 4365 + rho 4366) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4373 * (1 - rho 4371) = rho 4368 - rho 4369 - rho 4370 := ha5
        _ = (-1) * rho 4369 - rho 4370 + (dtkAccY165 rho - dtkAccX165 rho * (-1)) * (rho 4365 + rho 4366) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX166 rho = dtkAccX165 rho - Bool.toZMod bit * (dtkAccX165 rho - rho 4372) := by
      have hd : rho 4374 = Bool.toZMod bit * (rho 4372 - dtkAccX165 rho) := by
        rw [← hbit]
        unfold dtkAccX165
        linear_combination -r4880
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY166 rho = dtkAccY165 rho - Bool.toZMod bit * (dtkAccY165 rho - rho 4373) := by
      have hd : rho 4375 = Bool.toZMod bit * (rho 4373 - dtkAccY165 rho) := by
        rw [← hbit]
        unfold dtkAccY165
        linear_combination -r4881
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4365 * rho 4366 = rho 4376 := by linear_combination r4882
    have hd1 : rho 4365 * rho 4365 = rho 4377 := by linear_combination r4883
    have hd2 : rho 4366 * rho 4366 = rho 4378 := by linear_combination r4884
    have hd3 : rho 4379 * (rho 4366 * rho 4366 + rho 4365 * rho 4365 * (-1)) = 2 * (rho 4365 * rho 4366) := by
      rw [hd0, hd1, hd2]
      linear_combination r4885
    have hd4 : rho 4380 * (2 - (rho 4366 * rho 4366 + rho 4365 * rho 4365 * (-1))) = rho 4366 * rho 4366 - rho 4365 * rho 4365 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4886
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX165 rho : F), (dtkAccY165 rho : F)⟩
      ⟨(rho 4365 : F), (rho 4366 : F)⟩
      ⟨(rho 4372 : F), (rho 4373 : F)⟩
      ⟨(dtkAccX166 rho : F), (dtkAccY166 rho : F)⟩
      ⟨(rho 4379 : F), (rho 4380 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung165

theorem dtk_rows166 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4887 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4888 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4889 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4890 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4891 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4892 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4893 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4894 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4895 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4896 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4897 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4898 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4899 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4900 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p61, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart61 at p61
  rcases p61 with ⟨_, _, _, _, _, _, _, r4887, r4888, r4889, r4890, r4891, r4892, r4893, r4894, r4895, r4896, r4897, r4898, r4899, r4900, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4887, r4888, r4889, r4890, r4891, r4892, r4893, r4894, r4895, r4896, r4897, r4898, r4899, r4900⟩

theorem dtk_rung166 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1149 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX166 rho : F), (dtkAccY166 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4379 : F), (rho 4380 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX166 rho : F), (dtkAccY166 rho : F)⟩
        ⟨(rho 4379 : F), (rho 4380 : F)⟩
        ⟨(dtkAccX167 rho : F), (dtkAccY167 rho : F)⟩
        ⟨(rho 4393 : F), (rho 4394 : F)⟩ := by
  obtain ⟨r4887, r4888, r4889, r4890, r4891, r4892, r4893, r4894, r4895, r4896, r4897, r4898, r4899, r4900⟩ := dtk_rows166 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4887 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc916 at r4887
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4887
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4888 at r4888
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4889 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc917 at r4889
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4889
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4890 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc918 at r4890
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4890
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4891 at r4891
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4892 at r4892
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4893 at r4893
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4894 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc919 at r4894
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4894
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4895 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc920 at r4895
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4895
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4896 at r4896
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4897 at r4897
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4898 at r4898
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4899 at r4899
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4900 at r4900
  have hrung166 (bit : Bool) (hbit : rho 1149 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX166 rho : F), (dtkAccY166 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4379 : F), (rho 4380 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX166 rho : F), (dtkAccY166 rho : F)⟩
        ⟨(rho 4379 : F), (rho 4380 : F)⟩
        ⟨(dtkAccX167 rho : F), (dtkAccY167 rho : F)⟩
        ⟨(rho 4393 : F), (rho 4394 : F)⟩ := by
    have hnextx : dtkAccX167 rho = dtkAccX166 rho + rho 4388 := by
      unfold dtkAccX167 dtkAccX166
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 16]
      ring
    have hnexty : dtkAccY167 rho = dtkAccY166 rho + rho 4389 := by
      unfold dtkAccY167 dtkAccY166
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4165 14 16]
      ring
    have hsum : dtkAccX166 rho + dtkAccY166 rho = rho 4381 := by
      unfold dtkAccX166 dtkAccY166
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 150] at r4887
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 15, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 14, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 13, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 12, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 11, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 10, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 9, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 8, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 7, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 6, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 5, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 4, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 3, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 2, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 1, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 4164 14]
      linear_combination r4887
    have ha0 : (rho 4379 + rho 4380) * (dtkAccX166 rho + dtkAccY166 rho) = rho 4382 := by
      rw [hsum]
      linear_combination r4888
    have ha1 : rho 4380 * dtkAccX166 rho = rho 4383 := by
      unfold dtkAccX166
      linear_combination r4889
    have ha2 : rho 4379 * dtkAccY166 rho = rho 4384 := by
      unfold dtkAccY166
      linear_combination r4890
    have ha3 : 3021 * rho 4383 * rho 4384 = rho 4385 := by
      linear_combination r4891
    have ha4 : rho 4386 * (1 + rho 4385) = rho 4383 + rho 4384 := by
      linear_combination r4892
    have ha5 : rho 4387 * (1 - rho 4385) = rho 4382 - rho 4383 - rho 4384 := by
      linear_combination r4893
    have haddx :
        rho 4386 * (1 + 3021 * (rho 4380 * dtkAccX166 rho) * (rho 4379 * dtkAccY166 rho)) =
          rho 4380 * dtkAccX166 rho + rho 4379 * dtkAccY166 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4387 * (1 - 3021 * (rho 4380 * dtkAccX166 rho) * (rho 4379 * dtkAccY166 rho)) =
          (-1) * (rho 4380 * dtkAccX166 rho) - rho 4379 * dtkAccY166 rho +
            (dtkAccY166 rho - dtkAccX166 rho * (-1)) * (rho 4379 + rho 4380) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4387 * (1 - rho 4385) = rho 4382 - rho 4383 - rho 4384 := ha5
        _ = (-1) * rho 4383 - rho 4384 + (dtkAccY166 rho - dtkAccX166 rho * (-1)) * (rho 4379 + rho 4380) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX167 rho = dtkAccX166 rho - Bool.toZMod bit * (dtkAccX166 rho - rho 4386) := by
      have hd : rho 4388 = Bool.toZMod bit * (rho 4386 - dtkAccX166 rho) := by
        rw [← hbit]
        unfold dtkAccX166
        linear_combination -r4894
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY167 rho = dtkAccY166 rho - Bool.toZMod bit * (dtkAccY166 rho - rho 4387) := by
      have hd : rho 4389 = Bool.toZMod bit * (rho 4387 - dtkAccY166 rho) := by
        rw [← hbit]
        unfold dtkAccY166
        linear_combination -r4895
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4379 * rho 4380 = rho 4390 := by linear_combination r4896
    have hd1 : rho 4379 * rho 4379 = rho 4391 := by linear_combination r4897
    have hd2 : rho 4380 * rho 4380 = rho 4392 := by linear_combination r4898
    have hd3 : rho 4393 * (rho 4380 * rho 4380 + rho 4379 * rho 4379 * (-1)) = 2 * (rho 4379 * rho 4380) := by
      rw [hd0, hd1, hd2]
      linear_combination r4899
    have hd4 : rho 4394 * (2 - (rho 4380 * rho 4380 + rho 4379 * rho 4379 * (-1))) = rho 4380 * rho 4380 - rho 4379 * rho 4379 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4900
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX166 rho : F), (dtkAccY166 rho : F)⟩
      ⟨(rho 4379 : F), (rho 4380 : F)⟩
      ⟨(rho 4386 : F), (rho 4387 : F)⟩
      ⟨(dtkAccX167 rho : F), (dtkAccY167 rho : F)⟩
      ⟨(rho 4393 : F), (rho 4394 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung166

theorem dtk_rows167 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4901 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4902 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4903 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4904 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4905 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4906 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4907 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4908 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4909 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4910 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4911 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4912 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4913 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4914 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p61, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart61 at p61
  rcases p61 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4901, r4902, r4903, r4904, r4905, r4906, r4907, r4908, r4909, r4910, r4911, r4912, r4913, r4914, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4901, r4902, r4903, r4904, r4905, r4906, r4907, r4908, r4909, r4910, r4911, r4912, r4913, r4914⟩

theorem dtk_rung167 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1150 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX167 rho : F), (dtkAccY167 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4393 : F), (rho 4394 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX167 rho : F), (dtkAccY167 rho : F)⟩
        ⟨(rho 4393 : F), (rho 4394 : F)⟩
        ⟨(dtkAccX168 rho : F), (dtkAccY168 rho : F)⟩
        ⟨(rho 4407 : F), (rho 4408 : F)⟩ := by
  obtain ⟨r4901, r4902, r4903, r4904, r4905, r4906, r4907, r4908, r4909, r4910, r4911, r4912, r4913, r4914⟩ := dtk_rows167 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4901 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc921 at r4901
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4901
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4902 at r4902
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4903 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc922 at r4903
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4903
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4904 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc923 at r4904
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4904
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4905 at r4905
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4906 at r4906
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4907 at r4907
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4908 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc924 at r4908
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4908
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4909 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc925 at r4909
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4909
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4910 at r4910
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4911 at r4911
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4912 at r4912
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4913 at r4913
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4914 at r4914
  have hrung167 (bit : Bool) (hbit : rho 1150 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX167 rho : F), (dtkAccY167 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4393 : F), (rho 4394 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX167 rho : F), (dtkAccY167 rho : F)⟩
        ⟨(rho 4393 : F), (rho 4394 : F)⟩
        ⟨(dtkAccX168 rho : F), (dtkAccY168 rho : F)⟩
        ⟨(rho 4407 : F), (rho 4408 : F)⟩ := by
    have hnextx : dtkAccX168 rho = dtkAccX167 rho + rho 4402 := by
      unfold dtkAccX168 dtkAccX167
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 17]
      ring
    have hnexty : dtkAccY168 rho = dtkAccY167 rho + rho 4403 := by
      unfold dtkAccY168 dtkAccY167
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4165 14 17]
      ring
    have hsum : dtkAccX167 rho + dtkAccY167 rho = rho 4395 := by
      unfold dtkAccX167 dtkAccY167
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 150] at r4901
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_add rho 4164 14 1 16, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 4164 14]
      linear_combination r4901
    have ha0 : (rho 4393 + rho 4394) * (dtkAccX167 rho + dtkAccY167 rho) = rho 4396 := by
      rw [hsum]
      linear_combination r4902
    have ha1 : rho 4394 * dtkAccX167 rho = rho 4397 := by
      unfold dtkAccX167
      linear_combination r4903
    have ha2 : rho 4393 * dtkAccY167 rho = rho 4398 := by
      unfold dtkAccY167
      linear_combination r4904
    have ha3 : 3021 * rho 4397 * rho 4398 = rho 4399 := by
      linear_combination r4905
    have ha4 : rho 4400 * (1 + rho 4399) = rho 4397 + rho 4398 := by
      linear_combination r4906
    have ha5 : rho 4401 * (1 - rho 4399) = rho 4396 - rho 4397 - rho 4398 := by
      linear_combination r4907
    have haddx :
        rho 4400 * (1 + 3021 * (rho 4394 * dtkAccX167 rho) * (rho 4393 * dtkAccY167 rho)) =
          rho 4394 * dtkAccX167 rho + rho 4393 * dtkAccY167 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4401 * (1 - 3021 * (rho 4394 * dtkAccX167 rho) * (rho 4393 * dtkAccY167 rho)) =
          (-1) * (rho 4394 * dtkAccX167 rho) - rho 4393 * dtkAccY167 rho +
            (dtkAccY167 rho - dtkAccX167 rho * (-1)) * (rho 4393 + rho 4394) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4401 * (1 - rho 4399) = rho 4396 - rho 4397 - rho 4398 := ha5
        _ = (-1) * rho 4397 - rho 4398 + (dtkAccY167 rho - dtkAccX167 rho * (-1)) * (rho 4393 + rho 4394) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX168 rho = dtkAccX167 rho - Bool.toZMod bit * (dtkAccX167 rho - rho 4400) := by
      have hd : rho 4402 = Bool.toZMod bit * (rho 4400 - dtkAccX167 rho) := by
        rw [← hbit]
        unfold dtkAccX167
        linear_combination -r4908
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY168 rho = dtkAccY167 rho - Bool.toZMod bit * (dtkAccY167 rho - rho 4401) := by
      have hd : rho 4403 = Bool.toZMod bit * (rho 4401 - dtkAccY167 rho) := by
        rw [← hbit]
        unfold dtkAccY167
        linear_combination -r4909
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4393 * rho 4394 = rho 4404 := by linear_combination r4910
    have hd1 : rho 4393 * rho 4393 = rho 4405 := by linear_combination r4911
    have hd2 : rho 4394 * rho 4394 = rho 4406 := by linear_combination r4912
    have hd3 : rho 4407 * (rho 4394 * rho 4394 + rho 4393 * rho 4393 * (-1)) = 2 * (rho 4393 * rho 4394) := by
      rw [hd0, hd1, hd2]
      linear_combination r4913
    have hd4 : rho 4408 * (2 - (rho 4394 * rho 4394 + rho 4393 * rho 4393 * (-1))) = rho 4394 * rho 4394 - rho 4393 * rho 4393 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4914
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX167 rho : F), (dtkAccY167 rho : F)⟩
      ⟨(rho 4393 : F), (rho 4394 : F)⟩
      ⟨(rho 4400 : F), (rho 4401 : F)⟩
      ⟨(dtkAccX168 rho : F), (dtkAccY168 rho : F)⟩
      ⟨(rho 4407 : F), (rho 4408 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung167

theorem dtk_hstep_c27 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (983 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 162 ≤ i → i < 168 →
      EdwardsBridge.onCurve (dtkLadderAccState rho i) →
      EdwardsBridge.onCurve (dtkLadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (dtkLadderAccState rho i) (dtkLadderCurState rho i)
        (dtkLadderAccState rho (i + 1)) (dtkLadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact dtk_rung162 rho h bits[162]! (hbitAt 162 (by omega)) hacc hcur
  · exact dtk_rung163 rho h bits[163]! (hbitAt 163 (by omega)) hacc hcur
  · exact dtk_rung164 rho h bits[164]! (hbitAt 164 (by omega)) hacc hcur
  · exact dtk_rung165 rho h bits[165]! (hbitAt 165 (by omega)) hacc hcur
  · exact dtk_rung166 rho h bits[166]! (hbitAt 166 (by omega)) hacc hcur
  · exact dtk_rung167 rho h bits[167]! (hbitAt 167 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport
