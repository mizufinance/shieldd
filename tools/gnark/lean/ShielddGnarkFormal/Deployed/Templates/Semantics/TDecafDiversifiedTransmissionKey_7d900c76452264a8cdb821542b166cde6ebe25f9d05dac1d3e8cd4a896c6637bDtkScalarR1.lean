import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDtkScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs

theorem dtk_rows6 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2791 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2792 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2793 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2794 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2795 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2796 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2797 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2798 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2799 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2800 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2801 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2802 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2803 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p34, p35, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart34 at p34
  rcases p34 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2791, r2792, r2793, r2794, r2795, r2796, r2797, r2798, r2799⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart35 at p35
  rcases p35 with ⟨r2800, r2801, r2802, r2803, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r2791, r2792, r2793, r2794, r2795, r2796, r2797, r2798, r2799, r2800, r2801, r2802, r2803⟩

theorem dtk_rung6 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 989 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX6 rho : F), (dtkAccY6 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 2283 : F), (rho 2284 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX6 rho : F), (dtkAccY6 rho : F)⟩
        ⟨(rho 2283 : F), (rho 2284 : F)⟩
        ⟨(dtkAccX7 rho : F), (dtkAccY7 rho : F)⟩
        ⟨(rho 2296 : F), (rho 2297 : F)⟩ := by
  obtain ⟨r2791, r2792, r2793, r2794, r2795, r2796, r2797, r2798, r2799, r2800, r2801, r2802, r2803⟩ := dtk_rows6 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2791 at r2791
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2792 at r2792
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2793 at r2793
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2794 at r2794
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2795 at r2795
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2796 at r2796
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2797 at r2797
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2798 at r2798
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2799 at r2799
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2800 at r2800
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2801 at r2801
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2802 at r2802
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2803 at r2803
  have hrung6 (bit : Bool) (hbit : rho 989 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX6 rho : F), (dtkAccY6 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 2283 : F), (rho 2284 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX6 rho : F), (dtkAccY6 rho : F)⟩
        ⟨(rho 2283 : F), (rho 2284 : F)⟩
        ⟨(dtkAccX7 rho : F), (dtkAccY7 rho : F)⟩
        ⟨(rho 2296 : F), (rho 2297 : F)⟩ := by
    have hnextx : dtkAccX7 rho = dtkAccX6 rho + rho 2291 := by
      unfold dtkAccX7 dtkAccX6
      ring
    have hnexty : dtkAccY7 rho = dtkAccY6 rho + rho 2292 := by
      unfold dtkAccY7 dtkAccY6
      ring
    have ha0 : (rho 2283 + rho 2284) * (dtkAccX6 rho + dtkAccY6 rho) = rho 2285 := by
      unfold dtkAccX6 dtkAccY6
      linear_combination r2791
    have ha1 : rho 2284 * dtkAccX6 rho = rho 2286 := by
      unfold dtkAccX6
      linear_combination r2792
    have ha2 : rho 2283 * dtkAccY6 rho = rho 2287 := by
      unfold dtkAccY6
      linear_combination r2793
    have ha3 : 3021 * rho 2286 * rho 2287 = rho 2288 := by
      linear_combination r2794
    have ha4 : rho 2289 * (1 + rho 2288) = rho 2286 + rho 2287 := by
      linear_combination r2795
    have ha5 : rho 2290 * (1 - rho 2288) = rho 2285 - rho 2286 - rho 2287 := by
      linear_combination r2796
    have haddx :
        rho 2289 * (1 + 3021 * (rho 2284 * dtkAccX6 rho) * (rho 2283 * dtkAccY6 rho)) =
          rho 2284 * dtkAccX6 rho + rho 2283 * dtkAccY6 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 2290 * (1 - 3021 * (rho 2284 * dtkAccX6 rho) * (rho 2283 * dtkAccY6 rho)) =
          (-1) * (rho 2284 * dtkAccX6 rho) - rho 2283 * dtkAccY6 rho +
            (dtkAccY6 rho - dtkAccX6 rho * (-1)) * (rho 2283 + rho 2284) := by
      rw [ha1, ha2, ha3]
      calc
        rho 2290 * (1 - rho 2288) = rho 2285 - rho 2286 - rho 2287 := ha5
        _ = (-1) * rho 2286 - rho 2287 + (dtkAccY6 rho - dtkAccX6 rho * (-1)) * (rho 2283 + rho 2284) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX7 rho = dtkAccX6 rho - Bool.toZMod bit * (dtkAccX6 rho - rho 2289) := by
      have hd : rho 2291 = Bool.toZMod bit * (rho 2289 - dtkAccX6 rho) := by
        rw [← hbit]
        unfold dtkAccX6
        linear_combination -r2797
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY7 rho = dtkAccY6 rho - Bool.toZMod bit * (dtkAccY6 rho - rho 2290) := by
      have hd : rho 2292 = Bool.toZMod bit * (rho 2290 - dtkAccY6 rho) := by
        rw [← hbit]
        unfold dtkAccY6
        linear_combination -r2798
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 2283 * rho 2284 = rho 2293 := by linear_combination r2799
    have hd1 : rho 2283 * rho 2283 = rho 2294 := by linear_combination r2800
    have hd2 : rho 2284 * rho 2284 = rho 2295 := by linear_combination r2801
    have hd3 : rho 2296 * (rho 2284 * rho 2284 + rho 2283 * rho 2283 * (-1)) = 2 * (rho 2283 * rho 2284) := by
      rw [hd0, hd1, hd2]
      linear_combination r2802
    have hd4 : rho 2297 * (2 - (rho 2284 * rho 2284 + rho 2283 * rho 2283 * (-1))) = rho 2284 * rho 2284 - rho 2283 * rho 2283 * (-1) := by
      rw [hd1, hd2]
      linear_combination r2803
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX6 rho : F), (dtkAccY6 rho : F)⟩
      ⟨(rho 2283 : F), (rho 2284 : F)⟩
      ⟨(rho 2289 : F), (rho 2290 : F)⟩
      ⟨(dtkAccX7 rho : F), (dtkAccY7 rho : F)⟩
      ⟨(rho 2296 : F), (rho 2297 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung6

theorem dtk_rows7 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2804 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2805 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2806 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2807 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2808 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2809 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2810 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2811 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2812 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2813 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2814 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2815 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2816 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p35, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart35 at p35
  rcases p35 with ⟨_, _, _, _, r2804, r2805, r2806, r2807, r2808, r2809, r2810, r2811, r2812, r2813, r2814, r2815, r2816, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r2804, r2805, r2806, r2807, r2808, r2809, r2810, r2811, r2812, r2813, r2814, r2815, r2816⟩

theorem dtk_rung7 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 990 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX7 rho : F), (dtkAccY7 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 2296 : F), (rho 2297 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX7 rho : F), (dtkAccY7 rho : F)⟩
        ⟨(rho 2296 : F), (rho 2297 : F)⟩
        ⟨(dtkAccX8 rho : F), (dtkAccY8 rho : F)⟩
        ⟨(rho 2309 : F), (rho 2310 : F)⟩ := by
  obtain ⟨r2804, r2805, r2806, r2807, r2808, r2809, r2810, r2811, r2812, r2813, r2814, r2815, r2816⟩ := dtk_rows7 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2804 at r2804
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2805 at r2805
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2806 at r2806
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2807 at r2807
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2808 at r2808
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2809 at r2809
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2810 at r2810
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2811 at r2811
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2812 at r2812
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2813 at r2813
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2814 at r2814
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2815 at r2815
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2816 at r2816
  have hrung7 (bit : Bool) (hbit : rho 990 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX7 rho : F), (dtkAccY7 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 2296 : F), (rho 2297 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX7 rho : F), (dtkAccY7 rho : F)⟩
        ⟨(rho 2296 : F), (rho 2297 : F)⟩
        ⟨(dtkAccX8 rho : F), (dtkAccY8 rho : F)⟩
        ⟨(rho 2309 : F), (rho 2310 : F)⟩ := by
    have hnextx : dtkAccX8 rho = dtkAccX7 rho + rho 2304 := by
      unfold dtkAccX8 dtkAccX7
      ring
    have hnexty : dtkAccY8 rho = dtkAccY7 rho + rho 2305 := by
      unfold dtkAccY8 dtkAccY7
      ring
    have ha0 : (rho 2296 + rho 2297) * (dtkAccX7 rho + dtkAccY7 rho) = rho 2298 := by
      unfold dtkAccX7 dtkAccY7
      linear_combination r2804
    have ha1 : rho 2297 * dtkAccX7 rho = rho 2299 := by
      unfold dtkAccX7
      linear_combination r2805
    have ha2 : rho 2296 * dtkAccY7 rho = rho 2300 := by
      unfold dtkAccY7
      linear_combination r2806
    have ha3 : 3021 * rho 2299 * rho 2300 = rho 2301 := by
      linear_combination r2807
    have ha4 : rho 2302 * (1 + rho 2301) = rho 2299 + rho 2300 := by
      linear_combination r2808
    have ha5 : rho 2303 * (1 - rho 2301) = rho 2298 - rho 2299 - rho 2300 := by
      linear_combination r2809
    have haddx :
        rho 2302 * (1 + 3021 * (rho 2297 * dtkAccX7 rho) * (rho 2296 * dtkAccY7 rho)) =
          rho 2297 * dtkAccX7 rho + rho 2296 * dtkAccY7 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 2303 * (1 - 3021 * (rho 2297 * dtkAccX7 rho) * (rho 2296 * dtkAccY7 rho)) =
          (-1) * (rho 2297 * dtkAccX7 rho) - rho 2296 * dtkAccY7 rho +
            (dtkAccY7 rho - dtkAccX7 rho * (-1)) * (rho 2296 + rho 2297) := by
      rw [ha1, ha2, ha3]
      calc
        rho 2303 * (1 - rho 2301) = rho 2298 - rho 2299 - rho 2300 := ha5
        _ = (-1) * rho 2299 - rho 2300 + (dtkAccY7 rho - dtkAccX7 rho * (-1)) * (rho 2296 + rho 2297) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX8 rho = dtkAccX7 rho - Bool.toZMod bit * (dtkAccX7 rho - rho 2302) := by
      have hd : rho 2304 = Bool.toZMod bit * (rho 2302 - dtkAccX7 rho) := by
        rw [← hbit]
        unfold dtkAccX7
        linear_combination -r2810
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY8 rho = dtkAccY7 rho - Bool.toZMod bit * (dtkAccY7 rho - rho 2303) := by
      have hd : rho 2305 = Bool.toZMod bit * (rho 2303 - dtkAccY7 rho) := by
        rw [← hbit]
        unfold dtkAccY7
        linear_combination -r2811
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 2296 * rho 2297 = rho 2306 := by linear_combination r2812
    have hd1 : rho 2296 * rho 2296 = rho 2307 := by linear_combination r2813
    have hd2 : rho 2297 * rho 2297 = rho 2308 := by linear_combination r2814
    have hd3 : rho 2309 * (rho 2297 * rho 2297 + rho 2296 * rho 2296 * (-1)) = 2 * (rho 2296 * rho 2297) := by
      rw [hd0, hd1, hd2]
      linear_combination r2815
    have hd4 : rho 2310 * (2 - (rho 2297 * rho 2297 + rho 2296 * rho 2296 * (-1))) = rho 2297 * rho 2297 - rho 2296 * rho 2296 * (-1) := by
      rw [hd1, hd2]
      linear_combination r2816
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX7 rho : F), (dtkAccY7 rho : F)⟩
      ⟨(rho 2296 : F), (rho 2297 : F)⟩
      ⟨(rho 2302 : F), (rho 2303 : F)⟩
      ⟨(dtkAccX8 rho : F), (dtkAccY8 rho : F)⟩
      ⟨(rho 2309 : F), (rho 2310 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung7

theorem dtk_rows8 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2817 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2818 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2819 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2820 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2821 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2822 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2823 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2824 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2825 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2826 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2827 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2828 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2829 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p35, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart35 at p35
  rcases p35 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2817, r2818, r2819, r2820, r2821, r2822, r2823, r2824, r2825, r2826, r2827, r2828, r2829, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r2817, r2818, r2819, r2820, r2821, r2822, r2823, r2824, r2825, r2826, r2827, r2828, r2829⟩

theorem dtk_rung8 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 991 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX8 rho : F), (dtkAccY8 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 2309 : F), (rho 2310 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX8 rho : F), (dtkAccY8 rho : F)⟩
        ⟨(rho 2309 : F), (rho 2310 : F)⟩
        ⟨(dtkAccX9 rho : F), (dtkAccY9 rho : F)⟩
        ⟨(rho 2322 : F), (rho 2323 : F)⟩ := by
  obtain ⟨r2817, r2818, r2819, r2820, r2821, r2822, r2823, r2824, r2825, r2826, r2827, r2828, r2829⟩ := dtk_rows8 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2817 at r2817
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2818 at r2818
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2819 at r2819
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2820 at r2820
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2821 at r2821
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2822 at r2822
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2823 at r2823
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2824 at r2824
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2825 at r2825
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2826 at r2826
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2827 at r2827
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2828 at r2828
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2829 at r2829
  have hrung8 (bit : Bool) (hbit : rho 991 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX8 rho : F), (dtkAccY8 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 2309 : F), (rho 2310 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX8 rho : F), (dtkAccY8 rho : F)⟩
        ⟨(rho 2309 : F), (rho 2310 : F)⟩
        ⟨(dtkAccX9 rho : F), (dtkAccY9 rho : F)⟩
        ⟨(rho 2322 : F), (rho 2323 : F)⟩ := by
    have hnextx : dtkAccX9 rho = dtkAccX8 rho + rho 2317 := by
      unfold dtkAccX9 dtkAccX8
      ring
    have hnexty : dtkAccY9 rho = dtkAccY8 rho + rho 2318 := by
      unfold dtkAccY9 dtkAccY8
      ring
    have ha0 : (rho 2309 + rho 2310) * (dtkAccX8 rho + dtkAccY8 rho) = rho 2311 := by
      unfold dtkAccX8 dtkAccY8
      linear_combination r2817
    have ha1 : rho 2310 * dtkAccX8 rho = rho 2312 := by
      unfold dtkAccX8
      linear_combination r2818
    have ha2 : rho 2309 * dtkAccY8 rho = rho 2313 := by
      unfold dtkAccY8
      linear_combination r2819
    have ha3 : 3021 * rho 2312 * rho 2313 = rho 2314 := by
      linear_combination r2820
    have ha4 : rho 2315 * (1 + rho 2314) = rho 2312 + rho 2313 := by
      linear_combination r2821
    have ha5 : rho 2316 * (1 - rho 2314) = rho 2311 - rho 2312 - rho 2313 := by
      linear_combination r2822
    have haddx :
        rho 2315 * (1 + 3021 * (rho 2310 * dtkAccX8 rho) * (rho 2309 * dtkAccY8 rho)) =
          rho 2310 * dtkAccX8 rho + rho 2309 * dtkAccY8 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 2316 * (1 - 3021 * (rho 2310 * dtkAccX8 rho) * (rho 2309 * dtkAccY8 rho)) =
          (-1) * (rho 2310 * dtkAccX8 rho) - rho 2309 * dtkAccY8 rho +
            (dtkAccY8 rho - dtkAccX8 rho * (-1)) * (rho 2309 + rho 2310) := by
      rw [ha1, ha2, ha3]
      calc
        rho 2316 * (1 - rho 2314) = rho 2311 - rho 2312 - rho 2313 := ha5
        _ = (-1) * rho 2312 - rho 2313 + (dtkAccY8 rho - dtkAccX8 rho * (-1)) * (rho 2309 + rho 2310) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX9 rho = dtkAccX8 rho - Bool.toZMod bit * (dtkAccX8 rho - rho 2315) := by
      have hd : rho 2317 = Bool.toZMod bit * (rho 2315 - dtkAccX8 rho) := by
        rw [← hbit]
        unfold dtkAccX8
        linear_combination -r2823
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY9 rho = dtkAccY8 rho - Bool.toZMod bit * (dtkAccY8 rho - rho 2316) := by
      have hd : rho 2318 = Bool.toZMod bit * (rho 2316 - dtkAccY8 rho) := by
        rw [← hbit]
        unfold dtkAccY8
        linear_combination -r2824
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 2309 * rho 2310 = rho 2319 := by linear_combination r2825
    have hd1 : rho 2309 * rho 2309 = rho 2320 := by linear_combination r2826
    have hd2 : rho 2310 * rho 2310 = rho 2321 := by linear_combination r2827
    have hd3 : rho 2322 * (rho 2310 * rho 2310 + rho 2309 * rho 2309 * (-1)) = 2 * (rho 2309 * rho 2310) := by
      rw [hd0, hd1, hd2]
      linear_combination r2828
    have hd4 : rho 2323 * (2 - (rho 2310 * rho 2310 + rho 2309 * rho 2309 * (-1))) = rho 2310 * rho 2310 - rho 2309 * rho 2309 * (-1) := by
      rw [hd1, hd2]
      linear_combination r2829
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX8 rho : F), (dtkAccY8 rho : F)⟩
      ⟨(rho 2309 : F), (rho 2310 : F)⟩
      ⟨(rho 2315 : F), (rho 2316 : F)⟩
      ⟨(dtkAccX9 rho : F), (dtkAccY9 rho : F)⟩
      ⟨(rho 2322 : F), (rho 2323 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung8

theorem dtk_rows9 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2830 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2831 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2832 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2833 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2834 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2835 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2836 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2837 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2838 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2839 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2840 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2841 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2842 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p35, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart35 at p35
  rcases p35 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2830, r2831, r2832, r2833, r2834, r2835, r2836, r2837, r2838, r2839, r2840, r2841, r2842, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r2830, r2831, r2832, r2833, r2834, r2835, r2836, r2837, r2838, r2839, r2840, r2841, r2842⟩

theorem dtk_rung9 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 992 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX9 rho : F), (dtkAccY9 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 2322 : F), (rho 2323 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX9 rho : F), (dtkAccY9 rho : F)⟩
        ⟨(rho 2322 : F), (rho 2323 : F)⟩
        ⟨(dtkAccX10 rho : F), (dtkAccY10 rho : F)⟩
        ⟨(rho 2335 : F), (rho 2336 : F)⟩ := by
  obtain ⟨r2830, r2831, r2832, r2833, r2834, r2835, r2836, r2837, r2838, r2839, r2840, r2841, r2842⟩ := dtk_rows9 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2830 at r2830
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2831 at r2831
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2832 at r2832
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2833 at r2833
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2834 at r2834
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2835 at r2835
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2836 at r2836
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2837 at r2837
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2838 at r2838
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2839 at r2839
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2840 at r2840
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2841 at r2841
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2842 at r2842
  have hrung9 (bit : Bool) (hbit : rho 992 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX9 rho : F), (dtkAccY9 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 2322 : F), (rho 2323 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX9 rho : F), (dtkAccY9 rho : F)⟩
        ⟨(rho 2322 : F), (rho 2323 : F)⟩
        ⟨(dtkAccX10 rho : F), (dtkAccY10 rho : F)⟩
        ⟨(rho 2335 : F), (rho 2336 : F)⟩ := by
    have hnextx : dtkAccX10 rho = dtkAccX9 rho + rho 2330 := by
      unfold dtkAccX10 dtkAccX9
      ring
    have hnexty : dtkAccY10 rho = dtkAccY9 rho + rho 2331 := by
      unfold dtkAccY10 dtkAccY9
      ring
    have ha0 : (rho 2322 + rho 2323) * (dtkAccX9 rho + dtkAccY9 rho) = rho 2324 := by
      unfold dtkAccX9 dtkAccY9
      linear_combination r2830
    have ha1 : rho 2323 * dtkAccX9 rho = rho 2325 := by
      unfold dtkAccX9
      linear_combination r2831
    have ha2 : rho 2322 * dtkAccY9 rho = rho 2326 := by
      unfold dtkAccY9
      linear_combination r2832
    have ha3 : 3021 * rho 2325 * rho 2326 = rho 2327 := by
      linear_combination r2833
    have ha4 : rho 2328 * (1 + rho 2327) = rho 2325 + rho 2326 := by
      linear_combination r2834
    have ha5 : rho 2329 * (1 - rho 2327) = rho 2324 - rho 2325 - rho 2326 := by
      linear_combination r2835
    have haddx :
        rho 2328 * (1 + 3021 * (rho 2323 * dtkAccX9 rho) * (rho 2322 * dtkAccY9 rho)) =
          rho 2323 * dtkAccX9 rho + rho 2322 * dtkAccY9 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 2329 * (1 - 3021 * (rho 2323 * dtkAccX9 rho) * (rho 2322 * dtkAccY9 rho)) =
          (-1) * (rho 2323 * dtkAccX9 rho) - rho 2322 * dtkAccY9 rho +
            (dtkAccY9 rho - dtkAccX9 rho * (-1)) * (rho 2322 + rho 2323) := by
      rw [ha1, ha2, ha3]
      calc
        rho 2329 * (1 - rho 2327) = rho 2324 - rho 2325 - rho 2326 := ha5
        _ = (-1) * rho 2325 - rho 2326 + (dtkAccY9 rho - dtkAccX9 rho * (-1)) * (rho 2322 + rho 2323) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX10 rho = dtkAccX9 rho - Bool.toZMod bit * (dtkAccX9 rho - rho 2328) := by
      have hd : rho 2330 = Bool.toZMod bit * (rho 2328 - dtkAccX9 rho) := by
        rw [← hbit]
        unfold dtkAccX9
        linear_combination -r2836
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY10 rho = dtkAccY9 rho - Bool.toZMod bit * (dtkAccY9 rho - rho 2329) := by
      have hd : rho 2331 = Bool.toZMod bit * (rho 2329 - dtkAccY9 rho) := by
        rw [← hbit]
        unfold dtkAccY9
        linear_combination -r2837
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 2322 * rho 2323 = rho 2332 := by linear_combination r2838
    have hd1 : rho 2322 * rho 2322 = rho 2333 := by linear_combination r2839
    have hd2 : rho 2323 * rho 2323 = rho 2334 := by linear_combination r2840
    have hd3 : rho 2335 * (rho 2323 * rho 2323 + rho 2322 * rho 2322 * (-1)) = 2 * (rho 2322 * rho 2323) := by
      rw [hd0, hd1, hd2]
      linear_combination r2841
    have hd4 : rho 2336 * (2 - (rho 2323 * rho 2323 + rho 2322 * rho 2322 * (-1))) = rho 2323 * rho 2323 - rho 2322 * rho 2322 * (-1) := by
      rw [hd1, hd2]
      linear_combination r2842
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX9 rho : F), (dtkAccY9 rho : F)⟩
      ⟨(rho 2322 : F), (rho 2323 : F)⟩
      ⟨(rho 2328 : F), (rho 2329 : F)⟩
      ⟨(dtkAccX10 rho : F), (dtkAccY10 rho : F)⟩
      ⟨(rho 2335 : F), (rho 2336 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung9

theorem dtk_rows10 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2843 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2844 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2845 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2846 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2847 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2848 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2849 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2850 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2851 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2852 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2853 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2854 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2855 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p35, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart35 at p35
  rcases p35 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2843, r2844, r2845, r2846, r2847, r2848, r2849, r2850, r2851, r2852, r2853, r2854, r2855, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r2843, r2844, r2845, r2846, r2847, r2848, r2849, r2850, r2851, r2852, r2853, r2854, r2855⟩

theorem dtk_rung10 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 993 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX10 rho : F), (dtkAccY10 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 2335 : F), (rho 2336 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX10 rho : F), (dtkAccY10 rho : F)⟩
        ⟨(rho 2335 : F), (rho 2336 : F)⟩
        ⟨(dtkAccX11 rho : F), (dtkAccY11 rho : F)⟩
        ⟨(rho 2348 : F), (rho 2349 : F)⟩ := by
  obtain ⟨r2843, r2844, r2845, r2846, r2847, r2848, r2849, r2850, r2851, r2852, r2853, r2854, r2855⟩ := dtk_rows10 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2843 at r2843
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2844 at r2844
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2845 at r2845
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2846 at r2846
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2847 at r2847
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2848 at r2848
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2849 at r2849
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2850 at r2850
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2851 at r2851
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2852 at r2852
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2853 at r2853
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2854 at r2854
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2855 at r2855
  have hrung10 (bit : Bool) (hbit : rho 993 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX10 rho : F), (dtkAccY10 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 2335 : F), (rho 2336 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX10 rho : F), (dtkAccY10 rho : F)⟩
        ⟨(rho 2335 : F), (rho 2336 : F)⟩
        ⟨(dtkAccX11 rho : F), (dtkAccY11 rho : F)⟩
        ⟨(rho 2348 : F), (rho 2349 : F)⟩ := by
    have hnextx : dtkAccX11 rho = dtkAccX10 rho + rho 2343 := by
      unfold dtkAccX11 dtkAccX10
      ring
    have hnexty : dtkAccY11 rho = dtkAccY10 rho + rho 2344 := by
      unfold dtkAccY11 dtkAccY10
      ring
    have ha0 : (rho 2335 + rho 2336) * (dtkAccX10 rho + dtkAccY10 rho) = rho 2337 := by
      unfold dtkAccX10 dtkAccY10
      linear_combination r2843
    have ha1 : rho 2336 * dtkAccX10 rho = rho 2338 := by
      unfold dtkAccX10
      linear_combination r2844
    have ha2 : rho 2335 * dtkAccY10 rho = rho 2339 := by
      unfold dtkAccY10
      linear_combination r2845
    have ha3 : 3021 * rho 2338 * rho 2339 = rho 2340 := by
      linear_combination r2846
    have ha4 : rho 2341 * (1 + rho 2340) = rho 2338 + rho 2339 := by
      linear_combination r2847
    have ha5 : rho 2342 * (1 - rho 2340) = rho 2337 - rho 2338 - rho 2339 := by
      linear_combination r2848
    have haddx :
        rho 2341 * (1 + 3021 * (rho 2336 * dtkAccX10 rho) * (rho 2335 * dtkAccY10 rho)) =
          rho 2336 * dtkAccX10 rho + rho 2335 * dtkAccY10 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 2342 * (1 - 3021 * (rho 2336 * dtkAccX10 rho) * (rho 2335 * dtkAccY10 rho)) =
          (-1) * (rho 2336 * dtkAccX10 rho) - rho 2335 * dtkAccY10 rho +
            (dtkAccY10 rho - dtkAccX10 rho * (-1)) * (rho 2335 + rho 2336) := by
      rw [ha1, ha2, ha3]
      calc
        rho 2342 * (1 - rho 2340) = rho 2337 - rho 2338 - rho 2339 := ha5
        _ = (-1) * rho 2338 - rho 2339 + (dtkAccY10 rho - dtkAccX10 rho * (-1)) * (rho 2335 + rho 2336) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX11 rho = dtkAccX10 rho - Bool.toZMod bit * (dtkAccX10 rho - rho 2341) := by
      have hd : rho 2343 = Bool.toZMod bit * (rho 2341 - dtkAccX10 rho) := by
        rw [← hbit]
        unfold dtkAccX10
        linear_combination -r2849
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY11 rho = dtkAccY10 rho - Bool.toZMod bit * (dtkAccY10 rho - rho 2342) := by
      have hd : rho 2344 = Bool.toZMod bit * (rho 2342 - dtkAccY10 rho) := by
        rw [← hbit]
        unfold dtkAccY10
        linear_combination -r2850
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 2335 * rho 2336 = rho 2345 := by linear_combination r2851
    have hd1 : rho 2335 * rho 2335 = rho 2346 := by linear_combination r2852
    have hd2 : rho 2336 * rho 2336 = rho 2347 := by linear_combination r2853
    have hd3 : rho 2348 * (rho 2336 * rho 2336 + rho 2335 * rho 2335 * (-1)) = 2 * (rho 2335 * rho 2336) := by
      rw [hd0, hd1, hd2]
      linear_combination r2854
    have hd4 : rho 2349 * (2 - (rho 2336 * rho 2336 + rho 2335 * rho 2335 * (-1))) = rho 2336 * rho 2336 - rho 2335 * rho 2335 * (-1) := by
      rw [hd1, hd2]
      linear_combination r2855
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX10 rho : F), (dtkAccY10 rho : F)⟩
      ⟨(rho 2335 : F), (rho 2336 : F)⟩
      ⟨(rho 2341 : F), (rho 2342 : F)⟩
      ⟨(dtkAccX11 rho : F), (dtkAccY11 rho : F)⟩
      ⟨(rho 2348 : F), (rho 2349 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung10

theorem dtk_rows11 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2856 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2857 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2858 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2859 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2860 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2861 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2862 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2863 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2864 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2865 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2866 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2867 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2868 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p35, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart35 at p35
  rcases p35 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2856, r2857, r2858, r2859, r2860, r2861, r2862, r2863, r2864, r2865, r2866, r2867, r2868, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r2856, r2857, r2858, r2859, r2860, r2861, r2862, r2863, r2864, r2865, r2866, r2867, r2868⟩

theorem dtk_rung11 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 994 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX11 rho : F), (dtkAccY11 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 2348 : F), (rho 2349 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX11 rho : F), (dtkAccY11 rho : F)⟩
        ⟨(rho 2348 : F), (rho 2349 : F)⟩
        ⟨(dtkAccX12 rho : F), (dtkAccY12 rho : F)⟩
        ⟨(rho 2361 : F), (rho 2362 : F)⟩ := by
  obtain ⟨r2856, r2857, r2858, r2859, r2860, r2861, r2862, r2863, r2864, r2865, r2866, r2867, r2868⟩ := dtk_rows11 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2856 at r2856
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2857 at r2857
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2858 at r2858
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2859 at r2859
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2860 at r2860
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2861 at r2861
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2862 at r2862
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2863 at r2863
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2864 at r2864
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2865 at r2865
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2866 at r2866
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2867 at r2867
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2868 at r2868
  have hrung11 (bit : Bool) (hbit : rho 994 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX11 rho : F), (dtkAccY11 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 2348 : F), (rho 2349 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX11 rho : F), (dtkAccY11 rho : F)⟩
        ⟨(rho 2348 : F), (rho 2349 : F)⟩
        ⟨(dtkAccX12 rho : F), (dtkAccY12 rho : F)⟩
        ⟨(rho 2361 : F), (rho 2362 : F)⟩ := by
    have hnextx : dtkAccX12 rho = dtkAccX11 rho + rho 2356 := by
      unfold dtkAccX12 dtkAccX11
      ring
    have hnexty : dtkAccY12 rho = dtkAccY11 rho + rho 2357 := by
      unfold dtkAccY12 dtkAccY11
      ring
    have ha0 : (rho 2348 + rho 2349) * (dtkAccX11 rho + dtkAccY11 rho) = rho 2350 := by
      unfold dtkAccX11 dtkAccY11
      linear_combination r2856
    have ha1 : rho 2349 * dtkAccX11 rho = rho 2351 := by
      unfold dtkAccX11
      linear_combination r2857
    have ha2 : rho 2348 * dtkAccY11 rho = rho 2352 := by
      unfold dtkAccY11
      linear_combination r2858
    have ha3 : 3021 * rho 2351 * rho 2352 = rho 2353 := by
      linear_combination r2859
    have ha4 : rho 2354 * (1 + rho 2353) = rho 2351 + rho 2352 := by
      linear_combination r2860
    have ha5 : rho 2355 * (1 - rho 2353) = rho 2350 - rho 2351 - rho 2352 := by
      linear_combination r2861
    have haddx :
        rho 2354 * (1 + 3021 * (rho 2349 * dtkAccX11 rho) * (rho 2348 * dtkAccY11 rho)) =
          rho 2349 * dtkAccX11 rho + rho 2348 * dtkAccY11 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 2355 * (1 - 3021 * (rho 2349 * dtkAccX11 rho) * (rho 2348 * dtkAccY11 rho)) =
          (-1) * (rho 2349 * dtkAccX11 rho) - rho 2348 * dtkAccY11 rho +
            (dtkAccY11 rho - dtkAccX11 rho * (-1)) * (rho 2348 + rho 2349) := by
      rw [ha1, ha2, ha3]
      calc
        rho 2355 * (1 - rho 2353) = rho 2350 - rho 2351 - rho 2352 := ha5
        _ = (-1) * rho 2351 - rho 2352 + (dtkAccY11 rho - dtkAccX11 rho * (-1)) * (rho 2348 + rho 2349) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX12 rho = dtkAccX11 rho - Bool.toZMod bit * (dtkAccX11 rho - rho 2354) := by
      have hd : rho 2356 = Bool.toZMod bit * (rho 2354 - dtkAccX11 rho) := by
        rw [← hbit]
        unfold dtkAccX11
        linear_combination -r2862
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY12 rho = dtkAccY11 rho - Bool.toZMod bit * (dtkAccY11 rho - rho 2355) := by
      have hd : rho 2357 = Bool.toZMod bit * (rho 2355 - dtkAccY11 rho) := by
        rw [← hbit]
        unfold dtkAccY11
        linear_combination -r2863
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 2348 * rho 2349 = rho 2358 := by linear_combination r2864
    have hd1 : rho 2348 * rho 2348 = rho 2359 := by linear_combination r2865
    have hd2 : rho 2349 * rho 2349 = rho 2360 := by linear_combination r2866
    have hd3 : rho 2361 * (rho 2349 * rho 2349 + rho 2348 * rho 2348 * (-1)) = 2 * (rho 2348 * rho 2349) := by
      rw [hd0, hd1, hd2]
      linear_combination r2867
    have hd4 : rho 2362 * (2 - (rho 2349 * rho 2349 + rho 2348 * rho 2348 * (-1))) = rho 2349 * rho 2349 - rho 2348 * rho 2348 * (-1) := by
      rw [hd1, hd2]
      linear_combination r2868
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX11 rho : F), (dtkAccY11 rho : F)⟩
      ⟨(rho 2348 : F), (rho 2349 : F)⟩
      ⟨(rho 2354 : F), (rho 2355 : F)⟩
      ⟨(dtkAccX12 rho : F), (dtkAccY12 rho : F)⟩
      ⟨(rho 2361 : F), (rho 2362 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung11

theorem dtk_hstep_c1 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (983 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 6 ≤ i → i < 12 →
      EdwardsBridge.onCurve (dtkLadderAccState rho i) →
      EdwardsBridge.onCurve (dtkLadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (dtkLadderAccState rho i) (dtkLadderCurState rho i)
        (dtkLadderAccState rho (i + 1)) (dtkLadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact dtk_rung6 rho h bits[6]! (hbitAt 6 (by omega)) hacc hcur
  · exact dtk_rung7 rho h bits[7]! (hbitAt 7 (by omega)) hacc hcur
  · exact dtk_rung8 rho h bits[8]! (hbitAt 8 (by omega)) hacc hcur
  · exact dtk_rung9 rho h bits[9]! (hbitAt 9 (by omega)) hacc hcur
  · exact dtk_rung10 rho h bits[10]! (hbitAt 10 (by omega)) hacc hcur
  · exact dtk_rung11 rho h bits[11]! (hbitAt 11 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport
