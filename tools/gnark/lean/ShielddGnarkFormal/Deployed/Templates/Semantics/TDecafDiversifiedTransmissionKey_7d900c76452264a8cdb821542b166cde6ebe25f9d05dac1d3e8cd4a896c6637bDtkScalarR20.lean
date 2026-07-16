import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDtkScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport

open Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs

theorem dtk_rows220 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5643 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5644 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5645 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5646 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5647 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5648 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5649 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5650 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5651 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5652 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5653 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5654 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5655 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5656 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p70, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart70 at p70
  rcases p70 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5643, r5644, r5645, r5646, r5647, r5648, r5649, r5650, r5651, r5652, r5653, r5654, r5655, r5656, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5643, r5644, r5645, r5646, r5647, r5648, r5649, r5650, r5651, r5652, r5653, r5654, r5655, r5656⟩

theorem dtk_rung220 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1203 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX220 rho : F), (dtkAccY220 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5135 : F), (rho 5136 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX220 rho : F), (dtkAccY220 rho : F)⟩
        ⟨(rho 5135 : F), (rho 5136 : F)⟩
        ⟨(dtkAccX221 rho : F), (dtkAccY221 rho : F)⟩
        ⟨(rho 5149 : F), (rho 5150 : F)⟩ := by
  obtain ⟨r5643, r5644, r5645, r5646, r5647, r5648, r5649, r5650, r5651, r5652, r5653, r5654, r5655, r5656⟩ := dtk_rows220 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5643 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1186 at r5643
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5643
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5644 at r5644
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5645 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1187 at r5645
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5645
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5646 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1188 at r5646
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5646
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5647 at r5647
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5648 at r5648
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5649 at r5649
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5650 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1189 at r5650
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5650
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5651 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1190 at r5651
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5651
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5652 at r5652
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5653 at r5653
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5654 at r5654
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5655 at r5655
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5656 at r5656
  have hrung220 (bit : Bool) (hbit : rho 1203 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX220 rho : F), (dtkAccY220 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5135 : F), (rho 5136 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX220 rho : F), (dtkAccY220 rho : F)⟩
        ⟨(rho 5135 : F), (rho 5136 : F)⟩
        ⟨(dtkAccX221 rho : F), (dtkAccY221 rho : F)⟩
        ⟨(rho 5149 : F), (rho 5150 : F)⟩ := by
    have hnextx : dtkAccX221 rho = dtkAccX220 rho + rho 5144 := by
      unfold dtkAccX221 dtkAccX220
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 70]
      ring
    have hnexty : dtkAccY221 rho = dtkAccY220 rho + rho 5145 := by
      unfold dtkAccY221 dtkAccY220
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4165 14 70]
      ring
    have hsum : dtkAccX220 rho + dtkAccY220 rho = rho 5137 := by
      unfold dtkAccX220 dtkAccY220
      linear_combination r5643
    have ha0 : (rho 5135 + rho 5136) * (dtkAccX220 rho + dtkAccY220 rho) = rho 5138 := by
      rw [hsum]
      linear_combination r5644
    have ha1 : rho 5136 * dtkAccX220 rho = rho 5139 := by
      unfold dtkAccX220
      linear_combination r5645
    have ha2 : rho 5135 * dtkAccY220 rho = rho 5140 := by
      unfold dtkAccY220
      linear_combination r5646
    have ha3 : 3021 * rho 5139 * rho 5140 = rho 5141 := by
      linear_combination r5647
    have ha4 : rho 5142 * (1 + rho 5141) = rho 5139 + rho 5140 := by
      linear_combination r5648
    have ha5 : rho 5143 * (1 - rho 5141) = rho 5138 - rho 5139 - rho 5140 := by
      linear_combination r5649
    have haddx :
        rho 5142 * (1 + 3021 * (rho 5136 * dtkAccX220 rho) * (rho 5135 * dtkAccY220 rho)) =
          rho 5136 * dtkAccX220 rho + rho 5135 * dtkAccY220 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5143 * (1 - 3021 * (rho 5136 * dtkAccX220 rho) * (rho 5135 * dtkAccY220 rho)) =
          (-1) * (rho 5136 * dtkAccX220 rho) - rho 5135 * dtkAccY220 rho +
            (dtkAccY220 rho - dtkAccX220 rho * (-1)) * (rho 5135 + rho 5136) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5143 * (1 - rho 5141) = rho 5138 - rho 5139 - rho 5140 := ha5
        _ = (-1) * rho 5139 - rho 5140 + (dtkAccY220 rho - dtkAccX220 rho * (-1)) * (rho 5135 + rho 5136) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX221 rho = dtkAccX220 rho - Bool.toZMod bit * (dtkAccX220 rho - rho 5142) := by
      have hd : rho 5144 = Bool.toZMod bit * (rho 5142 - dtkAccX220 rho) := by
        rw [← hbit]
        unfold dtkAccX220
        linear_combination -r5650
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY221 rho = dtkAccY220 rho - Bool.toZMod bit * (dtkAccY220 rho - rho 5143) := by
      have hd : rho 5145 = Bool.toZMod bit * (rho 5143 - dtkAccY220 rho) := by
        rw [← hbit]
        unfold dtkAccY220
        linear_combination -r5651
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5135 * rho 5136 = rho 5146 := by linear_combination r5652
    have hd1 : rho 5135 * rho 5135 = rho 5147 := by linear_combination r5653
    have hd2 : rho 5136 * rho 5136 = rho 5148 := by linear_combination r5654
    have hd3 : rho 5149 * (rho 5136 * rho 5136 + rho 5135 * rho 5135 * (-1)) = 2 * (rho 5135 * rho 5136) := by
      rw [hd0, hd1, hd2]
      linear_combination r5655
    have hd4 : rho 5150 * (2 - (rho 5136 * rho 5136 + rho 5135 * rho 5135 * (-1))) = rho 5136 * rho 5136 - rho 5135 * rho 5135 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5656
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX220 rho : F), (dtkAccY220 rho : F)⟩
      ⟨(rho 5135 : F), (rho 5136 : F)⟩
      ⟨(rho 5142 : F), (rho 5143 : F)⟩
      ⟨(dtkAccX221 rho : F), (dtkAccY221 rho : F)⟩
      ⟨(rho 5149 : F), (rho 5150 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung220

theorem dtk_rows221 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5657 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5658 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5659 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5660 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5661 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5662 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5663 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5664 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5665 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5666 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5667 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5668 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5669 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5670 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p70, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart70 at p70
  rcases p70 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5657, r5658, r5659, r5660, r5661, r5662, r5663, r5664, r5665, r5666, r5667, r5668, r5669, r5670, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5657, r5658, r5659, r5660, r5661, r5662, r5663, r5664, r5665, r5666, r5667, r5668, r5669, r5670⟩

theorem dtk_rung221 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1204 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX221 rho : F), (dtkAccY221 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5149 : F), (rho 5150 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX221 rho : F), (dtkAccY221 rho : F)⟩
        ⟨(rho 5149 : F), (rho 5150 : F)⟩
        ⟨(dtkAccX222 rho : F), (dtkAccY222 rho : F)⟩
        ⟨(rho 5163 : F), (rho 5164 : F)⟩ := by
  obtain ⟨r5657, r5658, r5659, r5660, r5661, r5662, r5663, r5664, r5665, r5666, r5667, r5668, r5669, r5670⟩ := dtk_rows221 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5657 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1191 at r5657
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5657
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5658 at r5658
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5659 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1192 at r5659
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5659
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5660 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1193 at r5660
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5660
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5661 at r5661
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5662 at r5662
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5663 at r5663
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5664 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1194 at r5664
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5664
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5665 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1195 at r5665
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5665
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5666 at r5666
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5667 at r5667
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5668 at r5668
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5669 at r5669
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5670 at r5670
  have hrung221 (bit : Bool) (hbit : rho 1204 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX221 rho : F), (dtkAccY221 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5149 : F), (rho 5150 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX221 rho : F), (dtkAccY221 rho : F)⟩
        ⟨(rho 5149 : F), (rho 5150 : F)⟩
        ⟨(dtkAccX222 rho : F), (dtkAccY222 rho : F)⟩
        ⟨(rho 5163 : F), (rho 5164 : F)⟩ := by
    have hnextx : dtkAccX222 rho = dtkAccX221 rho + rho 5158 := by
      unfold dtkAccX222 dtkAccX221
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 71]
      ring
    have hnexty : dtkAccY222 rho = dtkAccY221 rho + rho 5159 := by
      unfold dtkAccY222 dtkAccY221
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4165 14 71]
      ring
    have hsum : dtkAccX221 rho + dtkAccY221 rho = rho 5151 := by
      unfold dtkAccX221 dtkAccY221
      linear_combination r5657
    have ha0 : (rho 5149 + rho 5150) * (dtkAccX221 rho + dtkAccY221 rho) = rho 5152 := by
      rw [hsum]
      linear_combination r5658
    have ha1 : rho 5150 * dtkAccX221 rho = rho 5153 := by
      unfold dtkAccX221
      linear_combination r5659
    have ha2 : rho 5149 * dtkAccY221 rho = rho 5154 := by
      unfold dtkAccY221
      linear_combination r5660
    have ha3 : 3021 * rho 5153 * rho 5154 = rho 5155 := by
      linear_combination r5661
    have ha4 : rho 5156 * (1 + rho 5155) = rho 5153 + rho 5154 := by
      linear_combination r5662
    have ha5 : rho 5157 * (1 - rho 5155) = rho 5152 - rho 5153 - rho 5154 := by
      linear_combination r5663
    have haddx :
        rho 5156 * (1 + 3021 * (rho 5150 * dtkAccX221 rho) * (rho 5149 * dtkAccY221 rho)) =
          rho 5150 * dtkAccX221 rho + rho 5149 * dtkAccY221 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5157 * (1 - 3021 * (rho 5150 * dtkAccX221 rho) * (rho 5149 * dtkAccY221 rho)) =
          (-1) * (rho 5150 * dtkAccX221 rho) - rho 5149 * dtkAccY221 rho +
            (dtkAccY221 rho - dtkAccX221 rho * (-1)) * (rho 5149 + rho 5150) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5157 * (1 - rho 5155) = rho 5152 - rho 5153 - rho 5154 := ha5
        _ = (-1) * rho 5153 - rho 5154 + (dtkAccY221 rho - dtkAccX221 rho * (-1)) * (rho 5149 + rho 5150) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX222 rho = dtkAccX221 rho - Bool.toZMod bit * (dtkAccX221 rho - rho 5156) := by
      have hd : rho 5158 = Bool.toZMod bit * (rho 5156 - dtkAccX221 rho) := by
        rw [← hbit]
        unfold dtkAccX221
        linear_combination -r5664
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY222 rho = dtkAccY221 rho - Bool.toZMod bit * (dtkAccY221 rho - rho 5157) := by
      have hd : rho 5159 = Bool.toZMod bit * (rho 5157 - dtkAccY221 rho) := by
        rw [← hbit]
        unfold dtkAccY221
        linear_combination -r5665
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5149 * rho 5150 = rho 5160 := by linear_combination r5666
    have hd1 : rho 5149 * rho 5149 = rho 5161 := by linear_combination r5667
    have hd2 : rho 5150 * rho 5150 = rho 5162 := by linear_combination r5668
    have hd3 : rho 5163 * (rho 5150 * rho 5150 + rho 5149 * rho 5149 * (-1)) = 2 * (rho 5149 * rho 5150) := by
      rw [hd0, hd1, hd2]
      linear_combination r5669
    have hd4 : rho 5164 * (2 - (rho 5150 * rho 5150 + rho 5149 * rho 5149 * (-1))) = rho 5150 * rho 5150 - rho 5149 * rho 5149 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5670
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX221 rho : F), (dtkAccY221 rho : F)⟩
      ⟨(rho 5149 : F), (rho 5150 : F)⟩
      ⟨(rho 5156 : F), (rho 5157 : F)⟩
      ⟨(dtkAccX222 rho : F), (dtkAccY222 rho : F)⟩
      ⟨(rho 5163 : F), (rho 5164 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung221

theorem dtk_rows222 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5671 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5672 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5673 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5674 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5675 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5676 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5677 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5678 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5679 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5680 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5681 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5682 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5683 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5684 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p70, p71, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart70 at p70
  rcases p70 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5671, r5672, r5673, r5674, r5675, r5676, r5677, r5678, r5679⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart71 at p71
  rcases p71 with ⟨r5680, r5681, r5682, r5683, r5684, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5671, r5672, r5673, r5674, r5675, r5676, r5677, r5678, r5679, r5680, r5681, r5682, r5683, r5684⟩

theorem dtk_rung222 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1205 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX222 rho : F), (dtkAccY222 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5163 : F), (rho 5164 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX222 rho : F), (dtkAccY222 rho : F)⟩
        ⟨(rho 5163 : F), (rho 5164 : F)⟩
        ⟨(dtkAccX223 rho : F), (dtkAccY223 rho : F)⟩
        ⟨(rho 5177 : F), (rho 5178 : F)⟩ := by
  obtain ⟨r5671, r5672, r5673, r5674, r5675, r5676, r5677, r5678, r5679, r5680, r5681, r5682, r5683, r5684⟩ := dtk_rows222 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5671 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1196 at r5671
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5671
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5672 at r5672
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5673 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1197 at r5673
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5673
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5674 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1198 at r5674
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5674
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5675 at r5675
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5676 at r5676
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5677 at r5677
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5678 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1199 at r5678
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5678
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5679 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1200 at r5679
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5679
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5680 at r5680
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5681 at r5681
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5682 at r5682
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5683 at r5683
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5684 at r5684
  have hrung222 (bit : Bool) (hbit : rho 1205 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX222 rho : F), (dtkAccY222 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5163 : F), (rho 5164 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX222 rho : F), (dtkAccY222 rho : F)⟩
        ⟨(rho 5163 : F), (rho 5164 : F)⟩
        ⟨(dtkAccX223 rho : F), (dtkAccY223 rho : F)⟩
        ⟨(rho 5177 : F), (rho 5178 : F)⟩ := by
    have hnextx : dtkAccX223 rho = dtkAccX222 rho + rho 5172 := by
      unfold dtkAccX223 dtkAccX222
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 72]
      ring
    have hnexty : dtkAccY223 rho = dtkAccY222 rho + rho 5173 := by
      unfold dtkAccY223 dtkAccY222
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4165 14 72]
      ring
    have hsum : dtkAccX222 rho + dtkAccY222 rho = rho 5165 := by
      unfold dtkAccX222 dtkAccY222
      linear_combination r5671
    have ha0 : (rho 5163 + rho 5164) * (dtkAccX222 rho + dtkAccY222 rho) = rho 5166 := by
      rw [hsum]
      linear_combination r5672
    have ha1 : rho 5164 * dtkAccX222 rho = rho 5167 := by
      unfold dtkAccX222
      linear_combination r5673
    have ha2 : rho 5163 * dtkAccY222 rho = rho 5168 := by
      unfold dtkAccY222
      linear_combination r5674
    have ha3 : 3021 * rho 5167 * rho 5168 = rho 5169 := by
      linear_combination r5675
    have ha4 : rho 5170 * (1 + rho 5169) = rho 5167 + rho 5168 := by
      linear_combination r5676
    have ha5 : rho 5171 * (1 - rho 5169) = rho 5166 - rho 5167 - rho 5168 := by
      linear_combination r5677
    have haddx :
        rho 5170 * (1 + 3021 * (rho 5164 * dtkAccX222 rho) * (rho 5163 * dtkAccY222 rho)) =
          rho 5164 * dtkAccX222 rho + rho 5163 * dtkAccY222 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5171 * (1 - 3021 * (rho 5164 * dtkAccX222 rho) * (rho 5163 * dtkAccY222 rho)) =
          (-1) * (rho 5164 * dtkAccX222 rho) - rho 5163 * dtkAccY222 rho +
            (dtkAccY222 rho - dtkAccX222 rho * (-1)) * (rho 5163 + rho 5164) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5171 * (1 - rho 5169) = rho 5166 - rho 5167 - rho 5168 := ha5
        _ = (-1) * rho 5167 - rho 5168 + (dtkAccY222 rho - dtkAccX222 rho * (-1)) * (rho 5163 + rho 5164) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX223 rho = dtkAccX222 rho - Bool.toZMod bit * (dtkAccX222 rho - rho 5170) := by
      have hd : rho 5172 = Bool.toZMod bit * (rho 5170 - dtkAccX222 rho) := by
        rw [← hbit]
        unfold dtkAccX222
        linear_combination -r5678
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY223 rho = dtkAccY222 rho - Bool.toZMod bit * (dtkAccY222 rho - rho 5171) := by
      have hd : rho 5173 = Bool.toZMod bit * (rho 5171 - dtkAccY222 rho) := by
        rw [← hbit]
        unfold dtkAccY222
        linear_combination -r5679
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5163 * rho 5164 = rho 5174 := by linear_combination r5680
    have hd1 : rho 5163 * rho 5163 = rho 5175 := by linear_combination r5681
    have hd2 : rho 5164 * rho 5164 = rho 5176 := by linear_combination r5682
    have hd3 : rho 5177 * (rho 5164 * rho 5164 + rho 5163 * rho 5163 * (-1)) = 2 * (rho 5163 * rho 5164) := by
      rw [hd0, hd1, hd2]
      linear_combination r5683
    have hd4 : rho 5178 * (2 - (rho 5164 * rho 5164 + rho 5163 * rho 5163 * (-1))) = rho 5164 * rho 5164 - rho 5163 * rho 5163 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5684
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX222 rho : F), (dtkAccY222 rho : F)⟩
      ⟨(rho 5163 : F), (rho 5164 : F)⟩
      ⟨(rho 5170 : F), (rho 5171 : F)⟩
      ⟨(dtkAccX223 rho : F), (dtkAccY223 rho : F)⟩
      ⟨(rho 5177 : F), (rho 5178 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung222

theorem dtk_rows223 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5685 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5686 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5687 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5688 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5689 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5690 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5691 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5692 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5693 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5694 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5695 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5696 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5697 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5698 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p71, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart71 at p71
  rcases p71 with ⟨_, _, _, _, _, r5685, r5686, r5687, r5688, r5689, r5690, r5691, r5692, r5693, r5694, r5695, r5696, r5697, r5698, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5685, r5686, r5687, r5688, r5689, r5690, r5691, r5692, r5693, r5694, r5695, r5696, r5697, r5698⟩

theorem dtk_rung223 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1206 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX223 rho : F), (dtkAccY223 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5177 : F), (rho 5178 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX223 rho : F), (dtkAccY223 rho : F)⟩
        ⟨(rho 5177 : F), (rho 5178 : F)⟩
        ⟨(dtkAccX224 rho : F), (dtkAccY224 rho : F)⟩
        ⟨(rho 5191 : F), (rho 5192 : F)⟩ := by
  obtain ⟨r5685, r5686, r5687, r5688, r5689, r5690, r5691, r5692, r5693, r5694, r5695, r5696, r5697, r5698⟩ := dtk_rows223 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5685 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1201 at r5685
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5685
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5686 at r5686
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5687 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1202 at r5687
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5687
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5688 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1203 at r5688
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5688
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5689 at r5689
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5690 at r5690
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5691 at r5691
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5692 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1204 at r5692
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5692
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5693 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1205 at r5693
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5693
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5694 at r5694
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5695 at r5695
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5696 at r5696
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5697 at r5697
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5698 at r5698
  have hrung223 (bit : Bool) (hbit : rho 1206 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX223 rho : F), (dtkAccY223 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5177 : F), (rho 5178 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX223 rho : F), (dtkAccY223 rho : F)⟩
        ⟨(rho 5177 : F), (rho 5178 : F)⟩
        ⟨(dtkAccX224 rho : F), (dtkAccY224 rho : F)⟩
        ⟨(rho 5191 : F), (rho 5192 : F)⟩ := by
    have hnextx : dtkAccX224 rho = dtkAccX223 rho + rho 5186 := by
      unfold dtkAccX224 dtkAccX223
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 73]
      ring
    have hnexty : dtkAccY224 rho = dtkAccY223 rho + rho 5187 := by
      unfold dtkAccY224 dtkAccY223
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4165 14 73]
      ring
    have hsum : dtkAccX223 rho + dtkAccY223 rho = rho 5179 := by
      unfold dtkAccX223 dtkAccY223
      linear_combination r5685
    have ha0 : (rho 5177 + rho 5178) * (dtkAccX223 rho + dtkAccY223 rho) = rho 5180 := by
      rw [hsum]
      linear_combination r5686
    have ha1 : rho 5178 * dtkAccX223 rho = rho 5181 := by
      unfold dtkAccX223
      linear_combination r5687
    have ha2 : rho 5177 * dtkAccY223 rho = rho 5182 := by
      unfold dtkAccY223
      linear_combination r5688
    have ha3 : 3021 * rho 5181 * rho 5182 = rho 5183 := by
      linear_combination r5689
    have ha4 : rho 5184 * (1 + rho 5183) = rho 5181 + rho 5182 := by
      linear_combination r5690
    have ha5 : rho 5185 * (1 - rho 5183) = rho 5180 - rho 5181 - rho 5182 := by
      linear_combination r5691
    have haddx :
        rho 5184 * (1 + 3021 * (rho 5178 * dtkAccX223 rho) * (rho 5177 * dtkAccY223 rho)) =
          rho 5178 * dtkAccX223 rho + rho 5177 * dtkAccY223 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5185 * (1 - 3021 * (rho 5178 * dtkAccX223 rho) * (rho 5177 * dtkAccY223 rho)) =
          (-1) * (rho 5178 * dtkAccX223 rho) - rho 5177 * dtkAccY223 rho +
            (dtkAccY223 rho - dtkAccX223 rho * (-1)) * (rho 5177 + rho 5178) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5185 * (1 - rho 5183) = rho 5180 - rho 5181 - rho 5182 := ha5
        _ = (-1) * rho 5181 - rho 5182 + (dtkAccY223 rho - dtkAccX223 rho * (-1)) * (rho 5177 + rho 5178) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX224 rho = dtkAccX223 rho - Bool.toZMod bit * (dtkAccX223 rho - rho 5184) := by
      have hd : rho 5186 = Bool.toZMod bit * (rho 5184 - dtkAccX223 rho) := by
        rw [← hbit]
        unfold dtkAccX223
        linear_combination -r5692
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY224 rho = dtkAccY223 rho - Bool.toZMod bit * (dtkAccY223 rho - rho 5185) := by
      have hd : rho 5187 = Bool.toZMod bit * (rho 5185 - dtkAccY223 rho) := by
        rw [← hbit]
        unfold dtkAccY223
        linear_combination -r5693
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5177 * rho 5178 = rho 5188 := by linear_combination r5694
    have hd1 : rho 5177 * rho 5177 = rho 5189 := by linear_combination r5695
    have hd2 : rho 5178 * rho 5178 = rho 5190 := by linear_combination r5696
    have hd3 : rho 5191 * (rho 5178 * rho 5178 + rho 5177 * rho 5177 * (-1)) = 2 * (rho 5177 * rho 5178) := by
      rw [hd0, hd1, hd2]
      linear_combination r5697
    have hd4 : rho 5192 * (2 - (rho 5178 * rho 5178 + rho 5177 * rho 5177 * (-1))) = rho 5178 * rho 5178 - rho 5177 * rho 5177 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5698
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX223 rho : F), (dtkAccY223 rho : F)⟩
      ⟨(rho 5177 : F), (rho 5178 : F)⟩
      ⟨(rho 5184 : F), (rho 5185 : F)⟩
      ⟨(dtkAccX224 rho : F), (dtkAccY224 rho : F)⟩
      ⟨(rho 5191 : F), (rho 5192 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung223

theorem dtk_rows224 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5699 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5700 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5701 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5702 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5703 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5704 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5705 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5706 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5707 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5708 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5709 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5710 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5711 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5712 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p71, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart71 at p71
  rcases p71 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5699, r5700, r5701, r5702, r5703, r5704, r5705, r5706, r5707, r5708, r5709, r5710, r5711, r5712, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5699, r5700, r5701, r5702, r5703, r5704, r5705, r5706, r5707, r5708, r5709, r5710, r5711, r5712⟩

theorem dtk_rung224 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1207 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX224 rho : F), (dtkAccY224 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5191 : F), (rho 5192 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX224 rho : F), (dtkAccY224 rho : F)⟩
        ⟨(rho 5191 : F), (rho 5192 : F)⟩
        ⟨(dtkAccX225 rho : F), (dtkAccY225 rho : F)⟩
        ⟨(rho 5205 : F), (rho 5206 : F)⟩ := by
  obtain ⟨r5699, r5700, r5701, r5702, r5703, r5704, r5705, r5706, r5707, r5708, r5709, r5710, r5711, r5712⟩ := dtk_rows224 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5699 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1206 at r5699
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5699
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5700 at r5700
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5701 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1207 at r5701
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5701
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5702 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1208 at r5702
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5702
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5703 at r5703
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5704 at r5704
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5705 at r5705
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5706 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1209 at r5706
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5706
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5707 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1210 at r5707
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5707
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5708 at r5708
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5709 at r5709
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5710 at r5710
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5711 at r5711
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5712 at r5712
  have hrung224 (bit : Bool) (hbit : rho 1207 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX224 rho : F), (dtkAccY224 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5191 : F), (rho 5192 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX224 rho : F), (dtkAccY224 rho : F)⟩
        ⟨(rho 5191 : F), (rho 5192 : F)⟩
        ⟨(dtkAccX225 rho : F), (dtkAccY225 rho : F)⟩
        ⟨(rho 5205 : F), (rho 5206 : F)⟩ := by
    have hnextx : dtkAccX225 rho = dtkAccX224 rho + rho 5200 := by
      unfold dtkAccX225 dtkAccX224
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 74]
      ring
    have hnexty : dtkAccY225 rho = dtkAccY224 rho + rho 5201 := by
      unfold dtkAccY225 dtkAccY224
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4165 14 74]
      ring
    have hsum : dtkAccX224 rho + dtkAccY224 rho = rho 5193 := by
      unfold dtkAccX224 dtkAccY224
      linear_combination r5699
    have ha0 : (rho 5191 + rho 5192) * (dtkAccX224 rho + dtkAccY224 rho) = rho 5194 := by
      rw [hsum]
      linear_combination r5700
    have ha1 : rho 5192 * dtkAccX224 rho = rho 5195 := by
      unfold dtkAccX224
      linear_combination r5701
    have ha2 : rho 5191 * dtkAccY224 rho = rho 5196 := by
      unfold dtkAccY224
      linear_combination r5702
    have ha3 : 3021 * rho 5195 * rho 5196 = rho 5197 := by
      linear_combination r5703
    have ha4 : rho 5198 * (1 + rho 5197) = rho 5195 + rho 5196 := by
      linear_combination r5704
    have ha5 : rho 5199 * (1 - rho 5197) = rho 5194 - rho 5195 - rho 5196 := by
      linear_combination r5705
    have haddx :
        rho 5198 * (1 + 3021 * (rho 5192 * dtkAccX224 rho) * (rho 5191 * dtkAccY224 rho)) =
          rho 5192 * dtkAccX224 rho + rho 5191 * dtkAccY224 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5199 * (1 - 3021 * (rho 5192 * dtkAccX224 rho) * (rho 5191 * dtkAccY224 rho)) =
          (-1) * (rho 5192 * dtkAccX224 rho) - rho 5191 * dtkAccY224 rho +
            (dtkAccY224 rho - dtkAccX224 rho * (-1)) * (rho 5191 + rho 5192) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5199 * (1 - rho 5197) = rho 5194 - rho 5195 - rho 5196 := ha5
        _ = (-1) * rho 5195 - rho 5196 + (dtkAccY224 rho - dtkAccX224 rho * (-1)) * (rho 5191 + rho 5192) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX225 rho = dtkAccX224 rho - Bool.toZMod bit * (dtkAccX224 rho - rho 5198) := by
      have hd : rho 5200 = Bool.toZMod bit * (rho 5198 - dtkAccX224 rho) := by
        rw [← hbit]
        unfold dtkAccX224
        linear_combination -r5706
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY225 rho = dtkAccY224 rho - Bool.toZMod bit * (dtkAccY224 rho - rho 5199) := by
      have hd : rho 5201 = Bool.toZMod bit * (rho 5199 - dtkAccY224 rho) := by
        rw [← hbit]
        unfold dtkAccY224
        linear_combination -r5707
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5191 * rho 5192 = rho 5202 := by linear_combination r5708
    have hd1 : rho 5191 * rho 5191 = rho 5203 := by linear_combination r5709
    have hd2 : rho 5192 * rho 5192 = rho 5204 := by linear_combination r5710
    have hd3 : rho 5205 * (rho 5192 * rho 5192 + rho 5191 * rho 5191 * (-1)) = 2 * (rho 5191 * rho 5192) := by
      rw [hd0, hd1, hd2]
      linear_combination r5711
    have hd4 : rho 5206 * (2 - (rho 5192 * rho 5192 + rho 5191 * rho 5191 * (-1))) = rho 5192 * rho 5192 - rho 5191 * rho 5191 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5712
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX224 rho : F), (dtkAccY224 rho : F)⟩
      ⟨(rho 5191 : F), (rho 5192 : F)⟩
      ⟨(rho 5198 : F), (rho 5199 : F)⟩
      ⟨(dtkAccX225 rho : F), (dtkAccY225 rho : F)⟩
      ⟨(rho 5205 : F), (rho 5206 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung224

theorem dtk_rows225 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5713 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5714 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5715 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5716 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5717 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5718 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5719 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5720 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5721 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5722 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5723 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5724 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5725 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5726 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p71, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart71 at p71
  rcases p71 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5713, r5714, r5715, r5716, r5717, r5718, r5719, r5720, r5721, r5722, r5723, r5724, r5725, r5726, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5713, r5714, r5715, r5716, r5717, r5718, r5719, r5720, r5721, r5722, r5723, r5724, r5725, r5726⟩

theorem dtk_rung225 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1208 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX225 rho : F), (dtkAccY225 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5205 : F), (rho 5206 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX225 rho : F), (dtkAccY225 rho : F)⟩
        ⟨(rho 5205 : F), (rho 5206 : F)⟩
        ⟨(dtkAccX226 rho : F), (dtkAccY226 rho : F)⟩
        ⟨(rho 5219 : F), (rho 5220 : F)⟩ := by
  obtain ⟨r5713, r5714, r5715, r5716, r5717, r5718, r5719, r5720, r5721, r5722, r5723, r5724, r5725, r5726⟩ := dtk_rows225 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5713 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1211 at r5713
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5713
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5714 at r5714
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5715 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1212 at r5715
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5715
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5716 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1213 at r5716
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5716
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5717 at r5717
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5718 at r5718
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5719 at r5719
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5720 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1214 at r5720
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5720
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5721 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1215 at r5721
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5721
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5722 at r5722
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5723 at r5723
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5724 at r5724
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5725 at r5725
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5726 at r5726
  have hrung225 (bit : Bool) (hbit : rho 1208 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX225 rho : F), (dtkAccY225 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5205 : F), (rho 5206 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX225 rho : F), (dtkAccY225 rho : F)⟩
        ⟨(rho 5205 : F), (rho 5206 : F)⟩
        ⟨(dtkAccX226 rho : F), (dtkAccY226 rho : F)⟩
        ⟨(rho 5219 : F), (rho 5220 : F)⟩ := by
    have hnextx : dtkAccX226 rho = dtkAccX225 rho + rho 5214 := by
      unfold dtkAccX226 dtkAccX225
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 75]
      ring
    have hnexty : dtkAccY226 rho = dtkAccY225 rho + rho 5215 := by
      unfold dtkAccY226 dtkAccY225
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4165 14 75]
      ring
    have hsum : dtkAccX225 rho + dtkAccY225 rho = rho 5207 := by
      unfold dtkAccX225 dtkAccY225
      linear_combination r5713
    have ha0 : (rho 5205 + rho 5206) * (dtkAccX225 rho + dtkAccY225 rho) = rho 5208 := by
      rw [hsum]
      linear_combination r5714
    have ha1 : rho 5206 * dtkAccX225 rho = rho 5209 := by
      unfold dtkAccX225
      linear_combination r5715
    have ha2 : rho 5205 * dtkAccY225 rho = rho 5210 := by
      unfold dtkAccY225
      linear_combination r5716
    have ha3 : 3021 * rho 5209 * rho 5210 = rho 5211 := by
      linear_combination r5717
    have ha4 : rho 5212 * (1 + rho 5211) = rho 5209 + rho 5210 := by
      linear_combination r5718
    have ha5 : rho 5213 * (1 - rho 5211) = rho 5208 - rho 5209 - rho 5210 := by
      linear_combination r5719
    have haddx :
        rho 5212 * (1 + 3021 * (rho 5206 * dtkAccX225 rho) * (rho 5205 * dtkAccY225 rho)) =
          rho 5206 * dtkAccX225 rho + rho 5205 * dtkAccY225 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5213 * (1 - 3021 * (rho 5206 * dtkAccX225 rho) * (rho 5205 * dtkAccY225 rho)) =
          (-1) * (rho 5206 * dtkAccX225 rho) - rho 5205 * dtkAccY225 rho +
            (dtkAccY225 rho - dtkAccX225 rho * (-1)) * (rho 5205 + rho 5206) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5213 * (1 - rho 5211) = rho 5208 - rho 5209 - rho 5210 := ha5
        _ = (-1) * rho 5209 - rho 5210 + (dtkAccY225 rho - dtkAccX225 rho * (-1)) * (rho 5205 + rho 5206) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX226 rho = dtkAccX225 rho - Bool.toZMod bit * (dtkAccX225 rho - rho 5212) := by
      have hd : rho 5214 = Bool.toZMod bit * (rho 5212 - dtkAccX225 rho) := by
        rw [← hbit]
        unfold dtkAccX225
        linear_combination -r5720
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY226 rho = dtkAccY225 rho - Bool.toZMod bit * (dtkAccY225 rho - rho 5213) := by
      have hd : rho 5215 = Bool.toZMod bit * (rho 5213 - dtkAccY225 rho) := by
        rw [← hbit]
        unfold dtkAccY225
        linear_combination -r5721
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5205 * rho 5206 = rho 5216 := by linear_combination r5722
    have hd1 : rho 5205 * rho 5205 = rho 5217 := by linear_combination r5723
    have hd2 : rho 5206 * rho 5206 = rho 5218 := by linear_combination r5724
    have hd3 : rho 5219 * (rho 5206 * rho 5206 + rho 5205 * rho 5205 * (-1)) = 2 * (rho 5205 * rho 5206) := by
      rw [hd0, hd1, hd2]
      linear_combination r5725
    have hd4 : rho 5220 * (2 - (rho 5206 * rho 5206 + rho 5205 * rho 5205 * (-1))) = rho 5206 * rho 5206 - rho 5205 * rho 5205 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5726
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX225 rho : F), (dtkAccY225 rho : F)⟩
      ⟨(rho 5205 : F), (rho 5206 : F)⟩
      ⟨(rho 5212 : F), (rho 5213 : F)⟩
      ⟨(dtkAccX226 rho : F), (dtkAccY226 rho : F)⟩
      ⟨(rho 5219 : F), (rho 5220 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung225

theorem dtk_rows226 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5727 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5728 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5729 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5730 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5731 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5732 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5733 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5734 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5735 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5736 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5737 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5738 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5739 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5740 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p71, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart71 at p71
  rcases p71 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5727, r5728, r5729, r5730, r5731, r5732, r5733, r5734, r5735, r5736, r5737, r5738, r5739, r5740, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5727, r5728, r5729, r5730, r5731, r5732, r5733, r5734, r5735, r5736, r5737, r5738, r5739, r5740⟩

theorem dtk_rung226 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1209 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX226 rho : F), (dtkAccY226 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5219 : F), (rho 5220 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX226 rho : F), (dtkAccY226 rho : F)⟩
        ⟨(rho 5219 : F), (rho 5220 : F)⟩
        ⟨(dtkAccX227 rho : F), (dtkAccY227 rho : F)⟩
        ⟨(rho 5233 : F), (rho 5234 : F)⟩ := by
  obtain ⟨r5727, r5728, r5729, r5730, r5731, r5732, r5733, r5734, r5735, r5736, r5737, r5738, r5739, r5740⟩ := dtk_rows226 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5727 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1216 at r5727
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5727
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5728 at r5728
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5729 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1217 at r5729
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5729
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5730 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1218 at r5730
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5730
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5731 at r5731
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5732 at r5732
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5733 at r5733
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5734 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1219 at r5734
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5734
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5735 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1220 at r5735
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5735
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5736 at r5736
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5737 at r5737
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5738 at r5738
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5739 at r5739
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5740 at r5740
  have hrung226 (bit : Bool) (hbit : rho 1209 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX226 rho : F), (dtkAccY226 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5219 : F), (rho 5220 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX226 rho : F), (dtkAccY226 rho : F)⟩
        ⟨(rho 5219 : F), (rho 5220 : F)⟩
        ⟨(dtkAccX227 rho : F), (dtkAccY227 rho : F)⟩
        ⟨(rho 5233 : F), (rho 5234 : F)⟩ := by
    have hnextx : dtkAccX227 rho = dtkAccX226 rho + rho 5228 := by
      unfold dtkAccX227 dtkAccX226
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 76]
      ring
    have hnexty : dtkAccY227 rho = dtkAccY226 rho + rho 5229 := by
      unfold dtkAccY227 dtkAccY226
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4165 14 76]
      ring
    have hsum : dtkAccX226 rho + dtkAccY226 rho = rho 5221 := by
      unfold dtkAccX226 dtkAccY226
      linear_combination r5727
    have ha0 : (rho 5219 + rho 5220) * (dtkAccX226 rho + dtkAccY226 rho) = rho 5222 := by
      rw [hsum]
      linear_combination r5728
    have ha1 : rho 5220 * dtkAccX226 rho = rho 5223 := by
      unfold dtkAccX226
      linear_combination r5729
    have ha2 : rho 5219 * dtkAccY226 rho = rho 5224 := by
      unfold dtkAccY226
      linear_combination r5730
    have ha3 : 3021 * rho 5223 * rho 5224 = rho 5225 := by
      linear_combination r5731
    have ha4 : rho 5226 * (1 + rho 5225) = rho 5223 + rho 5224 := by
      linear_combination r5732
    have ha5 : rho 5227 * (1 - rho 5225) = rho 5222 - rho 5223 - rho 5224 := by
      linear_combination r5733
    have haddx :
        rho 5226 * (1 + 3021 * (rho 5220 * dtkAccX226 rho) * (rho 5219 * dtkAccY226 rho)) =
          rho 5220 * dtkAccX226 rho + rho 5219 * dtkAccY226 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5227 * (1 - 3021 * (rho 5220 * dtkAccX226 rho) * (rho 5219 * dtkAccY226 rho)) =
          (-1) * (rho 5220 * dtkAccX226 rho) - rho 5219 * dtkAccY226 rho +
            (dtkAccY226 rho - dtkAccX226 rho * (-1)) * (rho 5219 + rho 5220) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5227 * (1 - rho 5225) = rho 5222 - rho 5223 - rho 5224 := ha5
        _ = (-1) * rho 5223 - rho 5224 + (dtkAccY226 rho - dtkAccX226 rho * (-1)) * (rho 5219 + rho 5220) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX227 rho = dtkAccX226 rho - Bool.toZMod bit * (dtkAccX226 rho - rho 5226) := by
      have hd : rho 5228 = Bool.toZMod bit * (rho 5226 - dtkAccX226 rho) := by
        rw [← hbit]
        unfold dtkAccX226
        linear_combination -r5734
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY227 rho = dtkAccY226 rho - Bool.toZMod bit * (dtkAccY226 rho - rho 5227) := by
      have hd : rho 5229 = Bool.toZMod bit * (rho 5227 - dtkAccY226 rho) := by
        rw [← hbit]
        unfold dtkAccY226
        linear_combination -r5735
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5219 * rho 5220 = rho 5230 := by linear_combination r5736
    have hd1 : rho 5219 * rho 5219 = rho 5231 := by linear_combination r5737
    have hd2 : rho 5220 * rho 5220 = rho 5232 := by linear_combination r5738
    have hd3 : rho 5233 * (rho 5220 * rho 5220 + rho 5219 * rho 5219 * (-1)) = 2 * (rho 5219 * rho 5220) := by
      rw [hd0, hd1, hd2]
      linear_combination r5739
    have hd4 : rho 5234 * (2 - (rho 5220 * rho 5220 + rho 5219 * rho 5219 * (-1))) = rho 5220 * rho 5220 - rho 5219 * rho 5219 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5740
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX226 rho : F), (dtkAccY226 rho : F)⟩
      ⟨(rho 5219 : F), (rho 5220 : F)⟩
      ⟨(rho 5226 : F), (rho 5227 : F)⟩
      ⟨(dtkAccX227 rho : F), (dtkAccY227 rho : F)⟩
      ⟨(rho 5233 : F), (rho 5234 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung226

theorem dtk_rows227 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5741 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5742 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5743 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5744 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5745 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5746 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5747 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5748 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5749 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5750 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5751 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5752 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5753 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5754 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p71, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart71 at p71
  rcases p71 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5741, r5742, r5743, r5744, r5745, r5746, r5747, r5748, r5749, r5750, r5751, r5752, r5753, r5754, _, _, _, _, _⟩
  exact ⟨r5741, r5742, r5743, r5744, r5745, r5746, r5747, r5748, r5749, r5750, r5751, r5752, r5753, r5754⟩

theorem dtk_rung227 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1210 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX227 rho : F), (dtkAccY227 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5233 : F), (rho 5234 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX227 rho : F), (dtkAccY227 rho : F)⟩
        ⟨(rho 5233 : F), (rho 5234 : F)⟩
        ⟨(dtkAccX228 rho : F), (dtkAccY228 rho : F)⟩
        ⟨(rho 5247 : F), (rho 5248 : F)⟩ := by
  obtain ⟨r5741, r5742, r5743, r5744, r5745, r5746, r5747, r5748, r5749, r5750, r5751, r5752, r5753, r5754⟩ := dtk_rows227 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5741 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1221 at r5741
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5741
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5742 at r5742
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5743 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1222 at r5743
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5743
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5744 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1223 at r5744
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5744
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5745 at r5745
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5746 at r5746
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5747 at r5747
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5748 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1224 at r5748
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5748
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5749 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1225 at r5749
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5749
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5750 at r5750
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5751 at r5751
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5752 at r5752
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5753 at r5753
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5754 at r5754
  have hrung227 (bit : Bool) (hbit : rho 1210 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX227 rho : F), (dtkAccY227 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5233 : F), (rho 5234 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX227 rho : F), (dtkAccY227 rho : F)⟩
        ⟨(rho 5233 : F), (rho 5234 : F)⟩
        ⟨(dtkAccX228 rho : F), (dtkAccY228 rho : F)⟩
        ⟨(rho 5247 : F), (rho 5248 : F)⟩ := by
    have hnextx : dtkAccX228 rho = dtkAccX227 rho + rho 5242 := by
      unfold dtkAccX228 dtkAccX227
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 77]
      ring
    have hnexty : dtkAccY228 rho = dtkAccY227 rho + rho 5243 := by
      unfold dtkAccY228 dtkAccY227
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4165 14 77]
      ring
    have hsum : dtkAccX227 rho + dtkAccY227 rho = rho 5235 := by
      unfold dtkAccX227 dtkAccY227
      linear_combination r5741
    have ha0 : (rho 5233 + rho 5234) * (dtkAccX227 rho + dtkAccY227 rho) = rho 5236 := by
      rw [hsum]
      linear_combination r5742
    have ha1 : rho 5234 * dtkAccX227 rho = rho 5237 := by
      unfold dtkAccX227
      linear_combination r5743
    have ha2 : rho 5233 * dtkAccY227 rho = rho 5238 := by
      unfold dtkAccY227
      linear_combination r5744
    have ha3 : 3021 * rho 5237 * rho 5238 = rho 5239 := by
      linear_combination r5745
    have ha4 : rho 5240 * (1 + rho 5239) = rho 5237 + rho 5238 := by
      linear_combination r5746
    have ha5 : rho 5241 * (1 - rho 5239) = rho 5236 - rho 5237 - rho 5238 := by
      linear_combination r5747
    have haddx :
        rho 5240 * (1 + 3021 * (rho 5234 * dtkAccX227 rho) * (rho 5233 * dtkAccY227 rho)) =
          rho 5234 * dtkAccX227 rho + rho 5233 * dtkAccY227 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5241 * (1 - 3021 * (rho 5234 * dtkAccX227 rho) * (rho 5233 * dtkAccY227 rho)) =
          (-1) * (rho 5234 * dtkAccX227 rho) - rho 5233 * dtkAccY227 rho +
            (dtkAccY227 rho - dtkAccX227 rho * (-1)) * (rho 5233 + rho 5234) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5241 * (1 - rho 5239) = rho 5236 - rho 5237 - rho 5238 := ha5
        _ = (-1) * rho 5237 - rho 5238 + (dtkAccY227 rho - dtkAccX227 rho * (-1)) * (rho 5233 + rho 5234) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX228 rho = dtkAccX227 rho - Bool.toZMod bit * (dtkAccX227 rho - rho 5240) := by
      have hd : rho 5242 = Bool.toZMod bit * (rho 5240 - dtkAccX227 rho) := by
        rw [← hbit]
        unfold dtkAccX227
        linear_combination -r5748
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY228 rho = dtkAccY227 rho - Bool.toZMod bit * (dtkAccY227 rho - rho 5241) := by
      have hd : rho 5243 = Bool.toZMod bit * (rho 5241 - dtkAccY227 rho) := by
        rw [← hbit]
        unfold dtkAccY227
        linear_combination -r5749
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5233 * rho 5234 = rho 5244 := by linear_combination r5750
    have hd1 : rho 5233 * rho 5233 = rho 5245 := by linear_combination r5751
    have hd2 : rho 5234 * rho 5234 = rho 5246 := by linear_combination r5752
    have hd3 : rho 5247 * (rho 5234 * rho 5234 + rho 5233 * rho 5233 * (-1)) = 2 * (rho 5233 * rho 5234) := by
      rw [hd0, hd1, hd2]
      linear_combination r5753
    have hd4 : rho 5248 * (2 - (rho 5234 * rho 5234 + rho 5233 * rho 5233 * (-1))) = rho 5234 * rho 5234 - rho 5233 * rho 5233 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5754
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX227 rho : F), (dtkAccY227 rho : F)⟩
      ⟨(rho 5233 : F), (rho 5234 : F)⟩
      ⟨(rho 5240 : F), (rho 5241 : F)⟩
      ⟨(dtkAccX228 rho : F), (dtkAccY228 rho : F)⟩
      ⟨(rho 5247 : F), (rho 5248 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung227

theorem dtk_rows228 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5755 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5756 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5757 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5758 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5759 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5760 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5761 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5762 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5763 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5764 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5765 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5766 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5767 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5768 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p71, p72, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart71 at p71
  rcases p71 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5755, r5756, r5757, r5758, r5759⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart72 at p72
  rcases p72 with ⟨r5760, r5761, r5762, r5763, r5764, r5765, r5766, r5767, r5768, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5755, r5756, r5757, r5758, r5759, r5760, r5761, r5762, r5763, r5764, r5765, r5766, r5767, r5768⟩

theorem dtk_rung228 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1211 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX228 rho : F), (dtkAccY228 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5247 : F), (rho 5248 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX228 rho : F), (dtkAccY228 rho : F)⟩
        ⟨(rho 5247 : F), (rho 5248 : F)⟩
        ⟨(dtkAccX229 rho : F), (dtkAccY229 rho : F)⟩
        ⟨(rho 5261 : F), (rho 5262 : F)⟩ := by
  obtain ⟨r5755, r5756, r5757, r5758, r5759, r5760, r5761, r5762, r5763, r5764, r5765, r5766, r5767, r5768⟩ := dtk_rows228 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5755 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1226 at r5755
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5755
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5756 at r5756
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5757 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1227 at r5757
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5757
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5758 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1228 at r5758
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5758
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5759 at r5759
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5760 at r5760
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5761 at r5761
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5762 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1229 at r5762
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5762
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5763 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1230 at r5763
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5763
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5764 at r5764
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5765 at r5765
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5766 at r5766
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5767 at r5767
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5768 at r5768
  have hrung228 (bit : Bool) (hbit : rho 1211 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX228 rho : F), (dtkAccY228 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5247 : F), (rho 5248 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX228 rho : F), (dtkAccY228 rho : F)⟩
        ⟨(rho 5247 : F), (rho 5248 : F)⟩
        ⟨(dtkAccX229 rho : F), (dtkAccY229 rho : F)⟩
        ⟨(rho 5261 : F), (rho 5262 : F)⟩ := by
    have hnextx : dtkAccX229 rho = dtkAccX228 rho + rho 5256 := by
      unfold dtkAccX229 dtkAccX228
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 78]
      ring
    have hnexty : dtkAccY229 rho = dtkAccY228 rho + rho 5257 := by
      unfold dtkAccY229 dtkAccY228
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4165 14 78]
      ring
    have hsum : dtkAccX228 rho + dtkAccY228 rho = rho 5249 := by
      unfold dtkAccX228 dtkAccY228
      linear_combination r5755
    have ha0 : (rho 5247 + rho 5248) * (dtkAccX228 rho + dtkAccY228 rho) = rho 5250 := by
      rw [hsum]
      linear_combination r5756
    have ha1 : rho 5248 * dtkAccX228 rho = rho 5251 := by
      unfold dtkAccX228
      linear_combination r5757
    have ha2 : rho 5247 * dtkAccY228 rho = rho 5252 := by
      unfold dtkAccY228
      linear_combination r5758
    have ha3 : 3021 * rho 5251 * rho 5252 = rho 5253 := by
      linear_combination r5759
    have ha4 : rho 5254 * (1 + rho 5253) = rho 5251 + rho 5252 := by
      linear_combination r5760
    have ha5 : rho 5255 * (1 - rho 5253) = rho 5250 - rho 5251 - rho 5252 := by
      linear_combination r5761
    have haddx :
        rho 5254 * (1 + 3021 * (rho 5248 * dtkAccX228 rho) * (rho 5247 * dtkAccY228 rho)) =
          rho 5248 * dtkAccX228 rho + rho 5247 * dtkAccY228 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5255 * (1 - 3021 * (rho 5248 * dtkAccX228 rho) * (rho 5247 * dtkAccY228 rho)) =
          (-1) * (rho 5248 * dtkAccX228 rho) - rho 5247 * dtkAccY228 rho +
            (dtkAccY228 rho - dtkAccX228 rho * (-1)) * (rho 5247 + rho 5248) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5255 * (1 - rho 5253) = rho 5250 - rho 5251 - rho 5252 := ha5
        _ = (-1) * rho 5251 - rho 5252 + (dtkAccY228 rho - dtkAccX228 rho * (-1)) * (rho 5247 + rho 5248) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX229 rho = dtkAccX228 rho - Bool.toZMod bit * (dtkAccX228 rho - rho 5254) := by
      have hd : rho 5256 = Bool.toZMod bit * (rho 5254 - dtkAccX228 rho) := by
        rw [← hbit]
        unfold dtkAccX228
        linear_combination -r5762
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY229 rho = dtkAccY228 rho - Bool.toZMod bit * (dtkAccY228 rho - rho 5255) := by
      have hd : rho 5257 = Bool.toZMod bit * (rho 5255 - dtkAccY228 rho) := by
        rw [← hbit]
        unfold dtkAccY228
        linear_combination -r5763
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5247 * rho 5248 = rho 5258 := by linear_combination r5764
    have hd1 : rho 5247 * rho 5247 = rho 5259 := by linear_combination r5765
    have hd2 : rho 5248 * rho 5248 = rho 5260 := by linear_combination r5766
    have hd3 : rho 5261 * (rho 5248 * rho 5248 + rho 5247 * rho 5247 * (-1)) = 2 * (rho 5247 * rho 5248) := by
      rw [hd0, hd1, hd2]
      linear_combination r5767
    have hd4 : rho 5262 * (2 - (rho 5248 * rho 5248 + rho 5247 * rho 5247 * (-1))) = rho 5248 * rho 5248 - rho 5247 * rho 5247 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5768
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX228 rho : F), (dtkAccY228 rho : F)⟩
      ⟨(rho 5247 : F), (rho 5248 : F)⟩
      ⟨(rho 5254 : F), (rho 5255 : F)⟩
      ⟨(dtkAccX229 rho : F), (dtkAccY229 rho : F)⟩
      ⟨(rho 5261 : F), (rho 5262 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung228

theorem dtk_rows229 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5769 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5770 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5771 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5772 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5773 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5774 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5775 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5776 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5777 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5778 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5779 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5780 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5781 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5782 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p72, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart72 at p72
  rcases p72 with ⟨_, _, _, _, _, _, _, _, _, r5769, r5770, r5771, r5772, r5773, r5774, r5775, r5776, r5777, r5778, r5779, r5780, r5781, r5782, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5769, r5770, r5771, r5772, r5773, r5774, r5775, r5776, r5777, r5778, r5779, r5780, r5781, r5782⟩

theorem dtk_rung229 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1212 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX229 rho : F), (dtkAccY229 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5261 : F), (rho 5262 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX229 rho : F), (dtkAccY229 rho : F)⟩
        ⟨(rho 5261 : F), (rho 5262 : F)⟩
        ⟨(dtkAccX230 rho : F), (dtkAccY230 rho : F)⟩
        ⟨(rho 5275 : F), (rho 5276 : F)⟩ := by
  obtain ⟨r5769, r5770, r5771, r5772, r5773, r5774, r5775, r5776, r5777, r5778, r5779, r5780, r5781, r5782⟩ := dtk_rows229 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5769 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1231 at r5769
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5769
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5770 at r5770
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5771 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1232 at r5771
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5771
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5772 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1233 at r5772
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5772
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5773 at r5773
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5774 at r5774
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5775 at r5775
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5776 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1234 at r5776
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5776
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5777 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1235 at r5777
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5777
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5778 at r5778
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5779 at r5779
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5780 at r5780
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5781 at r5781
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5782 at r5782
  have hrung229 (bit : Bool) (hbit : rho 1212 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX229 rho : F), (dtkAccY229 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5261 : F), (rho 5262 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX229 rho : F), (dtkAccY229 rho : F)⟩
        ⟨(rho 5261 : F), (rho 5262 : F)⟩
        ⟨(dtkAccX230 rho : F), (dtkAccY230 rho : F)⟩
        ⟨(rho 5275 : F), (rho 5276 : F)⟩ := by
    have hnextx : dtkAccX230 rho = dtkAccX229 rho + rho 5270 := by
      unfold dtkAccX230 dtkAccX229
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 79]
      ring
    have hnexty : dtkAccY230 rho = dtkAccY229 rho + rho 5271 := by
      unfold dtkAccY230 dtkAccY229
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4165 14 79]
      ring
    have hsum : dtkAccX229 rho + dtkAccY229 rho = rho 5263 := by
      unfold dtkAccX229 dtkAccY229
      linear_combination r5769
    have ha0 : (rho 5261 + rho 5262) * (dtkAccX229 rho + dtkAccY229 rho) = rho 5264 := by
      rw [hsum]
      linear_combination r5770
    have ha1 : rho 5262 * dtkAccX229 rho = rho 5265 := by
      unfold dtkAccX229
      linear_combination r5771
    have ha2 : rho 5261 * dtkAccY229 rho = rho 5266 := by
      unfold dtkAccY229
      linear_combination r5772
    have ha3 : 3021 * rho 5265 * rho 5266 = rho 5267 := by
      linear_combination r5773
    have ha4 : rho 5268 * (1 + rho 5267) = rho 5265 + rho 5266 := by
      linear_combination r5774
    have ha5 : rho 5269 * (1 - rho 5267) = rho 5264 - rho 5265 - rho 5266 := by
      linear_combination r5775
    have haddx :
        rho 5268 * (1 + 3021 * (rho 5262 * dtkAccX229 rho) * (rho 5261 * dtkAccY229 rho)) =
          rho 5262 * dtkAccX229 rho + rho 5261 * dtkAccY229 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5269 * (1 - 3021 * (rho 5262 * dtkAccX229 rho) * (rho 5261 * dtkAccY229 rho)) =
          (-1) * (rho 5262 * dtkAccX229 rho) - rho 5261 * dtkAccY229 rho +
            (dtkAccY229 rho - dtkAccX229 rho * (-1)) * (rho 5261 + rho 5262) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5269 * (1 - rho 5267) = rho 5264 - rho 5265 - rho 5266 := ha5
        _ = (-1) * rho 5265 - rho 5266 + (dtkAccY229 rho - dtkAccX229 rho * (-1)) * (rho 5261 + rho 5262) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX230 rho = dtkAccX229 rho - Bool.toZMod bit * (dtkAccX229 rho - rho 5268) := by
      have hd : rho 5270 = Bool.toZMod bit * (rho 5268 - dtkAccX229 rho) := by
        rw [← hbit]
        unfold dtkAccX229
        linear_combination -r5776
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY230 rho = dtkAccY229 rho - Bool.toZMod bit * (dtkAccY229 rho - rho 5269) := by
      have hd : rho 5271 = Bool.toZMod bit * (rho 5269 - dtkAccY229 rho) := by
        rw [← hbit]
        unfold dtkAccY229
        linear_combination -r5777
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5261 * rho 5262 = rho 5272 := by linear_combination r5778
    have hd1 : rho 5261 * rho 5261 = rho 5273 := by linear_combination r5779
    have hd2 : rho 5262 * rho 5262 = rho 5274 := by linear_combination r5780
    have hd3 : rho 5275 * (rho 5262 * rho 5262 + rho 5261 * rho 5261 * (-1)) = 2 * (rho 5261 * rho 5262) := by
      rw [hd0, hd1, hd2]
      linear_combination r5781
    have hd4 : rho 5276 * (2 - (rho 5262 * rho 5262 + rho 5261 * rho 5261 * (-1))) = rho 5262 * rho 5262 - rho 5261 * rho 5261 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5782
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX229 rho : F), (dtkAccY229 rho : F)⟩
      ⟨(rho 5261 : F), (rho 5262 : F)⟩
      ⟨(rho 5268 : F), (rho 5269 : F)⟩
      ⟨(dtkAccX230 rho : F), (dtkAccY230 rho : F)⟩
      ⟨(rho 5275 : F), (rho 5276 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung229

theorem dtk_rows230 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5783 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5784 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5785 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5786 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5787 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5788 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5789 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5790 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5791 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5792 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5793 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5794 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5795 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5796 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p72, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart72 at p72
  rcases p72 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5783, r5784, r5785, r5786, r5787, r5788, r5789, r5790, r5791, r5792, r5793, r5794, r5795, r5796, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5783, r5784, r5785, r5786, r5787, r5788, r5789, r5790, r5791, r5792, r5793, r5794, r5795, r5796⟩

theorem dtk_rung230 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1213 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX230 rho : F), (dtkAccY230 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5275 : F), (rho 5276 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX230 rho : F), (dtkAccY230 rho : F)⟩
        ⟨(rho 5275 : F), (rho 5276 : F)⟩
        ⟨(dtkAccX231 rho : F), (dtkAccY231 rho : F)⟩
        ⟨(rho 5289 : F), (rho 5290 : F)⟩ := by
  obtain ⟨r5783, r5784, r5785, r5786, r5787, r5788, r5789, r5790, r5791, r5792, r5793, r5794, r5795, r5796⟩ := dtk_rows230 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5783 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1236 at r5783
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5783
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5784 at r5784
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5785 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1237 at r5785
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5785
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5786 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1238 at r5786
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5786
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5787 at r5787
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5788 at r5788
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5789 at r5789
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5790 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1239 at r5790
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5790
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5791 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1240 at r5791
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5791
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5792 at r5792
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5793 at r5793
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5794 at r5794
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5795 at r5795
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5796 at r5796
  have hrung230 (bit : Bool) (hbit : rho 1213 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX230 rho : F), (dtkAccY230 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5275 : F), (rho 5276 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX230 rho : F), (dtkAccY230 rho : F)⟩
        ⟨(rho 5275 : F), (rho 5276 : F)⟩
        ⟨(dtkAccX231 rho : F), (dtkAccY231 rho : F)⟩
        ⟨(rho 5289 : F), (rho 5290 : F)⟩ := by
    have hnextx : dtkAccX231 rho = dtkAccX230 rho + rho 5284 := by
      unfold dtkAccX231 dtkAccX230
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 80]
      ring
    have hnexty : dtkAccY231 rho = dtkAccY230 rho + rho 5285 := by
      unfold dtkAccY231 dtkAccY230
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4165 14 80]
      ring
    have hsum : dtkAccX230 rho + dtkAccY230 rho = rho 5277 := by
      unfold dtkAccX230 dtkAccY230
      linear_combination r5783
    have ha0 : (rho 5275 + rho 5276) * (dtkAccX230 rho + dtkAccY230 rho) = rho 5278 := by
      rw [hsum]
      linear_combination r5784
    have ha1 : rho 5276 * dtkAccX230 rho = rho 5279 := by
      unfold dtkAccX230
      linear_combination r5785
    have ha2 : rho 5275 * dtkAccY230 rho = rho 5280 := by
      unfold dtkAccY230
      linear_combination r5786
    have ha3 : 3021 * rho 5279 * rho 5280 = rho 5281 := by
      linear_combination r5787
    have ha4 : rho 5282 * (1 + rho 5281) = rho 5279 + rho 5280 := by
      linear_combination r5788
    have ha5 : rho 5283 * (1 - rho 5281) = rho 5278 - rho 5279 - rho 5280 := by
      linear_combination r5789
    have haddx :
        rho 5282 * (1 + 3021 * (rho 5276 * dtkAccX230 rho) * (rho 5275 * dtkAccY230 rho)) =
          rho 5276 * dtkAccX230 rho + rho 5275 * dtkAccY230 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5283 * (1 - 3021 * (rho 5276 * dtkAccX230 rho) * (rho 5275 * dtkAccY230 rho)) =
          (-1) * (rho 5276 * dtkAccX230 rho) - rho 5275 * dtkAccY230 rho +
            (dtkAccY230 rho - dtkAccX230 rho * (-1)) * (rho 5275 + rho 5276) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5283 * (1 - rho 5281) = rho 5278 - rho 5279 - rho 5280 := ha5
        _ = (-1) * rho 5279 - rho 5280 + (dtkAccY230 rho - dtkAccX230 rho * (-1)) * (rho 5275 + rho 5276) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX231 rho = dtkAccX230 rho - Bool.toZMod bit * (dtkAccX230 rho - rho 5282) := by
      have hd : rho 5284 = Bool.toZMod bit * (rho 5282 - dtkAccX230 rho) := by
        rw [← hbit]
        unfold dtkAccX230
        linear_combination -r5790
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY231 rho = dtkAccY230 rho - Bool.toZMod bit * (dtkAccY230 rho - rho 5283) := by
      have hd : rho 5285 = Bool.toZMod bit * (rho 5283 - dtkAccY230 rho) := by
        rw [← hbit]
        unfold dtkAccY230
        linear_combination -r5791
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5275 * rho 5276 = rho 5286 := by linear_combination r5792
    have hd1 : rho 5275 * rho 5275 = rho 5287 := by linear_combination r5793
    have hd2 : rho 5276 * rho 5276 = rho 5288 := by linear_combination r5794
    have hd3 : rho 5289 * (rho 5276 * rho 5276 + rho 5275 * rho 5275 * (-1)) = 2 * (rho 5275 * rho 5276) := by
      rw [hd0, hd1, hd2]
      linear_combination r5795
    have hd4 : rho 5290 * (2 - (rho 5276 * rho 5276 + rho 5275 * rho 5275 * (-1))) = rho 5276 * rho 5276 - rho 5275 * rho 5275 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5796
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX230 rho : F), (dtkAccY230 rho : F)⟩
      ⟨(rho 5275 : F), (rho 5276 : F)⟩
      ⟨(rho 5282 : F), (rho 5283 : F)⟩
      ⟨(dtkAccX231 rho : F), (dtkAccY231 rho : F)⟩
      ⟨(rho 5289 : F), (rho 5290 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung230

theorem dtk_hstep_c20 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (983 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 220 ≤ i → i < 231 →
      EdwardsBridge.onCurve (dtkLadderAccState rho i) →
      EdwardsBridge.onCurve (dtkLadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (dtkLadderAccState rho i) (dtkLadderCurState rho i)
        (dtkLadderAccState rho (i + 1)) (dtkLadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact dtk_rung220 rho h bits[220]! (hbitAt 220 (by omega)) hacc hcur
  · exact dtk_rung221 rho h bits[221]! (hbitAt 221 (by omega)) hacc hcur
  · exact dtk_rung222 rho h bits[222]! (hbitAt 222 (by omega)) hacc hcur
  · exact dtk_rung223 rho h bits[223]! (hbitAt 223 (by omega)) hacc hcur
  · exact dtk_rung224 rho h bits[224]! (hbitAt 224 (by omega)) hacc hcur
  · exact dtk_rung225 rho h bits[225]! (hbitAt 225 (by omega)) hacc hcur
  · exact dtk_rung226 rho h bits[226]! (hbitAt 226 (by omega)) hacc hcur
  · exact dtk_rung227 rho h bits[227]! (hbitAt 227 (by omega)) hacc hcur
  · exact dtk_rung228 rho h bits[228]! (hbitAt 228 (by omega)) hacc hcur
  · exact dtk_rung229 rho h bits[229]! (hbitAt 229 (by omega)) hacc hcur
  · exact dtk_rung230 rho h bits[230]! (hbitAt 230 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport
