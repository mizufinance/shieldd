import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDtkScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs

theorem dtk_rows210 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5503 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5504 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5505 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5506 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5507 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5508 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5509 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5510 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5511 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5512 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5513 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5514 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5515 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5516 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p68, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart68 at p68
  rcases p68 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5503, r5504, r5505, r5506, r5507, r5508, r5509, r5510, r5511, r5512, r5513, r5514, r5515, r5516, _, _, _⟩
  exact ⟨r5503, r5504, r5505, r5506, r5507, r5508, r5509, r5510, r5511, r5512, r5513, r5514, r5515, r5516⟩

theorem dtk_rung210 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1193 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX210 rho : F), (dtkAccY210 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4995 : F), (rho 4996 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX210 rho : F), (dtkAccY210 rho : F)⟩
        ⟨(rho 4995 : F), (rho 4996 : F)⟩
        ⟨(dtkAccX211 rho : F), (dtkAccY211 rho : F)⟩
        ⟨(rho 5009 : F), (rho 5010 : F)⟩ := by
  obtain ⟨r5503, r5504, r5505, r5506, r5507, r5508, r5509, r5510, r5511, r5512, r5513, r5514, r5515, r5516⟩ := dtk_rows210 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5503 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1136 at r5503
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5503
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5504 at r5504
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5505 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1137 at r5505
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5505
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5506 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1138 at r5506
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5506
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5507 at r5507
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5508 at r5508
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5509 at r5509
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5510 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1139 at r5510
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5510
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5511 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1140 at r5511
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5511
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5512 at r5512
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5513 at r5513
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5514 at r5514
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5515 at r5515
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5516 at r5516
  have hrung210 (bit : Bool) (hbit : rho 1193 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX210 rho : F), (dtkAccY210 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4995 : F), (rho 4996 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX210 rho : F), (dtkAccY210 rho : F)⟩
        ⟨(rho 4995 : F), (rho 4996 : F)⟩
        ⟨(dtkAccX211 rho : F), (dtkAccY211 rho : F)⟩
        ⟨(rho 5009 : F), (rho 5010 : F)⟩ := by
    have hnextx : dtkAccX211 rho = dtkAccX210 rho + rho 5004 := by
      unfold dtkAccX211 dtkAccX210
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 60]
      ring
    have hnexty : dtkAccY211 rho = dtkAccY210 rho + rho 5005 := by
      unfold dtkAccY211 dtkAccY210
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4165 14 60]
      ring
    have hsum : dtkAccX210 rho + dtkAccY210 rho = rho 4997 := by
      unfold dtkAccX210 dtkAccY210
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 150] at r5503
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_add rho 4164 14 1 59, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 4164 14]
      linear_combination r5503
    have ha0 : (rho 4995 + rho 4996) * (dtkAccX210 rho + dtkAccY210 rho) = rho 4998 := by
      rw [hsum]
      linear_combination r5504
    have ha1 : rho 4996 * dtkAccX210 rho = rho 4999 := by
      unfold dtkAccX210
      linear_combination r5505
    have ha2 : rho 4995 * dtkAccY210 rho = rho 5000 := by
      unfold dtkAccY210
      linear_combination r5506
    have ha3 : 3021 * rho 4999 * rho 5000 = rho 5001 := by
      linear_combination r5507
    have ha4 : rho 5002 * (1 + rho 5001) = rho 4999 + rho 5000 := by
      linear_combination r5508
    have ha5 : rho 5003 * (1 - rho 5001) = rho 4998 - rho 4999 - rho 5000 := by
      linear_combination r5509
    have haddx :
        rho 5002 * (1 + 3021 * (rho 4996 * dtkAccX210 rho) * (rho 4995 * dtkAccY210 rho)) =
          rho 4996 * dtkAccX210 rho + rho 4995 * dtkAccY210 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5003 * (1 - 3021 * (rho 4996 * dtkAccX210 rho) * (rho 4995 * dtkAccY210 rho)) =
          (-1) * (rho 4996 * dtkAccX210 rho) - rho 4995 * dtkAccY210 rho +
            (dtkAccY210 rho - dtkAccX210 rho * (-1)) * (rho 4995 + rho 4996) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5003 * (1 - rho 5001) = rho 4998 - rho 4999 - rho 5000 := ha5
        _ = (-1) * rho 4999 - rho 5000 + (dtkAccY210 rho - dtkAccX210 rho * (-1)) * (rho 4995 + rho 4996) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX211 rho = dtkAccX210 rho - Bool.toZMod bit * (dtkAccX210 rho - rho 5002) := by
      have hd : rho 5004 = Bool.toZMod bit * (rho 5002 - dtkAccX210 rho) := by
        rw [← hbit]
        unfold dtkAccX210
        linear_combination -r5510
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY211 rho = dtkAccY210 rho - Bool.toZMod bit * (dtkAccY210 rho - rho 5003) := by
      have hd : rho 5005 = Bool.toZMod bit * (rho 5003 - dtkAccY210 rho) := by
        rw [← hbit]
        unfold dtkAccY210
        linear_combination -r5511
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4995 * rho 4996 = rho 5006 := by linear_combination r5512
    have hd1 : rho 4995 * rho 4995 = rho 5007 := by linear_combination r5513
    have hd2 : rho 4996 * rho 4996 = rho 5008 := by linear_combination r5514
    have hd3 : rho 5009 * (rho 4996 * rho 4996 + rho 4995 * rho 4995 * (-1)) = 2 * (rho 4995 * rho 4996) := by
      rw [hd0, hd1, hd2]
      linear_combination r5515
    have hd4 : rho 5010 * (2 - (rho 4996 * rho 4996 + rho 4995 * rho 4995 * (-1))) = rho 4996 * rho 4996 - rho 4995 * rho 4995 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5516
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX210 rho : F), (dtkAccY210 rho : F)⟩
      ⟨(rho 4995 : F), (rho 4996 : F)⟩
      ⟨(rho 5002 : F), (rho 5003 : F)⟩
      ⟨(dtkAccX211 rho : F), (dtkAccY211 rho : F)⟩
      ⟨(rho 5009 : F), (rho 5010 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung210

theorem dtk_rows211 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5517 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5518 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5519 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5520 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5521 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5522 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5523 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5524 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5525 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5526 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5527 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5528 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5529 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5530 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p68, p69,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart68 at p68
  rcases p68 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5517, r5518, r5519⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart69 at p69
  rcases p69 with ⟨r5520, r5521, r5522, r5523, r5524, r5525, r5526, r5527, r5528, r5529, r5530, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5517, r5518, r5519, r5520, r5521, r5522, r5523, r5524, r5525, r5526, r5527, r5528, r5529, r5530⟩

theorem dtk_rung211 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1194 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX211 rho : F), (dtkAccY211 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5009 : F), (rho 5010 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX211 rho : F), (dtkAccY211 rho : F)⟩
        ⟨(rho 5009 : F), (rho 5010 : F)⟩
        ⟨(dtkAccX212 rho : F), (dtkAccY212 rho : F)⟩
        ⟨(rho 5023 : F), (rho 5024 : F)⟩ := by
  obtain ⟨r5517, r5518, r5519, r5520, r5521, r5522, r5523, r5524, r5525, r5526, r5527, r5528, r5529, r5530⟩ := dtk_rows211 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5517 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1141 at r5517
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5517
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5518 at r5518
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5519 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1142 at r5519
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5519
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5520 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1143 at r5520
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5520
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5521 at r5521
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5522 at r5522
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5523 at r5523
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5524 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1144 at r5524
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5524
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5525 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1145 at r5525
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5525
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5526 at r5526
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5527 at r5527
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5528 at r5528
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5529 at r5529
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5530 at r5530
  have hrung211 (bit : Bool) (hbit : rho 1194 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX211 rho : F), (dtkAccY211 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5009 : F), (rho 5010 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX211 rho : F), (dtkAccY211 rho : F)⟩
        ⟨(rho 5009 : F), (rho 5010 : F)⟩
        ⟨(dtkAccX212 rho : F), (dtkAccY212 rho : F)⟩
        ⟨(rho 5023 : F), (rho 5024 : F)⟩ := by
    have hnextx : dtkAccX212 rho = dtkAccX211 rho + rho 5018 := by
      unfold dtkAccX212 dtkAccX211
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 61]
      ring
    have hnexty : dtkAccY212 rho = dtkAccY211 rho + rho 5019 := by
      unfold dtkAccY212 dtkAccY211
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4165 14 61]
      ring
    have hsum : dtkAccX211 rho + dtkAccY211 rho = rho 5011 := by
      unfold dtkAccX211 dtkAccY211
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 150] at r5517
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_add rho 4164 14 1 60, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 4164 14]
      linear_combination r5517
    have ha0 : (rho 5009 + rho 5010) * (dtkAccX211 rho + dtkAccY211 rho) = rho 5012 := by
      rw [hsum]
      linear_combination r5518
    have ha1 : rho 5010 * dtkAccX211 rho = rho 5013 := by
      unfold dtkAccX211
      linear_combination r5519
    have ha2 : rho 5009 * dtkAccY211 rho = rho 5014 := by
      unfold dtkAccY211
      linear_combination r5520
    have ha3 : 3021 * rho 5013 * rho 5014 = rho 5015 := by
      linear_combination r5521
    have ha4 : rho 5016 * (1 + rho 5015) = rho 5013 + rho 5014 := by
      linear_combination r5522
    have ha5 : rho 5017 * (1 - rho 5015) = rho 5012 - rho 5013 - rho 5014 := by
      linear_combination r5523
    have haddx :
        rho 5016 * (1 + 3021 * (rho 5010 * dtkAccX211 rho) * (rho 5009 * dtkAccY211 rho)) =
          rho 5010 * dtkAccX211 rho + rho 5009 * dtkAccY211 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5017 * (1 - 3021 * (rho 5010 * dtkAccX211 rho) * (rho 5009 * dtkAccY211 rho)) =
          (-1) * (rho 5010 * dtkAccX211 rho) - rho 5009 * dtkAccY211 rho +
            (dtkAccY211 rho - dtkAccX211 rho * (-1)) * (rho 5009 + rho 5010) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5017 * (1 - rho 5015) = rho 5012 - rho 5013 - rho 5014 := ha5
        _ = (-1) * rho 5013 - rho 5014 + (dtkAccY211 rho - dtkAccX211 rho * (-1)) * (rho 5009 + rho 5010) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX212 rho = dtkAccX211 rho - Bool.toZMod bit * (dtkAccX211 rho - rho 5016) := by
      have hd : rho 5018 = Bool.toZMod bit * (rho 5016 - dtkAccX211 rho) := by
        rw [← hbit]
        unfold dtkAccX211
        linear_combination -r5524
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY212 rho = dtkAccY211 rho - Bool.toZMod bit * (dtkAccY211 rho - rho 5017) := by
      have hd : rho 5019 = Bool.toZMod bit * (rho 5017 - dtkAccY211 rho) := by
        rw [← hbit]
        unfold dtkAccY211
        linear_combination -r5525
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5009 * rho 5010 = rho 5020 := by linear_combination r5526
    have hd1 : rho 5009 * rho 5009 = rho 5021 := by linear_combination r5527
    have hd2 : rho 5010 * rho 5010 = rho 5022 := by linear_combination r5528
    have hd3 : rho 5023 * (rho 5010 * rho 5010 + rho 5009 * rho 5009 * (-1)) = 2 * (rho 5009 * rho 5010) := by
      rw [hd0, hd1, hd2]
      linear_combination r5529
    have hd4 : rho 5024 * (2 - (rho 5010 * rho 5010 + rho 5009 * rho 5009 * (-1))) = rho 5010 * rho 5010 - rho 5009 * rho 5009 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5530
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX211 rho : F), (dtkAccY211 rho : F)⟩
      ⟨(rho 5009 : F), (rho 5010 : F)⟩
      ⟨(rho 5016 : F), (rho 5017 : F)⟩
      ⟨(dtkAccX212 rho : F), (dtkAccY212 rho : F)⟩
      ⟨(rho 5023 : F), (rho 5024 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung211

theorem dtk_rows212 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5531 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5532 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5533 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5534 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5535 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5536 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5537 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5538 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5539 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5540 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5541 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5542 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5543 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5544 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p69,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart69 at p69
  rcases p69 with ⟨_, _, _, _, _, _, _, _, _, _, _, r5531, r5532, r5533, r5534, r5535, r5536, r5537, r5538, r5539, r5540, r5541, r5542, r5543, r5544, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5531, r5532, r5533, r5534, r5535, r5536, r5537, r5538, r5539, r5540, r5541, r5542, r5543, r5544⟩

theorem dtk_rung212 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1195 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX212 rho : F), (dtkAccY212 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5023 : F), (rho 5024 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX212 rho : F), (dtkAccY212 rho : F)⟩
        ⟨(rho 5023 : F), (rho 5024 : F)⟩
        ⟨(dtkAccX213 rho : F), (dtkAccY213 rho : F)⟩
        ⟨(rho 5037 : F), (rho 5038 : F)⟩ := by
  obtain ⟨r5531, r5532, r5533, r5534, r5535, r5536, r5537, r5538, r5539, r5540, r5541, r5542, r5543, r5544⟩ := dtk_rows212 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5531 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1146 at r5531
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5531
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5532 at r5532
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5533 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1147 at r5533
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5533
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5534 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1148 at r5534
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5534
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5535 at r5535
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5536 at r5536
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5537 at r5537
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5538 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1149 at r5538
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5538
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5539 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1150 at r5539
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5539
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5540 at r5540
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5541 at r5541
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5542 at r5542
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5543 at r5543
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5544 at r5544
  have hrung212 (bit : Bool) (hbit : rho 1195 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX212 rho : F), (dtkAccY212 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5023 : F), (rho 5024 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX212 rho : F), (dtkAccY212 rho : F)⟩
        ⟨(rho 5023 : F), (rho 5024 : F)⟩
        ⟨(dtkAccX213 rho : F), (dtkAccY213 rho : F)⟩
        ⟨(rho 5037 : F), (rho 5038 : F)⟩ := by
    have hnextx : dtkAccX213 rho = dtkAccX212 rho + rho 5032 := by
      unfold dtkAccX213 dtkAccX212
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 62]
      ring
    have hnexty : dtkAccY213 rho = dtkAccY212 rho + rho 5033 := by
      unfold dtkAccY213 dtkAccY212
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4165 14 62]
      ring
    have hsum : dtkAccX212 rho + dtkAccY212 rho = rho 5025 := by
      unfold dtkAccX212 dtkAccY212
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 150] at r5531
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_add rho 4164 14 1 61, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 4164 14]
      linear_combination r5531
    have ha0 : (rho 5023 + rho 5024) * (dtkAccX212 rho + dtkAccY212 rho) = rho 5026 := by
      rw [hsum]
      linear_combination r5532
    have ha1 : rho 5024 * dtkAccX212 rho = rho 5027 := by
      unfold dtkAccX212
      linear_combination r5533
    have ha2 : rho 5023 * dtkAccY212 rho = rho 5028 := by
      unfold dtkAccY212
      linear_combination r5534
    have ha3 : 3021 * rho 5027 * rho 5028 = rho 5029 := by
      linear_combination r5535
    have ha4 : rho 5030 * (1 + rho 5029) = rho 5027 + rho 5028 := by
      linear_combination r5536
    have ha5 : rho 5031 * (1 - rho 5029) = rho 5026 - rho 5027 - rho 5028 := by
      linear_combination r5537
    have haddx :
        rho 5030 * (1 + 3021 * (rho 5024 * dtkAccX212 rho) * (rho 5023 * dtkAccY212 rho)) =
          rho 5024 * dtkAccX212 rho + rho 5023 * dtkAccY212 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5031 * (1 - 3021 * (rho 5024 * dtkAccX212 rho) * (rho 5023 * dtkAccY212 rho)) =
          (-1) * (rho 5024 * dtkAccX212 rho) - rho 5023 * dtkAccY212 rho +
            (dtkAccY212 rho - dtkAccX212 rho * (-1)) * (rho 5023 + rho 5024) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5031 * (1 - rho 5029) = rho 5026 - rho 5027 - rho 5028 := ha5
        _ = (-1) * rho 5027 - rho 5028 + (dtkAccY212 rho - dtkAccX212 rho * (-1)) * (rho 5023 + rho 5024) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX213 rho = dtkAccX212 rho - Bool.toZMod bit * (dtkAccX212 rho - rho 5030) := by
      have hd : rho 5032 = Bool.toZMod bit * (rho 5030 - dtkAccX212 rho) := by
        rw [← hbit]
        unfold dtkAccX212
        linear_combination -r5538
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY213 rho = dtkAccY212 rho - Bool.toZMod bit * (dtkAccY212 rho - rho 5031) := by
      have hd : rho 5033 = Bool.toZMod bit * (rho 5031 - dtkAccY212 rho) := by
        rw [← hbit]
        unfold dtkAccY212
        linear_combination -r5539
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5023 * rho 5024 = rho 5034 := by linear_combination r5540
    have hd1 : rho 5023 * rho 5023 = rho 5035 := by linear_combination r5541
    have hd2 : rho 5024 * rho 5024 = rho 5036 := by linear_combination r5542
    have hd3 : rho 5037 * (rho 5024 * rho 5024 + rho 5023 * rho 5023 * (-1)) = 2 * (rho 5023 * rho 5024) := by
      rw [hd0, hd1, hd2]
      linear_combination r5543
    have hd4 : rho 5038 * (2 - (rho 5024 * rho 5024 + rho 5023 * rho 5023 * (-1))) = rho 5024 * rho 5024 - rho 5023 * rho 5023 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5544
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX212 rho : F), (dtkAccY212 rho : F)⟩
      ⟨(rho 5023 : F), (rho 5024 : F)⟩
      ⟨(rho 5030 : F), (rho 5031 : F)⟩
      ⟨(dtkAccX213 rho : F), (dtkAccY213 rho : F)⟩
      ⟨(rho 5037 : F), (rho 5038 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung212

theorem dtk_rows213 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5545 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5546 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5547 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5548 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5549 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5550 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5551 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5552 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5553 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5554 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5555 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5556 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5557 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5558 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p69,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart69 at p69
  rcases p69 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5545, r5546, r5547, r5548, r5549, r5550, r5551, r5552, r5553, r5554, r5555, r5556, r5557, r5558, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5545, r5546, r5547, r5548, r5549, r5550, r5551, r5552, r5553, r5554, r5555, r5556, r5557, r5558⟩

theorem dtk_rung213 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1196 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX213 rho : F), (dtkAccY213 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5037 : F), (rho 5038 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX213 rho : F), (dtkAccY213 rho : F)⟩
        ⟨(rho 5037 : F), (rho 5038 : F)⟩
        ⟨(dtkAccX214 rho : F), (dtkAccY214 rho : F)⟩
        ⟨(rho 5051 : F), (rho 5052 : F)⟩ := by
  obtain ⟨r5545, r5546, r5547, r5548, r5549, r5550, r5551, r5552, r5553, r5554, r5555, r5556, r5557, r5558⟩ := dtk_rows213 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5545 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1151 at r5545
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5545
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5546 at r5546
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5547 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1152 at r5547
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5547
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5548 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1153 at r5548
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5548
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5549 at r5549
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5550 at r5550
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5551 at r5551
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5552 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1154 at r5552
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5552
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5553 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1155 at r5553
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5553
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5554 at r5554
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5555 at r5555
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5556 at r5556
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5557 at r5557
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5558 at r5558
  have hrung213 (bit : Bool) (hbit : rho 1196 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX213 rho : F), (dtkAccY213 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5037 : F), (rho 5038 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX213 rho : F), (dtkAccY213 rho : F)⟩
        ⟨(rho 5037 : F), (rho 5038 : F)⟩
        ⟨(dtkAccX214 rho : F), (dtkAccY214 rho : F)⟩
        ⟨(rho 5051 : F), (rho 5052 : F)⟩ := by
    have hnextx : dtkAccX214 rho = dtkAccX213 rho + rho 5046 := by
      unfold dtkAccX214 dtkAccX213
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 63]
      ring
    have hnexty : dtkAccY214 rho = dtkAccY213 rho + rho 5047 := by
      unfold dtkAccY214 dtkAccY213
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4165 14 63]
      ring
    have hsum : dtkAccX213 rho + dtkAccY213 rho = rho 5039 := by
      unfold dtkAccX213 dtkAccY213
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 150] at r5545
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_add rho 4164 14 1 62, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 4164 14]
      linear_combination r5545
    have ha0 : (rho 5037 + rho 5038) * (dtkAccX213 rho + dtkAccY213 rho) = rho 5040 := by
      rw [hsum]
      linear_combination r5546
    have ha1 : rho 5038 * dtkAccX213 rho = rho 5041 := by
      unfold dtkAccX213
      linear_combination r5547
    have ha2 : rho 5037 * dtkAccY213 rho = rho 5042 := by
      unfold dtkAccY213
      linear_combination r5548
    have ha3 : 3021 * rho 5041 * rho 5042 = rho 5043 := by
      linear_combination r5549
    have ha4 : rho 5044 * (1 + rho 5043) = rho 5041 + rho 5042 := by
      linear_combination r5550
    have ha5 : rho 5045 * (1 - rho 5043) = rho 5040 - rho 5041 - rho 5042 := by
      linear_combination r5551
    have haddx :
        rho 5044 * (1 + 3021 * (rho 5038 * dtkAccX213 rho) * (rho 5037 * dtkAccY213 rho)) =
          rho 5038 * dtkAccX213 rho + rho 5037 * dtkAccY213 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5045 * (1 - 3021 * (rho 5038 * dtkAccX213 rho) * (rho 5037 * dtkAccY213 rho)) =
          (-1) * (rho 5038 * dtkAccX213 rho) - rho 5037 * dtkAccY213 rho +
            (dtkAccY213 rho - dtkAccX213 rho * (-1)) * (rho 5037 + rho 5038) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5045 * (1 - rho 5043) = rho 5040 - rho 5041 - rho 5042 := ha5
        _ = (-1) * rho 5041 - rho 5042 + (dtkAccY213 rho - dtkAccX213 rho * (-1)) * (rho 5037 + rho 5038) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX214 rho = dtkAccX213 rho - Bool.toZMod bit * (dtkAccX213 rho - rho 5044) := by
      have hd : rho 5046 = Bool.toZMod bit * (rho 5044 - dtkAccX213 rho) := by
        rw [← hbit]
        unfold dtkAccX213
        linear_combination -r5552
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY214 rho = dtkAccY213 rho - Bool.toZMod bit * (dtkAccY213 rho - rho 5045) := by
      have hd : rho 5047 = Bool.toZMod bit * (rho 5045 - dtkAccY213 rho) := by
        rw [← hbit]
        unfold dtkAccY213
        linear_combination -r5553
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5037 * rho 5038 = rho 5048 := by linear_combination r5554
    have hd1 : rho 5037 * rho 5037 = rho 5049 := by linear_combination r5555
    have hd2 : rho 5038 * rho 5038 = rho 5050 := by linear_combination r5556
    have hd3 : rho 5051 * (rho 5038 * rho 5038 + rho 5037 * rho 5037 * (-1)) = 2 * (rho 5037 * rho 5038) := by
      rw [hd0, hd1, hd2]
      linear_combination r5557
    have hd4 : rho 5052 * (2 - (rho 5038 * rho 5038 + rho 5037 * rho 5037 * (-1))) = rho 5038 * rho 5038 - rho 5037 * rho 5037 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5558
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX213 rho : F), (dtkAccY213 rho : F)⟩
      ⟨(rho 5037 : F), (rho 5038 : F)⟩
      ⟨(rho 5044 : F), (rho 5045 : F)⟩
      ⟨(dtkAccX214 rho : F), (dtkAccY214 rho : F)⟩
      ⟨(rho 5051 : F), (rho 5052 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung213

theorem dtk_rows214 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5559 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5560 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5561 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5562 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5563 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5564 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5565 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5566 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5567 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5568 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5569 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5570 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5571 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5572 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p69,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart69 at p69
  rcases p69 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5559, r5560, r5561, r5562, r5563, r5564, r5565, r5566, r5567, r5568, r5569, r5570, r5571, r5572, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5559, r5560, r5561, r5562, r5563, r5564, r5565, r5566, r5567, r5568, r5569, r5570, r5571, r5572⟩

theorem dtk_rung214 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1197 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX214 rho : F), (dtkAccY214 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5051 : F), (rho 5052 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX214 rho : F), (dtkAccY214 rho : F)⟩
        ⟨(rho 5051 : F), (rho 5052 : F)⟩
        ⟨(dtkAccX215 rho : F), (dtkAccY215 rho : F)⟩
        ⟨(rho 5065 : F), (rho 5066 : F)⟩ := by
  obtain ⟨r5559, r5560, r5561, r5562, r5563, r5564, r5565, r5566, r5567, r5568, r5569, r5570, r5571, r5572⟩ := dtk_rows214 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5559 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1156 at r5559
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5559
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5560 at r5560
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5561 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1157 at r5561
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5561
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5562 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1158 at r5562
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5562
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5563 at r5563
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5564 at r5564
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5565 at r5565
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5566 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1159 at r5566
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5566
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5567 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1160 at r5567
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5567
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5568 at r5568
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5569 at r5569
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5570 at r5570
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5571 at r5571
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5572 at r5572
  have hrung214 (bit : Bool) (hbit : rho 1197 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX214 rho : F), (dtkAccY214 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5051 : F), (rho 5052 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX214 rho : F), (dtkAccY214 rho : F)⟩
        ⟨(rho 5051 : F), (rho 5052 : F)⟩
        ⟨(dtkAccX215 rho : F), (dtkAccY215 rho : F)⟩
        ⟨(rho 5065 : F), (rho 5066 : F)⟩ := by
    have hnextx : dtkAccX215 rho = dtkAccX214 rho + rho 5060 := by
      unfold dtkAccX215 dtkAccX214
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 64]
      ring
    have hnexty : dtkAccY215 rho = dtkAccY214 rho + rho 5061 := by
      unfold dtkAccY215 dtkAccY214
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4165 14 64]
      ring
    have hsum : dtkAccX214 rho + dtkAccY214 rho = rho 5053 := by
      unfold dtkAccX214 dtkAccY214
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 150] at r5559
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_add rho 4164 14 1 63, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 4164 14]
      linear_combination r5559
    have ha0 : (rho 5051 + rho 5052) * (dtkAccX214 rho + dtkAccY214 rho) = rho 5054 := by
      rw [hsum]
      linear_combination r5560
    have ha1 : rho 5052 * dtkAccX214 rho = rho 5055 := by
      unfold dtkAccX214
      linear_combination r5561
    have ha2 : rho 5051 * dtkAccY214 rho = rho 5056 := by
      unfold dtkAccY214
      linear_combination r5562
    have ha3 : 3021 * rho 5055 * rho 5056 = rho 5057 := by
      linear_combination r5563
    have ha4 : rho 5058 * (1 + rho 5057) = rho 5055 + rho 5056 := by
      linear_combination r5564
    have ha5 : rho 5059 * (1 - rho 5057) = rho 5054 - rho 5055 - rho 5056 := by
      linear_combination r5565
    have haddx :
        rho 5058 * (1 + 3021 * (rho 5052 * dtkAccX214 rho) * (rho 5051 * dtkAccY214 rho)) =
          rho 5052 * dtkAccX214 rho + rho 5051 * dtkAccY214 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5059 * (1 - 3021 * (rho 5052 * dtkAccX214 rho) * (rho 5051 * dtkAccY214 rho)) =
          (-1) * (rho 5052 * dtkAccX214 rho) - rho 5051 * dtkAccY214 rho +
            (dtkAccY214 rho - dtkAccX214 rho * (-1)) * (rho 5051 + rho 5052) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5059 * (1 - rho 5057) = rho 5054 - rho 5055 - rho 5056 := ha5
        _ = (-1) * rho 5055 - rho 5056 + (dtkAccY214 rho - dtkAccX214 rho * (-1)) * (rho 5051 + rho 5052) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX215 rho = dtkAccX214 rho - Bool.toZMod bit * (dtkAccX214 rho - rho 5058) := by
      have hd : rho 5060 = Bool.toZMod bit * (rho 5058 - dtkAccX214 rho) := by
        rw [← hbit]
        unfold dtkAccX214
        linear_combination -r5566
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY215 rho = dtkAccY214 rho - Bool.toZMod bit * (dtkAccY214 rho - rho 5059) := by
      have hd : rho 5061 = Bool.toZMod bit * (rho 5059 - dtkAccY214 rho) := by
        rw [← hbit]
        unfold dtkAccY214
        linear_combination -r5567
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5051 * rho 5052 = rho 5062 := by linear_combination r5568
    have hd1 : rho 5051 * rho 5051 = rho 5063 := by linear_combination r5569
    have hd2 : rho 5052 * rho 5052 = rho 5064 := by linear_combination r5570
    have hd3 : rho 5065 * (rho 5052 * rho 5052 + rho 5051 * rho 5051 * (-1)) = 2 * (rho 5051 * rho 5052) := by
      rw [hd0, hd1, hd2]
      linear_combination r5571
    have hd4 : rho 5066 * (2 - (rho 5052 * rho 5052 + rho 5051 * rho 5051 * (-1))) = rho 5052 * rho 5052 - rho 5051 * rho 5051 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5572
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX214 rho : F), (dtkAccY214 rho : F)⟩
      ⟨(rho 5051 : F), (rho 5052 : F)⟩
      ⟨(rho 5058 : F), (rho 5059 : F)⟩
      ⟨(dtkAccX215 rho : F), (dtkAccY215 rho : F)⟩
      ⟨(rho 5065 : F), (rho 5066 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung214

theorem dtk_rows215 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5573 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5574 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5575 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5576 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5577 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5578 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5579 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5580 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5581 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5582 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5583 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5584 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5585 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5586 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p69,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart69 at p69
  rcases p69 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5573, r5574, r5575, r5576, r5577, r5578, r5579, r5580, r5581, r5582, r5583, r5584, r5585, r5586, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5573, r5574, r5575, r5576, r5577, r5578, r5579, r5580, r5581, r5582, r5583, r5584, r5585, r5586⟩

theorem dtk_rung215 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1198 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX215 rho : F), (dtkAccY215 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5065 : F), (rho 5066 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX215 rho : F), (dtkAccY215 rho : F)⟩
        ⟨(rho 5065 : F), (rho 5066 : F)⟩
        ⟨(dtkAccX216 rho : F), (dtkAccY216 rho : F)⟩
        ⟨(rho 5079 : F), (rho 5080 : F)⟩ := by
  obtain ⟨r5573, r5574, r5575, r5576, r5577, r5578, r5579, r5580, r5581, r5582, r5583, r5584, r5585, r5586⟩ := dtk_rows215 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5573 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1161 at r5573
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5573
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5574 at r5574
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5575 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1162 at r5575
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5575
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5576 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1163 at r5576
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5576
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5577 at r5577
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5578 at r5578
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5579 at r5579
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5580 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1164 at r5580
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5580
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5581 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1165 at r5581
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5581
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5582 at r5582
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5583 at r5583
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5584 at r5584
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5585 at r5585
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5586 at r5586
  have hrung215 (bit : Bool) (hbit : rho 1198 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX215 rho : F), (dtkAccY215 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5065 : F), (rho 5066 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX215 rho : F), (dtkAccY215 rho : F)⟩
        ⟨(rho 5065 : F), (rho 5066 : F)⟩
        ⟨(dtkAccX216 rho : F), (dtkAccY216 rho : F)⟩
        ⟨(rho 5079 : F), (rho 5080 : F)⟩ := by
    have hnextx : dtkAccX216 rho = dtkAccX215 rho + rho 5074 := by
      unfold dtkAccX216 dtkAccX215
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 65]
      ring
    have hnexty : dtkAccY216 rho = dtkAccY215 rho + rho 5075 := by
      unfold dtkAccY216 dtkAccY215
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4165 14 65]
      ring
    have hsum : dtkAccX215 rho + dtkAccY215 rho = rho 5067 := by
      unfold dtkAccX215 dtkAccY215
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 150] at r5573
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_add rho 4164 14 1 64, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 4164 14]
      linear_combination r5573
    have ha0 : (rho 5065 + rho 5066) * (dtkAccX215 rho + dtkAccY215 rho) = rho 5068 := by
      rw [hsum]
      linear_combination r5574
    have ha1 : rho 5066 * dtkAccX215 rho = rho 5069 := by
      unfold dtkAccX215
      linear_combination r5575
    have ha2 : rho 5065 * dtkAccY215 rho = rho 5070 := by
      unfold dtkAccY215
      linear_combination r5576
    have ha3 : 3021 * rho 5069 * rho 5070 = rho 5071 := by
      linear_combination r5577
    have ha4 : rho 5072 * (1 + rho 5071) = rho 5069 + rho 5070 := by
      linear_combination r5578
    have ha5 : rho 5073 * (1 - rho 5071) = rho 5068 - rho 5069 - rho 5070 := by
      linear_combination r5579
    have haddx :
        rho 5072 * (1 + 3021 * (rho 5066 * dtkAccX215 rho) * (rho 5065 * dtkAccY215 rho)) =
          rho 5066 * dtkAccX215 rho + rho 5065 * dtkAccY215 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5073 * (1 - 3021 * (rho 5066 * dtkAccX215 rho) * (rho 5065 * dtkAccY215 rho)) =
          (-1) * (rho 5066 * dtkAccX215 rho) - rho 5065 * dtkAccY215 rho +
            (dtkAccY215 rho - dtkAccX215 rho * (-1)) * (rho 5065 + rho 5066) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5073 * (1 - rho 5071) = rho 5068 - rho 5069 - rho 5070 := ha5
        _ = (-1) * rho 5069 - rho 5070 + (dtkAccY215 rho - dtkAccX215 rho * (-1)) * (rho 5065 + rho 5066) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX216 rho = dtkAccX215 rho - Bool.toZMod bit * (dtkAccX215 rho - rho 5072) := by
      have hd : rho 5074 = Bool.toZMod bit * (rho 5072 - dtkAccX215 rho) := by
        rw [← hbit]
        unfold dtkAccX215
        linear_combination -r5580
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY216 rho = dtkAccY215 rho - Bool.toZMod bit * (dtkAccY215 rho - rho 5073) := by
      have hd : rho 5075 = Bool.toZMod bit * (rho 5073 - dtkAccY215 rho) := by
        rw [← hbit]
        unfold dtkAccY215
        linear_combination -r5581
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5065 * rho 5066 = rho 5076 := by linear_combination r5582
    have hd1 : rho 5065 * rho 5065 = rho 5077 := by linear_combination r5583
    have hd2 : rho 5066 * rho 5066 = rho 5078 := by linear_combination r5584
    have hd3 : rho 5079 * (rho 5066 * rho 5066 + rho 5065 * rho 5065 * (-1)) = 2 * (rho 5065 * rho 5066) := by
      rw [hd0, hd1, hd2]
      linear_combination r5585
    have hd4 : rho 5080 * (2 - (rho 5066 * rho 5066 + rho 5065 * rho 5065 * (-1))) = rho 5066 * rho 5066 - rho 5065 * rho 5065 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5586
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX215 rho : F), (dtkAccY215 rho : F)⟩
      ⟨(rho 5065 : F), (rho 5066 : F)⟩
      ⟨(rho 5072 : F), (rho 5073 : F)⟩
      ⟨(dtkAccX216 rho : F), (dtkAccY216 rho : F)⟩
      ⟨(rho 5079 : F), (rho 5080 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung215

theorem dtk_hstep_c35 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (983 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 210 ≤ i → i < 216 →
      EdwardsBridge.onCurve (dtkLadderAccState rho i) →
      EdwardsBridge.onCurve (dtkLadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (dtkLadderAccState rho i) (dtkLadderCurState rho i)
        (dtkLadderAccState rho (i + 1)) (dtkLadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact dtk_rung210 rho h bits[210]! (hbitAt 210 (by omega)) hacc hcur
  · exact dtk_rung211 rho h bits[211]! (hbitAt 211 (by omega)) hacc hcur
  · exact dtk_rung212 rho h bits[212]! (hbitAt 212 (by omega)) hacc hcur
  · exact dtk_rung213 rho h bits[213]! (hbitAt 213 (by omega)) hacc hcur
  · exact dtk_rung214 rho h bits[214]! (hbitAt 214 (by omega)) hacc hcur
  · exact dtk_rung215 rho h bits[215]! (hbitAt 215 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport
