import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDtkScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs

theorem dtk_rows24 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3025 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3026 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3027 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3028 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3029 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3030 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3031 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3032 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3033 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3034 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3035 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3036 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3037 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p37, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart37 at p37
  rcases p37 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3025, r3026, r3027, r3028, r3029, r3030, r3031, r3032, r3033, r3034, r3035, r3036, r3037, _, _⟩
  exact ⟨r3025, r3026, r3027, r3028, r3029, r3030, r3031, r3032, r3033, r3034, r3035, r3036, r3037⟩

theorem dtk_rung24 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1007 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX24 rho : F), (dtkAccY24 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 2517 : F), (rho 2518 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX24 rho : F), (dtkAccY24 rho : F)⟩
        ⟨(rho 2517 : F), (rho 2518 : F)⟩
        ⟨(dtkAccX25 rho : F), (dtkAccY25 rho : F)⟩
        ⟨(rho 2530 : F), (rho 2531 : F)⟩ := by
  obtain ⟨r3025, r3026, r3027, r3028, r3029, r3030, r3031, r3032, r3033, r3034, r3035, r3036, r3037⟩ := dtk_rows24 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3025 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc206 at r3025
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3025
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3026 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc207 at r3026
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3026
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3027 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc208 at r3027
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3027
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3028 at r3028
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3029 at r3029
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3030 at r3030
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3031 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc209 at r3031
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3031
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3032 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc210 at r3032
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3032
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3033 at r3033
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3034 at r3034
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3035 at r3035
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3036 at r3036
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3037 at r3037
  have hrung24 (bit : Bool) (hbit : rho 1007 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX24 rho : F), (dtkAccY24 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 2517 : F), (rho 2518 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX24 rho : F), (dtkAccY24 rho : F)⟩
        ⟨(rho 2517 : F), (rho 2518 : F)⟩
        ⟨(dtkAccX25 rho : F), (dtkAccY25 rho : F)⟩
        ⟨(rho 2530 : F), (rho 2531 : F)⟩ := by
    have hnextx : dtkAccX25 rho = dtkAccX24 rho + rho 2525 := by
      unfold dtkAccX25 dtkAccX24
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 23]
      ring
    have hnexty : dtkAccY25 rho = dtkAccY24 rho + rho 2526 := by
      unfold dtkAccY25 dtkAccY24
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 24]
      ring
    have ha0 : (rho 2517 + rho 2518) * (dtkAccX24 rho + dtkAccY24 rho) = rho 2519 := by
      unfold dtkAccX24 dtkAccY24
      linear_combination r3025
    have ha1 : rho 2518 * dtkAccX24 rho = rho 2520 := by
      unfold dtkAccX24
      linear_combination r3026
    have ha2 : rho 2517 * dtkAccY24 rho = rho 2521 := by
      unfold dtkAccY24
      linear_combination r3027
    have ha3 : 3021 * rho 2520 * rho 2521 = rho 2522 := by
      linear_combination r3028
    have ha4 : rho 2523 * (1 + rho 2522) = rho 2520 + rho 2521 := by
      linear_combination r3029
    have ha5 : rho 2524 * (1 - rho 2522) = rho 2519 - rho 2520 - rho 2521 := by
      linear_combination r3030
    have haddx :
        rho 2523 * (1 + 3021 * (rho 2518 * dtkAccX24 rho) * (rho 2517 * dtkAccY24 rho)) =
          rho 2518 * dtkAccX24 rho + rho 2517 * dtkAccY24 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 2524 * (1 - 3021 * (rho 2518 * dtkAccX24 rho) * (rho 2517 * dtkAccY24 rho)) =
          (-1) * (rho 2518 * dtkAccX24 rho) - rho 2517 * dtkAccY24 rho +
            (dtkAccY24 rho - dtkAccX24 rho * (-1)) * (rho 2517 + rho 2518) := by
      rw [ha1, ha2, ha3]
      calc
        rho 2524 * (1 - rho 2522) = rho 2519 - rho 2520 - rho 2521 := ha5
        _ = (-1) * rho 2520 - rho 2521 + (dtkAccY24 rho - dtkAccX24 rho * (-1)) * (rho 2517 + rho 2518) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX25 rho = dtkAccX24 rho - Bool.toZMod bit * (dtkAccX24 rho - rho 2523) := by
      have hd : rho 2525 = Bool.toZMod bit * (rho 2523 - dtkAccX24 rho) := by
        rw [← hbit]
        unfold dtkAccX24
        linear_combination -r3031
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY25 rho = dtkAccY24 rho - Bool.toZMod bit * (dtkAccY24 rho - rho 2524) := by
      have hd : rho 2526 = Bool.toZMod bit * (rho 2524 - dtkAccY24 rho) := by
        rw [← hbit]
        unfold dtkAccY24
        linear_combination -r3032
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 2517 * rho 2518 = rho 2527 := by linear_combination r3033
    have hd1 : rho 2517 * rho 2517 = rho 2528 := by linear_combination r3034
    have hd2 : rho 2518 * rho 2518 = rho 2529 := by linear_combination r3035
    have hd3 : rho 2530 * (rho 2518 * rho 2518 + rho 2517 * rho 2517 * (-1)) = 2 * (rho 2517 * rho 2518) := by
      rw [hd0, hd1, hd2]
      linear_combination r3036
    have hd4 : rho 2531 * (2 - (rho 2518 * rho 2518 + rho 2517 * rho 2517 * (-1))) = rho 2518 * rho 2518 - rho 2517 * rho 2517 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3037
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX24 rho : F), (dtkAccY24 rho : F)⟩
      ⟨(rho 2517 : F), (rho 2518 : F)⟩
      ⟨(rho 2523 : F), (rho 2524 : F)⟩
      ⟨(dtkAccX25 rho : F), (dtkAccY25 rho : F)⟩
      ⟨(rho 2530 : F), (rho 2531 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung24

theorem dtk_rows25 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3038 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3039 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3040 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3041 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3042 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3043 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3044 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3045 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3046 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3047 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3048 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3049 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3050 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p37, p38, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart37 at p37
  rcases p37 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3038, r3039⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart38 at p38
  rcases p38 with ⟨r3040, r3041, r3042, r3043, r3044, r3045, r3046, r3047, r3048, r3049, r3050, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3038, r3039, r3040, r3041, r3042, r3043, r3044, r3045, r3046, r3047, r3048, r3049, r3050⟩

theorem dtk_rung25 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1008 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX25 rho : F), (dtkAccY25 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 2530 : F), (rho 2531 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX25 rho : F), (dtkAccY25 rho : F)⟩
        ⟨(rho 2530 : F), (rho 2531 : F)⟩
        ⟨(dtkAccX26 rho : F), (dtkAccY26 rho : F)⟩
        ⟨(rho 2543 : F), (rho 2544 : F)⟩ := by
  obtain ⟨r3038, r3039, r3040, r3041, r3042, r3043, r3044, r3045, r3046, r3047, r3048, r3049, r3050⟩ := dtk_rows25 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3038 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc211 at r3038
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3038
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3039 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc212 at r3039
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3039
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3040 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc213 at r3040
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3040
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3041 at r3041
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3042 at r3042
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3043 at r3043
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3044 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc214 at r3044
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3044
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3045 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc215 at r3045
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3045
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3046 at r3046
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3047 at r3047
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3048 at r3048
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3049 at r3049
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3050 at r3050
  have hrung25 (bit : Bool) (hbit : rho 1008 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX25 rho : F), (dtkAccY25 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 2530 : F), (rho 2531 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX25 rho : F), (dtkAccY25 rho : F)⟩
        ⟨(rho 2530 : F), (rho 2531 : F)⟩
        ⟨(dtkAccX26 rho : F), (dtkAccY26 rho : F)⟩
        ⟨(rho 2543 : F), (rho 2544 : F)⟩ := by
    have hnextx : dtkAccX26 rho = dtkAccX25 rho + rho 2538 := by
      unfold dtkAccX26 dtkAccX25
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 24]
      ring
    have hnexty : dtkAccY26 rho = dtkAccY25 rho + rho 2539 := by
      unfold dtkAccY26 dtkAccY25
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 25]
      ring
    have ha0 : (rho 2530 + rho 2531) * (dtkAccX25 rho + dtkAccY25 rho) = rho 2532 := by
      unfold dtkAccX25 dtkAccY25
      linear_combination r3038
    have ha1 : rho 2531 * dtkAccX25 rho = rho 2533 := by
      unfold dtkAccX25
      linear_combination r3039
    have ha2 : rho 2530 * dtkAccY25 rho = rho 2534 := by
      unfold dtkAccY25
      linear_combination r3040
    have ha3 : 3021 * rho 2533 * rho 2534 = rho 2535 := by
      linear_combination r3041
    have ha4 : rho 2536 * (1 + rho 2535) = rho 2533 + rho 2534 := by
      linear_combination r3042
    have ha5 : rho 2537 * (1 - rho 2535) = rho 2532 - rho 2533 - rho 2534 := by
      linear_combination r3043
    have haddx :
        rho 2536 * (1 + 3021 * (rho 2531 * dtkAccX25 rho) * (rho 2530 * dtkAccY25 rho)) =
          rho 2531 * dtkAccX25 rho + rho 2530 * dtkAccY25 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 2537 * (1 - 3021 * (rho 2531 * dtkAccX25 rho) * (rho 2530 * dtkAccY25 rho)) =
          (-1) * (rho 2531 * dtkAccX25 rho) - rho 2530 * dtkAccY25 rho +
            (dtkAccY25 rho - dtkAccX25 rho * (-1)) * (rho 2530 + rho 2531) := by
      rw [ha1, ha2, ha3]
      calc
        rho 2537 * (1 - rho 2535) = rho 2532 - rho 2533 - rho 2534 := ha5
        _ = (-1) * rho 2533 - rho 2534 + (dtkAccY25 rho - dtkAccX25 rho * (-1)) * (rho 2530 + rho 2531) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX26 rho = dtkAccX25 rho - Bool.toZMod bit * (dtkAccX25 rho - rho 2536) := by
      have hd : rho 2538 = Bool.toZMod bit * (rho 2536 - dtkAccX25 rho) := by
        rw [← hbit]
        unfold dtkAccX25
        linear_combination -r3044
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY26 rho = dtkAccY25 rho - Bool.toZMod bit * (dtkAccY25 rho - rho 2537) := by
      have hd : rho 2539 = Bool.toZMod bit * (rho 2537 - dtkAccY25 rho) := by
        rw [← hbit]
        unfold dtkAccY25
        linear_combination -r3045
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 2530 * rho 2531 = rho 2540 := by linear_combination r3046
    have hd1 : rho 2530 * rho 2530 = rho 2541 := by linear_combination r3047
    have hd2 : rho 2531 * rho 2531 = rho 2542 := by linear_combination r3048
    have hd3 : rho 2543 * (rho 2531 * rho 2531 + rho 2530 * rho 2530 * (-1)) = 2 * (rho 2530 * rho 2531) := by
      rw [hd0, hd1, hd2]
      linear_combination r3049
    have hd4 : rho 2544 * (2 - (rho 2531 * rho 2531 + rho 2530 * rho 2530 * (-1))) = rho 2531 * rho 2531 - rho 2530 * rho 2530 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3050
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX25 rho : F), (dtkAccY25 rho : F)⟩
      ⟨(rho 2530 : F), (rho 2531 : F)⟩
      ⟨(rho 2536 : F), (rho 2537 : F)⟩
      ⟨(dtkAccX26 rho : F), (dtkAccY26 rho : F)⟩
      ⟨(rho 2543 : F), (rho 2544 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung25

theorem dtk_rows26 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3051 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3052 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3053 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3054 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3055 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3056 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3057 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3058 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3059 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3060 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3061 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3062 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3063 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p38, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart38 at p38
  rcases p38 with ⟨_, _, _, _, _, _, _, _, _, _, _, r3051, r3052, r3053, r3054, r3055, r3056, r3057, r3058, r3059, r3060, r3061, r3062, r3063, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3051, r3052, r3053, r3054, r3055, r3056, r3057, r3058, r3059, r3060, r3061, r3062, r3063⟩

theorem dtk_rung26 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1009 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX26 rho : F), (dtkAccY26 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 2543 : F), (rho 2544 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX26 rho : F), (dtkAccY26 rho : F)⟩
        ⟨(rho 2543 : F), (rho 2544 : F)⟩
        ⟨(dtkAccX27 rho : F), (dtkAccY27 rho : F)⟩
        ⟨(rho 2556 : F), (rho 2557 : F)⟩ := by
  obtain ⟨r3051, r3052, r3053, r3054, r3055, r3056, r3057, r3058, r3059, r3060, r3061, r3062, r3063⟩ := dtk_rows26 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3051 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc216 at r3051
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3051
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3052 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc217 at r3052
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3052
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3053 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc218 at r3053
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3053
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3054 at r3054
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3055 at r3055
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3056 at r3056
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3057 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc219 at r3057
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3057
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3058 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc220 at r3058
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3058
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3059 at r3059
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3060 at r3060
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3061 at r3061
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3062 at r3062
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3063 at r3063
  have hrung26 (bit : Bool) (hbit : rho 1009 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX26 rho : F), (dtkAccY26 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 2543 : F), (rho 2544 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX26 rho : F), (dtkAccY26 rho : F)⟩
        ⟨(rho 2543 : F), (rho 2544 : F)⟩
        ⟨(dtkAccX27 rho : F), (dtkAccY27 rho : F)⟩
        ⟨(rho 2556 : F), (rho 2557 : F)⟩ := by
    have hnextx : dtkAccX27 rho = dtkAccX26 rho + rho 2551 := by
      unfold dtkAccX27 dtkAccX26
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 25]
      ring
    have hnexty : dtkAccY27 rho = dtkAccY26 rho + rho 2552 := by
      unfold dtkAccY27 dtkAccY26
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 26]
      ring
    have ha0 : (rho 2543 + rho 2544) * (dtkAccX26 rho + dtkAccY26 rho) = rho 2545 := by
      unfold dtkAccX26 dtkAccY26
      linear_combination r3051
    have ha1 : rho 2544 * dtkAccX26 rho = rho 2546 := by
      unfold dtkAccX26
      linear_combination r3052
    have ha2 : rho 2543 * dtkAccY26 rho = rho 2547 := by
      unfold dtkAccY26
      linear_combination r3053
    have ha3 : 3021 * rho 2546 * rho 2547 = rho 2548 := by
      linear_combination r3054
    have ha4 : rho 2549 * (1 + rho 2548) = rho 2546 + rho 2547 := by
      linear_combination r3055
    have ha5 : rho 2550 * (1 - rho 2548) = rho 2545 - rho 2546 - rho 2547 := by
      linear_combination r3056
    have haddx :
        rho 2549 * (1 + 3021 * (rho 2544 * dtkAccX26 rho) * (rho 2543 * dtkAccY26 rho)) =
          rho 2544 * dtkAccX26 rho + rho 2543 * dtkAccY26 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 2550 * (1 - 3021 * (rho 2544 * dtkAccX26 rho) * (rho 2543 * dtkAccY26 rho)) =
          (-1) * (rho 2544 * dtkAccX26 rho) - rho 2543 * dtkAccY26 rho +
            (dtkAccY26 rho - dtkAccX26 rho * (-1)) * (rho 2543 + rho 2544) := by
      rw [ha1, ha2, ha3]
      calc
        rho 2550 * (1 - rho 2548) = rho 2545 - rho 2546 - rho 2547 := ha5
        _ = (-1) * rho 2546 - rho 2547 + (dtkAccY26 rho - dtkAccX26 rho * (-1)) * (rho 2543 + rho 2544) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX27 rho = dtkAccX26 rho - Bool.toZMod bit * (dtkAccX26 rho - rho 2549) := by
      have hd : rho 2551 = Bool.toZMod bit * (rho 2549 - dtkAccX26 rho) := by
        rw [← hbit]
        unfold dtkAccX26
        linear_combination -r3057
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY27 rho = dtkAccY26 rho - Bool.toZMod bit * (dtkAccY26 rho - rho 2550) := by
      have hd : rho 2552 = Bool.toZMod bit * (rho 2550 - dtkAccY26 rho) := by
        rw [← hbit]
        unfold dtkAccY26
        linear_combination -r3058
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 2543 * rho 2544 = rho 2553 := by linear_combination r3059
    have hd1 : rho 2543 * rho 2543 = rho 2554 := by linear_combination r3060
    have hd2 : rho 2544 * rho 2544 = rho 2555 := by linear_combination r3061
    have hd3 : rho 2556 * (rho 2544 * rho 2544 + rho 2543 * rho 2543 * (-1)) = 2 * (rho 2543 * rho 2544) := by
      rw [hd0, hd1, hd2]
      linear_combination r3062
    have hd4 : rho 2557 * (2 - (rho 2544 * rho 2544 + rho 2543 * rho 2543 * (-1))) = rho 2544 * rho 2544 - rho 2543 * rho 2543 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3063
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX26 rho : F), (dtkAccY26 rho : F)⟩
      ⟨(rho 2543 : F), (rho 2544 : F)⟩
      ⟨(rho 2549 : F), (rho 2550 : F)⟩
      ⟨(dtkAccX27 rho : F), (dtkAccY27 rho : F)⟩
      ⟨(rho 2556 : F), (rho 2557 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung26

theorem dtk_rows27 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3064 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3065 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3066 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3067 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3068 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3069 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3070 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3071 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3072 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3073 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3074 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3075 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3076 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p38, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart38 at p38
  rcases p38 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3064, r3065, r3066, r3067, r3068, r3069, r3070, r3071, r3072, r3073, r3074, r3075, r3076, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3064, r3065, r3066, r3067, r3068, r3069, r3070, r3071, r3072, r3073, r3074, r3075, r3076⟩

theorem dtk_rung27 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1010 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX27 rho : F), (dtkAccY27 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 2556 : F), (rho 2557 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX27 rho : F), (dtkAccY27 rho : F)⟩
        ⟨(rho 2556 : F), (rho 2557 : F)⟩
        ⟨(dtkAccX28 rho : F), (dtkAccY28 rho : F)⟩
        ⟨(rho 2569 : F), (rho 2570 : F)⟩ := by
  obtain ⟨r3064, r3065, r3066, r3067, r3068, r3069, r3070, r3071, r3072, r3073, r3074, r3075, r3076⟩ := dtk_rows27 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3064 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc221 at r3064
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3064
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3065 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc222 at r3065
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3065
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3066 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc223 at r3066
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3066
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3067 at r3067
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3068 at r3068
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3069 at r3069
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3070 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc224 at r3070
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3070
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3071 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc225 at r3071
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3071
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3072 at r3072
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3073 at r3073
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3074 at r3074
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3075 at r3075
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3076 at r3076
  have hrung27 (bit : Bool) (hbit : rho 1010 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX27 rho : F), (dtkAccY27 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 2556 : F), (rho 2557 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX27 rho : F), (dtkAccY27 rho : F)⟩
        ⟨(rho 2556 : F), (rho 2557 : F)⟩
        ⟨(dtkAccX28 rho : F), (dtkAccY28 rho : F)⟩
        ⟨(rho 2569 : F), (rho 2570 : F)⟩ := by
    have hnextx : dtkAccX28 rho = dtkAccX27 rho + rho 2564 := by
      unfold dtkAccX28 dtkAccX27
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 26]
      ring
    have hnexty : dtkAccY28 rho = dtkAccY27 rho + rho 2565 := by
      unfold dtkAccY28 dtkAccY27
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 27]
      ring
    have ha0 : (rho 2556 + rho 2557) * (dtkAccX27 rho + dtkAccY27 rho) = rho 2558 := by
      unfold dtkAccX27 dtkAccY27
      linear_combination r3064
    have ha1 : rho 2557 * dtkAccX27 rho = rho 2559 := by
      unfold dtkAccX27
      linear_combination r3065
    have ha2 : rho 2556 * dtkAccY27 rho = rho 2560 := by
      unfold dtkAccY27
      linear_combination r3066
    have ha3 : 3021 * rho 2559 * rho 2560 = rho 2561 := by
      linear_combination r3067
    have ha4 : rho 2562 * (1 + rho 2561) = rho 2559 + rho 2560 := by
      linear_combination r3068
    have ha5 : rho 2563 * (1 - rho 2561) = rho 2558 - rho 2559 - rho 2560 := by
      linear_combination r3069
    have haddx :
        rho 2562 * (1 + 3021 * (rho 2557 * dtkAccX27 rho) * (rho 2556 * dtkAccY27 rho)) =
          rho 2557 * dtkAccX27 rho + rho 2556 * dtkAccY27 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 2563 * (1 - 3021 * (rho 2557 * dtkAccX27 rho) * (rho 2556 * dtkAccY27 rho)) =
          (-1) * (rho 2557 * dtkAccX27 rho) - rho 2556 * dtkAccY27 rho +
            (dtkAccY27 rho - dtkAccX27 rho * (-1)) * (rho 2556 + rho 2557) := by
      rw [ha1, ha2, ha3]
      calc
        rho 2563 * (1 - rho 2561) = rho 2558 - rho 2559 - rho 2560 := ha5
        _ = (-1) * rho 2559 - rho 2560 + (dtkAccY27 rho - dtkAccX27 rho * (-1)) * (rho 2556 + rho 2557) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX28 rho = dtkAccX27 rho - Bool.toZMod bit * (dtkAccX27 rho - rho 2562) := by
      have hd : rho 2564 = Bool.toZMod bit * (rho 2562 - dtkAccX27 rho) := by
        rw [← hbit]
        unfold dtkAccX27
        linear_combination -r3070
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY28 rho = dtkAccY27 rho - Bool.toZMod bit * (dtkAccY27 rho - rho 2563) := by
      have hd : rho 2565 = Bool.toZMod bit * (rho 2563 - dtkAccY27 rho) := by
        rw [← hbit]
        unfold dtkAccY27
        linear_combination -r3071
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 2556 * rho 2557 = rho 2566 := by linear_combination r3072
    have hd1 : rho 2556 * rho 2556 = rho 2567 := by linear_combination r3073
    have hd2 : rho 2557 * rho 2557 = rho 2568 := by linear_combination r3074
    have hd3 : rho 2569 * (rho 2557 * rho 2557 + rho 2556 * rho 2556 * (-1)) = 2 * (rho 2556 * rho 2557) := by
      rw [hd0, hd1, hd2]
      linear_combination r3075
    have hd4 : rho 2570 * (2 - (rho 2557 * rho 2557 + rho 2556 * rho 2556 * (-1))) = rho 2557 * rho 2557 - rho 2556 * rho 2556 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3076
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX27 rho : F), (dtkAccY27 rho : F)⟩
      ⟨(rho 2556 : F), (rho 2557 : F)⟩
      ⟨(rho 2562 : F), (rho 2563 : F)⟩
      ⟨(dtkAccX28 rho : F), (dtkAccY28 rho : F)⟩
      ⟨(rho 2569 : F), (rho 2570 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung27

theorem dtk_rows28 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3077 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3078 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3079 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3080 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3081 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3082 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3083 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3084 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3085 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3086 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3087 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3088 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3089 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p38, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart38 at p38
  rcases p38 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3077, r3078, r3079, r3080, r3081, r3082, r3083, r3084, r3085, r3086, r3087, r3088, r3089, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3077, r3078, r3079, r3080, r3081, r3082, r3083, r3084, r3085, r3086, r3087, r3088, r3089⟩

theorem dtk_rung28 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1011 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX28 rho : F), (dtkAccY28 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 2569 : F), (rho 2570 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX28 rho : F), (dtkAccY28 rho : F)⟩
        ⟨(rho 2569 : F), (rho 2570 : F)⟩
        ⟨(dtkAccX29 rho : F), (dtkAccY29 rho : F)⟩
        ⟨(rho 2582 : F), (rho 2583 : F)⟩ := by
  obtain ⟨r3077, r3078, r3079, r3080, r3081, r3082, r3083, r3084, r3085, r3086, r3087, r3088, r3089⟩ := dtk_rows28 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3077 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc226 at r3077
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3077
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3078 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc227 at r3078
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3078
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3079 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc228 at r3079
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3079
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3080 at r3080
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3081 at r3081
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3082 at r3082
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3083 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc229 at r3083
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3083
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3084 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc230 at r3084
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3084
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3085 at r3085
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3086 at r3086
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3087 at r3087
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3088 at r3088
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3089 at r3089
  have hrung28 (bit : Bool) (hbit : rho 1011 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX28 rho : F), (dtkAccY28 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 2569 : F), (rho 2570 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX28 rho : F), (dtkAccY28 rho : F)⟩
        ⟨(rho 2569 : F), (rho 2570 : F)⟩
        ⟨(dtkAccX29 rho : F), (dtkAccY29 rho : F)⟩
        ⟨(rho 2582 : F), (rho 2583 : F)⟩ := by
    have hnextx : dtkAccX29 rho = dtkAccX28 rho + rho 2577 := by
      unfold dtkAccX29 dtkAccX28
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 27]
      ring
    have hnexty : dtkAccY29 rho = dtkAccY28 rho + rho 2578 := by
      unfold dtkAccY29 dtkAccY28
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 28]
      ring
    have ha0 : (rho 2569 + rho 2570) * (dtkAccX28 rho + dtkAccY28 rho) = rho 2571 := by
      unfold dtkAccX28 dtkAccY28
      linear_combination r3077
    have ha1 : rho 2570 * dtkAccX28 rho = rho 2572 := by
      unfold dtkAccX28
      linear_combination r3078
    have ha2 : rho 2569 * dtkAccY28 rho = rho 2573 := by
      unfold dtkAccY28
      linear_combination r3079
    have ha3 : 3021 * rho 2572 * rho 2573 = rho 2574 := by
      linear_combination r3080
    have ha4 : rho 2575 * (1 + rho 2574) = rho 2572 + rho 2573 := by
      linear_combination r3081
    have ha5 : rho 2576 * (1 - rho 2574) = rho 2571 - rho 2572 - rho 2573 := by
      linear_combination r3082
    have haddx :
        rho 2575 * (1 + 3021 * (rho 2570 * dtkAccX28 rho) * (rho 2569 * dtkAccY28 rho)) =
          rho 2570 * dtkAccX28 rho + rho 2569 * dtkAccY28 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 2576 * (1 - 3021 * (rho 2570 * dtkAccX28 rho) * (rho 2569 * dtkAccY28 rho)) =
          (-1) * (rho 2570 * dtkAccX28 rho) - rho 2569 * dtkAccY28 rho +
            (dtkAccY28 rho - dtkAccX28 rho * (-1)) * (rho 2569 + rho 2570) := by
      rw [ha1, ha2, ha3]
      calc
        rho 2576 * (1 - rho 2574) = rho 2571 - rho 2572 - rho 2573 := ha5
        _ = (-1) * rho 2572 - rho 2573 + (dtkAccY28 rho - dtkAccX28 rho * (-1)) * (rho 2569 + rho 2570) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX29 rho = dtkAccX28 rho - Bool.toZMod bit * (dtkAccX28 rho - rho 2575) := by
      have hd : rho 2577 = Bool.toZMod bit * (rho 2575 - dtkAccX28 rho) := by
        rw [← hbit]
        unfold dtkAccX28
        linear_combination -r3083
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY29 rho = dtkAccY28 rho - Bool.toZMod bit * (dtkAccY28 rho - rho 2576) := by
      have hd : rho 2578 = Bool.toZMod bit * (rho 2576 - dtkAccY28 rho) := by
        rw [← hbit]
        unfold dtkAccY28
        linear_combination -r3084
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 2569 * rho 2570 = rho 2579 := by linear_combination r3085
    have hd1 : rho 2569 * rho 2569 = rho 2580 := by linear_combination r3086
    have hd2 : rho 2570 * rho 2570 = rho 2581 := by linear_combination r3087
    have hd3 : rho 2582 * (rho 2570 * rho 2570 + rho 2569 * rho 2569 * (-1)) = 2 * (rho 2569 * rho 2570) := by
      rw [hd0, hd1, hd2]
      linear_combination r3088
    have hd4 : rho 2583 * (2 - (rho 2570 * rho 2570 + rho 2569 * rho 2569 * (-1))) = rho 2570 * rho 2570 - rho 2569 * rho 2569 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3089
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX28 rho : F), (dtkAccY28 rho : F)⟩
      ⟨(rho 2569 : F), (rho 2570 : F)⟩
      ⟨(rho 2575 : F), (rho 2576 : F)⟩
      ⟨(dtkAccX29 rho : F), (dtkAccY29 rho : F)⟩
      ⟨(rho 2582 : F), (rho 2583 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung28

theorem dtk_rows29 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3090 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3091 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3092 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3093 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3094 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3095 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3096 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3097 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3098 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3099 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3100 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3101 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3102 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p38, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart38 at p38
  rcases p38 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3090, r3091, r3092, r3093, r3094, r3095, r3096, r3097, r3098, r3099, r3100, r3101, r3102, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3090, r3091, r3092, r3093, r3094, r3095, r3096, r3097, r3098, r3099, r3100, r3101, r3102⟩

theorem dtk_rung29 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1012 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX29 rho : F), (dtkAccY29 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 2582 : F), (rho 2583 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX29 rho : F), (dtkAccY29 rho : F)⟩
        ⟨(rho 2582 : F), (rho 2583 : F)⟩
        ⟨(dtkAccX30 rho : F), (dtkAccY30 rho : F)⟩
        ⟨(rho 2595 : F), (rho 2596 : F)⟩ := by
  obtain ⟨r3090, r3091, r3092, r3093, r3094, r3095, r3096, r3097, r3098, r3099, r3100, r3101, r3102⟩ := dtk_rows29 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3090 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc231 at r3090
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3090
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3091 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc232 at r3091
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3091
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3092 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc233 at r3092
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3092
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3093 at r3093
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3094 at r3094
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3095 at r3095
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3096 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc234 at r3096
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3096
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3097 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc235 at r3097
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3097
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3098 at r3098
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3099 at r3099
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3100 at r3100
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3101 at r3101
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3102 at r3102
  have hrung29 (bit : Bool) (hbit : rho 1012 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX29 rho : F), (dtkAccY29 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 2582 : F), (rho 2583 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX29 rho : F), (dtkAccY29 rho : F)⟩
        ⟨(rho 2582 : F), (rho 2583 : F)⟩
        ⟨(dtkAccX30 rho : F), (dtkAccY30 rho : F)⟩
        ⟨(rho 2595 : F), (rho 2596 : F)⟩ := by
    have hnextx : dtkAccX30 rho = dtkAccX29 rho + rho 2590 := by
      unfold dtkAccX30 dtkAccX29
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 28]
      ring
    have hnexty : dtkAccY30 rho = dtkAccY29 rho + rho 2591 := by
      unfold dtkAccY30 dtkAccY29
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 29]
      ring
    have ha0 : (rho 2582 + rho 2583) * (dtkAccX29 rho + dtkAccY29 rho) = rho 2584 := by
      unfold dtkAccX29 dtkAccY29
      linear_combination r3090
    have ha1 : rho 2583 * dtkAccX29 rho = rho 2585 := by
      unfold dtkAccX29
      linear_combination r3091
    have ha2 : rho 2582 * dtkAccY29 rho = rho 2586 := by
      unfold dtkAccY29
      linear_combination r3092
    have ha3 : 3021 * rho 2585 * rho 2586 = rho 2587 := by
      linear_combination r3093
    have ha4 : rho 2588 * (1 + rho 2587) = rho 2585 + rho 2586 := by
      linear_combination r3094
    have ha5 : rho 2589 * (1 - rho 2587) = rho 2584 - rho 2585 - rho 2586 := by
      linear_combination r3095
    have haddx :
        rho 2588 * (1 + 3021 * (rho 2583 * dtkAccX29 rho) * (rho 2582 * dtkAccY29 rho)) =
          rho 2583 * dtkAccX29 rho + rho 2582 * dtkAccY29 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 2589 * (1 - 3021 * (rho 2583 * dtkAccX29 rho) * (rho 2582 * dtkAccY29 rho)) =
          (-1) * (rho 2583 * dtkAccX29 rho) - rho 2582 * dtkAccY29 rho +
            (dtkAccY29 rho - dtkAccX29 rho * (-1)) * (rho 2582 + rho 2583) := by
      rw [ha1, ha2, ha3]
      calc
        rho 2589 * (1 - rho 2587) = rho 2584 - rho 2585 - rho 2586 := ha5
        _ = (-1) * rho 2585 - rho 2586 + (dtkAccY29 rho - dtkAccX29 rho * (-1)) * (rho 2582 + rho 2583) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX30 rho = dtkAccX29 rho - Bool.toZMod bit * (dtkAccX29 rho - rho 2588) := by
      have hd : rho 2590 = Bool.toZMod bit * (rho 2588 - dtkAccX29 rho) := by
        rw [← hbit]
        unfold dtkAccX29
        linear_combination -r3096
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY30 rho = dtkAccY29 rho - Bool.toZMod bit * (dtkAccY29 rho - rho 2589) := by
      have hd : rho 2591 = Bool.toZMod bit * (rho 2589 - dtkAccY29 rho) := by
        rw [← hbit]
        unfold dtkAccY29
        linear_combination -r3097
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 2582 * rho 2583 = rho 2592 := by linear_combination r3098
    have hd1 : rho 2582 * rho 2582 = rho 2593 := by linear_combination r3099
    have hd2 : rho 2583 * rho 2583 = rho 2594 := by linear_combination r3100
    have hd3 : rho 2595 * (rho 2583 * rho 2583 + rho 2582 * rho 2582 * (-1)) = 2 * (rho 2582 * rho 2583) := by
      rw [hd0, hd1, hd2]
      linear_combination r3101
    have hd4 : rho 2596 * (2 - (rho 2583 * rho 2583 + rho 2582 * rho 2582 * (-1))) = rho 2583 * rho 2583 - rho 2582 * rho 2582 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3102
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX29 rho : F), (dtkAccY29 rho : F)⟩
      ⟨(rho 2582 : F), (rho 2583 : F)⟩
      ⟨(rho 2588 : F), (rho 2589 : F)⟩
      ⟨(dtkAccX30 rho : F), (dtkAccY30 rho : F)⟩
      ⟨(rho 2595 : F), (rho 2596 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung29

theorem dtk_hstep_c4 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (983 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 24 ≤ i → i < 30 →
      EdwardsBridge.onCurve (dtkLadderAccState rho i) →
      EdwardsBridge.onCurve (dtkLadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (dtkLadderAccState rho i) (dtkLadderCurState rho i)
        (dtkLadderAccState rho (i + 1)) (dtkLadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact dtk_rung24 rho h bits[24]! (hbitAt 24 (by omega)) hacc hcur
  · exact dtk_rung25 rho h bits[25]! (hbitAt 25 (by omega)) hacc hcur
  · exact dtk_rung26 rho h bits[26]! (hbitAt 26 (by omega)) hacc hcur
  · exact dtk_rung27 rho h bits[27]! (hbitAt 27 (by omega)) hacc hcur
  · exact dtk_rung28 rho h bits[28]! (hbitAt 28 (by omega)) hacc hcur
  · exact dtk_rung29 rho h bits[29]! (hbitAt 29 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport
