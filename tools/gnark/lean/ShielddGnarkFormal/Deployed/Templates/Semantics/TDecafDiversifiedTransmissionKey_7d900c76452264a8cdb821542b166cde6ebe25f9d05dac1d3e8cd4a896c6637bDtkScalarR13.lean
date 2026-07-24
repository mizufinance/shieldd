import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDtkScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs

theorem dtk_rows78 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3727 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3728 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3729 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3730 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3731 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3732 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3733 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3734 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3735 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3736 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3737 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3738 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3739 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p46, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart46 at p46
  rcases p46 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3727, r3728, r3729, r3730, r3731, r3732, r3733, r3734, r3735, r3736, r3737, r3738, r3739, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3727, r3728, r3729, r3730, r3731, r3732, r3733, r3734, r3735, r3736, r3737, r3738, r3739⟩

theorem dtk_rung78 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1061 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX78 rho : F), (dtkAccY78 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3219 : F), (rho 3220 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX78 rho : F), (dtkAccY78 rho : F)⟩
        ⟨(rho 3219 : F), (rho 3220 : F)⟩
        ⟨(dtkAccX79 rho : F), (dtkAccY79 rho : F)⟩
        ⟨(rho 3232 : F), (rho 3233 : F)⟩ := by
  obtain ⟨r3727, r3728, r3729, r3730, r3731, r3732, r3733, r3734, r3735, r3736, r3737, r3738, r3739⟩ := dtk_rows78 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3727 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc476 at r3727
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3727
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3728 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc477 at r3728
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3728
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3729 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc478 at r3729
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3729
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3730 at r3730
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3731 at r3731
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3732 at r3732
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3733 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc479 at r3733
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3733
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3734 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc480 at r3734
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3734
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3735 at r3735
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3736 at r3736
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3737 at r3737
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3738 at r3738
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3739 at r3739
  have hrung78 (bit : Bool) (hbit : rho 1061 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX78 rho : F), (dtkAccY78 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3219 : F), (rho 3220 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX78 rho : F), (dtkAccY78 rho : F)⟩
        ⟨(rho 3219 : F), (rho 3220 : F)⟩
        ⟨(dtkAccX79 rho : F), (dtkAccY79 rho : F)⟩
        ⟨(rho 3232 : F), (rho 3233 : F)⟩ := by
    have hnextx : dtkAccX79 rho = dtkAccX78 rho + rho 3227 := by
      unfold dtkAccX79 dtkAccX78
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 77]
      ring
    have hnexty : dtkAccY79 rho = dtkAccY78 rho + rho 3228 := by
      unfold dtkAccY79 dtkAccY78
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 78]
      ring
    have ha0 : (rho 3219 + rho 3220) * (dtkAccX78 rho + dtkAccY78 rho) = rho 3221 := by
      unfold dtkAccX78 dtkAccY78
      linear_combination r3727
    have ha1 : rho 3220 * dtkAccX78 rho = rho 3222 := by
      unfold dtkAccX78
      linear_combination r3728
    have ha2 : rho 3219 * dtkAccY78 rho = rho 3223 := by
      unfold dtkAccY78
      linear_combination r3729
    have ha3 : 3021 * rho 3222 * rho 3223 = rho 3224 := by
      linear_combination r3730
    have ha4 : rho 3225 * (1 + rho 3224) = rho 3222 + rho 3223 := by
      linear_combination r3731
    have ha5 : rho 3226 * (1 - rho 3224) = rho 3221 - rho 3222 - rho 3223 := by
      linear_combination r3732
    have haddx :
        rho 3225 * (1 + 3021 * (rho 3220 * dtkAccX78 rho) * (rho 3219 * dtkAccY78 rho)) =
          rho 3220 * dtkAccX78 rho + rho 3219 * dtkAccY78 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3226 * (1 - 3021 * (rho 3220 * dtkAccX78 rho) * (rho 3219 * dtkAccY78 rho)) =
          (-1) * (rho 3220 * dtkAccX78 rho) - rho 3219 * dtkAccY78 rho +
            (dtkAccY78 rho - dtkAccX78 rho * (-1)) * (rho 3219 + rho 3220) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3226 * (1 - rho 3224) = rho 3221 - rho 3222 - rho 3223 := ha5
        _ = (-1) * rho 3222 - rho 3223 + (dtkAccY78 rho - dtkAccX78 rho * (-1)) * (rho 3219 + rho 3220) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX79 rho = dtkAccX78 rho - Bool.toZMod bit * (dtkAccX78 rho - rho 3225) := by
      have hd : rho 3227 = Bool.toZMod bit * (rho 3225 - dtkAccX78 rho) := by
        rw [← hbit]
        unfold dtkAccX78
        linear_combination -r3733
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY79 rho = dtkAccY78 rho - Bool.toZMod bit * (dtkAccY78 rho - rho 3226) := by
      have hd : rho 3228 = Bool.toZMod bit * (rho 3226 - dtkAccY78 rho) := by
        rw [← hbit]
        unfold dtkAccY78
        linear_combination -r3734
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3219 * rho 3220 = rho 3229 := by linear_combination r3735
    have hd1 : rho 3219 * rho 3219 = rho 3230 := by linear_combination r3736
    have hd2 : rho 3220 * rho 3220 = rho 3231 := by linear_combination r3737
    have hd3 : rho 3232 * (rho 3220 * rho 3220 + rho 3219 * rho 3219 * (-1)) = 2 * (rho 3219 * rho 3220) := by
      rw [hd0, hd1, hd2]
      linear_combination r3738
    have hd4 : rho 3233 * (2 - (rho 3220 * rho 3220 + rho 3219 * rho 3219 * (-1))) = rho 3220 * rho 3220 - rho 3219 * rho 3219 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3739
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX78 rho : F), (dtkAccY78 rho : F)⟩
      ⟨(rho 3219 : F), (rho 3220 : F)⟩
      ⟨(rho 3225 : F), (rho 3226 : F)⟩
      ⟨(dtkAccX79 rho : F), (dtkAccY79 rho : F)⟩
      ⟨(rho 3232 : F), (rho 3233 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung78

theorem dtk_rows79 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3740 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3741 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3742 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3743 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3744 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3745 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3746 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3747 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3748 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3749 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3750 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3751 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3752 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p46, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart46 at p46
  rcases p46 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3740, r3741, r3742, r3743, r3744, r3745, r3746, r3747, r3748, r3749, r3750, r3751, r3752, _, _, _, _, _, _, _⟩
  exact ⟨r3740, r3741, r3742, r3743, r3744, r3745, r3746, r3747, r3748, r3749, r3750, r3751, r3752⟩

theorem dtk_rung79 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1062 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX79 rho : F), (dtkAccY79 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3232 : F), (rho 3233 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX79 rho : F), (dtkAccY79 rho : F)⟩
        ⟨(rho 3232 : F), (rho 3233 : F)⟩
        ⟨(dtkAccX80 rho : F), (dtkAccY80 rho : F)⟩
        ⟨(rho 3245 : F), (rho 3246 : F)⟩ := by
  obtain ⟨r3740, r3741, r3742, r3743, r3744, r3745, r3746, r3747, r3748, r3749, r3750, r3751, r3752⟩ := dtk_rows79 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3740 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc481 at r3740
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3740
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3741 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc482 at r3741
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3741
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3742 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc483 at r3742
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3742
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3743 at r3743
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3744 at r3744
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3745 at r3745
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3746 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc484 at r3746
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3746
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3747 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc485 at r3747
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3747
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3748 at r3748
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3749 at r3749
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3750 at r3750
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3751 at r3751
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3752 at r3752
  have hrung79 (bit : Bool) (hbit : rho 1062 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX79 rho : F), (dtkAccY79 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3232 : F), (rho 3233 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX79 rho : F), (dtkAccY79 rho : F)⟩
        ⟨(rho 3232 : F), (rho 3233 : F)⟩
        ⟨(dtkAccX80 rho : F), (dtkAccY80 rho : F)⟩
        ⟨(rho 3245 : F), (rho 3246 : F)⟩ := by
    have hnextx : dtkAccX80 rho = dtkAccX79 rho + rho 3240 := by
      unfold dtkAccX80 dtkAccX79
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 78]
      ring
    have hnexty : dtkAccY80 rho = dtkAccY79 rho + rho 3241 := by
      unfold dtkAccY80 dtkAccY79
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 79]
      ring
    have ha0 : (rho 3232 + rho 3233) * (dtkAccX79 rho + dtkAccY79 rho) = rho 3234 := by
      unfold dtkAccX79 dtkAccY79
      linear_combination r3740
    have ha1 : rho 3233 * dtkAccX79 rho = rho 3235 := by
      unfold dtkAccX79
      linear_combination r3741
    have ha2 : rho 3232 * dtkAccY79 rho = rho 3236 := by
      unfold dtkAccY79
      linear_combination r3742
    have ha3 : 3021 * rho 3235 * rho 3236 = rho 3237 := by
      linear_combination r3743
    have ha4 : rho 3238 * (1 + rho 3237) = rho 3235 + rho 3236 := by
      linear_combination r3744
    have ha5 : rho 3239 * (1 - rho 3237) = rho 3234 - rho 3235 - rho 3236 := by
      linear_combination r3745
    have haddx :
        rho 3238 * (1 + 3021 * (rho 3233 * dtkAccX79 rho) * (rho 3232 * dtkAccY79 rho)) =
          rho 3233 * dtkAccX79 rho + rho 3232 * dtkAccY79 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3239 * (1 - 3021 * (rho 3233 * dtkAccX79 rho) * (rho 3232 * dtkAccY79 rho)) =
          (-1) * (rho 3233 * dtkAccX79 rho) - rho 3232 * dtkAccY79 rho +
            (dtkAccY79 rho - dtkAccX79 rho * (-1)) * (rho 3232 + rho 3233) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3239 * (1 - rho 3237) = rho 3234 - rho 3235 - rho 3236 := ha5
        _ = (-1) * rho 3235 - rho 3236 + (dtkAccY79 rho - dtkAccX79 rho * (-1)) * (rho 3232 + rho 3233) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX80 rho = dtkAccX79 rho - Bool.toZMod bit * (dtkAccX79 rho - rho 3238) := by
      have hd : rho 3240 = Bool.toZMod bit * (rho 3238 - dtkAccX79 rho) := by
        rw [← hbit]
        unfold dtkAccX79
        linear_combination -r3746
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY80 rho = dtkAccY79 rho - Bool.toZMod bit * (dtkAccY79 rho - rho 3239) := by
      have hd : rho 3241 = Bool.toZMod bit * (rho 3239 - dtkAccY79 rho) := by
        rw [← hbit]
        unfold dtkAccY79
        linear_combination -r3747
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3232 * rho 3233 = rho 3242 := by linear_combination r3748
    have hd1 : rho 3232 * rho 3232 = rho 3243 := by linear_combination r3749
    have hd2 : rho 3233 * rho 3233 = rho 3244 := by linear_combination r3750
    have hd3 : rho 3245 * (rho 3233 * rho 3233 + rho 3232 * rho 3232 * (-1)) = 2 * (rho 3232 * rho 3233) := by
      rw [hd0, hd1, hd2]
      linear_combination r3751
    have hd4 : rho 3246 * (2 - (rho 3233 * rho 3233 + rho 3232 * rho 3232 * (-1))) = rho 3233 * rho 3233 - rho 3232 * rho 3232 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3752
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX79 rho : F), (dtkAccY79 rho : F)⟩
      ⟨(rho 3232 : F), (rho 3233 : F)⟩
      ⟨(rho 3238 : F), (rho 3239 : F)⟩
      ⟨(dtkAccX80 rho : F), (dtkAccY80 rho : F)⟩
      ⟨(rho 3245 : F), (rho 3246 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung79

theorem dtk_rows80 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3753 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3754 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3755 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3756 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3757 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3758 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3759 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3760 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3761 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3762 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3763 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3764 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3765 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p46, p47, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart46 at p46
  rcases p46 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3753, r3754, r3755, r3756, r3757, r3758, r3759⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart47 at p47
  rcases p47 with ⟨r3760, r3761, r3762, r3763, r3764, r3765, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3753, r3754, r3755, r3756, r3757, r3758, r3759, r3760, r3761, r3762, r3763, r3764, r3765⟩

theorem dtk_rung80 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1063 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX80 rho : F), (dtkAccY80 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3245 : F), (rho 3246 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX80 rho : F), (dtkAccY80 rho : F)⟩
        ⟨(rho 3245 : F), (rho 3246 : F)⟩
        ⟨(dtkAccX81 rho : F), (dtkAccY81 rho : F)⟩
        ⟨(rho 3258 : F), (rho 3259 : F)⟩ := by
  obtain ⟨r3753, r3754, r3755, r3756, r3757, r3758, r3759, r3760, r3761, r3762, r3763, r3764, r3765⟩ := dtk_rows80 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3753 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc486 at r3753
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3753
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3754 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc487 at r3754
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3754
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3755 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc488 at r3755
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3755
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3756 at r3756
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3757 at r3757
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3758 at r3758
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3759 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc489 at r3759
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3759
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3760 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc490 at r3760
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3760
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3761 at r3761
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3762 at r3762
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3763 at r3763
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3764 at r3764
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3765 at r3765
  have hrung80 (bit : Bool) (hbit : rho 1063 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX80 rho : F), (dtkAccY80 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3245 : F), (rho 3246 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX80 rho : F), (dtkAccY80 rho : F)⟩
        ⟨(rho 3245 : F), (rho 3246 : F)⟩
        ⟨(dtkAccX81 rho : F), (dtkAccY81 rho : F)⟩
        ⟨(rho 3258 : F), (rho 3259 : F)⟩ := by
    have hnextx : dtkAccX81 rho = dtkAccX80 rho + rho 3253 := by
      unfold dtkAccX81 dtkAccX80
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 79]
      ring
    have hnexty : dtkAccY81 rho = dtkAccY80 rho + rho 3254 := by
      unfold dtkAccY81 dtkAccY80
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 80]
      ring
    have ha0 : (rho 3245 + rho 3246) * (dtkAccX80 rho + dtkAccY80 rho) = rho 3247 := by
      unfold dtkAccX80 dtkAccY80
      linear_combination r3753
    have ha1 : rho 3246 * dtkAccX80 rho = rho 3248 := by
      unfold dtkAccX80
      linear_combination r3754
    have ha2 : rho 3245 * dtkAccY80 rho = rho 3249 := by
      unfold dtkAccY80
      linear_combination r3755
    have ha3 : 3021 * rho 3248 * rho 3249 = rho 3250 := by
      linear_combination r3756
    have ha4 : rho 3251 * (1 + rho 3250) = rho 3248 + rho 3249 := by
      linear_combination r3757
    have ha5 : rho 3252 * (1 - rho 3250) = rho 3247 - rho 3248 - rho 3249 := by
      linear_combination r3758
    have haddx :
        rho 3251 * (1 + 3021 * (rho 3246 * dtkAccX80 rho) * (rho 3245 * dtkAccY80 rho)) =
          rho 3246 * dtkAccX80 rho + rho 3245 * dtkAccY80 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3252 * (1 - 3021 * (rho 3246 * dtkAccX80 rho) * (rho 3245 * dtkAccY80 rho)) =
          (-1) * (rho 3246 * dtkAccX80 rho) - rho 3245 * dtkAccY80 rho +
            (dtkAccY80 rho - dtkAccX80 rho * (-1)) * (rho 3245 + rho 3246) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3252 * (1 - rho 3250) = rho 3247 - rho 3248 - rho 3249 := ha5
        _ = (-1) * rho 3248 - rho 3249 + (dtkAccY80 rho - dtkAccX80 rho * (-1)) * (rho 3245 + rho 3246) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX81 rho = dtkAccX80 rho - Bool.toZMod bit * (dtkAccX80 rho - rho 3251) := by
      have hd : rho 3253 = Bool.toZMod bit * (rho 3251 - dtkAccX80 rho) := by
        rw [← hbit]
        unfold dtkAccX80
        linear_combination -r3759
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY81 rho = dtkAccY80 rho - Bool.toZMod bit * (dtkAccY80 rho - rho 3252) := by
      have hd : rho 3254 = Bool.toZMod bit * (rho 3252 - dtkAccY80 rho) := by
        rw [← hbit]
        unfold dtkAccY80
        linear_combination -r3760
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3245 * rho 3246 = rho 3255 := by linear_combination r3761
    have hd1 : rho 3245 * rho 3245 = rho 3256 := by linear_combination r3762
    have hd2 : rho 3246 * rho 3246 = rho 3257 := by linear_combination r3763
    have hd3 : rho 3258 * (rho 3246 * rho 3246 + rho 3245 * rho 3245 * (-1)) = 2 * (rho 3245 * rho 3246) := by
      rw [hd0, hd1, hd2]
      linear_combination r3764
    have hd4 : rho 3259 * (2 - (rho 3246 * rho 3246 + rho 3245 * rho 3245 * (-1))) = rho 3246 * rho 3246 - rho 3245 * rho 3245 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3765
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX80 rho : F), (dtkAccY80 rho : F)⟩
      ⟨(rho 3245 : F), (rho 3246 : F)⟩
      ⟨(rho 3251 : F), (rho 3252 : F)⟩
      ⟨(dtkAccX81 rho : F), (dtkAccY81 rho : F)⟩
      ⟨(rho 3258 : F), (rho 3259 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung80

theorem dtk_rows81 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3766 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3767 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3768 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3769 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3770 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3771 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3772 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3773 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3774 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3775 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3776 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3777 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3778 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p47, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart47 at p47
  rcases p47 with ⟨_, _, _, _, _, _, r3766, r3767, r3768, r3769, r3770, r3771, r3772, r3773, r3774, r3775, r3776, r3777, r3778, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3766, r3767, r3768, r3769, r3770, r3771, r3772, r3773, r3774, r3775, r3776, r3777, r3778⟩

theorem dtk_rung81 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1064 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX81 rho : F), (dtkAccY81 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3258 : F), (rho 3259 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX81 rho : F), (dtkAccY81 rho : F)⟩
        ⟨(rho 3258 : F), (rho 3259 : F)⟩
        ⟨(dtkAccX82 rho : F), (dtkAccY82 rho : F)⟩
        ⟨(rho 3271 : F), (rho 3272 : F)⟩ := by
  obtain ⟨r3766, r3767, r3768, r3769, r3770, r3771, r3772, r3773, r3774, r3775, r3776, r3777, r3778⟩ := dtk_rows81 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3766 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc491 at r3766
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3766
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3767 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc492 at r3767
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3767
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3768 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc493 at r3768
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3768
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3769 at r3769
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3770 at r3770
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3771 at r3771
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3772 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc494 at r3772
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3772
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3773 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc495 at r3773
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3773
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3774 at r3774
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3775 at r3775
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3776 at r3776
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3777 at r3777
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3778 at r3778
  have hrung81 (bit : Bool) (hbit : rho 1064 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX81 rho : F), (dtkAccY81 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3258 : F), (rho 3259 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX81 rho : F), (dtkAccY81 rho : F)⟩
        ⟨(rho 3258 : F), (rho 3259 : F)⟩
        ⟨(dtkAccX82 rho : F), (dtkAccY82 rho : F)⟩
        ⟨(rho 3271 : F), (rho 3272 : F)⟩ := by
    have hnextx : dtkAccX82 rho = dtkAccX81 rho + rho 3266 := by
      unfold dtkAccX82 dtkAccX81
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 80]
      ring
    have hnexty : dtkAccY82 rho = dtkAccY81 rho + rho 3267 := by
      unfold dtkAccY82 dtkAccY81
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 81]
      ring
    have ha0 : (rho 3258 + rho 3259) * (dtkAccX81 rho + dtkAccY81 rho) = rho 3260 := by
      unfold dtkAccX81 dtkAccY81
      linear_combination r3766
    have ha1 : rho 3259 * dtkAccX81 rho = rho 3261 := by
      unfold dtkAccX81
      linear_combination r3767
    have ha2 : rho 3258 * dtkAccY81 rho = rho 3262 := by
      unfold dtkAccY81
      linear_combination r3768
    have ha3 : 3021 * rho 3261 * rho 3262 = rho 3263 := by
      linear_combination r3769
    have ha4 : rho 3264 * (1 + rho 3263) = rho 3261 + rho 3262 := by
      linear_combination r3770
    have ha5 : rho 3265 * (1 - rho 3263) = rho 3260 - rho 3261 - rho 3262 := by
      linear_combination r3771
    have haddx :
        rho 3264 * (1 + 3021 * (rho 3259 * dtkAccX81 rho) * (rho 3258 * dtkAccY81 rho)) =
          rho 3259 * dtkAccX81 rho + rho 3258 * dtkAccY81 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3265 * (1 - 3021 * (rho 3259 * dtkAccX81 rho) * (rho 3258 * dtkAccY81 rho)) =
          (-1) * (rho 3259 * dtkAccX81 rho) - rho 3258 * dtkAccY81 rho +
            (dtkAccY81 rho - dtkAccX81 rho * (-1)) * (rho 3258 + rho 3259) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3265 * (1 - rho 3263) = rho 3260 - rho 3261 - rho 3262 := ha5
        _ = (-1) * rho 3261 - rho 3262 + (dtkAccY81 rho - dtkAccX81 rho * (-1)) * (rho 3258 + rho 3259) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX82 rho = dtkAccX81 rho - Bool.toZMod bit * (dtkAccX81 rho - rho 3264) := by
      have hd : rho 3266 = Bool.toZMod bit * (rho 3264 - dtkAccX81 rho) := by
        rw [← hbit]
        unfold dtkAccX81
        linear_combination -r3772
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY82 rho = dtkAccY81 rho - Bool.toZMod bit * (dtkAccY81 rho - rho 3265) := by
      have hd : rho 3267 = Bool.toZMod bit * (rho 3265 - dtkAccY81 rho) := by
        rw [← hbit]
        unfold dtkAccY81
        linear_combination -r3773
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3258 * rho 3259 = rho 3268 := by linear_combination r3774
    have hd1 : rho 3258 * rho 3258 = rho 3269 := by linear_combination r3775
    have hd2 : rho 3259 * rho 3259 = rho 3270 := by linear_combination r3776
    have hd3 : rho 3271 * (rho 3259 * rho 3259 + rho 3258 * rho 3258 * (-1)) = 2 * (rho 3258 * rho 3259) := by
      rw [hd0, hd1, hd2]
      linear_combination r3777
    have hd4 : rho 3272 * (2 - (rho 3259 * rho 3259 + rho 3258 * rho 3258 * (-1))) = rho 3259 * rho 3259 - rho 3258 * rho 3258 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3778
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX81 rho : F), (dtkAccY81 rho : F)⟩
      ⟨(rho 3258 : F), (rho 3259 : F)⟩
      ⟨(rho 3264 : F), (rho 3265 : F)⟩
      ⟨(dtkAccX82 rho : F), (dtkAccY82 rho : F)⟩
      ⟨(rho 3271 : F), (rho 3272 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung81

theorem dtk_rows82 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3779 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3780 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3781 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3782 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3783 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3784 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3785 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3786 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3787 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3788 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3789 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3790 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3791 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p47, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart47 at p47
  rcases p47 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3779, r3780, r3781, r3782, r3783, r3784, r3785, r3786, r3787, r3788, r3789, r3790, r3791, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3779, r3780, r3781, r3782, r3783, r3784, r3785, r3786, r3787, r3788, r3789, r3790, r3791⟩

theorem dtk_rung82 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1065 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX82 rho : F), (dtkAccY82 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3271 : F), (rho 3272 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX82 rho : F), (dtkAccY82 rho : F)⟩
        ⟨(rho 3271 : F), (rho 3272 : F)⟩
        ⟨(dtkAccX83 rho : F), (dtkAccY83 rho : F)⟩
        ⟨(rho 3284 : F), (rho 3285 : F)⟩ := by
  obtain ⟨r3779, r3780, r3781, r3782, r3783, r3784, r3785, r3786, r3787, r3788, r3789, r3790, r3791⟩ := dtk_rows82 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3779 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc496 at r3779
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3779
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3780 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc497 at r3780
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3780
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3781 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc498 at r3781
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3781
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3782 at r3782
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3783 at r3783
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3784 at r3784
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3785 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc499 at r3785
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3785
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3786 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc500 at r3786
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3786
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3787 at r3787
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3788 at r3788
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3789 at r3789
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3790 at r3790
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3791 at r3791
  have hrung82 (bit : Bool) (hbit : rho 1065 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX82 rho : F), (dtkAccY82 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3271 : F), (rho 3272 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX82 rho : F), (dtkAccY82 rho : F)⟩
        ⟨(rho 3271 : F), (rho 3272 : F)⟩
        ⟨(dtkAccX83 rho : F), (dtkAccY83 rho : F)⟩
        ⟨(rho 3284 : F), (rho 3285 : F)⟩ := by
    have hnextx : dtkAccX83 rho = dtkAccX82 rho + rho 3279 := by
      unfold dtkAccX83 dtkAccX82
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 81]
      ring
    have hnexty : dtkAccY83 rho = dtkAccY82 rho + rho 3280 := by
      unfold dtkAccY83 dtkAccY82
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 82]
      ring
    have ha0 : (rho 3271 + rho 3272) * (dtkAccX82 rho + dtkAccY82 rho) = rho 3273 := by
      unfold dtkAccX82 dtkAccY82
      linear_combination r3779
    have ha1 : rho 3272 * dtkAccX82 rho = rho 3274 := by
      unfold dtkAccX82
      linear_combination r3780
    have ha2 : rho 3271 * dtkAccY82 rho = rho 3275 := by
      unfold dtkAccY82
      linear_combination r3781
    have ha3 : 3021 * rho 3274 * rho 3275 = rho 3276 := by
      linear_combination r3782
    have ha4 : rho 3277 * (1 + rho 3276) = rho 3274 + rho 3275 := by
      linear_combination r3783
    have ha5 : rho 3278 * (1 - rho 3276) = rho 3273 - rho 3274 - rho 3275 := by
      linear_combination r3784
    have haddx :
        rho 3277 * (1 + 3021 * (rho 3272 * dtkAccX82 rho) * (rho 3271 * dtkAccY82 rho)) =
          rho 3272 * dtkAccX82 rho + rho 3271 * dtkAccY82 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3278 * (1 - 3021 * (rho 3272 * dtkAccX82 rho) * (rho 3271 * dtkAccY82 rho)) =
          (-1) * (rho 3272 * dtkAccX82 rho) - rho 3271 * dtkAccY82 rho +
            (dtkAccY82 rho - dtkAccX82 rho * (-1)) * (rho 3271 + rho 3272) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3278 * (1 - rho 3276) = rho 3273 - rho 3274 - rho 3275 := ha5
        _ = (-1) * rho 3274 - rho 3275 + (dtkAccY82 rho - dtkAccX82 rho * (-1)) * (rho 3271 + rho 3272) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX83 rho = dtkAccX82 rho - Bool.toZMod bit * (dtkAccX82 rho - rho 3277) := by
      have hd : rho 3279 = Bool.toZMod bit * (rho 3277 - dtkAccX82 rho) := by
        rw [← hbit]
        unfold dtkAccX82
        linear_combination -r3785
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY83 rho = dtkAccY82 rho - Bool.toZMod bit * (dtkAccY82 rho - rho 3278) := by
      have hd : rho 3280 = Bool.toZMod bit * (rho 3278 - dtkAccY82 rho) := by
        rw [← hbit]
        unfold dtkAccY82
        linear_combination -r3786
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3271 * rho 3272 = rho 3281 := by linear_combination r3787
    have hd1 : rho 3271 * rho 3271 = rho 3282 := by linear_combination r3788
    have hd2 : rho 3272 * rho 3272 = rho 3283 := by linear_combination r3789
    have hd3 : rho 3284 * (rho 3272 * rho 3272 + rho 3271 * rho 3271 * (-1)) = 2 * (rho 3271 * rho 3272) := by
      rw [hd0, hd1, hd2]
      linear_combination r3790
    have hd4 : rho 3285 * (2 - (rho 3272 * rho 3272 + rho 3271 * rho 3271 * (-1))) = rho 3272 * rho 3272 - rho 3271 * rho 3271 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3791
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX82 rho : F), (dtkAccY82 rho : F)⟩
      ⟨(rho 3271 : F), (rho 3272 : F)⟩
      ⟨(rho 3277 : F), (rho 3278 : F)⟩
      ⟨(dtkAccX83 rho : F), (dtkAccY83 rho : F)⟩
      ⟨(rho 3284 : F), (rho 3285 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung82

theorem dtk_rows83 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3792 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3793 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3794 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3795 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3796 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3797 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3798 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3799 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3800 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3801 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3802 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3803 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3804 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p47, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart47 at p47
  rcases p47 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3792, r3793, r3794, r3795, r3796, r3797, r3798, r3799, r3800, r3801, r3802, r3803, r3804, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3792, r3793, r3794, r3795, r3796, r3797, r3798, r3799, r3800, r3801, r3802, r3803, r3804⟩

theorem dtk_rung83 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1066 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX83 rho : F), (dtkAccY83 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3284 : F), (rho 3285 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX83 rho : F), (dtkAccY83 rho : F)⟩
        ⟨(rho 3284 : F), (rho 3285 : F)⟩
        ⟨(dtkAccX84 rho : F), (dtkAccY84 rho : F)⟩
        ⟨(rho 3297 : F), (rho 3298 : F)⟩ := by
  obtain ⟨r3792, r3793, r3794, r3795, r3796, r3797, r3798, r3799, r3800, r3801, r3802, r3803, r3804⟩ := dtk_rows83 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3792 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc501 at r3792
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3792
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3793 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc502 at r3793
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3793
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3794 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc503 at r3794
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3794
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3795 at r3795
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3796 at r3796
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3797 at r3797
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3798 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc504 at r3798
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3798
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3799 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc505 at r3799
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3799
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3800 at r3800
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3801 at r3801
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3802 at r3802
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3803 at r3803
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3804 at r3804
  have hrung83 (bit : Bool) (hbit : rho 1066 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX83 rho : F), (dtkAccY83 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3284 : F), (rho 3285 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX83 rho : F), (dtkAccY83 rho : F)⟩
        ⟨(rho 3284 : F), (rho 3285 : F)⟩
        ⟨(dtkAccX84 rho : F), (dtkAccY84 rho : F)⟩
        ⟨(rho 3297 : F), (rho 3298 : F)⟩ := by
    have hnextx : dtkAccX84 rho = dtkAccX83 rho + rho 3292 := by
      unfold dtkAccX84 dtkAccX83
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 82]
      ring
    have hnexty : dtkAccY84 rho = dtkAccY83 rho + rho 3293 := by
      unfold dtkAccY84 dtkAccY83
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 83]
      ring
    have ha0 : (rho 3284 + rho 3285) * (dtkAccX83 rho + dtkAccY83 rho) = rho 3286 := by
      unfold dtkAccX83 dtkAccY83
      linear_combination r3792
    have ha1 : rho 3285 * dtkAccX83 rho = rho 3287 := by
      unfold dtkAccX83
      linear_combination r3793
    have ha2 : rho 3284 * dtkAccY83 rho = rho 3288 := by
      unfold dtkAccY83
      linear_combination r3794
    have ha3 : 3021 * rho 3287 * rho 3288 = rho 3289 := by
      linear_combination r3795
    have ha4 : rho 3290 * (1 + rho 3289) = rho 3287 + rho 3288 := by
      linear_combination r3796
    have ha5 : rho 3291 * (1 - rho 3289) = rho 3286 - rho 3287 - rho 3288 := by
      linear_combination r3797
    have haddx :
        rho 3290 * (1 + 3021 * (rho 3285 * dtkAccX83 rho) * (rho 3284 * dtkAccY83 rho)) =
          rho 3285 * dtkAccX83 rho + rho 3284 * dtkAccY83 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3291 * (1 - 3021 * (rho 3285 * dtkAccX83 rho) * (rho 3284 * dtkAccY83 rho)) =
          (-1) * (rho 3285 * dtkAccX83 rho) - rho 3284 * dtkAccY83 rho +
            (dtkAccY83 rho - dtkAccX83 rho * (-1)) * (rho 3284 + rho 3285) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3291 * (1 - rho 3289) = rho 3286 - rho 3287 - rho 3288 := ha5
        _ = (-1) * rho 3287 - rho 3288 + (dtkAccY83 rho - dtkAccX83 rho * (-1)) * (rho 3284 + rho 3285) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX84 rho = dtkAccX83 rho - Bool.toZMod bit * (dtkAccX83 rho - rho 3290) := by
      have hd : rho 3292 = Bool.toZMod bit * (rho 3290 - dtkAccX83 rho) := by
        rw [← hbit]
        unfold dtkAccX83
        linear_combination -r3798
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY84 rho = dtkAccY83 rho - Bool.toZMod bit * (dtkAccY83 rho - rho 3291) := by
      have hd : rho 3293 = Bool.toZMod bit * (rho 3291 - dtkAccY83 rho) := by
        rw [← hbit]
        unfold dtkAccY83
        linear_combination -r3799
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3284 * rho 3285 = rho 3294 := by linear_combination r3800
    have hd1 : rho 3284 * rho 3284 = rho 3295 := by linear_combination r3801
    have hd2 : rho 3285 * rho 3285 = rho 3296 := by linear_combination r3802
    have hd3 : rho 3297 * (rho 3285 * rho 3285 + rho 3284 * rho 3284 * (-1)) = 2 * (rho 3284 * rho 3285) := by
      rw [hd0, hd1, hd2]
      linear_combination r3803
    have hd4 : rho 3298 * (2 - (rho 3285 * rho 3285 + rho 3284 * rho 3284 * (-1))) = rho 3285 * rho 3285 - rho 3284 * rho 3284 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3804
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX83 rho : F), (dtkAccY83 rho : F)⟩
      ⟨(rho 3284 : F), (rho 3285 : F)⟩
      ⟨(rho 3290 : F), (rho 3291 : F)⟩
      ⟨(dtkAccX84 rho : F), (dtkAccY84 rho : F)⟩
      ⟨(rho 3297 : F), (rho 3298 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung83

theorem dtk_hstep_c13 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (983 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 78 ≤ i → i < 84 →
      EdwardsBridge.onCurve (dtkLadderAccState rho i) →
      EdwardsBridge.onCurve (dtkLadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (dtkLadderAccState rho i) (dtkLadderCurState rho i)
        (dtkLadderAccState rho (i + 1)) (dtkLadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact dtk_rung78 rho h bits[78]! (hbitAt 78 (by omega)) hacc hcur
  · exact dtk_rung79 rho h bits[79]! (hbitAt 79 (by omega)) hacc hcur
  · exact dtk_rung80 rho h bits[80]! (hbitAt 80 (by omega)) hacc hcur
  · exact dtk_rung81 rho h bits[81]! (hbitAt 81 (by omega)) hacc hcur
  · exact dtk_rung82 rho h bits[82]! (hbitAt 82 (by omega)) hacc hcur
  · exact dtk_rung83 rho h bits[83]! (hbitAt 83 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport
