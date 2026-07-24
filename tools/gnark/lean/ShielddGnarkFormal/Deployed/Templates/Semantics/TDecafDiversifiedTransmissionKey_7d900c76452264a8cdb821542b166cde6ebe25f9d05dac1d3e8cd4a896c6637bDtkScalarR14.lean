import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDtkScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs

theorem dtk_rows84 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3805 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3806 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3807 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3808 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3809 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3810 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3811 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3812 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3813 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3814 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3815 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3816 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3817 rho := by
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
  rcases p47 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3805, r3806, r3807, r3808, r3809, r3810, r3811, r3812, r3813, r3814, r3815, r3816, r3817, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3805, r3806, r3807, r3808, r3809, r3810, r3811, r3812, r3813, r3814, r3815, r3816, r3817⟩

theorem dtk_rung84 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1067 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX84 rho : F), (dtkAccY84 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3297 : F), (rho 3298 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX84 rho : F), (dtkAccY84 rho : F)⟩
        ⟨(rho 3297 : F), (rho 3298 : F)⟩
        ⟨(dtkAccX85 rho : F), (dtkAccY85 rho : F)⟩
        ⟨(rho 3310 : F), (rho 3311 : F)⟩ := by
  obtain ⟨r3805, r3806, r3807, r3808, r3809, r3810, r3811, r3812, r3813, r3814, r3815, r3816, r3817⟩ := dtk_rows84 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3805 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc506 at r3805
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3805
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3806 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc507 at r3806
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3806
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3807 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc508 at r3807
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3807
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3808 at r3808
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3809 at r3809
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3810 at r3810
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3811 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc509 at r3811
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3811
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3812 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc510 at r3812
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3812
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3813 at r3813
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3814 at r3814
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3815 at r3815
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3816 at r3816
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3817 at r3817
  have hrung84 (bit : Bool) (hbit : rho 1067 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX84 rho : F), (dtkAccY84 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3297 : F), (rho 3298 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX84 rho : F), (dtkAccY84 rho : F)⟩
        ⟨(rho 3297 : F), (rho 3298 : F)⟩
        ⟨(dtkAccX85 rho : F), (dtkAccY85 rho : F)⟩
        ⟨(rho 3310 : F), (rho 3311 : F)⟩ := by
    have hnextx : dtkAccX85 rho = dtkAccX84 rho + rho 3305 := by
      unfold dtkAccX85 dtkAccX84
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 83]
      ring
    have hnexty : dtkAccY85 rho = dtkAccY84 rho + rho 3306 := by
      unfold dtkAccY85 dtkAccY84
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 84]
      ring
    have ha0 : (rho 3297 + rho 3298) * (dtkAccX84 rho + dtkAccY84 rho) = rho 3299 := by
      unfold dtkAccX84 dtkAccY84
      linear_combination r3805
    have ha1 : rho 3298 * dtkAccX84 rho = rho 3300 := by
      unfold dtkAccX84
      linear_combination r3806
    have ha2 : rho 3297 * dtkAccY84 rho = rho 3301 := by
      unfold dtkAccY84
      linear_combination r3807
    have ha3 : 3021 * rho 3300 * rho 3301 = rho 3302 := by
      linear_combination r3808
    have ha4 : rho 3303 * (1 + rho 3302) = rho 3300 + rho 3301 := by
      linear_combination r3809
    have ha5 : rho 3304 * (1 - rho 3302) = rho 3299 - rho 3300 - rho 3301 := by
      linear_combination r3810
    have haddx :
        rho 3303 * (1 + 3021 * (rho 3298 * dtkAccX84 rho) * (rho 3297 * dtkAccY84 rho)) =
          rho 3298 * dtkAccX84 rho + rho 3297 * dtkAccY84 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3304 * (1 - 3021 * (rho 3298 * dtkAccX84 rho) * (rho 3297 * dtkAccY84 rho)) =
          (-1) * (rho 3298 * dtkAccX84 rho) - rho 3297 * dtkAccY84 rho +
            (dtkAccY84 rho - dtkAccX84 rho * (-1)) * (rho 3297 + rho 3298) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3304 * (1 - rho 3302) = rho 3299 - rho 3300 - rho 3301 := ha5
        _ = (-1) * rho 3300 - rho 3301 + (dtkAccY84 rho - dtkAccX84 rho * (-1)) * (rho 3297 + rho 3298) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX85 rho = dtkAccX84 rho - Bool.toZMod bit * (dtkAccX84 rho - rho 3303) := by
      have hd : rho 3305 = Bool.toZMod bit * (rho 3303 - dtkAccX84 rho) := by
        rw [← hbit]
        unfold dtkAccX84
        linear_combination -r3811
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY85 rho = dtkAccY84 rho - Bool.toZMod bit * (dtkAccY84 rho - rho 3304) := by
      have hd : rho 3306 = Bool.toZMod bit * (rho 3304 - dtkAccY84 rho) := by
        rw [← hbit]
        unfold dtkAccY84
        linear_combination -r3812
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3297 * rho 3298 = rho 3307 := by linear_combination r3813
    have hd1 : rho 3297 * rho 3297 = rho 3308 := by linear_combination r3814
    have hd2 : rho 3298 * rho 3298 = rho 3309 := by linear_combination r3815
    have hd3 : rho 3310 * (rho 3298 * rho 3298 + rho 3297 * rho 3297 * (-1)) = 2 * (rho 3297 * rho 3298) := by
      rw [hd0, hd1, hd2]
      linear_combination r3816
    have hd4 : rho 3311 * (2 - (rho 3298 * rho 3298 + rho 3297 * rho 3297 * (-1))) = rho 3298 * rho 3298 - rho 3297 * rho 3297 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3817
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX84 rho : F), (dtkAccY84 rho : F)⟩
      ⟨(rho 3297 : F), (rho 3298 : F)⟩
      ⟨(rho 3303 : F), (rho 3304 : F)⟩
      ⟨(dtkAccX85 rho : F), (dtkAccY85 rho : F)⟩
      ⟨(rho 3310 : F), (rho 3311 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung84

theorem dtk_rows85 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3818 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3819 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3820 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3821 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3822 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3823 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3824 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3825 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3826 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3827 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3828 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3829 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3830 rho := by
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
  rcases p47 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3818, r3819, r3820, r3821, r3822, r3823, r3824, r3825, r3826, r3827, r3828, r3829, r3830, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3818, r3819, r3820, r3821, r3822, r3823, r3824, r3825, r3826, r3827, r3828, r3829, r3830⟩

theorem dtk_rung85 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1068 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX85 rho : F), (dtkAccY85 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3310 : F), (rho 3311 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX85 rho : F), (dtkAccY85 rho : F)⟩
        ⟨(rho 3310 : F), (rho 3311 : F)⟩
        ⟨(dtkAccX86 rho : F), (dtkAccY86 rho : F)⟩
        ⟨(rho 3323 : F), (rho 3324 : F)⟩ := by
  obtain ⟨r3818, r3819, r3820, r3821, r3822, r3823, r3824, r3825, r3826, r3827, r3828, r3829, r3830⟩ := dtk_rows85 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3818 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc511 at r3818
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3818
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3819 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc512 at r3819
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3819
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3820 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc513 at r3820
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3820
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3821 at r3821
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3822 at r3822
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3823 at r3823
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3824 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc514 at r3824
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3824
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3825 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc515 at r3825
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3825
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3826 at r3826
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3827 at r3827
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3828 at r3828
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3829 at r3829
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3830 at r3830
  have hrung85 (bit : Bool) (hbit : rho 1068 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX85 rho : F), (dtkAccY85 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3310 : F), (rho 3311 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX85 rho : F), (dtkAccY85 rho : F)⟩
        ⟨(rho 3310 : F), (rho 3311 : F)⟩
        ⟨(dtkAccX86 rho : F), (dtkAccY86 rho : F)⟩
        ⟨(rho 3323 : F), (rho 3324 : F)⟩ := by
    have hnextx : dtkAccX86 rho = dtkAccX85 rho + rho 3318 := by
      unfold dtkAccX86 dtkAccX85
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 84]
      ring
    have hnexty : dtkAccY86 rho = dtkAccY85 rho + rho 3319 := by
      unfold dtkAccY86 dtkAccY85
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 85]
      ring
    have ha0 : (rho 3310 + rho 3311) * (dtkAccX85 rho + dtkAccY85 rho) = rho 3312 := by
      unfold dtkAccX85 dtkAccY85
      linear_combination r3818
    have ha1 : rho 3311 * dtkAccX85 rho = rho 3313 := by
      unfold dtkAccX85
      linear_combination r3819
    have ha2 : rho 3310 * dtkAccY85 rho = rho 3314 := by
      unfold dtkAccY85
      linear_combination r3820
    have ha3 : 3021 * rho 3313 * rho 3314 = rho 3315 := by
      linear_combination r3821
    have ha4 : rho 3316 * (1 + rho 3315) = rho 3313 + rho 3314 := by
      linear_combination r3822
    have ha5 : rho 3317 * (1 - rho 3315) = rho 3312 - rho 3313 - rho 3314 := by
      linear_combination r3823
    have haddx :
        rho 3316 * (1 + 3021 * (rho 3311 * dtkAccX85 rho) * (rho 3310 * dtkAccY85 rho)) =
          rho 3311 * dtkAccX85 rho + rho 3310 * dtkAccY85 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3317 * (1 - 3021 * (rho 3311 * dtkAccX85 rho) * (rho 3310 * dtkAccY85 rho)) =
          (-1) * (rho 3311 * dtkAccX85 rho) - rho 3310 * dtkAccY85 rho +
            (dtkAccY85 rho - dtkAccX85 rho * (-1)) * (rho 3310 + rho 3311) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3317 * (1 - rho 3315) = rho 3312 - rho 3313 - rho 3314 := ha5
        _ = (-1) * rho 3313 - rho 3314 + (dtkAccY85 rho - dtkAccX85 rho * (-1)) * (rho 3310 + rho 3311) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX86 rho = dtkAccX85 rho - Bool.toZMod bit * (dtkAccX85 rho - rho 3316) := by
      have hd : rho 3318 = Bool.toZMod bit * (rho 3316 - dtkAccX85 rho) := by
        rw [← hbit]
        unfold dtkAccX85
        linear_combination -r3824
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY86 rho = dtkAccY85 rho - Bool.toZMod bit * (dtkAccY85 rho - rho 3317) := by
      have hd : rho 3319 = Bool.toZMod bit * (rho 3317 - dtkAccY85 rho) := by
        rw [← hbit]
        unfold dtkAccY85
        linear_combination -r3825
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3310 * rho 3311 = rho 3320 := by linear_combination r3826
    have hd1 : rho 3310 * rho 3310 = rho 3321 := by linear_combination r3827
    have hd2 : rho 3311 * rho 3311 = rho 3322 := by linear_combination r3828
    have hd3 : rho 3323 * (rho 3311 * rho 3311 + rho 3310 * rho 3310 * (-1)) = 2 * (rho 3310 * rho 3311) := by
      rw [hd0, hd1, hd2]
      linear_combination r3829
    have hd4 : rho 3324 * (2 - (rho 3311 * rho 3311 + rho 3310 * rho 3310 * (-1))) = rho 3311 * rho 3311 - rho 3310 * rho 3310 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3830
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX85 rho : F), (dtkAccY85 rho : F)⟩
      ⟨(rho 3310 : F), (rho 3311 : F)⟩
      ⟨(rho 3316 : F), (rho 3317 : F)⟩
      ⟨(dtkAccX86 rho : F), (dtkAccY86 rho : F)⟩
      ⟨(rho 3323 : F), (rho 3324 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung85

theorem dtk_rows86 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3831 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3832 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3833 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3834 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3835 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3836 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3837 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3838 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3839 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3840 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3841 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3842 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3843 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p47, p48, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart47 at p47
  rcases p47 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3831, r3832, r3833, r3834, r3835, r3836, r3837, r3838, r3839⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart48 at p48
  rcases p48 with ⟨r3840, r3841, r3842, r3843, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3831, r3832, r3833, r3834, r3835, r3836, r3837, r3838, r3839, r3840, r3841, r3842, r3843⟩

theorem dtk_rung86 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1069 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX86 rho : F), (dtkAccY86 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3323 : F), (rho 3324 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX86 rho : F), (dtkAccY86 rho : F)⟩
        ⟨(rho 3323 : F), (rho 3324 : F)⟩
        ⟨(dtkAccX87 rho : F), (dtkAccY87 rho : F)⟩
        ⟨(rho 3336 : F), (rho 3337 : F)⟩ := by
  obtain ⟨r3831, r3832, r3833, r3834, r3835, r3836, r3837, r3838, r3839, r3840, r3841, r3842, r3843⟩ := dtk_rows86 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3831 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc516 at r3831
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3831
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3832 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc517 at r3832
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3832
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3833 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc518 at r3833
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3833
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3834 at r3834
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3835 at r3835
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3836 at r3836
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3837 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc519 at r3837
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3837
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3838 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc520 at r3838
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3838
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3839 at r3839
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3840 at r3840
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3841 at r3841
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3842 at r3842
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3843 at r3843
  have hrung86 (bit : Bool) (hbit : rho 1069 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX86 rho : F), (dtkAccY86 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3323 : F), (rho 3324 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX86 rho : F), (dtkAccY86 rho : F)⟩
        ⟨(rho 3323 : F), (rho 3324 : F)⟩
        ⟨(dtkAccX87 rho : F), (dtkAccY87 rho : F)⟩
        ⟨(rho 3336 : F), (rho 3337 : F)⟩ := by
    have hnextx : dtkAccX87 rho = dtkAccX86 rho + rho 3331 := by
      unfold dtkAccX87 dtkAccX86
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 85]
      ring
    have hnexty : dtkAccY87 rho = dtkAccY86 rho + rho 3332 := by
      unfold dtkAccY87 dtkAccY86
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 86]
      ring
    have ha0 : (rho 3323 + rho 3324) * (dtkAccX86 rho + dtkAccY86 rho) = rho 3325 := by
      unfold dtkAccX86 dtkAccY86
      linear_combination r3831
    have ha1 : rho 3324 * dtkAccX86 rho = rho 3326 := by
      unfold dtkAccX86
      linear_combination r3832
    have ha2 : rho 3323 * dtkAccY86 rho = rho 3327 := by
      unfold dtkAccY86
      linear_combination r3833
    have ha3 : 3021 * rho 3326 * rho 3327 = rho 3328 := by
      linear_combination r3834
    have ha4 : rho 3329 * (1 + rho 3328) = rho 3326 + rho 3327 := by
      linear_combination r3835
    have ha5 : rho 3330 * (1 - rho 3328) = rho 3325 - rho 3326 - rho 3327 := by
      linear_combination r3836
    have haddx :
        rho 3329 * (1 + 3021 * (rho 3324 * dtkAccX86 rho) * (rho 3323 * dtkAccY86 rho)) =
          rho 3324 * dtkAccX86 rho + rho 3323 * dtkAccY86 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3330 * (1 - 3021 * (rho 3324 * dtkAccX86 rho) * (rho 3323 * dtkAccY86 rho)) =
          (-1) * (rho 3324 * dtkAccX86 rho) - rho 3323 * dtkAccY86 rho +
            (dtkAccY86 rho - dtkAccX86 rho * (-1)) * (rho 3323 + rho 3324) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3330 * (1 - rho 3328) = rho 3325 - rho 3326 - rho 3327 := ha5
        _ = (-1) * rho 3326 - rho 3327 + (dtkAccY86 rho - dtkAccX86 rho * (-1)) * (rho 3323 + rho 3324) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX87 rho = dtkAccX86 rho - Bool.toZMod bit * (dtkAccX86 rho - rho 3329) := by
      have hd : rho 3331 = Bool.toZMod bit * (rho 3329 - dtkAccX86 rho) := by
        rw [← hbit]
        unfold dtkAccX86
        linear_combination -r3837
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY87 rho = dtkAccY86 rho - Bool.toZMod bit * (dtkAccY86 rho - rho 3330) := by
      have hd : rho 3332 = Bool.toZMod bit * (rho 3330 - dtkAccY86 rho) := by
        rw [← hbit]
        unfold dtkAccY86
        linear_combination -r3838
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3323 * rho 3324 = rho 3333 := by linear_combination r3839
    have hd1 : rho 3323 * rho 3323 = rho 3334 := by linear_combination r3840
    have hd2 : rho 3324 * rho 3324 = rho 3335 := by linear_combination r3841
    have hd3 : rho 3336 * (rho 3324 * rho 3324 + rho 3323 * rho 3323 * (-1)) = 2 * (rho 3323 * rho 3324) := by
      rw [hd0, hd1, hd2]
      linear_combination r3842
    have hd4 : rho 3337 * (2 - (rho 3324 * rho 3324 + rho 3323 * rho 3323 * (-1))) = rho 3324 * rho 3324 - rho 3323 * rho 3323 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3843
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX86 rho : F), (dtkAccY86 rho : F)⟩
      ⟨(rho 3323 : F), (rho 3324 : F)⟩
      ⟨(rho 3329 : F), (rho 3330 : F)⟩
      ⟨(dtkAccX87 rho : F), (dtkAccY87 rho : F)⟩
      ⟨(rho 3336 : F), (rho 3337 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung86

theorem dtk_rows87 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3844 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3845 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3846 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3847 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3848 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3849 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3850 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3851 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3852 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3853 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3854 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3855 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3856 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p48, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart48 at p48
  rcases p48 with ⟨_, _, _, _, r3844, r3845, r3846, r3847, r3848, r3849, r3850, r3851, r3852, r3853, r3854, r3855, r3856, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3844, r3845, r3846, r3847, r3848, r3849, r3850, r3851, r3852, r3853, r3854, r3855, r3856⟩

theorem dtk_rung87 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1070 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX87 rho : F), (dtkAccY87 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3336 : F), (rho 3337 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX87 rho : F), (dtkAccY87 rho : F)⟩
        ⟨(rho 3336 : F), (rho 3337 : F)⟩
        ⟨(dtkAccX88 rho : F), (dtkAccY88 rho : F)⟩
        ⟨(rho 3349 : F), (rho 3350 : F)⟩ := by
  obtain ⟨r3844, r3845, r3846, r3847, r3848, r3849, r3850, r3851, r3852, r3853, r3854, r3855, r3856⟩ := dtk_rows87 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3844 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc521 at r3844
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3844
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3845 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc522 at r3845
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3845
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3846 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc523 at r3846
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3846
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3847 at r3847
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3848 at r3848
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3849 at r3849
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3850 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc524 at r3850
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3850
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3851 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc525 at r3851
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3851
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3852 at r3852
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3853 at r3853
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3854 at r3854
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3855 at r3855
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3856 at r3856
  have hrung87 (bit : Bool) (hbit : rho 1070 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX87 rho : F), (dtkAccY87 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3336 : F), (rho 3337 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX87 rho : F), (dtkAccY87 rho : F)⟩
        ⟨(rho 3336 : F), (rho 3337 : F)⟩
        ⟨(dtkAccX88 rho : F), (dtkAccY88 rho : F)⟩
        ⟨(rho 3349 : F), (rho 3350 : F)⟩ := by
    have hnextx : dtkAccX88 rho = dtkAccX87 rho + rho 3344 := by
      unfold dtkAccX88 dtkAccX87
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 86]
      ring
    have hnexty : dtkAccY88 rho = dtkAccY87 rho + rho 3345 := by
      unfold dtkAccY88 dtkAccY87
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 87]
      ring
    have ha0 : (rho 3336 + rho 3337) * (dtkAccX87 rho + dtkAccY87 rho) = rho 3338 := by
      unfold dtkAccX87 dtkAccY87
      linear_combination r3844
    have ha1 : rho 3337 * dtkAccX87 rho = rho 3339 := by
      unfold dtkAccX87
      linear_combination r3845
    have ha2 : rho 3336 * dtkAccY87 rho = rho 3340 := by
      unfold dtkAccY87
      linear_combination r3846
    have ha3 : 3021 * rho 3339 * rho 3340 = rho 3341 := by
      linear_combination r3847
    have ha4 : rho 3342 * (1 + rho 3341) = rho 3339 + rho 3340 := by
      linear_combination r3848
    have ha5 : rho 3343 * (1 - rho 3341) = rho 3338 - rho 3339 - rho 3340 := by
      linear_combination r3849
    have haddx :
        rho 3342 * (1 + 3021 * (rho 3337 * dtkAccX87 rho) * (rho 3336 * dtkAccY87 rho)) =
          rho 3337 * dtkAccX87 rho + rho 3336 * dtkAccY87 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3343 * (1 - 3021 * (rho 3337 * dtkAccX87 rho) * (rho 3336 * dtkAccY87 rho)) =
          (-1) * (rho 3337 * dtkAccX87 rho) - rho 3336 * dtkAccY87 rho +
            (dtkAccY87 rho - dtkAccX87 rho * (-1)) * (rho 3336 + rho 3337) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3343 * (1 - rho 3341) = rho 3338 - rho 3339 - rho 3340 := ha5
        _ = (-1) * rho 3339 - rho 3340 + (dtkAccY87 rho - dtkAccX87 rho * (-1)) * (rho 3336 + rho 3337) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX88 rho = dtkAccX87 rho - Bool.toZMod bit * (dtkAccX87 rho - rho 3342) := by
      have hd : rho 3344 = Bool.toZMod bit * (rho 3342 - dtkAccX87 rho) := by
        rw [← hbit]
        unfold dtkAccX87
        linear_combination -r3850
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY88 rho = dtkAccY87 rho - Bool.toZMod bit * (dtkAccY87 rho - rho 3343) := by
      have hd : rho 3345 = Bool.toZMod bit * (rho 3343 - dtkAccY87 rho) := by
        rw [← hbit]
        unfold dtkAccY87
        linear_combination -r3851
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3336 * rho 3337 = rho 3346 := by linear_combination r3852
    have hd1 : rho 3336 * rho 3336 = rho 3347 := by linear_combination r3853
    have hd2 : rho 3337 * rho 3337 = rho 3348 := by linear_combination r3854
    have hd3 : rho 3349 * (rho 3337 * rho 3337 + rho 3336 * rho 3336 * (-1)) = 2 * (rho 3336 * rho 3337) := by
      rw [hd0, hd1, hd2]
      linear_combination r3855
    have hd4 : rho 3350 * (2 - (rho 3337 * rho 3337 + rho 3336 * rho 3336 * (-1))) = rho 3337 * rho 3337 - rho 3336 * rho 3336 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3856
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX87 rho : F), (dtkAccY87 rho : F)⟩
      ⟨(rho 3336 : F), (rho 3337 : F)⟩
      ⟨(rho 3342 : F), (rho 3343 : F)⟩
      ⟨(dtkAccX88 rho : F), (dtkAccY88 rho : F)⟩
      ⟨(rho 3349 : F), (rho 3350 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung87

theorem dtk_rows88 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3857 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3858 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3859 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3860 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3861 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3862 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3863 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3864 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3865 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3866 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3867 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3868 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3869 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p48, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart48 at p48
  rcases p48 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3857, r3858, r3859, r3860, r3861, r3862, r3863, r3864, r3865, r3866, r3867, r3868, r3869, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3857, r3858, r3859, r3860, r3861, r3862, r3863, r3864, r3865, r3866, r3867, r3868, r3869⟩

theorem dtk_rung88 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1071 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX88 rho : F), (dtkAccY88 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3349 : F), (rho 3350 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX88 rho : F), (dtkAccY88 rho : F)⟩
        ⟨(rho 3349 : F), (rho 3350 : F)⟩
        ⟨(dtkAccX89 rho : F), (dtkAccY89 rho : F)⟩
        ⟨(rho 3362 : F), (rho 3363 : F)⟩ := by
  obtain ⟨r3857, r3858, r3859, r3860, r3861, r3862, r3863, r3864, r3865, r3866, r3867, r3868, r3869⟩ := dtk_rows88 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3857 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc526 at r3857
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3857
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3858 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc527 at r3858
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3858
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3859 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc528 at r3859
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3859
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3860 at r3860
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3861 at r3861
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3862 at r3862
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3863 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc529 at r3863
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3863
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3864 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc530 at r3864
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3864
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3865 at r3865
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3866 at r3866
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3867 at r3867
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3868 at r3868
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3869 at r3869
  have hrung88 (bit : Bool) (hbit : rho 1071 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX88 rho : F), (dtkAccY88 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3349 : F), (rho 3350 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX88 rho : F), (dtkAccY88 rho : F)⟩
        ⟨(rho 3349 : F), (rho 3350 : F)⟩
        ⟨(dtkAccX89 rho : F), (dtkAccY89 rho : F)⟩
        ⟨(rho 3362 : F), (rho 3363 : F)⟩ := by
    have hnextx : dtkAccX89 rho = dtkAccX88 rho + rho 3357 := by
      unfold dtkAccX89 dtkAccX88
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 87]
      ring
    have hnexty : dtkAccY89 rho = dtkAccY88 rho + rho 3358 := by
      unfold dtkAccY89 dtkAccY88
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 88]
      ring
    have ha0 : (rho 3349 + rho 3350) * (dtkAccX88 rho + dtkAccY88 rho) = rho 3351 := by
      unfold dtkAccX88 dtkAccY88
      linear_combination r3857
    have ha1 : rho 3350 * dtkAccX88 rho = rho 3352 := by
      unfold dtkAccX88
      linear_combination r3858
    have ha2 : rho 3349 * dtkAccY88 rho = rho 3353 := by
      unfold dtkAccY88
      linear_combination r3859
    have ha3 : 3021 * rho 3352 * rho 3353 = rho 3354 := by
      linear_combination r3860
    have ha4 : rho 3355 * (1 + rho 3354) = rho 3352 + rho 3353 := by
      linear_combination r3861
    have ha5 : rho 3356 * (1 - rho 3354) = rho 3351 - rho 3352 - rho 3353 := by
      linear_combination r3862
    have haddx :
        rho 3355 * (1 + 3021 * (rho 3350 * dtkAccX88 rho) * (rho 3349 * dtkAccY88 rho)) =
          rho 3350 * dtkAccX88 rho + rho 3349 * dtkAccY88 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3356 * (1 - 3021 * (rho 3350 * dtkAccX88 rho) * (rho 3349 * dtkAccY88 rho)) =
          (-1) * (rho 3350 * dtkAccX88 rho) - rho 3349 * dtkAccY88 rho +
            (dtkAccY88 rho - dtkAccX88 rho * (-1)) * (rho 3349 + rho 3350) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3356 * (1 - rho 3354) = rho 3351 - rho 3352 - rho 3353 := ha5
        _ = (-1) * rho 3352 - rho 3353 + (dtkAccY88 rho - dtkAccX88 rho * (-1)) * (rho 3349 + rho 3350) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX89 rho = dtkAccX88 rho - Bool.toZMod bit * (dtkAccX88 rho - rho 3355) := by
      have hd : rho 3357 = Bool.toZMod bit * (rho 3355 - dtkAccX88 rho) := by
        rw [← hbit]
        unfold dtkAccX88
        linear_combination -r3863
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY89 rho = dtkAccY88 rho - Bool.toZMod bit * (dtkAccY88 rho - rho 3356) := by
      have hd : rho 3358 = Bool.toZMod bit * (rho 3356 - dtkAccY88 rho) := by
        rw [← hbit]
        unfold dtkAccY88
        linear_combination -r3864
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3349 * rho 3350 = rho 3359 := by linear_combination r3865
    have hd1 : rho 3349 * rho 3349 = rho 3360 := by linear_combination r3866
    have hd2 : rho 3350 * rho 3350 = rho 3361 := by linear_combination r3867
    have hd3 : rho 3362 * (rho 3350 * rho 3350 + rho 3349 * rho 3349 * (-1)) = 2 * (rho 3349 * rho 3350) := by
      rw [hd0, hd1, hd2]
      linear_combination r3868
    have hd4 : rho 3363 * (2 - (rho 3350 * rho 3350 + rho 3349 * rho 3349 * (-1))) = rho 3350 * rho 3350 - rho 3349 * rho 3349 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3869
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX88 rho : F), (dtkAccY88 rho : F)⟩
      ⟨(rho 3349 : F), (rho 3350 : F)⟩
      ⟨(rho 3355 : F), (rho 3356 : F)⟩
      ⟨(dtkAccX89 rho : F), (dtkAccY89 rho : F)⟩
      ⟨(rho 3362 : F), (rho 3363 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung88

theorem dtk_rows89 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3870 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3871 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3872 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3873 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3874 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3875 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3876 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3877 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3878 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3879 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3880 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3881 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3882 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p48, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart48 at p48
  rcases p48 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3870, r3871, r3872, r3873, r3874, r3875, r3876, r3877, r3878, r3879, r3880, r3881, r3882, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3870, r3871, r3872, r3873, r3874, r3875, r3876, r3877, r3878, r3879, r3880, r3881, r3882⟩

theorem dtk_rung89 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1072 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX89 rho : F), (dtkAccY89 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3362 : F), (rho 3363 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX89 rho : F), (dtkAccY89 rho : F)⟩
        ⟨(rho 3362 : F), (rho 3363 : F)⟩
        ⟨(dtkAccX90 rho : F), (dtkAccY90 rho : F)⟩
        ⟨(rho 3375 : F), (rho 3376 : F)⟩ := by
  obtain ⟨r3870, r3871, r3872, r3873, r3874, r3875, r3876, r3877, r3878, r3879, r3880, r3881, r3882⟩ := dtk_rows89 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3870 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc531 at r3870
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3870
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3871 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc532 at r3871
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3871
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3872 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc533 at r3872
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3872
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3873 at r3873
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3874 at r3874
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3875 at r3875
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3876 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc534 at r3876
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3876
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3877 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc535 at r3877
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3877
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3878 at r3878
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3879 at r3879
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3880 at r3880
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3881 at r3881
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3882 at r3882
  have hrung89 (bit : Bool) (hbit : rho 1072 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX89 rho : F), (dtkAccY89 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3362 : F), (rho 3363 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX89 rho : F), (dtkAccY89 rho : F)⟩
        ⟨(rho 3362 : F), (rho 3363 : F)⟩
        ⟨(dtkAccX90 rho : F), (dtkAccY90 rho : F)⟩
        ⟨(rho 3375 : F), (rho 3376 : F)⟩ := by
    have hnextx : dtkAccX90 rho = dtkAccX89 rho + rho 3370 := by
      unfold dtkAccX90 dtkAccX89
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 88]
      ring
    have hnexty : dtkAccY90 rho = dtkAccY89 rho + rho 3371 := by
      unfold dtkAccY90 dtkAccY89
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 89]
      ring
    have ha0 : (rho 3362 + rho 3363) * (dtkAccX89 rho + dtkAccY89 rho) = rho 3364 := by
      unfold dtkAccX89 dtkAccY89
      linear_combination r3870
    have ha1 : rho 3363 * dtkAccX89 rho = rho 3365 := by
      unfold dtkAccX89
      linear_combination r3871
    have ha2 : rho 3362 * dtkAccY89 rho = rho 3366 := by
      unfold dtkAccY89
      linear_combination r3872
    have ha3 : 3021 * rho 3365 * rho 3366 = rho 3367 := by
      linear_combination r3873
    have ha4 : rho 3368 * (1 + rho 3367) = rho 3365 + rho 3366 := by
      linear_combination r3874
    have ha5 : rho 3369 * (1 - rho 3367) = rho 3364 - rho 3365 - rho 3366 := by
      linear_combination r3875
    have haddx :
        rho 3368 * (1 + 3021 * (rho 3363 * dtkAccX89 rho) * (rho 3362 * dtkAccY89 rho)) =
          rho 3363 * dtkAccX89 rho + rho 3362 * dtkAccY89 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3369 * (1 - 3021 * (rho 3363 * dtkAccX89 rho) * (rho 3362 * dtkAccY89 rho)) =
          (-1) * (rho 3363 * dtkAccX89 rho) - rho 3362 * dtkAccY89 rho +
            (dtkAccY89 rho - dtkAccX89 rho * (-1)) * (rho 3362 + rho 3363) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3369 * (1 - rho 3367) = rho 3364 - rho 3365 - rho 3366 := ha5
        _ = (-1) * rho 3365 - rho 3366 + (dtkAccY89 rho - dtkAccX89 rho * (-1)) * (rho 3362 + rho 3363) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX90 rho = dtkAccX89 rho - Bool.toZMod bit * (dtkAccX89 rho - rho 3368) := by
      have hd : rho 3370 = Bool.toZMod bit * (rho 3368 - dtkAccX89 rho) := by
        rw [← hbit]
        unfold dtkAccX89
        linear_combination -r3876
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY90 rho = dtkAccY89 rho - Bool.toZMod bit * (dtkAccY89 rho - rho 3369) := by
      have hd : rho 3371 = Bool.toZMod bit * (rho 3369 - dtkAccY89 rho) := by
        rw [← hbit]
        unfold dtkAccY89
        linear_combination -r3877
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3362 * rho 3363 = rho 3372 := by linear_combination r3878
    have hd1 : rho 3362 * rho 3362 = rho 3373 := by linear_combination r3879
    have hd2 : rho 3363 * rho 3363 = rho 3374 := by linear_combination r3880
    have hd3 : rho 3375 * (rho 3363 * rho 3363 + rho 3362 * rho 3362 * (-1)) = 2 * (rho 3362 * rho 3363) := by
      rw [hd0, hd1, hd2]
      linear_combination r3881
    have hd4 : rho 3376 * (2 - (rho 3363 * rho 3363 + rho 3362 * rho 3362 * (-1))) = rho 3363 * rho 3363 - rho 3362 * rho 3362 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3882
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX89 rho : F), (dtkAccY89 rho : F)⟩
      ⟨(rho 3362 : F), (rho 3363 : F)⟩
      ⟨(rho 3368 : F), (rho 3369 : F)⟩
      ⟨(dtkAccX90 rho : F), (dtkAccY90 rho : F)⟩
      ⟨(rho 3375 : F), (rho 3376 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung89

theorem dtk_hstep_c14 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (983 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 84 ≤ i → i < 90 →
      EdwardsBridge.onCurve (dtkLadderAccState rho i) →
      EdwardsBridge.onCurve (dtkLadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (dtkLadderAccState rho i) (dtkLadderCurState rho i)
        (dtkLadderAccState rho (i + 1)) (dtkLadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact dtk_rung84 rho h bits[84]! (hbitAt 84 (by omega)) hacc hcur
  · exact dtk_rung85 rho h bits[85]! (hbitAt 85 (by omega)) hacc hcur
  · exact dtk_rung86 rho h bits[86]! (hbitAt 86 (by omega)) hacc hcur
  · exact dtk_rung87 rho h bits[87]! (hbitAt 87 (by omega)) hacc hcur
  · exact dtk_rung88 rho h bits[88]! (hbitAt 88 (by omega)) hacc hcur
  · exact dtk_rung89 rho h bits[89]! (hbitAt 89 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport
