import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDtkScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs

theorem dtk_rows60 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3493 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3494 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3495 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3496 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3497 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3498 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3499 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3500 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3501 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3502 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3503 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3504 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3505 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p43, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart43 at p43
  rcases p43 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3493, r3494, r3495, r3496, r3497, r3498, r3499, r3500, r3501, r3502, r3503, r3504, r3505, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3493, r3494, r3495, r3496, r3497, r3498, r3499, r3500, r3501, r3502, r3503, r3504, r3505⟩

theorem dtk_rung60 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1043 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX60 rho : F), (dtkAccY60 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 2985 : F), (rho 2986 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX60 rho : F), (dtkAccY60 rho : F)⟩
        ⟨(rho 2985 : F), (rho 2986 : F)⟩
        ⟨(dtkAccX61 rho : F), (dtkAccY61 rho : F)⟩
        ⟨(rho 2998 : F), (rho 2999 : F)⟩ := by
  obtain ⟨r3493, r3494, r3495, r3496, r3497, r3498, r3499, r3500, r3501, r3502, r3503, r3504, r3505⟩ := dtk_rows60 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3493 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc386 at r3493
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3493
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3494 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc387 at r3494
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3494
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3495 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc388 at r3495
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3495
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3496 at r3496
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3497 at r3497
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3498 at r3498
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3499 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc389 at r3499
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3499
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3500 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc390 at r3500
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3500
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3501 at r3501
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3502 at r3502
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3503 at r3503
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3504 at r3504
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3505 at r3505
  have hrung60 (bit : Bool) (hbit : rho 1043 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX60 rho : F), (dtkAccY60 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 2985 : F), (rho 2986 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX60 rho : F), (dtkAccY60 rho : F)⟩
        ⟨(rho 2985 : F), (rho 2986 : F)⟩
        ⟨(dtkAccX61 rho : F), (dtkAccY61 rho : F)⟩
        ⟨(rho 2998 : F), (rho 2999 : F)⟩ := by
    have hnextx : dtkAccX61 rho = dtkAccX60 rho + rho 2993 := by
      unfold dtkAccX61 dtkAccX60
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 59]
      ring
    have hnexty : dtkAccY61 rho = dtkAccY60 rho + rho 2994 := by
      unfold dtkAccY61 dtkAccY60
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 60]
      ring
    have ha0 : (rho 2985 + rho 2986) * (dtkAccX60 rho + dtkAccY60 rho) = rho 2987 := by
      unfold dtkAccX60 dtkAccY60
      linear_combination r3493
    have ha1 : rho 2986 * dtkAccX60 rho = rho 2988 := by
      unfold dtkAccX60
      linear_combination r3494
    have ha2 : rho 2985 * dtkAccY60 rho = rho 2989 := by
      unfold dtkAccY60
      linear_combination r3495
    have ha3 : 3021 * rho 2988 * rho 2989 = rho 2990 := by
      linear_combination r3496
    have ha4 : rho 2991 * (1 + rho 2990) = rho 2988 + rho 2989 := by
      linear_combination r3497
    have ha5 : rho 2992 * (1 - rho 2990) = rho 2987 - rho 2988 - rho 2989 := by
      linear_combination r3498
    have haddx :
        rho 2991 * (1 + 3021 * (rho 2986 * dtkAccX60 rho) * (rho 2985 * dtkAccY60 rho)) =
          rho 2986 * dtkAccX60 rho + rho 2985 * dtkAccY60 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 2992 * (1 - 3021 * (rho 2986 * dtkAccX60 rho) * (rho 2985 * dtkAccY60 rho)) =
          (-1) * (rho 2986 * dtkAccX60 rho) - rho 2985 * dtkAccY60 rho +
            (dtkAccY60 rho - dtkAccX60 rho * (-1)) * (rho 2985 + rho 2986) := by
      rw [ha1, ha2, ha3]
      calc
        rho 2992 * (1 - rho 2990) = rho 2987 - rho 2988 - rho 2989 := ha5
        _ = (-1) * rho 2988 - rho 2989 + (dtkAccY60 rho - dtkAccX60 rho * (-1)) * (rho 2985 + rho 2986) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX61 rho = dtkAccX60 rho - Bool.toZMod bit * (dtkAccX60 rho - rho 2991) := by
      have hd : rho 2993 = Bool.toZMod bit * (rho 2991 - dtkAccX60 rho) := by
        rw [← hbit]
        unfold dtkAccX60
        linear_combination -r3499
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY61 rho = dtkAccY60 rho - Bool.toZMod bit * (dtkAccY60 rho - rho 2992) := by
      have hd : rho 2994 = Bool.toZMod bit * (rho 2992 - dtkAccY60 rho) := by
        rw [← hbit]
        unfold dtkAccY60
        linear_combination -r3500
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 2985 * rho 2986 = rho 2995 := by linear_combination r3501
    have hd1 : rho 2985 * rho 2985 = rho 2996 := by linear_combination r3502
    have hd2 : rho 2986 * rho 2986 = rho 2997 := by linear_combination r3503
    have hd3 : rho 2998 * (rho 2986 * rho 2986 + rho 2985 * rho 2985 * (-1)) = 2 * (rho 2985 * rho 2986) := by
      rw [hd0, hd1, hd2]
      linear_combination r3504
    have hd4 : rho 2999 * (2 - (rho 2986 * rho 2986 + rho 2985 * rho 2985 * (-1))) = rho 2986 * rho 2986 - rho 2985 * rho 2985 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3505
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX60 rho : F), (dtkAccY60 rho : F)⟩
      ⟨(rho 2985 : F), (rho 2986 : F)⟩
      ⟨(rho 2991 : F), (rho 2992 : F)⟩
      ⟨(dtkAccX61 rho : F), (dtkAccY61 rho : F)⟩
      ⟨(rho 2998 : F), (rho 2999 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung60

theorem dtk_rows61 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3506 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3507 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3508 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3509 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3510 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3511 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3512 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3513 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3514 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3515 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3516 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3517 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3518 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p43, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart43 at p43
  rcases p43 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3506, r3507, r3508, r3509, r3510, r3511, r3512, r3513, r3514, r3515, r3516, r3517, r3518, _⟩
  exact ⟨r3506, r3507, r3508, r3509, r3510, r3511, r3512, r3513, r3514, r3515, r3516, r3517, r3518⟩

theorem dtk_rung61 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1044 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX61 rho : F), (dtkAccY61 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 2998 : F), (rho 2999 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX61 rho : F), (dtkAccY61 rho : F)⟩
        ⟨(rho 2998 : F), (rho 2999 : F)⟩
        ⟨(dtkAccX62 rho : F), (dtkAccY62 rho : F)⟩
        ⟨(rho 3011 : F), (rho 3012 : F)⟩ := by
  obtain ⟨r3506, r3507, r3508, r3509, r3510, r3511, r3512, r3513, r3514, r3515, r3516, r3517, r3518⟩ := dtk_rows61 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3506 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc391 at r3506
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3506
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3507 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc392 at r3507
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3507
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3508 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc393 at r3508
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3508
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3509 at r3509
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3510 at r3510
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3511 at r3511
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3512 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc394 at r3512
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3512
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3513 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc395 at r3513
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3513
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3514 at r3514
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3515 at r3515
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3516 at r3516
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3517 at r3517
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3518 at r3518
  have hrung61 (bit : Bool) (hbit : rho 1044 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX61 rho : F), (dtkAccY61 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 2998 : F), (rho 2999 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX61 rho : F), (dtkAccY61 rho : F)⟩
        ⟨(rho 2998 : F), (rho 2999 : F)⟩
        ⟨(dtkAccX62 rho : F), (dtkAccY62 rho : F)⟩
        ⟨(rho 3011 : F), (rho 3012 : F)⟩ := by
    have hnextx : dtkAccX62 rho = dtkAccX61 rho + rho 3006 := by
      unfold dtkAccX62 dtkAccX61
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 60]
      ring
    have hnexty : dtkAccY62 rho = dtkAccY61 rho + rho 3007 := by
      unfold dtkAccY62 dtkAccY61
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 61]
      ring
    have ha0 : (rho 2998 + rho 2999) * (dtkAccX61 rho + dtkAccY61 rho) = rho 3000 := by
      unfold dtkAccX61 dtkAccY61
      linear_combination r3506
    have ha1 : rho 2999 * dtkAccX61 rho = rho 3001 := by
      unfold dtkAccX61
      linear_combination r3507
    have ha2 : rho 2998 * dtkAccY61 rho = rho 3002 := by
      unfold dtkAccY61
      linear_combination r3508
    have ha3 : 3021 * rho 3001 * rho 3002 = rho 3003 := by
      linear_combination r3509
    have ha4 : rho 3004 * (1 + rho 3003) = rho 3001 + rho 3002 := by
      linear_combination r3510
    have ha5 : rho 3005 * (1 - rho 3003) = rho 3000 - rho 3001 - rho 3002 := by
      linear_combination r3511
    have haddx :
        rho 3004 * (1 + 3021 * (rho 2999 * dtkAccX61 rho) * (rho 2998 * dtkAccY61 rho)) =
          rho 2999 * dtkAccX61 rho + rho 2998 * dtkAccY61 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3005 * (1 - 3021 * (rho 2999 * dtkAccX61 rho) * (rho 2998 * dtkAccY61 rho)) =
          (-1) * (rho 2999 * dtkAccX61 rho) - rho 2998 * dtkAccY61 rho +
            (dtkAccY61 rho - dtkAccX61 rho * (-1)) * (rho 2998 + rho 2999) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3005 * (1 - rho 3003) = rho 3000 - rho 3001 - rho 3002 := ha5
        _ = (-1) * rho 3001 - rho 3002 + (dtkAccY61 rho - dtkAccX61 rho * (-1)) * (rho 2998 + rho 2999) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX62 rho = dtkAccX61 rho - Bool.toZMod bit * (dtkAccX61 rho - rho 3004) := by
      have hd : rho 3006 = Bool.toZMod bit * (rho 3004 - dtkAccX61 rho) := by
        rw [← hbit]
        unfold dtkAccX61
        linear_combination -r3512
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY62 rho = dtkAccY61 rho - Bool.toZMod bit * (dtkAccY61 rho - rho 3005) := by
      have hd : rho 3007 = Bool.toZMod bit * (rho 3005 - dtkAccY61 rho) := by
        rw [← hbit]
        unfold dtkAccY61
        linear_combination -r3513
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 2998 * rho 2999 = rho 3008 := by linear_combination r3514
    have hd1 : rho 2998 * rho 2998 = rho 3009 := by linear_combination r3515
    have hd2 : rho 2999 * rho 2999 = rho 3010 := by linear_combination r3516
    have hd3 : rho 3011 * (rho 2999 * rho 2999 + rho 2998 * rho 2998 * (-1)) = 2 * (rho 2998 * rho 2999) := by
      rw [hd0, hd1, hd2]
      linear_combination r3517
    have hd4 : rho 3012 * (2 - (rho 2999 * rho 2999 + rho 2998 * rho 2998 * (-1))) = rho 2999 * rho 2999 - rho 2998 * rho 2998 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3518
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX61 rho : F), (dtkAccY61 rho : F)⟩
      ⟨(rho 2998 : F), (rho 2999 : F)⟩
      ⟨(rho 3004 : F), (rho 3005 : F)⟩
      ⟨(dtkAccX62 rho : F), (dtkAccY62 rho : F)⟩
      ⟨(rho 3011 : F), (rho 3012 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung61

theorem dtk_rows62 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3519 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3520 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3521 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3522 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3523 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3524 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3525 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3526 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3527 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3528 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3529 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3530 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3531 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p43, p44, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart43 at p43
  rcases p43 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3519⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart44 at p44
  rcases p44 with ⟨r3520, r3521, r3522, r3523, r3524, r3525, r3526, r3527, r3528, r3529, r3530, r3531, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3519, r3520, r3521, r3522, r3523, r3524, r3525, r3526, r3527, r3528, r3529, r3530, r3531⟩

theorem dtk_rung62 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1045 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX62 rho : F), (dtkAccY62 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3011 : F), (rho 3012 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX62 rho : F), (dtkAccY62 rho : F)⟩
        ⟨(rho 3011 : F), (rho 3012 : F)⟩
        ⟨(dtkAccX63 rho : F), (dtkAccY63 rho : F)⟩
        ⟨(rho 3024 : F), (rho 3025 : F)⟩ := by
  obtain ⟨r3519, r3520, r3521, r3522, r3523, r3524, r3525, r3526, r3527, r3528, r3529, r3530, r3531⟩ := dtk_rows62 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3519 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc396 at r3519
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3519
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3520 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc397 at r3520
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3520
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3521 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc398 at r3521
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3521
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3522 at r3522
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3523 at r3523
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3524 at r3524
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3525 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc399 at r3525
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3525
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3526 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc400 at r3526
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3526
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3527 at r3527
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3528 at r3528
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3529 at r3529
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3530 at r3530
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3531 at r3531
  have hrung62 (bit : Bool) (hbit : rho 1045 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX62 rho : F), (dtkAccY62 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3011 : F), (rho 3012 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX62 rho : F), (dtkAccY62 rho : F)⟩
        ⟨(rho 3011 : F), (rho 3012 : F)⟩
        ⟨(dtkAccX63 rho : F), (dtkAccY63 rho : F)⟩
        ⟨(rho 3024 : F), (rho 3025 : F)⟩ := by
    have hnextx : dtkAccX63 rho = dtkAccX62 rho + rho 3019 := by
      unfold dtkAccX63 dtkAccX62
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 61]
      ring
    have hnexty : dtkAccY63 rho = dtkAccY62 rho + rho 3020 := by
      unfold dtkAccY63 dtkAccY62
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 62]
      ring
    have ha0 : (rho 3011 + rho 3012) * (dtkAccX62 rho + dtkAccY62 rho) = rho 3013 := by
      unfold dtkAccX62 dtkAccY62
      linear_combination r3519
    have ha1 : rho 3012 * dtkAccX62 rho = rho 3014 := by
      unfold dtkAccX62
      linear_combination r3520
    have ha2 : rho 3011 * dtkAccY62 rho = rho 3015 := by
      unfold dtkAccY62
      linear_combination r3521
    have ha3 : 3021 * rho 3014 * rho 3015 = rho 3016 := by
      linear_combination r3522
    have ha4 : rho 3017 * (1 + rho 3016) = rho 3014 + rho 3015 := by
      linear_combination r3523
    have ha5 : rho 3018 * (1 - rho 3016) = rho 3013 - rho 3014 - rho 3015 := by
      linear_combination r3524
    have haddx :
        rho 3017 * (1 + 3021 * (rho 3012 * dtkAccX62 rho) * (rho 3011 * dtkAccY62 rho)) =
          rho 3012 * dtkAccX62 rho + rho 3011 * dtkAccY62 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3018 * (1 - 3021 * (rho 3012 * dtkAccX62 rho) * (rho 3011 * dtkAccY62 rho)) =
          (-1) * (rho 3012 * dtkAccX62 rho) - rho 3011 * dtkAccY62 rho +
            (dtkAccY62 rho - dtkAccX62 rho * (-1)) * (rho 3011 + rho 3012) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3018 * (1 - rho 3016) = rho 3013 - rho 3014 - rho 3015 := ha5
        _ = (-1) * rho 3014 - rho 3015 + (dtkAccY62 rho - dtkAccX62 rho * (-1)) * (rho 3011 + rho 3012) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX63 rho = dtkAccX62 rho - Bool.toZMod bit * (dtkAccX62 rho - rho 3017) := by
      have hd : rho 3019 = Bool.toZMod bit * (rho 3017 - dtkAccX62 rho) := by
        rw [← hbit]
        unfold dtkAccX62
        linear_combination -r3525
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY63 rho = dtkAccY62 rho - Bool.toZMod bit * (dtkAccY62 rho - rho 3018) := by
      have hd : rho 3020 = Bool.toZMod bit * (rho 3018 - dtkAccY62 rho) := by
        rw [← hbit]
        unfold dtkAccY62
        linear_combination -r3526
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3011 * rho 3012 = rho 3021 := by linear_combination r3527
    have hd1 : rho 3011 * rho 3011 = rho 3022 := by linear_combination r3528
    have hd2 : rho 3012 * rho 3012 = rho 3023 := by linear_combination r3529
    have hd3 : rho 3024 * (rho 3012 * rho 3012 + rho 3011 * rho 3011 * (-1)) = 2 * (rho 3011 * rho 3012) := by
      rw [hd0, hd1, hd2]
      linear_combination r3530
    have hd4 : rho 3025 * (2 - (rho 3012 * rho 3012 + rho 3011 * rho 3011 * (-1))) = rho 3012 * rho 3012 - rho 3011 * rho 3011 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3531
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX62 rho : F), (dtkAccY62 rho : F)⟩
      ⟨(rho 3011 : F), (rho 3012 : F)⟩
      ⟨(rho 3017 : F), (rho 3018 : F)⟩
      ⟨(dtkAccX63 rho : F), (dtkAccY63 rho : F)⟩
      ⟨(rho 3024 : F), (rho 3025 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung62

theorem dtk_rows63 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3532 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3533 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3534 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3535 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3536 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3537 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3538 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3539 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3540 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3541 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3542 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3543 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3544 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p44, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart44 at p44
  rcases p44 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, r3532, r3533, r3534, r3535, r3536, r3537, r3538, r3539, r3540, r3541, r3542, r3543, r3544, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3532, r3533, r3534, r3535, r3536, r3537, r3538, r3539, r3540, r3541, r3542, r3543, r3544⟩

theorem dtk_rung63 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1046 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX63 rho : F), (dtkAccY63 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3024 : F), (rho 3025 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX63 rho : F), (dtkAccY63 rho : F)⟩
        ⟨(rho 3024 : F), (rho 3025 : F)⟩
        ⟨(dtkAccX64 rho : F), (dtkAccY64 rho : F)⟩
        ⟨(rho 3037 : F), (rho 3038 : F)⟩ := by
  obtain ⟨r3532, r3533, r3534, r3535, r3536, r3537, r3538, r3539, r3540, r3541, r3542, r3543, r3544⟩ := dtk_rows63 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3532 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc401 at r3532
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3532
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3533 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc402 at r3533
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3533
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3534 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc403 at r3534
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3534
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3535 at r3535
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3536 at r3536
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3537 at r3537
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3538 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc404 at r3538
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3538
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3539 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc405 at r3539
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3539
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3540 at r3540
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3541 at r3541
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3542 at r3542
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3543 at r3543
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3544 at r3544
  have hrung63 (bit : Bool) (hbit : rho 1046 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX63 rho : F), (dtkAccY63 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3024 : F), (rho 3025 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX63 rho : F), (dtkAccY63 rho : F)⟩
        ⟨(rho 3024 : F), (rho 3025 : F)⟩
        ⟨(dtkAccX64 rho : F), (dtkAccY64 rho : F)⟩
        ⟨(rho 3037 : F), (rho 3038 : F)⟩ := by
    have hnextx : dtkAccX64 rho = dtkAccX63 rho + rho 3032 := by
      unfold dtkAccX64 dtkAccX63
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 62]
      ring
    have hnexty : dtkAccY64 rho = dtkAccY63 rho + rho 3033 := by
      unfold dtkAccY64 dtkAccY63
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 63]
      ring
    have ha0 : (rho 3024 + rho 3025) * (dtkAccX63 rho + dtkAccY63 rho) = rho 3026 := by
      unfold dtkAccX63 dtkAccY63
      linear_combination r3532
    have ha1 : rho 3025 * dtkAccX63 rho = rho 3027 := by
      unfold dtkAccX63
      linear_combination r3533
    have ha2 : rho 3024 * dtkAccY63 rho = rho 3028 := by
      unfold dtkAccY63
      linear_combination r3534
    have ha3 : 3021 * rho 3027 * rho 3028 = rho 3029 := by
      linear_combination r3535
    have ha4 : rho 3030 * (1 + rho 3029) = rho 3027 + rho 3028 := by
      linear_combination r3536
    have ha5 : rho 3031 * (1 - rho 3029) = rho 3026 - rho 3027 - rho 3028 := by
      linear_combination r3537
    have haddx :
        rho 3030 * (1 + 3021 * (rho 3025 * dtkAccX63 rho) * (rho 3024 * dtkAccY63 rho)) =
          rho 3025 * dtkAccX63 rho + rho 3024 * dtkAccY63 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3031 * (1 - 3021 * (rho 3025 * dtkAccX63 rho) * (rho 3024 * dtkAccY63 rho)) =
          (-1) * (rho 3025 * dtkAccX63 rho) - rho 3024 * dtkAccY63 rho +
            (dtkAccY63 rho - dtkAccX63 rho * (-1)) * (rho 3024 + rho 3025) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3031 * (1 - rho 3029) = rho 3026 - rho 3027 - rho 3028 := ha5
        _ = (-1) * rho 3027 - rho 3028 + (dtkAccY63 rho - dtkAccX63 rho * (-1)) * (rho 3024 + rho 3025) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX64 rho = dtkAccX63 rho - Bool.toZMod bit * (dtkAccX63 rho - rho 3030) := by
      have hd : rho 3032 = Bool.toZMod bit * (rho 3030 - dtkAccX63 rho) := by
        rw [← hbit]
        unfold dtkAccX63
        linear_combination -r3538
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY64 rho = dtkAccY63 rho - Bool.toZMod bit * (dtkAccY63 rho - rho 3031) := by
      have hd : rho 3033 = Bool.toZMod bit * (rho 3031 - dtkAccY63 rho) := by
        rw [← hbit]
        unfold dtkAccY63
        linear_combination -r3539
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3024 * rho 3025 = rho 3034 := by linear_combination r3540
    have hd1 : rho 3024 * rho 3024 = rho 3035 := by linear_combination r3541
    have hd2 : rho 3025 * rho 3025 = rho 3036 := by linear_combination r3542
    have hd3 : rho 3037 * (rho 3025 * rho 3025 + rho 3024 * rho 3024 * (-1)) = 2 * (rho 3024 * rho 3025) := by
      rw [hd0, hd1, hd2]
      linear_combination r3543
    have hd4 : rho 3038 * (2 - (rho 3025 * rho 3025 + rho 3024 * rho 3024 * (-1))) = rho 3025 * rho 3025 - rho 3024 * rho 3024 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3544
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX63 rho : F), (dtkAccY63 rho : F)⟩
      ⟨(rho 3024 : F), (rho 3025 : F)⟩
      ⟨(rho 3030 : F), (rho 3031 : F)⟩
      ⟨(dtkAccX64 rho : F), (dtkAccY64 rho : F)⟩
      ⟨(rho 3037 : F), (rho 3038 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung63

theorem dtk_rows64 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3545 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3546 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3547 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3548 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3549 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3550 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3551 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3552 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3553 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3554 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3555 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3556 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3557 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p44, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart44 at p44
  rcases p44 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3545, r3546, r3547, r3548, r3549, r3550, r3551, r3552, r3553, r3554, r3555, r3556, r3557, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3545, r3546, r3547, r3548, r3549, r3550, r3551, r3552, r3553, r3554, r3555, r3556, r3557⟩

theorem dtk_rung64 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1047 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX64 rho : F), (dtkAccY64 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3037 : F), (rho 3038 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX64 rho : F), (dtkAccY64 rho : F)⟩
        ⟨(rho 3037 : F), (rho 3038 : F)⟩
        ⟨(dtkAccX65 rho : F), (dtkAccY65 rho : F)⟩
        ⟨(rho 3050 : F), (rho 3051 : F)⟩ := by
  obtain ⟨r3545, r3546, r3547, r3548, r3549, r3550, r3551, r3552, r3553, r3554, r3555, r3556, r3557⟩ := dtk_rows64 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3545 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc406 at r3545
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3545
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3546 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc407 at r3546
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3546
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3547 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc408 at r3547
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3547
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3548 at r3548
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3549 at r3549
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3550 at r3550
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3551 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc409 at r3551
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3551
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3552 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc410 at r3552
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3552
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3553 at r3553
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3554 at r3554
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3555 at r3555
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3556 at r3556
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3557 at r3557
  have hrung64 (bit : Bool) (hbit : rho 1047 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX64 rho : F), (dtkAccY64 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3037 : F), (rho 3038 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX64 rho : F), (dtkAccY64 rho : F)⟩
        ⟨(rho 3037 : F), (rho 3038 : F)⟩
        ⟨(dtkAccX65 rho : F), (dtkAccY65 rho : F)⟩
        ⟨(rho 3050 : F), (rho 3051 : F)⟩ := by
    have hnextx : dtkAccX65 rho = dtkAccX64 rho + rho 3045 := by
      unfold dtkAccX65 dtkAccX64
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 63]
      ring
    have hnexty : dtkAccY65 rho = dtkAccY64 rho + rho 3046 := by
      unfold dtkAccY65 dtkAccY64
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 64]
      ring
    have ha0 : (rho 3037 + rho 3038) * (dtkAccX64 rho + dtkAccY64 rho) = rho 3039 := by
      unfold dtkAccX64 dtkAccY64
      linear_combination r3545
    have ha1 : rho 3038 * dtkAccX64 rho = rho 3040 := by
      unfold dtkAccX64
      linear_combination r3546
    have ha2 : rho 3037 * dtkAccY64 rho = rho 3041 := by
      unfold dtkAccY64
      linear_combination r3547
    have ha3 : 3021 * rho 3040 * rho 3041 = rho 3042 := by
      linear_combination r3548
    have ha4 : rho 3043 * (1 + rho 3042) = rho 3040 + rho 3041 := by
      linear_combination r3549
    have ha5 : rho 3044 * (1 - rho 3042) = rho 3039 - rho 3040 - rho 3041 := by
      linear_combination r3550
    have haddx :
        rho 3043 * (1 + 3021 * (rho 3038 * dtkAccX64 rho) * (rho 3037 * dtkAccY64 rho)) =
          rho 3038 * dtkAccX64 rho + rho 3037 * dtkAccY64 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3044 * (1 - 3021 * (rho 3038 * dtkAccX64 rho) * (rho 3037 * dtkAccY64 rho)) =
          (-1) * (rho 3038 * dtkAccX64 rho) - rho 3037 * dtkAccY64 rho +
            (dtkAccY64 rho - dtkAccX64 rho * (-1)) * (rho 3037 + rho 3038) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3044 * (1 - rho 3042) = rho 3039 - rho 3040 - rho 3041 := ha5
        _ = (-1) * rho 3040 - rho 3041 + (dtkAccY64 rho - dtkAccX64 rho * (-1)) * (rho 3037 + rho 3038) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX65 rho = dtkAccX64 rho - Bool.toZMod bit * (dtkAccX64 rho - rho 3043) := by
      have hd : rho 3045 = Bool.toZMod bit * (rho 3043 - dtkAccX64 rho) := by
        rw [← hbit]
        unfold dtkAccX64
        linear_combination -r3551
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY65 rho = dtkAccY64 rho - Bool.toZMod bit * (dtkAccY64 rho - rho 3044) := by
      have hd : rho 3046 = Bool.toZMod bit * (rho 3044 - dtkAccY64 rho) := by
        rw [← hbit]
        unfold dtkAccY64
        linear_combination -r3552
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3037 * rho 3038 = rho 3047 := by linear_combination r3553
    have hd1 : rho 3037 * rho 3037 = rho 3048 := by linear_combination r3554
    have hd2 : rho 3038 * rho 3038 = rho 3049 := by linear_combination r3555
    have hd3 : rho 3050 * (rho 3038 * rho 3038 + rho 3037 * rho 3037 * (-1)) = 2 * (rho 3037 * rho 3038) := by
      rw [hd0, hd1, hd2]
      linear_combination r3556
    have hd4 : rho 3051 * (2 - (rho 3038 * rho 3038 + rho 3037 * rho 3037 * (-1))) = rho 3038 * rho 3038 - rho 3037 * rho 3037 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3557
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX64 rho : F), (dtkAccY64 rho : F)⟩
      ⟨(rho 3037 : F), (rho 3038 : F)⟩
      ⟨(rho 3043 : F), (rho 3044 : F)⟩
      ⟨(dtkAccX65 rho : F), (dtkAccY65 rho : F)⟩
      ⟨(rho 3050 : F), (rho 3051 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung64

theorem dtk_rows65 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3558 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3559 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3560 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3561 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3562 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3563 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3564 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3565 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3566 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3567 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3568 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3569 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3570 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p44, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart44 at p44
  rcases p44 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3558, r3559, r3560, r3561, r3562, r3563, r3564, r3565, r3566, r3567, r3568, r3569, r3570, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3558, r3559, r3560, r3561, r3562, r3563, r3564, r3565, r3566, r3567, r3568, r3569, r3570⟩

theorem dtk_rung65 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1048 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX65 rho : F), (dtkAccY65 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3050 : F), (rho 3051 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX65 rho : F), (dtkAccY65 rho : F)⟩
        ⟨(rho 3050 : F), (rho 3051 : F)⟩
        ⟨(dtkAccX66 rho : F), (dtkAccY66 rho : F)⟩
        ⟨(rho 3063 : F), (rho 3064 : F)⟩ := by
  obtain ⟨r3558, r3559, r3560, r3561, r3562, r3563, r3564, r3565, r3566, r3567, r3568, r3569, r3570⟩ := dtk_rows65 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3558 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc411 at r3558
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3558
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3559 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc412 at r3559
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3559
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3560 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc413 at r3560
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3560
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3561 at r3561
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3562 at r3562
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3563 at r3563
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3564 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc414 at r3564
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3564
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3565 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc415 at r3565
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3565
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3566 at r3566
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3567 at r3567
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3568 at r3568
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3569 at r3569
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3570 at r3570
  have hrung65 (bit : Bool) (hbit : rho 1048 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX65 rho : F), (dtkAccY65 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3050 : F), (rho 3051 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX65 rho : F), (dtkAccY65 rho : F)⟩
        ⟨(rho 3050 : F), (rho 3051 : F)⟩
        ⟨(dtkAccX66 rho : F), (dtkAccY66 rho : F)⟩
        ⟨(rho 3063 : F), (rho 3064 : F)⟩ := by
    have hnextx : dtkAccX66 rho = dtkAccX65 rho + rho 3058 := by
      unfold dtkAccX66 dtkAccX65
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 64]
      ring
    have hnexty : dtkAccY66 rho = dtkAccY65 rho + rho 3059 := by
      unfold dtkAccY66 dtkAccY65
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 65]
      ring
    have ha0 : (rho 3050 + rho 3051) * (dtkAccX65 rho + dtkAccY65 rho) = rho 3052 := by
      unfold dtkAccX65 dtkAccY65
      linear_combination r3558
    have ha1 : rho 3051 * dtkAccX65 rho = rho 3053 := by
      unfold dtkAccX65
      linear_combination r3559
    have ha2 : rho 3050 * dtkAccY65 rho = rho 3054 := by
      unfold dtkAccY65
      linear_combination r3560
    have ha3 : 3021 * rho 3053 * rho 3054 = rho 3055 := by
      linear_combination r3561
    have ha4 : rho 3056 * (1 + rho 3055) = rho 3053 + rho 3054 := by
      linear_combination r3562
    have ha5 : rho 3057 * (1 - rho 3055) = rho 3052 - rho 3053 - rho 3054 := by
      linear_combination r3563
    have haddx :
        rho 3056 * (1 + 3021 * (rho 3051 * dtkAccX65 rho) * (rho 3050 * dtkAccY65 rho)) =
          rho 3051 * dtkAccX65 rho + rho 3050 * dtkAccY65 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3057 * (1 - 3021 * (rho 3051 * dtkAccX65 rho) * (rho 3050 * dtkAccY65 rho)) =
          (-1) * (rho 3051 * dtkAccX65 rho) - rho 3050 * dtkAccY65 rho +
            (dtkAccY65 rho - dtkAccX65 rho * (-1)) * (rho 3050 + rho 3051) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3057 * (1 - rho 3055) = rho 3052 - rho 3053 - rho 3054 := ha5
        _ = (-1) * rho 3053 - rho 3054 + (dtkAccY65 rho - dtkAccX65 rho * (-1)) * (rho 3050 + rho 3051) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX66 rho = dtkAccX65 rho - Bool.toZMod bit * (dtkAccX65 rho - rho 3056) := by
      have hd : rho 3058 = Bool.toZMod bit * (rho 3056 - dtkAccX65 rho) := by
        rw [← hbit]
        unfold dtkAccX65
        linear_combination -r3564
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY66 rho = dtkAccY65 rho - Bool.toZMod bit * (dtkAccY65 rho - rho 3057) := by
      have hd : rho 3059 = Bool.toZMod bit * (rho 3057 - dtkAccY65 rho) := by
        rw [← hbit]
        unfold dtkAccY65
        linear_combination -r3565
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3050 * rho 3051 = rho 3060 := by linear_combination r3566
    have hd1 : rho 3050 * rho 3050 = rho 3061 := by linear_combination r3567
    have hd2 : rho 3051 * rho 3051 = rho 3062 := by linear_combination r3568
    have hd3 : rho 3063 * (rho 3051 * rho 3051 + rho 3050 * rho 3050 * (-1)) = 2 * (rho 3050 * rho 3051) := by
      rw [hd0, hd1, hd2]
      linear_combination r3569
    have hd4 : rho 3064 * (2 - (rho 3051 * rho 3051 + rho 3050 * rho 3050 * (-1))) = rho 3051 * rho 3051 - rho 3050 * rho 3050 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3570
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX65 rho : F), (dtkAccY65 rho : F)⟩
      ⟨(rho 3050 : F), (rho 3051 : F)⟩
      ⟨(rho 3056 : F), (rho 3057 : F)⟩
      ⟨(dtkAccX66 rho : F), (dtkAccY66 rho : F)⟩
      ⟨(rho 3063 : F), (rho 3064 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung65

theorem dtk_hstep_c10 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (983 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 60 ≤ i → i < 66 →
      EdwardsBridge.onCurve (dtkLadderAccState rho i) →
      EdwardsBridge.onCurve (dtkLadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (dtkLadderAccState rho i) (dtkLadderCurState rho i)
        (dtkLadderAccState rho (i + 1)) (dtkLadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact dtk_rung60 rho h bits[60]! (hbitAt 60 (by omega)) hacc hcur
  · exact dtk_rung61 rho h bits[61]! (hbitAt 61 (by omega)) hacc hcur
  · exact dtk_rung62 rho h bits[62]! (hbitAt 62 (by omega)) hacc hcur
  · exact dtk_rung63 rho h bits[63]! (hbitAt 63 (by omega)) hacc hcur
  · exact dtk_rung64 rho h bits[64]! (hbitAt 64 (by omega)) hacc hcur
  · exact dtk_rung65 rho h bits[65]! (hbitAt 65 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport
