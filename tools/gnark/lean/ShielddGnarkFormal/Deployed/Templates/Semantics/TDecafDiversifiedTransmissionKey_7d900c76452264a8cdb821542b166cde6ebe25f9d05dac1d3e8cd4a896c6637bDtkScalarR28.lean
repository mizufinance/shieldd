import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDtkScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs

theorem dtk_rows168 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4915 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4916 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4917 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4918 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4919 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4920 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4921 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4922 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4923 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4924 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4925 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4926 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4927 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4928 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p61, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart61 at p61
  rcases p61 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4915, r4916, r4917, r4918, r4919, r4920, r4921, r4922, r4923, r4924, r4925, r4926, r4927, r4928, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4915, r4916, r4917, r4918, r4919, r4920, r4921, r4922, r4923, r4924, r4925, r4926, r4927, r4928⟩

theorem dtk_rung168 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1151 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX168 rho : F), (dtkAccY168 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4407 : F), (rho 4408 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX168 rho : F), (dtkAccY168 rho : F)⟩
        ⟨(rho 4407 : F), (rho 4408 : F)⟩
        ⟨(dtkAccX169 rho : F), (dtkAccY169 rho : F)⟩
        ⟨(rho 4421 : F), (rho 4422 : F)⟩ := by
  obtain ⟨r4915, r4916, r4917, r4918, r4919, r4920, r4921, r4922, r4923, r4924, r4925, r4926, r4927, r4928⟩ := dtk_rows168 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4915 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc926 at r4915
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4915
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4916 at r4916
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4917 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc927 at r4917
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4917
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4918 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc928 at r4918
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4918
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4919 at r4919
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4920 at r4920
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4921 at r4921
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4922 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc929 at r4922
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4922
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4923 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc930 at r4923
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4923
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4924 at r4924
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4925 at r4925
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4926 at r4926
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4927 at r4927
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4928 at r4928
  have hrung168 (bit : Bool) (hbit : rho 1151 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX168 rho : F), (dtkAccY168 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4407 : F), (rho 4408 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX168 rho : F), (dtkAccY168 rho : F)⟩
        ⟨(rho 4407 : F), (rho 4408 : F)⟩
        ⟨(dtkAccX169 rho : F), (dtkAccY169 rho : F)⟩
        ⟨(rho 4421 : F), (rho 4422 : F)⟩ := by
    have hnextx : dtkAccX169 rho = dtkAccX168 rho + rho 4416 := by
      unfold dtkAccX169 dtkAccX168
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 18]
      ring
    have hnexty : dtkAccY169 rho = dtkAccY168 rho + rho 4417 := by
      unfold dtkAccY169 dtkAccY168
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4165 14 18]
      ring
    have hsum : dtkAccX168 rho + dtkAccY168 rho = rho 4409 := by
      unfold dtkAccX168 dtkAccY168
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 150] at r4915
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_add rho 4164 14 1 17, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 4164 14]
      linear_combination r4915
    have ha0 : (rho 4407 + rho 4408) * (dtkAccX168 rho + dtkAccY168 rho) = rho 4410 := by
      rw [hsum]
      linear_combination r4916
    have ha1 : rho 4408 * dtkAccX168 rho = rho 4411 := by
      unfold dtkAccX168
      linear_combination r4917
    have ha2 : rho 4407 * dtkAccY168 rho = rho 4412 := by
      unfold dtkAccY168
      linear_combination r4918
    have ha3 : 3021 * rho 4411 * rho 4412 = rho 4413 := by
      linear_combination r4919
    have ha4 : rho 4414 * (1 + rho 4413) = rho 4411 + rho 4412 := by
      linear_combination r4920
    have ha5 : rho 4415 * (1 - rho 4413) = rho 4410 - rho 4411 - rho 4412 := by
      linear_combination r4921
    have haddx :
        rho 4414 * (1 + 3021 * (rho 4408 * dtkAccX168 rho) * (rho 4407 * dtkAccY168 rho)) =
          rho 4408 * dtkAccX168 rho + rho 4407 * dtkAccY168 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4415 * (1 - 3021 * (rho 4408 * dtkAccX168 rho) * (rho 4407 * dtkAccY168 rho)) =
          (-1) * (rho 4408 * dtkAccX168 rho) - rho 4407 * dtkAccY168 rho +
            (dtkAccY168 rho - dtkAccX168 rho * (-1)) * (rho 4407 + rho 4408) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4415 * (1 - rho 4413) = rho 4410 - rho 4411 - rho 4412 := ha5
        _ = (-1) * rho 4411 - rho 4412 + (dtkAccY168 rho - dtkAccX168 rho * (-1)) * (rho 4407 + rho 4408) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX169 rho = dtkAccX168 rho - Bool.toZMod bit * (dtkAccX168 rho - rho 4414) := by
      have hd : rho 4416 = Bool.toZMod bit * (rho 4414 - dtkAccX168 rho) := by
        rw [← hbit]
        unfold dtkAccX168
        linear_combination -r4922
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY169 rho = dtkAccY168 rho - Bool.toZMod bit * (dtkAccY168 rho - rho 4415) := by
      have hd : rho 4417 = Bool.toZMod bit * (rho 4415 - dtkAccY168 rho) := by
        rw [← hbit]
        unfold dtkAccY168
        linear_combination -r4923
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4407 * rho 4408 = rho 4418 := by linear_combination r4924
    have hd1 : rho 4407 * rho 4407 = rho 4419 := by linear_combination r4925
    have hd2 : rho 4408 * rho 4408 = rho 4420 := by linear_combination r4926
    have hd3 : rho 4421 * (rho 4408 * rho 4408 + rho 4407 * rho 4407 * (-1)) = 2 * (rho 4407 * rho 4408) := by
      rw [hd0, hd1, hd2]
      linear_combination r4927
    have hd4 : rho 4422 * (2 - (rho 4408 * rho 4408 + rho 4407 * rho 4407 * (-1))) = rho 4408 * rho 4408 - rho 4407 * rho 4407 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4928
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX168 rho : F), (dtkAccY168 rho : F)⟩
      ⟨(rho 4407 : F), (rho 4408 : F)⟩
      ⟨(rho 4414 : F), (rho 4415 : F)⟩
      ⟨(dtkAccX169 rho : F), (dtkAccY169 rho : F)⟩
      ⟨(rho 4421 : F), (rho 4422 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung168

theorem dtk_rows169 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4929 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4930 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4931 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4932 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4933 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4934 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4935 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4936 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4937 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4938 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4939 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4940 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4941 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4942 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p61, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart61 at p61
  rcases p61 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4929, r4930, r4931, r4932, r4933, r4934, r4935, r4936, r4937, r4938, r4939, r4940, r4941, r4942, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4929, r4930, r4931, r4932, r4933, r4934, r4935, r4936, r4937, r4938, r4939, r4940, r4941, r4942⟩

theorem dtk_rung169 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1152 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX169 rho : F), (dtkAccY169 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4421 : F), (rho 4422 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX169 rho : F), (dtkAccY169 rho : F)⟩
        ⟨(rho 4421 : F), (rho 4422 : F)⟩
        ⟨(dtkAccX170 rho : F), (dtkAccY170 rho : F)⟩
        ⟨(rho 4435 : F), (rho 4436 : F)⟩ := by
  obtain ⟨r4929, r4930, r4931, r4932, r4933, r4934, r4935, r4936, r4937, r4938, r4939, r4940, r4941, r4942⟩ := dtk_rows169 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4929 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc931 at r4929
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4929
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4930 at r4930
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4931 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc932 at r4931
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4931
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4932 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc933 at r4932
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4932
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4933 at r4933
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4934 at r4934
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4935 at r4935
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4936 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc934 at r4936
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4936
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4937 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc935 at r4937
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4937
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4938 at r4938
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4939 at r4939
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4940 at r4940
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4941 at r4941
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4942 at r4942
  have hrung169 (bit : Bool) (hbit : rho 1152 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX169 rho : F), (dtkAccY169 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4421 : F), (rho 4422 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX169 rho : F), (dtkAccY169 rho : F)⟩
        ⟨(rho 4421 : F), (rho 4422 : F)⟩
        ⟨(dtkAccX170 rho : F), (dtkAccY170 rho : F)⟩
        ⟨(rho 4435 : F), (rho 4436 : F)⟩ := by
    have hnextx : dtkAccX170 rho = dtkAccX169 rho + rho 4430 := by
      unfold dtkAccX170 dtkAccX169
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 19]
      ring
    have hnexty : dtkAccY170 rho = dtkAccY169 rho + rho 4431 := by
      unfold dtkAccY170 dtkAccY169
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4165 14 19]
      ring
    have hsum : dtkAccX169 rho + dtkAccY169 rho = rho 4423 := by
      unfold dtkAccX169 dtkAccY169
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 150] at r4929
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_add rho 4164 14 1 18, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 4164 14]
      linear_combination r4929
    have ha0 : (rho 4421 + rho 4422) * (dtkAccX169 rho + dtkAccY169 rho) = rho 4424 := by
      rw [hsum]
      linear_combination r4930
    have ha1 : rho 4422 * dtkAccX169 rho = rho 4425 := by
      unfold dtkAccX169
      linear_combination r4931
    have ha2 : rho 4421 * dtkAccY169 rho = rho 4426 := by
      unfold dtkAccY169
      linear_combination r4932
    have ha3 : 3021 * rho 4425 * rho 4426 = rho 4427 := by
      linear_combination r4933
    have ha4 : rho 4428 * (1 + rho 4427) = rho 4425 + rho 4426 := by
      linear_combination r4934
    have ha5 : rho 4429 * (1 - rho 4427) = rho 4424 - rho 4425 - rho 4426 := by
      linear_combination r4935
    have haddx :
        rho 4428 * (1 + 3021 * (rho 4422 * dtkAccX169 rho) * (rho 4421 * dtkAccY169 rho)) =
          rho 4422 * dtkAccX169 rho + rho 4421 * dtkAccY169 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4429 * (1 - 3021 * (rho 4422 * dtkAccX169 rho) * (rho 4421 * dtkAccY169 rho)) =
          (-1) * (rho 4422 * dtkAccX169 rho) - rho 4421 * dtkAccY169 rho +
            (dtkAccY169 rho - dtkAccX169 rho * (-1)) * (rho 4421 + rho 4422) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4429 * (1 - rho 4427) = rho 4424 - rho 4425 - rho 4426 := ha5
        _ = (-1) * rho 4425 - rho 4426 + (dtkAccY169 rho - dtkAccX169 rho * (-1)) * (rho 4421 + rho 4422) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX170 rho = dtkAccX169 rho - Bool.toZMod bit * (dtkAccX169 rho - rho 4428) := by
      have hd : rho 4430 = Bool.toZMod bit * (rho 4428 - dtkAccX169 rho) := by
        rw [← hbit]
        unfold dtkAccX169
        linear_combination -r4936
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY170 rho = dtkAccY169 rho - Bool.toZMod bit * (dtkAccY169 rho - rho 4429) := by
      have hd : rho 4431 = Bool.toZMod bit * (rho 4429 - dtkAccY169 rho) := by
        rw [← hbit]
        unfold dtkAccY169
        linear_combination -r4937
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4421 * rho 4422 = rho 4432 := by linear_combination r4938
    have hd1 : rho 4421 * rho 4421 = rho 4433 := by linear_combination r4939
    have hd2 : rho 4422 * rho 4422 = rho 4434 := by linear_combination r4940
    have hd3 : rho 4435 * (rho 4422 * rho 4422 + rho 4421 * rho 4421 * (-1)) = 2 * (rho 4421 * rho 4422) := by
      rw [hd0, hd1, hd2]
      linear_combination r4941
    have hd4 : rho 4436 * (2 - (rho 4422 * rho 4422 + rho 4421 * rho 4421 * (-1))) = rho 4422 * rho 4422 - rho 4421 * rho 4421 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4942
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX169 rho : F), (dtkAccY169 rho : F)⟩
      ⟨(rho 4421 : F), (rho 4422 : F)⟩
      ⟨(rho 4428 : F), (rho 4429 : F)⟩
      ⟨(dtkAccX170 rho : F), (dtkAccY170 rho : F)⟩
      ⟨(rho 4435 : F), (rho 4436 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung169

theorem dtk_rows170 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4943 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4944 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4945 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4946 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4947 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4948 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4949 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4950 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4951 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4952 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4953 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4954 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4955 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4956 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p61, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart61 at p61
  rcases p61 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4943, r4944, r4945, r4946, r4947, r4948, r4949, r4950, r4951, r4952, r4953, r4954, r4955, r4956, _, _, _⟩
  exact ⟨r4943, r4944, r4945, r4946, r4947, r4948, r4949, r4950, r4951, r4952, r4953, r4954, r4955, r4956⟩

theorem dtk_rung170 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1153 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX170 rho : F), (dtkAccY170 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4435 : F), (rho 4436 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX170 rho : F), (dtkAccY170 rho : F)⟩
        ⟨(rho 4435 : F), (rho 4436 : F)⟩
        ⟨(dtkAccX171 rho : F), (dtkAccY171 rho : F)⟩
        ⟨(rho 4449 : F), (rho 4450 : F)⟩ := by
  obtain ⟨r4943, r4944, r4945, r4946, r4947, r4948, r4949, r4950, r4951, r4952, r4953, r4954, r4955, r4956⟩ := dtk_rows170 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4943 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc936 at r4943
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4943
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4944 at r4944
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4945 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc937 at r4945
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4945
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4946 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc938 at r4946
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4946
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4947 at r4947
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4948 at r4948
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4949 at r4949
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4950 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc939 at r4950
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4950
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4951 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc940 at r4951
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4951
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4952 at r4952
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4953 at r4953
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4954 at r4954
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4955 at r4955
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4956 at r4956
  have hrung170 (bit : Bool) (hbit : rho 1153 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX170 rho : F), (dtkAccY170 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4435 : F), (rho 4436 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX170 rho : F), (dtkAccY170 rho : F)⟩
        ⟨(rho 4435 : F), (rho 4436 : F)⟩
        ⟨(dtkAccX171 rho : F), (dtkAccY171 rho : F)⟩
        ⟨(rho 4449 : F), (rho 4450 : F)⟩ := by
    have hnextx : dtkAccX171 rho = dtkAccX170 rho + rho 4444 := by
      unfold dtkAccX171 dtkAccX170
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 20]
      ring
    have hnexty : dtkAccY171 rho = dtkAccY170 rho + rho 4445 := by
      unfold dtkAccY171 dtkAccY170
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4165 14 20]
      ring
    have hsum : dtkAccX170 rho + dtkAccY170 rho = rho 4437 := by
      unfold dtkAccX170 dtkAccY170
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 150] at r4943
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_add rho 4164 14 1 19, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 4164 14]
      linear_combination r4943
    have ha0 : (rho 4435 + rho 4436) * (dtkAccX170 rho + dtkAccY170 rho) = rho 4438 := by
      rw [hsum]
      linear_combination r4944
    have ha1 : rho 4436 * dtkAccX170 rho = rho 4439 := by
      unfold dtkAccX170
      linear_combination r4945
    have ha2 : rho 4435 * dtkAccY170 rho = rho 4440 := by
      unfold dtkAccY170
      linear_combination r4946
    have ha3 : 3021 * rho 4439 * rho 4440 = rho 4441 := by
      linear_combination r4947
    have ha4 : rho 4442 * (1 + rho 4441) = rho 4439 + rho 4440 := by
      linear_combination r4948
    have ha5 : rho 4443 * (1 - rho 4441) = rho 4438 - rho 4439 - rho 4440 := by
      linear_combination r4949
    have haddx :
        rho 4442 * (1 + 3021 * (rho 4436 * dtkAccX170 rho) * (rho 4435 * dtkAccY170 rho)) =
          rho 4436 * dtkAccX170 rho + rho 4435 * dtkAccY170 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4443 * (1 - 3021 * (rho 4436 * dtkAccX170 rho) * (rho 4435 * dtkAccY170 rho)) =
          (-1) * (rho 4436 * dtkAccX170 rho) - rho 4435 * dtkAccY170 rho +
            (dtkAccY170 rho - dtkAccX170 rho * (-1)) * (rho 4435 + rho 4436) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4443 * (1 - rho 4441) = rho 4438 - rho 4439 - rho 4440 := ha5
        _ = (-1) * rho 4439 - rho 4440 + (dtkAccY170 rho - dtkAccX170 rho * (-1)) * (rho 4435 + rho 4436) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX171 rho = dtkAccX170 rho - Bool.toZMod bit * (dtkAccX170 rho - rho 4442) := by
      have hd : rho 4444 = Bool.toZMod bit * (rho 4442 - dtkAccX170 rho) := by
        rw [← hbit]
        unfold dtkAccX170
        linear_combination -r4950
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY171 rho = dtkAccY170 rho - Bool.toZMod bit * (dtkAccY170 rho - rho 4443) := by
      have hd : rho 4445 = Bool.toZMod bit * (rho 4443 - dtkAccY170 rho) := by
        rw [← hbit]
        unfold dtkAccY170
        linear_combination -r4951
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4435 * rho 4436 = rho 4446 := by linear_combination r4952
    have hd1 : rho 4435 * rho 4435 = rho 4447 := by linear_combination r4953
    have hd2 : rho 4436 * rho 4436 = rho 4448 := by linear_combination r4954
    have hd3 : rho 4449 * (rho 4436 * rho 4436 + rho 4435 * rho 4435 * (-1)) = 2 * (rho 4435 * rho 4436) := by
      rw [hd0, hd1, hd2]
      linear_combination r4955
    have hd4 : rho 4450 * (2 - (rho 4436 * rho 4436 + rho 4435 * rho 4435 * (-1))) = rho 4436 * rho 4436 - rho 4435 * rho 4435 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4956
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX170 rho : F), (dtkAccY170 rho : F)⟩
      ⟨(rho 4435 : F), (rho 4436 : F)⟩
      ⟨(rho 4442 : F), (rho 4443 : F)⟩
      ⟨(dtkAccX171 rho : F), (dtkAccY171 rho : F)⟩
      ⟨(rho 4449 : F), (rho 4450 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung170

theorem dtk_rows171 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4957 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4958 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4959 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4960 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4961 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4962 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4963 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4964 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4965 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4966 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4967 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4968 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4969 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4970 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p61, p62, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart61 at p61
  rcases p61 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4957, r4958, r4959⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart62 at p62
  rcases p62 with ⟨r4960, r4961, r4962, r4963, r4964, r4965, r4966, r4967, r4968, r4969, r4970, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4957, r4958, r4959, r4960, r4961, r4962, r4963, r4964, r4965, r4966, r4967, r4968, r4969, r4970⟩

theorem dtk_rung171 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1154 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX171 rho : F), (dtkAccY171 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4449 : F), (rho 4450 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX171 rho : F), (dtkAccY171 rho : F)⟩
        ⟨(rho 4449 : F), (rho 4450 : F)⟩
        ⟨(dtkAccX172 rho : F), (dtkAccY172 rho : F)⟩
        ⟨(rho 4463 : F), (rho 4464 : F)⟩ := by
  obtain ⟨r4957, r4958, r4959, r4960, r4961, r4962, r4963, r4964, r4965, r4966, r4967, r4968, r4969, r4970⟩ := dtk_rows171 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4957 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc941 at r4957
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4957
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4958 at r4958
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4959 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc942 at r4959
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4959
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4960 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc943 at r4960
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4960
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4961 at r4961
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4962 at r4962
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4963 at r4963
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4964 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc944 at r4964
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4964
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4965 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc945 at r4965
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4965
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4966 at r4966
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4967 at r4967
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4968 at r4968
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4969 at r4969
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4970 at r4970
  have hrung171 (bit : Bool) (hbit : rho 1154 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX171 rho : F), (dtkAccY171 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4449 : F), (rho 4450 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX171 rho : F), (dtkAccY171 rho : F)⟩
        ⟨(rho 4449 : F), (rho 4450 : F)⟩
        ⟨(dtkAccX172 rho : F), (dtkAccY172 rho : F)⟩
        ⟨(rho 4463 : F), (rho 4464 : F)⟩ := by
    have hnextx : dtkAccX172 rho = dtkAccX171 rho + rho 4458 := by
      unfold dtkAccX172 dtkAccX171
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 21]
      ring
    have hnexty : dtkAccY172 rho = dtkAccY171 rho + rho 4459 := by
      unfold dtkAccY172 dtkAccY171
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4165 14 21]
      ring
    have hsum : dtkAccX171 rho + dtkAccY171 rho = rho 4451 := by
      unfold dtkAccX171 dtkAccY171
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 150] at r4957
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_add rho 4164 14 1 20, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 4164 14]
      linear_combination r4957
    have ha0 : (rho 4449 + rho 4450) * (dtkAccX171 rho + dtkAccY171 rho) = rho 4452 := by
      rw [hsum]
      linear_combination r4958
    have ha1 : rho 4450 * dtkAccX171 rho = rho 4453 := by
      unfold dtkAccX171
      linear_combination r4959
    have ha2 : rho 4449 * dtkAccY171 rho = rho 4454 := by
      unfold dtkAccY171
      linear_combination r4960
    have ha3 : 3021 * rho 4453 * rho 4454 = rho 4455 := by
      linear_combination r4961
    have ha4 : rho 4456 * (1 + rho 4455) = rho 4453 + rho 4454 := by
      linear_combination r4962
    have ha5 : rho 4457 * (1 - rho 4455) = rho 4452 - rho 4453 - rho 4454 := by
      linear_combination r4963
    have haddx :
        rho 4456 * (1 + 3021 * (rho 4450 * dtkAccX171 rho) * (rho 4449 * dtkAccY171 rho)) =
          rho 4450 * dtkAccX171 rho + rho 4449 * dtkAccY171 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4457 * (1 - 3021 * (rho 4450 * dtkAccX171 rho) * (rho 4449 * dtkAccY171 rho)) =
          (-1) * (rho 4450 * dtkAccX171 rho) - rho 4449 * dtkAccY171 rho +
            (dtkAccY171 rho - dtkAccX171 rho * (-1)) * (rho 4449 + rho 4450) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4457 * (1 - rho 4455) = rho 4452 - rho 4453 - rho 4454 := ha5
        _ = (-1) * rho 4453 - rho 4454 + (dtkAccY171 rho - dtkAccX171 rho * (-1)) * (rho 4449 + rho 4450) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX172 rho = dtkAccX171 rho - Bool.toZMod bit * (dtkAccX171 rho - rho 4456) := by
      have hd : rho 4458 = Bool.toZMod bit * (rho 4456 - dtkAccX171 rho) := by
        rw [← hbit]
        unfold dtkAccX171
        linear_combination -r4964
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY172 rho = dtkAccY171 rho - Bool.toZMod bit * (dtkAccY171 rho - rho 4457) := by
      have hd : rho 4459 = Bool.toZMod bit * (rho 4457 - dtkAccY171 rho) := by
        rw [← hbit]
        unfold dtkAccY171
        linear_combination -r4965
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4449 * rho 4450 = rho 4460 := by linear_combination r4966
    have hd1 : rho 4449 * rho 4449 = rho 4461 := by linear_combination r4967
    have hd2 : rho 4450 * rho 4450 = rho 4462 := by linear_combination r4968
    have hd3 : rho 4463 * (rho 4450 * rho 4450 + rho 4449 * rho 4449 * (-1)) = 2 * (rho 4449 * rho 4450) := by
      rw [hd0, hd1, hd2]
      linear_combination r4969
    have hd4 : rho 4464 * (2 - (rho 4450 * rho 4450 + rho 4449 * rho 4449 * (-1))) = rho 4450 * rho 4450 - rho 4449 * rho 4449 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4970
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX171 rho : F), (dtkAccY171 rho : F)⟩
      ⟨(rho 4449 : F), (rho 4450 : F)⟩
      ⟨(rho 4456 : F), (rho 4457 : F)⟩
      ⟨(dtkAccX172 rho : F), (dtkAccY172 rho : F)⟩
      ⟨(rho 4463 : F), (rho 4464 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung171

theorem dtk_rows172 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4971 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4972 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4973 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4974 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4975 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4976 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4977 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4978 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4979 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4980 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4981 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4982 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4983 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4984 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p62, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart62 at p62
  rcases p62 with ⟨_, _, _, _, _, _, _, _, _, _, _, r4971, r4972, r4973, r4974, r4975, r4976, r4977, r4978, r4979, r4980, r4981, r4982, r4983, r4984, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4971, r4972, r4973, r4974, r4975, r4976, r4977, r4978, r4979, r4980, r4981, r4982, r4983, r4984⟩

theorem dtk_rung172 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1155 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX172 rho : F), (dtkAccY172 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4463 : F), (rho 4464 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX172 rho : F), (dtkAccY172 rho : F)⟩
        ⟨(rho 4463 : F), (rho 4464 : F)⟩
        ⟨(dtkAccX173 rho : F), (dtkAccY173 rho : F)⟩
        ⟨(rho 4477 : F), (rho 4478 : F)⟩ := by
  obtain ⟨r4971, r4972, r4973, r4974, r4975, r4976, r4977, r4978, r4979, r4980, r4981, r4982, r4983, r4984⟩ := dtk_rows172 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4971 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc946 at r4971
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4971
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4972 at r4972
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4973 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc947 at r4973
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4973
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4974 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc948 at r4974
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4974
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4975 at r4975
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4976 at r4976
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4977 at r4977
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4978 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc949 at r4978
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4978
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4979 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc950 at r4979
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4979
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4980 at r4980
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4981 at r4981
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4982 at r4982
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4983 at r4983
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4984 at r4984
  have hrung172 (bit : Bool) (hbit : rho 1155 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX172 rho : F), (dtkAccY172 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4463 : F), (rho 4464 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX172 rho : F), (dtkAccY172 rho : F)⟩
        ⟨(rho 4463 : F), (rho 4464 : F)⟩
        ⟨(dtkAccX173 rho : F), (dtkAccY173 rho : F)⟩
        ⟨(rho 4477 : F), (rho 4478 : F)⟩ := by
    have hnextx : dtkAccX173 rho = dtkAccX172 rho + rho 4472 := by
      unfold dtkAccX173 dtkAccX172
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 22]
      ring
    have hnexty : dtkAccY173 rho = dtkAccY172 rho + rho 4473 := by
      unfold dtkAccY173 dtkAccY172
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4165 14 22]
      ring
    have hsum : dtkAccX172 rho + dtkAccY172 rho = rho 4465 := by
      unfold dtkAccX172 dtkAccY172
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 150] at r4971
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_add rho 4164 14 1 21, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 4164 14]
      linear_combination r4971
    have ha0 : (rho 4463 + rho 4464) * (dtkAccX172 rho + dtkAccY172 rho) = rho 4466 := by
      rw [hsum]
      linear_combination r4972
    have ha1 : rho 4464 * dtkAccX172 rho = rho 4467 := by
      unfold dtkAccX172
      linear_combination r4973
    have ha2 : rho 4463 * dtkAccY172 rho = rho 4468 := by
      unfold dtkAccY172
      linear_combination r4974
    have ha3 : 3021 * rho 4467 * rho 4468 = rho 4469 := by
      linear_combination r4975
    have ha4 : rho 4470 * (1 + rho 4469) = rho 4467 + rho 4468 := by
      linear_combination r4976
    have ha5 : rho 4471 * (1 - rho 4469) = rho 4466 - rho 4467 - rho 4468 := by
      linear_combination r4977
    have haddx :
        rho 4470 * (1 + 3021 * (rho 4464 * dtkAccX172 rho) * (rho 4463 * dtkAccY172 rho)) =
          rho 4464 * dtkAccX172 rho + rho 4463 * dtkAccY172 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4471 * (1 - 3021 * (rho 4464 * dtkAccX172 rho) * (rho 4463 * dtkAccY172 rho)) =
          (-1) * (rho 4464 * dtkAccX172 rho) - rho 4463 * dtkAccY172 rho +
            (dtkAccY172 rho - dtkAccX172 rho * (-1)) * (rho 4463 + rho 4464) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4471 * (1 - rho 4469) = rho 4466 - rho 4467 - rho 4468 := ha5
        _ = (-1) * rho 4467 - rho 4468 + (dtkAccY172 rho - dtkAccX172 rho * (-1)) * (rho 4463 + rho 4464) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX173 rho = dtkAccX172 rho - Bool.toZMod bit * (dtkAccX172 rho - rho 4470) := by
      have hd : rho 4472 = Bool.toZMod bit * (rho 4470 - dtkAccX172 rho) := by
        rw [← hbit]
        unfold dtkAccX172
        linear_combination -r4978
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY173 rho = dtkAccY172 rho - Bool.toZMod bit * (dtkAccY172 rho - rho 4471) := by
      have hd : rho 4473 = Bool.toZMod bit * (rho 4471 - dtkAccY172 rho) := by
        rw [← hbit]
        unfold dtkAccY172
        linear_combination -r4979
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4463 * rho 4464 = rho 4474 := by linear_combination r4980
    have hd1 : rho 4463 * rho 4463 = rho 4475 := by linear_combination r4981
    have hd2 : rho 4464 * rho 4464 = rho 4476 := by linear_combination r4982
    have hd3 : rho 4477 * (rho 4464 * rho 4464 + rho 4463 * rho 4463 * (-1)) = 2 * (rho 4463 * rho 4464) := by
      rw [hd0, hd1, hd2]
      linear_combination r4983
    have hd4 : rho 4478 * (2 - (rho 4464 * rho 4464 + rho 4463 * rho 4463 * (-1))) = rho 4464 * rho 4464 - rho 4463 * rho 4463 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4984
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX172 rho : F), (dtkAccY172 rho : F)⟩
      ⟨(rho 4463 : F), (rho 4464 : F)⟩
      ⟨(rho 4470 : F), (rho 4471 : F)⟩
      ⟨(dtkAccX173 rho : F), (dtkAccY173 rho : F)⟩
      ⟨(rho 4477 : F), (rho 4478 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung172

theorem dtk_rows173 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4985 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4986 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4987 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4988 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4989 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4990 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4991 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4992 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4993 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4994 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4995 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4996 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4997 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4998 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p62, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart62 at p62
  rcases p62 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4985, r4986, r4987, r4988, r4989, r4990, r4991, r4992, r4993, r4994, r4995, r4996, r4997, r4998, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4985, r4986, r4987, r4988, r4989, r4990, r4991, r4992, r4993, r4994, r4995, r4996, r4997, r4998⟩

theorem dtk_rung173 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1156 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX173 rho : F), (dtkAccY173 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4477 : F), (rho 4478 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX173 rho : F), (dtkAccY173 rho : F)⟩
        ⟨(rho 4477 : F), (rho 4478 : F)⟩
        ⟨(dtkAccX174 rho : F), (dtkAccY174 rho : F)⟩
        ⟨(rho 4491 : F), (rho 4492 : F)⟩ := by
  obtain ⟨r4985, r4986, r4987, r4988, r4989, r4990, r4991, r4992, r4993, r4994, r4995, r4996, r4997, r4998⟩ := dtk_rows173 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4985 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc951 at r4985
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4985
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4986 at r4986
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4987 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc952 at r4987
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4987
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4988 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc953 at r4988
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4988
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4989 at r4989
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4990 at r4990
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4991 at r4991
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4992 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc954 at r4992
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4992
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4993 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc955 at r4993
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4993
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4994 at r4994
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4995 at r4995
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4996 at r4996
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4997 at r4997
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4998 at r4998
  have hrung173 (bit : Bool) (hbit : rho 1156 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX173 rho : F), (dtkAccY173 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4477 : F), (rho 4478 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX173 rho : F), (dtkAccY173 rho : F)⟩
        ⟨(rho 4477 : F), (rho 4478 : F)⟩
        ⟨(dtkAccX174 rho : F), (dtkAccY174 rho : F)⟩
        ⟨(rho 4491 : F), (rho 4492 : F)⟩ := by
    have hnextx : dtkAccX174 rho = dtkAccX173 rho + rho 4486 := by
      unfold dtkAccX174 dtkAccX173
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 23]
      ring
    have hnexty : dtkAccY174 rho = dtkAccY173 rho + rho 4487 := by
      unfold dtkAccY174 dtkAccY173
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4165 14 23]
      ring
    have hsum : dtkAccX173 rho + dtkAccY173 rho = rho 4479 := by
      unfold dtkAccX173 dtkAccY173
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 150] at r4985
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_add rho 4164 14 1 22, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 4164 14]
      linear_combination r4985
    have ha0 : (rho 4477 + rho 4478) * (dtkAccX173 rho + dtkAccY173 rho) = rho 4480 := by
      rw [hsum]
      linear_combination r4986
    have ha1 : rho 4478 * dtkAccX173 rho = rho 4481 := by
      unfold dtkAccX173
      linear_combination r4987
    have ha2 : rho 4477 * dtkAccY173 rho = rho 4482 := by
      unfold dtkAccY173
      linear_combination r4988
    have ha3 : 3021 * rho 4481 * rho 4482 = rho 4483 := by
      linear_combination r4989
    have ha4 : rho 4484 * (1 + rho 4483) = rho 4481 + rho 4482 := by
      linear_combination r4990
    have ha5 : rho 4485 * (1 - rho 4483) = rho 4480 - rho 4481 - rho 4482 := by
      linear_combination r4991
    have haddx :
        rho 4484 * (1 + 3021 * (rho 4478 * dtkAccX173 rho) * (rho 4477 * dtkAccY173 rho)) =
          rho 4478 * dtkAccX173 rho + rho 4477 * dtkAccY173 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4485 * (1 - 3021 * (rho 4478 * dtkAccX173 rho) * (rho 4477 * dtkAccY173 rho)) =
          (-1) * (rho 4478 * dtkAccX173 rho) - rho 4477 * dtkAccY173 rho +
            (dtkAccY173 rho - dtkAccX173 rho * (-1)) * (rho 4477 + rho 4478) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4485 * (1 - rho 4483) = rho 4480 - rho 4481 - rho 4482 := ha5
        _ = (-1) * rho 4481 - rho 4482 + (dtkAccY173 rho - dtkAccX173 rho * (-1)) * (rho 4477 + rho 4478) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX174 rho = dtkAccX173 rho - Bool.toZMod bit * (dtkAccX173 rho - rho 4484) := by
      have hd : rho 4486 = Bool.toZMod bit * (rho 4484 - dtkAccX173 rho) := by
        rw [← hbit]
        unfold dtkAccX173
        linear_combination -r4992
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY174 rho = dtkAccY173 rho - Bool.toZMod bit * (dtkAccY173 rho - rho 4485) := by
      have hd : rho 4487 = Bool.toZMod bit * (rho 4485 - dtkAccY173 rho) := by
        rw [← hbit]
        unfold dtkAccY173
        linear_combination -r4993
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4477 * rho 4478 = rho 4488 := by linear_combination r4994
    have hd1 : rho 4477 * rho 4477 = rho 4489 := by linear_combination r4995
    have hd2 : rho 4478 * rho 4478 = rho 4490 := by linear_combination r4996
    have hd3 : rho 4491 * (rho 4478 * rho 4478 + rho 4477 * rho 4477 * (-1)) = 2 * (rho 4477 * rho 4478) := by
      rw [hd0, hd1, hd2]
      linear_combination r4997
    have hd4 : rho 4492 * (2 - (rho 4478 * rho 4478 + rho 4477 * rho 4477 * (-1))) = rho 4478 * rho 4478 - rho 4477 * rho 4477 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4998
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX173 rho : F), (dtkAccY173 rho : F)⟩
      ⟨(rho 4477 : F), (rho 4478 : F)⟩
      ⟨(rho 4484 : F), (rho 4485 : F)⟩
      ⟨(dtkAccX174 rho : F), (dtkAccY174 rho : F)⟩
      ⟨(rho 4491 : F), (rho 4492 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung173

theorem dtk_hstep_c28 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (983 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 168 ≤ i → i < 174 →
      EdwardsBridge.onCurve (dtkLadderAccState rho i) →
      EdwardsBridge.onCurve (dtkLadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (dtkLadderAccState rho i) (dtkLadderCurState rho i)
        (dtkLadderAccState rho (i + 1)) (dtkLadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact dtk_rung168 rho h bits[168]! (hbitAt 168 (by omega)) hacc hcur
  · exact dtk_rung169 rho h bits[169]! (hbitAt 169 (by omega)) hacc hcur
  · exact dtk_rung170 rho h bits[170]! (hbitAt 170 (by omega)) hacc hcur
  · exact dtk_rung171 rho h bits[171]! (hbitAt 171 (by omega)) hacc hcur
  · exact dtk_rung172 rho h bits[172]! (hbitAt 172 (by omega)) hacc hcur
  · exact dtk_rung173 rho h bits[173]! (hbitAt 173 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport
