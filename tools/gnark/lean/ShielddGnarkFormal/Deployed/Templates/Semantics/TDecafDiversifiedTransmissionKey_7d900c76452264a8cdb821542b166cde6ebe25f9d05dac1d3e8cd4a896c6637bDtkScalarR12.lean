import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDtkScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs

theorem dtk_rows72 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3649 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3650 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3651 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3652 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3653 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3654 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3655 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3656 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3657 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3658 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3659 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3660 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3661 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p45, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart45 at p45
  rcases p45 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3649, r3650, r3651, r3652, r3653, r3654, r3655, r3656, r3657, r3658, r3659, r3660, r3661, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3649, r3650, r3651, r3652, r3653, r3654, r3655, r3656, r3657, r3658, r3659, r3660, r3661⟩

theorem dtk_rung72 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1055 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX72 rho : F), (dtkAccY72 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3141 : F), (rho 3142 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX72 rho : F), (dtkAccY72 rho : F)⟩
        ⟨(rho 3141 : F), (rho 3142 : F)⟩
        ⟨(dtkAccX73 rho : F), (dtkAccY73 rho : F)⟩
        ⟨(rho 3154 : F), (rho 3155 : F)⟩ := by
  obtain ⟨r3649, r3650, r3651, r3652, r3653, r3654, r3655, r3656, r3657, r3658, r3659, r3660, r3661⟩ := dtk_rows72 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3649 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc446 at r3649
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3649
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3650 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc447 at r3650
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3650
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3651 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc448 at r3651
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3651
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3652 at r3652
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3653 at r3653
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3654 at r3654
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3655 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc449 at r3655
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3655
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3656 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc450 at r3656
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3656
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3657 at r3657
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3658 at r3658
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3659 at r3659
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3660 at r3660
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3661 at r3661
  have hrung72 (bit : Bool) (hbit : rho 1055 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX72 rho : F), (dtkAccY72 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3141 : F), (rho 3142 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX72 rho : F), (dtkAccY72 rho : F)⟩
        ⟨(rho 3141 : F), (rho 3142 : F)⟩
        ⟨(dtkAccX73 rho : F), (dtkAccY73 rho : F)⟩
        ⟨(rho 3154 : F), (rho 3155 : F)⟩ := by
    have hnextx : dtkAccX73 rho = dtkAccX72 rho + rho 3149 := by
      unfold dtkAccX73 dtkAccX72
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 71]
      ring
    have hnexty : dtkAccY73 rho = dtkAccY72 rho + rho 3150 := by
      unfold dtkAccY73 dtkAccY72
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 72]
      ring
    have ha0 : (rho 3141 + rho 3142) * (dtkAccX72 rho + dtkAccY72 rho) = rho 3143 := by
      unfold dtkAccX72 dtkAccY72
      linear_combination r3649
    have ha1 : rho 3142 * dtkAccX72 rho = rho 3144 := by
      unfold dtkAccX72
      linear_combination r3650
    have ha2 : rho 3141 * dtkAccY72 rho = rho 3145 := by
      unfold dtkAccY72
      linear_combination r3651
    have ha3 : 3021 * rho 3144 * rho 3145 = rho 3146 := by
      linear_combination r3652
    have ha4 : rho 3147 * (1 + rho 3146) = rho 3144 + rho 3145 := by
      linear_combination r3653
    have ha5 : rho 3148 * (1 - rho 3146) = rho 3143 - rho 3144 - rho 3145 := by
      linear_combination r3654
    have haddx :
        rho 3147 * (1 + 3021 * (rho 3142 * dtkAccX72 rho) * (rho 3141 * dtkAccY72 rho)) =
          rho 3142 * dtkAccX72 rho + rho 3141 * dtkAccY72 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3148 * (1 - 3021 * (rho 3142 * dtkAccX72 rho) * (rho 3141 * dtkAccY72 rho)) =
          (-1) * (rho 3142 * dtkAccX72 rho) - rho 3141 * dtkAccY72 rho +
            (dtkAccY72 rho - dtkAccX72 rho * (-1)) * (rho 3141 + rho 3142) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3148 * (1 - rho 3146) = rho 3143 - rho 3144 - rho 3145 := ha5
        _ = (-1) * rho 3144 - rho 3145 + (dtkAccY72 rho - dtkAccX72 rho * (-1)) * (rho 3141 + rho 3142) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX73 rho = dtkAccX72 rho - Bool.toZMod bit * (dtkAccX72 rho - rho 3147) := by
      have hd : rho 3149 = Bool.toZMod bit * (rho 3147 - dtkAccX72 rho) := by
        rw [← hbit]
        unfold dtkAccX72
        linear_combination -r3655
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY73 rho = dtkAccY72 rho - Bool.toZMod bit * (dtkAccY72 rho - rho 3148) := by
      have hd : rho 3150 = Bool.toZMod bit * (rho 3148 - dtkAccY72 rho) := by
        rw [← hbit]
        unfold dtkAccY72
        linear_combination -r3656
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3141 * rho 3142 = rho 3151 := by linear_combination r3657
    have hd1 : rho 3141 * rho 3141 = rho 3152 := by linear_combination r3658
    have hd2 : rho 3142 * rho 3142 = rho 3153 := by linear_combination r3659
    have hd3 : rho 3154 * (rho 3142 * rho 3142 + rho 3141 * rho 3141 * (-1)) = 2 * (rho 3141 * rho 3142) := by
      rw [hd0, hd1, hd2]
      linear_combination r3660
    have hd4 : rho 3155 * (2 - (rho 3142 * rho 3142 + rho 3141 * rho 3141 * (-1))) = rho 3142 * rho 3142 - rho 3141 * rho 3141 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3661
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX72 rho : F), (dtkAccY72 rho : F)⟩
      ⟨(rho 3141 : F), (rho 3142 : F)⟩
      ⟨(rho 3147 : F), (rho 3148 : F)⟩
      ⟨(dtkAccX73 rho : F), (dtkAccY73 rho : F)⟩
      ⟨(rho 3154 : F), (rho 3155 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung72

theorem dtk_rows73 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3662 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3663 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3664 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3665 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3666 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3667 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3668 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3669 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3670 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3671 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3672 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3673 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3674 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p45, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart45 at p45
  rcases p45 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3662, r3663, r3664, r3665, r3666, r3667, r3668, r3669, r3670, r3671, r3672, r3673, r3674, _, _, _, _, _⟩
  exact ⟨r3662, r3663, r3664, r3665, r3666, r3667, r3668, r3669, r3670, r3671, r3672, r3673, r3674⟩

theorem dtk_rung73 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1056 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX73 rho : F), (dtkAccY73 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3154 : F), (rho 3155 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX73 rho : F), (dtkAccY73 rho : F)⟩
        ⟨(rho 3154 : F), (rho 3155 : F)⟩
        ⟨(dtkAccX74 rho : F), (dtkAccY74 rho : F)⟩
        ⟨(rho 3167 : F), (rho 3168 : F)⟩ := by
  obtain ⟨r3662, r3663, r3664, r3665, r3666, r3667, r3668, r3669, r3670, r3671, r3672, r3673, r3674⟩ := dtk_rows73 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3662 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc451 at r3662
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3662
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3663 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc452 at r3663
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3663
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3664 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc453 at r3664
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3664
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3665 at r3665
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3666 at r3666
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3667 at r3667
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3668 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc454 at r3668
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3668
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3669 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc455 at r3669
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3669
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3670 at r3670
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3671 at r3671
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3672 at r3672
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3673 at r3673
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3674 at r3674
  have hrung73 (bit : Bool) (hbit : rho 1056 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX73 rho : F), (dtkAccY73 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3154 : F), (rho 3155 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX73 rho : F), (dtkAccY73 rho : F)⟩
        ⟨(rho 3154 : F), (rho 3155 : F)⟩
        ⟨(dtkAccX74 rho : F), (dtkAccY74 rho : F)⟩
        ⟨(rho 3167 : F), (rho 3168 : F)⟩ := by
    have hnextx : dtkAccX74 rho = dtkAccX73 rho + rho 3162 := by
      unfold dtkAccX74 dtkAccX73
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 72]
      ring
    have hnexty : dtkAccY74 rho = dtkAccY73 rho + rho 3163 := by
      unfold dtkAccY74 dtkAccY73
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 73]
      ring
    have ha0 : (rho 3154 + rho 3155) * (dtkAccX73 rho + dtkAccY73 rho) = rho 3156 := by
      unfold dtkAccX73 dtkAccY73
      linear_combination r3662
    have ha1 : rho 3155 * dtkAccX73 rho = rho 3157 := by
      unfold dtkAccX73
      linear_combination r3663
    have ha2 : rho 3154 * dtkAccY73 rho = rho 3158 := by
      unfold dtkAccY73
      linear_combination r3664
    have ha3 : 3021 * rho 3157 * rho 3158 = rho 3159 := by
      linear_combination r3665
    have ha4 : rho 3160 * (1 + rho 3159) = rho 3157 + rho 3158 := by
      linear_combination r3666
    have ha5 : rho 3161 * (1 - rho 3159) = rho 3156 - rho 3157 - rho 3158 := by
      linear_combination r3667
    have haddx :
        rho 3160 * (1 + 3021 * (rho 3155 * dtkAccX73 rho) * (rho 3154 * dtkAccY73 rho)) =
          rho 3155 * dtkAccX73 rho + rho 3154 * dtkAccY73 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3161 * (1 - 3021 * (rho 3155 * dtkAccX73 rho) * (rho 3154 * dtkAccY73 rho)) =
          (-1) * (rho 3155 * dtkAccX73 rho) - rho 3154 * dtkAccY73 rho +
            (dtkAccY73 rho - dtkAccX73 rho * (-1)) * (rho 3154 + rho 3155) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3161 * (1 - rho 3159) = rho 3156 - rho 3157 - rho 3158 := ha5
        _ = (-1) * rho 3157 - rho 3158 + (dtkAccY73 rho - dtkAccX73 rho * (-1)) * (rho 3154 + rho 3155) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX74 rho = dtkAccX73 rho - Bool.toZMod bit * (dtkAccX73 rho - rho 3160) := by
      have hd : rho 3162 = Bool.toZMod bit * (rho 3160 - dtkAccX73 rho) := by
        rw [← hbit]
        unfold dtkAccX73
        linear_combination -r3668
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY74 rho = dtkAccY73 rho - Bool.toZMod bit * (dtkAccY73 rho - rho 3161) := by
      have hd : rho 3163 = Bool.toZMod bit * (rho 3161 - dtkAccY73 rho) := by
        rw [← hbit]
        unfold dtkAccY73
        linear_combination -r3669
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3154 * rho 3155 = rho 3164 := by linear_combination r3670
    have hd1 : rho 3154 * rho 3154 = rho 3165 := by linear_combination r3671
    have hd2 : rho 3155 * rho 3155 = rho 3166 := by linear_combination r3672
    have hd3 : rho 3167 * (rho 3155 * rho 3155 + rho 3154 * rho 3154 * (-1)) = 2 * (rho 3154 * rho 3155) := by
      rw [hd0, hd1, hd2]
      linear_combination r3673
    have hd4 : rho 3168 * (2 - (rho 3155 * rho 3155 + rho 3154 * rho 3154 * (-1))) = rho 3155 * rho 3155 - rho 3154 * rho 3154 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3674
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX73 rho : F), (dtkAccY73 rho : F)⟩
      ⟨(rho 3154 : F), (rho 3155 : F)⟩
      ⟨(rho 3160 : F), (rho 3161 : F)⟩
      ⟨(dtkAccX74 rho : F), (dtkAccY74 rho : F)⟩
      ⟨(rho 3167 : F), (rho 3168 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung73

theorem dtk_rows74 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3675 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3676 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3677 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3678 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3679 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3680 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3681 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3682 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3683 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3684 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3685 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3686 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3687 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p45, p46, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart45 at p45
  rcases p45 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3675, r3676, r3677, r3678, r3679⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart46 at p46
  rcases p46 with ⟨r3680, r3681, r3682, r3683, r3684, r3685, r3686, r3687, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3675, r3676, r3677, r3678, r3679, r3680, r3681, r3682, r3683, r3684, r3685, r3686, r3687⟩

theorem dtk_rung74 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1057 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX74 rho : F), (dtkAccY74 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3167 : F), (rho 3168 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX74 rho : F), (dtkAccY74 rho : F)⟩
        ⟨(rho 3167 : F), (rho 3168 : F)⟩
        ⟨(dtkAccX75 rho : F), (dtkAccY75 rho : F)⟩
        ⟨(rho 3180 : F), (rho 3181 : F)⟩ := by
  obtain ⟨r3675, r3676, r3677, r3678, r3679, r3680, r3681, r3682, r3683, r3684, r3685, r3686, r3687⟩ := dtk_rows74 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3675 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc456 at r3675
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3675
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3676 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc457 at r3676
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3676
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3677 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc458 at r3677
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3677
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3678 at r3678
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3679 at r3679
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3680 at r3680
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3681 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc459 at r3681
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3681
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3682 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc460 at r3682
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3682
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3683 at r3683
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3684 at r3684
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3685 at r3685
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3686 at r3686
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3687 at r3687
  have hrung74 (bit : Bool) (hbit : rho 1057 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX74 rho : F), (dtkAccY74 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3167 : F), (rho 3168 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX74 rho : F), (dtkAccY74 rho : F)⟩
        ⟨(rho 3167 : F), (rho 3168 : F)⟩
        ⟨(dtkAccX75 rho : F), (dtkAccY75 rho : F)⟩
        ⟨(rho 3180 : F), (rho 3181 : F)⟩ := by
    have hnextx : dtkAccX75 rho = dtkAccX74 rho + rho 3175 := by
      unfold dtkAccX75 dtkAccX74
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 73]
      ring
    have hnexty : dtkAccY75 rho = dtkAccY74 rho + rho 3176 := by
      unfold dtkAccY75 dtkAccY74
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 74]
      ring
    have ha0 : (rho 3167 + rho 3168) * (dtkAccX74 rho + dtkAccY74 rho) = rho 3169 := by
      unfold dtkAccX74 dtkAccY74
      linear_combination r3675
    have ha1 : rho 3168 * dtkAccX74 rho = rho 3170 := by
      unfold dtkAccX74
      linear_combination r3676
    have ha2 : rho 3167 * dtkAccY74 rho = rho 3171 := by
      unfold dtkAccY74
      linear_combination r3677
    have ha3 : 3021 * rho 3170 * rho 3171 = rho 3172 := by
      linear_combination r3678
    have ha4 : rho 3173 * (1 + rho 3172) = rho 3170 + rho 3171 := by
      linear_combination r3679
    have ha5 : rho 3174 * (1 - rho 3172) = rho 3169 - rho 3170 - rho 3171 := by
      linear_combination r3680
    have haddx :
        rho 3173 * (1 + 3021 * (rho 3168 * dtkAccX74 rho) * (rho 3167 * dtkAccY74 rho)) =
          rho 3168 * dtkAccX74 rho + rho 3167 * dtkAccY74 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3174 * (1 - 3021 * (rho 3168 * dtkAccX74 rho) * (rho 3167 * dtkAccY74 rho)) =
          (-1) * (rho 3168 * dtkAccX74 rho) - rho 3167 * dtkAccY74 rho +
            (dtkAccY74 rho - dtkAccX74 rho * (-1)) * (rho 3167 + rho 3168) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3174 * (1 - rho 3172) = rho 3169 - rho 3170 - rho 3171 := ha5
        _ = (-1) * rho 3170 - rho 3171 + (dtkAccY74 rho - dtkAccX74 rho * (-1)) * (rho 3167 + rho 3168) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX75 rho = dtkAccX74 rho - Bool.toZMod bit * (dtkAccX74 rho - rho 3173) := by
      have hd : rho 3175 = Bool.toZMod bit * (rho 3173 - dtkAccX74 rho) := by
        rw [← hbit]
        unfold dtkAccX74
        linear_combination -r3681
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY75 rho = dtkAccY74 rho - Bool.toZMod bit * (dtkAccY74 rho - rho 3174) := by
      have hd : rho 3176 = Bool.toZMod bit * (rho 3174 - dtkAccY74 rho) := by
        rw [← hbit]
        unfold dtkAccY74
        linear_combination -r3682
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3167 * rho 3168 = rho 3177 := by linear_combination r3683
    have hd1 : rho 3167 * rho 3167 = rho 3178 := by linear_combination r3684
    have hd2 : rho 3168 * rho 3168 = rho 3179 := by linear_combination r3685
    have hd3 : rho 3180 * (rho 3168 * rho 3168 + rho 3167 * rho 3167 * (-1)) = 2 * (rho 3167 * rho 3168) := by
      rw [hd0, hd1, hd2]
      linear_combination r3686
    have hd4 : rho 3181 * (2 - (rho 3168 * rho 3168 + rho 3167 * rho 3167 * (-1))) = rho 3168 * rho 3168 - rho 3167 * rho 3167 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3687
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX74 rho : F), (dtkAccY74 rho : F)⟩
      ⟨(rho 3167 : F), (rho 3168 : F)⟩
      ⟨(rho 3173 : F), (rho 3174 : F)⟩
      ⟨(dtkAccX75 rho : F), (dtkAccY75 rho : F)⟩
      ⟨(rho 3180 : F), (rho 3181 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung74

theorem dtk_rows75 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3688 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3689 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3690 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3691 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3692 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3693 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3694 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3695 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3696 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3697 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3698 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3699 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3700 rho := by
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
  rcases p46 with ⟨_, _, _, _, _, _, _, _, r3688, r3689, r3690, r3691, r3692, r3693, r3694, r3695, r3696, r3697, r3698, r3699, r3700, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3688, r3689, r3690, r3691, r3692, r3693, r3694, r3695, r3696, r3697, r3698, r3699, r3700⟩

theorem dtk_rung75 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1058 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX75 rho : F), (dtkAccY75 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3180 : F), (rho 3181 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX75 rho : F), (dtkAccY75 rho : F)⟩
        ⟨(rho 3180 : F), (rho 3181 : F)⟩
        ⟨(dtkAccX76 rho : F), (dtkAccY76 rho : F)⟩
        ⟨(rho 3193 : F), (rho 3194 : F)⟩ := by
  obtain ⟨r3688, r3689, r3690, r3691, r3692, r3693, r3694, r3695, r3696, r3697, r3698, r3699, r3700⟩ := dtk_rows75 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3688 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc461 at r3688
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3688
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3689 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc462 at r3689
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3689
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3690 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc463 at r3690
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3690
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3691 at r3691
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3692 at r3692
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3693 at r3693
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3694 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc464 at r3694
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3694
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3695 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc465 at r3695
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3695
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3696 at r3696
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3697 at r3697
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3698 at r3698
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3699 at r3699
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3700 at r3700
  have hrung75 (bit : Bool) (hbit : rho 1058 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX75 rho : F), (dtkAccY75 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3180 : F), (rho 3181 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX75 rho : F), (dtkAccY75 rho : F)⟩
        ⟨(rho 3180 : F), (rho 3181 : F)⟩
        ⟨(dtkAccX76 rho : F), (dtkAccY76 rho : F)⟩
        ⟨(rho 3193 : F), (rho 3194 : F)⟩ := by
    have hnextx : dtkAccX76 rho = dtkAccX75 rho + rho 3188 := by
      unfold dtkAccX76 dtkAccX75
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 74]
      ring
    have hnexty : dtkAccY76 rho = dtkAccY75 rho + rho 3189 := by
      unfold dtkAccY76 dtkAccY75
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 75]
      ring
    have ha0 : (rho 3180 + rho 3181) * (dtkAccX75 rho + dtkAccY75 rho) = rho 3182 := by
      unfold dtkAccX75 dtkAccY75
      linear_combination r3688
    have ha1 : rho 3181 * dtkAccX75 rho = rho 3183 := by
      unfold dtkAccX75
      linear_combination r3689
    have ha2 : rho 3180 * dtkAccY75 rho = rho 3184 := by
      unfold dtkAccY75
      linear_combination r3690
    have ha3 : 3021 * rho 3183 * rho 3184 = rho 3185 := by
      linear_combination r3691
    have ha4 : rho 3186 * (1 + rho 3185) = rho 3183 + rho 3184 := by
      linear_combination r3692
    have ha5 : rho 3187 * (1 - rho 3185) = rho 3182 - rho 3183 - rho 3184 := by
      linear_combination r3693
    have haddx :
        rho 3186 * (1 + 3021 * (rho 3181 * dtkAccX75 rho) * (rho 3180 * dtkAccY75 rho)) =
          rho 3181 * dtkAccX75 rho + rho 3180 * dtkAccY75 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3187 * (1 - 3021 * (rho 3181 * dtkAccX75 rho) * (rho 3180 * dtkAccY75 rho)) =
          (-1) * (rho 3181 * dtkAccX75 rho) - rho 3180 * dtkAccY75 rho +
            (dtkAccY75 rho - dtkAccX75 rho * (-1)) * (rho 3180 + rho 3181) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3187 * (1 - rho 3185) = rho 3182 - rho 3183 - rho 3184 := ha5
        _ = (-1) * rho 3183 - rho 3184 + (dtkAccY75 rho - dtkAccX75 rho * (-1)) * (rho 3180 + rho 3181) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX76 rho = dtkAccX75 rho - Bool.toZMod bit * (dtkAccX75 rho - rho 3186) := by
      have hd : rho 3188 = Bool.toZMod bit * (rho 3186 - dtkAccX75 rho) := by
        rw [← hbit]
        unfold dtkAccX75
        linear_combination -r3694
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY76 rho = dtkAccY75 rho - Bool.toZMod bit * (dtkAccY75 rho - rho 3187) := by
      have hd : rho 3189 = Bool.toZMod bit * (rho 3187 - dtkAccY75 rho) := by
        rw [← hbit]
        unfold dtkAccY75
        linear_combination -r3695
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3180 * rho 3181 = rho 3190 := by linear_combination r3696
    have hd1 : rho 3180 * rho 3180 = rho 3191 := by linear_combination r3697
    have hd2 : rho 3181 * rho 3181 = rho 3192 := by linear_combination r3698
    have hd3 : rho 3193 * (rho 3181 * rho 3181 + rho 3180 * rho 3180 * (-1)) = 2 * (rho 3180 * rho 3181) := by
      rw [hd0, hd1, hd2]
      linear_combination r3699
    have hd4 : rho 3194 * (2 - (rho 3181 * rho 3181 + rho 3180 * rho 3180 * (-1))) = rho 3181 * rho 3181 - rho 3180 * rho 3180 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3700
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX75 rho : F), (dtkAccY75 rho : F)⟩
      ⟨(rho 3180 : F), (rho 3181 : F)⟩
      ⟨(rho 3186 : F), (rho 3187 : F)⟩
      ⟨(dtkAccX76 rho : F), (dtkAccY76 rho : F)⟩
      ⟨(rho 3193 : F), (rho 3194 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung75

theorem dtk_rows76 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3701 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3702 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3703 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3704 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3705 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3706 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3707 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3708 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3709 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3710 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3711 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3712 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3713 rho := by
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
  rcases p46 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3701, r3702, r3703, r3704, r3705, r3706, r3707, r3708, r3709, r3710, r3711, r3712, r3713, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3701, r3702, r3703, r3704, r3705, r3706, r3707, r3708, r3709, r3710, r3711, r3712, r3713⟩

theorem dtk_rung76 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1059 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX76 rho : F), (dtkAccY76 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3193 : F), (rho 3194 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX76 rho : F), (dtkAccY76 rho : F)⟩
        ⟨(rho 3193 : F), (rho 3194 : F)⟩
        ⟨(dtkAccX77 rho : F), (dtkAccY77 rho : F)⟩
        ⟨(rho 3206 : F), (rho 3207 : F)⟩ := by
  obtain ⟨r3701, r3702, r3703, r3704, r3705, r3706, r3707, r3708, r3709, r3710, r3711, r3712, r3713⟩ := dtk_rows76 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3701 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc466 at r3701
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3701
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3702 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc467 at r3702
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3702
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3703 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc468 at r3703
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3703
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3704 at r3704
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3705 at r3705
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3706 at r3706
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3707 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc469 at r3707
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3707
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3708 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc470 at r3708
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3708
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3709 at r3709
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3710 at r3710
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3711 at r3711
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3712 at r3712
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3713 at r3713
  have hrung76 (bit : Bool) (hbit : rho 1059 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX76 rho : F), (dtkAccY76 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3193 : F), (rho 3194 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX76 rho : F), (dtkAccY76 rho : F)⟩
        ⟨(rho 3193 : F), (rho 3194 : F)⟩
        ⟨(dtkAccX77 rho : F), (dtkAccY77 rho : F)⟩
        ⟨(rho 3206 : F), (rho 3207 : F)⟩ := by
    have hnextx : dtkAccX77 rho = dtkAccX76 rho + rho 3201 := by
      unfold dtkAccX77 dtkAccX76
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 75]
      ring
    have hnexty : dtkAccY77 rho = dtkAccY76 rho + rho 3202 := by
      unfold dtkAccY77 dtkAccY76
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 76]
      ring
    have ha0 : (rho 3193 + rho 3194) * (dtkAccX76 rho + dtkAccY76 rho) = rho 3195 := by
      unfold dtkAccX76 dtkAccY76
      linear_combination r3701
    have ha1 : rho 3194 * dtkAccX76 rho = rho 3196 := by
      unfold dtkAccX76
      linear_combination r3702
    have ha2 : rho 3193 * dtkAccY76 rho = rho 3197 := by
      unfold dtkAccY76
      linear_combination r3703
    have ha3 : 3021 * rho 3196 * rho 3197 = rho 3198 := by
      linear_combination r3704
    have ha4 : rho 3199 * (1 + rho 3198) = rho 3196 + rho 3197 := by
      linear_combination r3705
    have ha5 : rho 3200 * (1 - rho 3198) = rho 3195 - rho 3196 - rho 3197 := by
      linear_combination r3706
    have haddx :
        rho 3199 * (1 + 3021 * (rho 3194 * dtkAccX76 rho) * (rho 3193 * dtkAccY76 rho)) =
          rho 3194 * dtkAccX76 rho + rho 3193 * dtkAccY76 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3200 * (1 - 3021 * (rho 3194 * dtkAccX76 rho) * (rho 3193 * dtkAccY76 rho)) =
          (-1) * (rho 3194 * dtkAccX76 rho) - rho 3193 * dtkAccY76 rho +
            (dtkAccY76 rho - dtkAccX76 rho * (-1)) * (rho 3193 + rho 3194) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3200 * (1 - rho 3198) = rho 3195 - rho 3196 - rho 3197 := ha5
        _ = (-1) * rho 3196 - rho 3197 + (dtkAccY76 rho - dtkAccX76 rho * (-1)) * (rho 3193 + rho 3194) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX77 rho = dtkAccX76 rho - Bool.toZMod bit * (dtkAccX76 rho - rho 3199) := by
      have hd : rho 3201 = Bool.toZMod bit * (rho 3199 - dtkAccX76 rho) := by
        rw [← hbit]
        unfold dtkAccX76
        linear_combination -r3707
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY77 rho = dtkAccY76 rho - Bool.toZMod bit * (dtkAccY76 rho - rho 3200) := by
      have hd : rho 3202 = Bool.toZMod bit * (rho 3200 - dtkAccY76 rho) := by
        rw [← hbit]
        unfold dtkAccY76
        linear_combination -r3708
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3193 * rho 3194 = rho 3203 := by linear_combination r3709
    have hd1 : rho 3193 * rho 3193 = rho 3204 := by linear_combination r3710
    have hd2 : rho 3194 * rho 3194 = rho 3205 := by linear_combination r3711
    have hd3 : rho 3206 * (rho 3194 * rho 3194 + rho 3193 * rho 3193 * (-1)) = 2 * (rho 3193 * rho 3194) := by
      rw [hd0, hd1, hd2]
      linear_combination r3712
    have hd4 : rho 3207 * (2 - (rho 3194 * rho 3194 + rho 3193 * rho 3193 * (-1))) = rho 3194 * rho 3194 - rho 3193 * rho 3193 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3713
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX76 rho : F), (dtkAccY76 rho : F)⟩
      ⟨(rho 3193 : F), (rho 3194 : F)⟩
      ⟨(rho 3199 : F), (rho 3200 : F)⟩
      ⟨(dtkAccX77 rho : F), (dtkAccY77 rho : F)⟩
      ⟨(rho 3206 : F), (rho 3207 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung76

theorem dtk_rows77 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3714 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3715 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3716 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3717 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3718 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3719 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3720 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3721 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3722 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3723 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3724 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3725 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3726 rho := by
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
  rcases p46 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3714, r3715, r3716, r3717, r3718, r3719, r3720, r3721, r3722, r3723, r3724, r3725, r3726, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3714, r3715, r3716, r3717, r3718, r3719, r3720, r3721, r3722, r3723, r3724, r3725, r3726⟩

theorem dtk_rung77 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1060 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX77 rho : F), (dtkAccY77 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3206 : F), (rho 3207 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX77 rho : F), (dtkAccY77 rho : F)⟩
        ⟨(rho 3206 : F), (rho 3207 : F)⟩
        ⟨(dtkAccX78 rho : F), (dtkAccY78 rho : F)⟩
        ⟨(rho 3219 : F), (rho 3220 : F)⟩ := by
  obtain ⟨r3714, r3715, r3716, r3717, r3718, r3719, r3720, r3721, r3722, r3723, r3724, r3725, r3726⟩ := dtk_rows77 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3714 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc471 at r3714
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3714
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3715 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc472 at r3715
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3715
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3716 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc473 at r3716
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3716
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3717 at r3717
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3718 at r3718
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3719 at r3719
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3720 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc474 at r3720
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3720
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3721 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc475 at r3721
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3721
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3722 at r3722
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3723 at r3723
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3724 at r3724
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3725 at r3725
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3726 at r3726
  have hrung77 (bit : Bool) (hbit : rho 1060 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX77 rho : F), (dtkAccY77 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3206 : F), (rho 3207 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX77 rho : F), (dtkAccY77 rho : F)⟩
        ⟨(rho 3206 : F), (rho 3207 : F)⟩
        ⟨(dtkAccX78 rho : F), (dtkAccY78 rho : F)⟩
        ⟨(rho 3219 : F), (rho 3220 : F)⟩ := by
    have hnextx : dtkAccX78 rho = dtkAccX77 rho + rho 3214 := by
      unfold dtkAccX78 dtkAccX77
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 76]
      ring
    have hnexty : dtkAccY78 rho = dtkAccY77 rho + rho 3215 := by
      unfold dtkAccY78 dtkAccY77
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 77]
      ring
    have ha0 : (rho 3206 + rho 3207) * (dtkAccX77 rho + dtkAccY77 rho) = rho 3208 := by
      unfold dtkAccX77 dtkAccY77
      linear_combination r3714
    have ha1 : rho 3207 * dtkAccX77 rho = rho 3209 := by
      unfold dtkAccX77
      linear_combination r3715
    have ha2 : rho 3206 * dtkAccY77 rho = rho 3210 := by
      unfold dtkAccY77
      linear_combination r3716
    have ha3 : 3021 * rho 3209 * rho 3210 = rho 3211 := by
      linear_combination r3717
    have ha4 : rho 3212 * (1 + rho 3211) = rho 3209 + rho 3210 := by
      linear_combination r3718
    have ha5 : rho 3213 * (1 - rho 3211) = rho 3208 - rho 3209 - rho 3210 := by
      linear_combination r3719
    have haddx :
        rho 3212 * (1 + 3021 * (rho 3207 * dtkAccX77 rho) * (rho 3206 * dtkAccY77 rho)) =
          rho 3207 * dtkAccX77 rho + rho 3206 * dtkAccY77 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3213 * (1 - 3021 * (rho 3207 * dtkAccX77 rho) * (rho 3206 * dtkAccY77 rho)) =
          (-1) * (rho 3207 * dtkAccX77 rho) - rho 3206 * dtkAccY77 rho +
            (dtkAccY77 rho - dtkAccX77 rho * (-1)) * (rho 3206 + rho 3207) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3213 * (1 - rho 3211) = rho 3208 - rho 3209 - rho 3210 := ha5
        _ = (-1) * rho 3209 - rho 3210 + (dtkAccY77 rho - dtkAccX77 rho * (-1)) * (rho 3206 + rho 3207) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX78 rho = dtkAccX77 rho - Bool.toZMod bit * (dtkAccX77 rho - rho 3212) := by
      have hd : rho 3214 = Bool.toZMod bit * (rho 3212 - dtkAccX77 rho) := by
        rw [← hbit]
        unfold dtkAccX77
        linear_combination -r3720
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY78 rho = dtkAccY77 rho - Bool.toZMod bit * (dtkAccY77 rho - rho 3213) := by
      have hd : rho 3215 = Bool.toZMod bit * (rho 3213 - dtkAccY77 rho) := by
        rw [← hbit]
        unfold dtkAccY77
        linear_combination -r3721
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3206 * rho 3207 = rho 3216 := by linear_combination r3722
    have hd1 : rho 3206 * rho 3206 = rho 3217 := by linear_combination r3723
    have hd2 : rho 3207 * rho 3207 = rho 3218 := by linear_combination r3724
    have hd3 : rho 3219 * (rho 3207 * rho 3207 + rho 3206 * rho 3206 * (-1)) = 2 * (rho 3206 * rho 3207) := by
      rw [hd0, hd1, hd2]
      linear_combination r3725
    have hd4 : rho 3220 * (2 - (rho 3207 * rho 3207 + rho 3206 * rho 3206 * (-1))) = rho 3207 * rho 3207 - rho 3206 * rho 3206 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3726
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX77 rho : F), (dtkAccY77 rho : F)⟩
      ⟨(rho 3206 : F), (rho 3207 : F)⟩
      ⟨(rho 3212 : F), (rho 3213 : F)⟩
      ⟨(dtkAccX78 rho : F), (dtkAccY78 rho : F)⟩
      ⟨(rho 3219 : F), (rho 3220 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung77

theorem dtk_hstep_c12 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (983 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 72 ≤ i → i < 78 →
      EdwardsBridge.onCurve (dtkLadderAccState rho i) →
      EdwardsBridge.onCurve (dtkLadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (dtkLadderAccState rho i) (dtkLadderCurState rho i)
        (dtkLadderAccState rho (i + 1)) (dtkLadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact dtk_rung72 rho h bits[72]! (hbitAt 72 (by omega)) hacc hcur
  · exact dtk_rung73 rho h bits[73]! (hbitAt 73 (by omega)) hacc hcur
  · exact dtk_rung74 rho h bits[74]! (hbitAt 74 (by omega)) hacc hcur
  · exact dtk_rung75 rho h bits[75]! (hbitAt 75 (by omega)) hacc hcur
  · exact dtk_rung76 rho h bits[76]! (hbitAt 76 (by omega)) hacc hcur
  · exact dtk_rung77 rho h bits[77]! (hbitAt 77 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport
