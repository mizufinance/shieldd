import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDtkScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs

theorem dtk_rows156 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4747 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4748 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4749 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4750 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4751 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4752 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4753 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4754 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4755 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4756 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4757 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4758 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4759 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4760 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p59,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart59 at p59
  rcases p59 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4747, r4748, r4749, r4750, r4751, r4752, r4753, r4754, r4755, r4756, r4757, r4758, r4759, r4760, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4747, r4748, r4749, r4750, r4751, r4752, r4753, r4754, r4755, r4756, r4757, r4758, r4759, r4760⟩

theorem dtk_rung156 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1139 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX156 rho : F), (dtkAccY156 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4239 : F), (rho 4240 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX156 rho : F), (dtkAccY156 rho : F)⟩
        ⟨(rho 4239 : F), (rho 4240 : F)⟩
        ⟨(dtkAccX157 rho : F), (dtkAccY157 rho : F)⟩
        ⟨(rho 4253 : F), (rho 4254 : F)⟩ := by
  obtain ⟨r4747, r4748, r4749, r4750, r4751, r4752, r4753, r4754, r4755, r4756, r4757, r4758, r4759, r4760⟩ := dtk_rows156 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4747 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc866 at r4747
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4747
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4748 at r4748
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4749 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc867 at r4749
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4749
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4750 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc868 at r4750
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4750
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4751 at r4751
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4752 at r4752
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4753 at r4753
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4754 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc869 at r4754
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4754
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4755 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc870 at r4755
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4755
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4756 at r4756
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4757 at r4757
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4758 at r4758
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4759 at r4759
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4760 at r4760
  have hrung156 (bit : Bool) (hbit : rho 1139 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX156 rho : F), (dtkAccY156 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4239 : F), (rho 4240 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX156 rho : F), (dtkAccY156 rho : F)⟩
        ⟨(rho 4239 : F), (rho 4240 : F)⟩
        ⟨(dtkAccX157 rho : F), (dtkAccY157 rho : F)⟩
        ⟨(rho 4253 : F), (rho 4254 : F)⟩ := by
    have hnextx : dtkAccX157 rho = dtkAccX156 rho + rho 4248 := by
      unfold dtkAccX157 dtkAccX156
      ring
    have hnexty : dtkAccY157 rho = dtkAccY156 rho + rho 4249 := by
      unfold dtkAccY157 dtkAccY156
      ring
    have hsum : dtkAccX156 rho + dtkAccY156 rho = rho 4241 := by
      unfold dtkAccX156 dtkAccY156
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 150] at r4747
      linear_combination r4747
    have ha0 : (rho 4239 + rho 4240) * (dtkAccX156 rho + dtkAccY156 rho) = rho 4242 := by
      rw [hsum]
      linear_combination r4748
    have ha1 : rho 4240 * dtkAccX156 rho = rho 4243 := by
      unfold dtkAccX156
      linear_combination r4749
    have ha2 : rho 4239 * dtkAccY156 rho = rho 4244 := by
      unfold dtkAccY156
      linear_combination r4750
    have ha3 : 3021 * rho 4243 * rho 4244 = rho 4245 := by
      linear_combination r4751
    have ha4 : rho 4246 * (1 + rho 4245) = rho 4243 + rho 4244 := by
      linear_combination r4752
    have ha5 : rho 4247 * (1 - rho 4245) = rho 4242 - rho 4243 - rho 4244 := by
      linear_combination r4753
    have haddx :
        rho 4246 * (1 + 3021 * (rho 4240 * dtkAccX156 rho) * (rho 4239 * dtkAccY156 rho)) =
          rho 4240 * dtkAccX156 rho + rho 4239 * dtkAccY156 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4247 * (1 - 3021 * (rho 4240 * dtkAccX156 rho) * (rho 4239 * dtkAccY156 rho)) =
          (-1) * (rho 4240 * dtkAccX156 rho) - rho 4239 * dtkAccY156 rho +
            (dtkAccY156 rho - dtkAccX156 rho * (-1)) * (rho 4239 + rho 4240) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4247 * (1 - rho 4245) = rho 4242 - rho 4243 - rho 4244 := ha5
        _ = (-1) * rho 4243 - rho 4244 + (dtkAccY156 rho - dtkAccX156 rho * (-1)) * (rho 4239 + rho 4240) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX157 rho = dtkAccX156 rho - Bool.toZMod bit * (dtkAccX156 rho - rho 4246) := by
      have hd : rho 4248 = Bool.toZMod bit * (rho 4246 - dtkAccX156 rho) := by
        rw [← hbit]
        unfold dtkAccX156
        linear_combination -r4754
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY157 rho = dtkAccY156 rho - Bool.toZMod bit * (dtkAccY156 rho - rho 4247) := by
      have hd : rho 4249 = Bool.toZMod bit * (rho 4247 - dtkAccY156 rho) := by
        rw [← hbit]
        unfold dtkAccY156
        linear_combination -r4755
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4239 * rho 4240 = rho 4250 := by linear_combination r4756
    have hd1 : rho 4239 * rho 4239 = rho 4251 := by linear_combination r4757
    have hd2 : rho 4240 * rho 4240 = rho 4252 := by linear_combination r4758
    have hd3 : rho 4253 * (rho 4240 * rho 4240 + rho 4239 * rho 4239 * (-1)) = 2 * (rho 4239 * rho 4240) := by
      rw [hd0, hd1, hd2]
      linear_combination r4759
    have hd4 : rho 4254 * (2 - (rho 4240 * rho 4240 + rho 4239 * rho 4239 * (-1))) = rho 4240 * rho 4240 - rho 4239 * rho 4239 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4760
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX156 rho : F), (dtkAccY156 rho : F)⟩
      ⟨(rho 4239 : F), (rho 4240 : F)⟩
      ⟨(rho 4246 : F), (rho 4247 : F)⟩
      ⟨(dtkAccX157 rho : F), (dtkAccY157 rho : F)⟩
      ⟨(rho 4253 : F), (rho 4254 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung156

theorem dtk_rows157 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4761 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4762 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4763 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4764 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4765 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4766 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4767 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4768 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4769 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4770 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4771 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4772 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4773 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4774 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p59,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart59 at p59
  rcases p59 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4761, r4762, r4763, r4764, r4765, r4766, r4767, r4768, r4769, r4770, r4771, r4772, r4773, r4774, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4761, r4762, r4763, r4764, r4765, r4766, r4767, r4768, r4769, r4770, r4771, r4772, r4773, r4774⟩

theorem dtk_rung157 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1140 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX157 rho : F), (dtkAccY157 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4253 : F), (rho 4254 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX157 rho : F), (dtkAccY157 rho : F)⟩
        ⟨(rho 4253 : F), (rho 4254 : F)⟩
        ⟨(dtkAccX158 rho : F), (dtkAccY158 rho : F)⟩
        ⟨(rho 4267 : F), (rho 4268 : F)⟩ := by
  obtain ⟨r4761, r4762, r4763, r4764, r4765, r4766, r4767, r4768, r4769, r4770, r4771, r4772, r4773, r4774⟩ := dtk_rows157 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4761 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc871 at r4761
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4761
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4762 at r4762
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4763 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc872 at r4763
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4763
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4764 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc873 at r4764
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4764
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4765 at r4765
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4766 at r4766
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4767 at r4767
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4768 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc874 at r4768
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4768
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4769 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc875 at r4769
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4769
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4770 at r4770
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4771 at r4771
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4772 at r4772
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4773 at r4773
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4774 at r4774
  have hrung157 (bit : Bool) (hbit : rho 1140 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX157 rho : F), (dtkAccY157 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4253 : F), (rho 4254 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX157 rho : F), (dtkAccY157 rho : F)⟩
        ⟨(rho 4253 : F), (rho 4254 : F)⟩
        ⟨(dtkAccX158 rho : F), (dtkAccY158 rho : F)⟩
        ⟨(rho 4267 : F), (rho 4268 : F)⟩ := by
    have hnextx : dtkAccX158 rho = dtkAccX157 rho + rho 4262 := by
      unfold dtkAccX158 dtkAccX157
      ring
    have hnexty : dtkAccY158 rho = dtkAccY157 rho + rho 4263 := by
      unfold dtkAccY158 dtkAccY157
      ring
    have hsum : dtkAccX157 rho + dtkAccY157 rho = rho 4255 := by
      unfold dtkAccX157 dtkAccY157
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 150] at r4761
      linear_combination r4761
    have ha0 : (rho 4253 + rho 4254) * (dtkAccX157 rho + dtkAccY157 rho) = rho 4256 := by
      rw [hsum]
      linear_combination r4762
    have ha1 : rho 4254 * dtkAccX157 rho = rho 4257 := by
      unfold dtkAccX157
      linear_combination r4763
    have ha2 : rho 4253 * dtkAccY157 rho = rho 4258 := by
      unfold dtkAccY157
      linear_combination r4764
    have ha3 : 3021 * rho 4257 * rho 4258 = rho 4259 := by
      linear_combination r4765
    have ha4 : rho 4260 * (1 + rho 4259) = rho 4257 + rho 4258 := by
      linear_combination r4766
    have ha5 : rho 4261 * (1 - rho 4259) = rho 4256 - rho 4257 - rho 4258 := by
      linear_combination r4767
    have haddx :
        rho 4260 * (1 + 3021 * (rho 4254 * dtkAccX157 rho) * (rho 4253 * dtkAccY157 rho)) =
          rho 4254 * dtkAccX157 rho + rho 4253 * dtkAccY157 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4261 * (1 - 3021 * (rho 4254 * dtkAccX157 rho) * (rho 4253 * dtkAccY157 rho)) =
          (-1) * (rho 4254 * dtkAccX157 rho) - rho 4253 * dtkAccY157 rho +
            (dtkAccY157 rho - dtkAccX157 rho * (-1)) * (rho 4253 + rho 4254) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4261 * (1 - rho 4259) = rho 4256 - rho 4257 - rho 4258 := ha5
        _ = (-1) * rho 4257 - rho 4258 + (dtkAccY157 rho - dtkAccX157 rho * (-1)) * (rho 4253 + rho 4254) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX158 rho = dtkAccX157 rho - Bool.toZMod bit * (dtkAccX157 rho - rho 4260) := by
      have hd : rho 4262 = Bool.toZMod bit * (rho 4260 - dtkAccX157 rho) := by
        rw [← hbit]
        unfold dtkAccX157
        linear_combination -r4768
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY158 rho = dtkAccY157 rho - Bool.toZMod bit * (dtkAccY157 rho - rho 4261) := by
      have hd : rho 4263 = Bool.toZMod bit * (rho 4261 - dtkAccY157 rho) := by
        rw [← hbit]
        unfold dtkAccY157
        linear_combination -r4769
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4253 * rho 4254 = rho 4264 := by linear_combination r4770
    have hd1 : rho 4253 * rho 4253 = rho 4265 := by linear_combination r4771
    have hd2 : rho 4254 * rho 4254 = rho 4266 := by linear_combination r4772
    have hd3 : rho 4267 * (rho 4254 * rho 4254 + rho 4253 * rho 4253 * (-1)) = 2 * (rho 4253 * rho 4254) := by
      rw [hd0, hd1, hd2]
      linear_combination r4773
    have hd4 : rho 4268 * (2 - (rho 4254 * rho 4254 + rho 4253 * rho 4253 * (-1))) = rho 4254 * rho 4254 - rho 4253 * rho 4253 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4774
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX157 rho : F), (dtkAccY157 rho : F)⟩
      ⟨(rho 4253 : F), (rho 4254 : F)⟩
      ⟨(rho 4260 : F), (rho 4261 : F)⟩
      ⟨(dtkAccX158 rho : F), (dtkAccY158 rho : F)⟩
      ⟨(rho 4267 : F), (rho 4268 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung157

theorem dtk_rows158 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4775 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4776 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4777 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4778 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4779 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4780 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4781 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4782 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4783 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4784 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4785 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4786 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4787 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4788 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p59,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart59 at p59
  rcases p59 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4775, r4776, r4777, r4778, r4779, r4780, r4781, r4782, r4783, r4784, r4785, r4786, r4787, r4788, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4775, r4776, r4777, r4778, r4779, r4780, r4781, r4782, r4783, r4784, r4785, r4786, r4787, r4788⟩

theorem dtk_rung158 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1141 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX158 rho : F), (dtkAccY158 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4267 : F), (rho 4268 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX158 rho : F), (dtkAccY158 rho : F)⟩
        ⟨(rho 4267 : F), (rho 4268 : F)⟩
        ⟨(dtkAccX159 rho : F), (dtkAccY159 rho : F)⟩
        ⟨(rho 4281 : F), (rho 4282 : F)⟩ := by
  obtain ⟨r4775, r4776, r4777, r4778, r4779, r4780, r4781, r4782, r4783, r4784, r4785, r4786, r4787, r4788⟩ := dtk_rows158 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4775 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc876 at r4775
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4775
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4776 at r4776
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4777 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc877 at r4777
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4777
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4778 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc878 at r4778
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4778
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4779 at r4779
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4780 at r4780
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4781 at r4781
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4782 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc879 at r4782
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4782
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4783 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc880 at r4783
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4783
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4784 at r4784
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4785 at r4785
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4786 at r4786
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4787 at r4787
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4788 at r4788
  have hrung158 (bit : Bool) (hbit : rho 1141 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX158 rho : F), (dtkAccY158 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4267 : F), (rho 4268 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX158 rho : F), (dtkAccY158 rho : F)⟩
        ⟨(rho 4267 : F), (rho 4268 : F)⟩
        ⟨(dtkAccX159 rho : F), (dtkAccY159 rho : F)⟩
        ⟨(rho 4281 : F), (rho 4282 : F)⟩ := by
    have hnextx : dtkAccX159 rho = dtkAccX158 rho + rho 4276 := by
      unfold dtkAccX159 dtkAccX158
      ring
    have hnexty : dtkAccY159 rho = dtkAccY158 rho + rho 4277 := by
      unfold dtkAccY159 dtkAccY158
      ring
    have hsum : dtkAccX158 rho + dtkAccY158 rho = rho 4269 := by
      unfold dtkAccX158 dtkAccY158
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 150] at r4775
      linear_combination r4775
    have ha0 : (rho 4267 + rho 4268) * (dtkAccX158 rho + dtkAccY158 rho) = rho 4270 := by
      rw [hsum]
      linear_combination r4776
    have ha1 : rho 4268 * dtkAccX158 rho = rho 4271 := by
      unfold dtkAccX158
      linear_combination r4777
    have ha2 : rho 4267 * dtkAccY158 rho = rho 4272 := by
      unfold dtkAccY158
      linear_combination r4778
    have ha3 : 3021 * rho 4271 * rho 4272 = rho 4273 := by
      linear_combination r4779
    have ha4 : rho 4274 * (1 + rho 4273) = rho 4271 + rho 4272 := by
      linear_combination r4780
    have ha5 : rho 4275 * (1 - rho 4273) = rho 4270 - rho 4271 - rho 4272 := by
      linear_combination r4781
    have haddx :
        rho 4274 * (1 + 3021 * (rho 4268 * dtkAccX158 rho) * (rho 4267 * dtkAccY158 rho)) =
          rho 4268 * dtkAccX158 rho + rho 4267 * dtkAccY158 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4275 * (1 - 3021 * (rho 4268 * dtkAccX158 rho) * (rho 4267 * dtkAccY158 rho)) =
          (-1) * (rho 4268 * dtkAccX158 rho) - rho 4267 * dtkAccY158 rho +
            (dtkAccY158 rho - dtkAccX158 rho * (-1)) * (rho 4267 + rho 4268) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4275 * (1 - rho 4273) = rho 4270 - rho 4271 - rho 4272 := ha5
        _ = (-1) * rho 4271 - rho 4272 + (dtkAccY158 rho - dtkAccX158 rho * (-1)) * (rho 4267 + rho 4268) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX159 rho = dtkAccX158 rho - Bool.toZMod bit * (dtkAccX158 rho - rho 4274) := by
      have hd : rho 4276 = Bool.toZMod bit * (rho 4274 - dtkAccX158 rho) := by
        rw [← hbit]
        unfold dtkAccX158
        linear_combination -r4782
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY159 rho = dtkAccY158 rho - Bool.toZMod bit * (dtkAccY158 rho - rho 4275) := by
      have hd : rho 4277 = Bool.toZMod bit * (rho 4275 - dtkAccY158 rho) := by
        rw [← hbit]
        unfold dtkAccY158
        linear_combination -r4783
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4267 * rho 4268 = rho 4278 := by linear_combination r4784
    have hd1 : rho 4267 * rho 4267 = rho 4279 := by linear_combination r4785
    have hd2 : rho 4268 * rho 4268 = rho 4280 := by linear_combination r4786
    have hd3 : rho 4281 * (rho 4268 * rho 4268 + rho 4267 * rho 4267 * (-1)) = 2 * (rho 4267 * rho 4268) := by
      rw [hd0, hd1, hd2]
      linear_combination r4787
    have hd4 : rho 4282 * (2 - (rho 4268 * rho 4268 + rho 4267 * rho 4267 * (-1))) = rho 4268 * rho 4268 - rho 4267 * rho 4267 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4788
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX158 rho : F), (dtkAccY158 rho : F)⟩
      ⟨(rho 4267 : F), (rho 4268 : F)⟩
      ⟨(rho 4274 : F), (rho 4275 : F)⟩
      ⟨(dtkAccX159 rho : F), (dtkAccY159 rho : F)⟩
      ⟨(rho 4281 : F), (rho 4282 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung158

theorem dtk_rows159 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4789 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4790 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4791 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4792 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4793 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4794 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4795 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4796 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4797 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4798 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4799 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4800 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4801 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4802 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p59,
    p60, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart59 at p59
  rcases p59 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4789, r4790, r4791, r4792, r4793, r4794, r4795, r4796, r4797, r4798, r4799⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart60 at p60
  rcases p60 with ⟨r4800, r4801, r4802, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4789, r4790, r4791, r4792, r4793, r4794, r4795, r4796, r4797, r4798, r4799, r4800, r4801, r4802⟩

theorem dtk_rung159 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1142 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX159 rho : F), (dtkAccY159 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4281 : F), (rho 4282 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX159 rho : F), (dtkAccY159 rho : F)⟩
        ⟨(rho 4281 : F), (rho 4282 : F)⟩
        ⟨(dtkAccX160 rho : F), (dtkAccY160 rho : F)⟩
        ⟨(rho 4295 : F), (rho 4296 : F)⟩ := by
  obtain ⟨r4789, r4790, r4791, r4792, r4793, r4794, r4795, r4796, r4797, r4798, r4799, r4800, r4801, r4802⟩ := dtk_rows159 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4789 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc881 at r4789
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4789
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4790 at r4790
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4791 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc882 at r4791
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4791
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4792 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc883 at r4792
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4792
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4793 at r4793
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4794 at r4794
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4795 at r4795
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4796 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc884 at r4796
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4796
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4797 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc885 at r4797
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4797
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4798 at r4798
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4799 at r4799
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4800 at r4800
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4801 at r4801
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4802 at r4802
  have hrung159 (bit : Bool) (hbit : rho 1142 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX159 rho : F), (dtkAccY159 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4281 : F), (rho 4282 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX159 rho : F), (dtkAccY159 rho : F)⟩
        ⟨(rho 4281 : F), (rho 4282 : F)⟩
        ⟨(dtkAccX160 rho : F), (dtkAccY160 rho : F)⟩
        ⟨(rho 4295 : F), (rho 4296 : F)⟩ := by
    have hnextx : dtkAccX160 rho = dtkAccX159 rho + rho 4290 := by
      unfold dtkAccX160 dtkAccX159
      ring
    have hnexty : dtkAccY160 rho = dtkAccY159 rho + rho 4291 := by
      unfold dtkAccY160 dtkAccY159
      ring
    have hsum : dtkAccX159 rho + dtkAccY159 rho = rho 4283 := by
      unfold dtkAccX159 dtkAccY159
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 150] at r4789
      linear_combination r4789
    have ha0 : (rho 4281 + rho 4282) * (dtkAccX159 rho + dtkAccY159 rho) = rho 4284 := by
      rw [hsum]
      linear_combination r4790
    have ha1 : rho 4282 * dtkAccX159 rho = rho 4285 := by
      unfold dtkAccX159
      linear_combination r4791
    have ha2 : rho 4281 * dtkAccY159 rho = rho 4286 := by
      unfold dtkAccY159
      linear_combination r4792
    have ha3 : 3021 * rho 4285 * rho 4286 = rho 4287 := by
      linear_combination r4793
    have ha4 : rho 4288 * (1 + rho 4287) = rho 4285 + rho 4286 := by
      linear_combination r4794
    have ha5 : rho 4289 * (1 - rho 4287) = rho 4284 - rho 4285 - rho 4286 := by
      linear_combination r4795
    have haddx :
        rho 4288 * (1 + 3021 * (rho 4282 * dtkAccX159 rho) * (rho 4281 * dtkAccY159 rho)) =
          rho 4282 * dtkAccX159 rho + rho 4281 * dtkAccY159 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4289 * (1 - 3021 * (rho 4282 * dtkAccX159 rho) * (rho 4281 * dtkAccY159 rho)) =
          (-1) * (rho 4282 * dtkAccX159 rho) - rho 4281 * dtkAccY159 rho +
            (dtkAccY159 rho - dtkAccX159 rho * (-1)) * (rho 4281 + rho 4282) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4289 * (1 - rho 4287) = rho 4284 - rho 4285 - rho 4286 := ha5
        _ = (-1) * rho 4285 - rho 4286 + (dtkAccY159 rho - dtkAccX159 rho * (-1)) * (rho 4281 + rho 4282) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX160 rho = dtkAccX159 rho - Bool.toZMod bit * (dtkAccX159 rho - rho 4288) := by
      have hd : rho 4290 = Bool.toZMod bit * (rho 4288 - dtkAccX159 rho) := by
        rw [← hbit]
        unfold dtkAccX159
        linear_combination -r4796
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY160 rho = dtkAccY159 rho - Bool.toZMod bit * (dtkAccY159 rho - rho 4289) := by
      have hd : rho 4291 = Bool.toZMod bit * (rho 4289 - dtkAccY159 rho) := by
        rw [← hbit]
        unfold dtkAccY159
        linear_combination -r4797
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4281 * rho 4282 = rho 4292 := by linear_combination r4798
    have hd1 : rho 4281 * rho 4281 = rho 4293 := by linear_combination r4799
    have hd2 : rho 4282 * rho 4282 = rho 4294 := by linear_combination r4800
    have hd3 : rho 4295 * (rho 4282 * rho 4282 + rho 4281 * rho 4281 * (-1)) = 2 * (rho 4281 * rho 4282) := by
      rw [hd0, hd1, hd2]
      linear_combination r4801
    have hd4 : rho 4296 * (2 - (rho 4282 * rho 4282 + rho 4281 * rho 4281 * (-1))) = rho 4282 * rho 4282 - rho 4281 * rho 4281 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4802
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX159 rho : F), (dtkAccY159 rho : F)⟩
      ⟨(rho 4281 : F), (rho 4282 : F)⟩
      ⟨(rho 4288 : F), (rho 4289 : F)⟩
      ⟨(dtkAccX160 rho : F), (dtkAccY160 rho : F)⟩
      ⟨(rho 4295 : F), (rho 4296 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung159

theorem dtk_rows160 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4803 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4804 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4805 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4806 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4807 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4808 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4809 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4810 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4811 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4812 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4813 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4814 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4815 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4816 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p60, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart60 at p60
  rcases p60 with ⟨_, _, _, r4803, r4804, r4805, r4806, r4807, r4808, r4809, r4810, r4811, r4812, r4813, r4814, r4815, r4816, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4803, r4804, r4805, r4806, r4807, r4808, r4809, r4810, r4811, r4812, r4813, r4814, r4815, r4816⟩

theorem dtk_rung160 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1143 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX160 rho : F), (dtkAccY160 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4295 : F), (rho 4296 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX160 rho : F), (dtkAccY160 rho : F)⟩
        ⟨(rho 4295 : F), (rho 4296 : F)⟩
        ⟨(dtkAccX161 rho : F), (dtkAccY161 rho : F)⟩
        ⟨(rho 4309 : F), (rho 4310 : F)⟩ := by
  obtain ⟨r4803, r4804, r4805, r4806, r4807, r4808, r4809, r4810, r4811, r4812, r4813, r4814, r4815, r4816⟩ := dtk_rows160 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4803 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc886 at r4803
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4803
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4804 at r4804
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4805 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc887 at r4805
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4805
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4806 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc888 at r4806
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4806
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4807 at r4807
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4808 at r4808
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4809 at r4809
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4810 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc889 at r4810
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4810
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4811 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc890 at r4811
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4811
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4812 at r4812
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4813 at r4813
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4814 at r4814
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4815 at r4815
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4816 at r4816
  have hrung160 (bit : Bool) (hbit : rho 1143 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX160 rho : F), (dtkAccY160 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4295 : F), (rho 4296 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX160 rho : F), (dtkAccY160 rho : F)⟩
        ⟨(rho 4295 : F), (rho 4296 : F)⟩
        ⟨(dtkAccX161 rho : F), (dtkAccY161 rho : F)⟩
        ⟨(rho 4309 : F), (rho 4310 : F)⟩ := by
    have hnextx : dtkAccX161 rho = dtkAccX160 rho + rho 4304 := by
      unfold dtkAccX161 dtkAccX160
      ring
    have hnexty : dtkAccY161 rho = dtkAccY160 rho + rho 4305 := by
      unfold dtkAccY161 dtkAccY160
      ring
    have hsum : dtkAccX160 rho + dtkAccY160 rho = rho 4297 := by
      unfold dtkAccX160 dtkAccY160
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 150] at r4803
      linear_combination r4803
    have ha0 : (rho 4295 + rho 4296) * (dtkAccX160 rho + dtkAccY160 rho) = rho 4298 := by
      rw [hsum]
      linear_combination r4804
    have ha1 : rho 4296 * dtkAccX160 rho = rho 4299 := by
      unfold dtkAccX160
      linear_combination r4805
    have ha2 : rho 4295 * dtkAccY160 rho = rho 4300 := by
      unfold dtkAccY160
      linear_combination r4806
    have ha3 : 3021 * rho 4299 * rho 4300 = rho 4301 := by
      linear_combination r4807
    have ha4 : rho 4302 * (1 + rho 4301) = rho 4299 + rho 4300 := by
      linear_combination r4808
    have ha5 : rho 4303 * (1 - rho 4301) = rho 4298 - rho 4299 - rho 4300 := by
      linear_combination r4809
    have haddx :
        rho 4302 * (1 + 3021 * (rho 4296 * dtkAccX160 rho) * (rho 4295 * dtkAccY160 rho)) =
          rho 4296 * dtkAccX160 rho + rho 4295 * dtkAccY160 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4303 * (1 - 3021 * (rho 4296 * dtkAccX160 rho) * (rho 4295 * dtkAccY160 rho)) =
          (-1) * (rho 4296 * dtkAccX160 rho) - rho 4295 * dtkAccY160 rho +
            (dtkAccY160 rho - dtkAccX160 rho * (-1)) * (rho 4295 + rho 4296) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4303 * (1 - rho 4301) = rho 4298 - rho 4299 - rho 4300 := ha5
        _ = (-1) * rho 4299 - rho 4300 + (dtkAccY160 rho - dtkAccX160 rho * (-1)) * (rho 4295 + rho 4296) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX161 rho = dtkAccX160 rho - Bool.toZMod bit * (dtkAccX160 rho - rho 4302) := by
      have hd : rho 4304 = Bool.toZMod bit * (rho 4302 - dtkAccX160 rho) := by
        rw [← hbit]
        unfold dtkAccX160
        linear_combination -r4810
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY161 rho = dtkAccY160 rho - Bool.toZMod bit * (dtkAccY160 rho - rho 4303) := by
      have hd : rho 4305 = Bool.toZMod bit * (rho 4303 - dtkAccY160 rho) := by
        rw [← hbit]
        unfold dtkAccY160
        linear_combination -r4811
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4295 * rho 4296 = rho 4306 := by linear_combination r4812
    have hd1 : rho 4295 * rho 4295 = rho 4307 := by linear_combination r4813
    have hd2 : rho 4296 * rho 4296 = rho 4308 := by linear_combination r4814
    have hd3 : rho 4309 * (rho 4296 * rho 4296 + rho 4295 * rho 4295 * (-1)) = 2 * (rho 4295 * rho 4296) := by
      rw [hd0, hd1, hd2]
      linear_combination r4815
    have hd4 : rho 4310 * (2 - (rho 4296 * rho 4296 + rho 4295 * rho 4295 * (-1))) = rho 4296 * rho 4296 - rho 4295 * rho 4295 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4816
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX160 rho : F), (dtkAccY160 rho : F)⟩
      ⟨(rho 4295 : F), (rho 4296 : F)⟩
      ⟨(rho 4302 : F), (rho 4303 : F)⟩
      ⟨(dtkAccX161 rho : F), (dtkAccY161 rho : F)⟩
      ⟨(rho 4309 : F), (rho 4310 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung160

theorem dtk_rows161 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4817 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4818 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4819 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4820 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4821 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4822 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4823 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4824 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4825 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4826 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4827 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4828 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4829 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4830 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p60, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart60 at p60
  rcases p60 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4817, r4818, r4819, r4820, r4821, r4822, r4823, r4824, r4825, r4826, r4827, r4828, r4829, r4830, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4817, r4818, r4819, r4820, r4821, r4822, r4823, r4824, r4825, r4826, r4827, r4828, r4829, r4830⟩

theorem dtk_rung161 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1144 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX161 rho : F), (dtkAccY161 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4309 : F), (rho 4310 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX161 rho : F), (dtkAccY161 rho : F)⟩
        ⟨(rho 4309 : F), (rho 4310 : F)⟩
        ⟨(dtkAccX162 rho : F), (dtkAccY162 rho : F)⟩
        ⟨(rho 4323 : F), (rho 4324 : F)⟩ := by
  obtain ⟨r4817, r4818, r4819, r4820, r4821, r4822, r4823, r4824, r4825, r4826, r4827, r4828, r4829, r4830⟩ := dtk_rows161 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4817 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc891 at r4817
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4817
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4818 at r4818
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4819 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc892 at r4819
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4819
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4820 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc893 at r4820
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4820
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4821 at r4821
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4822 at r4822
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4823 at r4823
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4824 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc894 at r4824
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4824
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4825 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc895 at r4825
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4825
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4826 at r4826
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4827 at r4827
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4828 at r4828
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4829 at r4829
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4830 at r4830
  have hrung161 (bit : Bool) (hbit : rho 1144 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX161 rho : F), (dtkAccY161 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4309 : F), (rho 4310 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX161 rho : F), (dtkAccY161 rho : F)⟩
        ⟨(rho 4309 : F), (rho 4310 : F)⟩
        ⟨(dtkAccX162 rho : F), (dtkAccY162 rho : F)⟩
        ⟨(rho 4323 : F), (rho 4324 : F)⟩ := by
    have hnextx : dtkAccX162 rho = dtkAccX161 rho + rho 4318 := by
      unfold dtkAccX162 dtkAccX161
      ring
    have hnexty : dtkAccY162 rho = dtkAccY161 rho + rho 4319 := by
      unfold dtkAccY162 dtkAccY161
      ring
    have hsum : dtkAccX161 rho + dtkAccY161 rho = rho 4311 := by
      unfold dtkAccX161 dtkAccY161
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 150] at r4817
      linear_combination r4817
    have ha0 : (rho 4309 + rho 4310) * (dtkAccX161 rho + dtkAccY161 rho) = rho 4312 := by
      rw [hsum]
      linear_combination r4818
    have ha1 : rho 4310 * dtkAccX161 rho = rho 4313 := by
      unfold dtkAccX161
      linear_combination r4819
    have ha2 : rho 4309 * dtkAccY161 rho = rho 4314 := by
      unfold dtkAccY161
      linear_combination r4820
    have ha3 : 3021 * rho 4313 * rho 4314 = rho 4315 := by
      linear_combination r4821
    have ha4 : rho 4316 * (1 + rho 4315) = rho 4313 + rho 4314 := by
      linear_combination r4822
    have ha5 : rho 4317 * (1 - rho 4315) = rho 4312 - rho 4313 - rho 4314 := by
      linear_combination r4823
    have haddx :
        rho 4316 * (1 + 3021 * (rho 4310 * dtkAccX161 rho) * (rho 4309 * dtkAccY161 rho)) =
          rho 4310 * dtkAccX161 rho + rho 4309 * dtkAccY161 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4317 * (1 - 3021 * (rho 4310 * dtkAccX161 rho) * (rho 4309 * dtkAccY161 rho)) =
          (-1) * (rho 4310 * dtkAccX161 rho) - rho 4309 * dtkAccY161 rho +
            (dtkAccY161 rho - dtkAccX161 rho * (-1)) * (rho 4309 + rho 4310) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4317 * (1 - rho 4315) = rho 4312 - rho 4313 - rho 4314 := ha5
        _ = (-1) * rho 4313 - rho 4314 + (dtkAccY161 rho - dtkAccX161 rho * (-1)) * (rho 4309 + rho 4310) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX162 rho = dtkAccX161 rho - Bool.toZMod bit * (dtkAccX161 rho - rho 4316) := by
      have hd : rho 4318 = Bool.toZMod bit * (rho 4316 - dtkAccX161 rho) := by
        rw [← hbit]
        unfold dtkAccX161
        linear_combination -r4824
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY162 rho = dtkAccY161 rho - Bool.toZMod bit * (dtkAccY161 rho - rho 4317) := by
      have hd : rho 4319 = Bool.toZMod bit * (rho 4317 - dtkAccY161 rho) := by
        rw [← hbit]
        unfold dtkAccY161
        linear_combination -r4825
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4309 * rho 4310 = rho 4320 := by linear_combination r4826
    have hd1 : rho 4309 * rho 4309 = rho 4321 := by linear_combination r4827
    have hd2 : rho 4310 * rho 4310 = rho 4322 := by linear_combination r4828
    have hd3 : rho 4323 * (rho 4310 * rho 4310 + rho 4309 * rho 4309 * (-1)) = 2 * (rho 4309 * rho 4310) := by
      rw [hd0, hd1, hd2]
      linear_combination r4829
    have hd4 : rho 4324 * (2 - (rho 4310 * rho 4310 + rho 4309 * rho 4309 * (-1))) = rho 4310 * rho 4310 - rho 4309 * rho 4309 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4830
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX161 rho : F), (dtkAccY161 rho : F)⟩
      ⟨(rho 4309 : F), (rho 4310 : F)⟩
      ⟨(rho 4316 : F), (rho 4317 : F)⟩
      ⟨(dtkAccX162 rho : F), (dtkAccY162 rho : F)⟩
      ⟨(rho 4323 : F), (rho 4324 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung161

theorem dtk_hstep_c26 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (983 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 156 ≤ i → i < 162 →
      EdwardsBridge.onCurve (dtkLadderAccState rho i) →
      EdwardsBridge.onCurve (dtkLadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (dtkLadderAccState rho i) (dtkLadderCurState rho i)
        (dtkLadderAccState rho (i + 1)) (dtkLadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact dtk_rung156 rho h bits[156]! (hbitAt 156 (by omega)) hacc hcur
  · exact dtk_rung157 rho h bits[157]! (hbitAt 157 (by omega)) hacc hcur
  · exact dtk_rung158 rho h bits[158]! (hbitAt 158 (by omega)) hacc hcur
  · exact dtk_rung159 rho h bits[159]! (hbitAt 159 (by omega)) hacc hcur
  · exact dtk_rung160 rho h bits[160]! (hbitAt 160 (by omega)) hacc hcur
  · exact dtk_rung161 rho h bits[161]! (hbitAt 161 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport
