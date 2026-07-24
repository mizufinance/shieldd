import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDtkScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs

theorem dtk_rows192 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5251 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5252 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5253 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5254 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5255 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5256 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5257 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5258 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5259 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5260 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5261 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5262 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5263 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5264 rho := by
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
  rcases p65 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5251, r5252, r5253, r5254, r5255, r5256, r5257, r5258, r5259, r5260, r5261, r5262, r5263, r5264, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5251, r5252, r5253, r5254, r5255, r5256, r5257, r5258, r5259, r5260, r5261, r5262, r5263, r5264⟩

theorem dtk_rung192 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1175 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX192 rho : F), (dtkAccY192 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4743 : F), (rho 4744 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX192 rho : F), (dtkAccY192 rho : F)⟩
        ⟨(rho 4743 : F), (rho 4744 : F)⟩
        ⟨(dtkAccX193 rho : F), (dtkAccY193 rho : F)⟩
        ⟨(rho 4757 : F), (rho 4758 : F)⟩ := by
  obtain ⟨r5251, r5252, r5253, r5254, r5255, r5256, r5257, r5258, r5259, r5260, r5261, r5262, r5263, r5264⟩ := dtk_rows192 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5251 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1046 at r5251
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5251
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5252 at r5252
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5253 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1047 at r5253
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5253
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5254 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1048 at r5254
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5254
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5255 at r5255
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5256 at r5256
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5257 at r5257
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5258 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1049 at r5258
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5258
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5259 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1050 at r5259
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5259
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5260 at r5260
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5261 at r5261
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5262 at r5262
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5263 at r5263
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5264 at r5264
  have hrung192 (bit : Bool) (hbit : rho 1175 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX192 rho : F), (dtkAccY192 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4743 : F), (rho 4744 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX192 rho : F), (dtkAccY192 rho : F)⟩
        ⟨(rho 4743 : F), (rho 4744 : F)⟩
        ⟨(dtkAccX193 rho : F), (dtkAccY193 rho : F)⟩
        ⟨(rho 4757 : F), (rho 4758 : F)⟩ := by
    have hnextx : dtkAccX193 rho = dtkAccX192 rho + rho 4752 := by
      unfold dtkAccX193 dtkAccX192
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 42]
      ring
    have hnexty : dtkAccY193 rho = dtkAccY192 rho + rho 4753 := by
      unfold dtkAccY193 dtkAccY192
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4165 14 42]
      ring
    have hsum : dtkAccX192 rho + dtkAccY192 rho = rho 4745 := by
      unfold dtkAccX192 dtkAccY192
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 150] at r5251
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_add rho 4164 14 1 41, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 4164 14]
      linear_combination r5251
    have ha0 : (rho 4743 + rho 4744) * (dtkAccX192 rho + dtkAccY192 rho) = rho 4746 := by
      rw [hsum]
      linear_combination r5252
    have ha1 : rho 4744 * dtkAccX192 rho = rho 4747 := by
      unfold dtkAccX192
      linear_combination r5253
    have ha2 : rho 4743 * dtkAccY192 rho = rho 4748 := by
      unfold dtkAccY192
      linear_combination r5254
    have ha3 : 3021 * rho 4747 * rho 4748 = rho 4749 := by
      linear_combination r5255
    have ha4 : rho 4750 * (1 + rho 4749) = rho 4747 + rho 4748 := by
      linear_combination r5256
    have ha5 : rho 4751 * (1 - rho 4749) = rho 4746 - rho 4747 - rho 4748 := by
      linear_combination r5257
    have haddx :
        rho 4750 * (1 + 3021 * (rho 4744 * dtkAccX192 rho) * (rho 4743 * dtkAccY192 rho)) =
          rho 4744 * dtkAccX192 rho + rho 4743 * dtkAccY192 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4751 * (1 - 3021 * (rho 4744 * dtkAccX192 rho) * (rho 4743 * dtkAccY192 rho)) =
          (-1) * (rho 4744 * dtkAccX192 rho) - rho 4743 * dtkAccY192 rho +
            (dtkAccY192 rho - dtkAccX192 rho * (-1)) * (rho 4743 + rho 4744) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4751 * (1 - rho 4749) = rho 4746 - rho 4747 - rho 4748 := ha5
        _ = (-1) * rho 4747 - rho 4748 + (dtkAccY192 rho - dtkAccX192 rho * (-1)) * (rho 4743 + rho 4744) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX193 rho = dtkAccX192 rho - Bool.toZMod bit * (dtkAccX192 rho - rho 4750) := by
      have hd : rho 4752 = Bool.toZMod bit * (rho 4750 - dtkAccX192 rho) := by
        rw [← hbit]
        unfold dtkAccX192
        linear_combination -r5258
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY193 rho = dtkAccY192 rho - Bool.toZMod bit * (dtkAccY192 rho - rho 4751) := by
      have hd : rho 4753 = Bool.toZMod bit * (rho 4751 - dtkAccY192 rho) := by
        rw [← hbit]
        unfold dtkAccY192
        linear_combination -r5259
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4743 * rho 4744 = rho 4754 := by linear_combination r5260
    have hd1 : rho 4743 * rho 4743 = rho 4755 := by linear_combination r5261
    have hd2 : rho 4744 * rho 4744 = rho 4756 := by linear_combination r5262
    have hd3 : rho 4757 * (rho 4744 * rho 4744 + rho 4743 * rho 4743 * (-1)) = 2 * (rho 4743 * rho 4744) := by
      rw [hd0, hd1, hd2]
      linear_combination r5263
    have hd4 : rho 4758 * (2 - (rho 4744 * rho 4744 + rho 4743 * rho 4743 * (-1))) = rho 4744 * rho 4744 - rho 4743 * rho 4743 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5264
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX192 rho : F), (dtkAccY192 rho : F)⟩
      ⟨(rho 4743 : F), (rho 4744 : F)⟩
      ⟨(rho 4750 : F), (rho 4751 : F)⟩
      ⟨(dtkAccX193 rho : F), (dtkAccY193 rho : F)⟩
      ⟨(rho 4757 : F), (rho 4758 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung192

theorem dtk_rows193 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5265 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5266 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5267 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5268 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5269 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5270 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5271 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5272 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5273 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5274 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5275 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5276 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5277 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5278 rho := by
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
  rcases p65 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5265, r5266, r5267, r5268, r5269, r5270, r5271, r5272, r5273, r5274, r5275, r5276, r5277, r5278, _⟩
  exact ⟨r5265, r5266, r5267, r5268, r5269, r5270, r5271, r5272, r5273, r5274, r5275, r5276, r5277, r5278⟩

theorem dtk_rung193 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1176 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX193 rho : F), (dtkAccY193 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4757 : F), (rho 4758 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX193 rho : F), (dtkAccY193 rho : F)⟩
        ⟨(rho 4757 : F), (rho 4758 : F)⟩
        ⟨(dtkAccX194 rho : F), (dtkAccY194 rho : F)⟩
        ⟨(rho 4771 : F), (rho 4772 : F)⟩ := by
  obtain ⟨r5265, r5266, r5267, r5268, r5269, r5270, r5271, r5272, r5273, r5274, r5275, r5276, r5277, r5278⟩ := dtk_rows193 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5265 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1051 at r5265
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5265
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5266 at r5266
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5267 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1052 at r5267
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5267
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5268 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1053 at r5268
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5268
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5269 at r5269
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5270 at r5270
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5271 at r5271
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5272 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1054 at r5272
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5272
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5273 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1055 at r5273
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5273
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5274 at r5274
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5275 at r5275
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5276 at r5276
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5277 at r5277
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5278 at r5278
  have hrung193 (bit : Bool) (hbit : rho 1176 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX193 rho : F), (dtkAccY193 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4757 : F), (rho 4758 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX193 rho : F), (dtkAccY193 rho : F)⟩
        ⟨(rho 4757 : F), (rho 4758 : F)⟩
        ⟨(dtkAccX194 rho : F), (dtkAccY194 rho : F)⟩
        ⟨(rho 4771 : F), (rho 4772 : F)⟩ := by
    have hnextx : dtkAccX194 rho = dtkAccX193 rho + rho 4766 := by
      unfold dtkAccX194 dtkAccX193
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 43]
      ring
    have hnexty : dtkAccY194 rho = dtkAccY193 rho + rho 4767 := by
      unfold dtkAccY194 dtkAccY193
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4165 14 43]
      ring
    have hsum : dtkAccX193 rho + dtkAccY193 rho = rho 4759 := by
      unfold dtkAccX193 dtkAccY193
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 150] at r5265
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_add rho 4164 14 1 42, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 4164 14]
      linear_combination r5265
    have ha0 : (rho 4757 + rho 4758) * (dtkAccX193 rho + dtkAccY193 rho) = rho 4760 := by
      rw [hsum]
      linear_combination r5266
    have ha1 : rho 4758 * dtkAccX193 rho = rho 4761 := by
      unfold dtkAccX193
      linear_combination r5267
    have ha2 : rho 4757 * dtkAccY193 rho = rho 4762 := by
      unfold dtkAccY193
      linear_combination r5268
    have ha3 : 3021 * rho 4761 * rho 4762 = rho 4763 := by
      linear_combination r5269
    have ha4 : rho 4764 * (1 + rho 4763) = rho 4761 + rho 4762 := by
      linear_combination r5270
    have ha5 : rho 4765 * (1 - rho 4763) = rho 4760 - rho 4761 - rho 4762 := by
      linear_combination r5271
    have haddx :
        rho 4764 * (1 + 3021 * (rho 4758 * dtkAccX193 rho) * (rho 4757 * dtkAccY193 rho)) =
          rho 4758 * dtkAccX193 rho + rho 4757 * dtkAccY193 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4765 * (1 - 3021 * (rho 4758 * dtkAccX193 rho) * (rho 4757 * dtkAccY193 rho)) =
          (-1) * (rho 4758 * dtkAccX193 rho) - rho 4757 * dtkAccY193 rho +
            (dtkAccY193 rho - dtkAccX193 rho * (-1)) * (rho 4757 + rho 4758) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4765 * (1 - rho 4763) = rho 4760 - rho 4761 - rho 4762 := ha5
        _ = (-1) * rho 4761 - rho 4762 + (dtkAccY193 rho - dtkAccX193 rho * (-1)) * (rho 4757 + rho 4758) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX194 rho = dtkAccX193 rho - Bool.toZMod bit * (dtkAccX193 rho - rho 4764) := by
      have hd : rho 4766 = Bool.toZMod bit * (rho 4764 - dtkAccX193 rho) := by
        rw [← hbit]
        unfold dtkAccX193
        linear_combination -r5272
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY194 rho = dtkAccY193 rho - Bool.toZMod bit * (dtkAccY193 rho - rho 4765) := by
      have hd : rho 4767 = Bool.toZMod bit * (rho 4765 - dtkAccY193 rho) := by
        rw [← hbit]
        unfold dtkAccY193
        linear_combination -r5273
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4757 * rho 4758 = rho 4768 := by linear_combination r5274
    have hd1 : rho 4757 * rho 4757 = rho 4769 := by linear_combination r5275
    have hd2 : rho 4758 * rho 4758 = rho 4770 := by linear_combination r5276
    have hd3 : rho 4771 * (rho 4758 * rho 4758 + rho 4757 * rho 4757 * (-1)) = 2 * (rho 4757 * rho 4758) := by
      rw [hd0, hd1, hd2]
      linear_combination r5277
    have hd4 : rho 4772 * (2 - (rho 4758 * rho 4758 + rho 4757 * rho 4757 * (-1))) = rho 4758 * rho 4758 - rho 4757 * rho 4757 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5278
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX193 rho : F), (dtkAccY193 rho : F)⟩
      ⟨(rho 4757 : F), (rho 4758 : F)⟩
      ⟨(rho 4764 : F), (rho 4765 : F)⟩
      ⟨(dtkAccX194 rho : F), (dtkAccY194 rho : F)⟩
      ⟨(rho 4771 : F), (rho 4772 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung193

theorem dtk_rows194 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5279 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5280 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5281 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5282 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5283 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5284 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5285 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5286 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5287 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5288 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5289 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5290 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5291 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5292 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p65, p66, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart65 at p65
  rcases p65 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5279⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart66 at p66
  rcases p66 with ⟨r5280, r5281, r5282, r5283, r5284, r5285, r5286, r5287, r5288, r5289, r5290, r5291, r5292, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5279, r5280, r5281, r5282, r5283, r5284, r5285, r5286, r5287, r5288, r5289, r5290, r5291, r5292⟩

theorem dtk_rung194 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1177 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX194 rho : F), (dtkAccY194 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4771 : F), (rho 4772 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX194 rho : F), (dtkAccY194 rho : F)⟩
        ⟨(rho 4771 : F), (rho 4772 : F)⟩
        ⟨(dtkAccX195 rho : F), (dtkAccY195 rho : F)⟩
        ⟨(rho 4785 : F), (rho 4786 : F)⟩ := by
  obtain ⟨r5279, r5280, r5281, r5282, r5283, r5284, r5285, r5286, r5287, r5288, r5289, r5290, r5291, r5292⟩ := dtk_rows194 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5279 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1056 at r5279
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5279
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5280 at r5280
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5281 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1057 at r5281
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5281
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5282 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1058 at r5282
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5282
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5283 at r5283
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5284 at r5284
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5285 at r5285
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5286 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1059 at r5286
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5286
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5287 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1060 at r5287
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5287
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5288 at r5288
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5289 at r5289
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5290 at r5290
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5291 at r5291
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5292 at r5292
  have hrung194 (bit : Bool) (hbit : rho 1177 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX194 rho : F), (dtkAccY194 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4771 : F), (rho 4772 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX194 rho : F), (dtkAccY194 rho : F)⟩
        ⟨(rho 4771 : F), (rho 4772 : F)⟩
        ⟨(dtkAccX195 rho : F), (dtkAccY195 rho : F)⟩
        ⟨(rho 4785 : F), (rho 4786 : F)⟩ := by
    have hnextx : dtkAccX195 rho = dtkAccX194 rho + rho 4780 := by
      unfold dtkAccX195 dtkAccX194
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 44]
      ring
    have hnexty : dtkAccY195 rho = dtkAccY194 rho + rho 4781 := by
      unfold dtkAccY195 dtkAccY194
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4165 14 44]
      ring
    have hsum : dtkAccX194 rho + dtkAccY194 rho = rho 4773 := by
      unfold dtkAccX194 dtkAccY194
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 150] at r5279
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_add rho 4164 14 1 43, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 4164 14]
      linear_combination r5279
    have ha0 : (rho 4771 + rho 4772) * (dtkAccX194 rho + dtkAccY194 rho) = rho 4774 := by
      rw [hsum]
      linear_combination r5280
    have ha1 : rho 4772 * dtkAccX194 rho = rho 4775 := by
      unfold dtkAccX194
      linear_combination r5281
    have ha2 : rho 4771 * dtkAccY194 rho = rho 4776 := by
      unfold dtkAccY194
      linear_combination r5282
    have ha3 : 3021 * rho 4775 * rho 4776 = rho 4777 := by
      linear_combination r5283
    have ha4 : rho 4778 * (1 + rho 4777) = rho 4775 + rho 4776 := by
      linear_combination r5284
    have ha5 : rho 4779 * (1 - rho 4777) = rho 4774 - rho 4775 - rho 4776 := by
      linear_combination r5285
    have haddx :
        rho 4778 * (1 + 3021 * (rho 4772 * dtkAccX194 rho) * (rho 4771 * dtkAccY194 rho)) =
          rho 4772 * dtkAccX194 rho + rho 4771 * dtkAccY194 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4779 * (1 - 3021 * (rho 4772 * dtkAccX194 rho) * (rho 4771 * dtkAccY194 rho)) =
          (-1) * (rho 4772 * dtkAccX194 rho) - rho 4771 * dtkAccY194 rho +
            (dtkAccY194 rho - dtkAccX194 rho * (-1)) * (rho 4771 + rho 4772) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4779 * (1 - rho 4777) = rho 4774 - rho 4775 - rho 4776 := ha5
        _ = (-1) * rho 4775 - rho 4776 + (dtkAccY194 rho - dtkAccX194 rho * (-1)) * (rho 4771 + rho 4772) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX195 rho = dtkAccX194 rho - Bool.toZMod bit * (dtkAccX194 rho - rho 4778) := by
      have hd : rho 4780 = Bool.toZMod bit * (rho 4778 - dtkAccX194 rho) := by
        rw [← hbit]
        unfold dtkAccX194
        linear_combination -r5286
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY195 rho = dtkAccY194 rho - Bool.toZMod bit * (dtkAccY194 rho - rho 4779) := by
      have hd : rho 4781 = Bool.toZMod bit * (rho 4779 - dtkAccY194 rho) := by
        rw [← hbit]
        unfold dtkAccY194
        linear_combination -r5287
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4771 * rho 4772 = rho 4782 := by linear_combination r5288
    have hd1 : rho 4771 * rho 4771 = rho 4783 := by linear_combination r5289
    have hd2 : rho 4772 * rho 4772 = rho 4784 := by linear_combination r5290
    have hd3 : rho 4785 * (rho 4772 * rho 4772 + rho 4771 * rho 4771 * (-1)) = 2 * (rho 4771 * rho 4772) := by
      rw [hd0, hd1, hd2]
      linear_combination r5291
    have hd4 : rho 4786 * (2 - (rho 4772 * rho 4772 + rho 4771 * rho 4771 * (-1))) = rho 4772 * rho 4772 - rho 4771 * rho 4771 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5292
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX194 rho : F), (dtkAccY194 rho : F)⟩
      ⟨(rho 4771 : F), (rho 4772 : F)⟩
      ⟨(rho 4778 : F), (rho 4779 : F)⟩
      ⟨(dtkAccX195 rho : F), (dtkAccY195 rho : F)⟩
      ⟨(rho 4785 : F), (rho 4786 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung194

theorem dtk_rows195 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5293 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5294 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5295 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5296 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5297 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5298 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5299 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5300 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5301 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5302 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5303 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5304 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5305 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5306 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p66, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart66 at p66
  rcases p66 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, r5293, r5294, r5295, r5296, r5297, r5298, r5299, r5300, r5301, r5302, r5303, r5304, r5305, r5306, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5293, r5294, r5295, r5296, r5297, r5298, r5299, r5300, r5301, r5302, r5303, r5304, r5305, r5306⟩

theorem dtk_rung195 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1178 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX195 rho : F), (dtkAccY195 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4785 : F), (rho 4786 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX195 rho : F), (dtkAccY195 rho : F)⟩
        ⟨(rho 4785 : F), (rho 4786 : F)⟩
        ⟨(dtkAccX196 rho : F), (dtkAccY196 rho : F)⟩
        ⟨(rho 4799 : F), (rho 4800 : F)⟩ := by
  obtain ⟨r5293, r5294, r5295, r5296, r5297, r5298, r5299, r5300, r5301, r5302, r5303, r5304, r5305, r5306⟩ := dtk_rows195 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5293 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1061 at r5293
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5293
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5294 at r5294
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5295 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1062 at r5295
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5295
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5296 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1063 at r5296
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5296
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5297 at r5297
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5298 at r5298
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5299 at r5299
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5300 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1064 at r5300
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5300
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5301 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1065 at r5301
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5301
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5302 at r5302
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5303 at r5303
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5304 at r5304
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5305 at r5305
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5306 at r5306
  have hrung195 (bit : Bool) (hbit : rho 1178 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX195 rho : F), (dtkAccY195 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4785 : F), (rho 4786 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX195 rho : F), (dtkAccY195 rho : F)⟩
        ⟨(rho 4785 : F), (rho 4786 : F)⟩
        ⟨(dtkAccX196 rho : F), (dtkAccY196 rho : F)⟩
        ⟨(rho 4799 : F), (rho 4800 : F)⟩ := by
    have hnextx : dtkAccX196 rho = dtkAccX195 rho + rho 4794 := by
      unfold dtkAccX196 dtkAccX195
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 45]
      ring
    have hnexty : dtkAccY196 rho = dtkAccY195 rho + rho 4795 := by
      unfold dtkAccY196 dtkAccY195
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4165 14 45]
      ring
    have hsum : dtkAccX195 rho + dtkAccY195 rho = rho 4787 := by
      unfold dtkAccX195 dtkAccY195
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 150] at r5293
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_add rho 4164 14 1 44, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 4164 14]
      linear_combination r5293
    have ha0 : (rho 4785 + rho 4786) * (dtkAccX195 rho + dtkAccY195 rho) = rho 4788 := by
      rw [hsum]
      linear_combination r5294
    have ha1 : rho 4786 * dtkAccX195 rho = rho 4789 := by
      unfold dtkAccX195
      linear_combination r5295
    have ha2 : rho 4785 * dtkAccY195 rho = rho 4790 := by
      unfold dtkAccY195
      linear_combination r5296
    have ha3 : 3021 * rho 4789 * rho 4790 = rho 4791 := by
      linear_combination r5297
    have ha4 : rho 4792 * (1 + rho 4791) = rho 4789 + rho 4790 := by
      linear_combination r5298
    have ha5 : rho 4793 * (1 - rho 4791) = rho 4788 - rho 4789 - rho 4790 := by
      linear_combination r5299
    have haddx :
        rho 4792 * (1 + 3021 * (rho 4786 * dtkAccX195 rho) * (rho 4785 * dtkAccY195 rho)) =
          rho 4786 * dtkAccX195 rho + rho 4785 * dtkAccY195 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4793 * (1 - 3021 * (rho 4786 * dtkAccX195 rho) * (rho 4785 * dtkAccY195 rho)) =
          (-1) * (rho 4786 * dtkAccX195 rho) - rho 4785 * dtkAccY195 rho +
            (dtkAccY195 rho - dtkAccX195 rho * (-1)) * (rho 4785 + rho 4786) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4793 * (1 - rho 4791) = rho 4788 - rho 4789 - rho 4790 := ha5
        _ = (-1) * rho 4789 - rho 4790 + (dtkAccY195 rho - dtkAccX195 rho * (-1)) * (rho 4785 + rho 4786) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX196 rho = dtkAccX195 rho - Bool.toZMod bit * (dtkAccX195 rho - rho 4792) := by
      have hd : rho 4794 = Bool.toZMod bit * (rho 4792 - dtkAccX195 rho) := by
        rw [← hbit]
        unfold dtkAccX195
        linear_combination -r5300
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY196 rho = dtkAccY195 rho - Bool.toZMod bit * (dtkAccY195 rho - rho 4793) := by
      have hd : rho 4795 = Bool.toZMod bit * (rho 4793 - dtkAccY195 rho) := by
        rw [← hbit]
        unfold dtkAccY195
        linear_combination -r5301
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4785 * rho 4786 = rho 4796 := by linear_combination r5302
    have hd1 : rho 4785 * rho 4785 = rho 4797 := by linear_combination r5303
    have hd2 : rho 4786 * rho 4786 = rho 4798 := by linear_combination r5304
    have hd3 : rho 4799 * (rho 4786 * rho 4786 + rho 4785 * rho 4785 * (-1)) = 2 * (rho 4785 * rho 4786) := by
      rw [hd0, hd1, hd2]
      linear_combination r5305
    have hd4 : rho 4800 * (2 - (rho 4786 * rho 4786 + rho 4785 * rho 4785 * (-1))) = rho 4786 * rho 4786 - rho 4785 * rho 4785 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5306
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX195 rho : F), (dtkAccY195 rho : F)⟩
      ⟨(rho 4785 : F), (rho 4786 : F)⟩
      ⟨(rho 4792 : F), (rho 4793 : F)⟩
      ⟨(dtkAccX196 rho : F), (dtkAccY196 rho : F)⟩
      ⟨(rho 4799 : F), (rho 4800 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung195

theorem dtk_rows196 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5307 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5308 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5309 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5310 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5311 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5312 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5313 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5314 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5315 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5316 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5317 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5318 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5319 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5320 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p66, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart66 at p66
  rcases p66 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5307, r5308, r5309, r5310, r5311, r5312, r5313, r5314, r5315, r5316, r5317, r5318, r5319, r5320, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5307, r5308, r5309, r5310, r5311, r5312, r5313, r5314, r5315, r5316, r5317, r5318, r5319, r5320⟩

theorem dtk_rung196 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1179 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX196 rho : F), (dtkAccY196 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4799 : F), (rho 4800 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX196 rho : F), (dtkAccY196 rho : F)⟩
        ⟨(rho 4799 : F), (rho 4800 : F)⟩
        ⟨(dtkAccX197 rho : F), (dtkAccY197 rho : F)⟩
        ⟨(rho 4813 : F), (rho 4814 : F)⟩ := by
  obtain ⟨r5307, r5308, r5309, r5310, r5311, r5312, r5313, r5314, r5315, r5316, r5317, r5318, r5319, r5320⟩ := dtk_rows196 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5307 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1066 at r5307
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5307
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5308 at r5308
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5309 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1067 at r5309
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5309
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5310 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1068 at r5310
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5310
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5311 at r5311
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5312 at r5312
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5313 at r5313
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5314 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1069 at r5314
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5314
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5315 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1070 at r5315
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5315
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5316 at r5316
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5317 at r5317
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5318 at r5318
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5319 at r5319
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5320 at r5320
  have hrung196 (bit : Bool) (hbit : rho 1179 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX196 rho : F), (dtkAccY196 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4799 : F), (rho 4800 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX196 rho : F), (dtkAccY196 rho : F)⟩
        ⟨(rho 4799 : F), (rho 4800 : F)⟩
        ⟨(dtkAccX197 rho : F), (dtkAccY197 rho : F)⟩
        ⟨(rho 4813 : F), (rho 4814 : F)⟩ := by
    have hnextx : dtkAccX197 rho = dtkAccX196 rho + rho 4808 := by
      unfold dtkAccX197 dtkAccX196
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 46]
      ring
    have hnexty : dtkAccY197 rho = dtkAccY196 rho + rho 4809 := by
      unfold dtkAccY197 dtkAccY196
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4165 14 46]
      ring
    have hsum : dtkAccX196 rho + dtkAccY196 rho = rho 4801 := by
      unfold dtkAccX196 dtkAccY196
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 150] at r5307
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_add rho 4164 14 1 45, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 4164 14]
      linear_combination r5307
    have ha0 : (rho 4799 + rho 4800) * (dtkAccX196 rho + dtkAccY196 rho) = rho 4802 := by
      rw [hsum]
      linear_combination r5308
    have ha1 : rho 4800 * dtkAccX196 rho = rho 4803 := by
      unfold dtkAccX196
      linear_combination r5309
    have ha2 : rho 4799 * dtkAccY196 rho = rho 4804 := by
      unfold dtkAccY196
      linear_combination r5310
    have ha3 : 3021 * rho 4803 * rho 4804 = rho 4805 := by
      linear_combination r5311
    have ha4 : rho 4806 * (1 + rho 4805) = rho 4803 + rho 4804 := by
      linear_combination r5312
    have ha5 : rho 4807 * (1 - rho 4805) = rho 4802 - rho 4803 - rho 4804 := by
      linear_combination r5313
    have haddx :
        rho 4806 * (1 + 3021 * (rho 4800 * dtkAccX196 rho) * (rho 4799 * dtkAccY196 rho)) =
          rho 4800 * dtkAccX196 rho + rho 4799 * dtkAccY196 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4807 * (1 - 3021 * (rho 4800 * dtkAccX196 rho) * (rho 4799 * dtkAccY196 rho)) =
          (-1) * (rho 4800 * dtkAccX196 rho) - rho 4799 * dtkAccY196 rho +
            (dtkAccY196 rho - dtkAccX196 rho * (-1)) * (rho 4799 + rho 4800) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4807 * (1 - rho 4805) = rho 4802 - rho 4803 - rho 4804 := ha5
        _ = (-1) * rho 4803 - rho 4804 + (dtkAccY196 rho - dtkAccX196 rho * (-1)) * (rho 4799 + rho 4800) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX197 rho = dtkAccX196 rho - Bool.toZMod bit * (dtkAccX196 rho - rho 4806) := by
      have hd : rho 4808 = Bool.toZMod bit * (rho 4806 - dtkAccX196 rho) := by
        rw [← hbit]
        unfold dtkAccX196
        linear_combination -r5314
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY197 rho = dtkAccY196 rho - Bool.toZMod bit * (dtkAccY196 rho - rho 4807) := by
      have hd : rho 4809 = Bool.toZMod bit * (rho 4807 - dtkAccY196 rho) := by
        rw [← hbit]
        unfold dtkAccY196
        linear_combination -r5315
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4799 * rho 4800 = rho 4810 := by linear_combination r5316
    have hd1 : rho 4799 * rho 4799 = rho 4811 := by linear_combination r5317
    have hd2 : rho 4800 * rho 4800 = rho 4812 := by linear_combination r5318
    have hd3 : rho 4813 * (rho 4800 * rho 4800 + rho 4799 * rho 4799 * (-1)) = 2 * (rho 4799 * rho 4800) := by
      rw [hd0, hd1, hd2]
      linear_combination r5319
    have hd4 : rho 4814 * (2 - (rho 4800 * rho 4800 + rho 4799 * rho 4799 * (-1))) = rho 4800 * rho 4800 - rho 4799 * rho 4799 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5320
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX196 rho : F), (dtkAccY196 rho : F)⟩
      ⟨(rho 4799 : F), (rho 4800 : F)⟩
      ⟨(rho 4806 : F), (rho 4807 : F)⟩
      ⟨(dtkAccX197 rho : F), (dtkAccY197 rho : F)⟩
      ⟨(rho 4813 : F), (rho 4814 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung196

theorem dtk_rows197 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5321 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5322 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5323 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5324 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5325 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5326 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5327 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5328 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5329 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5330 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5331 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5332 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5333 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5334 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p66, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart66 at p66
  rcases p66 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5321, r5322, r5323, r5324, r5325, r5326, r5327, r5328, r5329, r5330, r5331, r5332, r5333, r5334, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5321, r5322, r5323, r5324, r5325, r5326, r5327, r5328, r5329, r5330, r5331, r5332, r5333, r5334⟩

theorem dtk_rung197 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1180 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX197 rho : F), (dtkAccY197 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4813 : F), (rho 4814 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX197 rho : F), (dtkAccY197 rho : F)⟩
        ⟨(rho 4813 : F), (rho 4814 : F)⟩
        ⟨(dtkAccX198 rho : F), (dtkAccY198 rho : F)⟩
        ⟨(rho 4827 : F), (rho 4828 : F)⟩ := by
  obtain ⟨r5321, r5322, r5323, r5324, r5325, r5326, r5327, r5328, r5329, r5330, r5331, r5332, r5333, r5334⟩ := dtk_rows197 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5321 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1071 at r5321
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5321
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5322 at r5322
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5323 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1072 at r5323
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5323
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5324 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1073 at r5324
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5324
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5325 at r5325
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5326 at r5326
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5327 at r5327
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5328 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1074 at r5328
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5328
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5329 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1075 at r5329
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5329
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5330 at r5330
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5331 at r5331
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5332 at r5332
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5333 at r5333
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5334 at r5334
  have hrung197 (bit : Bool) (hbit : rho 1180 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX197 rho : F), (dtkAccY197 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4813 : F), (rho 4814 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX197 rho : F), (dtkAccY197 rho : F)⟩
        ⟨(rho 4813 : F), (rho 4814 : F)⟩
        ⟨(dtkAccX198 rho : F), (dtkAccY198 rho : F)⟩
        ⟨(rho 4827 : F), (rho 4828 : F)⟩ := by
    have hnextx : dtkAccX198 rho = dtkAccX197 rho + rho 4822 := by
      unfold dtkAccX198 dtkAccX197
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 47]
      ring
    have hnexty : dtkAccY198 rho = dtkAccY197 rho + rho 4823 := by
      unfold dtkAccY198 dtkAccY197
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4165 14 47]
      ring
    have hsum : dtkAccX197 rho + dtkAccY197 rho = rho 4815 := by
      unfold dtkAccX197 dtkAccY197
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 150] at r5321
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_add rho 4164 14 1 46, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 4164 14]
      linear_combination r5321
    have ha0 : (rho 4813 + rho 4814) * (dtkAccX197 rho + dtkAccY197 rho) = rho 4816 := by
      rw [hsum]
      linear_combination r5322
    have ha1 : rho 4814 * dtkAccX197 rho = rho 4817 := by
      unfold dtkAccX197
      linear_combination r5323
    have ha2 : rho 4813 * dtkAccY197 rho = rho 4818 := by
      unfold dtkAccY197
      linear_combination r5324
    have ha3 : 3021 * rho 4817 * rho 4818 = rho 4819 := by
      linear_combination r5325
    have ha4 : rho 4820 * (1 + rho 4819) = rho 4817 + rho 4818 := by
      linear_combination r5326
    have ha5 : rho 4821 * (1 - rho 4819) = rho 4816 - rho 4817 - rho 4818 := by
      linear_combination r5327
    have haddx :
        rho 4820 * (1 + 3021 * (rho 4814 * dtkAccX197 rho) * (rho 4813 * dtkAccY197 rho)) =
          rho 4814 * dtkAccX197 rho + rho 4813 * dtkAccY197 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4821 * (1 - 3021 * (rho 4814 * dtkAccX197 rho) * (rho 4813 * dtkAccY197 rho)) =
          (-1) * (rho 4814 * dtkAccX197 rho) - rho 4813 * dtkAccY197 rho +
            (dtkAccY197 rho - dtkAccX197 rho * (-1)) * (rho 4813 + rho 4814) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4821 * (1 - rho 4819) = rho 4816 - rho 4817 - rho 4818 := ha5
        _ = (-1) * rho 4817 - rho 4818 + (dtkAccY197 rho - dtkAccX197 rho * (-1)) * (rho 4813 + rho 4814) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX198 rho = dtkAccX197 rho - Bool.toZMod bit * (dtkAccX197 rho - rho 4820) := by
      have hd : rho 4822 = Bool.toZMod bit * (rho 4820 - dtkAccX197 rho) := by
        rw [← hbit]
        unfold dtkAccX197
        linear_combination -r5328
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY198 rho = dtkAccY197 rho - Bool.toZMod bit * (dtkAccY197 rho - rho 4821) := by
      have hd : rho 4823 = Bool.toZMod bit * (rho 4821 - dtkAccY197 rho) := by
        rw [← hbit]
        unfold dtkAccY197
        linear_combination -r5329
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4813 * rho 4814 = rho 4824 := by linear_combination r5330
    have hd1 : rho 4813 * rho 4813 = rho 4825 := by linear_combination r5331
    have hd2 : rho 4814 * rho 4814 = rho 4826 := by linear_combination r5332
    have hd3 : rho 4827 * (rho 4814 * rho 4814 + rho 4813 * rho 4813 * (-1)) = 2 * (rho 4813 * rho 4814) := by
      rw [hd0, hd1, hd2]
      linear_combination r5333
    have hd4 : rho 4828 * (2 - (rho 4814 * rho 4814 + rho 4813 * rho 4813 * (-1))) = rho 4814 * rho 4814 - rho 4813 * rho 4813 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5334
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX197 rho : F), (dtkAccY197 rho : F)⟩
      ⟨(rho 4813 : F), (rho 4814 : F)⟩
      ⟨(rho 4820 : F), (rho 4821 : F)⟩
      ⟨(dtkAccX198 rho : F), (dtkAccY198 rho : F)⟩
      ⟨(rho 4827 : F), (rho 4828 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung197

theorem dtk_hstep_c32 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (983 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 192 ≤ i → i < 198 →
      EdwardsBridge.onCurve (dtkLadderAccState rho i) →
      EdwardsBridge.onCurve (dtkLadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (dtkLadderAccState rho i) (dtkLadderCurState rho i)
        (dtkLadderAccState rho (i + 1)) (dtkLadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact dtk_rung192 rho h bits[192]! (hbitAt 192 (by omega)) hacc hcur
  · exact dtk_rung193 rho h bits[193]! (hbitAt 193 (by omega)) hacc hcur
  · exact dtk_rung194 rho h bits[194]! (hbitAt 194 (by omega)) hacc hcur
  · exact dtk_rung195 rho h bits[195]! (hbitAt 195 (by omega)) hacc hcur
  · exact dtk_rung196 rho h bits[196]! (hbitAt 196 (by omega)) hacc hcur
  · exact dtk_rung197 rho h bits[197]! (hbitAt 197 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport
