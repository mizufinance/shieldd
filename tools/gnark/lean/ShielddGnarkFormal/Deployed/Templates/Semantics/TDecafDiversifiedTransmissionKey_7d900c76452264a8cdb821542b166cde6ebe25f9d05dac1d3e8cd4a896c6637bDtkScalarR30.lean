import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDtkScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs

theorem dtk_rows180 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5083 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5084 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5085 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5086 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5087 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5088 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5089 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5090 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5091 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5092 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5093 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5094 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5095 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5096 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p63, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart63 at p63
  rcases p63 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5083, r5084, r5085, r5086, r5087, r5088, r5089, r5090, r5091, r5092, r5093, r5094, r5095, r5096, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5083, r5084, r5085, r5086, r5087, r5088, r5089, r5090, r5091, r5092, r5093, r5094, r5095, r5096⟩

theorem dtk_rung180 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1163 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX180 rho : F), (dtkAccY180 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4575 : F), (rho 4576 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX180 rho : F), (dtkAccY180 rho : F)⟩
        ⟨(rho 4575 : F), (rho 4576 : F)⟩
        ⟨(dtkAccX181 rho : F), (dtkAccY181 rho : F)⟩
        ⟨(rho 4589 : F), (rho 4590 : F)⟩ := by
  obtain ⟨r5083, r5084, r5085, r5086, r5087, r5088, r5089, r5090, r5091, r5092, r5093, r5094, r5095, r5096⟩ := dtk_rows180 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5083 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc986 at r5083
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5083
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5084 at r5084
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5085 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc987 at r5085
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5085
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5086 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc988 at r5086
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5086
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5087 at r5087
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5088 at r5088
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5089 at r5089
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5090 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc989 at r5090
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5090
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5091 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc990 at r5091
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5091
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5092 at r5092
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5093 at r5093
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5094 at r5094
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5095 at r5095
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5096 at r5096
  have hrung180 (bit : Bool) (hbit : rho 1163 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX180 rho : F), (dtkAccY180 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4575 : F), (rho 4576 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX180 rho : F), (dtkAccY180 rho : F)⟩
        ⟨(rho 4575 : F), (rho 4576 : F)⟩
        ⟨(dtkAccX181 rho : F), (dtkAccY181 rho : F)⟩
        ⟨(rho 4589 : F), (rho 4590 : F)⟩ := by
    have hnextx : dtkAccX181 rho = dtkAccX180 rho + rho 4584 := by
      unfold dtkAccX181 dtkAccX180
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 30]
      ring
    have hnexty : dtkAccY181 rho = dtkAccY180 rho + rho 4585 := by
      unfold dtkAccY181 dtkAccY180
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4165 14 30]
      ring
    have hsum : dtkAccX180 rho + dtkAccY180 rho = rho 4577 := by
      unfold dtkAccX180 dtkAccY180
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 150] at r5083
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_add rho 4164 14 1 29, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 4164 14]
      linear_combination r5083
    have ha0 : (rho 4575 + rho 4576) * (dtkAccX180 rho + dtkAccY180 rho) = rho 4578 := by
      rw [hsum]
      linear_combination r5084
    have ha1 : rho 4576 * dtkAccX180 rho = rho 4579 := by
      unfold dtkAccX180
      linear_combination r5085
    have ha2 : rho 4575 * dtkAccY180 rho = rho 4580 := by
      unfold dtkAccY180
      linear_combination r5086
    have ha3 : 3021 * rho 4579 * rho 4580 = rho 4581 := by
      linear_combination r5087
    have ha4 : rho 4582 * (1 + rho 4581) = rho 4579 + rho 4580 := by
      linear_combination r5088
    have ha5 : rho 4583 * (1 - rho 4581) = rho 4578 - rho 4579 - rho 4580 := by
      linear_combination r5089
    have haddx :
        rho 4582 * (1 + 3021 * (rho 4576 * dtkAccX180 rho) * (rho 4575 * dtkAccY180 rho)) =
          rho 4576 * dtkAccX180 rho + rho 4575 * dtkAccY180 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4583 * (1 - 3021 * (rho 4576 * dtkAccX180 rho) * (rho 4575 * dtkAccY180 rho)) =
          (-1) * (rho 4576 * dtkAccX180 rho) - rho 4575 * dtkAccY180 rho +
            (dtkAccY180 rho - dtkAccX180 rho * (-1)) * (rho 4575 + rho 4576) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4583 * (1 - rho 4581) = rho 4578 - rho 4579 - rho 4580 := ha5
        _ = (-1) * rho 4579 - rho 4580 + (dtkAccY180 rho - dtkAccX180 rho * (-1)) * (rho 4575 + rho 4576) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX181 rho = dtkAccX180 rho - Bool.toZMod bit * (dtkAccX180 rho - rho 4582) := by
      have hd : rho 4584 = Bool.toZMod bit * (rho 4582 - dtkAccX180 rho) := by
        rw [← hbit]
        unfold dtkAccX180
        linear_combination -r5090
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY181 rho = dtkAccY180 rho - Bool.toZMod bit * (dtkAccY180 rho - rho 4583) := by
      have hd : rho 4585 = Bool.toZMod bit * (rho 4583 - dtkAccY180 rho) := by
        rw [← hbit]
        unfold dtkAccY180
        linear_combination -r5091
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4575 * rho 4576 = rho 4586 := by linear_combination r5092
    have hd1 : rho 4575 * rho 4575 = rho 4587 := by linear_combination r5093
    have hd2 : rho 4576 * rho 4576 = rho 4588 := by linear_combination r5094
    have hd3 : rho 4589 * (rho 4576 * rho 4576 + rho 4575 * rho 4575 * (-1)) = 2 * (rho 4575 * rho 4576) := by
      rw [hd0, hd1, hd2]
      linear_combination r5095
    have hd4 : rho 4590 * (2 - (rho 4576 * rho 4576 + rho 4575 * rho 4575 * (-1))) = rho 4576 * rho 4576 - rho 4575 * rho 4575 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5096
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX180 rho : F), (dtkAccY180 rho : F)⟩
      ⟨(rho 4575 : F), (rho 4576 : F)⟩
      ⟨(rho 4582 : F), (rho 4583 : F)⟩
      ⟨(dtkAccX181 rho : F), (dtkAccY181 rho : F)⟩
      ⟨(rho 4589 : F), (rho 4590 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung180

theorem dtk_rows181 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5097 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5098 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5099 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5100 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5101 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5102 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5103 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5104 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5105 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5106 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5107 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5108 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5109 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5110 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p63, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart63 at p63
  rcases p63 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5097, r5098, r5099, r5100, r5101, r5102, r5103, r5104, r5105, r5106, r5107, r5108, r5109, r5110, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5097, r5098, r5099, r5100, r5101, r5102, r5103, r5104, r5105, r5106, r5107, r5108, r5109, r5110⟩

theorem dtk_rung181 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1164 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX181 rho : F), (dtkAccY181 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4589 : F), (rho 4590 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX181 rho : F), (dtkAccY181 rho : F)⟩
        ⟨(rho 4589 : F), (rho 4590 : F)⟩
        ⟨(dtkAccX182 rho : F), (dtkAccY182 rho : F)⟩
        ⟨(rho 4603 : F), (rho 4604 : F)⟩ := by
  obtain ⟨r5097, r5098, r5099, r5100, r5101, r5102, r5103, r5104, r5105, r5106, r5107, r5108, r5109, r5110⟩ := dtk_rows181 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5097 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc991 at r5097
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5097
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5098 at r5098
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5099 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc992 at r5099
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5099
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5100 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc993 at r5100
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5100
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5101 at r5101
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5102 at r5102
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5103 at r5103
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5104 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc994 at r5104
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5104
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5105 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc995 at r5105
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5105
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5106 at r5106
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5107 at r5107
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5108 at r5108
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5109 at r5109
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5110 at r5110
  have hrung181 (bit : Bool) (hbit : rho 1164 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX181 rho : F), (dtkAccY181 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4589 : F), (rho 4590 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX181 rho : F), (dtkAccY181 rho : F)⟩
        ⟨(rho 4589 : F), (rho 4590 : F)⟩
        ⟨(dtkAccX182 rho : F), (dtkAccY182 rho : F)⟩
        ⟨(rho 4603 : F), (rho 4604 : F)⟩ := by
    have hnextx : dtkAccX182 rho = dtkAccX181 rho + rho 4598 := by
      unfold dtkAccX182 dtkAccX181
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 31]
      ring
    have hnexty : dtkAccY182 rho = dtkAccY181 rho + rho 4599 := by
      unfold dtkAccY182 dtkAccY181
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4165 14 31]
      ring
    have hsum : dtkAccX181 rho + dtkAccY181 rho = rho 4591 := by
      unfold dtkAccX181 dtkAccY181
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 150] at r5097
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_add rho 4164 14 1 30, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 4164 14]
      linear_combination r5097
    have ha0 : (rho 4589 + rho 4590) * (dtkAccX181 rho + dtkAccY181 rho) = rho 4592 := by
      rw [hsum]
      linear_combination r5098
    have ha1 : rho 4590 * dtkAccX181 rho = rho 4593 := by
      unfold dtkAccX181
      linear_combination r5099
    have ha2 : rho 4589 * dtkAccY181 rho = rho 4594 := by
      unfold dtkAccY181
      linear_combination r5100
    have ha3 : 3021 * rho 4593 * rho 4594 = rho 4595 := by
      linear_combination r5101
    have ha4 : rho 4596 * (1 + rho 4595) = rho 4593 + rho 4594 := by
      linear_combination r5102
    have ha5 : rho 4597 * (1 - rho 4595) = rho 4592 - rho 4593 - rho 4594 := by
      linear_combination r5103
    have haddx :
        rho 4596 * (1 + 3021 * (rho 4590 * dtkAccX181 rho) * (rho 4589 * dtkAccY181 rho)) =
          rho 4590 * dtkAccX181 rho + rho 4589 * dtkAccY181 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4597 * (1 - 3021 * (rho 4590 * dtkAccX181 rho) * (rho 4589 * dtkAccY181 rho)) =
          (-1) * (rho 4590 * dtkAccX181 rho) - rho 4589 * dtkAccY181 rho +
            (dtkAccY181 rho - dtkAccX181 rho * (-1)) * (rho 4589 + rho 4590) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4597 * (1 - rho 4595) = rho 4592 - rho 4593 - rho 4594 := ha5
        _ = (-1) * rho 4593 - rho 4594 + (dtkAccY181 rho - dtkAccX181 rho * (-1)) * (rho 4589 + rho 4590) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX182 rho = dtkAccX181 rho - Bool.toZMod bit * (dtkAccX181 rho - rho 4596) := by
      have hd : rho 4598 = Bool.toZMod bit * (rho 4596 - dtkAccX181 rho) := by
        rw [← hbit]
        unfold dtkAccX181
        linear_combination -r5104
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY182 rho = dtkAccY181 rho - Bool.toZMod bit * (dtkAccY181 rho - rho 4597) := by
      have hd : rho 4599 = Bool.toZMod bit * (rho 4597 - dtkAccY181 rho) := by
        rw [← hbit]
        unfold dtkAccY181
        linear_combination -r5105
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4589 * rho 4590 = rho 4600 := by linear_combination r5106
    have hd1 : rho 4589 * rho 4589 = rho 4601 := by linear_combination r5107
    have hd2 : rho 4590 * rho 4590 = rho 4602 := by linear_combination r5108
    have hd3 : rho 4603 * (rho 4590 * rho 4590 + rho 4589 * rho 4589 * (-1)) = 2 * (rho 4589 * rho 4590) := by
      rw [hd0, hd1, hd2]
      linear_combination r5109
    have hd4 : rho 4604 * (2 - (rho 4590 * rho 4590 + rho 4589 * rho 4589 * (-1))) = rho 4590 * rho 4590 - rho 4589 * rho 4589 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5110
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX181 rho : F), (dtkAccY181 rho : F)⟩
      ⟨(rho 4589 : F), (rho 4590 : F)⟩
      ⟨(rho 4596 : F), (rho 4597 : F)⟩
      ⟨(dtkAccX182 rho : F), (dtkAccY182 rho : F)⟩
      ⟨(rho 4603 : F), (rho 4604 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung181

theorem dtk_rows182 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5111 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5112 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5113 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5114 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5115 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5116 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5117 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5118 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5119 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5120 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5121 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5122 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5123 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5124 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p63, p64, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart63 at p63
  rcases p63 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5111, r5112, r5113, r5114, r5115, r5116, r5117, r5118, r5119⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart64 at p64
  rcases p64 with ⟨r5120, r5121, r5122, r5123, r5124, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5111, r5112, r5113, r5114, r5115, r5116, r5117, r5118, r5119, r5120, r5121, r5122, r5123, r5124⟩

theorem dtk_rung182 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1165 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX182 rho : F), (dtkAccY182 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4603 : F), (rho 4604 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX182 rho : F), (dtkAccY182 rho : F)⟩
        ⟨(rho 4603 : F), (rho 4604 : F)⟩
        ⟨(dtkAccX183 rho : F), (dtkAccY183 rho : F)⟩
        ⟨(rho 4617 : F), (rho 4618 : F)⟩ := by
  obtain ⟨r5111, r5112, r5113, r5114, r5115, r5116, r5117, r5118, r5119, r5120, r5121, r5122, r5123, r5124⟩ := dtk_rows182 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5111 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc996 at r5111
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5111
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5112 at r5112
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5113 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc997 at r5113
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5113
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5114 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc998 at r5114
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5114
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5115 at r5115
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5116 at r5116
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5117 at r5117
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5118 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc999 at r5118
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5118
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5119 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1000 at r5119
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5119
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5120 at r5120
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5121 at r5121
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5122 at r5122
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5123 at r5123
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5124 at r5124
  have hrung182 (bit : Bool) (hbit : rho 1165 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX182 rho : F), (dtkAccY182 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4603 : F), (rho 4604 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX182 rho : F), (dtkAccY182 rho : F)⟩
        ⟨(rho 4603 : F), (rho 4604 : F)⟩
        ⟨(dtkAccX183 rho : F), (dtkAccY183 rho : F)⟩
        ⟨(rho 4617 : F), (rho 4618 : F)⟩ := by
    have hnextx : dtkAccX183 rho = dtkAccX182 rho + rho 4612 := by
      unfold dtkAccX183 dtkAccX182
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 32]
      ring
    have hnexty : dtkAccY183 rho = dtkAccY182 rho + rho 4613 := by
      unfold dtkAccY183 dtkAccY182
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4165 14 32]
      ring
    have hsum : dtkAccX182 rho + dtkAccY182 rho = rho 4605 := by
      unfold dtkAccX182 dtkAccY182
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 150] at r5111
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_add rho 4164 14 1 31, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 4164 14]
      linear_combination r5111
    have ha0 : (rho 4603 + rho 4604) * (dtkAccX182 rho + dtkAccY182 rho) = rho 4606 := by
      rw [hsum]
      linear_combination r5112
    have ha1 : rho 4604 * dtkAccX182 rho = rho 4607 := by
      unfold dtkAccX182
      linear_combination r5113
    have ha2 : rho 4603 * dtkAccY182 rho = rho 4608 := by
      unfold dtkAccY182
      linear_combination r5114
    have ha3 : 3021 * rho 4607 * rho 4608 = rho 4609 := by
      linear_combination r5115
    have ha4 : rho 4610 * (1 + rho 4609) = rho 4607 + rho 4608 := by
      linear_combination r5116
    have ha5 : rho 4611 * (1 - rho 4609) = rho 4606 - rho 4607 - rho 4608 := by
      linear_combination r5117
    have haddx :
        rho 4610 * (1 + 3021 * (rho 4604 * dtkAccX182 rho) * (rho 4603 * dtkAccY182 rho)) =
          rho 4604 * dtkAccX182 rho + rho 4603 * dtkAccY182 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4611 * (1 - 3021 * (rho 4604 * dtkAccX182 rho) * (rho 4603 * dtkAccY182 rho)) =
          (-1) * (rho 4604 * dtkAccX182 rho) - rho 4603 * dtkAccY182 rho +
            (dtkAccY182 rho - dtkAccX182 rho * (-1)) * (rho 4603 + rho 4604) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4611 * (1 - rho 4609) = rho 4606 - rho 4607 - rho 4608 := ha5
        _ = (-1) * rho 4607 - rho 4608 + (dtkAccY182 rho - dtkAccX182 rho * (-1)) * (rho 4603 + rho 4604) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX183 rho = dtkAccX182 rho - Bool.toZMod bit * (dtkAccX182 rho - rho 4610) := by
      have hd : rho 4612 = Bool.toZMod bit * (rho 4610 - dtkAccX182 rho) := by
        rw [← hbit]
        unfold dtkAccX182
        linear_combination -r5118
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY183 rho = dtkAccY182 rho - Bool.toZMod bit * (dtkAccY182 rho - rho 4611) := by
      have hd : rho 4613 = Bool.toZMod bit * (rho 4611 - dtkAccY182 rho) := by
        rw [← hbit]
        unfold dtkAccY182
        linear_combination -r5119
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4603 * rho 4604 = rho 4614 := by linear_combination r5120
    have hd1 : rho 4603 * rho 4603 = rho 4615 := by linear_combination r5121
    have hd2 : rho 4604 * rho 4604 = rho 4616 := by linear_combination r5122
    have hd3 : rho 4617 * (rho 4604 * rho 4604 + rho 4603 * rho 4603 * (-1)) = 2 * (rho 4603 * rho 4604) := by
      rw [hd0, hd1, hd2]
      linear_combination r5123
    have hd4 : rho 4618 * (2 - (rho 4604 * rho 4604 + rho 4603 * rho 4603 * (-1))) = rho 4604 * rho 4604 - rho 4603 * rho 4603 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5124
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX182 rho : F), (dtkAccY182 rho : F)⟩
      ⟨(rho 4603 : F), (rho 4604 : F)⟩
      ⟨(rho 4610 : F), (rho 4611 : F)⟩
      ⟨(dtkAccX183 rho : F), (dtkAccY183 rho : F)⟩
      ⟨(rho 4617 : F), (rho 4618 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung182

theorem dtk_rows183 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5125 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5126 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5127 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5128 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5129 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5130 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5131 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5132 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5133 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5134 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5135 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5136 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5137 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5138 rho := by
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
  rcases p64 with ⟨_, _, _, _, _, r5125, r5126, r5127, r5128, r5129, r5130, r5131, r5132, r5133, r5134, r5135, r5136, r5137, r5138, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5125, r5126, r5127, r5128, r5129, r5130, r5131, r5132, r5133, r5134, r5135, r5136, r5137, r5138⟩

theorem dtk_rung183 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1166 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX183 rho : F), (dtkAccY183 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4617 : F), (rho 4618 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX183 rho : F), (dtkAccY183 rho : F)⟩
        ⟨(rho 4617 : F), (rho 4618 : F)⟩
        ⟨(dtkAccX184 rho : F), (dtkAccY184 rho : F)⟩
        ⟨(rho 4631 : F), (rho 4632 : F)⟩ := by
  obtain ⟨r5125, r5126, r5127, r5128, r5129, r5130, r5131, r5132, r5133, r5134, r5135, r5136, r5137, r5138⟩ := dtk_rows183 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5125 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1001 at r5125
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5125
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5126 at r5126
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5127 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1002 at r5127
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5127
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5128 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1003 at r5128
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5128
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5129 at r5129
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5130 at r5130
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5131 at r5131
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5132 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1004 at r5132
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5132
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5133 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1005 at r5133
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5133
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5134 at r5134
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5135 at r5135
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5136 at r5136
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5137 at r5137
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5138 at r5138
  have hrung183 (bit : Bool) (hbit : rho 1166 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX183 rho : F), (dtkAccY183 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4617 : F), (rho 4618 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX183 rho : F), (dtkAccY183 rho : F)⟩
        ⟨(rho 4617 : F), (rho 4618 : F)⟩
        ⟨(dtkAccX184 rho : F), (dtkAccY184 rho : F)⟩
        ⟨(rho 4631 : F), (rho 4632 : F)⟩ := by
    have hnextx : dtkAccX184 rho = dtkAccX183 rho + rho 4626 := by
      unfold dtkAccX184 dtkAccX183
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 33]
      ring
    have hnexty : dtkAccY184 rho = dtkAccY183 rho + rho 4627 := by
      unfold dtkAccY184 dtkAccY183
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4165 14 33]
      ring
    have hsum : dtkAccX183 rho + dtkAccY183 rho = rho 4619 := by
      unfold dtkAccX183 dtkAccY183
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 150] at r5125
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_add rho 4164 14 1 32, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 4164 14]
      linear_combination r5125
    have ha0 : (rho 4617 + rho 4618) * (dtkAccX183 rho + dtkAccY183 rho) = rho 4620 := by
      rw [hsum]
      linear_combination r5126
    have ha1 : rho 4618 * dtkAccX183 rho = rho 4621 := by
      unfold dtkAccX183
      linear_combination r5127
    have ha2 : rho 4617 * dtkAccY183 rho = rho 4622 := by
      unfold dtkAccY183
      linear_combination r5128
    have ha3 : 3021 * rho 4621 * rho 4622 = rho 4623 := by
      linear_combination r5129
    have ha4 : rho 4624 * (1 + rho 4623) = rho 4621 + rho 4622 := by
      linear_combination r5130
    have ha5 : rho 4625 * (1 - rho 4623) = rho 4620 - rho 4621 - rho 4622 := by
      linear_combination r5131
    have haddx :
        rho 4624 * (1 + 3021 * (rho 4618 * dtkAccX183 rho) * (rho 4617 * dtkAccY183 rho)) =
          rho 4618 * dtkAccX183 rho + rho 4617 * dtkAccY183 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4625 * (1 - 3021 * (rho 4618 * dtkAccX183 rho) * (rho 4617 * dtkAccY183 rho)) =
          (-1) * (rho 4618 * dtkAccX183 rho) - rho 4617 * dtkAccY183 rho +
            (dtkAccY183 rho - dtkAccX183 rho * (-1)) * (rho 4617 + rho 4618) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4625 * (1 - rho 4623) = rho 4620 - rho 4621 - rho 4622 := ha5
        _ = (-1) * rho 4621 - rho 4622 + (dtkAccY183 rho - dtkAccX183 rho * (-1)) * (rho 4617 + rho 4618) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX184 rho = dtkAccX183 rho - Bool.toZMod bit * (dtkAccX183 rho - rho 4624) := by
      have hd : rho 4626 = Bool.toZMod bit * (rho 4624 - dtkAccX183 rho) := by
        rw [← hbit]
        unfold dtkAccX183
        linear_combination -r5132
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY184 rho = dtkAccY183 rho - Bool.toZMod bit * (dtkAccY183 rho - rho 4625) := by
      have hd : rho 4627 = Bool.toZMod bit * (rho 4625 - dtkAccY183 rho) := by
        rw [← hbit]
        unfold dtkAccY183
        linear_combination -r5133
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4617 * rho 4618 = rho 4628 := by linear_combination r5134
    have hd1 : rho 4617 * rho 4617 = rho 4629 := by linear_combination r5135
    have hd2 : rho 4618 * rho 4618 = rho 4630 := by linear_combination r5136
    have hd3 : rho 4631 * (rho 4618 * rho 4618 + rho 4617 * rho 4617 * (-1)) = 2 * (rho 4617 * rho 4618) := by
      rw [hd0, hd1, hd2]
      linear_combination r5137
    have hd4 : rho 4632 * (2 - (rho 4618 * rho 4618 + rho 4617 * rho 4617 * (-1))) = rho 4618 * rho 4618 - rho 4617 * rho 4617 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5138
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX183 rho : F), (dtkAccY183 rho : F)⟩
      ⟨(rho 4617 : F), (rho 4618 : F)⟩
      ⟨(rho 4624 : F), (rho 4625 : F)⟩
      ⟨(dtkAccX184 rho : F), (dtkAccY184 rho : F)⟩
      ⟨(rho 4631 : F), (rho 4632 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung183

theorem dtk_rows184 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5139 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5140 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5141 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5142 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5143 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5144 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5145 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5146 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5147 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5148 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5149 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5150 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5151 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5152 rho := by
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
  rcases p64 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5139, r5140, r5141, r5142, r5143, r5144, r5145, r5146, r5147, r5148, r5149, r5150, r5151, r5152, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5139, r5140, r5141, r5142, r5143, r5144, r5145, r5146, r5147, r5148, r5149, r5150, r5151, r5152⟩

theorem dtk_rung184 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1167 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX184 rho : F), (dtkAccY184 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4631 : F), (rho 4632 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX184 rho : F), (dtkAccY184 rho : F)⟩
        ⟨(rho 4631 : F), (rho 4632 : F)⟩
        ⟨(dtkAccX185 rho : F), (dtkAccY185 rho : F)⟩
        ⟨(rho 4645 : F), (rho 4646 : F)⟩ := by
  obtain ⟨r5139, r5140, r5141, r5142, r5143, r5144, r5145, r5146, r5147, r5148, r5149, r5150, r5151, r5152⟩ := dtk_rows184 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5139 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1006 at r5139
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5139
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5140 at r5140
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5141 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1007 at r5141
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5141
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5142 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1008 at r5142
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5142
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5143 at r5143
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5144 at r5144
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5145 at r5145
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5146 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1009 at r5146
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5146
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5147 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1010 at r5147
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5147
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5148 at r5148
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5149 at r5149
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5150 at r5150
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5151 at r5151
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5152 at r5152
  have hrung184 (bit : Bool) (hbit : rho 1167 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX184 rho : F), (dtkAccY184 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4631 : F), (rho 4632 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX184 rho : F), (dtkAccY184 rho : F)⟩
        ⟨(rho 4631 : F), (rho 4632 : F)⟩
        ⟨(dtkAccX185 rho : F), (dtkAccY185 rho : F)⟩
        ⟨(rho 4645 : F), (rho 4646 : F)⟩ := by
    have hnextx : dtkAccX185 rho = dtkAccX184 rho + rho 4640 := by
      unfold dtkAccX185 dtkAccX184
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 34]
      ring
    have hnexty : dtkAccY185 rho = dtkAccY184 rho + rho 4641 := by
      unfold dtkAccY185 dtkAccY184
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4165 14 34]
      ring
    have hsum : dtkAccX184 rho + dtkAccY184 rho = rho 4633 := by
      unfold dtkAccX184 dtkAccY184
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 150] at r5139
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_add rho 4164 14 1 33, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 4164 14]
      linear_combination r5139
    have ha0 : (rho 4631 + rho 4632) * (dtkAccX184 rho + dtkAccY184 rho) = rho 4634 := by
      rw [hsum]
      linear_combination r5140
    have ha1 : rho 4632 * dtkAccX184 rho = rho 4635 := by
      unfold dtkAccX184
      linear_combination r5141
    have ha2 : rho 4631 * dtkAccY184 rho = rho 4636 := by
      unfold dtkAccY184
      linear_combination r5142
    have ha3 : 3021 * rho 4635 * rho 4636 = rho 4637 := by
      linear_combination r5143
    have ha4 : rho 4638 * (1 + rho 4637) = rho 4635 + rho 4636 := by
      linear_combination r5144
    have ha5 : rho 4639 * (1 - rho 4637) = rho 4634 - rho 4635 - rho 4636 := by
      linear_combination r5145
    have haddx :
        rho 4638 * (1 + 3021 * (rho 4632 * dtkAccX184 rho) * (rho 4631 * dtkAccY184 rho)) =
          rho 4632 * dtkAccX184 rho + rho 4631 * dtkAccY184 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4639 * (1 - 3021 * (rho 4632 * dtkAccX184 rho) * (rho 4631 * dtkAccY184 rho)) =
          (-1) * (rho 4632 * dtkAccX184 rho) - rho 4631 * dtkAccY184 rho +
            (dtkAccY184 rho - dtkAccX184 rho * (-1)) * (rho 4631 + rho 4632) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4639 * (1 - rho 4637) = rho 4634 - rho 4635 - rho 4636 := ha5
        _ = (-1) * rho 4635 - rho 4636 + (dtkAccY184 rho - dtkAccX184 rho * (-1)) * (rho 4631 + rho 4632) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX185 rho = dtkAccX184 rho - Bool.toZMod bit * (dtkAccX184 rho - rho 4638) := by
      have hd : rho 4640 = Bool.toZMod bit * (rho 4638 - dtkAccX184 rho) := by
        rw [← hbit]
        unfold dtkAccX184
        linear_combination -r5146
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY185 rho = dtkAccY184 rho - Bool.toZMod bit * (dtkAccY184 rho - rho 4639) := by
      have hd : rho 4641 = Bool.toZMod bit * (rho 4639 - dtkAccY184 rho) := by
        rw [← hbit]
        unfold dtkAccY184
        linear_combination -r5147
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4631 * rho 4632 = rho 4642 := by linear_combination r5148
    have hd1 : rho 4631 * rho 4631 = rho 4643 := by linear_combination r5149
    have hd2 : rho 4632 * rho 4632 = rho 4644 := by linear_combination r5150
    have hd3 : rho 4645 * (rho 4632 * rho 4632 + rho 4631 * rho 4631 * (-1)) = 2 * (rho 4631 * rho 4632) := by
      rw [hd0, hd1, hd2]
      linear_combination r5151
    have hd4 : rho 4646 * (2 - (rho 4632 * rho 4632 + rho 4631 * rho 4631 * (-1))) = rho 4632 * rho 4632 - rho 4631 * rho 4631 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5152
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX184 rho : F), (dtkAccY184 rho : F)⟩
      ⟨(rho 4631 : F), (rho 4632 : F)⟩
      ⟨(rho 4638 : F), (rho 4639 : F)⟩
      ⟨(dtkAccX185 rho : F), (dtkAccY185 rho : F)⟩
      ⟨(rho 4645 : F), (rho 4646 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung184

theorem dtk_rows185 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5153 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5154 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5155 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5156 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5157 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5158 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5159 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5160 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5161 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5162 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5163 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5164 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5165 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5166 rho := by
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
  rcases p64 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5153, r5154, r5155, r5156, r5157, r5158, r5159, r5160, r5161, r5162, r5163, r5164, r5165, r5166, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5153, r5154, r5155, r5156, r5157, r5158, r5159, r5160, r5161, r5162, r5163, r5164, r5165, r5166⟩

theorem dtk_rung185 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1168 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX185 rho : F), (dtkAccY185 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4645 : F), (rho 4646 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX185 rho : F), (dtkAccY185 rho : F)⟩
        ⟨(rho 4645 : F), (rho 4646 : F)⟩
        ⟨(dtkAccX186 rho : F), (dtkAccY186 rho : F)⟩
        ⟨(rho 4659 : F), (rho 4660 : F)⟩ := by
  obtain ⟨r5153, r5154, r5155, r5156, r5157, r5158, r5159, r5160, r5161, r5162, r5163, r5164, r5165, r5166⟩ := dtk_rows185 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5153 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1011 at r5153
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5153
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5154 at r5154
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5155 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1012 at r5155
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5155
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5156 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1013 at r5156
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5156
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5157 at r5157
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5158 at r5158
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5159 at r5159
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5160 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1014 at r5160
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5160
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5161 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1015 at r5161
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5161
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5162 at r5162
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5163 at r5163
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5164 at r5164
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5165 at r5165
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5166 at r5166
  have hrung185 (bit : Bool) (hbit : rho 1168 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX185 rho : F), (dtkAccY185 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4645 : F), (rho 4646 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX185 rho : F), (dtkAccY185 rho : F)⟩
        ⟨(rho 4645 : F), (rho 4646 : F)⟩
        ⟨(dtkAccX186 rho : F), (dtkAccY186 rho : F)⟩
        ⟨(rho 4659 : F), (rho 4660 : F)⟩ := by
    have hnextx : dtkAccX186 rho = dtkAccX185 rho + rho 4654 := by
      unfold dtkAccX186 dtkAccX185
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 35]
      ring
    have hnexty : dtkAccY186 rho = dtkAccY185 rho + rho 4655 := by
      unfold dtkAccY186 dtkAccY185
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4165 14 35]
      ring
    have hsum : dtkAccX185 rho + dtkAccY185 rho = rho 4647 := by
      unfold dtkAccX185 dtkAccY185
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 150] at r5153
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_add rho 4164 14 1 34, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 4164 14]
      linear_combination r5153
    have ha0 : (rho 4645 + rho 4646) * (dtkAccX185 rho + dtkAccY185 rho) = rho 4648 := by
      rw [hsum]
      linear_combination r5154
    have ha1 : rho 4646 * dtkAccX185 rho = rho 4649 := by
      unfold dtkAccX185
      linear_combination r5155
    have ha2 : rho 4645 * dtkAccY185 rho = rho 4650 := by
      unfold dtkAccY185
      linear_combination r5156
    have ha3 : 3021 * rho 4649 * rho 4650 = rho 4651 := by
      linear_combination r5157
    have ha4 : rho 4652 * (1 + rho 4651) = rho 4649 + rho 4650 := by
      linear_combination r5158
    have ha5 : rho 4653 * (1 - rho 4651) = rho 4648 - rho 4649 - rho 4650 := by
      linear_combination r5159
    have haddx :
        rho 4652 * (1 + 3021 * (rho 4646 * dtkAccX185 rho) * (rho 4645 * dtkAccY185 rho)) =
          rho 4646 * dtkAccX185 rho + rho 4645 * dtkAccY185 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4653 * (1 - 3021 * (rho 4646 * dtkAccX185 rho) * (rho 4645 * dtkAccY185 rho)) =
          (-1) * (rho 4646 * dtkAccX185 rho) - rho 4645 * dtkAccY185 rho +
            (dtkAccY185 rho - dtkAccX185 rho * (-1)) * (rho 4645 + rho 4646) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4653 * (1 - rho 4651) = rho 4648 - rho 4649 - rho 4650 := ha5
        _ = (-1) * rho 4649 - rho 4650 + (dtkAccY185 rho - dtkAccX185 rho * (-1)) * (rho 4645 + rho 4646) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX186 rho = dtkAccX185 rho - Bool.toZMod bit * (dtkAccX185 rho - rho 4652) := by
      have hd : rho 4654 = Bool.toZMod bit * (rho 4652 - dtkAccX185 rho) := by
        rw [← hbit]
        unfold dtkAccX185
        linear_combination -r5160
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY186 rho = dtkAccY185 rho - Bool.toZMod bit * (dtkAccY185 rho - rho 4653) := by
      have hd : rho 4655 = Bool.toZMod bit * (rho 4653 - dtkAccY185 rho) := by
        rw [← hbit]
        unfold dtkAccY185
        linear_combination -r5161
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4645 * rho 4646 = rho 4656 := by linear_combination r5162
    have hd1 : rho 4645 * rho 4645 = rho 4657 := by linear_combination r5163
    have hd2 : rho 4646 * rho 4646 = rho 4658 := by linear_combination r5164
    have hd3 : rho 4659 * (rho 4646 * rho 4646 + rho 4645 * rho 4645 * (-1)) = 2 * (rho 4645 * rho 4646) := by
      rw [hd0, hd1, hd2]
      linear_combination r5165
    have hd4 : rho 4660 * (2 - (rho 4646 * rho 4646 + rho 4645 * rho 4645 * (-1))) = rho 4646 * rho 4646 - rho 4645 * rho 4645 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5166
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX185 rho : F), (dtkAccY185 rho : F)⟩
      ⟨(rho 4645 : F), (rho 4646 : F)⟩
      ⟨(rho 4652 : F), (rho 4653 : F)⟩
      ⟨(dtkAccX186 rho : F), (dtkAccY186 rho : F)⟩
      ⟨(rho 4659 : F), (rho 4660 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung185

theorem dtk_hstep_c30 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (983 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 180 ≤ i → i < 186 →
      EdwardsBridge.onCurve (dtkLadderAccState rho i) →
      EdwardsBridge.onCurve (dtkLadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (dtkLadderAccState rho i) (dtkLadderCurState rho i)
        (dtkLadderAccState rho (i + 1)) (dtkLadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact dtk_rung180 rho h bits[180]! (hbitAt 180 (by omega)) hacc hcur
  · exact dtk_rung181 rho h bits[181]! (hbitAt 181 (by omega)) hacc hcur
  · exact dtk_rung182 rho h bits[182]! (hbitAt 182 (by omega)) hacc hcur
  · exact dtk_rung183 rho h bits[183]! (hbitAt 183 (by omega)) hacc hcur
  · exact dtk_rung184 rho h bits[184]! (hbitAt 184 (by omega)) hacc hcur
  · exact dtk_rung185 rho h bits[185]! (hbitAt 185 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport
