import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDtkScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs

theorem dtk_rows18 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2947 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2948 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2949 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2950 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2951 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2952 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2953 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2954 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2955 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2956 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2957 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2958 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2959 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p36, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart36 at p36
  rcases p36 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2947, r2948, r2949, r2950, r2951, r2952, r2953, r2954, r2955, r2956, r2957, r2958, r2959⟩
  exact ⟨r2947, r2948, r2949, r2950, r2951, r2952, r2953, r2954, r2955, r2956, r2957, r2958, r2959⟩

theorem dtk_rung18 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1001 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX18 rho : F), (dtkAccY18 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 2439 : F), (rho 2440 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX18 rho : F), (dtkAccY18 rho : F)⟩
        ⟨(rho 2439 : F), (rho 2440 : F)⟩
        ⟨(dtkAccX19 rho : F), (dtkAccY19 rho : F)⟩
        ⟨(rho 2452 : F), (rho 2453 : F)⟩ := by
  obtain ⟨r2947, r2948, r2949, r2950, r2951, r2952, r2953, r2954, r2955, r2956, r2957, r2958, r2959⟩ := dtk_rows18 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2947 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc176 at r2947
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2947
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2948 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc177 at r2948
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2948
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2949 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc178 at r2949
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2949
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2950 at r2950
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2951 at r2951
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2952 at r2952
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2953 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc179 at r2953
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2953
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2954 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc180 at r2954
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2954
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2955 at r2955
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2956 at r2956
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2957 at r2957
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2958 at r2958
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2959 at r2959
  have hrung18 (bit : Bool) (hbit : rho 1001 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX18 rho : F), (dtkAccY18 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 2439 : F), (rho 2440 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX18 rho : F), (dtkAccY18 rho : F)⟩
        ⟨(rho 2439 : F), (rho 2440 : F)⟩
        ⟨(dtkAccX19 rho : F), (dtkAccY19 rho : F)⟩
        ⟨(rho 2452 : F), (rho 2453 : F)⟩ := by
    have hnextx : dtkAccX19 rho = dtkAccX18 rho + rho 2447 := by
      unfold dtkAccX19 dtkAccX18
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 17]
      ring
    have hnexty : dtkAccY19 rho = dtkAccY18 rho + rho 2448 := by
      unfold dtkAccY19 dtkAccY18
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 18]
      ring
    have ha0 : (rho 2439 + rho 2440) * (dtkAccX18 rho + dtkAccY18 rho) = rho 2441 := by
      unfold dtkAccX18 dtkAccY18
      linear_combination r2947
    have ha1 : rho 2440 * dtkAccX18 rho = rho 2442 := by
      unfold dtkAccX18
      linear_combination r2948
    have ha2 : rho 2439 * dtkAccY18 rho = rho 2443 := by
      unfold dtkAccY18
      linear_combination r2949
    have ha3 : 3021 * rho 2442 * rho 2443 = rho 2444 := by
      linear_combination r2950
    have ha4 : rho 2445 * (1 + rho 2444) = rho 2442 + rho 2443 := by
      linear_combination r2951
    have ha5 : rho 2446 * (1 - rho 2444) = rho 2441 - rho 2442 - rho 2443 := by
      linear_combination r2952
    have haddx :
        rho 2445 * (1 + 3021 * (rho 2440 * dtkAccX18 rho) * (rho 2439 * dtkAccY18 rho)) =
          rho 2440 * dtkAccX18 rho + rho 2439 * dtkAccY18 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 2446 * (1 - 3021 * (rho 2440 * dtkAccX18 rho) * (rho 2439 * dtkAccY18 rho)) =
          (-1) * (rho 2440 * dtkAccX18 rho) - rho 2439 * dtkAccY18 rho +
            (dtkAccY18 rho - dtkAccX18 rho * (-1)) * (rho 2439 + rho 2440) := by
      rw [ha1, ha2, ha3]
      calc
        rho 2446 * (1 - rho 2444) = rho 2441 - rho 2442 - rho 2443 := ha5
        _ = (-1) * rho 2442 - rho 2443 + (dtkAccY18 rho - dtkAccX18 rho * (-1)) * (rho 2439 + rho 2440) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX19 rho = dtkAccX18 rho - Bool.toZMod bit * (dtkAccX18 rho - rho 2445) := by
      have hd : rho 2447 = Bool.toZMod bit * (rho 2445 - dtkAccX18 rho) := by
        rw [← hbit]
        unfold dtkAccX18
        linear_combination -r2953
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY19 rho = dtkAccY18 rho - Bool.toZMod bit * (dtkAccY18 rho - rho 2446) := by
      have hd : rho 2448 = Bool.toZMod bit * (rho 2446 - dtkAccY18 rho) := by
        rw [← hbit]
        unfold dtkAccY18
        linear_combination -r2954
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 2439 * rho 2440 = rho 2449 := by linear_combination r2955
    have hd1 : rho 2439 * rho 2439 = rho 2450 := by linear_combination r2956
    have hd2 : rho 2440 * rho 2440 = rho 2451 := by linear_combination r2957
    have hd3 : rho 2452 * (rho 2440 * rho 2440 + rho 2439 * rho 2439 * (-1)) = 2 * (rho 2439 * rho 2440) := by
      rw [hd0, hd1, hd2]
      linear_combination r2958
    have hd4 : rho 2453 * (2 - (rho 2440 * rho 2440 + rho 2439 * rho 2439 * (-1))) = rho 2440 * rho 2440 - rho 2439 * rho 2439 * (-1) := by
      rw [hd1, hd2]
      linear_combination r2959
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX18 rho : F), (dtkAccY18 rho : F)⟩
      ⟨(rho 2439 : F), (rho 2440 : F)⟩
      ⟨(rho 2445 : F), (rho 2446 : F)⟩
      ⟨(dtkAccX19 rho : F), (dtkAccY19 rho : F)⟩
      ⟨(rho 2452 : F), (rho 2453 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung18

theorem dtk_rows19 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2960 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2961 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2962 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2963 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2964 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2965 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2966 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2967 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2968 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2969 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2970 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2971 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2972 rho := by
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
  rcases p37 with ⟨r2960, r2961, r2962, r2963, r2964, r2965, r2966, r2967, r2968, r2969, r2970, r2971, r2972, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r2960, r2961, r2962, r2963, r2964, r2965, r2966, r2967, r2968, r2969, r2970, r2971, r2972⟩

theorem dtk_rung19 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1002 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX19 rho : F), (dtkAccY19 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 2452 : F), (rho 2453 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX19 rho : F), (dtkAccY19 rho : F)⟩
        ⟨(rho 2452 : F), (rho 2453 : F)⟩
        ⟨(dtkAccX20 rho : F), (dtkAccY20 rho : F)⟩
        ⟨(rho 2465 : F), (rho 2466 : F)⟩ := by
  obtain ⟨r2960, r2961, r2962, r2963, r2964, r2965, r2966, r2967, r2968, r2969, r2970, r2971, r2972⟩ := dtk_rows19 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2960 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc181 at r2960
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2960
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2961 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc182 at r2961
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2961
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2962 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc183 at r2962
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2962
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2963 at r2963
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2964 at r2964
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2965 at r2965
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2966 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc184 at r2966
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2966
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2967 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc185 at r2967
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2967
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2968 at r2968
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2969 at r2969
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2970 at r2970
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2971 at r2971
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2972 at r2972
  have hrung19 (bit : Bool) (hbit : rho 1002 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX19 rho : F), (dtkAccY19 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 2452 : F), (rho 2453 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX19 rho : F), (dtkAccY19 rho : F)⟩
        ⟨(rho 2452 : F), (rho 2453 : F)⟩
        ⟨(dtkAccX20 rho : F), (dtkAccY20 rho : F)⟩
        ⟨(rho 2465 : F), (rho 2466 : F)⟩ := by
    have hnextx : dtkAccX20 rho = dtkAccX19 rho + rho 2460 := by
      unfold dtkAccX20 dtkAccX19
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 18]
      ring
    have hnexty : dtkAccY20 rho = dtkAccY19 rho + rho 2461 := by
      unfold dtkAccY20 dtkAccY19
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 19]
      ring
    have ha0 : (rho 2452 + rho 2453) * (dtkAccX19 rho + dtkAccY19 rho) = rho 2454 := by
      unfold dtkAccX19 dtkAccY19
      linear_combination r2960
    have ha1 : rho 2453 * dtkAccX19 rho = rho 2455 := by
      unfold dtkAccX19
      linear_combination r2961
    have ha2 : rho 2452 * dtkAccY19 rho = rho 2456 := by
      unfold dtkAccY19
      linear_combination r2962
    have ha3 : 3021 * rho 2455 * rho 2456 = rho 2457 := by
      linear_combination r2963
    have ha4 : rho 2458 * (1 + rho 2457) = rho 2455 + rho 2456 := by
      linear_combination r2964
    have ha5 : rho 2459 * (1 - rho 2457) = rho 2454 - rho 2455 - rho 2456 := by
      linear_combination r2965
    have haddx :
        rho 2458 * (1 + 3021 * (rho 2453 * dtkAccX19 rho) * (rho 2452 * dtkAccY19 rho)) =
          rho 2453 * dtkAccX19 rho + rho 2452 * dtkAccY19 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 2459 * (1 - 3021 * (rho 2453 * dtkAccX19 rho) * (rho 2452 * dtkAccY19 rho)) =
          (-1) * (rho 2453 * dtkAccX19 rho) - rho 2452 * dtkAccY19 rho +
            (dtkAccY19 rho - dtkAccX19 rho * (-1)) * (rho 2452 + rho 2453) := by
      rw [ha1, ha2, ha3]
      calc
        rho 2459 * (1 - rho 2457) = rho 2454 - rho 2455 - rho 2456 := ha5
        _ = (-1) * rho 2455 - rho 2456 + (dtkAccY19 rho - dtkAccX19 rho * (-1)) * (rho 2452 + rho 2453) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX20 rho = dtkAccX19 rho - Bool.toZMod bit * (dtkAccX19 rho - rho 2458) := by
      have hd : rho 2460 = Bool.toZMod bit * (rho 2458 - dtkAccX19 rho) := by
        rw [← hbit]
        unfold dtkAccX19
        linear_combination -r2966
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY20 rho = dtkAccY19 rho - Bool.toZMod bit * (dtkAccY19 rho - rho 2459) := by
      have hd : rho 2461 = Bool.toZMod bit * (rho 2459 - dtkAccY19 rho) := by
        rw [← hbit]
        unfold dtkAccY19
        linear_combination -r2967
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 2452 * rho 2453 = rho 2462 := by linear_combination r2968
    have hd1 : rho 2452 * rho 2452 = rho 2463 := by linear_combination r2969
    have hd2 : rho 2453 * rho 2453 = rho 2464 := by linear_combination r2970
    have hd3 : rho 2465 * (rho 2453 * rho 2453 + rho 2452 * rho 2452 * (-1)) = 2 * (rho 2452 * rho 2453) := by
      rw [hd0, hd1, hd2]
      linear_combination r2971
    have hd4 : rho 2466 * (2 - (rho 2453 * rho 2453 + rho 2452 * rho 2452 * (-1))) = rho 2453 * rho 2453 - rho 2452 * rho 2452 * (-1) := by
      rw [hd1, hd2]
      linear_combination r2972
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX19 rho : F), (dtkAccY19 rho : F)⟩
      ⟨(rho 2452 : F), (rho 2453 : F)⟩
      ⟨(rho 2458 : F), (rho 2459 : F)⟩
      ⟨(dtkAccX20 rho : F), (dtkAccY20 rho : F)⟩
      ⟨(rho 2465 : F), (rho 2466 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung19

theorem dtk_rows20 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2973 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2974 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2975 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2976 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2977 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2978 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2979 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2980 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2981 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2982 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2983 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2984 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2985 rho := by
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
  rcases p37 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, r2973, r2974, r2975, r2976, r2977, r2978, r2979, r2980, r2981, r2982, r2983, r2984, r2985, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r2973, r2974, r2975, r2976, r2977, r2978, r2979, r2980, r2981, r2982, r2983, r2984, r2985⟩

theorem dtk_rung20 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1003 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX20 rho : F), (dtkAccY20 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 2465 : F), (rho 2466 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX20 rho : F), (dtkAccY20 rho : F)⟩
        ⟨(rho 2465 : F), (rho 2466 : F)⟩
        ⟨(dtkAccX21 rho : F), (dtkAccY21 rho : F)⟩
        ⟨(rho 2478 : F), (rho 2479 : F)⟩ := by
  obtain ⟨r2973, r2974, r2975, r2976, r2977, r2978, r2979, r2980, r2981, r2982, r2983, r2984, r2985⟩ := dtk_rows20 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2973 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc186 at r2973
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2973
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2974 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc187 at r2974
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2974
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2975 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc188 at r2975
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2975
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2976 at r2976
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2977 at r2977
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2978 at r2978
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2979 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc189 at r2979
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2979
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2980 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc190 at r2980
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2980
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2981 at r2981
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2982 at r2982
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2983 at r2983
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2984 at r2984
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2985 at r2985
  have hrung20 (bit : Bool) (hbit : rho 1003 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX20 rho : F), (dtkAccY20 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 2465 : F), (rho 2466 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX20 rho : F), (dtkAccY20 rho : F)⟩
        ⟨(rho 2465 : F), (rho 2466 : F)⟩
        ⟨(dtkAccX21 rho : F), (dtkAccY21 rho : F)⟩
        ⟨(rho 2478 : F), (rho 2479 : F)⟩ := by
    have hnextx : dtkAccX21 rho = dtkAccX20 rho + rho 2473 := by
      unfold dtkAccX21 dtkAccX20
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 19]
      ring
    have hnexty : dtkAccY21 rho = dtkAccY20 rho + rho 2474 := by
      unfold dtkAccY21 dtkAccY20
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 20]
      ring
    have ha0 : (rho 2465 + rho 2466) * (dtkAccX20 rho + dtkAccY20 rho) = rho 2467 := by
      unfold dtkAccX20 dtkAccY20
      linear_combination r2973
    have ha1 : rho 2466 * dtkAccX20 rho = rho 2468 := by
      unfold dtkAccX20
      linear_combination r2974
    have ha2 : rho 2465 * dtkAccY20 rho = rho 2469 := by
      unfold dtkAccY20
      linear_combination r2975
    have ha3 : 3021 * rho 2468 * rho 2469 = rho 2470 := by
      linear_combination r2976
    have ha4 : rho 2471 * (1 + rho 2470) = rho 2468 + rho 2469 := by
      linear_combination r2977
    have ha5 : rho 2472 * (1 - rho 2470) = rho 2467 - rho 2468 - rho 2469 := by
      linear_combination r2978
    have haddx :
        rho 2471 * (1 + 3021 * (rho 2466 * dtkAccX20 rho) * (rho 2465 * dtkAccY20 rho)) =
          rho 2466 * dtkAccX20 rho + rho 2465 * dtkAccY20 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 2472 * (1 - 3021 * (rho 2466 * dtkAccX20 rho) * (rho 2465 * dtkAccY20 rho)) =
          (-1) * (rho 2466 * dtkAccX20 rho) - rho 2465 * dtkAccY20 rho +
            (dtkAccY20 rho - dtkAccX20 rho * (-1)) * (rho 2465 + rho 2466) := by
      rw [ha1, ha2, ha3]
      calc
        rho 2472 * (1 - rho 2470) = rho 2467 - rho 2468 - rho 2469 := ha5
        _ = (-1) * rho 2468 - rho 2469 + (dtkAccY20 rho - dtkAccX20 rho * (-1)) * (rho 2465 + rho 2466) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX21 rho = dtkAccX20 rho - Bool.toZMod bit * (dtkAccX20 rho - rho 2471) := by
      have hd : rho 2473 = Bool.toZMod bit * (rho 2471 - dtkAccX20 rho) := by
        rw [← hbit]
        unfold dtkAccX20
        linear_combination -r2979
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY21 rho = dtkAccY20 rho - Bool.toZMod bit * (dtkAccY20 rho - rho 2472) := by
      have hd : rho 2474 = Bool.toZMod bit * (rho 2472 - dtkAccY20 rho) := by
        rw [← hbit]
        unfold dtkAccY20
        linear_combination -r2980
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 2465 * rho 2466 = rho 2475 := by linear_combination r2981
    have hd1 : rho 2465 * rho 2465 = rho 2476 := by linear_combination r2982
    have hd2 : rho 2466 * rho 2466 = rho 2477 := by linear_combination r2983
    have hd3 : rho 2478 * (rho 2466 * rho 2466 + rho 2465 * rho 2465 * (-1)) = 2 * (rho 2465 * rho 2466) := by
      rw [hd0, hd1, hd2]
      linear_combination r2984
    have hd4 : rho 2479 * (2 - (rho 2466 * rho 2466 + rho 2465 * rho 2465 * (-1))) = rho 2466 * rho 2466 - rho 2465 * rho 2465 * (-1) := by
      rw [hd1, hd2]
      linear_combination r2985
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX20 rho : F), (dtkAccY20 rho : F)⟩
      ⟨(rho 2465 : F), (rho 2466 : F)⟩
      ⟨(rho 2471 : F), (rho 2472 : F)⟩
      ⟨(dtkAccX21 rho : F), (dtkAccY21 rho : F)⟩
      ⟨(rho 2478 : F), (rho 2479 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung20

theorem dtk_rows21 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2986 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2987 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2988 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2989 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2990 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2991 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2992 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2993 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2994 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2995 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2996 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2997 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2998 rho := by
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
  rcases p37 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2986, r2987, r2988, r2989, r2990, r2991, r2992, r2993, r2994, r2995, r2996, r2997, r2998, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r2986, r2987, r2988, r2989, r2990, r2991, r2992, r2993, r2994, r2995, r2996, r2997, r2998⟩

theorem dtk_rung21 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1004 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX21 rho : F), (dtkAccY21 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 2478 : F), (rho 2479 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX21 rho : F), (dtkAccY21 rho : F)⟩
        ⟨(rho 2478 : F), (rho 2479 : F)⟩
        ⟨(dtkAccX22 rho : F), (dtkAccY22 rho : F)⟩
        ⟨(rho 2491 : F), (rho 2492 : F)⟩ := by
  obtain ⟨r2986, r2987, r2988, r2989, r2990, r2991, r2992, r2993, r2994, r2995, r2996, r2997, r2998⟩ := dtk_rows21 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2986 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc191 at r2986
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2986
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2987 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc192 at r2987
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2987
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2988 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc193 at r2988
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2988
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2989 at r2989
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2990 at r2990
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2991 at r2991
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2992 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc194 at r2992
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2992
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2993 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc195 at r2993
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2993
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2994 at r2994
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2995 at r2995
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2996 at r2996
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2997 at r2997
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2998 at r2998
  have hrung21 (bit : Bool) (hbit : rho 1004 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX21 rho : F), (dtkAccY21 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 2478 : F), (rho 2479 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX21 rho : F), (dtkAccY21 rho : F)⟩
        ⟨(rho 2478 : F), (rho 2479 : F)⟩
        ⟨(dtkAccX22 rho : F), (dtkAccY22 rho : F)⟩
        ⟨(rho 2491 : F), (rho 2492 : F)⟩ := by
    have hnextx : dtkAccX22 rho = dtkAccX21 rho + rho 2486 := by
      unfold dtkAccX22 dtkAccX21
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 20]
      ring
    have hnexty : dtkAccY22 rho = dtkAccY21 rho + rho 2487 := by
      unfold dtkAccY22 dtkAccY21
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 21]
      ring
    have ha0 : (rho 2478 + rho 2479) * (dtkAccX21 rho + dtkAccY21 rho) = rho 2480 := by
      unfold dtkAccX21 dtkAccY21
      linear_combination r2986
    have ha1 : rho 2479 * dtkAccX21 rho = rho 2481 := by
      unfold dtkAccX21
      linear_combination r2987
    have ha2 : rho 2478 * dtkAccY21 rho = rho 2482 := by
      unfold dtkAccY21
      linear_combination r2988
    have ha3 : 3021 * rho 2481 * rho 2482 = rho 2483 := by
      linear_combination r2989
    have ha4 : rho 2484 * (1 + rho 2483) = rho 2481 + rho 2482 := by
      linear_combination r2990
    have ha5 : rho 2485 * (1 - rho 2483) = rho 2480 - rho 2481 - rho 2482 := by
      linear_combination r2991
    have haddx :
        rho 2484 * (1 + 3021 * (rho 2479 * dtkAccX21 rho) * (rho 2478 * dtkAccY21 rho)) =
          rho 2479 * dtkAccX21 rho + rho 2478 * dtkAccY21 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 2485 * (1 - 3021 * (rho 2479 * dtkAccX21 rho) * (rho 2478 * dtkAccY21 rho)) =
          (-1) * (rho 2479 * dtkAccX21 rho) - rho 2478 * dtkAccY21 rho +
            (dtkAccY21 rho - dtkAccX21 rho * (-1)) * (rho 2478 + rho 2479) := by
      rw [ha1, ha2, ha3]
      calc
        rho 2485 * (1 - rho 2483) = rho 2480 - rho 2481 - rho 2482 := ha5
        _ = (-1) * rho 2481 - rho 2482 + (dtkAccY21 rho - dtkAccX21 rho * (-1)) * (rho 2478 + rho 2479) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX22 rho = dtkAccX21 rho - Bool.toZMod bit * (dtkAccX21 rho - rho 2484) := by
      have hd : rho 2486 = Bool.toZMod bit * (rho 2484 - dtkAccX21 rho) := by
        rw [← hbit]
        unfold dtkAccX21
        linear_combination -r2992
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY22 rho = dtkAccY21 rho - Bool.toZMod bit * (dtkAccY21 rho - rho 2485) := by
      have hd : rho 2487 = Bool.toZMod bit * (rho 2485 - dtkAccY21 rho) := by
        rw [← hbit]
        unfold dtkAccY21
        linear_combination -r2993
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 2478 * rho 2479 = rho 2488 := by linear_combination r2994
    have hd1 : rho 2478 * rho 2478 = rho 2489 := by linear_combination r2995
    have hd2 : rho 2479 * rho 2479 = rho 2490 := by linear_combination r2996
    have hd3 : rho 2491 * (rho 2479 * rho 2479 + rho 2478 * rho 2478 * (-1)) = 2 * (rho 2478 * rho 2479) := by
      rw [hd0, hd1, hd2]
      linear_combination r2997
    have hd4 : rho 2492 * (2 - (rho 2479 * rho 2479 + rho 2478 * rho 2478 * (-1))) = rho 2479 * rho 2479 - rho 2478 * rho 2478 * (-1) := by
      rw [hd1, hd2]
      linear_combination r2998
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX21 rho : F), (dtkAccY21 rho : F)⟩
      ⟨(rho 2478 : F), (rho 2479 : F)⟩
      ⟨(rho 2484 : F), (rho 2485 : F)⟩
      ⟨(dtkAccX22 rho : F), (dtkAccY22 rho : F)⟩
      ⟨(rho 2491 : F), (rho 2492 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung21

theorem dtk_rows22 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2999 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3000 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3001 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3002 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3003 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3004 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3005 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3006 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3007 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3008 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3009 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3010 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3011 rho := by
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
  rcases p37 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2999, r3000, r3001, r3002, r3003, r3004, r3005, r3006, r3007, r3008, r3009, r3010, r3011, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r2999, r3000, r3001, r3002, r3003, r3004, r3005, r3006, r3007, r3008, r3009, r3010, r3011⟩

theorem dtk_rung22 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1005 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX22 rho : F), (dtkAccY22 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 2491 : F), (rho 2492 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX22 rho : F), (dtkAccY22 rho : F)⟩
        ⟨(rho 2491 : F), (rho 2492 : F)⟩
        ⟨(dtkAccX23 rho : F), (dtkAccY23 rho : F)⟩
        ⟨(rho 2504 : F), (rho 2505 : F)⟩ := by
  obtain ⟨r2999, r3000, r3001, r3002, r3003, r3004, r3005, r3006, r3007, r3008, r3009, r3010, r3011⟩ := dtk_rows22 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2999 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc196 at r2999
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2999
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3000 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc197 at r3000
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3000
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3001 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc198 at r3001
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3001
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3002 at r3002
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3003 at r3003
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3004 at r3004
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3005 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc199 at r3005
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3005
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3006 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc200 at r3006
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3006
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3007 at r3007
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3008 at r3008
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3009 at r3009
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3010 at r3010
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3011 at r3011
  have hrung22 (bit : Bool) (hbit : rho 1005 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX22 rho : F), (dtkAccY22 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 2491 : F), (rho 2492 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX22 rho : F), (dtkAccY22 rho : F)⟩
        ⟨(rho 2491 : F), (rho 2492 : F)⟩
        ⟨(dtkAccX23 rho : F), (dtkAccY23 rho : F)⟩
        ⟨(rho 2504 : F), (rho 2505 : F)⟩ := by
    have hnextx : dtkAccX23 rho = dtkAccX22 rho + rho 2499 := by
      unfold dtkAccX23 dtkAccX22
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 21]
      ring
    have hnexty : dtkAccY23 rho = dtkAccY22 rho + rho 2500 := by
      unfold dtkAccY23 dtkAccY22
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 22]
      ring
    have ha0 : (rho 2491 + rho 2492) * (dtkAccX22 rho + dtkAccY22 rho) = rho 2493 := by
      unfold dtkAccX22 dtkAccY22
      linear_combination r2999
    have ha1 : rho 2492 * dtkAccX22 rho = rho 2494 := by
      unfold dtkAccX22
      linear_combination r3000
    have ha2 : rho 2491 * dtkAccY22 rho = rho 2495 := by
      unfold dtkAccY22
      linear_combination r3001
    have ha3 : 3021 * rho 2494 * rho 2495 = rho 2496 := by
      linear_combination r3002
    have ha4 : rho 2497 * (1 + rho 2496) = rho 2494 + rho 2495 := by
      linear_combination r3003
    have ha5 : rho 2498 * (1 - rho 2496) = rho 2493 - rho 2494 - rho 2495 := by
      linear_combination r3004
    have haddx :
        rho 2497 * (1 + 3021 * (rho 2492 * dtkAccX22 rho) * (rho 2491 * dtkAccY22 rho)) =
          rho 2492 * dtkAccX22 rho + rho 2491 * dtkAccY22 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 2498 * (1 - 3021 * (rho 2492 * dtkAccX22 rho) * (rho 2491 * dtkAccY22 rho)) =
          (-1) * (rho 2492 * dtkAccX22 rho) - rho 2491 * dtkAccY22 rho +
            (dtkAccY22 rho - dtkAccX22 rho * (-1)) * (rho 2491 + rho 2492) := by
      rw [ha1, ha2, ha3]
      calc
        rho 2498 * (1 - rho 2496) = rho 2493 - rho 2494 - rho 2495 := ha5
        _ = (-1) * rho 2494 - rho 2495 + (dtkAccY22 rho - dtkAccX22 rho * (-1)) * (rho 2491 + rho 2492) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX23 rho = dtkAccX22 rho - Bool.toZMod bit * (dtkAccX22 rho - rho 2497) := by
      have hd : rho 2499 = Bool.toZMod bit * (rho 2497 - dtkAccX22 rho) := by
        rw [← hbit]
        unfold dtkAccX22
        linear_combination -r3005
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY23 rho = dtkAccY22 rho - Bool.toZMod bit * (dtkAccY22 rho - rho 2498) := by
      have hd : rho 2500 = Bool.toZMod bit * (rho 2498 - dtkAccY22 rho) := by
        rw [← hbit]
        unfold dtkAccY22
        linear_combination -r3006
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 2491 * rho 2492 = rho 2501 := by linear_combination r3007
    have hd1 : rho 2491 * rho 2491 = rho 2502 := by linear_combination r3008
    have hd2 : rho 2492 * rho 2492 = rho 2503 := by linear_combination r3009
    have hd3 : rho 2504 * (rho 2492 * rho 2492 + rho 2491 * rho 2491 * (-1)) = 2 * (rho 2491 * rho 2492) := by
      rw [hd0, hd1, hd2]
      linear_combination r3010
    have hd4 : rho 2505 * (2 - (rho 2492 * rho 2492 + rho 2491 * rho 2491 * (-1))) = rho 2492 * rho 2492 - rho 2491 * rho 2491 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3011
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX22 rho : F), (dtkAccY22 rho : F)⟩
      ⟨(rho 2491 : F), (rho 2492 : F)⟩
      ⟨(rho 2497 : F), (rho 2498 : F)⟩
      ⟨(dtkAccX23 rho : F), (dtkAccY23 rho : F)⟩
      ⟨(rho 2504 : F), (rho 2505 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung22

theorem dtk_rows23 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3012 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3013 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3014 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3015 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3016 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3017 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3018 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3019 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3020 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3021 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3022 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3023 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3024 rho := by
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
  rcases p37 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3012, r3013, r3014, r3015, r3016, r3017, r3018, r3019, r3020, r3021, r3022, r3023, r3024, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3012, r3013, r3014, r3015, r3016, r3017, r3018, r3019, r3020, r3021, r3022, r3023, r3024⟩

theorem dtk_rung23 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1006 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX23 rho : F), (dtkAccY23 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 2504 : F), (rho 2505 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX23 rho : F), (dtkAccY23 rho : F)⟩
        ⟨(rho 2504 : F), (rho 2505 : F)⟩
        ⟨(dtkAccX24 rho : F), (dtkAccY24 rho : F)⟩
        ⟨(rho 2517 : F), (rho 2518 : F)⟩ := by
  obtain ⟨r3012, r3013, r3014, r3015, r3016, r3017, r3018, r3019, r3020, r3021, r3022, r3023, r3024⟩ := dtk_rows23 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3012 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc201 at r3012
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3012
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3013 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc202 at r3013
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3013
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3014 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc203 at r3014
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3014
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3015 at r3015
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3016 at r3016
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3017 at r3017
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3018 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc204 at r3018
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3018
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3019 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc205 at r3019
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3019
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3020 at r3020
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3021 at r3021
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3022 at r3022
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3023 at r3023
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow3024 at r3024
  have hrung23 (bit : Bool) (hbit : rho 1006 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX23 rho : F), (dtkAccY23 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 2504 : F), (rho 2505 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX23 rho : F), (dtkAccY23 rho : F)⟩
        ⟨(rho 2504 : F), (rho 2505 : F)⟩
        ⟨(dtkAccX24 rho : F), (dtkAccY24 rho : F)⟩
        ⟨(rho 2517 : F), (rho 2518 : F)⟩ := by
    have hnextx : dtkAccX24 rho = dtkAccX23 rho + rho 2512 := by
      unfold dtkAccX24 dtkAccX23
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 22]
      ring
    have hnexty : dtkAccY24 rho = dtkAccY23 rho + rho 2513 := by
      unfold dtkAccY24 dtkAccY23
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 23]
      ring
    have ha0 : (rho 2504 + rho 2505) * (dtkAccX23 rho + dtkAccY23 rho) = rho 2506 := by
      unfold dtkAccX23 dtkAccY23
      linear_combination r3012
    have ha1 : rho 2505 * dtkAccX23 rho = rho 2507 := by
      unfold dtkAccX23
      linear_combination r3013
    have ha2 : rho 2504 * dtkAccY23 rho = rho 2508 := by
      unfold dtkAccY23
      linear_combination r3014
    have ha3 : 3021 * rho 2507 * rho 2508 = rho 2509 := by
      linear_combination r3015
    have ha4 : rho 2510 * (1 + rho 2509) = rho 2507 + rho 2508 := by
      linear_combination r3016
    have ha5 : rho 2511 * (1 - rho 2509) = rho 2506 - rho 2507 - rho 2508 := by
      linear_combination r3017
    have haddx :
        rho 2510 * (1 + 3021 * (rho 2505 * dtkAccX23 rho) * (rho 2504 * dtkAccY23 rho)) =
          rho 2505 * dtkAccX23 rho + rho 2504 * dtkAccY23 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 2511 * (1 - 3021 * (rho 2505 * dtkAccX23 rho) * (rho 2504 * dtkAccY23 rho)) =
          (-1) * (rho 2505 * dtkAccX23 rho) - rho 2504 * dtkAccY23 rho +
            (dtkAccY23 rho - dtkAccX23 rho * (-1)) * (rho 2504 + rho 2505) := by
      rw [ha1, ha2, ha3]
      calc
        rho 2511 * (1 - rho 2509) = rho 2506 - rho 2507 - rho 2508 := ha5
        _ = (-1) * rho 2507 - rho 2508 + (dtkAccY23 rho - dtkAccX23 rho * (-1)) * (rho 2504 + rho 2505) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX24 rho = dtkAccX23 rho - Bool.toZMod bit * (dtkAccX23 rho - rho 2510) := by
      have hd : rho 2512 = Bool.toZMod bit * (rho 2510 - dtkAccX23 rho) := by
        rw [← hbit]
        unfold dtkAccX23
        linear_combination -r3018
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY24 rho = dtkAccY23 rho - Bool.toZMod bit * (dtkAccY23 rho - rho 2511) := by
      have hd : rho 2513 = Bool.toZMod bit * (rho 2511 - dtkAccY23 rho) := by
        rw [← hbit]
        unfold dtkAccY23
        linear_combination -r3019
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 2504 * rho 2505 = rho 2514 := by linear_combination r3020
    have hd1 : rho 2504 * rho 2504 = rho 2515 := by linear_combination r3021
    have hd2 : rho 2505 * rho 2505 = rho 2516 := by linear_combination r3022
    have hd3 : rho 2517 * (rho 2505 * rho 2505 + rho 2504 * rho 2504 * (-1)) = 2 * (rho 2504 * rho 2505) := by
      rw [hd0, hd1, hd2]
      linear_combination r3023
    have hd4 : rho 2518 * (2 - (rho 2505 * rho 2505 + rho 2504 * rho 2504 * (-1))) = rho 2505 * rho 2505 - rho 2504 * rho 2504 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3024
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX23 rho : F), (dtkAccY23 rho : F)⟩
      ⟨(rho 2504 : F), (rho 2505 : F)⟩
      ⟨(rho 2510 : F), (rho 2511 : F)⟩
      ⟨(dtkAccX24 rho : F), (dtkAccY24 rho : F)⟩
      ⟨(rho 2517 : F), (rho 2518 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung23

theorem dtk_hstep_c3 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (983 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 18 ≤ i → i < 24 →
      EdwardsBridge.onCurve (dtkLadderAccState rho i) →
      EdwardsBridge.onCurve (dtkLadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (dtkLadderAccState rho i) (dtkLadderCurState rho i)
        (dtkLadderAccState rho (i + 1)) (dtkLadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact dtk_rung18 rho h bits[18]! (hbitAt 18 (by omega)) hacc hcur
  · exact dtk_rung19 rho h bits[19]! (hbitAt 19 (by omega)) hacc hcur
  · exact dtk_rung20 rho h bits[20]! (hbitAt 20 (by omega)) hacc hcur
  · exact dtk_rung21 rho h bits[21]! (hbitAt 21 (by omega)) hacc hcur
  · exact dtk_rung22 rho h bits[22]! (hbitAt 22 (by omega)) hacc hcur
  · exact dtk_rung23 rho h bits[23]! (hbitAt 23 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport
