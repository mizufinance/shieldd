import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDtkScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs

theorem dtk_rows96 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3961 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3962 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3963 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3964 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3965 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3966 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3967 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3968 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3969 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3970 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3971 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3972 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3973 rho := by
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
  rcases p49 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3961, r3962, r3963, r3964, r3965, r3966, r3967, r3968, r3969, r3970, r3971, r3972, r3973, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3961, r3962, r3963, r3964, r3965, r3966, r3967, r3968, r3969, r3970, r3971, r3972, r3973⟩

theorem dtk_rung96 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1079 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX96 rho : F), (dtkAccY96 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3453 : F), (rho 3454 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX96 rho : F), (dtkAccY96 rho : F)⟩
        ⟨(rho 3453 : F), (rho 3454 : F)⟩
        ⟨(dtkAccX97 rho : F), (dtkAccY97 rho : F)⟩
        ⟨(rho 3466 : F), (rho 3467 : F)⟩ := by
  obtain ⟨r3961, r3962, r3963, r3964, r3965, r3966, r3967, r3968, r3969, r3970, r3971, r3972, r3973⟩ := dtk_rows96 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3961 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc566 at r3961
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3961
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3962 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc567 at r3962
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3962
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3963 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc568 at r3963
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3963
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3964 at r3964
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3965 at r3965
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3966 at r3966
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3967 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc569 at r3967
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3967
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3968 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc570 at r3968
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3968
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3969 at r3969
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3970 at r3970
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3971 at r3971
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3972 at r3972
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3973 at r3973
  have hrung96 (bit : Bool) (hbit : rho 1079 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX96 rho : F), (dtkAccY96 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3453 : F), (rho 3454 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX96 rho : F), (dtkAccY96 rho : F)⟩
        ⟨(rho 3453 : F), (rho 3454 : F)⟩
        ⟨(dtkAccX97 rho : F), (dtkAccY97 rho : F)⟩
        ⟨(rho 3466 : F), (rho 3467 : F)⟩ := by
    have hnextx : dtkAccX97 rho = dtkAccX96 rho + rho 3461 := by
      unfold dtkAccX97 dtkAccX96
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 95]
      ring
    have hnexty : dtkAccY97 rho = dtkAccY96 rho + rho 3462 := by
      unfold dtkAccY97 dtkAccY96
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 96]
      ring
    have ha0 : (rho 3453 + rho 3454) * (dtkAccX96 rho + dtkAccY96 rho) = rho 3455 := by
      unfold dtkAccX96 dtkAccY96
      linear_combination r3961
    have ha1 : rho 3454 * dtkAccX96 rho = rho 3456 := by
      unfold dtkAccX96
      linear_combination r3962
    have ha2 : rho 3453 * dtkAccY96 rho = rho 3457 := by
      unfold dtkAccY96
      linear_combination r3963
    have ha3 : 3021 * rho 3456 * rho 3457 = rho 3458 := by
      linear_combination r3964
    have ha4 : rho 3459 * (1 + rho 3458) = rho 3456 + rho 3457 := by
      linear_combination r3965
    have ha5 : rho 3460 * (1 - rho 3458) = rho 3455 - rho 3456 - rho 3457 := by
      linear_combination r3966
    have haddx :
        rho 3459 * (1 + 3021 * (rho 3454 * dtkAccX96 rho) * (rho 3453 * dtkAccY96 rho)) =
          rho 3454 * dtkAccX96 rho + rho 3453 * dtkAccY96 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3460 * (1 - 3021 * (rho 3454 * dtkAccX96 rho) * (rho 3453 * dtkAccY96 rho)) =
          (-1) * (rho 3454 * dtkAccX96 rho) - rho 3453 * dtkAccY96 rho +
            (dtkAccY96 rho - dtkAccX96 rho * (-1)) * (rho 3453 + rho 3454) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3460 * (1 - rho 3458) = rho 3455 - rho 3456 - rho 3457 := ha5
        _ = (-1) * rho 3456 - rho 3457 + (dtkAccY96 rho - dtkAccX96 rho * (-1)) * (rho 3453 + rho 3454) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX97 rho = dtkAccX96 rho - Bool.toZMod bit * (dtkAccX96 rho - rho 3459) := by
      have hd : rho 3461 = Bool.toZMod bit * (rho 3459 - dtkAccX96 rho) := by
        rw [← hbit]
        unfold dtkAccX96
        linear_combination -r3967
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY97 rho = dtkAccY96 rho - Bool.toZMod bit * (dtkAccY96 rho - rho 3460) := by
      have hd : rho 3462 = Bool.toZMod bit * (rho 3460 - dtkAccY96 rho) := by
        rw [← hbit]
        unfold dtkAccY96
        linear_combination -r3968
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3453 * rho 3454 = rho 3463 := by linear_combination r3969
    have hd1 : rho 3453 * rho 3453 = rho 3464 := by linear_combination r3970
    have hd2 : rho 3454 * rho 3454 = rho 3465 := by linear_combination r3971
    have hd3 : rho 3466 * (rho 3454 * rho 3454 + rho 3453 * rho 3453 * (-1)) = 2 * (rho 3453 * rho 3454) := by
      rw [hd0, hd1, hd2]
      linear_combination r3972
    have hd4 : rho 3467 * (2 - (rho 3454 * rho 3454 + rho 3453 * rho 3453 * (-1))) = rho 3454 * rho 3454 - rho 3453 * rho 3453 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3973
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX96 rho : F), (dtkAccY96 rho : F)⟩
      ⟨(rho 3453 : F), (rho 3454 : F)⟩
      ⟨(rho 3459 : F), (rho 3460 : F)⟩
      ⟨(dtkAccX97 rho : F), (dtkAccY97 rho : F)⟩
      ⟨(rho 3466 : F), (rho 3467 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung96

theorem dtk_rows97 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3974 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3975 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3976 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3977 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3978 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3979 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3980 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3981 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3982 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3983 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3984 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3985 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3986 rho := by
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
  rcases p49 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3974, r3975, r3976, r3977, r3978, r3979, r3980, r3981, r3982, r3983, r3984, r3985, r3986, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3974, r3975, r3976, r3977, r3978, r3979, r3980, r3981, r3982, r3983, r3984, r3985, r3986⟩

theorem dtk_rung97 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1080 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX97 rho : F), (dtkAccY97 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3466 : F), (rho 3467 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX97 rho : F), (dtkAccY97 rho : F)⟩
        ⟨(rho 3466 : F), (rho 3467 : F)⟩
        ⟨(dtkAccX98 rho : F), (dtkAccY98 rho : F)⟩
        ⟨(rho 3479 : F), (rho 3480 : F)⟩ := by
  obtain ⟨r3974, r3975, r3976, r3977, r3978, r3979, r3980, r3981, r3982, r3983, r3984, r3985, r3986⟩ := dtk_rows97 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3974 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc571 at r3974
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3974
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3975 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc572 at r3975
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3975
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3976 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc573 at r3976
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3976
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3977 at r3977
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3978 at r3978
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3979 at r3979
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3980 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc574 at r3980
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3980
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3981 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc575 at r3981
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3981
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3982 at r3982
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3983 at r3983
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3984 at r3984
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3985 at r3985
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3986 at r3986
  have hrung97 (bit : Bool) (hbit : rho 1080 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX97 rho : F), (dtkAccY97 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3466 : F), (rho 3467 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX97 rho : F), (dtkAccY97 rho : F)⟩
        ⟨(rho 3466 : F), (rho 3467 : F)⟩
        ⟨(dtkAccX98 rho : F), (dtkAccY98 rho : F)⟩
        ⟨(rho 3479 : F), (rho 3480 : F)⟩ := by
    have hnextx : dtkAccX98 rho = dtkAccX97 rho + rho 3474 := by
      unfold dtkAccX98 dtkAccX97
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 96]
      ring
    have hnexty : dtkAccY98 rho = dtkAccY97 rho + rho 3475 := by
      unfold dtkAccY98 dtkAccY97
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 97]
      ring
    have ha0 : (rho 3466 + rho 3467) * (dtkAccX97 rho + dtkAccY97 rho) = rho 3468 := by
      unfold dtkAccX97 dtkAccY97
      linear_combination r3974
    have ha1 : rho 3467 * dtkAccX97 rho = rho 3469 := by
      unfold dtkAccX97
      linear_combination r3975
    have ha2 : rho 3466 * dtkAccY97 rho = rho 3470 := by
      unfold dtkAccY97
      linear_combination r3976
    have ha3 : 3021 * rho 3469 * rho 3470 = rho 3471 := by
      linear_combination r3977
    have ha4 : rho 3472 * (1 + rho 3471) = rho 3469 + rho 3470 := by
      linear_combination r3978
    have ha5 : rho 3473 * (1 - rho 3471) = rho 3468 - rho 3469 - rho 3470 := by
      linear_combination r3979
    have haddx :
        rho 3472 * (1 + 3021 * (rho 3467 * dtkAccX97 rho) * (rho 3466 * dtkAccY97 rho)) =
          rho 3467 * dtkAccX97 rho + rho 3466 * dtkAccY97 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3473 * (1 - 3021 * (rho 3467 * dtkAccX97 rho) * (rho 3466 * dtkAccY97 rho)) =
          (-1) * (rho 3467 * dtkAccX97 rho) - rho 3466 * dtkAccY97 rho +
            (dtkAccY97 rho - dtkAccX97 rho * (-1)) * (rho 3466 + rho 3467) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3473 * (1 - rho 3471) = rho 3468 - rho 3469 - rho 3470 := ha5
        _ = (-1) * rho 3469 - rho 3470 + (dtkAccY97 rho - dtkAccX97 rho * (-1)) * (rho 3466 + rho 3467) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX98 rho = dtkAccX97 rho - Bool.toZMod bit * (dtkAccX97 rho - rho 3472) := by
      have hd : rho 3474 = Bool.toZMod bit * (rho 3472 - dtkAccX97 rho) := by
        rw [← hbit]
        unfold dtkAccX97
        linear_combination -r3980
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY98 rho = dtkAccY97 rho - Bool.toZMod bit * (dtkAccY97 rho - rho 3473) := by
      have hd : rho 3475 = Bool.toZMod bit * (rho 3473 - dtkAccY97 rho) := by
        rw [← hbit]
        unfold dtkAccY97
        linear_combination -r3981
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3466 * rho 3467 = rho 3476 := by linear_combination r3982
    have hd1 : rho 3466 * rho 3466 = rho 3477 := by linear_combination r3983
    have hd2 : rho 3467 * rho 3467 = rho 3478 := by linear_combination r3984
    have hd3 : rho 3479 * (rho 3467 * rho 3467 + rho 3466 * rho 3466 * (-1)) = 2 * (rho 3466 * rho 3467) := by
      rw [hd0, hd1, hd2]
      linear_combination r3985
    have hd4 : rho 3480 * (2 - (rho 3467 * rho 3467 + rho 3466 * rho 3466 * (-1))) = rho 3467 * rho 3467 - rho 3466 * rho 3466 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3986
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX97 rho : F), (dtkAccY97 rho : F)⟩
      ⟨(rho 3466 : F), (rho 3467 : F)⟩
      ⟨(rho 3472 : F), (rho 3473 : F)⟩
      ⟨(dtkAccX98 rho : F), (dtkAccY98 rho : F)⟩
      ⟨(rho 3479 : F), (rho 3480 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung97

theorem dtk_rows98 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3987 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3988 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3989 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3990 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3991 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3992 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3993 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3994 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3995 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3996 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3997 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3998 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3999 rho := by
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
  rcases p49 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3987, r3988, r3989, r3990, r3991, r3992, r3993, r3994, r3995, r3996, r3997, r3998, r3999⟩
  exact ⟨r3987, r3988, r3989, r3990, r3991, r3992, r3993, r3994, r3995, r3996, r3997, r3998, r3999⟩

theorem dtk_rung98 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1081 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX98 rho : F), (dtkAccY98 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3479 : F), (rho 3480 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX98 rho : F), (dtkAccY98 rho : F)⟩
        ⟨(rho 3479 : F), (rho 3480 : F)⟩
        ⟨(dtkAccX99 rho : F), (dtkAccY99 rho : F)⟩
        ⟨(rho 3492 : F), (rho 3493 : F)⟩ := by
  obtain ⟨r3987, r3988, r3989, r3990, r3991, r3992, r3993, r3994, r3995, r3996, r3997, r3998, r3999⟩ := dtk_rows98 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3987 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc576 at r3987
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3987
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3988 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc577 at r3988
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3988
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3989 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc578 at r3989
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3989
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3990 at r3990
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3991 at r3991
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3992 at r3992
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3993 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc579 at r3993
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3993
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3994 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc580 at r3994
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3994
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3995 at r3995
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3996 at r3996
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3997 at r3997
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3998 at r3998
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3999 at r3999
  have hrung98 (bit : Bool) (hbit : rho 1081 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX98 rho : F), (dtkAccY98 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3479 : F), (rho 3480 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX98 rho : F), (dtkAccY98 rho : F)⟩
        ⟨(rho 3479 : F), (rho 3480 : F)⟩
        ⟨(dtkAccX99 rho : F), (dtkAccY99 rho : F)⟩
        ⟨(rho 3492 : F), (rho 3493 : F)⟩ := by
    have hnextx : dtkAccX99 rho = dtkAccX98 rho + rho 3487 := by
      unfold dtkAccX99 dtkAccX98
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 97]
      ring
    have hnexty : dtkAccY99 rho = dtkAccY98 rho + rho 3488 := by
      unfold dtkAccY99 dtkAccY98
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 98]
      ring
    have ha0 : (rho 3479 + rho 3480) * (dtkAccX98 rho + dtkAccY98 rho) = rho 3481 := by
      unfold dtkAccX98 dtkAccY98
      linear_combination r3987
    have ha1 : rho 3480 * dtkAccX98 rho = rho 3482 := by
      unfold dtkAccX98
      linear_combination r3988
    have ha2 : rho 3479 * dtkAccY98 rho = rho 3483 := by
      unfold dtkAccY98
      linear_combination r3989
    have ha3 : 3021 * rho 3482 * rho 3483 = rho 3484 := by
      linear_combination r3990
    have ha4 : rho 3485 * (1 + rho 3484) = rho 3482 + rho 3483 := by
      linear_combination r3991
    have ha5 : rho 3486 * (1 - rho 3484) = rho 3481 - rho 3482 - rho 3483 := by
      linear_combination r3992
    have haddx :
        rho 3485 * (1 + 3021 * (rho 3480 * dtkAccX98 rho) * (rho 3479 * dtkAccY98 rho)) =
          rho 3480 * dtkAccX98 rho + rho 3479 * dtkAccY98 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3486 * (1 - 3021 * (rho 3480 * dtkAccX98 rho) * (rho 3479 * dtkAccY98 rho)) =
          (-1) * (rho 3480 * dtkAccX98 rho) - rho 3479 * dtkAccY98 rho +
            (dtkAccY98 rho - dtkAccX98 rho * (-1)) * (rho 3479 + rho 3480) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3486 * (1 - rho 3484) = rho 3481 - rho 3482 - rho 3483 := ha5
        _ = (-1) * rho 3482 - rho 3483 + (dtkAccY98 rho - dtkAccX98 rho * (-1)) * (rho 3479 + rho 3480) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX99 rho = dtkAccX98 rho - Bool.toZMod bit * (dtkAccX98 rho - rho 3485) := by
      have hd : rho 3487 = Bool.toZMod bit * (rho 3485 - dtkAccX98 rho) := by
        rw [← hbit]
        unfold dtkAccX98
        linear_combination -r3993
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY99 rho = dtkAccY98 rho - Bool.toZMod bit * (dtkAccY98 rho - rho 3486) := by
      have hd : rho 3488 = Bool.toZMod bit * (rho 3486 - dtkAccY98 rho) := by
        rw [← hbit]
        unfold dtkAccY98
        linear_combination -r3994
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3479 * rho 3480 = rho 3489 := by linear_combination r3995
    have hd1 : rho 3479 * rho 3479 = rho 3490 := by linear_combination r3996
    have hd2 : rho 3480 * rho 3480 = rho 3491 := by linear_combination r3997
    have hd3 : rho 3492 * (rho 3480 * rho 3480 + rho 3479 * rho 3479 * (-1)) = 2 * (rho 3479 * rho 3480) := by
      rw [hd0, hd1, hd2]
      linear_combination r3998
    have hd4 : rho 3493 * (2 - (rho 3480 * rho 3480 + rho 3479 * rho 3479 * (-1))) = rho 3480 * rho 3480 - rho 3479 * rho 3479 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3999
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX98 rho : F), (dtkAccY98 rho : F)⟩
      ⟨(rho 3479 : F), (rho 3480 : F)⟩
      ⟨(rho 3485 : F), (rho 3486 : F)⟩
      ⟨(dtkAccX99 rho : F), (dtkAccY99 rho : F)⟩
      ⟨(rho 3492 : F), (rho 3493 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung98

theorem dtk_rows99 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4000 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4001 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4002 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4003 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4004 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4005 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4006 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4007 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4008 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4009 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4010 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4011 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4012 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p50, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart50 at p50
  rcases p50 with ⟨r4000, r4001, r4002, r4003, r4004, r4005, r4006, r4007, r4008, r4009, r4010, r4011, r4012, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4000, r4001, r4002, r4003, r4004, r4005, r4006, r4007, r4008, r4009, r4010, r4011, r4012⟩

theorem dtk_rung99 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1082 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX99 rho : F), (dtkAccY99 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3492 : F), (rho 3493 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX99 rho : F), (dtkAccY99 rho : F)⟩
        ⟨(rho 3492 : F), (rho 3493 : F)⟩
        ⟨(dtkAccX100 rho : F), (dtkAccY100 rho : F)⟩
        ⟨(rho 3505 : F), (rho 3506 : F)⟩ := by
  obtain ⟨r4000, r4001, r4002, r4003, r4004, r4005, r4006, r4007, r4008, r4009, r4010, r4011, r4012⟩ := dtk_rows99 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4000 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc581 at r4000
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4000
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4001 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc582 at r4001
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4001
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4002 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc583 at r4002
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4002
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4003 at r4003
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4004 at r4004
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4005 at r4005
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4006 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc584 at r4006
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4006
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4007 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc585 at r4007
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4007
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4008 at r4008
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4009 at r4009
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4010 at r4010
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4011 at r4011
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4012 at r4012
  have hrung99 (bit : Bool) (hbit : rho 1082 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX99 rho : F), (dtkAccY99 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3492 : F), (rho 3493 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX99 rho : F), (dtkAccY99 rho : F)⟩
        ⟨(rho 3492 : F), (rho 3493 : F)⟩
        ⟨(dtkAccX100 rho : F), (dtkAccY100 rho : F)⟩
        ⟨(rho 3505 : F), (rho 3506 : F)⟩ := by
    have hnextx : dtkAccX100 rho = dtkAccX99 rho + rho 3500 := by
      unfold dtkAccX100 dtkAccX99
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 98]
      ring
    have hnexty : dtkAccY100 rho = dtkAccY99 rho + rho 3501 := by
      unfold dtkAccY100 dtkAccY99
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 99]
      ring
    have ha0 : (rho 3492 + rho 3493) * (dtkAccX99 rho + dtkAccY99 rho) = rho 3494 := by
      unfold dtkAccX99 dtkAccY99
      linear_combination r4000
    have ha1 : rho 3493 * dtkAccX99 rho = rho 3495 := by
      unfold dtkAccX99
      linear_combination r4001
    have ha2 : rho 3492 * dtkAccY99 rho = rho 3496 := by
      unfold dtkAccY99
      linear_combination r4002
    have ha3 : 3021 * rho 3495 * rho 3496 = rho 3497 := by
      linear_combination r4003
    have ha4 : rho 3498 * (1 + rho 3497) = rho 3495 + rho 3496 := by
      linear_combination r4004
    have ha5 : rho 3499 * (1 - rho 3497) = rho 3494 - rho 3495 - rho 3496 := by
      linear_combination r4005
    have haddx :
        rho 3498 * (1 + 3021 * (rho 3493 * dtkAccX99 rho) * (rho 3492 * dtkAccY99 rho)) =
          rho 3493 * dtkAccX99 rho + rho 3492 * dtkAccY99 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3499 * (1 - 3021 * (rho 3493 * dtkAccX99 rho) * (rho 3492 * dtkAccY99 rho)) =
          (-1) * (rho 3493 * dtkAccX99 rho) - rho 3492 * dtkAccY99 rho +
            (dtkAccY99 rho - dtkAccX99 rho * (-1)) * (rho 3492 + rho 3493) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3499 * (1 - rho 3497) = rho 3494 - rho 3495 - rho 3496 := ha5
        _ = (-1) * rho 3495 - rho 3496 + (dtkAccY99 rho - dtkAccX99 rho * (-1)) * (rho 3492 + rho 3493) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX100 rho = dtkAccX99 rho - Bool.toZMod bit * (dtkAccX99 rho - rho 3498) := by
      have hd : rho 3500 = Bool.toZMod bit * (rho 3498 - dtkAccX99 rho) := by
        rw [← hbit]
        unfold dtkAccX99
        linear_combination -r4006
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY100 rho = dtkAccY99 rho - Bool.toZMod bit * (dtkAccY99 rho - rho 3499) := by
      have hd : rho 3501 = Bool.toZMod bit * (rho 3499 - dtkAccY99 rho) := by
        rw [← hbit]
        unfold dtkAccY99
        linear_combination -r4007
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3492 * rho 3493 = rho 3502 := by linear_combination r4008
    have hd1 : rho 3492 * rho 3492 = rho 3503 := by linear_combination r4009
    have hd2 : rho 3493 * rho 3493 = rho 3504 := by linear_combination r4010
    have hd3 : rho 3505 * (rho 3493 * rho 3493 + rho 3492 * rho 3492 * (-1)) = 2 * (rho 3492 * rho 3493) := by
      rw [hd0, hd1, hd2]
      linear_combination r4011
    have hd4 : rho 3506 * (2 - (rho 3493 * rho 3493 + rho 3492 * rho 3492 * (-1))) = rho 3493 * rho 3493 - rho 3492 * rho 3492 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4012
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX99 rho : F), (dtkAccY99 rho : F)⟩
      ⟨(rho 3492 : F), (rho 3493 : F)⟩
      ⟨(rho 3498 : F), (rho 3499 : F)⟩
      ⟨(dtkAccX100 rho : F), (dtkAccY100 rho : F)⟩
      ⟨(rho 3505 : F), (rho 3506 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung99

theorem dtk_rows100 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4013 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4014 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4015 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4016 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4017 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4018 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4019 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4020 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4021 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4022 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4023 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4024 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4025 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p50, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart50 at p50
  rcases p50 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, r4013, r4014, r4015, r4016, r4017, r4018, r4019, r4020, r4021, r4022, r4023, r4024, r4025, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4013, r4014, r4015, r4016, r4017, r4018, r4019, r4020, r4021, r4022, r4023, r4024, r4025⟩

theorem dtk_rung100 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1083 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX100 rho : F), (dtkAccY100 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3505 : F), (rho 3506 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX100 rho : F), (dtkAccY100 rho : F)⟩
        ⟨(rho 3505 : F), (rho 3506 : F)⟩
        ⟨(dtkAccX101 rho : F), (dtkAccY101 rho : F)⟩
        ⟨(rho 3518 : F), (rho 3519 : F)⟩ := by
  obtain ⟨r4013, r4014, r4015, r4016, r4017, r4018, r4019, r4020, r4021, r4022, r4023, r4024, r4025⟩ := dtk_rows100 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4013 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc586 at r4013
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4013
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4014 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc587 at r4014
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4014
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4015 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc588 at r4015
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4015
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4016 at r4016
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4017 at r4017
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4018 at r4018
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4019 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc589 at r4019
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4019
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4020 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc590 at r4020
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4020
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4021 at r4021
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4022 at r4022
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4023 at r4023
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4024 at r4024
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4025 at r4025
  have hrung100 (bit : Bool) (hbit : rho 1083 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX100 rho : F), (dtkAccY100 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3505 : F), (rho 3506 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX100 rho : F), (dtkAccY100 rho : F)⟩
        ⟨(rho 3505 : F), (rho 3506 : F)⟩
        ⟨(dtkAccX101 rho : F), (dtkAccY101 rho : F)⟩
        ⟨(rho 3518 : F), (rho 3519 : F)⟩ := by
    have hnextx : dtkAccX101 rho = dtkAccX100 rho + rho 3513 := by
      unfold dtkAccX101 dtkAccX100
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 99]
      ring
    have hnexty : dtkAccY101 rho = dtkAccY100 rho + rho 3514 := by
      unfold dtkAccY101 dtkAccY100
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 100]
      ring
    have ha0 : (rho 3505 + rho 3506) * (dtkAccX100 rho + dtkAccY100 rho) = rho 3507 := by
      unfold dtkAccX100 dtkAccY100
      linear_combination r4013
    have ha1 : rho 3506 * dtkAccX100 rho = rho 3508 := by
      unfold dtkAccX100
      linear_combination r4014
    have ha2 : rho 3505 * dtkAccY100 rho = rho 3509 := by
      unfold dtkAccY100
      linear_combination r4015
    have ha3 : 3021 * rho 3508 * rho 3509 = rho 3510 := by
      linear_combination r4016
    have ha4 : rho 3511 * (1 + rho 3510) = rho 3508 + rho 3509 := by
      linear_combination r4017
    have ha5 : rho 3512 * (1 - rho 3510) = rho 3507 - rho 3508 - rho 3509 := by
      linear_combination r4018
    have haddx :
        rho 3511 * (1 + 3021 * (rho 3506 * dtkAccX100 rho) * (rho 3505 * dtkAccY100 rho)) =
          rho 3506 * dtkAccX100 rho + rho 3505 * dtkAccY100 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3512 * (1 - 3021 * (rho 3506 * dtkAccX100 rho) * (rho 3505 * dtkAccY100 rho)) =
          (-1) * (rho 3506 * dtkAccX100 rho) - rho 3505 * dtkAccY100 rho +
            (dtkAccY100 rho - dtkAccX100 rho * (-1)) * (rho 3505 + rho 3506) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3512 * (1 - rho 3510) = rho 3507 - rho 3508 - rho 3509 := ha5
        _ = (-1) * rho 3508 - rho 3509 + (dtkAccY100 rho - dtkAccX100 rho * (-1)) * (rho 3505 + rho 3506) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX101 rho = dtkAccX100 rho - Bool.toZMod bit * (dtkAccX100 rho - rho 3511) := by
      have hd : rho 3513 = Bool.toZMod bit * (rho 3511 - dtkAccX100 rho) := by
        rw [← hbit]
        unfold dtkAccX100
        linear_combination -r4019
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY101 rho = dtkAccY100 rho - Bool.toZMod bit * (dtkAccY100 rho - rho 3512) := by
      have hd : rho 3514 = Bool.toZMod bit * (rho 3512 - dtkAccY100 rho) := by
        rw [← hbit]
        unfold dtkAccY100
        linear_combination -r4020
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3505 * rho 3506 = rho 3515 := by linear_combination r4021
    have hd1 : rho 3505 * rho 3505 = rho 3516 := by linear_combination r4022
    have hd2 : rho 3506 * rho 3506 = rho 3517 := by linear_combination r4023
    have hd3 : rho 3518 * (rho 3506 * rho 3506 + rho 3505 * rho 3505 * (-1)) = 2 * (rho 3505 * rho 3506) := by
      rw [hd0, hd1, hd2]
      linear_combination r4024
    have hd4 : rho 3519 * (2 - (rho 3506 * rho 3506 + rho 3505 * rho 3505 * (-1))) = rho 3506 * rho 3506 - rho 3505 * rho 3505 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4025
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX100 rho : F), (dtkAccY100 rho : F)⟩
      ⟨(rho 3505 : F), (rho 3506 : F)⟩
      ⟨(rho 3511 : F), (rho 3512 : F)⟩
      ⟨(dtkAccX101 rho : F), (dtkAccY101 rho : F)⟩
      ⟨(rho 3518 : F), (rho 3519 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung100

theorem dtk_rows101 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4026 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4027 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4028 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4029 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4030 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4031 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4032 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4033 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4034 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4035 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4036 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4037 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4038 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p50, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart50 at p50
  rcases p50 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4026, r4027, r4028, r4029, r4030, r4031, r4032, r4033, r4034, r4035, r4036, r4037, r4038, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4026, r4027, r4028, r4029, r4030, r4031, r4032, r4033, r4034, r4035, r4036, r4037, r4038⟩

theorem dtk_rung101 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1084 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX101 rho : F), (dtkAccY101 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3518 : F), (rho 3519 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX101 rho : F), (dtkAccY101 rho : F)⟩
        ⟨(rho 3518 : F), (rho 3519 : F)⟩
        ⟨(dtkAccX102 rho : F), (dtkAccY102 rho : F)⟩
        ⟨(rho 3531 : F), (rho 3532 : F)⟩ := by
  obtain ⟨r4026, r4027, r4028, r4029, r4030, r4031, r4032, r4033, r4034, r4035, r4036, r4037, r4038⟩ := dtk_rows101 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4026 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc591 at r4026
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4026
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4027 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc592 at r4027
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4027
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4028 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc593 at r4028
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4028
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4029 at r4029
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4030 at r4030
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4031 at r4031
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4032 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc594 at r4032
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4032
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4033 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc595 at r4033
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4033
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4034 at r4034
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4035 at r4035
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4036 at r4036
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4037 at r4037
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4038 at r4038
  have hrung101 (bit : Bool) (hbit : rho 1084 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX101 rho : F), (dtkAccY101 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3518 : F), (rho 3519 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX101 rho : F), (dtkAccY101 rho : F)⟩
        ⟨(rho 3518 : F), (rho 3519 : F)⟩
        ⟨(dtkAccX102 rho : F), (dtkAccY102 rho : F)⟩
        ⟨(rho 3531 : F), (rho 3532 : F)⟩ := by
    have hnextx : dtkAccX102 rho = dtkAccX101 rho + rho 3526 := by
      unfold dtkAccX102 dtkAccX101
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 100]
      ring
    have hnexty : dtkAccY102 rho = dtkAccY101 rho + rho 3527 := by
      unfold dtkAccY102 dtkAccY101
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 101]
      ring
    have ha0 : (rho 3518 + rho 3519) * (dtkAccX101 rho + dtkAccY101 rho) = rho 3520 := by
      unfold dtkAccX101 dtkAccY101
      linear_combination r4026
    have ha1 : rho 3519 * dtkAccX101 rho = rho 3521 := by
      unfold dtkAccX101
      linear_combination r4027
    have ha2 : rho 3518 * dtkAccY101 rho = rho 3522 := by
      unfold dtkAccY101
      linear_combination r4028
    have ha3 : 3021 * rho 3521 * rho 3522 = rho 3523 := by
      linear_combination r4029
    have ha4 : rho 3524 * (1 + rho 3523) = rho 3521 + rho 3522 := by
      linear_combination r4030
    have ha5 : rho 3525 * (1 - rho 3523) = rho 3520 - rho 3521 - rho 3522 := by
      linear_combination r4031
    have haddx :
        rho 3524 * (1 + 3021 * (rho 3519 * dtkAccX101 rho) * (rho 3518 * dtkAccY101 rho)) =
          rho 3519 * dtkAccX101 rho + rho 3518 * dtkAccY101 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3525 * (1 - 3021 * (rho 3519 * dtkAccX101 rho) * (rho 3518 * dtkAccY101 rho)) =
          (-1) * (rho 3519 * dtkAccX101 rho) - rho 3518 * dtkAccY101 rho +
            (dtkAccY101 rho - dtkAccX101 rho * (-1)) * (rho 3518 + rho 3519) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3525 * (1 - rho 3523) = rho 3520 - rho 3521 - rho 3522 := ha5
        _ = (-1) * rho 3521 - rho 3522 + (dtkAccY101 rho - dtkAccX101 rho * (-1)) * (rho 3518 + rho 3519) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX102 rho = dtkAccX101 rho - Bool.toZMod bit * (dtkAccX101 rho - rho 3524) := by
      have hd : rho 3526 = Bool.toZMod bit * (rho 3524 - dtkAccX101 rho) := by
        rw [← hbit]
        unfold dtkAccX101
        linear_combination -r4032
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY102 rho = dtkAccY101 rho - Bool.toZMod bit * (dtkAccY101 rho - rho 3525) := by
      have hd : rho 3527 = Bool.toZMod bit * (rho 3525 - dtkAccY101 rho) := by
        rw [← hbit]
        unfold dtkAccY101
        linear_combination -r4033
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3518 * rho 3519 = rho 3528 := by linear_combination r4034
    have hd1 : rho 3518 * rho 3518 = rho 3529 := by linear_combination r4035
    have hd2 : rho 3519 * rho 3519 = rho 3530 := by linear_combination r4036
    have hd3 : rho 3531 * (rho 3519 * rho 3519 + rho 3518 * rho 3518 * (-1)) = 2 * (rho 3518 * rho 3519) := by
      rw [hd0, hd1, hd2]
      linear_combination r4037
    have hd4 : rho 3532 * (2 - (rho 3519 * rho 3519 + rho 3518 * rho 3518 * (-1))) = rho 3519 * rho 3519 - rho 3518 * rho 3518 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4038
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX101 rho : F), (dtkAccY101 rho : F)⟩
      ⟨(rho 3518 : F), (rho 3519 : F)⟩
      ⟨(rho 3524 : F), (rho 3525 : F)⟩
      ⟨(dtkAccX102 rho : F), (dtkAccY102 rho : F)⟩
      ⟨(rho 3531 : F), (rho 3532 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung101

theorem dtk_hstep_c16 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (983 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 96 ≤ i → i < 102 →
      EdwardsBridge.onCurve (dtkLadderAccState rho i) →
      EdwardsBridge.onCurve (dtkLadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (dtkLadderAccState rho i) (dtkLadderCurState rho i)
        (dtkLadderAccState rho (i + 1)) (dtkLadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact dtk_rung96 rho h bits[96]! (hbitAt 96 (by omega)) hacc hcur
  · exact dtk_rung97 rho h bits[97]! (hbitAt 97 (by omega)) hacc hcur
  · exact dtk_rung98 rho h bits[98]! (hbitAt 98 (by omega)) hacc hcur
  · exact dtk_rung99 rho h bits[99]! (hbitAt 99 (by omega)) hacc hcur
  · exact dtk_rung100 rho h bits[100]! (hbitAt 100 (by omega)) hacc hcur
  · exact dtk_rung101 rho h bits[101]! (hbitAt 101 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport
