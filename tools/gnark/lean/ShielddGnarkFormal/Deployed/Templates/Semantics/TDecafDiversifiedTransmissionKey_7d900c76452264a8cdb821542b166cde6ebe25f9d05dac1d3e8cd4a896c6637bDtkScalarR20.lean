import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDtkScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs

theorem dtk_rows120 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4273 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4274 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4275 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4276 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4277 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4278 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4279 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4280 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4281 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4282 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4283 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4284 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4285 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p53, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart53 at p53
  rcases p53 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4273, r4274, r4275, r4276, r4277, r4278, r4279, r4280, r4281, r4282, r4283, r4284, r4285, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4273, r4274, r4275, r4276, r4277, r4278, r4279, r4280, r4281, r4282, r4283, r4284, r4285⟩

theorem dtk_rung120 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1103 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX120 rho : F), (dtkAccY120 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3765 : F), (rho 3766 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX120 rho : F), (dtkAccY120 rho : F)⟩
        ⟨(rho 3765 : F), (rho 3766 : F)⟩
        ⟨(dtkAccX121 rho : F), (dtkAccY121 rho : F)⟩
        ⟨(rho 3778 : F), (rho 3779 : F)⟩ := by
  obtain ⟨r4273, r4274, r4275, r4276, r4277, r4278, r4279, r4280, r4281, r4282, r4283, r4284, r4285⟩ := dtk_rows120 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4273 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc686 at r4273
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4273
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4274 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc687 at r4274
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4274
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4275 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc688 at r4275
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4275
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4276 at r4276
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4277 at r4277
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4278 at r4278
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4279 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc689 at r4279
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4279
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4280 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc690 at r4280
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4280
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4281 at r4281
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4282 at r4282
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4283 at r4283
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4284 at r4284
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4285 at r4285
  have hrung120 (bit : Bool) (hbit : rho 1103 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX120 rho : F), (dtkAccY120 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3765 : F), (rho 3766 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX120 rho : F), (dtkAccY120 rho : F)⟩
        ⟨(rho 3765 : F), (rho 3766 : F)⟩
        ⟨(dtkAccX121 rho : F), (dtkAccY121 rho : F)⟩
        ⟨(rho 3778 : F), (rho 3779 : F)⟩ := by
    have hnextx : dtkAccX121 rho = dtkAccX120 rho + rho 3773 := by
      unfold dtkAccX121 dtkAccX120
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 119]
      ring
    have hnexty : dtkAccY121 rho = dtkAccY120 rho + rho 3774 := by
      unfold dtkAccY121 dtkAccY120
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 120]
      ring
    have ha0 : (rho 3765 + rho 3766) * (dtkAccX120 rho + dtkAccY120 rho) = rho 3767 := by
      unfold dtkAccX120 dtkAccY120
      linear_combination r4273
    have ha1 : rho 3766 * dtkAccX120 rho = rho 3768 := by
      unfold dtkAccX120
      linear_combination r4274
    have ha2 : rho 3765 * dtkAccY120 rho = rho 3769 := by
      unfold dtkAccY120
      linear_combination r4275
    have ha3 : 3021 * rho 3768 * rho 3769 = rho 3770 := by
      linear_combination r4276
    have ha4 : rho 3771 * (1 + rho 3770) = rho 3768 + rho 3769 := by
      linear_combination r4277
    have ha5 : rho 3772 * (1 - rho 3770) = rho 3767 - rho 3768 - rho 3769 := by
      linear_combination r4278
    have haddx :
        rho 3771 * (1 + 3021 * (rho 3766 * dtkAccX120 rho) * (rho 3765 * dtkAccY120 rho)) =
          rho 3766 * dtkAccX120 rho + rho 3765 * dtkAccY120 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3772 * (1 - 3021 * (rho 3766 * dtkAccX120 rho) * (rho 3765 * dtkAccY120 rho)) =
          (-1) * (rho 3766 * dtkAccX120 rho) - rho 3765 * dtkAccY120 rho +
            (dtkAccY120 rho - dtkAccX120 rho * (-1)) * (rho 3765 + rho 3766) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3772 * (1 - rho 3770) = rho 3767 - rho 3768 - rho 3769 := ha5
        _ = (-1) * rho 3768 - rho 3769 + (dtkAccY120 rho - dtkAccX120 rho * (-1)) * (rho 3765 + rho 3766) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX121 rho = dtkAccX120 rho - Bool.toZMod bit * (dtkAccX120 rho - rho 3771) := by
      have hd : rho 3773 = Bool.toZMod bit * (rho 3771 - dtkAccX120 rho) := by
        rw [← hbit]
        unfold dtkAccX120
        linear_combination -r4279
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY121 rho = dtkAccY120 rho - Bool.toZMod bit * (dtkAccY120 rho - rho 3772) := by
      have hd : rho 3774 = Bool.toZMod bit * (rho 3772 - dtkAccY120 rho) := by
        rw [← hbit]
        unfold dtkAccY120
        linear_combination -r4280
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3765 * rho 3766 = rho 3775 := by linear_combination r4281
    have hd1 : rho 3765 * rho 3765 = rho 3776 := by linear_combination r4282
    have hd2 : rho 3766 * rho 3766 = rho 3777 := by linear_combination r4283
    have hd3 : rho 3778 * (rho 3766 * rho 3766 + rho 3765 * rho 3765 * (-1)) = 2 * (rho 3765 * rho 3766) := by
      rw [hd0, hd1, hd2]
      linear_combination r4284
    have hd4 : rho 3779 * (2 - (rho 3766 * rho 3766 + rho 3765 * rho 3765 * (-1))) = rho 3766 * rho 3766 - rho 3765 * rho 3765 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4285
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX120 rho : F), (dtkAccY120 rho : F)⟩
      ⟨(rho 3765 : F), (rho 3766 : F)⟩
      ⟨(rho 3771 : F), (rho 3772 : F)⟩
      ⟨(dtkAccX121 rho : F), (dtkAccY121 rho : F)⟩
      ⟨(rho 3778 : F), (rho 3779 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung120

theorem dtk_rows121 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4286 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4287 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4288 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4289 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4290 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4291 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4292 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4293 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4294 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4295 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4296 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4297 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4298 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p53, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart53 at p53
  rcases p53 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4286, r4287, r4288, r4289, r4290, r4291, r4292, r4293, r4294, r4295, r4296, r4297, r4298, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4286, r4287, r4288, r4289, r4290, r4291, r4292, r4293, r4294, r4295, r4296, r4297, r4298⟩

theorem dtk_rung121 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1104 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX121 rho : F), (dtkAccY121 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3778 : F), (rho 3779 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX121 rho : F), (dtkAccY121 rho : F)⟩
        ⟨(rho 3778 : F), (rho 3779 : F)⟩
        ⟨(dtkAccX122 rho : F), (dtkAccY122 rho : F)⟩
        ⟨(rho 3791 : F), (rho 3792 : F)⟩ := by
  obtain ⟨r4286, r4287, r4288, r4289, r4290, r4291, r4292, r4293, r4294, r4295, r4296, r4297, r4298⟩ := dtk_rows121 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4286 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc691 at r4286
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4286
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4287 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc692 at r4287
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4287
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4288 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc693 at r4288
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4288
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4289 at r4289
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4290 at r4290
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4291 at r4291
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4292 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc694 at r4292
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4292
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4293 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc695 at r4293
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4293
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4294 at r4294
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4295 at r4295
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4296 at r4296
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4297 at r4297
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4298 at r4298
  have hrung121 (bit : Bool) (hbit : rho 1104 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX121 rho : F), (dtkAccY121 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3778 : F), (rho 3779 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX121 rho : F), (dtkAccY121 rho : F)⟩
        ⟨(rho 3778 : F), (rho 3779 : F)⟩
        ⟨(dtkAccX122 rho : F), (dtkAccY122 rho : F)⟩
        ⟨(rho 3791 : F), (rho 3792 : F)⟩ := by
    have hnextx : dtkAccX122 rho = dtkAccX121 rho + rho 3786 := by
      unfold dtkAccX122 dtkAccX121
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 120]
      ring
    have hnexty : dtkAccY122 rho = dtkAccY121 rho + rho 3787 := by
      unfold dtkAccY122 dtkAccY121
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 121]
      ring
    have ha0 : (rho 3778 + rho 3779) * (dtkAccX121 rho + dtkAccY121 rho) = rho 3780 := by
      unfold dtkAccX121 dtkAccY121
      linear_combination r4286
    have ha1 : rho 3779 * dtkAccX121 rho = rho 3781 := by
      unfold dtkAccX121
      linear_combination r4287
    have ha2 : rho 3778 * dtkAccY121 rho = rho 3782 := by
      unfold dtkAccY121
      linear_combination r4288
    have ha3 : 3021 * rho 3781 * rho 3782 = rho 3783 := by
      linear_combination r4289
    have ha4 : rho 3784 * (1 + rho 3783) = rho 3781 + rho 3782 := by
      linear_combination r4290
    have ha5 : rho 3785 * (1 - rho 3783) = rho 3780 - rho 3781 - rho 3782 := by
      linear_combination r4291
    have haddx :
        rho 3784 * (1 + 3021 * (rho 3779 * dtkAccX121 rho) * (rho 3778 * dtkAccY121 rho)) =
          rho 3779 * dtkAccX121 rho + rho 3778 * dtkAccY121 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3785 * (1 - 3021 * (rho 3779 * dtkAccX121 rho) * (rho 3778 * dtkAccY121 rho)) =
          (-1) * (rho 3779 * dtkAccX121 rho) - rho 3778 * dtkAccY121 rho +
            (dtkAccY121 rho - dtkAccX121 rho * (-1)) * (rho 3778 + rho 3779) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3785 * (1 - rho 3783) = rho 3780 - rho 3781 - rho 3782 := ha5
        _ = (-1) * rho 3781 - rho 3782 + (dtkAccY121 rho - dtkAccX121 rho * (-1)) * (rho 3778 + rho 3779) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX122 rho = dtkAccX121 rho - Bool.toZMod bit * (dtkAccX121 rho - rho 3784) := by
      have hd : rho 3786 = Bool.toZMod bit * (rho 3784 - dtkAccX121 rho) := by
        rw [← hbit]
        unfold dtkAccX121
        linear_combination -r4292
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY122 rho = dtkAccY121 rho - Bool.toZMod bit * (dtkAccY121 rho - rho 3785) := by
      have hd : rho 3787 = Bool.toZMod bit * (rho 3785 - dtkAccY121 rho) := by
        rw [← hbit]
        unfold dtkAccY121
        linear_combination -r4293
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3778 * rho 3779 = rho 3788 := by linear_combination r4294
    have hd1 : rho 3778 * rho 3778 = rho 3789 := by linear_combination r4295
    have hd2 : rho 3779 * rho 3779 = rho 3790 := by linear_combination r4296
    have hd3 : rho 3791 * (rho 3779 * rho 3779 + rho 3778 * rho 3778 * (-1)) = 2 * (rho 3778 * rho 3779) := by
      rw [hd0, hd1, hd2]
      linear_combination r4297
    have hd4 : rho 3792 * (2 - (rho 3779 * rho 3779 + rho 3778 * rho 3778 * (-1))) = rho 3779 * rho 3779 - rho 3778 * rho 3778 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4298
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX121 rho : F), (dtkAccY121 rho : F)⟩
      ⟨(rho 3778 : F), (rho 3779 : F)⟩
      ⟨(rho 3784 : F), (rho 3785 : F)⟩
      ⟨(dtkAccX122 rho : F), (dtkAccY122 rho : F)⟩
      ⟨(rho 3791 : F), (rho 3792 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung121

theorem dtk_rows122 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4299 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4300 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4301 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4302 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4303 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4304 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4305 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4306 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4307 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4308 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4309 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4310 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4311 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p53, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart53 at p53
  rcases p53 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4299, r4300, r4301, r4302, r4303, r4304, r4305, r4306, r4307, r4308, r4309, r4310, r4311, _, _, _, _, _, _, _, _⟩
  exact ⟨r4299, r4300, r4301, r4302, r4303, r4304, r4305, r4306, r4307, r4308, r4309, r4310, r4311⟩

theorem dtk_rung122 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1105 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX122 rho : F), (dtkAccY122 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3791 : F), (rho 3792 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX122 rho : F), (dtkAccY122 rho : F)⟩
        ⟨(rho 3791 : F), (rho 3792 : F)⟩
        ⟨(dtkAccX123 rho : F), (dtkAccY123 rho : F)⟩
        ⟨(rho 3804 : F), (rho 3805 : F)⟩ := by
  obtain ⟨r4299, r4300, r4301, r4302, r4303, r4304, r4305, r4306, r4307, r4308, r4309, r4310, r4311⟩ := dtk_rows122 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4299 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc696 at r4299
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4299
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4300 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc697 at r4300
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4300
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4301 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc698 at r4301
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4301
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4302 at r4302
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4303 at r4303
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4304 at r4304
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4305 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc699 at r4305
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4305
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4306 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc700 at r4306
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4306
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4307 at r4307
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4308 at r4308
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4309 at r4309
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4310 at r4310
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4311 at r4311
  have hrung122 (bit : Bool) (hbit : rho 1105 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX122 rho : F), (dtkAccY122 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3791 : F), (rho 3792 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX122 rho : F), (dtkAccY122 rho : F)⟩
        ⟨(rho 3791 : F), (rho 3792 : F)⟩
        ⟨(dtkAccX123 rho : F), (dtkAccY123 rho : F)⟩
        ⟨(rho 3804 : F), (rho 3805 : F)⟩ := by
    have hnextx : dtkAccX123 rho = dtkAccX122 rho + rho 3799 := by
      unfold dtkAccX123 dtkAccX122
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 121]
      ring
    have hnexty : dtkAccY123 rho = dtkAccY122 rho + rho 3800 := by
      unfold dtkAccY123 dtkAccY122
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 122]
      ring
    have ha0 : (rho 3791 + rho 3792) * (dtkAccX122 rho + dtkAccY122 rho) = rho 3793 := by
      unfold dtkAccX122 dtkAccY122
      linear_combination r4299
    have ha1 : rho 3792 * dtkAccX122 rho = rho 3794 := by
      unfold dtkAccX122
      linear_combination r4300
    have ha2 : rho 3791 * dtkAccY122 rho = rho 3795 := by
      unfold dtkAccY122
      linear_combination r4301
    have ha3 : 3021 * rho 3794 * rho 3795 = rho 3796 := by
      linear_combination r4302
    have ha4 : rho 3797 * (1 + rho 3796) = rho 3794 + rho 3795 := by
      linear_combination r4303
    have ha5 : rho 3798 * (1 - rho 3796) = rho 3793 - rho 3794 - rho 3795 := by
      linear_combination r4304
    have haddx :
        rho 3797 * (1 + 3021 * (rho 3792 * dtkAccX122 rho) * (rho 3791 * dtkAccY122 rho)) =
          rho 3792 * dtkAccX122 rho + rho 3791 * dtkAccY122 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3798 * (1 - 3021 * (rho 3792 * dtkAccX122 rho) * (rho 3791 * dtkAccY122 rho)) =
          (-1) * (rho 3792 * dtkAccX122 rho) - rho 3791 * dtkAccY122 rho +
            (dtkAccY122 rho - dtkAccX122 rho * (-1)) * (rho 3791 + rho 3792) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3798 * (1 - rho 3796) = rho 3793 - rho 3794 - rho 3795 := ha5
        _ = (-1) * rho 3794 - rho 3795 + (dtkAccY122 rho - dtkAccX122 rho * (-1)) * (rho 3791 + rho 3792) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX123 rho = dtkAccX122 rho - Bool.toZMod bit * (dtkAccX122 rho - rho 3797) := by
      have hd : rho 3799 = Bool.toZMod bit * (rho 3797 - dtkAccX122 rho) := by
        rw [← hbit]
        unfold dtkAccX122
        linear_combination -r4305
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY123 rho = dtkAccY122 rho - Bool.toZMod bit * (dtkAccY122 rho - rho 3798) := by
      have hd : rho 3800 = Bool.toZMod bit * (rho 3798 - dtkAccY122 rho) := by
        rw [← hbit]
        unfold dtkAccY122
        linear_combination -r4306
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3791 * rho 3792 = rho 3801 := by linear_combination r4307
    have hd1 : rho 3791 * rho 3791 = rho 3802 := by linear_combination r4308
    have hd2 : rho 3792 * rho 3792 = rho 3803 := by linear_combination r4309
    have hd3 : rho 3804 * (rho 3792 * rho 3792 + rho 3791 * rho 3791 * (-1)) = 2 * (rho 3791 * rho 3792) := by
      rw [hd0, hd1, hd2]
      linear_combination r4310
    have hd4 : rho 3805 * (2 - (rho 3792 * rho 3792 + rho 3791 * rho 3791 * (-1))) = rho 3792 * rho 3792 - rho 3791 * rho 3791 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4311
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX122 rho : F), (dtkAccY122 rho : F)⟩
      ⟨(rho 3791 : F), (rho 3792 : F)⟩
      ⟨(rho 3797 : F), (rho 3798 : F)⟩
      ⟨(dtkAccX123 rho : F), (dtkAccY123 rho : F)⟩
      ⟨(rho 3804 : F), (rho 3805 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung122

theorem dtk_rows123 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4312 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4313 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4314 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4315 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4316 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4317 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4318 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4319 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4320 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4321 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4322 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4323 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4324 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p53, p54, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart53 at p53
  rcases p53 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4312, r4313, r4314, r4315, r4316, r4317, r4318, r4319⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart54 at p54
  rcases p54 with ⟨r4320, r4321, r4322, r4323, r4324, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4312, r4313, r4314, r4315, r4316, r4317, r4318, r4319, r4320, r4321, r4322, r4323, r4324⟩

theorem dtk_rung123 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1106 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX123 rho : F), (dtkAccY123 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3804 : F), (rho 3805 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX123 rho : F), (dtkAccY123 rho : F)⟩
        ⟨(rho 3804 : F), (rho 3805 : F)⟩
        ⟨(dtkAccX124 rho : F), (dtkAccY124 rho : F)⟩
        ⟨(rho 3817 : F), (rho 3818 : F)⟩ := by
  obtain ⟨r4312, r4313, r4314, r4315, r4316, r4317, r4318, r4319, r4320, r4321, r4322, r4323, r4324⟩ := dtk_rows123 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4312 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc701 at r4312
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4312
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4313 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc702 at r4313
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4313
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4314 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc703 at r4314
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4314
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4315 at r4315
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4316 at r4316
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4317 at r4317
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4318 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc704 at r4318
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4318
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4319 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc705 at r4319
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4319
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4320 at r4320
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4321 at r4321
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4322 at r4322
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4323 at r4323
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4324 at r4324
  have hrung123 (bit : Bool) (hbit : rho 1106 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX123 rho : F), (dtkAccY123 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3804 : F), (rho 3805 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX123 rho : F), (dtkAccY123 rho : F)⟩
        ⟨(rho 3804 : F), (rho 3805 : F)⟩
        ⟨(dtkAccX124 rho : F), (dtkAccY124 rho : F)⟩
        ⟨(rho 3817 : F), (rho 3818 : F)⟩ := by
    have hnextx : dtkAccX124 rho = dtkAccX123 rho + rho 3812 := by
      unfold dtkAccX124 dtkAccX123
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 122]
      ring
    have hnexty : dtkAccY124 rho = dtkAccY123 rho + rho 3813 := by
      unfold dtkAccY124 dtkAccY123
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 123]
      ring
    have ha0 : (rho 3804 + rho 3805) * (dtkAccX123 rho + dtkAccY123 rho) = rho 3806 := by
      unfold dtkAccX123 dtkAccY123
      linear_combination r4312
    have ha1 : rho 3805 * dtkAccX123 rho = rho 3807 := by
      unfold dtkAccX123
      linear_combination r4313
    have ha2 : rho 3804 * dtkAccY123 rho = rho 3808 := by
      unfold dtkAccY123
      linear_combination r4314
    have ha3 : 3021 * rho 3807 * rho 3808 = rho 3809 := by
      linear_combination r4315
    have ha4 : rho 3810 * (1 + rho 3809) = rho 3807 + rho 3808 := by
      linear_combination r4316
    have ha5 : rho 3811 * (1 - rho 3809) = rho 3806 - rho 3807 - rho 3808 := by
      linear_combination r4317
    have haddx :
        rho 3810 * (1 + 3021 * (rho 3805 * dtkAccX123 rho) * (rho 3804 * dtkAccY123 rho)) =
          rho 3805 * dtkAccX123 rho + rho 3804 * dtkAccY123 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3811 * (1 - 3021 * (rho 3805 * dtkAccX123 rho) * (rho 3804 * dtkAccY123 rho)) =
          (-1) * (rho 3805 * dtkAccX123 rho) - rho 3804 * dtkAccY123 rho +
            (dtkAccY123 rho - dtkAccX123 rho * (-1)) * (rho 3804 + rho 3805) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3811 * (1 - rho 3809) = rho 3806 - rho 3807 - rho 3808 := ha5
        _ = (-1) * rho 3807 - rho 3808 + (dtkAccY123 rho - dtkAccX123 rho * (-1)) * (rho 3804 + rho 3805) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX124 rho = dtkAccX123 rho - Bool.toZMod bit * (dtkAccX123 rho - rho 3810) := by
      have hd : rho 3812 = Bool.toZMod bit * (rho 3810 - dtkAccX123 rho) := by
        rw [← hbit]
        unfold dtkAccX123
        linear_combination -r4318
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY124 rho = dtkAccY123 rho - Bool.toZMod bit * (dtkAccY123 rho - rho 3811) := by
      have hd : rho 3813 = Bool.toZMod bit * (rho 3811 - dtkAccY123 rho) := by
        rw [← hbit]
        unfold dtkAccY123
        linear_combination -r4319
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3804 * rho 3805 = rho 3814 := by linear_combination r4320
    have hd1 : rho 3804 * rho 3804 = rho 3815 := by linear_combination r4321
    have hd2 : rho 3805 * rho 3805 = rho 3816 := by linear_combination r4322
    have hd3 : rho 3817 * (rho 3805 * rho 3805 + rho 3804 * rho 3804 * (-1)) = 2 * (rho 3804 * rho 3805) := by
      rw [hd0, hd1, hd2]
      linear_combination r4323
    have hd4 : rho 3818 * (2 - (rho 3805 * rho 3805 + rho 3804 * rho 3804 * (-1))) = rho 3805 * rho 3805 - rho 3804 * rho 3804 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4324
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX123 rho : F), (dtkAccY123 rho : F)⟩
      ⟨(rho 3804 : F), (rho 3805 : F)⟩
      ⟨(rho 3810 : F), (rho 3811 : F)⟩
      ⟨(dtkAccX124 rho : F), (dtkAccY124 rho : F)⟩
      ⟨(rho 3817 : F), (rho 3818 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung123

theorem dtk_rows124 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4325 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4326 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4327 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4328 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4329 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4330 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4331 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4332 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4333 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4334 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4335 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4336 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4337 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p54, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart54 at p54
  rcases p54 with ⟨_, _, _, _, _, r4325, r4326, r4327, r4328, r4329, r4330, r4331, r4332, r4333, r4334, r4335, r4336, r4337, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4325, r4326, r4327, r4328, r4329, r4330, r4331, r4332, r4333, r4334, r4335, r4336, r4337⟩

theorem dtk_rung124 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1107 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX124 rho : F), (dtkAccY124 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3817 : F), (rho 3818 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX124 rho : F), (dtkAccY124 rho : F)⟩
        ⟨(rho 3817 : F), (rho 3818 : F)⟩
        ⟨(dtkAccX125 rho : F), (dtkAccY125 rho : F)⟩
        ⟨(rho 3830 : F), (rho 3831 : F)⟩ := by
  obtain ⟨r4325, r4326, r4327, r4328, r4329, r4330, r4331, r4332, r4333, r4334, r4335, r4336, r4337⟩ := dtk_rows124 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4325 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc706 at r4325
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4325
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4326 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc707 at r4326
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4326
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4327 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc708 at r4327
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4327
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4328 at r4328
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4329 at r4329
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4330 at r4330
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4331 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc709 at r4331
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4331
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4332 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc710 at r4332
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4332
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4333 at r4333
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4334 at r4334
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4335 at r4335
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4336 at r4336
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4337 at r4337
  have hrung124 (bit : Bool) (hbit : rho 1107 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX124 rho : F), (dtkAccY124 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3817 : F), (rho 3818 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX124 rho : F), (dtkAccY124 rho : F)⟩
        ⟨(rho 3817 : F), (rho 3818 : F)⟩
        ⟨(dtkAccX125 rho : F), (dtkAccY125 rho : F)⟩
        ⟨(rho 3830 : F), (rho 3831 : F)⟩ := by
    have hnextx : dtkAccX125 rho = dtkAccX124 rho + rho 3825 := by
      unfold dtkAccX125 dtkAccX124
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 123]
      ring
    have hnexty : dtkAccY125 rho = dtkAccY124 rho + rho 3826 := by
      unfold dtkAccY125 dtkAccY124
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 124]
      ring
    have ha0 : (rho 3817 + rho 3818) * (dtkAccX124 rho + dtkAccY124 rho) = rho 3819 := by
      unfold dtkAccX124 dtkAccY124
      linear_combination r4325
    have ha1 : rho 3818 * dtkAccX124 rho = rho 3820 := by
      unfold dtkAccX124
      linear_combination r4326
    have ha2 : rho 3817 * dtkAccY124 rho = rho 3821 := by
      unfold dtkAccY124
      linear_combination r4327
    have ha3 : 3021 * rho 3820 * rho 3821 = rho 3822 := by
      linear_combination r4328
    have ha4 : rho 3823 * (1 + rho 3822) = rho 3820 + rho 3821 := by
      linear_combination r4329
    have ha5 : rho 3824 * (1 - rho 3822) = rho 3819 - rho 3820 - rho 3821 := by
      linear_combination r4330
    have haddx :
        rho 3823 * (1 + 3021 * (rho 3818 * dtkAccX124 rho) * (rho 3817 * dtkAccY124 rho)) =
          rho 3818 * dtkAccX124 rho + rho 3817 * dtkAccY124 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3824 * (1 - 3021 * (rho 3818 * dtkAccX124 rho) * (rho 3817 * dtkAccY124 rho)) =
          (-1) * (rho 3818 * dtkAccX124 rho) - rho 3817 * dtkAccY124 rho +
            (dtkAccY124 rho - dtkAccX124 rho * (-1)) * (rho 3817 + rho 3818) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3824 * (1 - rho 3822) = rho 3819 - rho 3820 - rho 3821 := ha5
        _ = (-1) * rho 3820 - rho 3821 + (dtkAccY124 rho - dtkAccX124 rho * (-1)) * (rho 3817 + rho 3818) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX125 rho = dtkAccX124 rho - Bool.toZMod bit * (dtkAccX124 rho - rho 3823) := by
      have hd : rho 3825 = Bool.toZMod bit * (rho 3823 - dtkAccX124 rho) := by
        rw [← hbit]
        unfold dtkAccX124
        linear_combination -r4331
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY125 rho = dtkAccY124 rho - Bool.toZMod bit * (dtkAccY124 rho - rho 3824) := by
      have hd : rho 3826 = Bool.toZMod bit * (rho 3824 - dtkAccY124 rho) := by
        rw [← hbit]
        unfold dtkAccY124
        linear_combination -r4332
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3817 * rho 3818 = rho 3827 := by linear_combination r4333
    have hd1 : rho 3817 * rho 3817 = rho 3828 := by linear_combination r4334
    have hd2 : rho 3818 * rho 3818 = rho 3829 := by linear_combination r4335
    have hd3 : rho 3830 * (rho 3818 * rho 3818 + rho 3817 * rho 3817 * (-1)) = 2 * (rho 3817 * rho 3818) := by
      rw [hd0, hd1, hd2]
      linear_combination r4336
    have hd4 : rho 3831 * (2 - (rho 3818 * rho 3818 + rho 3817 * rho 3817 * (-1))) = rho 3818 * rho 3818 - rho 3817 * rho 3817 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4337
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX124 rho : F), (dtkAccY124 rho : F)⟩
      ⟨(rho 3817 : F), (rho 3818 : F)⟩
      ⟨(rho 3823 : F), (rho 3824 : F)⟩
      ⟨(dtkAccX125 rho : F), (dtkAccY125 rho : F)⟩
      ⟨(rho 3830 : F), (rho 3831 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung124

theorem dtk_rows125 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4338 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4339 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4340 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4341 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4342 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4343 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4344 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4345 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4346 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4347 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4348 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4349 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4350 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p54, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart54 at p54
  rcases p54 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4338, r4339, r4340, r4341, r4342, r4343, r4344, r4345, r4346, r4347, r4348, r4349, r4350, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4338, r4339, r4340, r4341, r4342, r4343, r4344, r4345, r4346, r4347, r4348, r4349, r4350⟩

theorem dtk_rung125 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1108 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX125 rho : F), (dtkAccY125 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3830 : F), (rho 3831 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX125 rho : F), (dtkAccY125 rho : F)⟩
        ⟨(rho 3830 : F), (rho 3831 : F)⟩
        ⟨(dtkAccX126 rho : F), (dtkAccY126 rho : F)⟩
        ⟨(rho 3843 : F), (rho 3844 : F)⟩ := by
  obtain ⟨r4338, r4339, r4340, r4341, r4342, r4343, r4344, r4345, r4346, r4347, r4348, r4349, r4350⟩ := dtk_rows125 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4338 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc711 at r4338
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4338
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4339 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc712 at r4339
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4339
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4340 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc713 at r4340
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4340
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4341 at r4341
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4342 at r4342
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4343 at r4343
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4344 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc714 at r4344
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4344
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4345 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc715 at r4345
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4345
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4346 at r4346
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4347 at r4347
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4348 at r4348
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4349 at r4349
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow4350 at r4350
  have hrung125 (bit : Bool) (hbit : rho 1108 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX125 rho : F), (dtkAccY125 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3830 : F), (rho 3831 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX125 rho : F), (dtkAccY125 rho : F)⟩
        ⟨(rho 3830 : F), (rho 3831 : F)⟩
        ⟨(dtkAccX126 rho : F), (dtkAccY126 rho : F)⟩
        ⟨(rho 3843 : F), (rho 3844 : F)⟩ := by
    have hnextx : dtkAccX126 rho = dtkAccX125 rho + rho 3838 := by
      unfold dtkAccX126 dtkAccX125
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 124]
      ring
    have hnexty : dtkAccY126 rho = dtkAccY125 rho + rho 3839 := by
      unfold dtkAccY126 dtkAccY125
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 125]
      ring
    have ha0 : (rho 3830 + rho 3831) * (dtkAccX125 rho + dtkAccY125 rho) = rho 3832 := by
      unfold dtkAccX125 dtkAccY125
      linear_combination r4338
    have ha1 : rho 3831 * dtkAccX125 rho = rho 3833 := by
      unfold dtkAccX125
      linear_combination r4339
    have ha2 : rho 3830 * dtkAccY125 rho = rho 3834 := by
      unfold dtkAccY125
      linear_combination r4340
    have ha3 : 3021 * rho 3833 * rho 3834 = rho 3835 := by
      linear_combination r4341
    have ha4 : rho 3836 * (1 + rho 3835) = rho 3833 + rho 3834 := by
      linear_combination r4342
    have ha5 : rho 3837 * (1 - rho 3835) = rho 3832 - rho 3833 - rho 3834 := by
      linear_combination r4343
    have haddx :
        rho 3836 * (1 + 3021 * (rho 3831 * dtkAccX125 rho) * (rho 3830 * dtkAccY125 rho)) =
          rho 3831 * dtkAccX125 rho + rho 3830 * dtkAccY125 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3837 * (1 - 3021 * (rho 3831 * dtkAccX125 rho) * (rho 3830 * dtkAccY125 rho)) =
          (-1) * (rho 3831 * dtkAccX125 rho) - rho 3830 * dtkAccY125 rho +
            (dtkAccY125 rho - dtkAccX125 rho * (-1)) * (rho 3830 + rho 3831) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3837 * (1 - rho 3835) = rho 3832 - rho 3833 - rho 3834 := ha5
        _ = (-1) * rho 3833 - rho 3834 + (dtkAccY125 rho - dtkAccX125 rho * (-1)) * (rho 3830 + rho 3831) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX126 rho = dtkAccX125 rho - Bool.toZMod bit * (dtkAccX125 rho - rho 3836) := by
      have hd : rho 3838 = Bool.toZMod bit * (rho 3836 - dtkAccX125 rho) := by
        rw [← hbit]
        unfold dtkAccX125
        linear_combination -r4344
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY126 rho = dtkAccY125 rho - Bool.toZMod bit * (dtkAccY125 rho - rho 3837) := by
      have hd : rho 3839 = Bool.toZMod bit * (rho 3837 - dtkAccY125 rho) := by
        rw [← hbit]
        unfold dtkAccY125
        linear_combination -r4345
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3830 * rho 3831 = rho 3840 := by linear_combination r4346
    have hd1 : rho 3830 * rho 3830 = rho 3841 := by linear_combination r4347
    have hd2 : rho 3831 * rho 3831 = rho 3842 := by linear_combination r4348
    have hd3 : rho 3843 * (rho 3831 * rho 3831 + rho 3830 * rho 3830 * (-1)) = 2 * (rho 3830 * rho 3831) := by
      rw [hd0, hd1, hd2]
      linear_combination r4349
    have hd4 : rho 3844 * (2 - (rho 3831 * rho 3831 + rho 3830 * rho 3830 * (-1))) = rho 3831 * rho 3831 - rho 3830 * rho 3830 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4350
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX125 rho : F), (dtkAccY125 rho : F)⟩
      ⟨(rho 3830 : F), (rho 3831 : F)⟩
      ⟨(rho 3836 : F), (rho 3837 : F)⟩
      ⟨(dtkAccX126 rho : F), (dtkAccY126 rho : F)⟩
      ⟨(rho 3843 : F), (rho 3844 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung125

theorem dtk_hstep_c20 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (983 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 120 ≤ i → i < 126 →
      EdwardsBridge.onCurve (dtkLadderAccState rho i) →
      EdwardsBridge.onCurve (dtkLadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (dtkLadderAccState rho i) (dtkLadderCurState rho i)
        (dtkLadderAccState rho (i + 1)) (dtkLadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact dtk_rung120 rho h bits[120]! (hbitAt 120 (by omega)) hacc hcur
  · exact dtk_rung121 rho h bits[121]! (hbitAt 121 (by omega)) hacc hcur
  · exact dtk_rung122 rho h bits[122]! (hbitAt 122 (by omega)) hacc hcur
  · exact dtk_rung123 rho h bits[123]! (hbitAt 123 (by omega)) hacc hcur
  · exact dtk_rung124 rho h bits[124]! (hbitAt 124 (by omega)) hacc hcur
  · exact dtk_rung125 rho h bits[125]! (hbitAt 125 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport
