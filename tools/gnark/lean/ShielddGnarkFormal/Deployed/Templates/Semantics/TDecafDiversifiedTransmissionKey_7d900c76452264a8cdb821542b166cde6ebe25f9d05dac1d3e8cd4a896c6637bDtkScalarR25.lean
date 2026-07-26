import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDtkScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs

theorem dtk_rows150 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4663 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4664 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4665 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4666 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4667 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4668 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4669 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4670 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4671 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4672 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4673 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4674 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4675 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4676 rho := by
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
  rcases p58 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4663, r4664, r4665, r4666, r4667, r4668, r4669, r4670, r4671, r4672, r4673, r4674, r4675, r4676, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4663, r4664, r4665, r4666, r4667, r4668, r4669, r4670, r4671, r4672, r4673, r4674, r4675, r4676⟩

theorem dtk_rung150 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1133 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX150 rho : F), (dtkAccY150 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4155 : F), (rho 4156 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX150 rho : F), (dtkAccY150 rho : F)⟩
        ⟨(rho 4155 : F), (rho 4156 : F)⟩
        ⟨(dtkAccX151 rho : F), (dtkAccY151 rho : F)⟩
        ⟨(rho 4169 : F), (rho 4170 : F)⟩ := by
  obtain ⟨r4663, r4664, r4665, r4666, r4667, r4668, r4669, r4670, r4671, r4672, r4673, r4674, r4675, r4676⟩ := dtk_rows150 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4663 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc836 at r4663
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4663
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4664 at r4664
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4665 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc837 at r4665
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4665
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4666 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc838 at r4666
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4666
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4667 at r4667
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4668 at r4668
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4669 at r4669
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4670 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc839 at r4670
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4670
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4671 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc840 at r4671
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4671
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4672 at r4672
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4673 at r4673
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4674 at r4674
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4675 at r4675
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4676 at r4676
  have hrung150 (bit : Bool) (hbit : rho 1133 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX150 rho : F), (dtkAccY150 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4155 : F), (rho 4156 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX150 rho : F), (dtkAccY150 rho : F)⟩
        ⟨(rho 4155 : F), (rho 4156 : F)⟩
        ⟨(dtkAccX151 rho : F), (dtkAccY151 rho : F)⟩
        ⟨(rho 4169 : F), (rho 4170 : F)⟩ := by
    have hnextx : dtkAccX151 rho = dtkAccX150 rho + rho 4164 := by
      unfold dtkAccX151 dtkAccX150
      ring
    have hnexty : dtkAccY151 rho = dtkAccY150 rho + rho 4165 := by
      unfold dtkAccY151 dtkAccY150
      ring
    have hsum : dtkAccX150 rho + dtkAccY150 rho = rho 4157 := by
      unfold dtkAccX150 dtkAccY150
      linear_combination r4663
    have ha0 : (rho 4155 + rho 4156) * (dtkAccX150 rho + dtkAccY150 rho) = rho 4158 := by
      rw [hsum]
      linear_combination r4664
    have ha1 : rho 4156 * dtkAccX150 rho = rho 4159 := by
      unfold dtkAccX150
      linear_combination r4665
    have ha2 : rho 4155 * dtkAccY150 rho = rho 4160 := by
      unfold dtkAccY150
      linear_combination r4666
    have ha3 : 3021 * rho 4159 * rho 4160 = rho 4161 := by
      linear_combination r4667
    have ha4 : rho 4162 * (1 + rho 4161) = rho 4159 + rho 4160 := by
      linear_combination r4668
    have ha5 : rho 4163 * (1 - rho 4161) = rho 4158 - rho 4159 - rho 4160 := by
      linear_combination r4669
    have haddx :
        rho 4162 * (1 + 3021 * (rho 4156 * dtkAccX150 rho) * (rho 4155 * dtkAccY150 rho)) =
          rho 4156 * dtkAccX150 rho + rho 4155 * dtkAccY150 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4163 * (1 - 3021 * (rho 4156 * dtkAccX150 rho) * (rho 4155 * dtkAccY150 rho)) =
          (-1) * (rho 4156 * dtkAccX150 rho) - rho 4155 * dtkAccY150 rho +
            (dtkAccY150 rho - dtkAccX150 rho * (-1)) * (rho 4155 + rho 4156) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4163 * (1 - rho 4161) = rho 4158 - rho 4159 - rho 4160 := ha5
        _ = (-1) * rho 4159 - rho 4160 + (dtkAccY150 rho - dtkAccX150 rho * (-1)) * (rho 4155 + rho 4156) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX151 rho = dtkAccX150 rho - Bool.toZMod bit * (dtkAccX150 rho - rho 4162) := by
      have hd : rho 4164 = Bool.toZMod bit * (rho 4162 - dtkAccX150 rho) := by
        rw [← hbit]
        unfold dtkAccX150
        linear_combination -r4670
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY151 rho = dtkAccY150 rho - Bool.toZMod bit * (dtkAccY150 rho - rho 4163) := by
      have hd : rho 4165 = Bool.toZMod bit * (rho 4163 - dtkAccY150 rho) := by
        rw [← hbit]
        unfold dtkAccY150
        linear_combination -r4671
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4155 * rho 4156 = rho 4166 := by linear_combination r4672
    have hd1 : rho 4155 * rho 4155 = rho 4167 := by linear_combination r4673
    have hd2 : rho 4156 * rho 4156 = rho 4168 := by linear_combination r4674
    have hd3 : rho 4169 * (rho 4156 * rho 4156 + rho 4155 * rho 4155 * (-1)) = 2 * (rho 4155 * rho 4156) := by
      rw [hd0, hd1, hd2]
      linear_combination r4675
    have hd4 : rho 4170 * (2 - (rho 4156 * rho 4156 + rho 4155 * rho 4155 * (-1))) = rho 4156 * rho 4156 - rho 4155 * rho 4155 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4676
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX150 rho : F), (dtkAccY150 rho : F)⟩
      ⟨(rho 4155 : F), (rho 4156 : F)⟩
      ⟨(rho 4162 : F), (rho 4163 : F)⟩
      ⟨(dtkAccX151 rho : F), (dtkAccY151 rho : F)⟩
      ⟨(rho 4169 : F), (rho 4170 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung150

theorem dtk_rows151 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4677 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4678 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4679 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4680 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4681 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4682 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4683 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4684 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4685 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4686 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4687 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4688 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4689 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4690 rho := by
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
  rcases p58 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4677, r4678, r4679, r4680, r4681, r4682, r4683, r4684, r4685, r4686, r4687, r4688, r4689, r4690, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4677, r4678, r4679, r4680, r4681, r4682, r4683, r4684, r4685, r4686, r4687, r4688, r4689, r4690⟩

theorem dtk_rung151 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1134 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX151 rho : F), (dtkAccY151 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4169 : F), (rho 4170 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX151 rho : F), (dtkAccY151 rho : F)⟩
        ⟨(rho 4169 : F), (rho 4170 : F)⟩
        ⟨(dtkAccX152 rho : F), (dtkAccY152 rho : F)⟩
        ⟨(rho 4183 : F), (rho 4184 : F)⟩ := by
  obtain ⟨r4677, r4678, r4679, r4680, r4681, r4682, r4683, r4684, r4685, r4686, r4687, r4688, r4689, r4690⟩ := dtk_rows151 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4677 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc841 at r4677
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4677
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4678 at r4678
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4679 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc842 at r4679
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4679
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4680 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc843 at r4680
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4680
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4681 at r4681
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4682 at r4682
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4683 at r4683
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4684 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc844 at r4684
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4684
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4685 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc845 at r4685
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4685
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4686 at r4686
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4687 at r4687
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4688 at r4688
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4689 at r4689
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4690 at r4690
  have hrung151 (bit : Bool) (hbit : rho 1134 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX151 rho : F), (dtkAccY151 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4169 : F), (rho 4170 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX151 rho : F), (dtkAccY151 rho : F)⟩
        ⟨(rho 4169 : F), (rho 4170 : F)⟩
        ⟨(dtkAccX152 rho : F), (dtkAccY152 rho : F)⟩
        ⟨(rho 4183 : F), (rho 4184 : F)⟩ := by
    have hnextx : dtkAccX152 rho = dtkAccX151 rho + rho 4178 := by
      unfold dtkAccX152 dtkAccX151
      ring
    have hnexty : dtkAccY152 rho = dtkAccY151 rho + rho 4179 := by
      unfold dtkAccY152 dtkAccY151
      ring
    have hsum : dtkAccX151 rho + dtkAccY151 rho = rho 4171 := by
      unfold dtkAccX151 dtkAccY151
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 150] at r4677
      linear_combination r4677
    have ha0 : (rho 4169 + rho 4170) * (dtkAccX151 rho + dtkAccY151 rho) = rho 4172 := by
      rw [hsum]
      linear_combination r4678
    have ha1 : rho 4170 * dtkAccX151 rho = rho 4173 := by
      unfold dtkAccX151
      linear_combination r4679
    have ha2 : rho 4169 * dtkAccY151 rho = rho 4174 := by
      unfold dtkAccY151
      linear_combination r4680
    have ha3 : 3021 * rho 4173 * rho 4174 = rho 4175 := by
      linear_combination r4681
    have ha4 : rho 4176 * (1 + rho 4175) = rho 4173 + rho 4174 := by
      linear_combination r4682
    have ha5 : rho 4177 * (1 - rho 4175) = rho 4172 - rho 4173 - rho 4174 := by
      linear_combination r4683
    have haddx :
        rho 4176 * (1 + 3021 * (rho 4170 * dtkAccX151 rho) * (rho 4169 * dtkAccY151 rho)) =
          rho 4170 * dtkAccX151 rho + rho 4169 * dtkAccY151 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4177 * (1 - 3021 * (rho 4170 * dtkAccX151 rho) * (rho 4169 * dtkAccY151 rho)) =
          (-1) * (rho 4170 * dtkAccX151 rho) - rho 4169 * dtkAccY151 rho +
            (dtkAccY151 rho - dtkAccX151 rho * (-1)) * (rho 4169 + rho 4170) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4177 * (1 - rho 4175) = rho 4172 - rho 4173 - rho 4174 := ha5
        _ = (-1) * rho 4173 - rho 4174 + (dtkAccY151 rho - dtkAccX151 rho * (-1)) * (rho 4169 + rho 4170) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX152 rho = dtkAccX151 rho - Bool.toZMod bit * (dtkAccX151 rho - rho 4176) := by
      have hd : rho 4178 = Bool.toZMod bit * (rho 4176 - dtkAccX151 rho) := by
        rw [← hbit]
        unfold dtkAccX151
        linear_combination -r4684
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY152 rho = dtkAccY151 rho - Bool.toZMod bit * (dtkAccY151 rho - rho 4177) := by
      have hd : rho 4179 = Bool.toZMod bit * (rho 4177 - dtkAccY151 rho) := by
        rw [← hbit]
        unfold dtkAccY151
        linear_combination -r4685
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4169 * rho 4170 = rho 4180 := by linear_combination r4686
    have hd1 : rho 4169 * rho 4169 = rho 4181 := by linear_combination r4687
    have hd2 : rho 4170 * rho 4170 = rho 4182 := by linear_combination r4688
    have hd3 : rho 4183 * (rho 4170 * rho 4170 + rho 4169 * rho 4169 * (-1)) = 2 * (rho 4169 * rho 4170) := by
      rw [hd0, hd1, hd2]
      linear_combination r4689
    have hd4 : rho 4184 * (2 - (rho 4170 * rho 4170 + rho 4169 * rho 4169 * (-1))) = rho 4170 * rho 4170 - rho 4169 * rho 4169 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4690
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX151 rho : F), (dtkAccY151 rho : F)⟩
      ⟨(rho 4169 : F), (rho 4170 : F)⟩
      ⟨(rho 4176 : F), (rho 4177 : F)⟩
      ⟨(dtkAccX152 rho : F), (dtkAccY152 rho : F)⟩
      ⟨(rho 4183 : F), (rho 4184 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung151

theorem dtk_rows152 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4691 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4692 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4693 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4694 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4695 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4696 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4697 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4698 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4699 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4700 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4701 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4702 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4703 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4704 rho := by
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
  rcases p58 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4691, r4692, r4693, r4694, r4695, r4696, r4697, r4698, r4699, r4700, r4701, r4702, r4703, r4704, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4691, r4692, r4693, r4694, r4695, r4696, r4697, r4698, r4699, r4700, r4701, r4702, r4703, r4704⟩

theorem dtk_rung152 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1135 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX152 rho : F), (dtkAccY152 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4183 : F), (rho 4184 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX152 rho : F), (dtkAccY152 rho : F)⟩
        ⟨(rho 4183 : F), (rho 4184 : F)⟩
        ⟨(dtkAccX153 rho : F), (dtkAccY153 rho : F)⟩
        ⟨(rho 4197 : F), (rho 4198 : F)⟩ := by
  obtain ⟨r4691, r4692, r4693, r4694, r4695, r4696, r4697, r4698, r4699, r4700, r4701, r4702, r4703, r4704⟩ := dtk_rows152 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4691 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc846 at r4691
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4691
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4692 at r4692
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4693 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc847 at r4693
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4693
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4694 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc848 at r4694
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4694
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4695 at r4695
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4696 at r4696
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4697 at r4697
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4698 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc849 at r4698
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4698
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4699 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc850 at r4699
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4699
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4700 at r4700
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4701 at r4701
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4702 at r4702
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4703 at r4703
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4704 at r4704
  have hrung152 (bit : Bool) (hbit : rho 1135 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX152 rho : F), (dtkAccY152 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4183 : F), (rho 4184 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX152 rho : F), (dtkAccY152 rho : F)⟩
        ⟨(rho 4183 : F), (rho 4184 : F)⟩
        ⟨(dtkAccX153 rho : F), (dtkAccY153 rho : F)⟩
        ⟨(rho 4197 : F), (rho 4198 : F)⟩ := by
    have hnextx : dtkAccX153 rho = dtkAccX152 rho + rho 4192 := by
      unfold dtkAccX153 dtkAccX152
      ring
    have hnexty : dtkAccY153 rho = dtkAccY152 rho + rho 4193 := by
      unfold dtkAccY153 dtkAccY152
      ring
    have hsum : dtkAccX152 rho + dtkAccY152 rho = rho 4185 := by
      unfold dtkAccX152 dtkAccY152
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 150] at r4691
      linear_combination r4691
    have ha0 : (rho 4183 + rho 4184) * (dtkAccX152 rho + dtkAccY152 rho) = rho 4186 := by
      rw [hsum]
      linear_combination r4692
    have ha1 : rho 4184 * dtkAccX152 rho = rho 4187 := by
      unfold dtkAccX152
      linear_combination r4693
    have ha2 : rho 4183 * dtkAccY152 rho = rho 4188 := by
      unfold dtkAccY152
      linear_combination r4694
    have ha3 : 3021 * rho 4187 * rho 4188 = rho 4189 := by
      linear_combination r4695
    have ha4 : rho 4190 * (1 + rho 4189) = rho 4187 + rho 4188 := by
      linear_combination r4696
    have ha5 : rho 4191 * (1 - rho 4189) = rho 4186 - rho 4187 - rho 4188 := by
      linear_combination r4697
    have haddx :
        rho 4190 * (1 + 3021 * (rho 4184 * dtkAccX152 rho) * (rho 4183 * dtkAccY152 rho)) =
          rho 4184 * dtkAccX152 rho + rho 4183 * dtkAccY152 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4191 * (1 - 3021 * (rho 4184 * dtkAccX152 rho) * (rho 4183 * dtkAccY152 rho)) =
          (-1) * (rho 4184 * dtkAccX152 rho) - rho 4183 * dtkAccY152 rho +
            (dtkAccY152 rho - dtkAccX152 rho * (-1)) * (rho 4183 + rho 4184) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4191 * (1 - rho 4189) = rho 4186 - rho 4187 - rho 4188 := ha5
        _ = (-1) * rho 4187 - rho 4188 + (dtkAccY152 rho - dtkAccX152 rho * (-1)) * (rho 4183 + rho 4184) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX153 rho = dtkAccX152 rho - Bool.toZMod bit * (dtkAccX152 rho - rho 4190) := by
      have hd : rho 4192 = Bool.toZMod bit * (rho 4190 - dtkAccX152 rho) := by
        rw [← hbit]
        unfold dtkAccX152
        linear_combination -r4698
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY153 rho = dtkAccY152 rho - Bool.toZMod bit * (dtkAccY152 rho - rho 4191) := by
      have hd : rho 4193 = Bool.toZMod bit * (rho 4191 - dtkAccY152 rho) := by
        rw [← hbit]
        unfold dtkAccY152
        linear_combination -r4699
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4183 * rho 4184 = rho 4194 := by linear_combination r4700
    have hd1 : rho 4183 * rho 4183 = rho 4195 := by linear_combination r4701
    have hd2 : rho 4184 * rho 4184 = rho 4196 := by linear_combination r4702
    have hd3 : rho 4197 * (rho 4184 * rho 4184 + rho 4183 * rho 4183 * (-1)) = 2 * (rho 4183 * rho 4184) := by
      rw [hd0, hd1, hd2]
      linear_combination r4703
    have hd4 : rho 4198 * (2 - (rho 4184 * rho 4184 + rho 4183 * rho 4183 * (-1))) = rho 4184 * rho 4184 - rho 4183 * rho 4183 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4704
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX152 rho : F), (dtkAccY152 rho : F)⟩
      ⟨(rho 4183 : F), (rho 4184 : F)⟩
      ⟨(rho 4190 : F), (rho 4191 : F)⟩
      ⟨(dtkAccX153 rho : F), (dtkAccY153 rho : F)⟩
      ⟨(rho 4197 : F), (rho 4198 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung152

theorem dtk_rows153 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4705 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4706 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4707 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4708 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4709 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4710 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4711 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4712 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4713 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4714 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4715 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4716 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4717 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4718 rho := by
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
  rcases p58 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4705, r4706, r4707, r4708, r4709, r4710, r4711, r4712, r4713, r4714, r4715, r4716, r4717, r4718, _⟩
  exact ⟨r4705, r4706, r4707, r4708, r4709, r4710, r4711, r4712, r4713, r4714, r4715, r4716, r4717, r4718⟩

theorem dtk_rung153 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1136 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX153 rho : F), (dtkAccY153 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4197 : F), (rho 4198 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX153 rho : F), (dtkAccY153 rho : F)⟩
        ⟨(rho 4197 : F), (rho 4198 : F)⟩
        ⟨(dtkAccX154 rho : F), (dtkAccY154 rho : F)⟩
        ⟨(rho 4211 : F), (rho 4212 : F)⟩ := by
  obtain ⟨r4705, r4706, r4707, r4708, r4709, r4710, r4711, r4712, r4713, r4714, r4715, r4716, r4717, r4718⟩ := dtk_rows153 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4705 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc851 at r4705
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4705
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4706 at r4706
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4707 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc852 at r4707
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4707
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4708 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc853 at r4708
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4708
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4709 at r4709
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4710 at r4710
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4711 at r4711
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4712 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc854 at r4712
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4712
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4713 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc855 at r4713
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4713
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4714 at r4714
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4715 at r4715
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4716 at r4716
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4717 at r4717
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4718 at r4718
  have hrung153 (bit : Bool) (hbit : rho 1136 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX153 rho : F), (dtkAccY153 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4197 : F), (rho 4198 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX153 rho : F), (dtkAccY153 rho : F)⟩
        ⟨(rho 4197 : F), (rho 4198 : F)⟩
        ⟨(dtkAccX154 rho : F), (dtkAccY154 rho : F)⟩
        ⟨(rho 4211 : F), (rho 4212 : F)⟩ := by
    have hnextx : dtkAccX154 rho = dtkAccX153 rho + rho 4206 := by
      unfold dtkAccX154 dtkAccX153
      ring
    have hnexty : dtkAccY154 rho = dtkAccY153 rho + rho 4207 := by
      unfold dtkAccY154 dtkAccY153
      ring
    have hsum : dtkAccX153 rho + dtkAccY153 rho = rho 4199 := by
      unfold dtkAccX153 dtkAccY153
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 150] at r4705
      linear_combination r4705
    have ha0 : (rho 4197 + rho 4198) * (dtkAccX153 rho + dtkAccY153 rho) = rho 4200 := by
      rw [hsum]
      linear_combination r4706
    have ha1 : rho 4198 * dtkAccX153 rho = rho 4201 := by
      unfold dtkAccX153
      linear_combination r4707
    have ha2 : rho 4197 * dtkAccY153 rho = rho 4202 := by
      unfold dtkAccY153
      linear_combination r4708
    have ha3 : 3021 * rho 4201 * rho 4202 = rho 4203 := by
      linear_combination r4709
    have ha4 : rho 4204 * (1 + rho 4203) = rho 4201 + rho 4202 := by
      linear_combination r4710
    have ha5 : rho 4205 * (1 - rho 4203) = rho 4200 - rho 4201 - rho 4202 := by
      linear_combination r4711
    have haddx :
        rho 4204 * (1 + 3021 * (rho 4198 * dtkAccX153 rho) * (rho 4197 * dtkAccY153 rho)) =
          rho 4198 * dtkAccX153 rho + rho 4197 * dtkAccY153 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4205 * (1 - 3021 * (rho 4198 * dtkAccX153 rho) * (rho 4197 * dtkAccY153 rho)) =
          (-1) * (rho 4198 * dtkAccX153 rho) - rho 4197 * dtkAccY153 rho +
            (dtkAccY153 rho - dtkAccX153 rho * (-1)) * (rho 4197 + rho 4198) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4205 * (1 - rho 4203) = rho 4200 - rho 4201 - rho 4202 := ha5
        _ = (-1) * rho 4201 - rho 4202 + (dtkAccY153 rho - dtkAccX153 rho * (-1)) * (rho 4197 + rho 4198) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX154 rho = dtkAccX153 rho - Bool.toZMod bit * (dtkAccX153 rho - rho 4204) := by
      have hd : rho 4206 = Bool.toZMod bit * (rho 4204 - dtkAccX153 rho) := by
        rw [← hbit]
        unfold dtkAccX153
        linear_combination -r4712
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY154 rho = dtkAccY153 rho - Bool.toZMod bit * (dtkAccY153 rho - rho 4205) := by
      have hd : rho 4207 = Bool.toZMod bit * (rho 4205 - dtkAccY153 rho) := by
        rw [← hbit]
        unfold dtkAccY153
        linear_combination -r4713
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4197 * rho 4198 = rho 4208 := by linear_combination r4714
    have hd1 : rho 4197 * rho 4197 = rho 4209 := by linear_combination r4715
    have hd2 : rho 4198 * rho 4198 = rho 4210 := by linear_combination r4716
    have hd3 : rho 4211 * (rho 4198 * rho 4198 + rho 4197 * rho 4197 * (-1)) = 2 * (rho 4197 * rho 4198) := by
      rw [hd0, hd1, hd2]
      linear_combination r4717
    have hd4 : rho 4212 * (2 - (rho 4198 * rho 4198 + rho 4197 * rho 4197 * (-1))) = rho 4198 * rho 4198 - rho 4197 * rho 4197 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4718
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX153 rho : F), (dtkAccY153 rho : F)⟩
      ⟨(rho 4197 : F), (rho 4198 : F)⟩
      ⟨(rho 4204 : F), (rho 4205 : F)⟩
      ⟨(dtkAccX154 rho : F), (dtkAccY154 rho : F)⟩
      ⟨(rho 4211 : F), (rho 4212 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung153

theorem dtk_rows154 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4719 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4720 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4721 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4722 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4723 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4724 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4725 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4726 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4727 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4728 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4729 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4730 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4731 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4732 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p58, p59,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart58 at p58
  rcases p58 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4719⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart59 at p59
  rcases p59 with ⟨r4720, r4721, r4722, r4723, r4724, r4725, r4726, r4727, r4728, r4729, r4730, r4731, r4732, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4719, r4720, r4721, r4722, r4723, r4724, r4725, r4726, r4727, r4728, r4729, r4730, r4731, r4732⟩

theorem dtk_rung154 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1137 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX154 rho : F), (dtkAccY154 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4211 : F), (rho 4212 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX154 rho : F), (dtkAccY154 rho : F)⟩
        ⟨(rho 4211 : F), (rho 4212 : F)⟩
        ⟨(dtkAccX155 rho : F), (dtkAccY155 rho : F)⟩
        ⟨(rho 4225 : F), (rho 4226 : F)⟩ := by
  obtain ⟨r4719, r4720, r4721, r4722, r4723, r4724, r4725, r4726, r4727, r4728, r4729, r4730, r4731, r4732⟩ := dtk_rows154 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4719 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc856 at r4719
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4719
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4720 at r4720
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4721 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc857 at r4721
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4721
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4722 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc858 at r4722
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4722
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4723 at r4723
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4724 at r4724
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4725 at r4725
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4726 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc859 at r4726
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4726
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4727 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc860 at r4727
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4727
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4728 at r4728
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4729 at r4729
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4730 at r4730
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4731 at r4731
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4732 at r4732
  have hrung154 (bit : Bool) (hbit : rho 1137 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX154 rho : F), (dtkAccY154 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4211 : F), (rho 4212 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX154 rho : F), (dtkAccY154 rho : F)⟩
        ⟨(rho 4211 : F), (rho 4212 : F)⟩
        ⟨(dtkAccX155 rho : F), (dtkAccY155 rho : F)⟩
        ⟨(rho 4225 : F), (rho 4226 : F)⟩ := by
    have hnextx : dtkAccX155 rho = dtkAccX154 rho + rho 4220 := by
      unfold dtkAccX155 dtkAccX154
      ring
    have hnexty : dtkAccY155 rho = dtkAccY154 rho + rho 4221 := by
      unfold dtkAccY155 dtkAccY154
      ring
    have hsum : dtkAccX154 rho + dtkAccY154 rho = rho 4213 := by
      unfold dtkAccX154 dtkAccY154
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 150] at r4719
      linear_combination r4719
    have ha0 : (rho 4211 + rho 4212) * (dtkAccX154 rho + dtkAccY154 rho) = rho 4214 := by
      rw [hsum]
      linear_combination r4720
    have ha1 : rho 4212 * dtkAccX154 rho = rho 4215 := by
      unfold dtkAccX154
      linear_combination r4721
    have ha2 : rho 4211 * dtkAccY154 rho = rho 4216 := by
      unfold dtkAccY154
      linear_combination r4722
    have ha3 : 3021 * rho 4215 * rho 4216 = rho 4217 := by
      linear_combination r4723
    have ha4 : rho 4218 * (1 + rho 4217) = rho 4215 + rho 4216 := by
      linear_combination r4724
    have ha5 : rho 4219 * (1 - rho 4217) = rho 4214 - rho 4215 - rho 4216 := by
      linear_combination r4725
    have haddx :
        rho 4218 * (1 + 3021 * (rho 4212 * dtkAccX154 rho) * (rho 4211 * dtkAccY154 rho)) =
          rho 4212 * dtkAccX154 rho + rho 4211 * dtkAccY154 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4219 * (1 - 3021 * (rho 4212 * dtkAccX154 rho) * (rho 4211 * dtkAccY154 rho)) =
          (-1) * (rho 4212 * dtkAccX154 rho) - rho 4211 * dtkAccY154 rho +
            (dtkAccY154 rho - dtkAccX154 rho * (-1)) * (rho 4211 + rho 4212) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4219 * (1 - rho 4217) = rho 4214 - rho 4215 - rho 4216 := ha5
        _ = (-1) * rho 4215 - rho 4216 + (dtkAccY154 rho - dtkAccX154 rho * (-1)) * (rho 4211 + rho 4212) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX155 rho = dtkAccX154 rho - Bool.toZMod bit * (dtkAccX154 rho - rho 4218) := by
      have hd : rho 4220 = Bool.toZMod bit * (rho 4218 - dtkAccX154 rho) := by
        rw [← hbit]
        unfold dtkAccX154
        linear_combination -r4726
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY155 rho = dtkAccY154 rho - Bool.toZMod bit * (dtkAccY154 rho - rho 4219) := by
      have hd : rho 4221 = Bool.toZMod bit * (rho 4219 - dtkAccY154 rho) := by
        rw [← hbit]
        unfold dtkAccY154
        linear_combination -r4727
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4211 * rho 4212 = rho 4222 := by linear_combination r4728
    have hd1 : rho 4211 * rho 4211 = rho 4223 := by linear_combination r4729
    have hd2 : rho 4212 * rho 4212 = rho 4224 := by linear_combination r4730
    have hd3 : rho 4225 * (rho 4212 * rho 4212 + rho 4211 * rho 4211 * (-1)) = 2 * (rho 4211 * rho 4212) := by
      rw [hd0, hd1, hd2]
      linear_combination r4731
    have hd4 : rho 4226 * (2 - (rho 4212 * rho 4212 + rho 4211 * rho 4211 * (-1))) = rho 4212 * rho 4212 - rho 4211 * rho 4211 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4732
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX154 rho : F), (dtkAccY154 rho : F)⟩
      ⟨(rho 4211 : F), (rho 4212 : F)⟩
      ⟨(rho 4218 : F), (rho 4219 : F)⟩
      ⟨(dtkAccX155 rho : F), (dtkAccY155 rho : F)⟩
      ⟨(rho 4225 : F), (rho 4226 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung154

theorem dtk_rows155 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4733 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4734 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4735 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4736 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4737 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4738 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4739 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4740 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4741 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4742 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4743 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4744 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4745 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4746 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p59,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart59 at p59
  rcases p59 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, r4733, r4734, r4735, r4736, r4737, r4738, r4739, r4740, r4741, r4742, r4743, r4744, r4745, r4746, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4733, r4734, r4735, r4736, r4737, r4738, r4739, r4740, r4741, r4742, r4743, r4744, r4745, r4746⟩

theorem dtk_rung155 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1138 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX155 rho : F), (dtkAccY155 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4225 : F), (rho 4226 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX155 rho : F), (dtkAccY155 rho : F)⟩
        ⟨(rho 4225 : F), (rho 4226 : F)⟩
        ⟨(dtkAccX156 rho : F), (dtkAccY156 rho : F)⟩
        ⟨(rho 4239 : F), (rho 4240 : F)⟩ := by
  obtain ⟨r4733, r4734, r4735, r4736, r4737, r4738, r4739, r4740, r4741, r4742, r4743, r4744, r4745, r4746⟩ := dtk_rows155 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4733 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc861 at r4733
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4733
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4734 at r4734
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4735 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc862 at r4735
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4735
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4736 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc863 at r4736
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4736
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4737 at r4737
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4738 at r4738
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4739 at r4739
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4740 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc864 at r4740
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4740
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4741 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc865 at r4741
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4741
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4742 at r4742
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4743 at r4743
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4744 at r4744
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4745 at r4745
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4746 at r4746
  have hrung155 (bit : Bool) (hbit : rho 1138 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX155 rho : F), (dtkAccY155 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4225 : F), (rho 4226 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX155 rho : F), (dtkAccY155 rho : F)⟩
        ⟨(rho 4225 : F), (rho 4226 : F)⟩
        ⟨(dtkAccX156 rho : F), (dtkAccY156 rho : F)⟩
        ⟨(rho 4239 : F), (rho 4240 : F)⟩ := by
    have hnextx : dtkAccX156 rho = dtkAccX155 rho + rho 4234 := by
      unfold dtkAccX156 dtkAccX155
      ring
    have hnexty : dtkAccY156 rho = dtkAccY155 rho + rho 4235 := by
      unfold dtkAccY156 dtkAccY155
      ring
    have hsum : dtkAccX155 rho + dtkAccY155 rho = rho 4227 := by
      unfold dtkAccX155 dtkAccY155
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 150] at r4733
      linear_combination r4733
    have ha0 : (rho 4225 + rho 4226) * (dtkAccX155 rho + dtkAccY155 rho) = rho 4228 := by
      rw [hsum]
      linear_combination r4734
    have ha1 : rho 4226 * dtkAccX155 rho = rho 4229 := by
      unfold dtkAccX155
      linear_combination r4735
    have ha2 : rho 4225 * dtkAccY155 rho = rho 4230 := by
      unfold dtkAccY155
      linear_combination r4736
    have ha3 : 3021 * rho 4229 * rho 4230 = rho 4231 := by
      linear_combination r4737
    have ha4 : rho 4232 * (1 + rho 4231) = rho 4229 + rho 4230 := by
      linear_combination r4738
    have ha5 : rho 4233 * (1 - rho 4231) = rho 4228 - rho 4229 - rho 4230 := by
      linear_combination r4739
    have haddx :
        rho 4232 * (1 + 3021 * (rho 4226 * dtkAccX155 rho) * (rho 4225 * dtkAccY155 rho)) =
          rho 4226 * dtkAccX155 rho + rho 4225 * dtkAccY155 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4233 * (1 - 3021 * (rho 4226 * dtkAccX155 rho) * (rho 4225 * dtkAccY155 rho)) =
          (-1) * (rho 4226 * dtkAccX155 rho) - rho 4225 * dtkAccY155 rho +
            (dtkAccY155 rho - dtkAccX155 rho * (-1)) * (rho 4225 + rho 4226) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4233 * (1 - rho 4231) = rho 4228 - rho 4229 - rho 4230 := ha5
        _ = (-1) * rho 4229 - rho 4230 + (dtkAccY155 rho - dtkAccX155 rho * (-1)) * (rho 4225 + rho 4226) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX156 rho = dtkAccX155 rho - Bool.toZMod bit * (dtkAccX155 rho - rho 4232) := by
      have hd : rho 4234 = Bool.toZMod bit * (rho 4232 - dtkAccX155 rho) := by
        rw [← hbit]
        unfold dtkAccX155
        linear_combination -r4740
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY156 rho = dtkAccY155 rho - Bool.toZMod bit * (dtkAccY155 rho - rho 4233) := by
      have hd : rho 4235 = Bool.toZMod bit * (rho 4233 - dtkAccY155 rho) := by
        rw [← hbit]
        unfold dtkAccY155
        linear_combination -r4741
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4225 * rho 4226 = rho 4236 := by linear_combination r4742
    have hd1 : rho 4225 * rho 4225 = rho 4237 := by linear_combination r4743
    have hd2 : rho 4226 * rho 4226 = rho 4238 := by linear_combination r4744
    have hd3 : rho 4239 * (rho 4226 * rho 4226 + rho 4225 * rho 4225 * (-1)) = 2 * (rho 4225 * rho 4226) := by
      rw [hd0, hd1, hd2]
      linear_combination r4745
    have hd4 : rho 4240 * (2 - (rho 4226 * rho 4226 + rho 4225 * rho 4225 * (-1))) = rho 4226 * rho 4226 - rho 4225 * rho 4225 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4746
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX155 rho : F), (dtkAccY155 rho : F)⟩
      ⟨(rho 4225 : F), (rho 4226 : F)⟩
      ⟨(rho 4232 : F), (rho 4233 : F)⟩
      ⟨(dtkAccX156 rho : F), (dtkAccY156 rho : F)⟩
      ⟨(rho 4239 : F), (rho 4240 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung155

theorem dtk_hstep_c25 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (983 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 150 ≤ i → i < 156 →
      EdwardsBridge.onCurve (dtkLadderAccState rho i) →
      EdwardsBridge.onCurve (dtkLadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (dtkLadderAccState rho i) (dtkLadderCurState rho i)
        (dtkLadderAccState rho (i + 1)) (dtkLadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact dtk_rung150 rho h bits[150]! (hbitAt 150 (by omega)) hacc hcur
  · exact dtk_rung151 rho h bits[151]! (hbitAt 151 (by omega)) hacc hcur
  · exact dtk_rung152 rho h bits[152]! (hbitAt 152 (by omega)) hacc hcur
  · exact dtk_rung153 rho h bits[153]! (hbitAt 153 (by omega)) hacc hcur
  · exact dtk_rung154 rho h bits[154]! (hbitAt 154 (by omega)) hacc hcur
  · exact dtk_rung155 rho h bits[155]! (hbitAt 155 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport
