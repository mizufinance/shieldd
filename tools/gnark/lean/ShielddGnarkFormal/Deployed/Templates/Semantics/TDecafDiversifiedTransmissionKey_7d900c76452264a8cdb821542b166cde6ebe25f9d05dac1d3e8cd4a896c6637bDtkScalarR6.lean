import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDtkScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs

theorem dtk_rows36 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3181 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3182 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3183 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3184 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3185 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3186 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3187 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3188 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3189 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3190 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3191 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3192 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3193 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p39,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart39 at p39
  rcases p39 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3181, r3182, r3183, r3184, r3185, r3186, r3187, r3188, r3189, r3190, r3191, r3192, r3193, _, _, _, _, _, _⟩
  exact ⟨r3181, r3182, r3183, r3184, r3185, r3186, r3187, r3188, r3189, r3190, r3191, r3192, r3193⟩

theorem dtk_rung36 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1019 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX36 rho : F), (dtkAccY36 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 2673 : F), (rho 2674 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX36 rho : F), (dtkAccY36 rho : F)⟩
        ⟨(rho 2673 : F), (rho 2674 : F)⟩
        ⟨(dtkAccX37 rho : F), (dtkAccY37 rho : F)⟩
        ⟨(rho 2686 : F), (rho 2687 : F)⟩ := by
  obtain ⟨r3181, r3182, r3183, r3184, r3185, r3186, r3187, r3188, r3189, r3190, r3191, r3192, r3193⟩ := dtk_rows36 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3181 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc266 at r3181
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3181
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3182 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc267 at r3182
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3182
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3183 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc268 at r3183
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3183
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3184 at r3184
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3185 at r3185
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3186 at r3186
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3187 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc269 at r3187
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3187
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3188 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc270 at r3188
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3188
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3189 at r3189
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3190 at r3190
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3191 at r3191
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3192 at r3192
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3193 at r3193
  have hrung36 (bit : Bool) (hbit : rho 1019 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX36 rho : F), (dtkAccY36 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 2673 : F), (rho 2674 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX36 rho : F), (dtkAccY36 rho : F)⟩
        ⟨(rho 2673 : F), (rho 2674 : F)⟩
        ⟨(dtkAccX37 rho : F), (dtkAccY37 rho : F)⟩
        ⟨(rho 2686 : F), (rho 2687 : F)⟩ := by
    have hnextx : dtkAccX37 rho = dtkAccX36 rho + rho 2681 := by
      unfold dtkAccX37 dtkAccX36
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 35]
      ring
    have hnexty : dtkAccY37 rho = dtkAccY36 rho + rho 2682 := by
      unfold dtkAccY37 dtkAccY36
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 36]
      ring
    have ha0 : (rho 2673 + rho 2674) * (dtkAccX36 rho + dtkAccY36 rho) = rho 2675 := by
      unfold dtkAccX36 dtkAccY36
      linear_combination r3181
    have ha1 : rho 2674 * dtkAccX36 rho = rho 2676 := by
      unfold dtkAccX36
      linear_combination r3182
    have ha2 : rho 2673 * dtkAccY36 rho = rho 2677 := by
      unfold dtkAccY36
      linear_combination r3183
    have ha3 : 3021 * rho 2676 * rho 2677 = rho 2678 := by
      linear_combination r3184
    have ha4 : rho 2679 * (1 + rho 2678) = rho 2676 + rho 2677 := by
      linear_combination r3185
    have ha5 : rho 2680 * (1 - rho 2678) = rho 2675 - rho 2676 - rho 2677 := by
      linear_combination r3186
    have haddx :
        rho 2679 * (1 + 3021 * (rho 2674 * dtkAccX36 rho) * (rho 2673 * dtkAccY36 rho)) =
          rho 2674 * dtkAccX36 rho + rho 2673 * dtkAccY36 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 2680 * (1 - 3021 * (rho 2674 * dtkAccX36 rho) * (rho 2673 * dtkAccY36 rho)) =
          (-1) * (rho 2674 * dtkAccX36 rho) - rho 2673 * dtkAccY36 rho +
            (dtkAccY36 rho - dtkAccX36 rho * (-1)) * (rho 2673 + rho 2674) := by
      rw [ha1, ha2, ha3]
      calc
        rho 2680 * (1 - rho 2678) = rho 2675 - rho 2676 - rho 2677 := ha5
        _ = (-1) * rho 2676 - rho 2677 + (dtkAccY36 rho - dtkAccX36 rho * (-1)) * (rho 2673 + rho 2674) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX37 rho = dtkAccX36 rho - Bool.toZMod bit * (dtkAccX36 rho - rho 2679) := by
      have hd : rho 2681 = Bool.toZMod bit * (rho 2679 - dtkAccX36 rho) := by
        rw [← hbit]
        unfold dtkAccX36
        linear_combination -r3187
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY37 rho = dtkAccY36 rho - Bool.toZMod bit * (dtkAccY36 rho - rho 2680) := by
      have hd : rho 2682 = Bool.toZMod bit * (rho 2680 - dtkAccY36 rho) := by
        rw [← hbit]
        unfold dtkAccY36
        linear_combination -r3188
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 2673 * rho 2674 = rho 2683 := by linear_combination r3189
    have hd1 : rho 2673 * rho 2673 = rho 2684 := by linear_combination r3190
    have hd2 : rho 2674 * rho 2674 = rho 2685 := by linear_combination r3191
    have hd3 : rho 2686 * (rho 2674 * rho 2674 + rho 2673 * rho 2673 * (-1)) = 2 * (rho 2673 * rho 2674) := by
      rw [hd0, hd1, hd2]
      linear_combination r3192
    have hd4 : rho 2687 * (2 - (rho 2674 * rho 2674 + rho 2673 * rho 2673 * (-1))) = rho 2674 * rho 2674 - rho 2673 * rho 2673 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3193
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX36 rho : F), (dtkAccY36 rho : F)⟩
      ⟨(rho 2673 : F), (rho 2674 : F)⟩
      ⟨(rho 2679 : F), (rho 2680 : F)⟩
      ⟨(dtkAccX37 rho : F), (dtkAccY37 rho : F)⟩
      ⟨(rho 2686 : F), (rho 2687 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung36

theorem dtk_rows37 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3194 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3195 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3196 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3197 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3198 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3199 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3200 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3201 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3202 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3203 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3204 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3205 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3206 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p39,
    p40, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart39 at p39
  rcases p39 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3194, r3195, r3196, r3197, r3198, r3199⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart40 at p40
  rcases p40 with ⟨r3200, r3201, r3202, r3203, r3204, r3205, r3206, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3194, r3195, r3196, r3197, r3198, r3199, r3200, r3201, r3202, r3203, r3204, r3205, r3206⟩

theorem dtk_rung37 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1020 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX37 rho : F), (dtkAccY37 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 2686 : F), (rho 2687 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX37 rho : F), (dtkAccY37 rho : F)⟩
        ⟨(rho 2686 : F), (rho 2687 : F)⟩
        ⟨(dtkAccX38 rho : F), (dtkAccY38 rho : F)⟩
        ⟨(rho 2699 : F), (rho 2700 : F)⟩ := by
  obtain ⟨r3194, r3195, r3196, r3197, r3198, r3199, r3200, r3201, r3202, r3203, r3204, r3205, r3206⟩ := dtk_rows37 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3194 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc271 at r3194
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3194
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3195 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc272 at r3195
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3195
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3196 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc273 at r3196
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3196
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3197 at r3197
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3198 at r3198
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3199 at r3199
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3200 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc274 at r3200
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3200
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3201 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc275 at r3201
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3201
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3202 at r3202
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3203 at r3203
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3204 at r3204
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3205 at r3205
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3206 at r3206
  have hrung37 (bit : Bool) (hbit : rho 1020 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX37 rho : F), (dtkAccY37 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 2686 : F), (rho 2687 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX37 rho : F), (dtkAccY37 rho : F)⟩
        ⟨(rho 2686 : F), (rho 2687 : F)⟩
        ⟨(dtkAccX38 rho : F), (dtkAccY38 rho : F)⟩
        ⟨(rho 2699 : F), (rho 2700 : F)⟩ := by
    have hnextx : dtkAccX38 rho = dtkAccX37 rho + rho 2694 := by
      unfold dtkAccX38 dtkAccX37
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 36]
      ring
    have hnexty : dtkAccY38 rho = dtkAccY37 rho + rho 2695 := by
      unfold dtkAccY38 dtkAccY37
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 37]
      ring
    have ha0 : (rho 2686 + rho 2687) * (dtkAccX37 rho + dtkAccY37 rho) = rho 2688 := by
      unfold dtkAccX37 dtkAccY37
      linear_combination r3194
    have ha1 : rho 2687 * dtkAccX37 rho = rho 2689 := by
      unfold dtkAccX37
      linear_combination r3195
    have ha2 : rho 2686 * dtkAccY37 rho = rho 2690 := by
      unfold dtkAccY37
      linear_combination r3196
    have ha3 : 3021 * rho 2689 * rho 2690 = rho 2691 := by
      linear_combination r3197
    have ha4 : rho 2692 * (1 + rho 2691) = rho 2689 + rho 2690 := by
      linear_combination r3198
    have ha5 : rho 2693 * (1 - rho 2691) = rho 2688 - rho 2689 - rho 2690 := by
      linear_combination r3199
    have haddx :
        rho 2692 * (1 + 3021 * (rho 2687 * dtkAccX37 rho) * (rho 2686 * dtkAccY37 rho)) =
          rho 2687 * dtkAccX37 rho + rho 2686 * dtkAccY37 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 2693 * (1 - 3021 * (rho 2687 * dtkAccX37 rho) * (rho 2686 * dtkAccY37 rho)) =
          (-1) * (rho 2687 * dtkAccX37 rho) - rho 2686 * dtkAccY37 rho +
            (dtkAccY37 rho - dtkAccX37 rho * (-1)) * (rho 2686 + rho 2687) := by
      rw [ha1, ha2, ha3]
      calc
        rho 2693 * (1 - rho 2691) = rho 2688 - rho 2689 - rho 2690 := ha5
        _ = (-1) * rho 2689 - rho 2690 + (dtkAccY37 rho - dtkAccX37 rho * (-1)) * (rho 2686 + rho 2687) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX38 rho = dtkAccX37 rho - Bool.toZMod bit * (dtkAccX37 rho - rho 2692) := by
      have hd : rho 2694 = Bool.toZMod bit * (rho 2692 - dtkAccX37 rho) := by
        rw [← hbit]
        unfold dtkAccX37
        linear_combination -r3200
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY38 rho = dtkAccY37 rho - Bool.toZMod bit * (dtkAccY37 rho - rho 2693) := by
      have hd : rho 2695 = Bool.toZMod bit * (rho 2693 - dtkAccY37 rho) := by
        rw [← hbit]
        unfold dtkAccY37
        linear_combination -r3201
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 2686 * rho 2687 = rho 2696 := by linear_combination r3202
    have hd1 : rho 2686 * rho 2686 = rho 2697 := by linear_combination r3203
    have hd2 : rho 2687 * rho 2687 = rho 2698 := by linear_combination r3204
    have hd3 : rho 2699 * (rho 2687 * rho 2687 + rho 2686 * rho 2686 * (-1)) = 2 * (rho 2686 * rho 2687) := by
      rw [hd0, hd1, hd2]
      linear_combination r3205
    have hd4 : rho 2700 * (2 - (rho 2687 * rho 2687 + rho 2686 * rho 2686 * (-1))) = rho 2687 * rho 2687 - rho 2686 * rho 2686 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3206
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX37 rho : F), (dtkAccY37 rho : F)⟩
      ⟨(rho 2686 : F), (rho 2687 : F)⟩
      ⟨(rho 2692 : F), (rho 2693 : F)⟩
      ⟨(dtkAccX38 rho : F), (dtkAccY38 rho : F)⟩
      ⟨(rho 2699 : F), (rho 2700 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung37

theorem dtk_rows38 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3207 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3208 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3209 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3210 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3211 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3212 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3213 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3214 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3215 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3216 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3217 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3218 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3219 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p40, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart40 at p40
  rcases p40 with ⟨_, _, _, _, _, _, _, r3207, r3208, r3209, r3210, r3211, r3212, r3213, r3214, r3215, r3216, r3217, r3218, r3219, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3207, r3208, r3209, r3210, r3211, r3212, r3213, r3214, r3215, r3216, r3217, r3218, r3219⟩

theorem dtk_rung38 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1021 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX38 rho : F), (dtkAccY38 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 2699 : F), (rho 2700 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX38 rho : F), (dtkAccY38 rho : F)⟩
        ⟨(rho 2699 : F), (rho 2700 : F)⟩
        ⟨(dtkAccX39 rho : F), (dtkAccY39 rho : F)⟩
        ⟨(rho 2712 : F), (rho 2713 : F)⟩ := by
  obtain ⟨r3207, r3208, r3209, r3210, r3211, r3212, r3213, r3214, r3215, r3216, r3217, r3218, r3219⟩ := dtk_rows38 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3207 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc276 at r3207
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3207
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3208 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc277 at r3208
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3208
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3209 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc278 at r3209
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3209
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3210 at r3210
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3211 at r3211
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3212 at r3212
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3213 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc279 at r3213
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3213
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3214 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc280 at r3214
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3214
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3215 at r3215
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3216 at r3216
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3217 at r3217
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3218 at r3218
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3219 at r3219
  have hrung38 (bit : Bool) (hbit : rho 1021 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX38 rho : F), (dtkAccY38 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 2699 : F), (rho 2700 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX38 rho : F), (dtkAccY38 rho : F)⟩
        ⟨(rho 2699 : F), (rho 2700 : F)⟩
        ⟨(dtkAccX39 rho : F), (dtkAccY39 rho : F)⟩
        ⟨(rho 2712 : F), (rho 2713 : F)⟩ := by
    have hnextx : dtkAccX39 rho = dtkAccX38 rho + rho 2707 := by
      unfold dtkAccX39 dtkAccX38
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 37]
      ring
    have hnexty : dtkAccY39 rho = dtkAccY38 rho + rho 2708 := by
      unfold dtkAccY39 dtkAccY38
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 38]
      ring
    have ha0 : (rho 2699 + rho 2700) * (dtkAccX38 rho + dtkAccY38 rho) = rho 2701 := by
      unfold dtkAccX38 dtkAccY38
      linear_combination r3207
    have ha1 : rho 2700 * dtkAccX38 rho = rho 2702 := by
      unfold dtkAccX38
      linear_combination r3208
    have ha2 : rho 2699 * dtkAccY38 rho = rho 2703 := by
      unfold dtkAccY38
      linear_combination r3209
    have ha3 : 3021 * rho 2702 * rho 2703 = rho 2704 := by
      linear_combination r3210
    have ha4 : rho 2705 * (1 + rho 2704) = rho 2702 + rho 2703 := by
      linear_combination r3211
    have ha5 : rho 2706 * (1 - rho 2704) = rho 2701 - rho 2702 - rho 2703 := by
      linear_combination r3212
    have haddx :
        rho 2705 * (1 + 3021 * (rho 2700 * dtkAccX38 rho) * (rho 2699 * dtkAccY38 rho)) =
          rho 2700 * dtkAccX38 rho + rho 2699 * dtkAccY38 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 2706 * (1 - 3021 * (rho 2700 * dtkAccX38 rho) * (rho 2699 * dtkAccY38 rho)) =
          (-1) * (rho 2700 * dtkAccX38 rho) - rho 2699 * dtkAccY38 rho +
            (dtkAccY38 rho - dtkAccX38 rho * (-1)) * (rho 2699 + rho 2700) := by
      rw [ha1, ha2, ha3]
      calc
        rho 2706 * (1 - rho 2704) = rho 2701 - rho 2702 - rho 2703 := ha5
        _ = (-1) * rho 2702 - rho 2703 + (dtkAccY38 rho - dtkAccX38 rho * (-1)) * (rho 2699 + rho 2700) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX39 rho = dtkAccX38 rho - Bool.toZMod bit * (dtkAccX38 rho - rho 2705) := by
      have hd : rho 2707 = Bool.toZMod bit * (rho 2705 - dtkAccX38 rho) := by
        rw [← hbit]
        unfold dtkAccX38
        linear_combination -r3213
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY39 rho = dtkAccY38 rho - Bool.toZMod bit * (dtkAccY38 rho - rho 2706) := by
      have hd : rho 2708 = Bool.toZMod bit * (rho 2706 - dtkAccY38 rho) := by
        rw [← hbit]
        unfold dtkAccY38
        linear_combination -r3214
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 2699 * rho 2700 = rho 2709 := by linear_combination r3215
    have hd1 : rho 2699 * rho 2699 = rho 2710 := by linear_combination r3216
    have hd2 : rho 2700 * rho 2700 = rho 2711 := by linear_combination r3217
    have hd3 : rho 2712 * (rho 2700 * rho 2700 + rho 2699 * rho 2699 * (-1)) = 2 * (rho 2699 * rho 2700) := by
      rw [hd0, hd1, hd2]
      linear_combination r3218
    have hd4 : rho 2713 * (2 - (rho 2700 * rho 2700 + rho 2699 * rho 2699 * (-1))) = rho 2700 * rho 2700 - rho 2699 * rho 2699 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3219
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX38 rho : F), (dtkAccY38 rho : F)⟩
      ⟨(rho 2699 : F), (rho 2700 : F)⟩
      ⟨(rho 2705 : F), (rho 2706 : F)⟩
      ⟨(dtkAccX39 rho : F), (dtkAccY39 rho : F)⟩
      ⟨(rho 2712 : F), (rho 2713 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung38

theorem dtk_rows39 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3220 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3221 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3222 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3223 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3224 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3225 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3226 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3227 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3228 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3229 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3230 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3231 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3232 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p40, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart40 at p40
  rcases p40 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3220, r3221, r3222, r3223, r3224, r3225, r3226, r3227, r3228, r3229, r3230, r3231, r3232, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3220, r3221, r3222, r3223, r3224, r3225, r3226, r3227, r3228, r3229, r3230, r3231, r3232⟩

theorem dtk_rung39 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1022 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX39 rho : F), (dtkAccY39 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 2712 : F), (rho 2713 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX39 rho : F), (dtkAccY39 rho : F)⟩
        ⟨(rho 2712 : F), (rho 2713 : F)⟩
        ⟨(dtkAccX40 rho : F), (dtkAccY40 rho : F)⟩
        ⟨(rho 2725 : F), (rho 2726 : F)⟩ := by
  obtain ⟨r3220, r3221, r3222, r3223, r3224, r3225, r3226, r3227, r3228, r3229, r3230, r3231, r3232⟩ := dtk_rows39 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3220 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc281 at r3220
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3220
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3221 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc282 at r3221
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3221
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3222 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc283 at r3222
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3222
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3223 at r3223
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3224 at r3224
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3225 at r3225
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3226 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc284 at r3226
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3226
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3227 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc285 at r3227
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3227
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3228 at r3228
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3229 at r3229
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3230 at r3230
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3231 at r3231
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3232 at r3232
  have hrung39 (bit : Bool) (hbit : rho 1022 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX39 rho : F), (dtkAccY39 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 2712 : F), (rho 2713 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX39 rho : F), (dtkAccY39 rho : F)⟩
        ⟨(rho 2712 : F), (rho 2713 : F)⟩
        ⟨(dtkAccX40 rho : F), (dtkAccY40 rho : F)⟩
        ⟨(rho 2725 : F), (rho 2726 : F)⟩ := by
    have hnextx : dtkAccX40 rho = dtkAccX39 rho + rho 2720 := by
      unfold dtkAccX40 dtkAccX39
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 38]
      ring
    have hnexty : dtkAccY40 rho = dtkAccY39 rho + rho 2721 := by
      unfold dtkAccY40 dtkAccY39
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 39]
      ring
    have ha0 : (rho 2712 + rho 2713) * (dtkAccX39 rho + dtkAccY39 rho) = rho 2714 := by
      unfold dtkAccX39 dtkAccY39
      linear_combination r3220
    have ha1 : rho 2713 * dtkAccX39 rho = rho 2715 := by
      unfold dtkAccX39
      linear_combination r3221
    have ha2 : rho 2712 * dtkAccY39 rho = rho 2716 := by
      unfold dtkAccY39
      linear_combination r3222
    have ha3 : 3021 * rho 2715 * rho 2716 = rho 2717 := by
      linear_combination r3223
    have ha4 : rho 2718 * (1 + rho 2717) = rho 2715 + rho 2716 := by
      linear_combination r3224
    have ha5 : rho 2719 * (1 - rho 2717) = rho 2714 - rho 2715 - rho 2716 := by
      linear_combination r3225
    have haddx :
        rho 2718 * (1 + 3021 * (rho 2713 * dtkAccX39 rho) * (rho 2712 * dtkAccY39 rho)) =
          rho 2713 * dtkAccX39 rho + rho 2712 * dtkAccY39 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 2719 * (1 - 3021 * (rho 2713 * dtkAccX39 rho) * (rho 2712 * dtkAccY39 rho)) =
          (-1) * (rho 2713 * dtkAccX39 rho) - rho 2712 * dtkAccY39 rho +
            (dtkAccY39 rho - dtkAccX39 rho * (-1)) * (rho 2712 + rho 2713) := by
      rw [ha1, ha2, ha3]
      calc
        rho 2719 * (1 - rho 2717) = rho 2714 - rho 2715 - rho 2716 := ha5
        _ = (-1) * rho 2715 - rho 2716 + (dtkAccY39 rho - dtkAccX39 rho * (-1)) * (rho 2712 + rho 2713) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX40 rho = dtkAccX39 rho - Bool.toZMod bit * (dtkAccX39 rho - rho 2718) := by
      have hd : rho 2720 = Bool.toZMod bit * (rho 2718 - dtkAccX39 rho) := by
        rw [← hbit]
        unfold dtkAccX39
        linear_combination -r3226
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY40 rho = dtkAccY39 rho - Bool.toZMod bit * (dtkAccY39 rho - rho 2719) := by
      have hd : rho 2721 = Bool.toZMod bit * (rho 2719 - dtkAccY39 rho) := by
        rw [← hbit]
        unfold dtkAccY39
        linear_combination -r3227
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 2712 * rho 2713 = rho 2722 := by linear_combination r3228
    have hd1 : rho 2712 * rho 2712 = rho 2723 := by linear_combination r3229
    have hd2 : rho 2713 * rho 2713 = rho 2724 := by linear_combination r3230
    have hd3 : rho 2725 * (rho 2713 * rho 2713 + rho 2712 * rho 2712 * (-1)) = 2 * (rho 2712 * rho 2713) := by
      rw [hd0, hd1, hd2]
      linear_combination r3231
    have hd4 : rho 2726 * (2 - (rho 2713 * rho 2713 + rho 2712 * rho 2712 * (-1))) = rho 2713 * rho 2713 - rho 2712 * rho 2712 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3232
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX39 rho : F), (dtkAccY39 rho : F)⟩
      ⟨(rho 2712 : F), (rho 2713 : F)⟩
      ⟨(rho 2718 : F), (rho 2719 : F)⟩
      ⟨(dtkAccX40 rho : F), (dtkAccY40 rho : F)⟩
      ⟨(rho 2725 : F), (rho 2726 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung39

theorem dtk_rows40 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3233 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3234 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3235 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3236 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3237 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3238 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3239 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3240 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3241 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3242 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3243 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3244 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3245 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p40, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart40 at p40
  rcases p40 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3233, r3234, r3235, r3236, r3237, r3238, r3239, r3240, r3241, r3242, r3243, r3244, r3245, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3233, r3234, r3235, r3236, r3237, r3238, r3239, r3240, r3241, r3242, r3243, r3244, r3245⟩

theorem dtk_rung40 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1023 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX40 rho : F), (dtkAccY40 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 2725 : F), (rho 2726 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX40 rho : F), (dtkAccY40 rho : F)⟩
        ⟨(rho 2725 : F), (rho 2726 : F)⟩
        ⟨(dtkAccX41 rho : F), (dtkAccY41 rho : F)⟩
        ⟨(rho 2738 : F), (rho 2739 : F)⟩ := by
  obtain ⟨r3233, r3234, r3235, r3236, r3237, r3238, r3239, r3240, r3241, r3242, r3243, r3244, r3245⟩ := dtk_rows40 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3233 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc286 at r3233
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3233
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3234 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc287 at r3234
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3234
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3235 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc288 at r3235
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3235
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3236 at r3236
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3237 at r3237
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3238 at r3238
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3239 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc289 at r3239
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3239
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3240 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc290 at r3240
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3240
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3241 at r3241
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3242 at r3242
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3243 at r3243
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3244 at r3244
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3245 at r3245
  have hrung40 (bit : Bool) (hbit : rho 1023 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX40 rho : F), (dtkAccY40 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 2725 : F), (rho 2726 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX40 rho : F), (dtkAccY40 rho : F)⟩
        ⟨(rho 2725 : F), (rho 2726 : F)⟩
        ⟨(dtkAccX41 rho : F), (dtkAccY41 rho : F)⟩
        ⟨(rho 2738 : F), (rho 2739 : F)⟩ := by
    have hnextx : dtkAccX41 rho = dtkAccX40 rho + rho 2733 := by
      unfold dtkAccX41 dtkAccX40
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 39]
      ring
    have hnexty : dtkAccY41 rho = dtkAccY40 rho + rho 2734 := by
      unfold dtkAccY41 dtkAccY40
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 40]
      ring
    have ha0 : (rho 2725 + rho 2726) * (dtkAccX40 rho + dtkAccY40 rho) = rho 2727 := by
      unfold dtkAccX40 dtkAccY40
      linear_combination r3233
    have ha1 : rho 2726 * dtkAccX40 rho = rho 2728 := by
      unfold dtkAccX40
      linear_combination r3234
    have ha2 : rho 2725 * dtkAccY40 rho = rho 2729 := by
      unfold dtkAccY40
      linear_combination r3235
    have ha3 : 3021 * rho 2728 * rho 2729 = rho 2730 := by
      linear_combination r3236
    have ha4 : rho 2731 * (1 + rho 2730) = rho 2728 + rho 2729 := by
      linear_combination r3237
    have ha5 : rho 2732 * (1 - rho 2730) = rho 2727 - rho 2728 - rho 2729 := by
      linear_combination r3238
    have haddx :
        rho 2731 * (1 + 3021 * (rho 2726 * dtkAccX40 rho) * (rho 2725 * dtkAccY40 rho)) =
          rho 2726 * dtkAccX40 rho + rho 2725 * dtkAccY40 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 2732 * (1 - 3021 * (rho 2726 * dtkAccX40 rho) * (rho 2725 * dtkAccY40 rho)) =
          (-1) * (rho 2726 * dtkAccX40 rho) - rho 2725 * dtkAccY40 rho +
            (dtkAccY40 rho - dtkAccX40 rho * (-1)) * (rho 2725 + rho 2726) := by
      rw [ha1, ha2, ha3]
      calc
        rho 2732 * (1 - rho 2730) = rho 2727 - rho 2728 - rho 2729 := ha5
        _ = (-1) * rho 2728 - rho 2729 + (dtkAccY40 rho - dtkAccX40 rho * (-1)) * (rho 2725 + rho 2726) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX41 rho = dtkAccX40 rho - Bool.toZMod bit * (dtkAccX40 rho - rho 2731) := by
      have hd : rho 2733 = Bool.toZMod bit * (rho 2731 - dtkAccX40 rho) := by
        rw [← hbit]
        unfold dtkAccX40
        linear_combination -r3239
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY41 rho = dtkAccY40 rho - Bool.toZMod bit * (dtkAccY40 rho - rho 2732) := by
      have hd : rho 2734 = Bool.toZMod bit * (rho 2732 - dtkAccY40 rho) := by
        rw [← hbit]
        unfold dtkAccY40
        linear_combination -r3240
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 2725 * rho 2726 = rho 2735 := by linear_combination r3241
    have hd1 : rho 2725 * rho 2725 = rho 2736 := by linear_combination r3242
    have hd2 : rho 2726 * rho 2726 = rho 2737 := by linear_combination r3243
    have hd3 : rho 2738 * (rho 2726 * rho 2726 + rho 2725 * rho 2725 * (-1)) = 2 * (rho 2725 * rho 2726) := by
      rw [hd0, hd1, hd2]
      linear_combination r3244
    have hd4 : rho 2739 * (2 - (rho 2726 * rho 2726 + rho 2725 * rho 2725 * (-1))) = rho 2726 * rho 2726 - rho 2725 * rho 2725 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3245
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX40 rho : F), (dtkAccY40 rho : F)⟩
      ⟨(rho 2725 : F), (rho 2726 : F)⟩
      ⟨(rho 2731 : F), (rho 2732 : F)⟩
      ⟨(dtkAccX41 rho : F), (dtkAccY41 rho : F)⟩
      ⟨(rho 2738 : F), (rho 2739 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung40

theorem dtk_rows41 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3246 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3247 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3248 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3249 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3250 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3251 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3252 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3253 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3254 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3255 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3256 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3257 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3258 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p40, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart40 at p40
  rcases p40 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3246, r3247, r3248, r3249, r3250, r3251, r3252, r3253, r3254, r3255, r3256, r3257, r3258, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3246, r3247, r3248, r3249, r3250, r3251, r3252, r3253, r3254, r3255, r3256, r3257, r3258⟩

theorem dtk_rung41 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1024 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX41 rho : F), (dtkAccY41 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 2738 : F), (rho 2739 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX41 rho : F), (dtkAccY41 rho : F)⟩
        ⟨(rho 2738 : F), (rho 2739 : F)⟩
        ⟨(dtkAccX42 rho : F), (dtkAccY42 rho : F)⟩
        ⟨(rho 2751 : F), (rho 2752 : F)⟩ := by
  obtain ⟨r3246, r3247, r3248, r3249, r3250, r3251, r3252, r3253, r3254, r3255, r3256, r3257, r3258⟩ := dtk_rows41 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3246 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc291 at r3246
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3246
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3247 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc292 at r3247
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3247
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3248 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc293 at r3248
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3248
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3249 at r3249
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3250 at r3250
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3251 at r3251
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3252 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc294 at r3252
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3252
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3253 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc295 at r3253
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3253
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3254 at r3254
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3255 at r3255
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3256 at r3256
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3257 at r3257
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3258 at r3258
  have hrung41 (bit : Bool) (hbit : rho 1024 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX41 rho : F), (dtkAccY41 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 2738 : F), (rho 2739 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX41 rho : F), (dtkAccY41 rho : F)⟩
        ⟨(rho 2738 : F), (rho 2739 : F)⟩
        ⟨(dtkAccX42 rho : F), (dtkAccY42 rho : F)⟩
        ⟨(rho 2751 : F), (rho 2752 : F)⟩ := by
    have hnextx : dtkAccX42 rho = dtkAccX41 rho + rho 2746 := by
      unfold dtkAccX42 dtkAccX41
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 40]
      ring
    have hnexty : dtkAccY42 rho = dtkAccY41 rho + rho 2747 := by
      unfold dtkAccY42 dtkAccY41
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 41]
      ring
    have ha0 : (rho 2738 + rho 2739) * (dtkAccX41 rho + dtkAccY41 rho) = rho 2740 := by
      unfold dtkAccX41 dtkAccY41
      linear_combination r3246
    have ha1 : rho 2739 * dtkAccX41 rho = rho 2741 := by
      unfold dtkAccX41
      linear_combination r3247
    have ha2 : rho 2738 * dtkAccY41 rho = rho 2742 := by
      unfold dtkAccY41
      linear_combination r3248
    have ha3 : 3021 * rho 2741 * rho 2742 = rho 2743 := by
      linear_combination r3249
    have ha4 : rho 2744 * (1 + rho 2743) = rho 2741 + rho 2742 := by
      linear_combination r3250
    have ha5 : rho 2745 * (1 - rho 2743) = rho 2740 - rho 2741 - rho 2742 := by
      linear_combination r3251
    have haddx :
        rho 2744 * (1 + 3021 * (rho 2739 * dtkAccX41 rho) * (rho 2738 * dtkAccY41 rho)) =
          rho 2739 * dtkAccX41 rho + rho 2738 * dtkAccY41 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 2745 * (1 - 3021 * (rho 2739 * dtkAccX41 rho) * (rho 2738 * dtkAccY41 rho)) =
          (-1) * (rho 2739 * dtkAccX41 rho) - rho 2738 * dtkAccY41 rho +
            (dtkAccY41 rho - dtkAccX41 rho * (-1)) * (rho 2738 + rho 2739) := by
      rw [ha1, ha2, ha3]
      calc
        rho 2745 * (1 - rho 2743) = rho 2740 - rho 2741 - rho 2742 := ha5
        _ = (-1) * rho 2741 - rho 2742 + (dtkAccY41 rho - dtkAccX41 rho * (-1)) * (rho 2738 + rho 2739) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX42 rho = dtkAccX41 rho - Bool.toZMod bit * (dtkAccX41 rho - rho 2744) := by
      have hd : rho 2746 = Bool.toZMod bit * (rho 2744 - dtkAccX41 rho) := by
        rw [← hbit]
        unfold dtkAccX41
        linear_combination -r3252
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY42 rho = dtkAccY41 rho - Bool.toZMod bit * (dtkAccY41 rho - rho 2745) := by
      have hd : rho 2747 = Bool.toZMod bit * (rho 2745 - dtkAccY41 rho) := by
        rw [← hbit]
        unfold dtkAccY41
        linear_combination -r3253
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 2738 * rho 2739 = rho 2748 := by linear_combination r3254
    have hd1 : rho 2738 * rho 2738 = rho 2749 := by linear_combination r3255
    have hd2 : rho 2739 * rho 2739 = rho 2750 := by linear_combination r3256
    have hd3 : rho 2751 * (rho 2739 * rho 2739 + rho 2738 * rho 2738 * (-1)) = 2 * (rho 2738 * rho 2739) := by
      rw [hd0, hd1, hd2]
      linear_combination r3257
    have hd4 : rho 2752 * (2 - (rho 2739 * rho 2739 + rho 2738 * rho 2738 * (-1))) = rho 2739 * rho 2739 - rho 2738 * rho 2738 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3258
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX41 rho : F), (dtkAccY41 rho : F)⟩
      ⟨(rho 2738 : F), (rho 2739 : F)⟩
      ⟨(rho 2744 : F), (rho 2745 : F)⟩
      ⟨(dtkAccX42 rho : F), (dtkAccY42 rho : F)⟩
      ⟨(rho 2751 : F), (rho 2752 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung41

theorem dtk_hstep_c6 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (983 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 36 ≤ i → i < 42 →
      EdwardsBridge.onCurve (dtkLadderAccState rho i) →
      EdwardsBridge.onCurve (dtkLadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (dtkLadderAccState rho i) (dtkLadderCurState rho i)
        (dtkLadderAccState rho (i + 1)) (dtkLadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact dtk_rung36 rho h bits[36]! (hbitAt 36 (by omega)) hacc hcur
  · exact dtk_rung37 rho h bits[37]! (hbitAt 37 (by omega)) hacc hcur
  · exact dtk_rung38 rho h bits[38]! (hbitAt 38 (by omega)) hacc hcur
  · exact dtk_rung39 rho h bits[39]! (hbitAt 39 (by omega)) hacc hcur
  · exact dtk_rung40 rho h bits[40]! (hbitAt 40 (by omega)) hacc hcur
  · exact dtk_rung41 rho h bits[41]! (hbitAt 41 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport
