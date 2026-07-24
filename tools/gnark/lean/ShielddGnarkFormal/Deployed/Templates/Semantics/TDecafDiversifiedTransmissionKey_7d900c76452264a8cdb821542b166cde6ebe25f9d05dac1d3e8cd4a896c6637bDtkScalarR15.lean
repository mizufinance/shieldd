import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDtkScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs

theorem dtk_rows90 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3883 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3884 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3885 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3886 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3887 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3888 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3889 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3890 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3891 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3892 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3893 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3894 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3895 rho := by
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
  rcases p48 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3883, r3884, r3885, r3886, r3887, r3888, r3889, r3890, r3891, r3892, r3893, r3894, r3895, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3883, r3884, r3885, r3886, r3887, r3888, r3889, r3890, r3891, r3892, r3893, r3894, r3895⟩

theorem dtk_rung90 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1073 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX90 rho : F), (dtkAccY90 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3375 : F), (rho 3376 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX90 rho : F), (dtkAccY90 rho : F)⟩
        ⟨(rho 3375 : F), (rho 3376 : F)⟩
        ⟨(dtkAccX91 rho : F), (dtkAccY91 rho : F)⟩
        ⟨(rho 3388 : F), (rho 3389 : F)⟩ := by
  obtain ⟨r3883, r3884, r3885, r3886, r3887, r3888, r3889, r3890, r3891, r3892, r3893, r3894, r3895⟩ := dtk_rows90 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3883 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc536 at r3883
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3883
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3884 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc537 at r3884
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3884
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3885 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc538 at r3885
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3885
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3886 at r3886
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3887 at r3887
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3888 at r3888
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3889 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc539 at r3889
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3889
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3890 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc540 at r3890
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3890
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3891 at r3891
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3892 at r3892
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3893 at r3893
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3894 at r3894
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3895 at r3895
  have hrung90 (bit : Bool) (hbit : rho 1073 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX90 rho : F), (dtkAccY90 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3375 : F), (rho 3376 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX90 rho : F), (dtkAccY90 rho : F)⟩
        ⟨(rho 3375 : F), (rho 3376 : F)⟩
        ⟨(dtkAccX91 rho : F), (dtkAccY91 rho : F)⟩
        ⟨(rho 3388 : F), (rho 3389 : F)⟩ := by
    have hnextx : dtkAccX91 rho = dtkAccX90 rho + rho 3383 := by
      unfold dtkAccX91 dtkAccX90
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 89]
      ring
    have hnexty : dtkAccY91 rho = dtkAccY90 rho + rho 3384 := by
      unfold dtkAccY91 dtkAccY90
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 90]
      ring
    have ha0 : (rho 3375 + rho 3376) * (dtkAccX90 rho + dtkAccY90 rho) = rho 3377 := by
      unfold dtkAccX90 dtkAccY90
      linear_combination r3883
    have ha1 : rho 3376 * dtkAccX90 rho = rho 3378 := by
      unfold dtkAccX90
      linear_combination r3884
    have ha2 : rho 3375 * dtkAccY90 rho = rho 3379 := by
      unfold dtkAccY90
      linear_combination r3885
    have ha3 : 3021 * rho 3378 * rho 3379 = rho 3380 := by
      linear_combination r3886
    have ha4 : rho 3381 * (1 + rho 3380) = rho 3378 + rho 3379 := by
      linear_combination r3887
    have ha5 : rho 3382 * (1 - rho 3380) = rho 3377 - rho 3378 - rho 3379 := by
      linear_combination r3888
    have haddx :
        rho 3381 * (1 + 3021 * (rho 3376 * dtkAccX90 rho) * (rho 3375 * dtkAccY90 rho)) =
          rho 3376 * dtkAccX90 rho + rho 3375 * dtkAccY90 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3382 * (1 - 3021 * (rho 3376 * dtkAccX90 rho) * (rho 3375 * dtkAccY90 rho)) =
          (-1) * (rho 3376 * dtkAccX90 rho) - rho 3375 * dtkAccY90 rho +
            (dtkAccY90 rho - dtkAccX90 rho * (-1)) * (rho 3375 + rho 3376) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3382 * (1 - rho 3380) = rho 3377 - rho 3378 - rho 3379 := ha5
        _ = (-1) * rho 3378 - rho 3379 + (dtkAccY90 rho - dtkAccX90 rho * (-1)) * (rho 3375 + rho 3376) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX91 rho = dtkAccX90 rho - Bool.toZMod bit * (dtkAccX90 rho - rho 3381) := by
      have hd : rho 3383 = Bool.toZMod bit * (rho 3381 - dtkAccX90 rho) := by
        rw [← hbit]
        unfold dtkAccX90
        linear_combination -r3889
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY91 rho = dtkAccY90 rho - Bool.toZMod bit * (dtkAccY90 rho - rho 3382) := by
      have hd : rho 3384 = Bool.toZMod bit * (rho 3382 - dtkAccY90 rho) := by
        rw [← hbit]
        unfold dtkAccY90
        linear_combination -r3890
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3375 * rho 3376 = rho 3385 := by linear_combination r3891
    have hd1 : rho 3375 * rho 3375 = rho 3386 := by linear_combination r3892
    have hd2 : rho 3376 * rho 3376 = rho 3387 := by linear_combination r3893
    have hd3 : rho 3388 * (rho 3376 * rho 3376 + rho 3375 * rho 3375 * (-1)) = 2 * (rho 3375 * rho 3376) := by
      rw [hd0, hd1, hd2]
      linear_combination r3894
    have hd4 : rho 3389 * (2 - (rho 3376 * rho 3376 + rho 3375 * rho 3375 * (-1))) = rho 3376 * rho 3376 - rho 3375 * rho 3375 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3895
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX90 rho : F), (dtkAccY90 rho : F)⟩
      ⟨(rho 3375 : F), (rho 3376 : F)⟩
      ⟨(rho 3381 : F), (rho 3382 : F)⟩
      ⟨(dtkAccX91 rho : F), (dtkAccY91 rho : F)⟩
      ⟨(rho 3388 : F), (rho 3389 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung90

theorem dtk_rows91 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3896 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3897 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3898 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3899 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3900 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3901 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3902 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3903 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3904 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3905 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3906 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3907 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3908 rho := by
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
  rcases p48 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3896, r3897, r3898, r3899, r3900, r3901, r3902, r3903, r3904, r3905, r3906, r3907, r3908, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3896, r3897, r3898, r3899, r3900, r3901, r3902, r3903, r3904, r3905, r3906, r3907, r3908⟩

theorem dtk_rung91 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1074 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX91 rho : F), (dtkAccY91 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3388 : F), (rho 3389 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX91 rho : F), (dtkAccY91 rho : F)⟩
        ⟨(rho 3388 : F), (rho 3389 : F)⟩
        ⟨(dtkAccX92 rho : F), (dtkAccY92 rho : F)⟩
        ⟨(rho 3401 : F), (rho 3402 : F)⟩ := by
  obtain ⟨r3896, r3897, r3898, r3899, r3900, r3901, r3902, r3903, r3904, r3905, r3906, r3907, r3908⟩ := dtk_rows91 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3896 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc541 at r3896
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3896
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3897 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc542 at r3897
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3897
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3898 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc543 at r3898
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3898
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3899 at r3899
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3900 at r3900
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3901 at r3901
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3902 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc544 at r3902
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3902
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3903 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc545 at r3903
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3903
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3904 at r3904
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3905 at r3905
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3906 at r3906
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3907 at r3907
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3908 at r3908
  have hrung91 (bit : Bool) (hbit : rho 1074 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX91 rho : F), (dtkAccY91 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3388 : F), (rho 3389 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX91 rho : F), (dtkAccY91 rho : F)⟩
        ⟨(rho 3388 : F), (rho 3389 : F)⟩
        ⟨(dtkAccX92 rho : F), (dtkAccY92 rho : F)⟩
        ⟨(rho 3401 : F), (rho 3402 : F)⟩ := by
    have hnextx : dtkAccX92 rho = dtkAccX91 rho + rho 3396 := by
      unfold dtkAccX92 dtkAccX91
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 90]
      ring
    have hnexty : dtkAccY92 rho = dtkAccY91 rho + rho 3397 := by
      unfold dtkAccY92 dtkAccY91
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 91]
      ring
    have ha0 : (rho 3388 + rho 3389) * (dtkAccX91 rho + dtkAccY91 rho) = rho 3390 := by
      unfold dtkAccX91 dtkAccY91
      linear_combination r3896
    have ha1 : rho 3389 * dtkAccX91 rho = rho 3391 := by
      unfold dtkAccX91
      linear_combination r3897
    have ha2 : rho 3388 * dtkAccY91 rho = rho 3392 := by
      unfold dtkAccY91
      linear_combination r3898
    have ha3 : 3021 * rho 3391 * rho 3392 = rho 3393 := by
      linear_combination r3899
    have ha4 : rho 3394 * (1 + rho 3393) = rho 3391 + rho 3392 := by
      linear_combination r3900
    have ha5 : rho 3395 * (1 - rho 3393) = rho 3390 - rho 3391 - rho 3392 := by
      linear_combination r3901
    have haddx :
        rho 3394 * (1 + 3021 * (rho 3389 * dtkAccX91 rho) * (rho 3388 * dtkAccY91 rho)) =
          rho 3389 * dtkAccX91 rho + rho 3388 * dtkAccY91 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3395 * (1 - 3021 * (rho 3389 * dtkAccX91 rho) * (rho 3388 * dtkAccY91 rho)) =
          (-1) * (rho 3389 * dtkAccX91 rho) - rho 3388 * dtkAccY91 rho +
            (dtkAccY91 rho - dtkAccX91 rho * (-1)) * (rho 3388 + rho 3389) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3395 * (1 - rho 3393) = rho 3390 - rho 3391 - rho 3392 := ha5
        _ = (-1) * rho 3391 - rho 3392 + (dtkAccY91 rho - dtkAccX91 rho * (-1)) * (rho 3388 + rho 3389) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX92 rho = dtkAccX91 rho - Bool.toZMod bit * (dtkAccX91 rho - rho 3394) := by
      have hd : rho 3396 = Bool.toZMod bit * (rho 3394 - dtkAccX91 rho) := by
        rw [← hbit]
        unfold dtkAccX91
        linear_combination -r3902
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY92 rho = dtkAccY91 rho - Bool.toZMod bit * (dtkAccY91 rho - rho 3395) := by
      have hd : rho 3397 = Bool.toZMod bit * (rho 3395 - dtkAccY91 rho) := by
        rw [← hbit]
        unfold dtkAccY91
        linear_combination -r3903
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3388 * rho 3389 = rho 3398 := by linear_combination r3904
    have hd1 : rho 3388 * rho 3388 = rho 3399 := by linear_combination r3905
    have hd2 : rho 3389 * rho 3389 = rho 3400 := by linear_combination r3906
    have hd3 : rho 3401 * (rho 3389 * rho 3389 + rho 3388 * rho 3388 * (-1)) = 2 * (rho 3388 * rho 3389) := by
      rw [hd0, hd1, hd2]
      linear_combination r3907
    have hd4 : rho 3402 * (2 - (rho 3389 * rho 3389 + rho 3388 * rho 3388 * (-1))) = rho 3389 * rho 3389 - rho 3388 * rho 3388 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3908
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX91 rho : F), (dtkAccY91 rho : F)⟩
      ⟨(rho 3388 : F), (rho 3389 : F)⟩
      ⟨(rho 3394 : F), (rho 3395 : F)⟩
      ⟨(dtkAccX92 rho : F), (dtkAccY92 rho : F)⟩
      ⟨(rho 3401 : F), (rho 3402 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung91

theorem dtk_rows92 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3909 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3910 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3911 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3912 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3913 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3914 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3915 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3916 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3917 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3918 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3919 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3920 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3921 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p48, p49,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart48 at p48
  rcases p48 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3909, r3910, r3911, r3912, r3913, r3914, r3915, r3916, r3917, r3918, r3919⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart49 at p49
  rcases p49 with ⟨r3920, r3921, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3909, r3910, r3911, r3912, r3913, r3914, r3915, r3916, r3917, r3918, r3919, r3920, r3921⟩

theorem dtk_rung92 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1075 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX92 rho : F), (dtkAccY92 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3401 : F), (rho 3402 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX92 rho : F), (dtkAccY92 rho : F)⟩
        ⟨(rho 3401 : F), (rho 3402 : F)⟩
        ⟨(dtkAccX93 rho : F), (dtkAccY93 rho : F)⟩
        ⟨(rho 3414 : F), (rho 3415 : F)⟩ := by
  obtain ⟨r3909, r3910, r3911, r3912, r3913, r3914, r3915, r3916, r3917, r3918, r3919, r3920, r3921⟩ := dtk_rows92 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3909 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc546 at r3909
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3909
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3910 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc547 at r3910
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3910
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3911 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc548 at r3911
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3911
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3912 at r3912
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3913 at r3913
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3914 at r3914
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3915 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc549 at r3915
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3915
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3916 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc550 at r3916
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3916
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3917 at r3917
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3918 at r3918
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3919 at r3919
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3920 at r3920
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3921 at r3921
  have hrung92 (bit : Bool) (hbit : rho 1075 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX92 rho : F), (dtkAccY92 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3401 : F), (rho 3402 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX92 rho : F), (dtkAccY92 rho : F)⟩
        ⟨(rho 3401 : F), (rho 3402 : F)⟩
        ⟨(dtkAccX93 rho : F), (dtkAccY93 rho : F)⟩
        ⟨(rho 3414 : F), (rho 3415 : F)⟩ := by
    have hnextx : dtkAccX93 rho = dtkAccX92 rho + rho 3409 := by
      unfold dtkAccX93 dtkAccX92
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 91]
      ring
    have hnexty : dtkAccY93 rho = dtkAccY92 rho + rho 3410 := by
      unfold dtkAccY93 dtkAccY92
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 92]
      ring
    have ha0 : (rho 3401 + rho 3402) * (dtkAccX92 rho + dtkAccY92 rho) = rho 3403 := by
      unfold dtkAccX92 dtkAccY92
      linear_combination r3909
    have ha1 : rho 3402 * dtkAccX92 rho = rho 3404 := by
      unfold dtkAccX92
      linear_combination r3910
    have ha2 : rho 3401 * dtkAccY92 rho = rho 3405 := by
      unfold dtkAccY92
      linear_combination r3911
    have ha3 : 3021 * rho 3404 * rho 3405 = rho 3406 := by
      linear_combination r3912
    have ha4 : rho 3407 * (1 + rho 3406) = rho 3404 + rho 3405 := by
      linear_combination r3913
    have ha5 : rho 3408 * (1 - rho 3406) = rho 3403 - rho 3404 - rho 3405 := by
      linear_combination r3914
    have haddx :
        rho 3407 * (1 + 3021 * (rho 3402 * dtkAccX92 rho) * (rho 3401 * dtkAccY92 rho)) =
          rho 3402 * dtkAccX92 rho + rho 3401 * dtkAccY92 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3408 * (1 - 3021 * (rho 3402 * dtkAccX92 rho) * (rho 3401 * dtkAccY92 rho)) =
          (-1) * (rho 3402 * dtkAccX92 rho) - rho 3401 * dtkAccY92 rho +
            (dtkAccY92 rho - dtkAccX92 rho * (-1)) * (rho 3401 + rho 3402) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3408 * (1 - rho 3406) = rho 3403 - rho 3404 - rho 3405 := ha5
        _ = (-1) * rho 3404 - rho 3405 + (dtkAccY92 rho - dtkAccX92 rho * (-1)) * (rho 3401 + rho 3402) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX93 rho = dtkAccX92 rho - Bool.toZMod bit * (dtkAccX92 rho - rho 3407) := by
      have hd : rho 3409 = Bool.toZMod bit * (rho 3407 - dtkAccX92 rho) := by
        rw [← hbit]
        unfold dtkAccX92
        linear_combination -r3915
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY93 rho = dtkAccY92 rho - Bool.toZMod bit * (dtkAccY92 rho - rho 3408) := by
      have hd : rho 3410 = Bool.toZMod bit * (rho 3408 - dtkAccY92 rho) := by
        rw [← hbit]
        unfold dtkAccY92
        linear_combination -r3916
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3401 * rho 3402 = rho 3411 := by linear_combination r3917
    have hd1 : rho 3401 * rho 3401 = rho 3412 := by linear_combination r3918
    have hd2 : rho 3402 * rho 3402 = rho 3413 := by linear_combination r3919
    have hd3 : rho 3414 * (rho 3402 * rho 3402 + rho 3401 * rho 3401 * (-1)) = 2 * (rho 3401 * rho 3402) := by
      rw [hd0, hd1, hd2]
      linear_combination r3920
    have hd4 : rho 3415 * (2 - (rho 3402 * rho 3402 + rho 3401 * rho 3401 * (-1))) = rho 3402 * rho 3402 - rho 3401 * rho 3401 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3921
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX92 rho : F), (dtkAccY92 rho : F)⟩
      ⟨(rho 3401 : F), (rho 3402 : F)⟩
      ⟨(rho 3407 : F), (rho 3408 : F)⟩
      ⟨(dtkAccX93 rho : F), (dtkAccY93 rho : F)⟩
      ⟨(rho 3414 : F), (rho 3415 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung92

theorem dtk_rows93 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3922 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3923 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3924 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3925 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3926 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3927 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3928 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3929 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3930 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3931 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3932 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3933 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3934 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p49,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart49 at p49
  rcases p49 with ⟨_, _, r3922, r3923, r3924, r3925, r3926, r3927, r3928, r3929, r3930, r3931, r3932, r3933, r3934, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3922, r3923, r3924, r3925, r3926, r3927, r3928, r3929, r3930, r3931, r3932, r3933, r3934⟩

theorem dtk_rung93 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1076 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX93 rho : F), (dtkAccY93 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3414 : F), (rho 3415 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX93 rho : F), (dtkAccY93 rho : F)⟩
        ⟨(rho 3414 : F), (rho 3415 : F)⟩
        ⟨(dtkAccX94 rho : F), (dtkAccY94 rho : F)⟩
        ⟨(rho 3427 : F), (rho 3428 : F)⟩ := by
  obtain ⟨r3922, r3923, r3924, r3925, r3926, r3927, r3928, r3929, r3930, r3931, r3932, r3933, r3934⟩ := dtk_rows93 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3922 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc551 at r3922
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3922
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3923 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc552 at r3923
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3923
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3924 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc553 at r3924
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3924
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3925 at r3925
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3926 at r3926
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3927 at r3927
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3928 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc554 at r3928
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3928
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3929 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc555 at r3929
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3929
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3930 at r3930
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3931 at r3931
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3932 at r3932
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3933 at r3933
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3934 at r3934
  have hrung93 (bit : Bool) (hbit : rho 1076 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX93 rho : F), (dtkAccY93 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3414 : F), (rho 3415 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX93 rho : F), (dtkAccY93 rho : F)⟩
        ⟨(rho 3414 : F), (rho 3415 : F)⟩
        ⟨(dtkAccX94 rho : F), (dtkAccY94 rho : F)⟩
        ⟨(rho 3427 : F), (rho 3428 : F)⟩ := by
    have hnextx : dtkAccX94 rho = dtkAccX93 rho + rho 3422 := by
      unfold dtkAccX94 dtkAccX93
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 92]
      ring
    have hnexty : dtkAccY94 rho = dtkAccY93 rho + rho 3423 := by
      unfold dtkAccY94 dtkAccY93
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 93]
      ring
    have ha0 : (rho 3414 + rho 3415) * (dtkAccX93 rho + dtkAccY93 rho) = rho 3416 := by
      unfold dtkAccX93 dtkAccY93
      linear_combination r3922
    have ha1 : rho 3415 * dtkAccX93 rho = rho 3417 := by
      unfold dtkAccX93
      linear_combination r3923
    have ha2 : rho 3414 * dtkAccY93 rho = rho 3418 := by
      unfold dtkAccY93
      linear_combination r3924
    have ha3 : 3021 * rho 3417 * rho 3418 = rho 3419 := by
      linear_combination r3925
    have ha4 : rho 3420 * (1 + rho 3419) = rho 3417 + rho 3418 := by
      linear_combination r3926
    have ha5 : rho 3421 * (1 - rho 3419) = rho 3416 - rho 3417 - rho 3418 := by
      linear_combination r3927
    have haddx :
        rho 3420 * (1 + 3021 * (rho 3415 * dtkAccX93 rho) * (rho 3414 * dtkAccY93 rho)) =
          rho 3415 * dtkAccX93 rho + rho 3414 * dtkAccY93 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3421 * (1 - 3021 * (rho 3415 * dtkAccX93 rho) * (rho 3414 * dtkAccY93 rho)) =
          (-1) * (rho 3415 * dtkAccX93 rho) - rho 3414 * dtkAccY93 rho +
            (dtkAccY93 rho - dtkAccX93 rho * (-1)) * (rho 3414 + rho 3415) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3421 * (1 - rho 3419) = rho 3416 - rho 3417 - rho 3418 := ha5
        _ = (-1) * rho 3417 - rho 3418 + (dtkAccY93 rho - dtkAccX93 rho * (-1)) * (rho 3414 + rho 3415) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX94 rho = dtkAccX93 rho - Bool.toZMod bit * (dtkAccX93 rho - rho 3420) := by
      have hd : rho 3422 = Bool.toZMod bit * (rho 3420 - dtkAccX93 rho) := by
        rw [← hbit]
        unfold dtkAccX93
        linear_combination -r3928
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY94 rho = dtkAccY93 rho - Bool.toZMod bit * (dtkAccY93 rho - rho 3421) := by
      have hd : rho 3423 = Bool.toZMod bit * (rho 3421 - dtkAccY93 rho) := by
        rw [← hbit]
        unfold dtkAccY93
        linear_combination -r3929
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3414 * rho 3415 = rho 3424 := by linear_combination r3930
    have hd1 : rho 3414 * rho 3414 = rho 3425 := by linear_combination r3931
    have hd2 : rho 3415 * rho 3415 = rho 3426 := by linear_combination r3932
    have hd3 : rho 3427 * (rho 3415 * rho 3415 + rho 3414 * rho 3414 * (-1)) = 2 * (rho 3414 * rho 3415) := by
      rw [hd0, hd1, hd2]
      linear_combination r3933
    have hd4 : rho 3428 * (2 - (rho 3415 * rho 3415 + rho 3414 * rho 3414 * (-1))) = rho 3415 * rho 3415 - rho 3414 * rho 3414 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3934
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX93 rho : F), (dtkAccY93 rho : F)⟩
      ⟨(rho 3414 : F), (rho 3415 : F)⟩
      ⟨(rho 3420 : F), (rho 3421 : F)⟩
      ⟨(dtkAccX94 rho : F), (dtkAccY94 rho : F)⟩
      ⟨(rho 3427 : F), (rho 3428 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung93

theorem dtk_rows94 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3935 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3936 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3937 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3938 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3939 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3940 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3941 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3942 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3943 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3944 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3945 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3946 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3947 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p49,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart49 at p49
  rcases p49 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3935, r3936, r3937, r3938, r3939, r3940, r3941, r3942, r3943, r3944, r3945, r3946, r3947, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3935, r3936, r3937, r3938, r3939, r3940, r3941, r3942, r3943, r3944, r3945, r3946, r3947⟩

theorem dtk_rung94 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1077 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX94 rho : F), (dtkAccY94 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3427 : F), (rho 3428 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX94 rho : F), (dtkAccY94 rho : F)⟩
        ⟨(rho 3427 : F), (rho 3428 : F)⟩
        ⟨(dtkAccX95 rho : F), (dtkAccY95 rho : F)⟩
        ⟨(rho 3440 : F), (rho 3441 : F)⟩ := by
  obtain ⟨r3935, r3936, r3937, r3938, r3939, r3940, r3941, r3942, r3943, r3944, r3945, r3946, r3947⟩ := dtk_rows94 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3935 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc556 at r3935
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3935
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3936 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc557 at r3936
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3936
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3937 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc558 at r3937
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3937
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3938 at r3938
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3939 at r3939
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3940 at r3940
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3941 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc559 at r3941
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3941
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3942 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc560 at r3942
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3942
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3943 at r3943
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3944 at r3944
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3945 at r3945
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3946 at r3946
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3947 at r3947
  have hrung94 (bit : Bool) (hbit : rho 1077 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX94 rho : F), (dtkAccY94 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3427 : F), (rho 3428 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX94 rho : F), (dtkAccY94 rho : F)⟩
        ⟨(rho 3427 : F), (rho 3428 : F)⟩
        ⟨(dtkAccX95 rho : F), (dtkAccY95 rho : F)⟩
        ⟨(rho 3440 : F), (rho 3441 : F)⟩ := by
    have hnextx : dtkAccX95 rho = dtkAccX94 rho + rho 3435 := by
      unfold dtkAccX95 dtkAccX94
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 93]
      ring
    have hnexty : dtkAccY95 rho = dtkAccY94 rho + rho 3436 := by
      unfold dtkAccY95 dtkAccY94
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 94]
      ring
    have ha0 : (rho 3427 + rho 3428) * (dtkAccX94 rho + dtkAccY94 rho) = rho 3429 := by
      unfold dtkAccX94 dtkAccY94
      linear_combination r3935
    have ha1 : rho 3428 * dtkAccX94 rho = rho 3430 := by
      unfold dtkAccX94
      linear_combination r3936
    have ha2 : rho 3427 * dtkAccY94 rho = rho 3431 := by
      unfold dtkAccY94
      linear_combination r3937
    have ha3 : 3021 * rho 3430 * rho 3431 = rho 3432 := by
      linear_combination r3938
    have ha4 : rho 3433 * (1 + rho 3432) = rho 3430 + rho 3431 := by
      linear_combination r3939
    have ha5 : rho 3434 * (1 - rho 3432) = rho 3429 - rho 3430 - rho 3431 := by
      linear_combination r3940
    have haddx :
        rho 3433 * (1 + 3021 * (rho 3428 * dtkAccX94 rho) * (rho 3427 * dtkAccY94 rho)) =
          rho 3428 * dtkAccX94 rho + rho 3427 * dtkAccY94 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3434 * (1 - 3021 * (rho 3428 * dtkAccX94 rho) * (rho 3427 * dtkAccY94 rho)) =
          (-1) * (rho 3428 * dtkAccX94 rho) - rho 3427 * dtkAccY94 rho +
            (dtkAccY94 rho - dtkAccX94 rho * (-1)) * (rho 3427 + rho 3428) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3434 * (1 - rho 3432) = rho 3429 - rho 3430 - rho 3431 := ha5
        _ = (-1) * rho 3430 - rho 3431 + (dtkAccY94 rho - dtkAccX94 rho * (-1)) * (rho 3427 + rho 3428) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX95 rho = dtkAccX94 rho - Bool.toZMod bit * (dtkAccX94 rho - rho 3433) := by
      have hd : rho 3435 = Bool.toZMod bit * (rho 3433 - dtkAccX94 rho) := by
        rw [← hbit]
        unfold dtkAccX94
        linear_combination -r3941
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY95 rho = dtkAccY94 rho - Bool.toZMod bit * (dtkAccY94 rho - rho 3434) := by
      have hd : rho 3436 = Bool.toZMod bit * (rho 3434 - dtkAccY94 rho) := by
        rw [← hbit]
        unfold dtkAccY94
        linear_combination -r3942
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3427 * rho 3428 = rho 3437 := by linear_combination r3943
    have hd1 : rho 3427 * rho 3427 = rho 3438 := by linear_combination r3944
    have hd2 : rho 3428 * rho 3428 = rho 3439 := by linear_combination r3945
    have hd3 : rho 3440 * (rho 3428 * rho 3428 + rho 3427 * rho 3427 * (-1)) = 2 * (rho 3427 * rho 3428) := by
      rw [hd0, hd1, hd2]
      linear_combination r3946
    have hd4 : rho 3441 * (2 - (rho 3428 * rho 3428 + rho 3427 * rho 3427 * (-1))) = rho 3428 * rho 3428 - rho 3427 * rho 3427 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3947
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX94 rho : F), (dtkAccY94 rho : F)⟩
      ⟨(rho 3427 : F), (rho 3428 : F)⟩
      ⟨(rho 3433 : F), (rho 3434 : F)⟩
      ⟨(dtkAccX95 rho : F), (dtkAccY95 rho : F)⟩
      ⟨(rho 3440 : F), (rho 3441 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung94

theorem dtk_rows95 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3948 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3949 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3950 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3951 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3952 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3953 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3954 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3955 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3956 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3957 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3958 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3959 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3960 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p49,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart49 at p49
  rcases p49 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3948, r3949, r3950, r3951, r3952, r3953, r3954, r3955, r3956, r3957, r3958, r3959, r3960, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3948, r3949, r3950, r3951, r3952, r3953, r3954, r3955, r3956, r3957, r3958, r3959, r3960⟩

theorem dtk_rung95 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1078 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX95 rho : F), (dtkAccY95 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3440 : F), (rho 3441 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX95 rho : F), (dtkAccY95 rho : F)⟩
        ⟨(rho 3440 : F), (rho 3441 : F)⟩
        ⟨(dtkAccX96 rho : F), (dtkAccY96 rho : F)⟩
        ⟨(rho 3453 : F), (rho 3454 : F)⟩ := by
  obtain ⟨r3948, r3949, r3950, r3951, r3952, r3953, r3954, r3955, r3956, r3957, r3958, r3959, r3960⟩ := dtk_rows95 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3948 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc561 at r3948
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3948
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3949 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc562 at r3949
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3949
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3950 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc563 at r3950
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3950
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3951 at r3951
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3952 at r3952
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3953 at r3953
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3954 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc564 at r3954
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3954
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3955 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc565 at r3955
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3955
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3956 at r3956
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3957 at r3957
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3958 at r3958
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3959 at r3959
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3960 at r3960
  have hrung95 (bit : Bool) (hbit : rho 1078 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX95 rho : F), (dtkAccY95 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3440 : F), (rho 3441 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX95 rho : F), (dtkAccY95 rho : F)⟩
        ⟨(rho 3440 : F), (rho 3441 : F)⟩
        ⟨(dtkAccX96 rho : F), (dtkAccY96 rho : F)⟩
        ⟨(rho 3453 : F), (rho 3454 : F)⟩ := by
    have hnextx : dtkAccX96 rho = dtkAccX95 rho + rho 3448 := by
      unfold dtkAccX96 dtkAccX95
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 94]
      ring
    have hnexty : dtkAccY96 rho = dtkAccY95 rho + rho 3449 := by
      unfold dtkAccY96 dtkAccY95
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 95]
      ring
    have ha0 : (rho 3440 + rho 3441) * (dtkAccX95 rho + dtkAccY95 rho) = rho 3442 := by
      unfold dtkAccX95 dtkAccY95
      linear_combination r3948
    have ha1 : rho 3441 * dtkAccX95 rho = rho 3443 := by
      unfold dtkAccX95
      linear_combination r3949
    have ha2 : rho 3440 * dtkAccY95 rho = rho 3444 := by
      unfold dtkAccY95
      linear_combination r3950
    have ha3 : 3021 * rho 3443 * rho 3444 = rho 3445 := by
      linear_combination r3951
    have ha4 : rho 3446 * (1 + rho 3445) = rho 3443 + rho 3444 := by
      linear_combination r3952
    have ha5 : rho 3447 * (1 - rho 3445) = rho 3442 - rho 3443 - rho 3444 := by
      linear_combination r3953
    have haddx :
        rho 3446 * (1 + 3021 * (rho 3441 * dtkAccX95 rho) * (rho 3440 * dtkAccY95 rho)) =
          rho 3441 * dtkAccX95 rho + rho 3440 * dtkAccY95 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3447 * (1 - 3021 * (rho 3441 * dtkAccX95 rho) * (rho 3440 * dtkAccY95 rho)) =
          (-1) * (rho 3441 * dtkAccX95 rho) - rho 3440 * dtkAccY95 rho +
            (dtkAccY95 rho - dtkAccX95 rho * (-1)) * (rho 3440 + rho 3441) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3447 * (1 - rho 3445) = rho 3442 - rho 3443 - rho 3444 := ha5
        _ = (-1) * rho 3443 - rho 3444 + (dtkAccY95 rho - dtkAccX95 rho * (-1)) * (rho 3440 + rho 3441) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX96 rho = dtkAccX95 rho - Bool.toZMod bit * (dtkAccX95 rho - rho 3446) := by
      have hd : rho 3448 = Bool.toZMod bit * (rho 3446 - dtkAccX95 rho) := by
        rw [← hbit]
        unfold dtkAccX95
        linear_combination -r3954
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY96 rho = dtkAccY95 rho - Bool.toZMod bit * (dtkAccY95 rho - rho 3447) := by
      have hd : rho 3449 = Bool.toZMod bit * (rho 3447 - dtkAccY95 rho) := by
        rw [← hbit]
        unfold dtkAccY95
        linear_combination -r3955
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3440 * rho 3441 = rho 3450 := by linear_combination r3956
    have hd1 : rho 3440 * rho 3440 = rho 3451 := by linear_combination r3957
    have hd2 : rho 3441 * rho 3441 = rho 3452 := by linear_combination r3958
    have hd3 : rho 3453 * (rho 3441 * rho 3441 + rho 3440 * rho 3440 * (-1)) = 2 * (rho 3440 * rho 3441) := by
      rw [hd0, hd1, hd2]
      linear_combination r3959
    have hd4 : rho 3454 * (2 - (rho 3441 * rho 3441 + rho 3440 * rho 3440 * (-1))) = rho 3441 * rho 3441 - rho 3440 * rho 3440 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3960
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX95 rho : F), (dtkAccY95 rho : F)⟩
      ⟨(rho 3440 : F), (rho 3441 : F)⟩
      ⟨(rho 3446 : F), (rho 3447 : F)⟩
      ⟨(dtkAccX96 rho : F), (dtkAccY96 rho : F)⟩
      ⟨(rho 3453 : F), (rho 3454 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung95

theorem dtk_hstep_c15 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (983 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 90 ≤ i → i < 96 →
      EdwardsBridge.onCurve (dtkLadderAccState rho i) →
      EdwardsBridge.onCurve (dtkLadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (dtkLadderAccState rho i) (dtkLadderCurState rho i)
        (dtkLadderAccState rho (i + 1)) (dtkLadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact dtk_rung90 rho h bits[90]! (hbitAt 90 (by omega)) hacc hcur
  · exact dtk_rung91 rho h bits[91]! (hbitAt 91 (by omega)) hacc hcur
  · exact dtk_rung92 rho h bits[92]! (hbitAt 92 (by omega)) hacc hcur
  · exact dtk_rung93 rho h bits[93]! (hbitAt 93 (by omega)) hacc hcur
  · exact dtk_rung94 rho h bits[94]! (hbitAt 94 (by omega)) hacc hcur
  · exact dtk_rung95 rho h bits[95]! (hbitAt 95 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport
