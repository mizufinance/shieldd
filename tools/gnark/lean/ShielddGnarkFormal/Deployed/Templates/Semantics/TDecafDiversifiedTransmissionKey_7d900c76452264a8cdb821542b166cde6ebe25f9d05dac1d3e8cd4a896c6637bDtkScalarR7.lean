import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDtkScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs

theorem dtk_rows42 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3259 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3260 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3261 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3262 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3263 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3264 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3265 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3266 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3267 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3268 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3269 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3270 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3271 rho := by
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
  rcases p40 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3259, r3260, r3261, r3262, r3263, r3264, r3265, r3266, r3267, r3268, r3269, r3270, r3271, _, _, _, _, _, _, _, _⟩
  exact ⟨r3259, r3260, r3261, r3262, r3263, r3264, r3265, r3266, r3267, r3268, r3269, r3270, r3271⟩

theorem dtk_rung42 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1025 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX42 rho : F), (dtkAccY42 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 2751 : F), (rho 2752 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX42 rho : F), (dtkAccY42 rho : F)⟩
        ⟨(rho 2751 : F), (rho 2752 : F)⟩
        ⟨(dtkAccX43 rho : F), (dtkAccY43 rho : F)⟩
        ⟨(rho 2764 : F), (rho 2765 : F)⟩ := by
  obtain ⟨r3259, r3260, r3261, r3262, r3263, r3264, r3265, r3266, r3267, r3268, r3269, r3270, r3271⟩ := dtk_rows42 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3259 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc296 at r3259
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3259
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3260 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc297 at r3260
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3260
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3261 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc298 at r3261
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3261
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3262 at r3262
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3263 at r3263
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3264 at r3264
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3265 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc299 at r3265
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3265
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3266 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc300 at r3266
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3266
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3267 at r3267
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3268 at r3268
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3269 at r3269
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3270 at r3270
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3271 at r3271
  have hrung42 (bit : Bool) (hbit : rho 1025 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX42 rho : F), (dtkAccY42 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 2751 : F), (rho 2752 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX42 rho : F), (dtkAccY42 rho : F)⟩
        ⟨(rho 2751 : F), (rho 2752 : F)⟩
        ⟨(dtkAccX43 rho : F), (dtkAccY43 rho : F)⟩
        ⟨(rho 2764 : F), (rho 2765 : F)⟩ := by
    have hnextx : dtkAccX43 rho = dtkAccX42 rho + rho 2759 := by
      unfold dtkAccX43 dtkAccX42
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 41]
      ring
    have hnexty : dtkAccY43 rho = dtkAccY42 rho + rho 2760 := by
      unfold dtkAccY43 dtkAccY42
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 42]
      ring
    have ha0 : (rho 2751 + rho 2752) * (dtkAccX42 rho + dtkAccY42 rho) = rho 2753 := by
      unfold dtkAccX42 dtkAccY42
      linear_combination r3259
    have ha1 : rho 2752 * dtkAccX42 rho = rho 2754 := by
      unfold dtkAccX42
      linear_combination r3260
    have ha2 : rho 2751 * dtkAccY42 rho = rho 2755 := by
      unfold dtkAccY42
      linear_combination r3261
    have ha3 : 3021 * rho 2754 * rho 2755 = rho 2756 := by
      linear_combination r3262
    have ha4 : rho 2757 * (1 + rho 2756) = rho 2754 + rho 2755 := by
      linear_combination r3263
    have ha5 : rho 2758 * (1 - rho 2756) = rho 2753 - rho 2754 - rho 2755 := by
      linear_combination r3264
    have haddx :
        rho 2757 * (1 + 3021 * (rho 2752 * dtkAccX42 rho) * (rho 2751 * dtkAccY42 rho)) =
          rho 2752 * dtkAccX42 rho + rho 2751 * dtkAccY42 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 2758 * (1 - 3021 * (rho 2752 * dtkAccX42 rho) * (rho 2751 * dtkAccY42 rho)) =
          (-1) * (rho 2752 * dtkAccX42 rho) - rho 2751 * dtkAccY42 rho +
            (dtkAccY42 rho - dtkAccX42 rho * (-1)) * (rho 2751 + rho 2752) := by
      rw [ha1, ha2, ha3]
      calc
        rho 2758 * (1 - rho 2756) = rho 2753 - rho 2754 - rho 2755 := ha5
        _ = (-1) * rho 2754 - rho 2755 + (dtkAccY42 rho - dtkAccX42 rho * (-1)) * (rho 2751 + rho 2752) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX43 rho = dtkAccX42 rho - Bool.toZMod bit * (dtkAccX42 rho - rho 2757) := by
      have hd : rho 2759 = Bool.toZMod bit * (rho 2757 - dtkAccX42 rho) := by
        rw [← hbit]
        unfold dtkAccX42
        linear_combination -r3265
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY43 rho = dtkAccY42 rho - Bool.toZMod bit * (dtkAccY42 rho - rho 2758) := by
      have hd : rho 2760 = Bool.toZMod bit * (rho 2758 - dtkAccY42 rho) := by
        rw [← hbit]
        unfold dtkAccY42
        linear_combination -r3266
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 2751 * rho 2752 = rho 2761 := by linear_combination r3267
    have hd1 : rho 2751 * rho 2751 = rho 2762 := by linear_combination r3268
    have hd2 : rho 2752 * rho 2752 = rho 2763 := by linear_combination r3269
    have hd3 : rho 2764 * (rho 2752 * rho 2752 + rho 2751 * rho 2751 * (-1)) = 2 * (rho 2751 * rho 2752) := by
      rw [hd0, hd1, hd2]
      linear_combination r3270
    have hd4 : rho 2765 * (2 - (rho 2752 * rho 2752 + rho 2751 * rho 2751 * (-1))) = rho 2752 * rho 2752 - rho 2751 * rho 2751 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3271
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX42 rho : F), (dtkAccY42 rho : F)⟩
      ⟨(rho 2751 : F), (rho 2752 : F)⟩
      ⟨(rho 2757 : F), (rho 2758 : F)⟩
      ⟨(dtkAccX43 rho : F), (dtkAccY43 rho : F)⟩
      ⟨(rho 2764 : F), (rho 2765 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung42

theorem dtk_rows43 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3272 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3273 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3274 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3275 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3276 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3277 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3278 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3279 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3280 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3281 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3282 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3283 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3284 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p40, p41, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart40 at p40
  rcases p40 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3272, r3273, r3274, r3275, r3276, r3277, r3278, r3279⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart41 at p41
  rcases p41 with ⟨r3280, r3281, r3282, r3283, r3284, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3272, r3273, r3274, r3275, r3276, r3277, r3278, r3279, r3280, r3281, r3282, r3283, r3284⟩

theorem dtk_rung43 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1026 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX43 rho : F), (dtkAccY43 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 2764 : F), (rho 2765 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX43 rho : F), (dtkAccY43 rho : F)⟩
        ⟨(rho 2764 : F), (rho 2765 : F)⟩
        ⟨(dtkAccX44 rho : F), (dtkAccY44 rho : F)⟩
        ⟨(rho 2777 : F), (rho 2778 : F)⟩ := by
  obtain ⟨r3272, r3273, r3274, r3275, r3276, r3277, r3278, r3279, r3280, r3281, r3282, r3283, r3284⟩ := dtk_rows43 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3272 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc301 at r3272
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3272
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3273 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc302 at r3273
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3273
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3274 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc303 at r3274
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3274
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3275 at r3275
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3276 at r3276
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3277 at r3277
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3278 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc304 at r3278
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3278
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3279 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc305 at r3279
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3279
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3280 at r3280
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3281 at r3281
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3282 at r3282
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3283 at r3283
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3284 at r3284
  have hrung43 (bit : Bool) (hbit : rho 1026 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX43 rho : F), (dtkAccY43 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 2764 : F), (rho 2765 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX43 rho : F), (dtkAccY43 rho : F)⟩
        ⟨(rho 2764 : F), (rho 2765 : F)⟩
        ⟨(dtkAccX44 rho : F), (dtkAccY44 rho : F)⟩
        ⟨(rho 2777 : F), (rho 2778 : F)⟩ := by
    have hnextx : dtkAccX44 rho = dtkAccX43 rho + rho 2772 := by
      unfold dtkAccX44 dtkAccX43
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 42]
      ring
    have hnexty : dtkAccY44 rho = dtkAccY43 rho + rho 2773 := by
      unfold dtkAccY44 dtkAccY43
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 43]
      ring
    have ha0 : (rho 2764 + rho 2765) * (dtkAccX43 rho + dtkAccY43 rho) = rho 2766 := by
      unfold dtkAccX43 dtkAccY43
      linear_combination r3272
    have ha1 : rho 2765 * dtkAccX43 rho = rho 2767 := by
      unfold dtkAccX43
      linear_combination r3273
    have ha2 : rho 2764 * dtkAccY43 rho = rho 2768 := by
      unfold dtkAccY43
      linear_combination r3274
    have ha3 : 3021 * rho 2767 * rho 2768 = rho 2769 := by
      linear_combination r3275
    have ha4 : rho 2770 * (1 + rho 2769) = rho 2767 + rho 2768 := by
      linear_combination r3276
    have ha5 : rho 2771 * (1 - rho 2769) = rho 2766 - rho 2767 - rho 2768 := by
      linear_combination r3277
    have haddx :
        rho 2770 * (1 + 3021 * (rho 2765 * dtkAccX43 rho) * (rho 2764 * dtkAccY43 rho)) =
          rho 2765 * dtkAccX43 rho + rho 2764 * dtkAccY43 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 2771 * (1 - 3021 * (rho 2765 * dtkAccX43 rho) * (rho 2764 * dtkAccY43 rho)) =
          (-1) * (rho 2765 * dtkAccX43 rho) - rho 2764 * dtkAccY43 rho +
            (dtkAccY43 rho - dtkAccX43 rho * (-1)) * (rho 2764 + rho 2765) := by
      rw [ha1, ha2, ha3]
      calc
        rho 2771 * (1 - rho 2769) = rho 2766 - rho 2767 - rho 2768 := ha5
        _ = (-1) * rho 2767 - rho 2768 + (dtkAccY43 rho - dtkAccX43 rho * (-1)) * (rho 2764 + rho 2765) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX44 rho = dtkAccX43 rho - Bool.toZMod bit * (dtkAccX43 rho - rho 2770) := by
      have hd : rho 2772 = Bool.toZMod bit * (rho 2770 - dtkAccX43 rho) := by
        rw [← hbit]
        unfold dtkAccX43
        linear_combination -r3278
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY44 rho = dtkAccY43 rho - Bool.toZMod bit * (dtkAccY43 rho - rho 2771) := by
      have hd : rho 2773 = Bool.toZMod bit * (rho 2771 - dtkAccY43 rho) := by
        rw [← hbit]
        unfold dtkAccY43
        linear_combination -r3279
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 2764 * rho 2765 = rho 2774 := by linear_combination r3280
    have hd1 : rho 2764 * rho 2764 = rho 2775 := by linear_combination r3281
    have hd2 : rho 2765 * rho 2765 = rho 2776 := by linear_combination r3282
    have hd3 : rho 2777 * (rho 2765 * rho 2765 + rho 2764 * rho 2764 * (-1)) = 2 * (rho 2764 * rho 2765) := by
      rw [hd0, hd1, hd2]
      linear_combination r3283
    have hd4 : rho 2778 * (2 - (rho 2765 * rho 2765 + rho 2764 * rho 2764 * (-1))) = rho 2765 * rho 2765 - rho 2764 * rho 2764 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3284
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX43 rho : F), (dtkAccY43 rho : F)⟩
      ⟨(rho 2764 : F), (rho 2765 : F)⟩
      ⟨(rho 2770 : F), (rho 2771 : F)⟩
      ⟨(dtkAccX44 rho : F), (dtkAccY44 rho : F)⟩
      ⟨(rho 2777 : F), (rho 2778 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung43

theorem dtk_rows44 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3285 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3286 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3287 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3288 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3289 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3290 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3291 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3292 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3293 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3294 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3295 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3296 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3297 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p41, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart41 at p41
  rcases p41 with ⟨_, _, _, _, _, r3285, r3286, r3287, r3288, r3289, r3290, r3291, r3292, r3293, r3294, r3295, r3296, r3297, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3285, r3286, r3287, r3288, r3289, r3290, r3291, r3292, r3293, r3294, r3295, r3296, r3297⟩

theorem dtk_rung44 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1027 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX44 rho : F), (dtkAccY44 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 2777 : F), (rho 2778 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX44 rho : F), (dtkAccY44 rho : F)⟩
        ⟨(rho 2777 : F), (rho 2778 : F)⟩
        ⟨(dtkAccX45 rho : F), (dtkAccY45 rho : F)⟩
        ⟨(rho 2790 : F), (rho 2791 : F)⟩ := by
  obtain ⟨r3285, r3286, r3287, r3288, r3289, r3290, r3291, r3292, r3293, r3294, r3295, r3296, r3297⟩ := dtk_rows44 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3285 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc306 at r3285
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3285
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3286 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc307 at r3286
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3286
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3287 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc308 at r3287
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3287
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3288 at r3288
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3289 at r3289
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3290 at r3290
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3291 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc309 at r3291
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3291
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3292 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc310 at r3292
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3292
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3293 at r3293
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3294 at r3294
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3295 at r3295
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3296 at r3296
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3297 at r3297
  have hrung44 (bit : Bool) (hbit : rho 1027 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX44 rho : F), (dtkAccY44 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 2777 : F), (rho 2778 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX44 rho : F), (dtkAccY44 rho : F)⟩
        ⟨(rho 2777 : F), (rho 2778 : F)⟩
        ⟨(dtkAccX45 rho : F), (dtkAccY45 rho : F)⟩
        ⟨(rho 2790 : F), (rho 2791 : F)⟩ := by
    have hnextx : dtkAccX45 rho = dtkAccX44 rho + rho 2785 := by
      unfold dtkAccX45 dtkAccX44
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 43]
      ring
    have hnexty : dtkAccY45 rho = dtkAccY44 rho + rho 2786 := by
      unfold dtkAccY45 dtkAccY44
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 44]
      ring
    have ha0 : (rho 2777 + rho 2778) * (dtkAccX44 rho + dtkAccY44 rho) = rho 2779 := by
      unfold dtkAccX44 dtkAccY44
      linear_combination r3285
    have ha1 : rho 2778 * dtkAccX44 rho = rho 2780 := by
      unfold dtkAccX44
      linear_combination r3286
    have ha2 : rho 2777 * dtkAccY44 rho = rho 2781 := by
      unfold dtkAccY44
      linear_combination r3287
    have ha3 : 3021 * rho 2780 * rho 2781 = rho 2782 := by
      linear_combination r3288
    have ha4 : rho 2783 * (1 + rho 2782) = rho 2780 + rho 2781 := by
      linear_combination r3289
    have ha5 : rho 2784 * (1 - rho 2782) = rho 2779 - rho 2780 - rho 2781 := by
      linear_combination r3290
    have haddx :
        rho 2783 * (1 + 3021 * (rho 2778 * dtkAccX44 rho) * (rho 2777 * dtkAccY44 rho)) =
          rho 2778 * dtkAccX44 rho + rho 2777 * dtkAccY44 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 2784 * (1 - 3021 * (rho 2778 * dtkAccX44 rho) * (rho 2777 * dtkAccY44 rho)) =
          (-1) * (rho 2778 * dtkAccX44 rho) - rho 2777 * dtkAccY44 rho +
            (dtkAccY44 rho - dtkAccX44 rho * (-1)) * (rho 2777 + rho 2778) := by
      rw [ha1, ha2, ha3]
      calc
        rho 2784 * (1 - rho 2782) = rho 2779 - rho 2780 - rho 2781 := ha5
        _ = (-1) * rho 2780 - rho 2781 + (dtkAccY44 rho - dtkAccX44 rho * (-1)) * (rho 2777 + rho 2778) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX45 rho = dtkAccX44 rho - Bool.toZMod bit * (dtkAccX44 rho - rho 2783) := by
      have hd : rho 2785 = Bool.toZMod bit * (rho 2783 - dtkAccX44 rho) := by
        rw [← hbit]
        unfold dtkAccX44
        linear_combination -r3291
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY45 rho = dtkAccY44 rho - Bool.toZMod bit * (dtkAccY44 rho - rho 2784) := by
      have hd : rho 2786 = Bool.toZMod bit * (rho 2784 - dtkAccY44 rho) := by
        rw [← hbit]
        unfold dtkAccY44
        linear_combination -r3292
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 2777 * rho 2778 = rho 2787 := by linear_combination r3293
    have hd1 : rho 2777 * rho 2777 = rho 2788 := by linear_combination r3294
    have hd2 : rho 2778 * rho 2778 = rho 2789 := by linear_combination r3295
    have hd3 : rho 2790 * (rho 2778 * rho 2778 + rho 2777 * rho 2777 * (-1)) = 2 * (rho 2777 * rho 2778) := by
      rw [hd0, hd1, hd2]
      linear_combination r3296
    have hd4 : rho 2791 * (2 - (rho 2778 * rho 2778 + rho 2777 * rho 2777 * (-1))) = rho 2778 * rho 2778 - rho 2777 * rho 2777 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3297
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX44 rho : F), (dtkAccY44 rho : F)⟩
      ⟨(rho 2777 : F), (rho 2778 : F)⟩
      ⟨(rho 2783 : F), (rho 2784 : F)⟩
      ⟨(dtkAccX45 rho : F), (dtkAccY45 rho : F)⟩
      ⟨(rho 2790 : F), (rho 2791 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung44

theorem dtk_rows45 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3298 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3299 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3300 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3301 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3302 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3303 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3304 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3305 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3306 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3307 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3308 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3309 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3310 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p41, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart41 at p41
  rcases p41 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3298, r3299, r3300, r3301, r3302, r3303, r3304, r3305, r3306, r3307, r3308, r3309, r3310, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3298, r3299, r3300, r3301, r3302, r3303, r3304, r3305, r3306, r3307, r3308, r3309, r3310⟩

theorem dtk_rung45 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1028 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX45 rho : F), (dtkAccY45 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 2790 : F), (rho 2791 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX45 rho : F), (dtkAccY45 rho : F)⟩
        ⟨(rho 2790 : F), (rho 2791 : F)⟩
        ⟨(dtkAccX46 rho : F), (dtkAccY46 rho : F)⟩
        ⟨(rho 2803 : F), (rho 2804 : F)⟩ := by
  obtain ⟨r3298, r3299, r3300, r3301, r3302, r3303, r3304, r3305, r3306, r3307, r3308, r3309, r3310⟩ := dtk_rows45 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3298 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc311 at r3298
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3298
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3299 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc312 at r3299
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3299
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3300 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc313 at r3300
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3300
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3301 at r3301
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3302 at r3302
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3303 at r3303
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3304 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc314 at r3304
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3304
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3305 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc315 at r3305
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3305
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3306 at r3306
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3307 at r3307
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3308 at r3308
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3309 at r3309
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3310 at r3310
  have hrung45 (bit : Bool) (hbit : rho 1028 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX45 rho : F), (dtkAccY45 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 2790 : F), (rho 2791 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX45 rho : F), (dtkAccY45 rho : F)⟩
        ⟨(rho 2790 : F), (rho 2791 : F)⟩
        ⟨(dtkAccX46 rho : F), (dtkAccY46 rho : F)⟩
        ⟨(rho 2803 : F), (rho 2804 : F)⟩ := by
    have hnextx : dtkAccX46 rho = dtkAccX45 rho + rho 2798 := by
      unfold dtkAccX46 dtkAccX45
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 44]
      ring
    have hnexty : dtkAccY46 rho = dtkAccY45 rho + rho 2799 := by
      unfold dtkAccY46 dtkAccY45
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 45]
      ring
    have ha0 : (rho 2790 + rho 2791) * (dtkAccX45 rho + dtkAccY45 rho) = rho 2792 := by
      unfold dtkAccX45 dtkAccY45
      linear_combination r3298
    have ha1 : rho 2791 * dtkAccX45 rho = rho 2793 := by
      unfold dtkAccX45
      linear_combination r3299
    have ha2 : rho 2790 * dtkAccY45 rho = rho 2794 := by
      unfold dtkAccY45
      linear_combination r3300
    have ha3 : 3021 * rho 2793 * rho 2794 = rho 2795 := by
      linear_combination r3301
    have ha4 : rho 2796 * (1 + rho 2795) = rho 2793 + rho 2794 := by
      linear_combination r3302
    have ha5 : rho 2797 * (1 - rho 2795) = rho 2792 - rho 2793 - rho 2794 := by
      linear_combination r3303
    have haddx :
        rho 2796 * (1 + 3021 * (rho 2791 * dtkAccX45 rho) * (rho 2790 * dtkAccY45 rho)) =
          rho 2791 * dtkAccX45 rho + rho 2790 * dtkAccY45 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 2797 * (1 - 3021 * (rho 2791 * dtkAccX45 rho) * (rho 2790 * dtkAccY45 rho)) =
          (-1) * (rho 2791 * dtkAccX45 rho) - rho 2790 * dtkAccY45 rho +
            (dtkAccY45 rho - dtkAccX45 rho * (-1)) * (rho 2790 + rho 2791) := by
      rw [ha1, ha2, ha3]
      calc
        rho 2797 * (1 - rho 2795) = rho 2792 - rho 2793 - rho 2794 := ha5
        _ = (-1) * rho 2793 - rho 2794 + (dtkAccY45 rho - dtkAccX45 rho * (-1)) * (rho 2790 + rho 2791) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX46 rho = dtkAccX45 rho - Bool.toZMod bit * (dtkAccX45 rho - rho 2796) := by
      have hd : rho 2798 = Bool.toZMod bit * (rho 2796 - dtkAccX45 rho) := by
        rw [← hbit]
        unfold dtkAccX45
        linear_combination -r3304
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY46 rho = dtkAccY45 rho - Bool.toZMod bit * (dtkAccY45 rho - rho 2797) := by
      have hd : rho 2799 = Bool.toZMod bit * (rho 2797 - dtkAccY45 rho) := by
        rw [← hbit]
        unfold dtkAccY45
        linear_combination -r3305
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 2790 * rho 2791 = rho 2800 := by linear_combination r3306
    have hd1 : rho 2790 * rho 2790 = rho 2801 := by linear_combination r3307
    have hd2 : rho 2791 * rho 2791 = rho 2802 := by linear_combination r3308
    have hd3 : rho 2803 * (rho 2791 * rho 2791 + rho 2790 * rho 2790 * (-1)) = 2 * (rho 2790 * rho 2791) := by
      rw [hd0, hd1, hd2]
      linear_combination r3309
    have hd4 : rho 2804 * (2 - (rho 2791 * rho 2791 + rho 2790 * rho 2790 * (-1))) = rho 2791 * rho 2791 - rho 2790 * rho 2790 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3310
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX45 rho : F), (dtkAccY45 rho : F)⟩
      ⟨(rho 2790 : F), (rho 2791 : F)⟩
      ⟨(rho 2796 : F), (rho 2797 : F)⟩
      ⟨(dtkAccX46 rho : F), (dtkAccY46 rho : F)⟩
      ⟨(rho 2803 : F), (rho 2804 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung45

theorem dtk_rows46 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3311 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3312 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3313 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3314 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3315 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3316 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3317 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3318 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3319 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3320 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3321 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3322 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3323 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p41, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart41 at p41
  rcases p41 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3311, r3312, r3313, r3314, r3315, r3316, r3317, r3318, r3319, r3320, r3321, r3322, r3323, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3311, r3312, r3313, r3314, r3315, r3316, r3317, r3318, r3319, r3320, r3321, r3322, r3323⟩

theorem dtk_rung46 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1029 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX46 rho : F), (dtkAccY46 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 2803 : F), (rho 2804 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX46 rho : F), (dtkAccY46 rho : F)⟩
        ⟨(rho 2803 : F), (rho 2804 : F)⟩
        ⟨(dtkAccX47 rho : F), (dtkAccY47 rho : F)⟩
        ⟨(rho 2816 : F), (rho 2817 : F)⟩ := by
  obtain ⟨r3311, r3312, r3313, r3314, r3315, r3316, r3317, r3318, r3319, r3320, r3321, r3322, r3323⟩ := dtk_rows46 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3311 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc316 at r3311
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3311
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3312 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc317 at r3312
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3312
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3313 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc318 at r3313
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3313
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3314 at r3314
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3315 at r3315
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3316 at r3316
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3317 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc319 at r3317
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3317
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3318 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc320 at r3318
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3318
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3319 at r3319
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3320 at r3320
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3321 at r3321
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3322 at r3322
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3323 at r3323
  have hrung46 (bit : Bool) (hbit : rho 1029 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX46 rho : F), (dtkAccY46 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 2803 : F), (rho 2804 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX46 rho : F), (dtkAccY46 rho : F)⟩
        ⟨(rho 2803 : F), (rho 2804 : F)⟩
        ⟨(dtkAccX47 rho : F), (dtkAccY47 rho : F)⟩
        ⟨(rho 2816 : F), (rho 2817 : F)⟩ := by
    have hnextx : dtkAccX47 rho = dtkAccX46 rho + rho 2811 := by
      unfold dtkAccX47 dtkAccX46
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 45]
      ring
    have hnexty : dtkAccY47 rho = dtkAccY46 rho + rho 2812 := by
      unfold dtkAccY47 dtkAccY46
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 46]
      ring
    have ha0 : (rho 2803 + rho 2804) * (dtkAccX46 rho + dtkAccY46 rho) = rho 2805 := by
      unfold dtkAccX46 dtkAccY46
      linear_combination r3311
    have ha1 : rho 2804 * dtkAccX46 rho = rho 2806 := by
      unfold dtkAccX46
      linear_combination r3312
    have ha2 : rho 2803 * dtkAccY46 rho = rho 2807 := by
      unfold dtkAccY46
      linear_combination r3313
    have ha3 : 3021 * rho 2806 * rho 2807 = rho 2808 := by
      linear_combination r3314
    have ha4 : rho 2809 * (1 + rho 2808) = rho 2806 + rho 2807 := by
      linear_combination r3315
    have ha5 : rho 2810 * (1 - rho 2808) = rho 2805 - rho 2806 - rho 2807 := by
      linear_combination r3316
    have haddx :
        rho 2809 * (1 + 3021 * (rho 2804 * dtkAccX46 rho) * (rho 2803 * dtkAccY46 rho)) =
          rho 2804 * dtkAccX46 rho + rho 2803 * dtkAccY46 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 2810 * (1 - 3021 * (rho 2804 * dtkAccX46 rho) * (rho 2803 * dtkAccY46 rho)) =
          (-1) * (rho 2804 * dtkAccX46 rho) - rho 2803 * dtkAccY46 rho +
            (dtkAccY46 rho - dtkAccX46 rho * (-1)) * (rho 2803 + rho 2804) := by
      rw [ha1, ha2, ha3]
      calc
        rho 2810 * (1 - rho 2808) = rho 2805 - rho 2806 - rho 2807 := ha5
        _ = (-1) * rho 2806 - rho 2807 + (dtkAccY46 rho - dtkAccX46 rho * (-1)) * (rho 2803 + rho 2804) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX47 rho = dtkAccX46 rho - Bool.toZMod bit * (dtkAccX46 rho - rho 2809) := by
      have hd : rho 2811 = Bool.toZMod bit * (rho 2809 - dtkAccX46 rho) := by
        rw [← hbit]
        unfold dtkAccX46
        linear_combination -r3317
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY47 rho = dtkAccY46 rho - Bool.toZMod bit * (dtkAccY46 rho - rho 2810) := by
      have hd : rho 2812 = Bool.toZMod bit * (rho 2810 - dtkAccY46 rho) := by
        rw [← hbit]
        unfold dtkAccY46
        linear_combination -r3318
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 2803 * rho 2804 = rho 2813 := by linear_combination r3319
    have hd1 : rho 2803 * rho 2803 = rho 2814 := by linear_combination r3320
    have hd2 : rho 2804 * rho 2804 = rho 2815 := by linear_combination r3321
    have hd3 : rho 2816 * (rho 2804 * rho 2804 + rho 2803 * rho 2803 * (-1)) = 2 * (rho 2803 * rho 2804) := by
      rw [hd0, hd1, hd2]
      linear_combination r3322
    have hd4 : rho 2817 * (2 - (rho 2804 * rho 2804 + rho 2803 * rho 2803 * (-1))) = rho 2804 * rho 2804 - rho 2803 * rho 2803 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3323
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX46 rho : F), (dtkAccY46 rho : F)⟩
      ⟨(rho 2803 : F), (rho 2804 : F)⟩
      ⟨(rho 2809 : F), (rho 2810 : F)⟩
      ⟨(dtkAccX47 rho : F), (dtkAccY47 rho : F)⟩
      ⟨(rho 2816 : F), (rho 2817 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung46

theorem dtk_rows47 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3324 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3325 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3326 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3327 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3328 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3329 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3330 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3331 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3332 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3333 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3334 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3335 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3336 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p41, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart41 at p41
  rcases p41 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3324, r3325, r3326, r3327, r3328, r3329, r3330, r3331, r3332, r3333, r3334, r3335, r3336, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3324, r3325, r3326, r3327, r3328, r3329, r3330, r3331, r3332, r3333, r3334, r3335, r3336⟩

theorem dtk_rung47 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1030 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX47 rho : F), (dtkAccY47 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 2816 : F), (rho 2817 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX47 rho : F), (dtkAccY47 rho : F)⟩
        ⟨(rho 2816 : F), (rho 2817 : F)⟩
        ⟨(dtkAccX48 rho : F), (dtkAccY48 rho : F)⟩
        ⟨(rho 2829 : F), (rho 2830 : F)⟩ := by
  obtain ⟨r3324, r3325, r3326, r3327, r3328, r3329, r3330, r3331, r3332, r3333, r3334, r3335, r3336⟩ := dtk_rows47 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3324 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc321 at r3324
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3324
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3325 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc322 at r3325
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3325
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3326 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc323 at r3326
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3326
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3327 at r3327
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3328 at r3328
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3329 at r3329
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3330 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc324 at r3330
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3330
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3331 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc325 at r3331
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3331
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3332 at r3332
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3333 at r3333
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3334 at r3334
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3335 at r3335
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3336 at r3336
  have hrung47 (bit : Bool) (hbit : rho 1030 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX47 rho : F), (dtkAccY47 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 2816 : F), (rho 2817 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX47 rho : F), (dtkAccY47 rho : F)⟩
        ⟨(rho 2816 : F), (rho 2817 : F)⟩
        ⟨(dtkAccX48 rho : F), (dtkAccY48 rho : F)⟩
        ⟨(rho 2829 : F), (rho 2830 : F)⟩ := by
    have hnextx : dtkAccX48 rho = dtkAccX47 rho + rho 2824 := by
      unfold dtkAccX48 dtkAccX47
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 46]
      ring
    have hnexty : dtkAccY48 rho = dtkAccY47 rho + rho 2825 := by
      unfold dtkAccY48 dtkAccY47
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 47]
      ring
    have ha0 : (rho 2816 + rho 2817) * (dtkAccX47 rho + dtkAccY47 rho) = rho 2818 := by
      unfold dtkAccX47 dtkAccY47
      linear_combination r3324
    have ha1 : rho 2817 * dtkAccX47 rho = rho 2819 := by
      unfold dtkAccX47
      linear_combination r3325
    have ha2 : rho 2816 * dtkAccY47 rho = rho 2820 := by
      unfold dtkAccY47
      linear_combination r3326
    have ha3 : 3021 * rho 2819 * rho 2820 = rho 2821 := by
      linear_combination r3327
    have ha4 : rho 2822 * (1 + rho 2821) = rho 2819 + rho 2820 := by
      linear_combination r3328
    have ha5 : rho 2823 * (1 - rho 2821) = rho 2818 - rho 2819 - rho 2820 := by
      linear_combination r3329
    have haddx :
        rho 2822 * (1 + 3021 * (rho 2817 * dtkAccX47 rho) * (rho 2816 * dtkAccY47 rho)) =
          rho 2817 * dtkAccX47 rho + rho 2816 * dtkAccY47 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 2823 * (1 - 3021 * (rho 2817 * dtkAccX47 rho) * (rho 2816 * dtkAccY47 rho)) =
          (-1) * (rho 2817 * dtkAccX47 rho) - rho 2816 * dtkAccY47 rho +
            (dtkAccY47 rho - dtkAccX47 rho * (-1)) * (rho 2816 + rho 2817) := by
      rw [ha1, ha2, ha3]
      calc
        rho 2823 * (1 - rho 2821) = rho 2818 - rho 2819 - rho 2820 := ha5
        _ = (-1) * rho 2819 - rho 2820 + (dtkAccY47 rho - dtkAccX47 rho * (-1)) * (rho 2816 + rho 2817) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX48 rho = dtkAccX47 rho - Bool.toZMod bit * (dtkAccX47 rho - rho 2822) := by
      have hd : rho 2824 = Bool.toZMod bit * (rho 2822 - dtkAccX47 rho) := by
        rw [← hbit]
        unfold dtkAccX47
        linear_combination -r3330
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY48 rho = dtkAccY47 rho - Bool.toZMod bit * (dtkAccY47 rho - rho 2823) := by
      have hd : rho 2825 = Bool.toZMod bit * (rho 2823 - dtkAccY47 rho) := by
        rw [← hbit]
        unfold dtkAccY47
        linear_combination -r3331
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 2816 * rho 2817 = rho 2826 := by linear_combination r3332
    have hd1 : rho 2816 * rho 2816 = rho 2827 := by linear_combination r3333
    have hd2 : rho 2817 * rho 2817 = rho 2828 := by linear_combination r3334
    have hd3 : rho 2829 * (rho 2817 * rho 2817 + rho 2816 * rho 2816 * (-1)) = 2 * (rho 2816 * rho 2817) := by
      rw [hd0, hd1, hd2]
      linear_combination r3335
    have hd4 : rho 2830 * (2 - (rho 2817 * rho 2817 + rho 2816 * rho 2816 * (-1))) = rho 2817 * rho 2817 - rho 2816 * rho 2816 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3336
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX47 rho : F), (dtkAccY47 rho : F)⟩
      ⟨(rho 2816 : F), (rho 2817 : F)⟩
      ⟨(rho 2822 : F), (rho 2823 : F)⟩
      ⟨(dtkAccX48 rho : F), (dtkAccY48 rho : F)⟩
      ⟨(rho 2829 : F), (rho 2830 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung47

theorem dtk_hstep_c7 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (983 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 42 ≤ i → i < 48 →
      EdwardsBridge.onCurve (dtkLadderAccState rho i) →
      EdwardsBridge.onCurve (dtkLadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (dtkLadderAccState rho i) (dtkLadderCurState rho i)
        (dtkLadderAccState rho (i + 1)) (dtkLadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact dtk_rung42 rho h bits[42]! (hbitAt 42 (by omega)) hacc hcur
  · exact dtk_rung43 rho h bits[43]! (hbitAt 43 (by omega)) hacc hcur
  · exact dtk_rung44 rho h bits[44]! (hbitAt 44 (by omega)) hacc hcur
  · exact dtk_rung45 rho h bits[45]! (hbitAt 45 (by omega)) hacc hcur
  · exact dtk_rung46 rho h bits[46]! (hbitAt 46 (by omega)) hacc hcur
  · exact dtk_rung47 rho h bits[47]! (hbitAt 47 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport
