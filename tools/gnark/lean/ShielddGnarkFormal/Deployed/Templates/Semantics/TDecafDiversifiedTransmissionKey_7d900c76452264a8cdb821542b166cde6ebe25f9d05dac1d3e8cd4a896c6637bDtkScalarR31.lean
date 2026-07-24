import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDtkScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs

theorem dtk_rows186 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5167 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5168 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5169 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5170 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5171 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5172 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5173 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5174 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5175 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5176 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5177 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5178 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5179 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5180 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p64, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart64 at p64
  rcases p64 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5167, r5168, r5169, r5170, r5171, r5172, r5173, r5174, r5175, r5176, r5177, r5178, r5179, r5180, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5167, r5168, r5169, r5170, r5171, r5172, r5173, r5174, r5175, r5176, r5177, r5178, r5179, r5180⟩

theorem dtk_rung186 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1169 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX186 rho : F), (dtkAccY186 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4659 : F), (rho 4660 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX186 rho : F), (dtkAccY186 rho : F)⟩
        ⟨(rho 4659 : F), (rho 4660 : F)⟩
        ⟨(dtkAccX187 rho : F), (dtkAccY187 rho : F)⟩
        ⟨(rho 4673 : F), (rho 4674 : F)⟩ := by
  obtain ⟨r5167, r5168, r5169, r5170, r5171, r5172, r5173, r5174, r5175, r5176, r5177, r5178, r5179, r5180⟩ := dtk_rows186 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5167 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1016 at r5167
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5167
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5168 at r5168
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5169 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1017 at r5169
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5169
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5170 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1018 at r5170
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5170
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5171 at r5171
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5172 at r5172
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5173 at r5173
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5174 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1019 at r5174
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5174
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5175 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1020 at r5175
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5175
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5176 at r5176
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5177 at r5177
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5178 at r5178
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5179 at r5179
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5180 at r5180
  have hrung186 (bit : Bool) (hbit : rho 1169 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX186 rho : F), (dtkAccY186 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4659 : F), (rho 4660 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX186 rho : F), (dtkAccY186 rho : F)⟩
        ⟨(rho 4659 : F), (rho 4660 : F)⟩
        ⟨(dtkAccX187 rho : F), (dtkAccY187 rho : F)⟩
        ⟨(rho 4673 : F), (rho 4674 : F)⟩ := by
    have hnextx : dtkAccX187 rho = dtkAccX186 rho + rho 4668 := by
      unfold dtkAccX187 dtkAccX186
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 36]
      ring
    have hnexty : dtkAccY187 rho = dtkAccY186 rho + rho 4669 := by
      unfold dtkAccY187 dtkAccY186
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4165 14 36]
      ring
    have hsum : dtkAccX186 rho + dtkAccY186 rho = rho 4661 := by
      unfold dtkAccX186 dtkAccY186
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 150] at r5167
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_add rho 4164 14 1 35, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 4164 14]
      linear_combination r5167
    have ha0 : (rho 4659 + rho 4660) * (dtkAccX186 rho + dtkAccY186 rho) = rho 4662 := by
      rw [hsum]
      linear_combination r5168
    have ha1 : rho 4660 * dtkAccX186 rho = rho 4663 := by
      unfold dtkAccX186
      linear_combination r5169
    have ha2 : rho 4659 * dtkAccY186 rho = rho 4664 := by
      unfold dtkAccY186
      linear_combination r5170
    have ha3 : 3021 * rho 4663 * rho 4664 = rho 4665 := by
      linear_combination r5171
    have ha4 : rho 4666 * (1 + rho 4665) = rho 4663 + rho 4664 := by
      linear_combination r5172
    have ha5 : rho 4667 * (1 - rho 4665) = rho 4662 - rho 4663 - rho 4664 := by
      linear_combination r5173
    have haddx :
        rho 4666 * (1 + 3021 * (rho 4660 * dtkAccX186 rho) * (rho 4659 * dtkAccY186 rho)) =
          rho 4660 * dtkAccX186 rho + rho 4659 * dtkAccY186 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4667 * (1 - 3021 * (rho 4660 * dtkAccX186 rho) * (rho 4659 * dtkAccY186 rho)) =
          (-1) * (rho 4660 * dtkAccX186 rho) - rho 4659 * dtkAccY186 rho +
            (dtkAccY186 rho - dtkAccX186 rho * (-1)) * (rho 4659 + rho 4660) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4667 * (1 - rho 4665) = rho 4662 - rho 4663 - rho 4664 := ha5
        _ = (-1) * rho 4663 - rho 4664 + (dtkAccY186 rho - dtkAccX186 rho * (-1)) * (rho 4659 + rho 4660) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX187 rho = dtkAccX186 rho - Bool.toZMod bit * (dtkAccX186 rho - rho 4666) := by
      have hd : rho 4668 = Bool.toZMod bit * (rho 4666 - dtkAccX186 rho) := by
        rw [← hbit]
        unfold dtkAccX186
        linear_combination -r5174
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY187 rho = dtkAccY186 rho - Bool.toZMod bit * (dtkAccY186 rho - rho 4667) := by
      have hd : rho 4669 = Bool.toZMod bit * (rho 4667 - dtkAccY186 rho) := by
        rw [← hbit]
        unfold dtkAccY186
        linear_combination -r5175
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4659 * rho 4660 = rho 4670 := by linear_combination r5176
    have hd1 : rho 4659 * rho 4659 = rho 4671 := by linear_combination r5177
    have hd2 : rho 4660 * rho 4660 = rho 4672 := by linear_combination r5178
    have hd3 : rho 4673 * (rho 4660 * rho 4660 + rho 4659 * rho 4659 * (-1)) = 2 * (rho 4659 * rho 4660) := by
      rw [hd0, hd1, hd2]
      linear_combination r5179
    have hd4 : rho 4674 * (2 - (rho 4660 * rho 4660 + rho 4659 * rho 4659 * (-1))) = rho 4660 * rho 4660 - rho 4659 * rho 4659 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5180
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX186 rho : F), (dtkAccY186 rho : F)⟩
      ⟨(rho 4659 : F), (rho 4660 : F)⟩
      ⟨(rho 4666 : F), (rho 4667 : F)⟩
      ⟨(dtkAccX187 rho : F), (dtkAccY187 rho : F)⟩
      ⟨(rho 4673 : F), (rho 4674 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung186

theorem dtk_rows187 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5181 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5182 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5183 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5184 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5185 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5186 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5187 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5188 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5189 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5190 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5191 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5192 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5193 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5194 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p64, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart64 at p64
  rcases p64 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5181, r5182, r5183, r5184, r5185, r5186, r5187, r5188, r5189, r5190, r5191, r5192, r5193, r5194, _, _, _, _, _⟩
  exact ⟨r5181, r5182, r5183, r5184, r5185, r5186, r5187, r5188, r5189, r5190, r5191, r5192, r5193, r5194⟩

theorem dtk_rung187 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1170 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX187 rho : F), (dtkAccY187 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4673 : F), (rho 4674 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX187 rho : F), (dtkAccY187 rho : F)⟩
        ⟨(rho 4673 : F), (rho 4674 : F)⟩
        ⟨(dtkAccX188 rho : F), (dtkAccY188 rho : F)⟩
        ⟨(rho 4687 : F), (rho 4688 : F)⟩ := by
  obtain ⟨r5181, r5182, r5183, r5184, r5185, r5186, r5187, r5188, r5189, r5190, r5191, r5192, r5193, r5194⟩ := dtk_rows187 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5181 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1021 at r5181
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5181
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5182 at r5182
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5183 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1022 at r5183
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5183
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5184 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1023 at r5184
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5184
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5185 at r5185
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5186 at r5186
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5187 at r5187
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5188 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1024 at r5188
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5188
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5189 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1025 at r5189
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5189
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5190 at r5190
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5191 at r5191
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5192 at r5192
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5193 at r5193
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5194 at r5194
  have hrung187 (bit : Bool) (hbit : rho 1170 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX187 rho : F), (dtkAccY187 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4673 : F), (rho 4674 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX187 rho : F), (dtkAccY187 rho : F)⟩
        ⟨(rho 4673 : F), (rho 4674 : F)⟩
        ⟨(dtkAccX188 rho : F), (dtkAccY188 rho : F)⟩
        ⟨(rho 4687 : F), (rho 4688 : F)⟩ := by
    have hnextx : dtkAccX188 rho = dtkAccX187 rho + rho 4682 := by
      unfold dtkAccX188 dtkAccX187
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 37]
      ring
    have hnexty : dtkAccY188 rho = dtkAccY187 rho + rho 4683 := by
      unfold dtkAccY188 dtkAccY187
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4165 14 37]
      ring
    have hsum : dtkAccX187 rho + dtkAccY187 rho = rho 4675 := by
      unfold dtkAccX187 dtkAccY187
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 150] at r5181
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_add rho 4164 14 1 36, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 4164 14]
      linear_combination r5181
    have ha0 : (rho 4673 + rho 4674) * (dtkAccX187 rho + dtkAccY187 rho) = rho 4676 := by
      rw [hsum]
      linear_combination r5182
    have ha1 : rho 4674 * dtkAccX187 rho = rho 4677 := by
      unfold dtkAccX187
      linear_combination r5183
    have ha2 : rho 4673 * dtkAccY187 rho = rho 4678 := by
      unfold dtkAccY187
      linear_combination r5184
    have ha3 : 3021 * rho 4677 * rho 4678 = rho 4679 := by
      linear_combination r5185
    have ha4 : rho 4680 * (1 + rho 4679) = rho 4677 + rho 4678 := by
      linear_combination r5186
    have ha5 : rho 4681 * (1 - rho 4679) = rho 4676 - rho 4677 - rho 4678 := by
      linear_combination r5187
    have haddx :
        rho 4680 * (1 + 3021 * (rho 4674 * dtkAccX187 rho) * (rho 4673 * dtkAccY187 rho)) =
          rho 4674 * dtkAccX187 rho + rho 4673 * dtkAccY187 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4681 * (1 - 3021 * (rho 4674 * dtkAccX187 rho) * (rho 4673 * dtkAccY187 rho)) =
          (-1) * (rho 4674 * dtkAccX187 rho) - rho 4673 * dtkAccY187 rho +
            (dtkAccY187 rho - dtkAccX187 rho * (-1)) * (rho 4673 + rho 4674) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4681 * (1 - rho 4679) = rho 4676 - rho 4677 - rho 4678 := ha5
        _ = (-1) * rho 4677 - rho 4678 + (dtkAccY187 rho - dtkAccX187 rho * (-1)) * (rho 4673 + rho 4674) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX188 rho = dtkAccX187 rho - Bool.toZMod bit * (dtkAccX187 rho - rho 4680) := by
      have hd : rho 4682 = Bool.toZMod bit * (rho 4680 - dtkAccX187 rho) := by
        rw [← hbit]
        unfold dtkAccX187
        linear_combination -r5188
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY188 rho = dtkAccY187 rho - Bool.toZMod bit * (dtkAccY187 rho - rho 4681) := by
      have hd : rho 4683 = Bool.toZMod bit * (rho 4681 - dtkAccY187 rho) := by
        rw [← hbit]
        unfold dtkAccY187
        linear_combination -r5189
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4673 * rho 4674 = rho 4684 := by linear_combination r5190
    have hd1 : rho 4673 * rho 4673 = rho 4685 := by linear_combination r5191
    have hd2 : rho 4674 * rho 4674 = rho 4686 := by linear_combination r5192
    have hd3 : rho 4687 * (rho 4674 * rho 4674 + rho 4673 * rho 4673 * (-1)) = 2 * (rho 4673 * rho 4674) := by
      rw [hd0, hd1, hd2]
      linear_combination r5193
    have hd4 : rho 4688 * (2 - (rho 4674 * rho 4674 + rho 4673 * rho 4673 * (-1))) = rho 4674 * rho 4674 - rho 4673 * rho 4673 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5194
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX187 rho : F), (dtkAccY187 rho : F)⟩
      ⟨(rho 4673 : F), (rho 4674 : F)⟩
      ⟨(rho 4680 : F), (rho 4681 : F)⟩
      ⟨(dtkAccX188 rho : F), (dtkAccY188 rho : F)⟩
      ⟨(rho 4687 : F), (rho 4688 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung187

theorem dtk_rows188 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5195 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5196 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5197 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5198 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5199 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5200 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5201 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5202 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5203 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5204 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5205 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5206 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5207 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5208 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p64, p65, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart64 at p64
  rcases p64 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5195, r5196, r5197, r5198, r5199⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart65 at p65
  rcases p65 with ⟨r5200, r5201, r5202, r5203, r5204, r5205, r5206, r5207, r5208, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5195, r5196, r5197, r5198, r5199, r5200, r5201, r5202, r5203, r5204, r5205, r5206, r5207, r5208⟩

theorem dtk_rung188 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1171 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX188 rho : F), (dtkAccY188 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4687 : F), (rho 4688 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX188 rho : F), (dtkAccY188 rho : F)⟩
        ⟨(rho 4687 : F), (rho 4688 : F)⟩
        ⟨(dtkAccX189 rho : F), (dtkAccY189 rho : F)⟩
        ⟨(rho 4701 : F), (rho 4702 : F)⟩ := by
  obtain ⟨r5195, r5196, r5197, r5198, r5199, r5200, r5201, r5202, r5203, r5204, r5205, r5206, r5207, r5208⟩ := dtk_rows188 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5195 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1026 at r5195
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5195
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5196 at r5196
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5197 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1027 at r5197
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5197
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5198 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1028 at r5198
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5198
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5199 at r5199
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5200 at r5200
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5201 at r5201
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5202 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1029 at r5202
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5202
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5203 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1030 at r5203
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5203
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5204 at r5204
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5205 at r5205
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5206 at r5206
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5207 at r5207
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5208 at r5208
  have hrung188 (bit : Bool) (hbit : rho 1171 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX188 rho : F), (dtkAccY188 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4687 : F), (rho 4688 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX188 rho : F), (dtkAccY188 rho : F)⟩
        ⟨(rho 4687 : F), (rho 4688 : F)⟩
        ⟨(dtkAccX189 rho : F), (dtkAccY189 rho : F)⟩
        ⟨(rho 4701 : F), (rho 4702 : F)⟩ := by
    have hnextx : dtkAccX189 rho = dtkAccX188 rho + rho 4696 := by
      unfold dtkAccX189 dtkAccX188
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 38]
      ring
    have hnexty : dtkAccY189 rho = dtkAccY188 rho + rho 4697 := by
      unfold dtkAccY189 dtkAccY188
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4165 14 38]
      ring
    have hsum : dtkAccX188 rho + dtkAccY188 rho = rho 4689 := by
      unfold dtkAccX188 dtkAccY188
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 150] at r5195
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_add rho 4164 14 1 37, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 4164 14]
      linear_combination r5195
    have ha0 : (rho 4687 + rho 4688) * (dtkAccX188 rho + dtkAccY188 rho) = rho 4690 := by
      rw [hsum]
      linear_combination r5196
    have ha1 : rho 4688 * dtkAccX188 rho = rho 4691 := by
      unfold dtkAccX188
      linear_combination r5197
    have ha2 : rho 4687 * dtkAccY188 rho = rho 4692 := by
      unfold dtkAccY188
      linear_combination r5198
    have ha3 : 3021 * rho 4691 * rho 4692 = rho 4693 := by
      linear_combination r5199
    have ha4 : rho 4694 * (1 + rho 4693) = rho 4691 + rho 4692 := by
      linear_combination r5200
    have ha5 : rho 4695 * (1 - rho 4693) = rho 4690 - rho 4691 - rho 4692 := by
      linear_combination r5201
    have haddx :
        rho 4694 * (1 + 3021 * (rho 4688 * dtkAccX188 rho) * (rho 4687 * dtkAccY188 rho)) =
          rho 4688 * dtkAccX188 rho + rho 4687 * dtkAccY188 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4695 * (1 - 3021 * (rho 4688 * dtkAccX188 rho) * (rho 4687 * dtkAccY188 rho)) =
          (-1) * (rho 4688 * dtkAccX188 rho) - rho 4687 * dtkAccY188 rho +
            (dtkAccY188 rho - dtkAccX188 rho * (-1)) * (rho 4687 + rho 4688) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4695 * (1 - rho 4693) = rho 4690 - rho 4691 - rho 4692 := ha5
        _ = (-1) * rho 4691 - rho 4692 + (dtkAccY188 rho - dtkAccX188 rho * (-1)) * (rho 4687 + rho 4688) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX189 rho = dtkAccX188 rho - Bool.toZMod bit * (dtkAccX188 rho - rho 4694) := by
      have hd : rho 4696 = Bool.toZMod bit * (rho 4694 - dtkAccX188 rho) := by
        rw [← hbit]
        unfold dtkAccX188
        linear_combination -r5202
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY189 rho = dtkAccY188 rho - Bool.toZMod bit * (dtkAccY188 rho - rho 4695) := by
      have hd : rho 4697 = Bool.toZMod bit * (rho 4695 - dtkAccY188 rho) := by
        rw [← hbit]
        unfold dtkAccY188
        linear_combination -r5203
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4687 * rho 4688 = rho 4698 := by linear_combination r5204
    have hd1 : rho 4687 * rho 4687 = rho 4699 := by linear_combination r5205
    have hd2 : rho 4688 * rho 4688 = rho 4700 := by linear_combination r5206
    have hd3 : rho 4701 * (rho 4688 * rho 4688 + rho 4687 * rho 4687 * (-1)) = 2 * (rho 4687 * rho 4688) := by
      rw [hd0, hd1, hd2]
      linear_combination r5207
    have hd4 : rho 4702 * (2 - (rho 4688 * rho 4688 + rho 4687 * rho 4687 * (-1))) = rho 4688 * rho 4688 - rho 4687 * rho 4687 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5208
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX188 rho : F), (dtkAccY188 rho : F)⟩
      ⟨(rho 4687 : F), (rho 4688 : F)⟩
      ⟨(rho 4694 : F), (rho 4695 : F)⟩
      ⟨(dtkAccX189 rho : F), (dtkAccY189 rho : F)⟩
      ⟨(rho 4701 : F), (rho 4702 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung188

theorem dtk_rows189 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5209 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5210 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5211 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5212 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5213 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5214 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5215 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5216 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5217 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5218 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5219 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5220 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5221 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5222 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p65, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart65 at p65
  rcases p65 with ⟨_, _, _, _, _, _, _, _, _, r5209, r5210, r5211, r5212, r5213, r5214, r5215, r5216, r5217, r5218, r5219, r5220, r5221, r5222, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5209, r5210, r5211, r5212, r5213, r5214, r5215, r5216, r5217, r5218, r5219, r5220, r5221, r5222⟩

theorem dtk_rung189 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1172 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX189 rho : F), (dtkAccY189 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4701 : F), (rho 4702 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX189 rho : F), (dtkAccY189 rho : F)⟩
        ⟨(rho 4701 : F), (rho 4702 : F)⟩
        ⟨(dtkAccX190 rho : F), (dtkAccY190 rho : F)⟩
        ⟨(rho 4715 : F), (rho 4716 : F)⟩ := by
  obtain ⟨r5209, r5210, r5211, r5212, r5213, r5214, r5215, r5216, r5217, r5218, r5219, r5220, r5221, r5222⟩ := dtk_rows189 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5209 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1031 at r5209
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5209
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5210 at r5210
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5211 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1032 at r5211
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5211
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5212 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1033 at r5212
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5212
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5213 at r5213
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5214 at r5214
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5215 at r5215
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5216 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1034 at r5216
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5216
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5217 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1035 at r5217
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5217
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5218 at r5218
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5219 at r5219
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5220 at r5220
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5221 at r5221
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5222 at r5222
  have hrung189 (bit : Bool) (hbit : rho 1172 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX189 rho : F), (dtkAccY189 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4701 : F), (rho 4702 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX189 rho : F), (dtkAccY189 rho : F)⟩
        ⟨(rho 4701 : F), (rho 4702 : F)⟩
        ⟨(dtkAccX190 rho : F), (dtkAccY190 rho : F)⟩
        ⟨(rho 4715 : F), (rho 4716 : F)⟩ := by
    have hnextx : dtkAccX190 rho = dtkAccX189 rho + rho 4710 := by
      unfold dtkAccX190 dtkAccX189
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 39]
      ring
    have hnexty : dtkAccY190 rho = dtkAccY189 rho + rho 4711 := by
      unfold dtkAccY190 dtkAccY189
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4165 14 39]
      ring
    have hsum : dtkAccX189 rho + dtkAccY189 rho = rho 4703 := by
      unfold dtkAccX189 dtkAccY189
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 150] at r5209
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_add rho 4164 14 1 38, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 4164 14]
      linear_combination r5209
    have ha0 : (rho 4701 + rho 4702) * (dtkAccX189 rho + dtkAccY189 rho) = rho 4704 := by
      rw [hsum]
      linear_combination r5210
    have ha1 : rho 4702 * dtkAccX189 rho = rho 4705 := by
      unfold dtkAccX189
      linear_combination r5211
    have ha2 : rho 4701 * dtkAccY189 rho = rho 4706 := by
      unfold dtkAccY189
      linear_combination r5212
    have ha3 : 3021 * rho 4705 * rho 4706 = rho 4707 := by
      linear_combination r5213
    have ha4 : rho 4708 * (1 + rho 4707) = rho 4705 + rho 4706 := by
      linear_combination r5214
    have ha5 : rho 4709 * (1 - rho 4707) = rho 4704 - rho 4705 - rho 4706 := by
      linear_combination r5215
    have haddx :
        rho 4708 * (1 + 3021 * (rho 4702 * dtkAccX189 rho) * (rho 4701 * dtkAccY189 rho)) =
          rho 4702 * dtkAccX189 rho + rho 4701 * dtkAccY189 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4709 * (1 - 3021 * (rho 4702 * dtkAccX189 rho) * (rho 4701 * dtkAccY189 rho)) =
          (-1) * (rho 4702 * dtkAccX189 rho) - rho 4701 * dtkAccY189 rho +
            (dtkAccY189 rho - dtkAccX189 rho * (-1)) * (rho 4701 + rho 4702) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4709 * (1 - rho 4707) = rho 4704 - rho 4705 - rho 4706 := ha5
        _ = (-1) * rho 4705 - rho 4706 + (dtkAccY189 rho - dtkAccX189 rho * (-1)) * (rho 4701 + rho 4702) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX190 rho = dtkAccX189 rho - Bool.toZMod bit * (dtkAccX189 rho - rho 4708) := by
      have hd : rho 4710 = Bool.toZMod bit * (rho 4708 - dtkAccX189 rho) := by
        rw [← hbit]
        unfold dtkAccX189
        linear_combination -r5216
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY190 rho = dtkAccY189 rho - Bool.toZMod bit * (dtkAccY189 rho - rho 4709) := by
      have hd : rho 4711 = Bool.toZMod bit * (rho 4709 - dtkAccY189 rho) := by
        rw [← hbit]
        unfold dtkAccY189
        linear_combination -r5217
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4701 * rho 4702 = rho 4712 := by linear_combination r5218
    have hd1 : rho 4701 * rho 4701 = rho 4713 := by linear_combination r5219
    have hd2 : rho 4702 * rho 4702 = rho 4714 := by linear_combination r5220
    have hd3 : rho 4715 * (rho 4702 * rho 4702 + rho 4701 * rho 4701 * (-1)) = 2 * (rho 4701 * rho 4702) := by
      rw [hd0, hd1, hd2]
      linear_combination r5221
    have hd4 : rho 4716 * (2 - (rho 4702 * rho 4702 + rho 4701 * rho 4701 * (-1))) = rho 4702 * rho 4702 - rho 4701 * rho 4701 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5222
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX189 rho : F), (dtkAccY189 rho : F)⟩
      ⟨(rho 4701 : F), (rho 4702 : F)⟩
      ⟨(rho 4708 : F), (rho 4709 : F)⟩
      ⟨(dtkAccX190 rho : F), (dtkAccY190 rho : F)⟩
      ⟨(rho 4715 : F), (rho 4716 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung189

theorem dtk_rows190 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5223 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5224 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5225 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5226 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5227 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5228 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5229 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5230 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5231 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5232 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5233 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5234 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5235 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5236 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p65, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart65 at p65
  rcases p65 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5223, r5224, r5225, r5226, r5227, r5228, r5229, r5230, r5231, r5232, r5233, r5234, r5235, r5236, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5223, r5224, r5225, r5226, r5227, r5228, r5229, r5230, r5231, r5232, r5233, r5234, r5235, r5236⟩

theorem dtk_rung190 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1173 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX190 rho : F), (dtkAccY190 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4715 : F), (rho 4716 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX190 rho : F), (dtkAccY190 rho : F)⟩
        ⟨(rho 4715 : F), (rho 4716 : F)⟩
        ⟨(dtkAccX191 rho : F), (dtkAccY191 rho : F)⟩
        ⟨(rho 4729 : F), (rho 4730 : F)⟩ := by
  obtain ⟨r5223, r5224, r5225, r5226, r5227, r5228, r5229, r5230, r5231, r5232, r5233, r5234, r5235, r5236⟩ := dtk_rows190 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5223 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1036 at r5223
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5223
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5224 at r5224
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5225 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1037 at r5225
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5225
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5226 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1038 at r5226
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5226
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5227 at r5227
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5228 at r5228
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5229 at r5229
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5230 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1039 at r5230
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5230
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5231 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1040 at r5231
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5231
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5232 at r5232
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5233 at r5233
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5234 at r5234
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5235 at r5235
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5236 at r5236
  have hrung190 (bit : Bool) (hbit : rho 1173 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX190 rho : F), (dtkAccY190 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4715 : F), (rho 4716 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX190 rho : F), (dtkAccY190 rho : F)⟩
        ⟨(rho 4715 : F), (rho 4716 : F)⟩
        ⟨(dtkAccX191 rho : F), (dtkAccY191 rho : F)⟩
        ⟨(rho 4729 : F), (rho 4730 : F)⟩ := by
    have hnextx : dtkAccX191 rho = dtkAccX190 rho + rho 4724 := by
      unfold dtkAccX191 dtkAccX190
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 40]
      ring
    have hnexty : dtkAccY191 rho = dtkAccY190 rho + rho 4725 := by
      unfold dtkAccY191 dtkAccY190
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4165 14 40]
      ring
    have hsum : dtkAccX190 rho + dtkAccY190 rho = rho 4717 := by
      unfold dtkAccX190 dtkAccY190
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 150] at r5223
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_add rho 4164 14 1 39, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 4164 14]
      linear_combination r5223
    have ha0 : (rho 4715 + rho 4716) * (dtkAccX190 rho + dtkAccY190 rho) = rho 4718 := by
      rw [hsum]
      linear_combination r5224
    have ha1 : rho 4716 * dtkAccX190 rho = rho 4719 := by
      unfold dtkAccX190
      linear_combination r5225
    have ha2 : rho 4715 * dtkAccY190 rho = rho 4720 := by
      unfold dtkAccY190
      linear_combination r5226
    have ha3 : 3021 * rho 4719 * rho 4720 = rho 4721 := by
      linear_combination r5227
    have ha4 : rho 4722 * (1 + rho 4721) = rho 4719 + rho 4720 := by
      linear_combination r5228
    have ha5 : rho 4723 * (1 - rho 4721) = rho 4718 - rho 4719 - rho 4720 := by
      linear_combination r5229
    have haddx :
        rho 4722 * (1 + 3021 * (rho 4716 * dtkAccX190 rho) * (rho 4715 * dtkAccY190 rho)) =
          rho 4716 * dtkAccX190 rho + rho 4715 * dtkAccY190 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4723 * (1 - 3021 * (rho 4716 * dtkAccX190 rho) * (rho 4715 * dtkAccY190 rho)) =
          (-1) * (rho 4716 * dtkAccX190 rho) - rho 4715 * dtkAccY190 rho +
            (dtkAccY190 rho - dtkAccX190 rho * (-1)) * (rho 4715 + rho 4716) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4723 * (1 - rho 4721) = rho 4718 - rho 4719 - rho 4720 := ha5
        _ = (-1) * rho 4719 - rho 4720 + (dtkAccY190 rho - dtkAccX190 rho * (-1)) * (rho 4715 + rho 4716) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX191 rho = dtkAccX190 rho - Bool.toZMod bit * (dtkAccX190 rho - rho 4722) := by
      have hd : rho 4724 = Bool.toZMod bit * (rho 4722 - dtkAccX190 rho) := by
        rw [← hbit]
        unfold dtkAccX190
        linear_combination -r5230
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY191 rho = dtkAccY190 rho - Bool.toZMod bit * (dtkAccY190 rho - rho 4723) := by
      have hd : rho 4725 = Bool.toZMod bit * (rho 4723 - dtkAccY190 rho) := by
        rw [← hbit]
        unfold dtkAccY190
        linear_combination -r5231
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4715 * rho 4716 = rho 4726 := by linear_combination r5232
    have hd1 : rho 4715 * rho 4715 = rho 4727 := by linear_combination r5233
    have hd2 : rho 4716 * rho 4716 = rho 4728 := by linear_combination r5234
    have hd3 : rho 4729 * (rho 4716 * rho 4716 + rho 4715 * rho 4715 * (-1)) = 2 * (rho 4715 * rho 4716) := by
      rw [hd0, hd1, hd2]
      linear_combination r5235
    have hd4 : rho 4730 * (2 - (rho 4716 * rho 4716 + rho 4715 * rho 4715 * (-1))) = rho 4716 * rho 4716 - rho 4715 * rho 4715 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5236
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX190 rho : F), (dtkAccY190 rho : F)⟩
      ⟨(rho 4715 : F), (rho 4716 : F)⟩
      ⟨(rho 4722 : F), (rho 4723 : F)⟩
      ⟨(dtkAccX191 rho : F), (dtkAccY191 rho : F)⟩
      ⟨(rho 4729 : F), (rho 4730 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung190

theorem dtk_rows191 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5237 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5238 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5239 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5240 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5241 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5242 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5243 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5244 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5245 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5246 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5247 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5248 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5249 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5250 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p65, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart65 at p65
  rcases p65 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5237, r5238, r5239, r5240, r5241, r5242, r5243, r5244, r5245, r5246, r5247, r5248, r5249, r5250, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5237, r5238, r5239, r5240, r5241, r5242, r5243, r5244, r5245, r5246, r5247, r5248, r5249, r5250⟩

theorem dtk_rung191 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1174 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX191 rho : F), (dtkAccY191 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4729 : F), (rho 4730 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX191 rho : F), (dtkAccY191 rho : F)⟩
        ⟨(rho 4729 : F), (rho 4730 : F)⟩
        ⟨(dtkAccX192 rho : F), (dtkAccY192 rho : F)⟩
        ⟨(rho 4743 : F), (rho 4744 : F)⟩ := by
  obtain ⟨r5237, r5238, r5239, r5240, r5241, r5242, r5243, r5244, r5245, r5246, r5247, r5248, r5249, r5250⟩ := dtk_rows191 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5237 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1041 at r5237
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5237
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5238 at r5238
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5239 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1042 at r5239
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5239
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5240 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1043 at r5240
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5240
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5241 at r5241
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5242 at r5242
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5243 at r5243
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5244 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1044 at r5244
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5244
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5245 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1045 at r5245
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5245
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5246 at r5246
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5247 at r5247
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5248 at r5248
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5249 at r5249
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5250 at r5250
  have hrung191 (bit : Bool) (hbit : rho 1174 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX191 rho : F), (dtkAccY191 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4729 : F), (rho 4730 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX191 rho : F), (dtkAccY191 rho : F)⟩
        ⟨(rho 4729 : F), (rho 4730 : F)⟩
        ⟨(dtkAccX192 rho : F), (dtkAccY192 rho : F)⟩
        ⟨(rho 4743 : F), (rho 4744 : F)⟩ := by
    have hnextx : dtkAccX192 rho = dtkAccX191 rho + rho 4738 := by
      unfold dtkAccX192 dtkAccX191
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 41]
      ring
    have hnexty : dtkAccY192 rho = dtkAccY191 rho + rho 4739 := by
      unfold dtkAccY192 dtkAccY191
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4165 14 41]
      ring
    have hsum : dtkAccX191 rho + dtkAccY191 rho = rho 4731 := by
      unfold dtkAccX191 dtkAccY191
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 150] at r5237
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_add rho 4164 14 1 40, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 4164 14]
      linear_combination r5237
    have ha0 : (rho 4729 + rho 4730) * (dtkAccX191 rho + dtkAccY191 rho) = rho 4732 := by
      rw [hsum]
      linear_combination r5238
    have ha1 : rho 4730 * dtkAccX191 rho = rho 4733 := by
      unfold dtkAccX191
      linear_combination r5239
    have ha2 : rho 4729 * dtkAccY191 rho = rho 4734 := by
      unfold dtkAccY191
      linear_combination r5240
    have ha3 : 3021 * rho 4733 * rho 4734 = rho 4735 := by
      linear_combination r5241
    have ha4 : rho 4736 * (1 + rho 4735) = rho 4733 + rho 4734 := by
      linear_combination r5242
    have ha5 : rho 4737 * (1 - rho 4735) = rho 4732 - rho 4733 - rho 4734 := by
      linear_combination r5243
    have haddx :
        rho 4736 * (1 + 3021 * (rho 4730 * dtkAccX191 rho) * (rho 4729 * dtkAccY191 rho)) =
          rho 4730 * dtkAccX191 rho + rho 4729 * dtkAccY191 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4737 * (1 - 3021 * (rho 4730 * dtkAccX191 rho) * (rho 4729 * dtkAccY191 rho)) =
          (-1) * (rho 4730 * dtkAccX191 rho) - rho 4729 * dtkAccY191 rho +
            (dtkAccY191 rho - dtkAccX191 rho * (-1)) * (rho 4729 + rho 4730) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4737 * (1 - rho 4735) = rho 4732 - rho 4733 - rho 4734 := ha5
        _ = (-1) * rho 4733 - rho 4734 + (dtkAccY191 rho - dtkAccX191 rho * (-1)) * (rho 4729 + rho 4730) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX192 rho = dtkAccX191 rho - Bool.toZMod bit * (dtkAccX191 rho - rho 4736) := by
      have hd : rho 4738 = Bool.toZMod bit * (rho 4736 - dtkAccX191 rho) := by
        rw [← hbit]
        unfold dtkAccX191
        linear_combination -r5244
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY192 rho = dtkAccY191 rho - Bool.toZMod bit * (dtkAccY191 rho - rho 4737) := by
      have hd : rho 4739 = Bool.toZMod bit * (rho 4737 - dtkAccY191 rho) := by
        rw [← hbit]
        unfold dtkAccY191
        linear_combination -r5245
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4729 * rho 4730 = rho 4740 := by linear_combination r5246
    have hd1 : rho 4729 * rho 4729 = rho 4741 := by linear_combination r5247
    have hd2 : rho 4730 * rho 4730 = rho 4742 := by linear_combination r5248
    have hd3 : rho 4743 * (rho 4730 * rho 4730 + rho 4729 * rho 4729 * (-1)) = 2 * (rho 4729 * rho 4730) := by
      rw [hd0, hd1, hd2]
      linear_combination r5249
    have hd4 : rho 4744 * (2 - (rho 4730 * rho 4730 + rho 4729 * rho 4729 * (-1))) = rho 4730 * rho 4730 - rho 4729 * rho 4729 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5250
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX191 rho : F), (dtkAccY191 rho : F)⟩
      ⟨(rho 4729 : F), (rho 4730 : F)⟩
      ⟨(rho 4736 : F), (rho 4737 : F)⟩
      ⟨(dtkAccX192 rho : F), (dtkAccY192 rho : F)⟩
      ⟨(rho 4743 : F), (rho 4744 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung191

theorem dtk_hstep_c31 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (983 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 186 ≤ i → i < 192 →
      EdwardsBridge.onCurve (dtkLadderAccState rho i) →
      EdwardsBridge.onCurve (dtkLadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (dtkLadderAccState rho i) (dtkLadderCurState rho i)
        (dtkLadderAccState rho (i + 1)) (dtkLadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact dtk_rung186 rho h bits[186]! (hbitAt 186 (by omega)) hacc hcur
  · exact dtk_rung187 rho h bits[187]! (hbitAt 187 (by omega)) hacc hcur
  · exact dtk_rung188 rho h bits[188]! (hbitAt 188 (by omega)) hacc hcur
  · exact dtk_rung189 rho h bits[189]! (hbitAt 189 (by omega)) hacc hcur
  · exact dtk_rung190 rho h bits[190]! (hbitAt 190 (by omega)) hacc hcur
  · exact dtk_rung191 rho h bits[191]! (hbitAt 191 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport
