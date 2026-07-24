import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDtkScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs

theorem dtk_rows66 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3571 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3572 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3573 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3574 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3575 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3576 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3577 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3578 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3579 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3580 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3581 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3582 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3583 rho := by
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
  rcases p44 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3571, r3572, r3573, r3574, r3575, r3576, r3577, r3578, r3579, r3580, r3581, r3582, r3583, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3571, r3572, r3573, r3574, r3575, r3576, r3577, r3578, r3579, r3580, r3581, r3582, r3583⟩

theorem dtk_rung66 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1049 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX66 rho : F), (dtkAccY66 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3063 : F), (rho 3064 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX66 rho : F), (dtkAccY66 rho : F)⟩
        ⟨(rho 3063 : F), (rho 3064 : F)⟩
        ⟨(dtkAccX67 rho : F), (dtkAccY67 rho : F)⟩
        ⟨(rho 3076 : F), (rho 3077 : F)⟩ := by
  obtain ⟨r3571, r3572, r3573, r3574, r3575, r3576, r3577, r3578, r3579, r3580, r3581, r3582, r3583⟩ := dtk_rows66 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3571 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc416 at r3571
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3571
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3572 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc417 at r3572
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3572
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3573 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc418 at r3573
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3573
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3574 at r3574
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3575 at r3575
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3576 at r3576
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3577 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc419 at r3577
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3577
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3578 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc420 at r3578
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3578
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3579 at r3579
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3580 at r3580
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3581 at r3581
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3582 at r3582
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3583 at r3583
  have hrung66 (bit : Bool) (hbit : rho 1049 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX66 rho : F), (dtkAccY66 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3063 : F), (rho 3064 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX66 rho : F), (dtkAccY66 rho : F)⟩
        ⟨(rho 3063 : F), (rho 3064 : F)⟩
        ⟨(dtkAccX67 rho : F), (dtkAccY67 rho : F)⟩
        ⟨(rho 3076 : F), (rho 3077 : F)⟩ := by
    have hnextx : dtkAccX67 rho = dtkAccX66 rho + rho 3071 := by
      unfold dtkAccX67 dtkAccX66
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 65]
      ring
    have hnexty : dtkAccY67 rho = dtkAccY66 rho + rho 3072 := by
      unfold dtkAccY67 dtkAccY66
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 66]
      ring
    have ha0 : (rho 3063 + rho 3064) * (dtkAccX66 rho + dtkAccY66 rho) = rho 3065 := by
      unfold dtkAccX66 dtkAccY66
      linear_combination r3571
    have ha1 : rho 3064 * dtkAccX66 rho = rho 3066 := by
      unfold dtkAccX66
      linear_combination r3572
    have ha2 : rho 3063 * dtkAccY66 rho = rho 3067 := by
      unfold dtkAccY66
      linear_combination r3573
    have ha3 : 3021 * rho 3066 * rho 3067 = rho 3068 := by
      linear_combination r3574
    have ha4 : rho 3069 * (1 + rho 3068) = rho 3066 + rho 3067 := by
      linear_combination r3575
    have ha5 : rho 3070 * (1 - rho 3068) = rho 3065 - rho 3066 - rho 3067 := by
      linear_combination r3576
    have haddx :
        rho 3069 * (1 + 3021 * (rho 3064 * dtkAccX66 rho) * (rho 3063 * dtkAccY66 rho)) =
          rho 3064 * dtkAccX66 rho + rho 3063 * dtkAccY66 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3070 * (1 - 3021 * (rho 3064 * dtkAccX66 rho) * (rho 3063 * dtkAccY66 rho)) =
          (-1) * (rho 3064 * dtkAccX66 rho) - rho 3063 * dtkAccY66 rho +
            (dtkAccY66 rho - dtkAccX66 rho * (-1)) * (rho 3063 + rho 3064) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3070 * (1 - rho 3068) = rho 3065 - rho 3066 - rho 3067 := ha5
        _ = (-1) * rho 3066 - rho 3067 + (dtkAccY66 rho - dtkAccX66 rho * (-1)) * (rho 3063 + rho 3064) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX67 rho = dtkAccX66 rho - Bool.toZMod bit * (dtkAccX66 rho - rho 3069) := by
      have hd : rho 3071 = Bool.toZMod bit * (rho 3069 - dtkAccX66 rho) := by
        rw [← hbit]
        unfold dtkAccX66
        linear_combination -r3577
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY67 rho = dtkAccY66 rho - Bool.toZMod bit * (dtkAccY66 rho - rho 3070) := by
      have hd : rho 3072 = Bool.toZMod bit * (rho 3070 - dtkAccY66 rho) := by
        rw [← hbit]
        unfold dtkAccY66
        linear_combination -r3578
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3063 * rho 3064 = rho 3073 := by linear_combination r3579
    have hd1 : rho 3063 * rho 3063 = rho 3074 := by linear_combination r3580
    have hd2 : rho 3064 * rho 3064 = rho 3075 := by linear_combination r3581
    have hd3 : rho 3076 * (rho 3064 * rho 3064 + rho 3063 * rho 3063 * (-1)) = 2 * (rho 3063 * rho 3064) := by
      rw [hd0, hd1, hd2]
      linear_combination r3582
    have hd4 : rho 3077 * (2 - (rho 3064 * rho 3064 + rho 3063 * rho 3063 * (-1))) = rho 3064 * rho 3064 - rho 3063 * rho 3063 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3583
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX66 rho : F), (dtkAccY66 rho : F)⟩
      ⟨(rho 3063 : F), (rho 3064 : F)⟩
      ⟨(rho 3069 : F), (rho 3070 : F)⟩
      ⟨(dtkAccX67 rho : F), (dtkAccY67 rho : F)⟩
      ⟨(rho 3076 : F), (rho 3077 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung66

theorem dtk_rows67 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3584 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3585 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3586 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3587 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3588 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3589 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3590 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3591 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3592 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3593 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3594 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3595 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3596 rho := by
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
  rcases p44 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3584, r3585, r3586, r3587, r3588, r3589, r3590, r3591, r3592, r3593, r3594, r3595, r3596, _, _, _⟩
  exact ⟨r3584, r3585, r3586, r3587, r3588, r3589, r3590, r3591, r3592, r3593, r3594, r3595, r3596⟩

theorem dtk_rung67 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1050 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX67 rho : F), (dtkAccY67 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3076 : F), (rho 3077 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX67 rho : F), (dtkAccY67 rho : F)⟩
        ⟨(rho 3076 : F), (rho 3077 : F)⟩
        ⟨(dtkAccX68 rho : F), (dtkAccY68 rho : F)⟩
        ⟨(rho 3089 : F), (rho 3090 : F)⟩ := by
  obtain ⟨r3584, r3585, r3586, r3587, r3588, r3589, r3590, r3591, r3592, r3593, r3594, r3595, r3596⟩ := dtk_rows67 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3584 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc421 at r3584
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3584
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3585 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc422 at r3585
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3585
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3586 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc423 at r3586
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3586
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3587 at r3587
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3588 at r3588
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3589 at r3589
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3590 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc424 at r3590
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3590
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3591 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc425 at r3591
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3591
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3592 at r3592
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3593 at r3593
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3594 at r3594
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3595 at r3595
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3596 at r3596
  have hrung67 (bit : Bool) (hbit : rho 1050 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX67 rho : F), (dtkAccY67 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3076 : F), (rho 3077 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX67 rho : F), (dtkAccY67 rho : F)⟩
        ⟨(rho 3076 : F), (rho 3077 : F)⟩
        ⟨(dtkAccX68 rho : F), (dtkAccY68 rho : F)⟩
        ⟨(rho 3089 : F), (rho 3090 : F)⟩ := by
    have hnextx : dtkAccX68 rho = dtkAccX67 rho + rho 3084 := by
      unfold dtkAccX68 dtkAccX67
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 66]
      ring
    have hnexty : dtkAccY68 rho = dtkAccY67 rho + rho 3085 := by
      unfold dtkAccY68 dtkAccY67
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 67]
      ring
    have ha0 : (rho 3076 + rho 3077) * (dtkAccX67 rho + dtkAccY67 rho) = rho 3078 := by
      unfold dtkAccX67 dtkAccY67
      linear_combination r3584
    have ha1 : rho 3077 * dtkAccX67 rho = rho 3079 := by
      unfold dtkAccX67
      linear_combination r3585
    have ha2 : rho 3076 * dtkAccY67 rho = rho 3080 := by
      unfold dtkAccY67
      linear_combination r3586
    have ha3 : 3021 * rho 3079 * rho 3080 = rho 3081 := by
      linear_combination r3587
    have ha4 : rho 3082 * (1 + rho 3081) = rho 3079 + rho 3080 := by
      linear_combination r3588
    have ha5 : rho 3083 * (1 - rho 3081) = rho 3078 - rho 3079 - rho 3080 := by
      linear_combination r3589
    have haddx :
        rho 3082 * (1 + 3021 * (rho 3077 * dtkAccX67 rho) * (rho 3076 * dtkAccY67 rho)) =
          rho 3077 * dtkAccX67 rho + rho 3076 * dtkAccY67 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3083 * (1 - 3021 * (rho 3077 * dtkAccX67 rho) * (rho 3076 * dtkAccY67 rho)) =
          (-1) * (rho 3077 * dtkAccX67 rho) - rho 3076 * dtkAccY67 rho +
            (dtkAccY67 rho - dtkAccX67 rho * (-1)) * (rho 3076 + rho 3077) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3083 * (1 - rho 3081) = rho 3078 - rho 3079 - rho 3080 := ha5
        _ = (-1) * rho 3079 - rho 3080 + (dtkAccY67 rho - dtkAccX67 rho * (-1)) * (rho 3076 + rho 3077) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX68 rho = dtkAccX67 rho - Bool.toZMod bit * (dtkAccX67 rho - rho 3082) := by
      have hd : rho 3084 = Bool.toZMod bit * (rho 3082 - dtkAccX67 rho) := by
        rw [← hbit]
        unfold dtkAccX67
        linear_combination -r3590
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY68 rho = dtkAccY67 rho - Bool.toZMod bit * (dtkAccY67 rho - rho 3083) := by
      have hd : rho 3085 = Bool.toZMod bit * (rho 3083 - dtkAccY67 rho) := by
        rw [← hbit]
        unfold dtkAccY67
        linear_combination -r3591
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3076 * rho 3077 = rho 3086 := by linear_combination r3592
    have hd1 : rho 3076 * rho 3076 = rho 3087 := by linear_combination r3593
    have hd2 : rho 3077 * rho 3077 = rho 3088 := by linear_combination r3594
    have hd3 : rho 3089 * (rho 3077 * rho 3077 + rho 3076 * rho 3076 * (-1)) = 2 * (rho 3076 * rho 3077) := by
      rw [hd0, hd1, hd2]
      linear_combination r3595
    have hd4 : rho 3090 * (2 - (rho 3077 * rho 3077 + rho 3076 * rho 3076 * (-1))) = rho 3077 * rho 3077 - rho 3076 * rho 3076 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3596
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX67 rho : F), (dtkAccY67 rho : F)⟩
      ⟨(rho 3076 : F), (rho 3077 : F)⟩
      ⟨(rho 3082 : F), (rho 3083 : F)⟩
      ⟨(dtkAccX68 rho : F), (dtkAccY68 rho : F)⟩
      ⟨(rho 3089 : F), (rho 3090 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung67

theorem dtk_rows68 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3597 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3598 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3599 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3600 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3601 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3602 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3603 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3604 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3605 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3606 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3607 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3608 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3609 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p44, p45, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart44 at p44
  rcases p44 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3597, r3598, r3599⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart45 at p45
  rcases p45 with ⟨r3600, r3601, r3602, r3603, r3604, r3605, r3606, r3607, r3608, r3609, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3597, r3598, r3599, r3600, r3601, r3602, r3603, r3604, r3605, r3606, r3607, r3608, r3609⟩

theorem dtk_rung68 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1051 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX68 rho : F), (dtkAccY68 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3089 : F), (rho 3090 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX68 rho : F), (dtkAccY68 rho : F)⟩
        ⟨(rho 3089 : F), (rho 3090 : F)⟩
        ⟨(dtkAccX69 rho : F), (dtkAccY69 rho : F)⟩
        ⟨(rho 3102 : F), (rho 3103 : F)⟩ := by
  obtain ⟨r3597, r3598, r3599, r3600, r3601, r3602, r3603, r3604, r3605, r3606, r3607, r3608, r3609⟩ := dtk_rows68 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3597 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc426 at r3597
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3597
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3598 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc427 at r3598
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3598
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3599 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc428 at r3599
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3599
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3600 at r3600
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3601 at r3601
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3602 at r3602
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3603 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc429 at r3603
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3603
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3604 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc430 at r3604
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3604
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3605 at r3605
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3606 at r3606
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3607 at r3607
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3608 at r3608
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3609 at r3609
  have hrung68 (bit : Bool) (hbit : rho 1051 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX68 rho : F), (dtkAccY68 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3089 : F), (rho 3090 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX68 rho : F), (dtkAccY68 rho : F)⟩
        ⟨(rho 3089 : F), (rho 3090 : F)⟩
        ⟨(dtkAccX69 rho : F), (dtkAccY69 rho : F)⟩
        ⟨(rho 3102 : F), (rho 3103 : F)⟩ := by
    have hnextx : dtkAccX69 rho = dtkAccX68 rho + rho 3097 := by
      unfold dtkAccX69 dtkAccX68
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 67]
      ring
    have hnexty : dtkAccY69 rho = dtkAccY68 rho + rho 3098 := by
      unfold dtkAccY69 dtkAccY68
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 68]
      ring
    have ha0 : (rho 3089 + rho 3090) * (dtkAccX68 rho + dtkAccY68 rho) = rho 3091 := by
      unfold dtkAccX68 dtkAccY68
      linear_combination r3597
    have ha1 : rho 3090 * dtkAccX68 rho = rho 3092 := by
      unfold dtkAccX68
      linear_combination r3598
    have ha2 : rho 3089 * dtkAccY68 rho = rho 3093 := by
      unfold dtkAccY68
      linear_combination r3599
    have ha3 : 3021 * rho 3092 * rho 3093 = rho 3094 := by
      linear_combination r3600
    have ha4 : rho 3095 * (1 + rho 3094) = rho 3092 + rho 3093 := by
      linear_combination r3601
    have ha5 : rho 3096 * (1 - rho 3094) = rho 3091 - rho 3092 - rho 3093 := by
      linear_combination r3602
    have haddx :
        rho 3095 * (1 + 3021 * (rho 3090 * dtkAccX68 rho) * (rho 3089 * dtkAccY68 rho)) =
          rho 3090 * dtkAccX68 rho + rho 3089 * dtkAccY68 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3096 * (1 - 3021 * (rho 3090 * dtkAccX68 rho) * (rho 3089 * dtkAccY68 rho)) =
          (-1) * (rho 3090 * dtkAccX68 rho) - rho 3089 * dtkAccY68 rho +
            (dtkAccY68 rho - dtkAccX68 rho * (-1)) * (rho 3089 + rho 3090) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3096 * (1 - rho 3094) = rho 3091 - rho 3092 - rho 3093 := ha5
        _ = (-1) * rho 3092 - rho 3093 + (dtkAccY68 rho - dtkAccX68 rho * (-1)) * (rho 3089 + rho 3090) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX69 rho = dtkAccX68 rho - Bool.toZMod bit * (dtkAccX68 rho - rho 3095) := by
      have hd : rho 3097 = Bool.toZMod bit * (rho 3095 - dtkAccX68 rho) := by
        rw [← hbit]
        unfold dtkAccX68
        linear_combination -r3603
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY69 rho = dtkAccY68 rho - Bool.toZMod bit * (dtkAccY68 rho - rho 3096) := by
      have hd : rho 3098 = Bool.toZMod bit * (rho 3096 - dtkAccY68 rho) := by
        rw [← hbit]
        unfold dtkAccY68
        linear_combination -r3604
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3089 * rho 3090 = rho 3099 := by linear_combination r3605
    have hd1 : rho 3089 * rho 3089 = rho 3100 := by linear_combination r3606
    have hd2 : rho 3090 * rho 3090 = rho 3101 := by linear_combination r3607
    have hd3 : rho 3102 * (rho 3090 * rho 3090 + rho 3089 * rho 3089 * (-1)) = 2 * (rho 3089 * rho 3090) := by
      rw [hd0, hd1, hd2]
      linear_combination r3608
    have hd4 : rho 3103 * (2 - (rho 3090 * rho 3090 + rho 3089 * rho 3089 * (-1))) = rho 3090 * rho 3090 - rho 3089 * rho 3089 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3609
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX68 rho : F), (dtkAccY68 rho : F)⟩
      ⟨(rho 3089 : F), (rho 3090 : F)⟩
      ⟨(rho 3095 : F), (rho 3096 : F)⟩
      ⟨(dtkAccX69 rho : F), (dtkAccY69 rho : F)⟩
      ⟨(rho 3102 : F), (rho 3103 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung68

theorem dtk_rows69 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3610 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3611 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3612 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3613 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3614 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3615 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3616 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3617 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3618 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3619 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3620 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3621 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3622 rho := by
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
  rcases p45 with ⟨_, _, _, _, _, _, _, _, _, _, r3610, r3611, r3612, r3613, r3614, r3615, r3616, r3617, r3618, r3619, r3620, r3621, r3622, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3610, r3611, r3612, r3613, r3614, r3615, r3616, r3617, r3618, r3619, r3620, r3621, r3622⟩

theorem dtk_rung69 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1052 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX69 rho : F), (dtkAccY69 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3102 : F), (rho 3103 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX69 rho : F), (dtkAccY69 rho : F)⟩
        ⟨(rho 3102 : F), (rho 3103 : F)⟩
        ⟨(dtkAccX70 rho : F), (dtkAccY70 rho : F)⟩
        ⟨(rho 3115 : F), (rho 3116 : F)⟩ := by
  obtain ⟨r3610, r3611, r3612, r3613, r3614, r3615, r3616, r3617, r3618, r3619, r3620, r3621, r3622⟩ := dtk_rows69 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3610 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc431 at r3610
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3610
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3611 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc432 at r3611
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3611
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3612 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc433 at r3612
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3612
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3613 at r3613
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3614 at r3614
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3615 at r3615
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3616 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc434 at r3616
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3616
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3617 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc435 at r3617
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3617
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3618 at r3618
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3619 at r3619
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3620 at r3620
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3621 at r3621
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3622 at r3622
  have hrung69 (bit : Bool) (hbit : rho 1052 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX69 rho : F), (dtkAccY69 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3102 : F), (rho 3103 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX69 rho : F), (dtkAccY69 rho : F)⟩
        ⟨(rho 3102 : F), (rho 3103 : F)⟩
        ⟨(dtkAccX70 rho : F), (dtkAccY70 rho : F)⟩
        ⟨(rho 3115 : F), (rho 3116 : F)⟩ := by
    have hnextx : dtkAccX70 rho = dtkAccX69 rho + rho 3110 := by
      unfold dtkAccX70 dtkAccX69
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 68]
      ring
    have hnexty : dtkAccY70 rho = dtkAccY69 rho + rho 3111 := by
      unfold dtkAccY70 dtkAccY69
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 69]
      ring
    have ha0 : (rho 3102 + rho 3103) * (dtkAccX69 rho + dtkAccY69 rho) = rho 3104 := by
      unfold dtkAccX69 dtkAccY69
      linear_combination r3610
    have ha1 : rho 3103 * dtkAccX69 rho = rho 3105 := by
      unfold dtkAccX69
      linear_combination r3611
    have ha2 : rho 3102 * dtkAccY69 rho = rho 3106 := by
      unfold dtkAccY69
      linear_combination r3612
    have ha3 : 3021 * rho 3105 * rho 3106 = rho 3107 := by
      linear_combination r3613
    have ha4 : rho 3108 * (1 + rho 3107) = rho 3105 + rho 3106 := by
      linear_combination r3614
    have ha5 : rho 3109 * (1 - rho 3107) = rho 3104 - rho 3105 - rho 3106 := by
      linear_combination r3615
    have haddx :
        rho 3108 * (1 + 3021 * (rho 3103 * dtkAccX69 rho) * (rho 3102 * dtkAccY69 rho)) =
          rho 3103 * dtkAccX69 rho + rho 3102 * dtkAccY69 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3109 * (1 - 3021 * (rho 3103 * dtkAccX69 rho) * (rho 3102 * dtkAccY69 rho)) =
          (-1) * (rho 3103 * dtkAccX69 rho) - rho 3102 * dtkAccY69 rho +
            (dtkAccY69 rho - dtkAccX69 rho * (-1)) * (rho 3102 + rho 3103) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3109 * (1 - rho 3107) = rho 3104 - rho 3105 - rho 3106 := ha5
        _ = (-1) * rho 3105 - rho 3106 + (dtkAccY69 rho - dtkAccX69 rho * (-1)) * (rho 3102 + rho 3103) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX70 rho = dtkAccX69 rho - Bool.toZMod bit * (dtkAccX69 rho - rho 3108) := by
      have hd : rho 3110 = Bool.toZMod bit * (rho 3108 - dtkAccX69 rho) := by
        rw [← hbit]
        unfold dtkAccX69
        linear_combination -r3616
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY70 rho = dtkAccY69 rho - Bool.toZMod bit * (dtkAccY69 rho - rho 3109) := by
      have hd : rho 3111 = Bool.toZMod bit * (rho 3109 - dtkAccY69 rho) := by
        rw [← hbit]
        unfold dtkAccY69
        linear_combination -r3617
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3102 * rho 3103 = rho 3112 := by linear_combination r3618
    have hd1 : rho 3102 * rho 3102 = rho 3113 := by linear_combination r3619
    have hd2 : rho 3103 * rho 3103 = rho 3114 := by linear_combination r3620
    have hd3 : rho 3115 * (rho 3103 * rho 3103 + rho 3102 * rho 3102 * (-1)) = 2 * (rho 3102 * rho 3103) := by
      rw [hd0, hd1, hd2]
      linear_combination r3621
    have hd4 : rho 3116 * (2 - (rho 3103 * rho 3103 + rho 3102 * rho 3102 * (-1))) = rho 3103 * rho 3103 - rho 3102 * rho 3102 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3622
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX69 rho : F), (dtkAccY69 rho : F)⟩
      ⟨(rho 3102 : F), (rho 3103 : F)⟩
      ⟨(rho 3108 : F), (rho 3109 : F)⟩
      ⟨(dtkAccX70 rho : F), (dtkAccY70 rho : F)⟩
      ⟨(rho 3115 : F), (rho 3116 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung69

theorem dtk_rows70 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3623 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3624 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3625 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3626 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3627 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3628 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3629 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3630 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3631 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3632 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3633 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3634 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3635 rho := by
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
  rcases p45 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3623, r3624, r3625, r3626, r3627, r3628, r3629, r3630, r3631, r3632, r3633, r3634, r3635, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3623, r3624, r3625, r3626, r3627, r3628, r3629, r3630, r3631, r3632, r3633, r3634, r3635⟩

theorem dtk_rung70 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1053 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX70 rho : F), (dtkAccY70 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3115 : F), (rho 3116 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX70 rho : F), (dtkAccY70 rho : F)⟩
        ⟨(rho 3115 : F), (rho 3116 : F)⟩
        ⟨(dtkAccX71 rho : F), (dtkAccY71 rho : F)⟩
        ⟨(rho 3128 : F), (rho 3129 : F)⟩ := by
  obtain ⟨r3623, r3624, r3625, r3626, r3627, r3628, r3629, r3630, r3631, r3632, r3633, r3634, r3635⟩ := dtk_rows70 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3623 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc436 at r3623
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3623
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3624 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc437 at r3624
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3624
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3625 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc438 at r3625
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3625
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3626 at r3626
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3627 at r3627
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3628 at r3628
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3629 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc439 at r3629
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3629
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3630 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc440 at r3630
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3630
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3631 at r3631
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3632 at r3632
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3633 at r3633
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3634 at r3634
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3635 at r3635
  have hrung70 (bit : Bool) (hbit : rho 1053 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX70 rho : F), (dtkAccY70 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3115 : F), (rho 3116 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX70 rho : F), (dtkAccY70 rho : F)⟩
        ⟨(rho 3115 : F), (rho 3116 : F)⟩
        ⟨(dtkAccX71 rho : F), (dtkAccY71 rho : F)⟩
        ⟨(rho 3128 : F), (rho 3129 : F)⟩ := by
    have hnextx : dtkAccX71 rho = dtkAccX70 rho + rho 3123 := by
      unfold dtkAccX71 dtkAccX70
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 69]
      ring
    have hnexty : dtkAccY71 rho = dtkAccY70 rho + rho 3124 := by
      unfold dtkAccY71 dtkAccY70
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 70]
      ring
    have ha0 : (rho 3115 + rho 3116) * (dtkAccX70 rho + dtkAccY70 rho) = rho 3117 := by
      unfold dtkAccX70 dtkAccY70
      linear_combination r3623
    have ha1 : rho 3116 * dtkAccX70 rho = rho 3118 := by
      unfold dtkAccX70
      linear_combination r3624
    have ha2 : rho 3115 * dtkAccY70 rho = rho 3119 := by
      unfold dtkAccY70
      linear_combination r3625
    have ha3 : 3021 * rho 3118 * rho 3119 = rho 3120 := by
      linear_combination r3626
    have ha4 : rho 3121 * (1 + rho 3120) = rho 3118 + rho 3119 := by
      linear_combination r3627
    have ha5 : rho 3122 * (1 - rho 3120) = rho 3117 - rho 3118 - rho 3119 := by
      linear_combination r3628
    have haddx :
        rho 3121 * (1 + 3021 * (rho 3116 * dtkAccX70 rho) * (rho 3115 * dtkAccY70 rho)) =
          rho 3116 * dtkAccX70 rho + rho 3115 * dtkAccY70 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3122 * (1 - 3021 * (rho 3116 * dtkAccX70 rho) * (rho 3115 * dtkAccY70 rho)) =
          (-1) * (rho 3116 * dtkAccX70 rho) - rho 3115 * dtkAccY70 rho +
            (dtkAccY70 rho - dtkAccX70 rho * (-1)) * (rho 3115 + rho 3116) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3122 * (1 - rho 3120) = rho 3117 - rho 3118 - rho 3119 := ha5
        _ = (-1) * rho 3118 - rho 3119 + (dtkAccY70 rho - dtkAccX70 rho * (-1)) * (rho 3115 + rho 3116) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX71 rho = dtkAccX70 rho - Bool.toZMod bit * (dtkAccX70 rho - rho 3121) := by
      have hd : rho 3123 = Bool.toZMod bit * (rho 3121 - dtkAccX70 rho) := by
        rw [← hbit]
        unfold dtkAccX70
        linear_combination -r3629
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY71 rho = dtkAccY70 rho - Bool.toZMod bit * (dtkAccY70 rho - rho 3122) := by
      have hd : rho 3124 = Bool.toZMod bit * (rho 3122 - dtkAccY70 rho) := by
        rw [← hbit]
        unfold dtkAccY70
        linear_combination -r3630
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3115 * rho 3116 = rho 3125 := by linear_combination r3631
    have hd1 : rho 3115 * rho 3115 = rho 3126 := by linear_combination r3632
    have hd2 : rho 3116 * rho 3116 = rho 3127 := by linear_combination r3633
    have hd3 : rho 3128 * (rho 3116 * rho 3116 + rho 3115 * rho 3115 * (-1)) = 2 * (rho 3115 * rho 3116) := by
      rw [hd0, hd1, hd2]
      linear_combination r3634
    have hd4 : rho 3129 * (2 - (rho 3116 * rho 3116 + rho 3115 * rho 3115 * (-1))) = rho 3116 * rho 3116 - rho 3115 * rho 3115 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3635
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX70 rho : F), (dtkAccY70 rho : F)⟩
      ⟨(rho 3115 : F), (rho 3116 : F)⟩
      ⟨(rho 3121 : F), (rho 3122 : F)⟩
      ⟨(dtkAccX71 rho : F), (dtkAccY71 rho : F)⟩
      ⟨(rho 3128 : F), (rho 3129 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung70

theorem dtk_rows71 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3636 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3637 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3638 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3639 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3640 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3641 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3642 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3643 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3644 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3645 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3646 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3647 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3648 rho := by
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
  rcases p45 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3636, r3637, r3638, r3639, r3640, r3641, r3642, r3643, r3644, r3645, r3646, r3647, r3648, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3636, r3637, r3638, r3639, r3640, r3641, r3642, r3643, r3644, r3645, r3646, r3647, r3648⟩

theorem dtk_rung71 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1054 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX71 rho : F), (dtkAccY71 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3128 : F), (rho 3129 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX71 rho : F), (dtkAccY71 rho : F)⟩
        ⟨(rho 3128 : F), (rho 3129 : F)⟩
        ⟨(dtkAccX72 rho : F), (dtkAccY72 rho : F)⟩
        ⟨(rho 3141 : F), (rho 3142 : F)⟩ := by
  obtain ⟨r3636, r3637, r3638, r3639, r3640, r3641, r3642, r3643, r3644, r3645, r3646, r3647, r3648⟩ := dtk_rows71 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3636 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc441 at r3636
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3636
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3637 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc442 at r3637
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3637
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3638 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc443 at r3638
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3638
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3639 at r3639
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3640 at r3640
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3641 at r3641
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3642 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc444 at r3642
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3642
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3643 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc445 at r3643
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3643
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3644 at r3644
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3645 at r3645
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3646 at r3646
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3647 at r3647
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3648 at r3648
  have hrung71 (bit : Bool) (hbit : rho 1054 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX71 rho : F), (dtkAccY71 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3128 : F), (rho 3129 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX71 rho : F), (dtkAccY71 rho : F)⟩
        ⟨(rho 3128 : F), (rho 3129 : F)⟩
        ⟨(dtkAccX72 rho : F), (dtkAccY72 rho : F)⟩
        ⟨(rho 3141 : F), (rho 3142 : F)⟩ := by
    have hnextx : dtkAccX72 rho = dtkAccX71 rho + rho 3136 := by
      unfold dtkAccX72 dtkAccX71
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 70]
      ring
    have hnexty : dtkAccY72 rho = dtkAccY71 rho + rho 3137 := by
      unfold dtkAccY72 dtkAccY71
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 71]
      ring
    have ha0 : (rho 3128 + rho 3129) * (dtkAccX71 rho + dtkAccY71 rho) = rho 3130 := by
      unfold dtkAccX71 dtkAccY71
      linear_combination r3636
    have ha1 : rho 3129 * dtkAccX71 rho = rho 3131 := by
      unfold dtkAccX71
      linear_combination r3637
    have ha2 : rho 3128 * dtkAccY71 rho = rho 3132 := by
      unfold dtkAccY71
      linear_combination r3638
    have ha3 : 3021 * rho 3131 * rho 3132 = rho 3133 := by
      linear_combination r3639
    have ha4 : rho 3134 * (1 + rho 3133) = rho 3131 + rho 3132 := by
      linear_combination r3640
    have ha5 : rho 3135 * (1 - rho 3133) = rho 3130 - rho 3131 - rho 3132 := by
      linear_combination r3641
    have haddx :
        rho 3134 * (1 + 3021 * (rho 3129 * dtkAccX71 rho) * (rho 3128 * dtkAccY71 rho)) =
          rho 3129 * dtkAccX71 rho + rho 3128 * dtkAccY71 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3135 * (1 - 3021 * (rho 3129 * dtkAccX71 rho) * (rho 3128 * dtkAccY71 rho)) =
          (-1) * (rho 3129 * dtkAccX71 rho) - rho 3128 * dtkAccY71 rho +
            (dtkAccY71 rho - dtkAccX71 rho * (-1)) * (rho 3128 + rho 3129) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3135 * (1 - rho 3133) = rho 3130 - rho 3131 - rho 3132 := ha5
        _ = (-1) * rho 3131 - rho 3132 + (dtkAccY71 rho - dtkAccX71 rho * (-1)) * (rho 3128 + rho 3129) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX72 rho = dtkAccX71 rho - Bool.toZMod bit * (dtkAccX71 rho - rho 3134) := by
      have hd : rho 3136 = Bool.toZMod bit * (rho 3134 - dtkAccX71 rho) := by
        rw [← hbit]
        unfold dtkAccX71
        linear_combination -r3642
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY72 rho = dtkAccY71 rho - Bool.toZMod bit * (dtkAccY71 rho - rho 3135) := by
      have hd : rho 3137 = Bool.toZMod bit * (rho 3135 - dtkAccY71 rho) := by
        rw [← hbit]
        unfold dtkAccY71
        linear_combination -r3643
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3128 * rho 3129 = rho 3138 := by linear_combination r3644
    have hd1 : rho 3128 * rho 3128 = rho 3139 := by linear_combination r3645
    have hd2 : rho 3129 * rho 3129 = rho 3140 := by linear_combination r3646
    have hd3 : rho 3141 * (rho 3129 * rho 3129 + rho 3128 * rho 3128 * (-1)) = 2 * (rho 3128 * rho 3129) := by
      rw [hd0, hd1, hd2]
      linear_combination r3647
    have hd4 : rho 3142 * (2 - (rho 3129 * rho 3129 + rho 3128 * rho 3128 * (-1))) = rho 3129 * rho 3129 - rho 3128 * rho 3128 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3648
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX71 rho : F), (dtkAccY71 rho : F)⟩
      ⟨(rho 3128 : F), (rho 3129 : F)⟩
      ⟨(rho 3134 : F), (rho 3135 : F)⟩
      ⟨(dtkAccX72 rho : F), (dtkAccY72 rho : F)⟩
      ⟨(rho 3141 : F), (rho 3142 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung71

theorem dtk_hstep_c11 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (983 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 66 ≤ i → i < 72 →
      EdwardsBridge.onCurve (dtkLadderAccState rho i) →
      EdwardsBridge.onCurve (dtkLadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (dtkLadderAccState rho i) (dtkLadderCurState rho i)
        (dtkLadderAccState rho (i + 1)) (dtkLadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact dtk_rung66 rho h bits[66]! (hbitAt 66 (by omega)) hacc hcur
  · exact dtk_rung67 rho h bits[67]! (hbitAt 67 (by omega)) hacc hcur
  · exact dtk_rung68 rho h bits[68]! (hbitAt 68 (by omega)) hacc hcur
  · exact dtk_rung69 rho h bits[69]! (hbitAt 69 (by omega)) hacc hcur
  · exact dtk_rung70 rho h bits[70]! (hbitAt 70 (by omega)) hacc hcur
  · exact dtk_rung71 rho h bits[71]! (hbitAt 71 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport
