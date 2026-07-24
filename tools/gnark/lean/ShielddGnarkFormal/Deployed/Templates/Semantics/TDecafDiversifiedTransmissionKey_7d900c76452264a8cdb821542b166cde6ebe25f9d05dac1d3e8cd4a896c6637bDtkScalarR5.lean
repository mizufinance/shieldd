import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDtkScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs

theorem dtk_rows30 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3103 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3104 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3105 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3106 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3107 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3108 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3109 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3110 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3111 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3112 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3113 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3114 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3115 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p38, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart38 at p38
  rcases p38 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3103, r3104, r3105, r3106, r3107, r3108, r3109, r3110, r3111, r3112, r3113, r3114, r3115, _, _, _, _⟩
  exact ⟨r3103, r3104, r3105, r3106, r3107, r3108, r3109, r3110, r3111, r3112, r3113, r3114, r3115⟩

theorem dtk_rung30 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1013 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX30 rho : F), (dtkAccY30 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 2595 : F), (rho 2596 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX30 rho : F), (dtkAccY30 rho : F)⟩
        ⟨(rho 2595 : F), (rho 2596 : F)⟩
        ⟨(dtkAccX31 rho : F), (dtkAccY31 rho : F)⟩
        ⟨(rho 2608 : F), (rho 2609 : F)⟩ := by
  obtain ⟨r3103, r3104, r3105, r3106, r3107, r3108, r3109, r3110, r3111, r3112, r3113, r3114, r3115⟩ := dtk_rows30 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3103 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc236 at r3103
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3103
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3104 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc237 at r3104
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3104
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3105 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc238 at r3105
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3105
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3106 at r3106
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3107 at r3107
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3108 at r3108
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3109 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc239 at r3109
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3109
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3110 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc240 at r3110
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3110
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3111 at r3111
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3112 at r3112
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3113 at r3113
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3114 at r3114
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3115 at r3115
  have hrung30 (bit : Bool) (hbit : rho 1013 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX30 rho : F), (dtkAccY30 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 2595 : F), (rho 2596 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX30 rho : F), (dtkAccY30 rho : F)⟩
        ⟨(rho 2595 : F), (rho 2596 : F)⟩
        ⟨(dtkAccX31 rho : F), (dtkAccY31 rho : F)⟩
        ⟨(rho 2608 : F), (rho 2609 : F)⟩ := by
    have hnextx : dtkAccX31 rho = dtkAccX30 rho + rho 2603 := by
      unfold dtkAccX31 dtkAccX30
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 29]
      ring
    have hnexty : dtkAccY31 rho = dtkAccY30 rho + rho 2604 := by
      unfold dtkAccY31 dtkAccY30
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 30]
      ring
    have ha0 : (rho 2595 + rho 2596) * (dtkAccX30 rho + dtkAccY30 rho) = rho 2597 := by
      unfold dtkAccX30 dtkAccY30
      linear_combination r3103
    have ha1 : rho 2596 * dtkAccX30 rho = rho 2598 := by
      unfold dtkAccX30
      linear_combination r3104
    have ha2 : rho 2595 * dtkAccY30 rho = rho 2599 := by
      unfold dtkAccY30
      linear_combination r3105
    have ha3 : 3021 * rho 2598 * rho 2599 = rho 2600 := by
      linear_combination r3106
    have ha4 : rho 2601 * (1 + rho 2600) = rho 2598 + rho 2599 := by
      linear_combination r3107
    have ha5 : rho 2602 * (1 - rho 2600) = rho 2597 - rho 2598 - rho 2599 := by
      linear_combination r3108
    have haddx :
        rho 2601 * (1 + 3021 * (rho 2596 * dtkAccX30 rho) * (rho 2595 * dtkAccY30 rho)) =
          rho 2596 * dtkAccX30 rho + rho 2595 * dtkAccY30 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 2602 * (1 - 3021 * (rho 2596 * dtkAccX30 rho) * (rho 2595 * dtkAccY30 rho)) =
          (-1) * (rho 2596 * dtkAccX30 rho) - rho 2595 * dtkAccY30 rho +
            (dtkAccY30 rho - dtkAccX30 rho * (-1)) * (rho 2595 + rho 2596) := by
      rw [ha1, ha2, ha3]
      calc
        rho 2602 * (1 - rho 2600) = rho 2597 - rho 2598 - rho 2599 := ha5
        _ = (-1) * rho 2598 - rho 2599 + (dtkAccY30 rho - dtkAccX30 rho * (-1)) * (rho 2595 + rho 2596) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX31 rho = dtkAccX30 rho - Bool.toZMod bit * (dtkAccX30 rho - rho 2601) := by
      have hd : rho 2603 = Bool.toZMod bit * (rho 2601 - dtkAccX30 rho) := by
        rw [← hbit]
        unfold dtkAccX30
        linear_combination -r3109
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY31 rho = dtkAccY30 rho - Bool.toZMod bit * (dtkAccY30 rho - rho 2602) := by
      have hd : rho 2604 = Bool.toZMod bit * (rho 2602 - dtkAccY30 rho) := by
        rw [← hbit]
        unfold dtkAccY30
        linear_combination -r3110
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 2595 * rho 2596 = rho 2605 := by linear_combination r3111
    have hd1 : rho 2595 * rho 2595 = rho 2606 := by linear_combination r3112
    have hd2 : rho 2596 * rho 2596 = rho 2607 := by linear_combination r3113
    have hd3 : rho 2608 * (rho 2596 * rho 2596 + rho 2595 * rho 2595 * (-1)) = 2 * (rho 2595 * rho 2596) := by
      rw [hd0, hd1, hd2]
      linear_combination r3114
    have hd4 : rho 2609 * (2 - (rho 2596 * rho 2596 + rho 2595 * rho 2595 * (-1))) = rho 2596 * rho 2596 - rho 2595 * rho 2595 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3115
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX30 rho : F), (dtkAccY30 rho : F)⟩
      ⟨(rho 2595 : F), (rho 2596 : F)⟩
      ⟨(rho 2601 : F), (rho 2602 : F)⟩
      ⟨(dtkAccX31 rho : F), (dtkAccY31 rho : F)⟩
      ⟨(rho 2608 : F), (rho 2609 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung30

theorem dtk_rows31 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3116 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3117 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3118 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3119 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3120 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3121 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3122 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3123 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3124 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3125 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3126 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3127 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3128 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p38, p39,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart38 at p38
  rcases p38 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3116, r3117, r3118, r3119⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart39 at p39
  rcases p39 with ⟨r3120, r3121, r3122, r3123, r3124, r3125, r3126, r3127, r3128, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3116, r3117, r3118, r3119, r3120, r3121, r3122, r3123, r3124, r3125, r3126, r3127, r3128⟩

theorem dtk_rung31 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1014 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX31 rho : F), (dtkAccY31 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 2608 : F), (rho 2609 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX31 rho : F), (dtkAccY31 rho : F)⟩
        ⟨(rho 2608 : F), (rho 2609 : F)⟩
        ⟨(dtkAccX32 rho : F), (dtkAccY32 rho : F)⟩
        ⟨(rho 2621 : F), (rho 2622 : F)⟩ := by
  obtain ⟨r3116, r3117, r3118, r3119, r3120, r3121, r3122, r3123, r3124, r3125, r3126, r3127, r3128⟩ := dtk_rows31 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3116 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc241 at r3116
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3116
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3117 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc242 at r3117
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3117
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3118 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc243 at r3118
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3118
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3119 at r3119
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3120 at r3120
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3121 at r3121
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3122 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc244 at r3122
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3122
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3123 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc245 at r3123
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3123
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3124 at r3124
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3125 at r3125
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3126 at r3126
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3127 at r3127
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3128 at r3128
  have hrung31 (bit : Bool) (hbit : rho 1014 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX31 rho : F), (dtkAccY31 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 2608 : F), (rho 2609 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX31 rho : F), (dtkAccY31 rho : F)⟩
        ⟨(rho 2608 : F), (rho 2609 : F)⟩
        ⟨(dtkAccX32 rho : F), (dtkAccY32 rho : F)⟩
        ⟨(rho 2621 : F), (rho 2622 : F)⟩ := by
    have hnextx : dtkAccX32 rho = dtkAccX31 rho + rho 2616 := by
      unfold dtkAccX32 dtkAccX31
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 30]
      ring
    have hnexty : dtkAccY32 rho = dtkAccY31 rho + rho 2617 := by
      unfold dtkAccY32 dtkAccY31
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 31]
      ring
    have ha0 : (rho 2608 + rho 2609) * (dtkAccX31 rho + dtkAccY31 rho) = rho 2610 := by
      unfold dtkAccX31 dtkAccY31
      linear_combination r3116
    have ha1 : rho 2609 * dtkAccX31 rho = rho 2611 := by
      unfold dtkAccX31
      linear_combination r3117
    have ha2 : rho 2608 * dtkAccY31 rho = rho 2612 := by
      unfold dtkAccY31
      linear_combination r3118
    have ha3 : 3021 * rho 2611 * rho 2612 = rho 2613 := by
      linear_combination r3119
    have ha4 : rho 2614 * (1 + rho 2613) = rho 2611 + rho 2612 := by
      linear_combination r3120
    have ha5 : rho 2615 * (1 - rho 2613) = rho 2610 - rho 2611 - rho 2612 := by
      linear_combination r3121
    have haddx :
        rho 2614 * (1 + 3021 * (rho 2609 * dtkAccX31 rho) * (rho 2608 * dtkAccY31 rho)) =
          rho 2609 * dtkAccX31 rho + rho 2608 * dtkAccY31 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 2615 * (1 - 3021 * (rho 2609 * dtkAccX31 rho) * (rho 2608 * dtkAccY31 rho)) =
          (-1) * (rho 2609 * dtkAccX31 rho) - rho 2608 * dtkAccY31 rho +
            (dtkAccY31 rho - dtkAccX31 rho * (-1)) * (rho 2608 + rho 2609) := by
      rw [ha1, ha2, ha3]
      calc
        rho 2615 * (1 - rho 2613) = rho 2610 - rho 2611 - rho 2612 := ha5
        _ = (-1) * rho 2611 - rho 2612 + (dtkAccY31 rho - dtkAccX31 rho * (-1)) * (rho 2608 + rho 2609) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX32 rho = dtkAccX31 rho - Bool.toZMod bit * (dtkAccX31 rho - rho 2614) := by
      have hd : rho 2616 = Bool.toZMod bit * (rho 2614 - dtkAccX31 rho) := by
        rw [← hbit]
        unfold dtkAccX31
        linear_combination -r3122
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY32 rho = dtkAccY31 rho - Bool.toZMod bit * (dtkAccY31 rho - rho 2615) := by
      have hd : rho 2617 = Bool.toZMod bit * (rho 2615 - dtkAccY31 rho) := by
        rw [← hbit]
        unfold dtkAccY31
        linear_combination -r3123
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 2608 * rho 2609 = rho 2618 := by linear_combination r3124
    have hd1 : rho 2608 * rho 2608 = rho 2619 := by linear_combination r3125
    have hd2 : rho 2609 * rho 2609 = rho 2620 := by linear_combination r3126
    have hd3 : rho 2621 * (rho 2609 * rho 2609 + rho 2608 * rho 2608 * (-1)) = 2 * (rho 2608 * rho 2609) := by
      rw [hd0, hd1, hd2]
      linear_combination r3127
    have hd4 : rho 2622 * (2 - (rho 2609 * rho 2609 + rho 2608 * rho 2608 * (-1))) = rho 2609 * rho 2609 - rho 2608 * rho 2608 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3128
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX31 rho : F), (dtkAccY31 rho : F)⟩
      ⟨(rho 2608 : F), (rho 2609 : F)⟩
      ⟨(rho 2614 : F), (rho 2615 : F)⟩
      ⟨(dtkAccX32 rho : F), (dtkAccY32 rho : F)⟩
      ⟨(rho 2621 : F), (rho 2622 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung31

theorem dtk_rows32 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3129 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3130 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3131 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3132 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3133 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3134 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3135 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3136 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3137 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3138 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3139 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3140 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3141 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p39,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart39 at p39
  rcases p39 with ⟨_, _, _, _, _, _, _, _, _, r3129, r3130, r3131, r3132, r3133, r3134, r3135, r3136, r3137, r3138, r3139, r3140, r3141, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3129, r3130, r3131, r3132, r3133, r3134, r3135, r3136, r3137, r3138, r3139, r3140, r3141⟩

theorem dtk_rung32 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1015 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX32 rho : F), (dtkAccY32 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 2621 : F), (rho 2622 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX32 rho : F), (dtkAccY32 rho : F)⟩
        ⟨(rho 2621 : F), (rho 2622 : F)⟩
        ⟨(dtkAccX33 rho : F), (dtkAccY33 rho : F)⟩
        ⟨(rho 2634 : F), (rho 2635 : F)⟩ := by
  obtain ⟨r3129, r3130, r3131, r3132, r3133, r3134, r3135, r3136, r3137, r3138, r3139, r3140, r3141⟩ := dtk_rows32 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3129 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc246 at r3129
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3129
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3130 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc247 at r3130
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3130
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3131 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc248 at r3131
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3131
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3132 at r3132
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3133 at r3133
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3134 at r3134
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3135 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc249 at r3135
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3135
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3136 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc250 at r3136
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3136
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3137 at r3137
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3138 at r3138
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3139 at r3139
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3140 at r3140
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3141 at r3141
  have hrung32 (bit : Bool) (hbit : rho 1015 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX32 rho : F), (dtkAccY32 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 2621 : F), (rho 2622 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX32 rho : F), (dtkAccY32 rho : F)⟩
        ⟨(rho 2621 : F), (rho 2622 : F)⟩
        ⟨(dtkAccX33 rho : F), (dtkAccY33 rho : F)⟩
        ⟨(rho 2634 : F), (rho 2635 : F)⟩ := by
    have hnextx : dtkAccX33 rho = dtkAccX32 rho + rho 2629 := by
      unfold dtkAccX33 dtkAccX32
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 31]
      ring
    have hnexty : dtkAccY33 rho = dtkAccY32 rho + rho 2630 := by
      unfold dtkAccY33 dtkAccY32
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 32]
      ring
    have ha0 : (rho 2621 + rho 2622) * (dtkAccX32 rho + dtkAccY32 rho) = rho 2623 := by
      unfold dtkAccX32 dtkAccY32
      linear_combination r3129
    have ha1 : rho 2622 * dtkAccX32 rho = rho 2624 := by
      unfold dtkAccX32
      linear_combination r3130
    have ha2 : rho 2621 * dtkAccY32 rho = rho 2625 := by
      unfold dtkAccY32
      linear_combination r3131
    have ha3 : 3021 * rho 2624 * rho 2625 = rho 2626 := by
      linear_combination r3132
    have ha4 : rho 2627 * (1 + rho 2626) = rho 2624 + rho 2625 := by
      linear_combination r3133
    have ha5 : rho 2628 * (1 - rho 2626) = rho 2623 - rho 2624 - rho 2625 := by
      linear_combination r3134
    have haddx :
        rho 2627 * (1 + 3021 * (rho 2622 * dtkAccX32 rho) * (rho 2621 * dtkAccY32 rho)) =
          rho 2622 * dtkAccX32 rho + rho 2621 * dtkAccY32 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 2628 * (1 - 3021 * (rho 2622 * dtkAccX32 rho) * (rho 2621 * dtkAccY32 rho)) =
          (-1) * (rho 2622 * dtkAccX32 rho) - rho 2621 * dtkAccY32 rho +
            (dtkAccY32 rho - dtkAccX32 rho * (-1)) * (rho 2621 + rho 2622) := by
      rw [ha1, ha2, ha3]
      calc
        rho 2628 * (1 - rho 2626) = rho 2623 - rho 2624 - rho 2625 := ha5
        _ = (-1) * rho 2624 - rho 2625 + (dtkAccY32 rho - dtkAccX32 rho * (-1)) * (rho 2621 + rho 2622) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX33 rho = dtkAccX32 rho - Bool.toZMod bit * (dtkAccX32 rho - rho 2627) := by
      have hd : rho 2629 = Bool.toZMod bit * (rho 2627 - dtkAccX32 rho) := by
        rw [← hbit]
        unfold dtkAccX32
        linear_combination -r3135
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY33 rho = dtkAccY32 rho - Bool.toZMod bit * (dtkAccY32 rho - rho 2628) := by
      have hd : rho 2630 = Bool.toZMod bit * (rho 2628 - dtkAccY32 rho) := by
        rw [← hbit]
        unfold dtkAccY32
        linear_combination -r3136
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 2621 * rho 2622 = rho 2631 := by linear_combination r3137
    have hd1 : rho 2621 * rho 2621 = rho 2632 := by linear_combination r3138
    have hd2 : rho 2622 * rho 2622 = rho 2633 := by linear_combination r3139
    have hd3 : rho 2634 * (rho 2622 * rho 2622 + rho 2621 * rho 2621 * (-1)) = 2 * (rho 2621 * rho 2622) := by
      rw [hd0, hd1, hd2]
      linear_combination r3140
    have hd4 : rho 2635 * (2 - (rho 2622 * rho 2622 + rho 2621 * rho 2621 * (-1))) = rho 2622 * rho 2622 - rho 2621 * rho 2621 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3141
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX32 rho : F), (dtkAccY32 rho : F)⟩
      ⟨(rho 2621 : F), (rho 2622 : F)⟩
      ⟨(rho 2627 : F), (rho 2628 : F)⟩
      ⟨(dtkAccX33 rho : F), (dtkAccY33 rho : F)⟩
      ⟨(rho 2634 : F), (rho 2635 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung32

theorem dtk_rows33 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3142 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3143 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3144 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3145 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3146 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3147 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3148 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3149 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3150 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3151 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3152 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3153 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3154 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p39,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart39 at p39
  rcases p39 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3142, r3143, r3144, r3145, r3146, r3147, r3148, r3149, r3150, r3151, r3152, r3153, r3154, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3142, r3143, r3144, r3145, r3146, r3147, r3148, r3149, r3150, r3151, r3152, r3153, r3154⟩

theorem dtk_rung33 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1016 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX33 rho : F), (dtkAccY33 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 2634 : F), (rho 2635 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX33 rho : F), (dtkAccY33 rho : F)⟩
        ⟨(rho 2634 : F), (rho 2635 : F)⟩
        ⟨(dtkAccX34 rho : F), (dtkAccY34 rho : F)⟩
        ⟨(rho 2647 : F), (rho 2648 : F)⟩ := by
  obtain ⟨r3142, r3143, r3144, r3145, r3146, r3147, r3148, r3149, r3150, r3151, r3152, r3153, r3154⟩ := dtk_rows33 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3142 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc251 at r3142
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3142
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3143 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc252 at r3143
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3143
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3144 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc253 at r3144
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3144
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3145 at r3145
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3146 at r3146
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3147 at r3147
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3148 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc254 at r3148
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3148
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3149 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc255 at r3149
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3149
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3150 at r3150
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3151 at r3151
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3152 at r3152
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3153 at r3153
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3154 at r3154
  have hrung33 (bit : Bool) (hbit : rho 1016 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX33 rho : F), (dtkAccY33 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 2634 : F), (rho 2635 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX33 rho : F), (dtkAccY33 rho : F)⟩
        ⟨(rho 2634 : F), (rho 2635 : F)⟩
        ⟨(dtkAccX34 rho : F), (dtkAccY34 rho : F)⟩
        ⟨(rho 2647 : F), (rho 2648 : F)⟩ := by
    have hnextx : dtkAccX34 rho = dtkAccX33 rho + rho 2642 := by
      unfold dtkAccX34 dtkAccX33
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 32]
      ring
    have hnexty : dtkAccY34 rho = dtkAccY33 rho + rho 2643 := by
      unfold dtkAccY34 dtkAccY33
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 33]
      ring
    have ha0 : (rho 2634 + rho 2635) * (dtkAccX33 rho + dtkAccY33 rho) = rho 2636 := by
      unfold dtkAccX33 dtkAccY33
      linear_combination r3142
    have ha1 : rho 2635 * dtkAccX33 rho = rho 2637 := by
      unfold dtkAccX33
      linear_combination r3143
    have ha2 : rho 2634 * dtkAccY33 rho = rho 2638 := by
      unfold dtkAccY33
      linear_combination r3144
    have ha3 : 3021 * rho 2637 * rho 2638 = rho 2639 := by
      linear_combination r3145
    have ha4 : rho 2640 * (1 + rho 2639) = rho 2637 + rho 2638 := by
      linear_combination r3146
    have ha5 : rho 2641 * (1 - rho 2639) = rho 2636 - rho 2637 - rho 2638 := by
      linear_combination r3147
    have haddx :
        rho 2640 * (1 + 3021 * (rho 2635 * dtkAccX33 rho) * (rho 2634 * dtkAccY33 rho)) =
          rho 2635 * dtkAccX33 rho + rho 2634 * dtkAccY33 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 2641 * (1 - 3021 * (rho 2635 * dtkAccX33 rho) * (rho 2634 * dtkAccY33 rho)) =
          (-1) * (rho 2635 * dtkAccX33 rho) - rho 2634 * dtkAccY33 rho +
            (dtkAccY33 rho - dtkAccX33 rho * (-1)) * (rho 2634 + rho 2635) := by
      rw [ha1, ha2, ha3]
      calc
        rho 2641 * (1 - rho 2639) = rho 2636 - rho 2637 - rho 2638 := ha5
        _ = (-1) * rho 2637 - rho 2638 + (dtkAccY33 rho - dtkAccX33 rho * (-1)) * (rho 2634 + rho 2635) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX34 rho = dtkAccX33 rho - Bool.toZMod bit * (dtkAccX33 rho - rho 2640) := by
      have hd : rho 2642 = Bool.toZMod bit * (rho 2640 - dtkAccX33 rho) := by
        rw [← hbit]
        unfold dtkAccX33
        linear_combination -r3148
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY34 rho = dtkAccY33 rho - Bool.toZMod bit * (dtkAccY33 rho - rho 2641) := by
      have hd : rho 2643 = Bool.toZMod bit * (rho 2641 - dtkAccY33 rho) := by
        rw [← hbit]
        unfold dtkAccY33
        linear_combination -r3149
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 2634 * rho 2635 = rho 2644 := by linear_combination r3150
    have hd1 : rho 2634 * rho 2634 = rho 2645 := by linear_combination r3151
    have hd2 : rho 2635 * rho 2635 = rho 2646 := by linear_combination r3152
    have hd3 : rho 2647 * (rho 2635 * rho 2635 + rho 2634 * rho 2634 * (-1)) = 2 * (rho 2634 * rho 2635) := by
      rw [hd0, hd1, hd2]
      linear_combination r3153
    have hd4 : rho 2648 * (2 - (rho 2635 * rho 2635 + rho 2634 * rho 2634 * (-1))) = rho 2635 * rho 2635 - rho 2634 * rho 2634 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3154
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX33 rho : F), (dtkAccY33 rho : F)⟩
      ⟨(rho 2634 : F), (rho 2635 : F)⟩
      ⟨(rho 2640 : F), (rho 2641 : F)⟩
      ⟨(dtkAccX34 rho : F), (dtkAccY34 rho : F)⟩
      ⟨(rho 2647 : F), (rho 2648 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung33

theorem dtk_rows34 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3155 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3156 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3157 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3158 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3159 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3160 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3161 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3162 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3163 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3164 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3165 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3166 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3167 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p39,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart39 at p39
  rcases p39 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3155, r3156, r3157, r3158, r3159, r3160, r3161, r3162, r3163, r3164, r3165, r3166, r3167, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3155, r3156, r3157, r3158, r3159, r3160, r3161, r3162, r3163, r3164, r3165, r3166, r3167⟩

theorem dtk_rung34 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1017 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX34 rho : F), (dtkAccY34 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 2647 : F), (rho 2648 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX34 rho : F), (dtkAccY34 rho : F)⟩
        ⟨(rho 2647 : F), (rho 2648 : F)⟩
        ⟨(dtkAccX35 rho : F), (dtkAccY35 rho : F)⟩
        ⟨(rho 2660 : F), (rho 2661 : F)⟩ := by
  obtain ⟨r3155, r3156, r3157, r3158, r3159, r3160, r3161, r3162, r3163, r3164, r3165, r3166, r3167⟩ := dtk_rows34 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3155 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc256 at r3155
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3155
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3156 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc257 at r3156
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3156
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3157 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc258 at r3157
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3157
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3158 at r3158
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3159 at r3159
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3160 at r3160
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3161 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc259 at r3161
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3161
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3162 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc260 at r3162
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3162
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3163 at r3163
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3164 at r3164
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3165 at r3165
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3166 at r3166
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3167 at r3167
  have hrung34 (bit : Bool) (hbit : rho 1017 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX34 rho : F), (dtkAccY34 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 2647 : F), (rho 2648 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX34 rho : F), (dtkAccY34 rho : F)⟩
        ⟨(rho 2647 : F), (rho 2648 : F)⟩
        ⟨(dtkAccX35 rho : F), (dtkAccY35 rho : F)⟩
        ⟨(rho 2660 : F), (rho 2661 : F)⟩ := by
    have hnextx : dtkAccX35 rho = dtkAccX34 rho + rho 2655 := by
      unfold dtkAccX35 dtkAccX34
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 33]
      ring
    have hnexty : dtkAccY35 rho = dtkAccY34 rho + rho 2656 := by
      unfold dtkAccY35 dtkAccY34
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 34]
      ring
    have ha0 : (rho 2647 + rho 2648) * (dtkAccX34 rho + dtkAccY34 rho) = rho 2649 := by
      unfold dtkAccX34 dtkAccY34
      linear_combination r3155
    have ha1 : rho 2648 * dtkAccX34 rho = rho 2650 := by
      unfold dtkAccX34
      linear_combination r3156
    have ha2 : rho 2647 * dtkAccY34 rho = rho 2651 := by
      unfold dtkAccY34
      linear_combination r3157
    have ha3 : 3021 * rho 2650 * rho 2651 = rho 2652 := by
      linear_combination r3158
    have ha4 : rho 2653 * (1 + rho 2652) = rho 2650 + rho 2651 := by
      linear_combination r3159
    have ha5 : rho 2654 * (1 - rho 2652) = rho 2649 - rho 2650 - rho 2651 := by
      linear_combination r3160
    have haddx :
        rho 2653 * (1 + 3021 * (rho 2648 * dtkAccX34 rho) * (rho 2647 * dtkAccY34 rho)) =
          rho 2648 * dtkAccX34 rho + rho 2647 * dtkAccY34 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 2654 * (1 - 3021 * (rho 2648 * dtkAccX34 rho) * (rho 2647 * dtkAccY34 rho)) =
          (-1) * (rho 2648 * dtkAccX34 rho) - rho 2647 * dtkAccY34 rho +
            (dtkAccY34 rho - dtkAccX34 rho * (-1)) * (rho 2647 + rho 2648) := by
      rw [ha1, ha2, ha3]
      calc
        rho 2654 * (1 - rho 2652) = rho 2649 - rho 2650 - rho 2651 := ha5
        _ = (-1) * rho 2650 - rho 2651 + (dtkAccY34 rho - dtkAccX34 rho * (-1)) * (rho 2647 + rho 2648) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX35 rho = dtkAccX34 rho - Bool.toZMod bit * (dtkAccX34 rho - rho 2653) := by
      have hd : rho 2655 = Bool.toZMod bit * (rho 2653 - dtkAccX34 rho) := by
        rw [← hbit]
        unfold dtkAccX34
        linear_combination -r3161
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY35 rho = dtkAccY34 rho - Bool.toZMod bit * (dtkAccY34 rho - rho 2654) := by
      have hd : rho 2656 = Bool.toZMod bit * (rho 2654 - dtkAccY34 rho) := by
        rw [← hbit]
        unfold dtkAccY34
        linear_combination -r3162
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 2647 * rho 2648 = rho 2657 := by linear_combination r3163
    have hd1 : rho 2647 * rho 2647 = rho 2658 := by linear_combination r3164
    have hd2 : rho 2648 * rho 2648 = rho 2659 := by linear_combination r3165
    have hd3 : rho 2660 * (rho 2648 * rho 2648 + rho 2647 * rho 2647 * (-1)) = 2 * (rho 2647 * rho 2648) := by
      rw [hd0, hd1, hd2]
      linear_combination r3166
    have hd4 : rho 2661 * (2 - (rho 2648 * rho 2648 + rho 2647 * rho 2647 * (-1))) = rho 2648 * rho 2648 - rho 2647 * rho 2647 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3167
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX34 rho : F), (dtkAccY34 rho : F)⟩
      ⟨(rho 2647 : F), (rho 2648 : F)⟩
      ⟨(rho 2653 : F), (rho 2654 : F)⟩
      ⟨(dtkAccX35 rho : F), (dtkAccY35 rho : F)⟩
      ⟨(rho 2660 : F), (rho 2661 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung34

theorem dtk_rows35 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3168 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3169 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3170 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3171 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3172 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3173 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3174 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3175 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3176 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3177 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3178 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3179 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3180 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p39,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart39 at p39
  rcases p39 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3168, r3169, r3170, r3171, r3172, r3173, r3174, r3175, r3176, r3177, r3178, r3179, r3180, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3168, r3169, r3170, r3171, r3172, r3173, r3174, r3175, r3176, r3177, r3178, r3179, r3180⟩

theorem dtk_rung35 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1018 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX35 rho : F), (dtkAccY35 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 2660 : F), (rho 2661 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX35 rho : F), (dtkAccY35 rho : F)⟩
        ⟨(rho 2660 : F), (rho 2661 : F)⟩
        ⟨(dtkAccX36 rho : F), (dtkAccY36 rho : F)⟩
        ⟨(rho 2673 : F), (rho 2674 : F)⟩ := by
  obtain ⟨r3168, r3169, r3170, r3171, r3172, r3173, r3174, r3175, r3176, r3177, r3178, r3179, r3180⟩ := dtk_rows35 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3168 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc261 at r3168
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3168
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3169 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc262 at r3169
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3169
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3170 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc263 at r3170
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3170
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3171 at r3171
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3172 at r3172
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3173 at r3173
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3174 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc264 at r3174
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3174
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3175 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc265 at r3175
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3175
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3176 at r3176
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3177 at r3177
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3178 at r3178
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3179 at r3179
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3180 at r3180
  have hrung35 (bit : Bool) (hbit : rho 1018 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX35 rho : F), (dtkAccY35 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 2660 : F), (rho 2661 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX35 rho : F), (dtkAccY35 rho : F)⟩
        ⟨(rho 2660 : F), (rho 2661 : F)⟩
        ⟨(dtkAccX36 rho : F), (dtkAccY36 rho : F)⟩
        ⟨(rho 2673 : F), (rho 2674 : F)⟩ := by
    have hnextx : dtkAccX36 rho = dtkAccX35 rho + rho 2668 := by
      unfold dtkAccX36 dtkAccX35
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 34]
      ring
    have hnexty : dtkAccY36 rho = dtkAccY35 rho + rho 2669 := by
      unfold dtkAccY36 dtkAccY35
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 35]
      ring
    have ha0 : (rho 2660 + rho 2661) * (dtkAccX35 rho + dtkAccY35 rho) = rho 2662 := by
      unfold dtkAccX35 dtkAccY35
      linear_combination r3168
    have ha1 : rho 2661 * dtkAccX35 rho = rho 2663 := by
      unfold dtkAccX35
      linear_combination r3169
    have ha2 : rho 2660 * dtkAccY35 rho = rho 2664 := by
      unfold dtkAccY35
      linear_combination r3170
    have ha3 : 3021 * rho 2663 * rho 2664 = rho 2665 := by
      linear_combination r3171
    have ha4 : rho 2666 * (1 + rho 2665) = rho 2663 + rho 2664 := by
      linear_combination r3172
    have ha5 : rho 2667 * (1 - rho 2665) = rho 2662 - rho 2663 - rho 2664 := by
      linear_combination r3173
    have haddx :
        rho 2666 * (1 + 3021 * (rho 2661 * dtkAccX35 rho) * (rho 2660 * dtkAccY35 rho)) =
          rho 2661 * dtkAccX35 rho + rho 2660 * dtkAccY35 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 2667 * (1 - 3021 * (rho 2661 * dtkAccX35 rho) * (rho 2660 * dtkAccY35 rho)) =
          (-1) * (rho 2661 * dtkAccX35 rho) - rho 2660 * dtkAccY35 rho +
            (dtkAccY35 rho - dtkAccX35 rho * (-1)) * (rho 2660 + rho 2661) := by
      rw [ha1, ha2, ha3]
      calc
        rho 2667 * (1 - rho 2665) = rho 2662 - rho 2663 - rho 2664 := ha5
        _ = (-1) * rho 2663 - rho 2664 + (dtkAccY35 rho - dtkAccX35 rho * (-1)) * (rho 2660 + rho 2661) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX36 rho = dtkAccX35 rho - Bool.toZMod bit * (dtkAccX35 rho - rho 2666) := by
      have hd : rho 2668 = Bool.toZMod bit * (rho 2666 - dtkAccX35 rho) := by
        rw [← hbit]
        unfold dtkAccX35
        linear_combination -r3174
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY36 rho = dtkAccY35 rho - Bool.toZMod bit * (dtkAccY35 rho - rho 2667) := by
      have hd : rho 2669 = Bool.toZMod bit * (rho 2667 - dtkAccY35 rho) := by
        rw [← hbit]
        unfold dtkAccY35
        linear_combination -r3175
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 2660 * rho 2661 = rho 2670 := by linear_combination r3176
    have hd1 : rho 2660 * rho 2660 = rho 2671 := by linear_combination r3177
    have hd2 : rho 2661 * rho 2661 = rho 2672 := by linear_combination r3178
    have hd3 : rho 2673 * (rho 2661 * rho 2661 + rho 2660 * rho 2660 * (-1)) = 2 * (rho 2660 * rho 2661) := by
      rw [hd0, hd1, hd2]
      linear_combination r3179
    have hd4 : rho 2674 * (2 - (rho 2661 * rho 2661 + rho 2660 * rho 2660 * (-1))) = rho 2661 * rho 2661 - rho 2660 * rho 2660 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3180
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX35 rho : F), (dtkAccY35 rho : F)⟩
      ⟨(rho 2660 : F), (rho 2661 : F)⟩
      ⟨(rho 2666 : F), (rho 2667 : F)⟩
      ⟨(dtkAccX36 rho : F), (dtkAccY36 rho : F)⟩
      ⟨(rho 2673 : F), (rho 2674 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung35

theorem dtk_hstep_c5 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (983 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 30 ≤ i → i < 36 →
      EdwardsBridge.onCurve (dtkLadderAccState rho i) →
      EdwardsBridge.onCurve (dtkLadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (dtkLadderAccState rho i) (dtkLadderCurState rho i)
        (dtkLadderAccState rho (i + 1)) (dtkLadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact dtk_rung30 rho h bits[30]! (hbitAt 30 (by omega)) hacc hcur
  · exact dtk_rung31 rho h bits[31]! (hbitAt 31 (by omega)) hacc hcur
  · exact dtk_rung32 rho h bits[32]! (hbitAt 32 (by omega)) hacc hcur
  · exact dtk_rung33 rho h bits[33]! (hbitAt 33 (by omega)) hacc hcur
  · exact dtk_rung34 rho h bits[34]! (hbitAt 34 (by omega)) hacc hcur
  · exact dtk_rung35 rho h bits[35]! (hbitAt 35 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport
