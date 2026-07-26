import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDtkScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs

theorem dtk_rows246 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6007 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6008 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6009 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6010 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6011 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6012 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6013 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6014 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6015 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6016 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6017 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6018 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6019 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6020 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p75
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart75 at p75
  rcases p75 with ⟨_, _, _, _, _, _, _, r6007, r6008, r6009, r6010, r6011, r6012, r6013, r6014, r6015, r6016, r6017, r6018, r6019, r6020, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r6007, r6008, r6009, r6010, r6011, r6012, r6013, r6014, r6015, r6016, r6017, r6018, r6019, r6020⟩

theorem dtk_rung246 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1229 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX246 rho : F), (dtkAccY246 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5499 : F), (rho 5500 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX246 rho : F), (dtkAccY246 rho : F)⟩
        ⟨(rho 5499 : F), (rho 5500 : F)⟩
        ⟨(dtkAccX247 rho : F), (dtkAccY247 rho : F)⟩
        ⟨(rho 5513 : F), (rho 5514 : F)⟩ := by
  obtain ⟨r6007, r6008, r6009, r6010, r6011, r6012, r6013, r6014, r6015, r6016, r6017, r6018, r6019, r6020⟩ := dtk_rows246 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6007 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1316 at r6007
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6007
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6008 at r6008
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6009 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1317 at r6009
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6009
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6010 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1318 at r6010
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6010
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6011 at r6011
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6012 at r6012
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6013 at r6013
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6014 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1319 at r6014
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6014
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6015 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1320 at r6015
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6015
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6016 at r6016
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6017 at r6017
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6018 at r6018
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6019 at r6019
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6020 at r6020
  have hrung246 (bit : Bool) (hbit : rho 1229 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX246 rho : F), (dtkAccY246 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5499 : F), (rho 5500 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX246 rho : F), (dtkAccY246 rho : F)⟩
        ⟨(rho 5499 : F), (rho 5500 : F)⟩
        ⟨(dtkAccX247 rho : F), (dtkAccY247 rho : F)⟩
        ⟨(rho 5513 : F), (rho 5514 : F)⟩ := by
    have hnextx : dtkAccX247 rho = dtkAccX246 rho + rho 5508 := by
      unfold dtkAccX247 dtkAccX246
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 96]
      ring
    have hnexty : dtkAccY247 rho = dtkAccY246 rho + rho 5509 := by
      unfold dtkAccY247 dtkAccY246
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4165 14 96]
      ring
    have hsum : dtkAccX246 rho + dtkAccY246 rho = rho 5501 := by
      unfold dtkAccX246 dtkAccY246
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 150] at r6007
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_add rho 4164 14 1 95, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 4164 14]
      linear_combination r6007
    have ha0 : (rho 5499 + rho 5500) * (dtkAccX246 rho + dtkAccY246 rho) = rho 5502 := by
      rw [hsum]
      linear_combination r6008
    have ha1 : rho 5500 * dtkAccX246 rho = rho 5503 := by
      unfold dtkAccX246
      linear_combination r6009
    have ha2 : rho 5499 * dtkAccY246 rho = rho 5504 := by
      unfold dtkAccY246
      linear_combination r6010
    have ha3 : 3021 * rho 5503 * rho 5504 = rho 5505 := by
      linear_combination r6011
    have ha4 : rho 5506 * (1 + rho 5505) = rho 5503 + rho 5504 := by
      linear_combination r6012
    have ha5 : rho 5507 * (1 - rho 5505) = rho 5502 - rho 5503 - rho 5504 := by
      linear_combination r6013
    have haddx :
        rho 5506 * (1 + 3021 * (rho 5500 * dtkAccX246 rho) * (rho 5499 * dtkAccY246 rho)) =
          rho 5500 * dtkAccX246 rho + rho 5499 * dtkAccY246 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5507 * (1 - 3021 * (rho 5500 * dtkAccX246 rho) * (rho 5499 * dtkAccY246 rho)) =
          (-1) * (rho 5500 * dtkAccX246 rho) - rho 5499 * dtkAccY246 rho +
            (dtkAccY246 rho - dtkAccX246 rho * (-1)) * (rho 5499 + rho 5500) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5507 * (1 - rho 5505) = rho 5502 - rho 5503 - rho 5504 := ha5
        _ = (-1) * rho 5503 - rho 5504 + (dtkAccY246 rho - dtkAccX246 rho * (-1)) * (rho 5499 + rho 5500) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX247 rho = dtkAccX246 rho - Bool.toZMod bit * (dtkAccX246 rho - rho 5506) := by
      have hd : rho 5508 = Bool.toZMod bit * (rho 5506 - dtkAccX246 rho) := by
        rw [← hbit]
        unfold dtkAccX246
        linear_combination -r6014
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY247 rho = dtkAccY246 rho - Bool.toZMod bit * (dtkAccY246 rho - rho 5507) := by
      have hd : rho 5509 = Bool.toZMod bit * (rho 5507 - dtkAccY246 rho) := by
        rw [← hbit]
        unfold dtkAccY246
        linear_combination -r6015
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5499 * rho 5500 = rho 5510 := by linear_combination r6016
    have hd1 : rho 5499 * rho 5499 = rho 5511 := by linear_combination r6017
    have hd2 : rho 5500 * rho 5500 = rho 5512 := by linear_combination r6018
    have hd3 : rho 5513 * (rho 5500 * rho 5500 + rho 5499 * rho 5499 * (-1)) = 2 * (rho 5499 * rho 5500) := by
      rw [hd0, hd1, hd2]
      linear_combination r6019
    have hd4 : rho 5514 * (2 - (rho 5500 * rho 5500 + rho 5499 * rho 5499 * (-1))) = rho 5500 * rho 5500 - rho 5499 * rho 5499 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6020
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX246 rho : F), (dtkAccY246 rho : F)⟩
      ⟨(rho 5499 : F), (rho 5500 : F)⟩
      ⟨(rho 5506 : F), (rho 5507 : F)⟩
      ⟨(dtkAccX247 rho : F), (dtkAccY247 rho : F)⟩
      ⟨(rho 5513 : F), (rho 5514 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung246

theorem dtk_rows247 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6021 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6022 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6023 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6024 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6025 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6026 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6027 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6028 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6029 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6030 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6031 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6032 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6033 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6034 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p75
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart75 at p75
  rcases p75 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6021, r6022, r6023, r6024, r6025, r6026, r6027, r6028, r6029, r6030, r6031, r6032, r6033, r6034, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r6021, r6022, r6023, r6024, r6025, r6026, r6027, r6028, r6029, r6030, r6031, r6032, r6033, r6034⟩

theorem dtk_rung247 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1230 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX247 rho : F), (dtkAccY247 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5513 : F), (rho 5514 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX247 rho : F), (dtkAccY247 rho : F)⟩
        ⟨(rho 5513 : F), (rho 5514 : F)⟩
        ⟨(dtkAccX248 rho : F), (dtkAccY248 rho : F)⟩
        ⟨(rho 5527 : F), (rho 5528 : F)⟩ := by
  obtain ⟨r6021, r6022, r6023, r6024, r6025, r6026, r6027, r6028, r6029, r6030, r6031, r6032, r6033, r6034⟩ := dtk_rows247 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6021 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1321 at r6021
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6021
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6022 at r6022
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6023 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1322 at r6023
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6023
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6024 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1323 at r6024
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6024
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6025 at r6025
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6026 at r6026
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6027 at r6027
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6028 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1324 at r6028
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6028
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6029 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1325 at r6029
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6029
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6030 at r6030
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6031 at r6031
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6032 at r6032
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6033 at r6033
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6034 at r6034
  have hrung247 (bit : Bool) (hbit : rho 1230 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX247 rho : F), (dtkAccY247 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5513 : F), (rho 5514 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX247 rho : F), (dtkAccY247 rho : F)⟩
        ⟨(rho 5513 : F), (rho 5514 : F)⟩
        ⟨(dtkAccX248 rho : F), (dtkAccY248 rho : F)⟩
        ⟨(rho 5527 : F), (rho 5528 : F)⟩ := by
    have hnextx : dtkAccX248 rho = dtkAccX247 rho + rho 5522 := by
      unfold dtkAccX248 dtkAccX247
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 97]
      ring
    have hnexty : dtkAccY248 rho = dtkAccY247 rho + rho 5523 := by
      unfold dtkAccY248 dtkAccY247
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4165 14 97]
      ring
    have hsum : dtkAccX247 rho + dtkAccY247 rho = rho 5515 := by
      unfold dtkAccX247 dtkAccY247
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 150] at r6021
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_add rho 4164 14 1 96, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 4164 14]
      linear_combination r6021
    have ha0 : (rho 5513 + rho 5514) * (dtkAccX247 rho + dtkAccY247 rho) = rho 5516 := by
      rw [hsum]
      linear_combination r6022
    have ha1 : rho 5514 * dtkAccX247 rho = rho 5517 := by
      unfold dtkAccX247
      linear_combination r6023
    have ha2 : rho 5513 * dtkAccY247 rho = rho 5518 := by
      unfold dtkAccY247
      linear_combination r6024
    have ha3 : 3021 * rho 5517 * rho 5518 = rho 5519 := by
      linear_combination r6025
    have ha4 : rho 5520 * (1 + rho 5519) = rho 5517 + rho 5518 := by
      linear_combination r6026
    have ha5 : rho 5521 * (1 - rho 5519) = rho 5516 - rho 5517 - rho 5518 := by
      linear_combination r6027
    have haddx :
        rho 5520 * (1 + 3021 * (rho 5514 * dtkAccX247 rho) * (rho 5513 * dtkAccY247 rho)) =
          rho 5514 * dtkAccX247 rho + rho 5513 * dtkAccY247 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5521 * (1 - 3021 * (rho 5514 * dtkAccX247 rho) * (rho 5513 * dtkAccY247 rho)) =
          (-1) * (rho 5514 * dtkAccX247 rho) - rho 5513 * dtkAccY247 rho +
            (dtkAccY247 rho - dtkAccX247 rho * (-1)) * (rho 5513 + rho 5514) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5521 * (1 - rho 5519) = rho 5516 - rho 5517 - rho 5518 := ha5
        _ = (-1) * rho 5517 - rho 5518 + (dtkAccY247 rho - dtkAccX247 rho * (-1)) * (rho 5513 + rho 5514) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX248 rho = dtkAccX247 rho - Bool.toZMod bit * (dtkAccX247 rho - rho 5520) := by
      have hd : rho 5522 = Bool.toZMod bit * (rho 5520 - dtkAccX247 rho) := by
        rw [← hbit]
        unfold dtkAccX247
        linear_combination -r6028
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY248 rho = dtkAccY247 rho - Bool.toZMod bit * (dtkAccY247 rho - rho 5521) := by
      have hd : rho 5523 = Bool.toZMod bit * (rho 5521 - dtkAccY247 rho) := by
        rw [← hbit]
        unfold dtkAccY247
        linear_combination -r6029
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5513 * rho 5514 = rho 5524 := by linear_combination r6030
    have hd1 : rho 5513 * rho 5513 = rho 5525 := by linear_combination r6031
    have hd2 : rho 5514 * rho 5514 = rho 5526 := by linear_combination r6032
    have hd3 : rho 5527 * (rho 5514 * rho 5514 + rho 5513 * rho 5513 * (-1)) = 2 * (rho 5513 * rho 5514) := by
      rw [hd0, hd1, hd2]
      linear_combination r6033
    have hd4 : rho 5528 * (2 - (rho 5514 * rho 5514 + rho 5513 * rho 5513 * (-1))) = rho 5514 * rho 5514 - rho 5513 * rho 5513 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6034
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX247 rho : F), (dtkAccY247 rho : F)⟩
      ⟨(rho 5513 : F), (rho 5514 : F)⟩
      ⟨(rho 5520 : F), (rho 5521 : F)⟩
      ⟨(dtkAccX248 rho : F), (dtkAccY248 rho : F)⟩
      ⟨(rho 5527 : F), (rho 5528 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung247

theorem dtk_rows248 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6035 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6036 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6037 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6038 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6039 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6040 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6041 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6042 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6043 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6044 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6045 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6046 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6047 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6048 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p75
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart75 at p75
  rcases p75 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6035, r6036, r6037, r6038, r6039, r6040, r6041, r6042, r6043, r6044, r6045, r6046, r6047, r6048, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r6035, r6036, r6037, r6038, r6039, r6040, r6041, r6042, r6043, r6044, r6045, r6046, r6047, r6048⟩

theorem dtk_rung248 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1231 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX248 rho : F), (dtkAccY248 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5527 : F), (rho 5528 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX248 rho : F), (dtkAccY248 rho : F)⟩
        ⟨(rho 5527 : F), (rho 5528 : F)⟩
        ⟨(dtkAccX249 rho : F), (dtkAccY249 rho : F)⟩
        ⟨(rho 5541 : F), (rho 5542 : F)⟩ := by
  obtain ⟨r6035, r6036, r6037, r6038, r6039, r6040, r6041, r6042, r6043, r6044, r6045, r6046, r6047, r6048⟩ := dtk_rows248 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6035 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1326 at r6035
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6035
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6036 at r6036
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6037 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1327 at r6037
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6037
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6038 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1328 at r6038
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6038
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6039 at r6039
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6040 at r6040
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6041 at r6041
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6042 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1329 at r6042
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6042
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6043 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1330 at r6043
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6043
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6044 at r6044
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6045 at r6045
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6046 at r6046
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6047 at r6047
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6048 at r6048
  have hrung248 (bit : Bool) (hbit : rho 1231 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX248 rho : F), (dtkAccY248 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5527 : F), (rho 5528 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX248 rho : F), (dtkAccY248 rho : F)⟩
        ⟨(rho 5527 : F), (rho 5528 : F)⟩
        ⟨(dtkAccX249 rho : F), (dtkAccY249 rho : F)⟩
        ⟨(rho 5541 : F), (rho 5542 : F)⟩ := by
    have hnextx : dtkAccX249 rho = dtkAccX248 rho + rho 5536 := by
      unfold dtkAccX249 dtkAccX248
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 98]
      ring
    have hnexty : dtkAccY249 rho = dtkAccY248 rho + rho 5537 := by
      unfold dtkAccY249 dtkAccY248
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4165 14 98]
      ring
    have hsum : dtkAccX248 rho + dtkAccY248 rho = rho 5529 := by
      unfold dtkAccX248 dtkAccY248
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 150] at r6035
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_add rho 4164 14 1 97, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 4164 14]
      linear_combination r6035
    have ha0 : (rho 5527 + rho 5528) * (dtkAccX248 rho + dtkAccY248 rho) = rho 5530 := by
      rw [hsum]
      linear_combination r6036
    have ha1 : rho 5528 * dtkAccX248 rho = rho 5531 := by
      unfold dtkAccX248
      linear_combination r6037
    have ha2 : rho 5527 * dtkAccY248 rho = rho 5532 := by
      unfold dtkAccY248
      linear_combination r6038
    have ha3 : 3021 * rho 5531 * rho 5532 = rho 5533 := by
      linear_combination r6039
    have ha4 : rho 5534 * (1 + rho 5533) = rho 5531 + rho 5532 := by
      linear_combination r6040
    have ha5 : rho 5535 * (1 - rho 5533) = rho 5530 - rho 5531 - rho 5532 := by
      linear_combination r6041
    have haddx :
        rho 5534 * (1 + 3021 * (rho 5528 * dtkAccX248 rho) * (rho 5527 * dtkAccY248 rho)) =
          rho 5528 * dtkAccX248 rho + rho 5527 * dtkAccY248 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5535 * (1 - 3021 * (rho 5528 * dtkAccX248 rho) * (rho 5527 * dtkAccY248 rho)) =
          (-1) * (rho 5528 * dtkAccX248 rho) - rho 5527 * dtkAccY248 rho +
            (dtkAccY248 rho - dtkAccX248 rho * (-1)) * (rho 5527 + rho 5528) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5535 * (1 - rho 5533) = rho 5530 - rho 5531 - rho 5532 := ha5
        _ = (-1) * rho 5531 - rho 5532 + (dtkAccY248 rho - dtkAccX248 rho * (-1)) * (rho 5527 + rho 5528) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX249 rho = dtkAccX248 rho - Bool.toZMod bit * (dtkAccX248 rho - rho 5534) := by
      have hd : rho 5536 = Bool.toZMod bit * (rho 5534 - dtkAccX248 rho) := by
        rw [← hbit]
        unfold dtkAccX248
        linear_combination -r6042
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY249 rho = dtkAccY248 rho - Bool.toZMod bit * (dtkAccY248 rho - rho 5535) := by
      have hd : rho 5537 = Bool.toZMod bit * (rho 5535 - dtkAccY248 rho) := by
        rw [← hbit]
        unfold dtkAccY248
        linear_combination -r6043
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5527 * rho 5528 = rho 5538 := by linear_combination r6044
    have hd1 : rho 5527 * rho 5527 = rho 5539 := by linear_combination r6045
    have hd2 : rho 5528 * rho 5528 = rho 5540 := by linear_combination r6046
    have hd3 : rho 5541 * (rho 5528 * rho 5528 + rho 5527 * rho 5527 * (-1)) = 2 * (rho 5527 * rho 5528) := by
      rw [hd0, hd1, hd2]
      linear_combination r6047
    have hd4 : rho 5542 * (2 - (rho 5528 * rho 5528 + rho 5527 * rho 5527 * (-1))) = rho 5528 * rho 5528 - rho 5527 * rho 5527 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6048
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX248 rho : F), (dtkAccY248 rho : F)⟩
      ⟨(rho 5527 : F), (rho 5528 : F)⟩
      ⟨(rho 5534 : F), (rho 5535 : F)⟩
      ⟨(dtkAccX249 rho : F), (dtkAccY249 rho : F)⟩
      ⟨(rho 5541 : F), (rho 5542 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung248

theorem dtk_rows249 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6049 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6050 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6051 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6052 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6053 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6054 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6055 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6056 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6057 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6058 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6059 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6060 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6061 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6062 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p75
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart75 at p75
  rcases p75 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6049, r6050, r6051, r6052, r6053, r6054, r6055, r6056, r6057, r6058, r6059, r6060, r6061, r6062, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r6049, r6050, r6051, r6052, r6053, r6054, r6055, r6056, r6057, r6058, r6059, r6060, r6061, r6062⟩

theorem dtk_rung249 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1232 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX249 rho : F), (dtkAccY249 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5541 : F), (rho 5542 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX249 rho : F), (dtkAccY249 rho : F)⟩
        ⟨(rho 5541 : F), (rho 5542 : F)⟩
        ⟨(dtkAccX250 rho : F), (dtkAccY250 rho : F)⟩
        ⟨(rho 5555 : F), (rho 5556 : F)⟩ := by
  obtain ⟨r6049, r6050, r6051, r6052, r6053, r6054, r6055, r6056, r6057, r6058, r6059, r6060, r6061, r6062⟩ := dtk_rows249 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6049 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1331 at r6049
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6049
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6050 at r6050
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6051 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1332 at r6051
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6051
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6052 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1333 at r6052
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6052
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6053 at r6053
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6054 at r6054
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6055 at r6055
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6056 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1334 at r6056
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6056
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6057 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1335 at r6057
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6057
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6058 at r6058
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6059 at r6059
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6060 at r6060
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6061 at r6061
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6062 at r6062
  have hrung249 (bit : Bool) (hbit : rho 1232 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX249 rho : F), (dtkAccY249 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5541 : F), (rho 5542 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX249 rho : F), (dtkAccY249 rho : F)⟩
        ⟨(rho 5541 : F), (rho 5542 : F)⟩
        ⟨(dtkAccX250 rho : F), (dtkAccY250 rho : F)⟩
        ⟨(rho 5555 : F), (rho 5556 : F)⟩ := by
    have hnextx : dtkAccX250 rho = dtkAccX249 rho + rho 5550 := by
      unfold dtkAccX250 dtkAccX249
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 99]
      ring
    have hnexty : dtkAccY250 rho = dtkAccY249 rho + rho 5551 := by
      unfold dtkAccY250 dtkAccY249
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4165 14 99]
      ring
    have hsum : dtkAccX249 rho + dtkAccY249 rho = rho 5543 := by
      unfold dtkAccX249 dtkAccY249
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 150] at r6049
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_add rho 4164 14 1 98, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 4164 14]
      linear_combination r6049
    have ha0 : (rho 5541 + rho 5542) * (dtkAccX249 rho + dtkAccY249 rho) = rho 5544 := by
      rw [hsum]
      linear_combination r6050
    have ha1 : rho 5542 * dtkAccX249 rho = rho 5545 := by
      unfold dtkAccX249
      linear_combination r6051
    have ha2 : rho 5541 * dtkAccY249 rho = rho 5546 := by
      unfold dtkAccY249
      linear_combination r6052
    have ha3 : 3021 * rho 5545 * rho 5546 = rho 5547 := by
      linear_combination r6053
    have ha4 : rho 5548 * (1 + rho 5547) = rho 5545 + rho 5546 := by
      linear_combination r6054
    have ha5 : rho 5549 * (1 - rho 5547) = rho 5544 - rho 5545 - rho 5546 := by
      linear_combination r6055
    have haddx :
        rho 5548 * (1 + 3021 * (rho 5542 * dtkAccX249 rho) * (rho 5541 * dtkAccY249 rho)) =
          rho 5542 * dtkAccX249 rho + rho 5541 * dtkAccY249 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5549 * (1 - 3021 * (rho 5542 * dtkAccX249 rho) * (rho 5541 * dtkAccY249 rho)) =
          (-1) * (rho 5542 * dtkAccX249 rho) - rho 5541 * dtkAccY249 rho +
            (dtkAccY249 rho - dtkAccX249 rho * (-1)) * (rho 5541 + rho 5542) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5549 * (1 - rho 5547) = rho 5544 - rho 5545 - rho 5546 := ha5
        _ = (-1) * rho 5545 - rho 5546 + (dtkAccY249 rho - dtkAccX249 rho * (-1)) * (rho 5541 + rho 5542) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX250 rho = dtkAccX249 rho - Bool.toZMod bit * (dtkAccX249 rho - rho 5548) := by
      have hd : rho 5550 = Bool.toZMod bit * (rho 5548 - dtkAccX249 rho) := by
        rw [← hbit]
        unfold dtkAccX249
        linear_combination -r6056
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY250 rho = dtkAccY249 rho - Bool.toZMod bit * (dtkAccY249 rho - rho 5549) := by
      have hd : rho 5551 = Bool.toZMod bit * (rho 5549 - dtkAccY249 rho) := by
        rw [← hbit]
        unfold dtkAccY249
        linear_combination -r6057
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5541 * rho 5542 = rho 5552 := by linear_combination r6058
    have hd1 : rho 5541 * rho 5541 = rho 5553 := by linear_combination r6059
    have hd2 : rho 5542 * rho 5542 = rho 5554 := by linear_combination r6060
    have hd3 : rho 5555 * (rho 5542 * rho 5542 + rho 5541 * rho 5541 * (-1)) = 2 * (rho 5541 * rho 5542) := by
      rw [hd0, hd1, hd2]
      linear_combination r6061
    have hd4 : rho 5556 * (2 - (rho 5542 * rho 5542 + rho 5541 * rho 5541 * (-1))) = rho 5542 * rho 5542 - rho 5541 * rho 5541 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6062
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX249 rho : F), (dtkAccY249 rho : F)⟩
      ⟨(rho 5541 : F), (rho 5542 : F)⟩
      ⟨(rho 5548 : F), (rho 5549 : F)⟩
      ⟨(dtkAccX250 rho : F), (dtkAccY250 rho : F)⟩
      ⟨(rho 5555 : F), (rho 5556 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung249

theorem dtk_rows250 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6063 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6064 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6065 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6066 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6067 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6068 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6069 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6070 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6071 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6072 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6073 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6074 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6075 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6076 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p75
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart75 at p75
  rcases p75 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6063, r6064, r6065, r6066, r6067, r6068, r6069, r6070, r6071, r6072, r6073, r6074, r6075, r6076⟩
  exact ⟨r6063, r6064, r6065, r6066, r6067, r6068, r6069, r6070, r6071, r6072, r6073, r6074, r6075, r6076⟩

theorem dtk_rung250 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1233 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX250 rho : F), (dtkAccY250 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5555 : F), (rho 5556 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX250 rho : F), (dtkAccY250 rho : F)⟩
        ⟨(rho 5555 : F), (rho 5556 : F)⟩
        ⟨(dtkAccX251 rho : F), (dtkAccY251 rho : F)⟩
        ⟨(rho 5569 : F), (rho 5570 : F)⟩ := by
  obtain ⟨r6063, r6064, r6065, r6066, r6067, r6068, r6069, r6070, r6071, r6072, r6073, r6074, r6075, r6076⟩ := dtk_rows250 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6063 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1336 at r6063
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6063
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6064 at r6064
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6065 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1337 at r6065
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6065
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6066 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1338 at r6066
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6066
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6067 at r6067
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6068 at r6068
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6069 at r6069
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6070 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1339 at r6070
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6070
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6071 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1340 at r6071
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6071
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6072 at r6072
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6073 at r6073
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6074 at r6074
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6075 at r6075
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6076 at r6076
  have hrung250 (bit : Bool) (hbit : rho 1233 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX250 rho : F), (dtkAccY250 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5555 : F), (rho 5556 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX250 rho : F), (dtkAccY250 rho : F)⟩
        ⟨(rho 5555 : F), (rho 5556 : F)⟩
        ⟨(dtkAccX251 rho : F), (dtkAccY251 rho : F)⟩
        ⟨(rho 5569 : F), (rho 5570 : F)⟩ := by
    have hnextx : dtkAccX251 rho = dtkAccX250 rho + rho 5564 := by
      unfold dtkAccX251 dtkAccX250
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 100]
      ring
    have hnexty : dtkAccY251 rho = dtkAccY250 rho + rho 5565 := by
      unfold dtkAccY251 dtkAccY250
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4165 14 100]
      ring
    have hsum : dtkAccX250 rho + dtkAccY250 rho = rho 5557 := by
      unfold dtkAccX250 dtkAccY250
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 150] at r6063
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_add rho 4164 14 1 99, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 4164 14]
      linear_combination r6063
    have ha0 : (rho 5555 + rho 5556) * (dtkAccX250 rho + dtkAccY250 rho) = rho 5558 := by
      rw [hsum]
      linear_combination r6064
    have ha1 : rho 5556 * dtkAccX250 rho = rho 5559 := by
      unfold dtkAccX250
      linear_combination r6065
    have ha2 : rho 5555 * dtkAccY250 rho = rho 5560 := by
      unfold dtkAccY250
      linear_combination r6066
    have ha3 : 3021 * rho 5559 * rho 5560 = rho 5561 := by
      linear_combination r6067
    have ha4 : rho 5562 * (1 + rho 5561) = rho 5559 + rho 5560 := by
      linear_combination r6068
    have ha5 : rho 5563 * (1 - rho 5561) = rho 5558 - rho 5559 - rho 5560 := by
      linear_combination r6069
    have haddx :
        rho 5562 * (1 + 3021 * (rho 5556 * dtkAccX250 rho) * (rho 5555 * dtkAccY250 rho)) =
          rho 5556 * dtkAccX250 rho + rho 5555 * dtkAccY250 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5563 * (1 - 3021 * (rho 5556 * dtkAccX250 rho) * (rho 5555 * dtkAccY250 rho)) =
          (-1) * (rho 5556 * dtkAccX250 rho) - rho 5555 * dtkAccY250 rho +
            (dtkAccY250 rho - dtkAccX250 rho * (-1)) * (rho 5555 + rho 5556) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5563 * (1 - rho 5561) = rho 5558 - rho 5559 - rho 5560 := ha5
        _ = (-1) * rho 5559 - rho 5560 + (dtkAccY250 rho - dtkAccX250 rho * (-1)) * (rho 5555 + rho 5556) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX251 rho = dtkAccX250 rho - Bool.toZMod bit * (dtkAccX250 rho - rho 5562) := by
      have hd : rho 5564 = Bool.toZMod bit * (rho 5562 - dtkAccX250 rho) := by
        rw [← hbit]
        unfold dtkAccX250
        linear_combination -r6070
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY251 rho = dtkAccY250 rho - Bool.toZMod bit * (dtkAccY250 rho - rho 5563) := by
      have hd : rho 5565 = Bool.toZMod bit * (rho 5563 - dtkAccY250 rho) := by
        rw [← hbit]
        unfold dtkAccY250
        linear_combination -r6071
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5555 * rho 5556 = rho 5566 := by linear_combination r6072
    have hd1 : rho 5555 * rho 5555 = rho 5567 := by linear_combination r6073
    have hd2 : rho 5556 * rho 5556 = rho 5568 := by linear_combination r6074
    have hd3 : rho 5569 * (rho 5556 * rho 5556 + rho 5555 * rho 5555 * (-1)) = 2 * (rho 5555 * rho 5556) := by
      rw [hd0, hd1, hd2]
      linear_combination r6075
    have hd4 : rho 5570 * (2 - (rho 5556 * rho 5556 + rho 5555 * rho 5555 * (-1))) = rho 5556 * rho 5556 - rho 5555 * rho 5555 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6076
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX250 rho : F), (dtkAccY250 rho : F)⟩
      ⟨(rho 5555 : F), (rho 5556 : F)⟩
      ⟨(rho 5562 : F), (rho 5563 : F)⟩
      ⟨(dtkAccX251 rho : F), (dtkAccY251 rho : F)⟩
      ⟨(rho 5569 : F), (rho 5570 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung250

theorem dtk_hstep_c41 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (983 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 246 ≤ i → i < 251 →
      EdwardsBridge.onCurve (dtkLadderAccState rho i) →
      EdwardsBridge.onCurve (dtkLadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (dtkLadderAccState rho i) (dtkLadderCurState rho i)
        (dtkLadderAccState rho (i + 1)) (dtkLadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact dtk_rung246 rho h bits[246]! (hbitAt 246 (by omega)) hacc hcur
  · exact dtk_rung247 rho h bits[247]! (hbitAt 247 (by omega)) hacc hcur
  · exact dtk_rung248 rho h bits[248]! (hbitAt 248 (by omega)) hacc hcur
  · exact dtk_rung249 rho h bits[249]! (hbitAt 249 (by omega)) hacc hcur
  · exact dtk_rung250 rho h bits[250]! (hbitAt 250 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport
