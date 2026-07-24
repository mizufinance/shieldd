import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDtkScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs

theorem dtk_rows0 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2719 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2720 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2721 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2722 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2723 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2724 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2725 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p33, p34, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart33 at p33
  rcases p33 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2719⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart34 at p34
  rcases p34 with ⟨r2720, r2721, r2722, r2723, r2724, r2725, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r2719, r2720, r2721, r2722, r2723, r2724, r2725⟩

theorem dtk_rung0 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 983 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX0 rho : F), (dtkAccY0 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 2211 : F), (rho 2213 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX0 rho : F), (dtkAccY0 rho : F)⟩
        ⟨(rho 2211 : F), (rho 2213 : F)⟩
        ⟨(dtkAccX1 rho : F), (dtkAccY1 rho : F)⟩
        ⟨(rho 2218 : F), (rho 2219 : F)⟩ := by
  obtain ⟨r2719, r2720, r2721, r2722, r2723, r2724, r2725⟩ := dtk_rows0 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2719 at r2719
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2720 at r2720
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2721 at r2721
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2722 at r2722
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2723 at r2723
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2724 at r2724
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2725 at r2725
  have hrung0 (bit : Bool) (hbit : rho 983 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX0 rho : F), (dtkAccY0 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 2211 : F), (rho 2213 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX0 rho : F), (dtkAccY0 rho : F)⟩
        ⟨(rho 2211 : F), (rho 2213 : F)⟩
        ⟨(dtkAccX1 rho : F), (dtkAccY1 rho : F)⟩
        ⟨(rho 2218 : F), (rho 2219 : F)⟩ := by
    have hnextx : dtkAccX1 rho = dtkAccX0 rho + rho 2212 := by
      unfold dtkAccX1 dtkAccX0
      ring
    have hnexty : dtkAccY1 rho = dtkAccY0 rho + rho 2214 := by
      unfold dtkAccY1 dtkAccY0
      ring
    have haddx :
        rho 2211 * (1 + 3021 * (rho 2213 * dtkAccX0 rho) * (rho 2211 * dtkAccY0 rho)) =
          rho 2213 * dtkAccX0 rho + rho 2211 * dtkAccY0 rho := by
      unfold dtkAccX0 dtkAccY0
      ring
    have haddy :
        rho 2213 * (1 - 3021 * (rho 2213 * dtkAccX0 rho) * (rho 2211 * dtkAccY0 rho)) =
          (-1) * (rho 2213 * dtkAccX0 rho) - rho 2211 * dtkAccY0 rho +
            (dtkAccY0 rho - dtkAccX0 rho * (-1)) * (rho 2211 + rho 2213) := by
      unfold dtkAccX0 dtkAccY0
      ring
    have hselx : dtkAccX1 rho = dtkAccX0 rho - Bool.toZMod bit * (dtkAccX0 rho - rho 2211) := by
      have hd : rho 2212 = Bool.toZMod bit * (rho 2211 - dtkAccX0 rho) := by
        rw [← hbit]
        unfold dtkAccX0
        linear_combination -r2719
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY1 rho = dtkAccY0 rho - Bool.toZMod bit * (dtkAccY0 rho - rho 2213) := by
      have hd : rho 2214 = Bool.toZMod bit * (rho 2213 - dtkAccY0 rho) := by
        rw [← hbit]
        unfold dtkAccY0
        linear_combination -r2720
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 2211 * rho 2213 = rho 2215 := by linear_combination r2721
    have hd1 : rho 2211 * rho 2211 = rho 2216 := by linear_combination r2722
    have hd2 : rho 2213 * rho 2213 = rho 2217 := by linear_combination r2723
    have hd3 : rho 2218 * (rho 2213 * rho 2213 + rho 2211 * rho 2211 * (-1)) = 2 * (rho 2211 * rho 2213) := by
      rw [hd0, hd1, hd2]
      linear_combination r2724
    have hd4 : rho 2219 * (2 - (rho 2213 * rho 2213 + rho 2211 * rho 2211 * (-1))) = rho 2213 * rho 2213 - rho 2211 * rho 2211 * (-1) := by
      rw [hd1, hd2]
      linear_combination r2725
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX0 rho : F), (dtkAccY0 rho : F)⟩
      ⟨(rho 2211 : F), (rho 2213 : F)⟩
      ⟨(rho 2211 : F), (rho 2213 : F)⟩
      ⟨(dtkAccX1 rho : F), (dtkAccY1 rho : F)⟩
      ⟨(rho 2218 : F), (rho 2219 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung0

theorem dtk_rows1 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2726 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2727 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2728 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2729 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2730 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2731 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2732 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2733 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2734 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2735 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2736 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2737 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2738 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p34, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart34 at p34
  rcases p34 with ⟨_, _, _, _, _, _, r2726, r2727, r2728, r2729, r2730, r2731, r2732, r2733, r2734, r2735, r2736, r2737, r2738, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r2726, r2727, r2728, r2729, r2730, r2731, r2732, r2733, r2734, r2735, r2736, r2737, r2738⟩

theorem dtk_rung1 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 984 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX1 rho : F), (dtkAccY1 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 2218 : F), (rho 2219 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX1 rho : F), (dtkAccY1 rho : F)⟩
        ⟨(rho 2218 : F), (rho 2219 : F)⟩
        ⟨(dtkAccX2 rho : F), (dtkAccY2 rho : F)⟩
        ⟨(rho 2231 : F), (rho 2232 : F)⟩ := by
  obtain ⟨r2726, r2727, r2728, r2729, r2730, r2731, r2732, r2733, r2734, r2735, r2736, r2737, r2738⟩ := dtk_rows1 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2726 at r2726
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2727 at r2727
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2728 at r2728
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2729 at r2729
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2730 at r2730
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2731 at r2731
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2732 at r2732
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2733 at r2733
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2734 at r2734
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2735 at r2735
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2736 at r2736
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2737 at r2737
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2738 at r2738
  have hrung1 (bit : Bool) (hbit : rho 984 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX1 rho : F), (dtkAccY1 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 2218 : F), (rho 2219 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX1 rho : F), (dtkAccY1 rho : F)⟩
        ⟨(rho 2218 : F), (rho 2219 : F)⟩
        ⟨(dtkAccX2 rho : F), (dtkAccY2 rho : F)⟩
        ⟨(rho 2231 : F), (rho 2232 : F)⟩ := by
    have hnextx : dtkAccX2 rho = dtkAccX1 rho + rho 2226 := by
      unfold dtkAccX2 dtkAccX1
      ring
    have hnexty : dtkAccY2 rho = dtkAccY1 rho + rho 2227 := by
      unfold dtkAccY2 dtkAccY1
      ring
    have ha0 : (rho 2218 + rho 2219) * (dtkAccX1 rho + dtkAccY1 rho) = rho 2220 := by
      unfold dtkAccX1 dtkAccY1
      linear_combination r2726
    have ha1 : rho 2219 * dtkAccX1 rho = rho 2221 := by
      unfold dtkAccX1
      linear_combination r2727
    have ha2 : rho 2218 * dtkAccY1 rho = rho 2222 := by
      unfold dtkAccY1
      linear_combination r2728
    have ha3 : 3021 * rho 2221 * rho 2222 = rho 2223 := by
      linear_combination r2729
    have ha4 : rho 2224 * (1 + rho 2223) = rho 2221 + rho 2222 := by
      linear_combination r2730
    have ha5 : rho 2225 * (1 - rho 2223) = rho 2220 - rho 2221 - rho 2222 := by
      linear_combination r2731
    have haddx :
        rho 2224 * (1 + 3021 * (rho 2219 * dtkAccX1 rho) * (rho 2218 * dtkAccY1 rho)) =
          rho 2219 * dtkAccX1 rho + rho 2218 * dtkAccY1 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 2225 * (1 - 3021 * (rho 2219 * dtkAccX1 rho) * (rho 2218 * dtkAccY1 rho)) =
          (-1) * (rho 2219 * dtkAccX1 rho) - rho 2218 * dtkAccY1 rho +
            (dtkAccY1 rho - dtkAccX1 rho * (-1)) * (rho 2218 + rho 2219) := by
      rw [ha1, ha2, ha3]
      calc
        rho 2225 * (1 - rho 2223) = rho 2220 - rho 2221 - rho 2222 := ha5
        _ = (-1) * rho 2221 - rho 2222 + (dtkAccY1 rho - dtkAccX1 rho * (-1)) * (rho 2218 + rho 2219) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX2 rho = dtkAccX1 rho - Bool.toZMod bit * (dtkAccX1 rho - rho 2224) := by
      have hd : rho 2226 = Bool.toZMod bit * (rho 2224 - dtkAccX1 rho) := by
        rw [← hbit]
        unfold dtkAccX1
        linear_combination -r2732
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY2 rho = dtkAccY1 rho - Bool.toZMod bit * (dtkAccY1 rho - rho 2225) := by
      have hd : rho 2227 = Bool.toZMod bit * (rho 2225 - dtkAccY1 rho) := by
        rw [← hbit]
        unfold dtkAccY1
        linear_combination -r2733
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 2218 * rho 2219 = rho 2228 := by linear_combination r2734
    have hd1 : rho 2218 * rho 2218 = rho 2229 := by linear_combination r2735
    have hd2 : rho 2219 * rho 2219 = rho 2230 := by linear_combination r2736
    have hd3 : rho 2231 * (rho 2219 * rho 2219 + rho 2218 * rho 2218 * (-1)) = 2 * (rho 2218 * rho 2219) := by
      rw [hd0, hd1, hd2]
      linear_combination r2737
    have hd4 : rho 2232 * (2 - (rho 2219 * rho 2219 + rho 2218 * rho 2218 * (-1))) = rho 2219 * rho 2219 - rho 2218 * rho 2218 * (-1) := by
      rw [hd1, hd2]
      linear_combination r2738
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX1 rho : F), (dtkAccY1 rho : F)⟩
      ⟨(rho 2218 : F), (rho 2219 : F)⟩
      ⟨(rho 2224 : F), (rho 2225 : F)⟩
      ⟨(dtkAccX2 rho : F), (dtkAccY2 rho : F)⟩
      ⟨(rho 2231 : F), (rho 2232 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung1

theorem dtk_rows2 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2739 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2740 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2741 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2742 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2743 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2744 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2745 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2746 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2747 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2748 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2749 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2750 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2751 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p34, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart34 at p34
  rcases p34 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2739, r2740, r2741, r2742, r2743, r2744, r2745, r2746, r2747, r2748, r2749, r2750, r2751, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r2739, r2740, r2741, r2742, r2743, r2744, r2745, r2746, r2747, r2748, r2749, r2750, r2751⟩

theorem dtk_rung2 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 985 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX2 rho : F), (dtkAccY2 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 2231 : F), (rho 2232 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX2 rho : F), (dtkAccY2 rho : F)⟩
        ⟨(rho 2231 : F), (rho 2232 : F)⟩
        ⟨(dtkAccX3 rho : F), (dtkAccY3 rho : F)⟩
        ⟨(rho 2244 : F), (rho 2245 : F)⟩ := by
  obtain ⟨r2739, r2740, r2741, r2742, r2743, r2744, r2745, r2746, r2747, r2748, r2749, r2750, r2751⟩ := dtk_rows2 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2739 at r2739
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2740 at r2740
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2741 at r2741
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2742 at r2742
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2743 at r2743
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2744 at r2744
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2745 at r2745
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2746 at r2746
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2747 at r2747
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2748 at r2748
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2749 at r2749
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2750 at r2750
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2751 at r2751
  have hrung2 (bit : Bool) (hbit : rho 985 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX2 rho : F), (dtkAccY2 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 2231 : F), (rho 2232 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX2 rho : F), (dtkAccY2 rho : F)⟩
        ⟨(rho 2231 : F), (rho 2232 : F)⟩
        ⟨(dtkAccX3 rho : F), (dtkAccY3 rho : F)⟩
        ⟨(rho 2244 : F), (rho 2245 : F)⟩ := by
    have hnextx : dtkAccX3 rho = dtkAccX2 rho + rho 2239 := by
      unfold dtkAccX3 dtkAccX2
      ring
    have hnexty : dtkAccY3 rho = dtkAccY2 rho + rho 2240 := by
      unfold dtkAccY3 dtkAccY2
      ring
    have ha0 : (rho 2231 + rho 2232) * (dtkAccX2 rho + dtkAccY2 rho) = rho 2233 := by
      unfold dtkAccX2 dtkAccY2
      linear_combination r2739
    have ha1 : rho 2232 * dtkAccX2 rho = rho 2234 := by
      unfold dtkAccX2
      linear_combination r2740
    have ha2 : rho 2231 * dtkAccY2 rho = rho 2235 := by
      unfold dtkAccY2
      linear_combination r2741
    have ha3 : 3021 * rho 2234 * rho 2235 = rho 2236 := by
      linear_combination r2742
    have ha4 : rho 2237 * (1 + rho 2236) = rho 2234 + rho 2235 := by
      linear_combination r2743
    have ha5 : rho 2238 * (1 - rho 2236) = rho 2233 - rho 2234 - rho 2235 := by
      linear_combination r2744
    have haddx :
        rho 2237 * (1 + 3021 * (rho 2232 * dtkAccX2 rho) * (rho 2231 * dtkAccY2 rho)) =
          rho 2232 * dtkAccX2 rho + rho 2231 * dtkAccY2 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 2238 * (1 - 3021 * (rho 2232 * dtkAccX2 rho) * (rho 2231 * dtkAccY2 rho)) =
          (-1) * (rho 2232 * dtkAccX2 rho) - rho 2231 * dtkAccY2 rho +
            (dtkAccY2 rho - dtkAccX2 rho * (-1)) * (rho 2231 + rho 2232) := by
      rw [ha1, ha2, ha3]
      calc
        rho 2238 * (1 - rho 2236) = rho 2233 - rho 2234 - rho 2235 := ha5
        _ = (-1) * rho 2234 - rho 2235 + (dtkAccY2 rho - dtkAccX2 rho * (-1)) * (rho 2231 + rho 2232) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX3 rho = dtkAccX2 rho - Bool.toZMod bit * (dtkAccX2 rho - rho 2237) := by
      have hd : rho 2239 = Bool.toZMod bit * (rho 2237 - dtkAccX2 rho) := by
        rw [← hbit]
        unfold dtkAccX2
        linear_combination -r2745
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY3 rho = dtkAccY2 rho - Bool.toZMod bit * (dtkAccY2 rho - rho 2238) := by
      have hd : rho 2240 = Bool.toZMod bit * (rho 2238 - dtkAccY2 rho) := by
        rw [← hbit]
        unfold dtkAccY2
        linear_combination -r2746
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 2231 * rho 2232 = rho 2241 := by linear_combination r2747
    have hd1 : rho 2231 * rho 2231 = rho 2242 := by linear_combination r2748
    have hd2 : rho 2232 * rho 2232 = rho 2243 := by linear_combination r2749
    have hd3 : rho 2244 * (rho 2232 * rho 2232 + rho 2231 * rho 2231 * (-1)) = 2 * (rho 2231 * rho 2232) := by
      rw [hd0, hd1, hd2]
      linear_combination r2750
    have hd4 : rho 2245 * (2 - (rho 2232 * rho 2232 + rho 2231 * rho 2231 * (-1))) = rho 2232 * rho 2232 - rho 2231 * rho 2231 * (-1) := by
      rw [hd1, hd2]
      linear_combination r2751
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX2 rho : F), (dtkAccY2 rho : F)⟩
      ⟨(rho 2231 : F), (rho 2232 : F)⟩
      ⟨(rho 2237 : F), (rho 2238 : F)⟩
      ⟨(dtkAccX3 rho : F), (dtkAccY3 rho : F)⟩
      ⟨(rho 2244 : F), (rho 2245 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung2

theorem dtk_rows3 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2752 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2753 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2754 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2755 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2756 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2757 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2758 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2759 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2760 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2761 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2762 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2763 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2764 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p34, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart34 at p34
  rcases p34 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2752, r2753, r2754, r2755, r2756, r2757, r2758, r2759, r2760, r2761, r2762, r2763, r2764, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r2752, r2753, r2754, r2755, r2756, r2757, r2758, r2759, r2760, r2761, r2762, r2763, r2764⟩

theorem dtk_rung3 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 986 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX3 rho : F), (dtkAccY3 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 2244 : F), (rho 2245 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX3 rho : F), (dtkAccY3 rho : F)⟩
        ⟨(rho 2244 : F), (rho 2245 : F)⟩
        ⟨(dtkAccX4 rho : F), (dtkAccY4 rho : F)⟩
        ⟨(rho 2257 : F), (rho 2258 : F)⟩ := by
  obtain ⟨r2752, r2753, r2754, r2755, r2756, r2757, r2758, r2759, r2760, r2761, r2762, r2763, r2764⟩ := dtk_rows3 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2752 at r2752
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2753 at r2753
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2754 at r2754
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2755 at r2755
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2756 at r2756
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2757 at r2757
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2758 at r2758
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2759 at r2759
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2760 at r2760
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2761 at r2761
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2762 at r2762
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2763 at r2763
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2764 at r2764
  have hrung3 (bit : Bool) (hbit : rho 986 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX3 rho : F), (dtkAccY3 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 2244 : F), (rho 2245 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX3 rho : F), (dtkAccY3 rho : F)⟩
        ⟨(rho 2244 : F), (rho 2245 : F)⟩
        ⟨(dtkAccX4 rho : F), (dtkAccY4 rho : F)⟩
        ⟨(rho 2257 : F), (rho 2258 : F)⟩ := by
    have hnextx : dtkAccX4 rho = dtkAccX3 rho + rho 2252 := by
      unfold dtkAccX4 dtkAccX3
      ring
    have hnexty : dtkAccY4 rho = dtkAccY3 rho + rho 2253 := by
      unfold dtkAccY4 dtkAccY3
      ring
    have ha0 : (rho 2244 + rho 2245) * (dtkAccX3 rho + dtkAccY3 rho) = rho 2246 := by
      unfold dtkAccX3 dtkAccY3
      linear_combination r2752
    have ha1 : rho 2245 * dtkAccX3 rho = rho 2247 := by
      unfold dtkAccX3
      linear_combination r2753
    have ha2 : rho 2244 * dtkAccY3 rho = rho 2248 := by
      unfold dtkAccY3
      linear_combination r2754
    have ha3 : 3021 * rho 2247 * rho 2248 = rho 2249 := by
      linear_combination r2755
    have ha4 : rho 2250 * (1 + rho 2249) = rho 2247 + rho 2248 := by
      linear_combination r2756
    have ha5 : rho 2251 * (1 - rho 2249) = rho 2246 - rho 2247 - rho 2248 := by
      linear_combination r2757
    have haddx :
        rho 2250 * (1 + 3021 * (rho 2245 * dtkAccX3 rho) * (rho 2244 * dtkAccY3 rho)) =
          rho 2245 * dtkAccX3 rho + rho 2244 * dtkAccY3 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 2251 * (1 - 3021 * (rho 2245 * dtkAccX3 rho) * (rho 2244 * dtkAccY3 rho)) =
          (-1) * (rho 2245 * dtkAccX3 rho) - rho 2244 * dtkAccY3 rho +
            (dtkAccY3 rho - dtkAccX3 rho * (-1)) * (rho 2244 + rho 2245) := by
      rw [ha1, ha2, ha3]
      calc
        rho 2251 * (1 - rho 2249) = rho 2246 - rho 2247 - rho 2248 := ha5
        _ = (-1) * rho 2247 - rho 2248 + (dtkAccY3 rho - dtkAccX3 rho * (-1)) * (rho 2244 + rho 2245) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX4 rho = dtkAccX3 rho - Bool.toZMod bit * (dtkAccX3 rho - rho 2250) := by
      have hd : rho 2252 = Bool.toZMod bit * (rho 2250 - dtkAccX3 rho) := by
        rw [← hbit]
        unfold dtkAccX3
        linear_combination -r2758
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY4 rho = dtkAccY3 rho - Bool.toZMod bit * (dtkAccY3 rho - rho 2251) := by
      have hd : rho 2253 = Bool.toZMod bit * (rho 2251 - dtkAccY3 rho) := by
        rw [← hbit]
        unfold dtkAccY3
        linear_combination -r2759
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 2244 * rho 2245 = rho 2254 := by linear_combination r2760
    have hd1 : rho 2244 * rho 2244 = rho 2255 := by linear_combination r2761
    have hd2 : rho 2245 * rho 2245 = rho 2256 := by linear_combination r2762
    have hd3 : rho 2257 * (rho 2245 * rho 2245 + rho 2244 * rho 2244 * (-1)) = 2 * (rho 2244 * rho 2245) := by
      rw [hd0, hd1, hd2]
      linear_combination r2763
    have hd4 : rho 2258 * (2 - (rho 2245 * rho 2245 + rho 2244 * rho 2244 * (-1))) = rho 2245 * rho 2245 - rho 2244 * rho 2244 * (-1) := by
      rw [hd1, hd2]
      linear_combination r2764
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX3 rho : F), (dtkAccY3 rho : F)⟩
      ⟨(rho 2244 : F), (rho 2245 : F)⟩
      ⟨(rho 2250 : F), (rho 2251 : F)⟩
      ⟨(dtkAccX4 rho : F), (dtkAccY4 rho : F)⟩
      ⟨(rho 2257 : F), (rho 2258 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung3

theorem dtk_rows4 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2765 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2766 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2767 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2768 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2769 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2770 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2771 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2772 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2773 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2774 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2775 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2776 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2777 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p34, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart34 at p34
  rcases p34 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2765, r2766, r2767, r2768, r2769, r2770, r2771, r2772, r2773, r2774, r2775, r2776, r2777, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r2765, r2766, r2767, r2768, r2769, r2770, r2771, r2772, r2773, r2774, r2775, r2776, r2777⟩

theorem dtk_rung4 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 987 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX4 rho : F), (dtkAccY4 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 2257 : F), (rho 2258 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX4 rho : F), (dtkAccY4 rho : F)⟩
        ⟨(rho 2257 : F), (rho 2258 : F)⟩
        ⟨(dtkAccX5 rho : F), (dtkAccY5 rho : F)⟩
        ⟨(rho 2270 : F), (rho 2271 : F)⟩ := by
  obtain ⟨r2765, r2766, r2767, r2768, r2769, r2770, r2771, r2772, r2773, r2774, r2775, r2776, r2777⟩ := dtk_rows4 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2765 at r2765
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2766 at r2766
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2767 at r2767
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2768 at r2768
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2769 at r2769
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2770 at r2770
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2771 at r2771
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2772 at r2772
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2773 at r2773
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2774 at r2774
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2775 at r2775
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2776 at r2776
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2777 at r2777
  have hrung4 (bit : Bool) (hbit : rho 987 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX4 rho : F), (dtkAccY4 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 2257 : F), (rho 2258 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX4 rho : F), (dtkAccY4 rho : F)⟩
        ⟨(rho 2257 : F), (rho 2258 : F)⟩
        ⟨(dtkAccX5 rho : F), (dtkAccY5 rho : F)⟩
        ⟨(rho 2270 : F), (rho 2271 : F)⟩ := by
    have hnextx : dtkAccX5 rho = dtkAccX4 rho + rho 2265 := by
      unfold dtkAccX5 dtkAccX4
      ring
    have hnexty : dtkAccY5 rho = dtkAccY4 rho + rho 2266 := by
      unfold dtkAccY5 dtkAccY4
      ring
    have ha0 : (rho 2257 + rho 2258) * (dtkAccX4 rho + dtkAccY4 rho) = rho 2259 := by
      unfold dtkAccX4 dtkAccY4
      linear_combination r2765
    have ha1 : rho 2258 * dtkAccX4 rho = rho 2260 := by
      unfold dtkAccX4
      linear_combination r2766
    have ha2 : rho 2257 * dtkAccY4 rho = rho 2261 := by
      unfold dtkAccY4
      linear_combination r2767
    have ha3 : 3021 * rho 2260 * rho 2261 = rho 2262 := by
      linear_combination r2768
    have ha4 : rho 2263 * (1 + rho 2262) = rho 2260 + rho 2261 := by
      linear_combination r2769
    have ha5 : rho 2264 * (1 - rho 2262) = rho 2259 - rho 2260 - rho 2261 := by
      linear_combination r2770
    have haddx :
        rho 2263 * (1 + 3021 * (rho 2258 * dtkAccX4 rho) * (rho 2257 * dtkAccY4 rho)) =
          rho 2258 * dtkAccX4 rho + rho 2257 * dtkAccY4 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 2264 * (1 - 3021 * (rho 2258 * dtkAccX4 rho) * (rho 2257 * dtkAccY4 rho)) =
          (-1) * (rho 2258 * dtkAccX4 rho) - rho 2257 * dtkAccY4 rho +
            (dtkAccY4 rho - dtkAccX4 rho * (-1)) * (rho 2257 + rho 2258) := by
      rw [ha1, ha2, ha3]
      calc
        rho 2264 * (1 - rho 2262) = rho 2259 - rho 2260 - rho 2261 := ha5
        _ = (-1) * rho 2260 - rho 2261 + (dtkAccY4 rho - dtkAccX4 rho * (-1)) * (rho 2257 + rho 2258) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX5 rho = dtkAccX4 rho - Bool.toZMod bit * (dtkAccX4 rho - rho 2263) := by
      have hd : rho 2265 = Bool.toZMod bit * (rho 2263 - dtkAccX4 rho) := by
        rw [← hbit]
        unfold dtkAccX4
        linear_combination -r2771
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY5 rho = dtkAccY4 rho - Bool.toZMod bit * (dtkAccY4 rho - rho 2264) := by
      have hd : rho 2266 = Bool.toZMod bit * (rho 2264 - dtkAccY4 rho) := by
        rw [← hbit]
        unfold dtkAccY4
        linear_combination -r2772
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 2257 * rho 2258 = rho 2267 := by linear_combination r2773
    have hd1 : rho 2257 * rho 2257 = rho 2268 := by linear_combination r2774
    have hd2 : rho 2258 * rho 2258 = rho 2269 := by linear_combination r2775
    have hd3 : rho 2270 * (rho 2258 * rho 2258 + rho 2257 * rho 2257 * (-1)) = 2 * (rho 2257 * rho 2258) := by
      rw [hd0, hd1, hd2]
      linear_combination r2776
    have hd4 : rho 2271 * (2 - (rho 2258 * rho 2258 + rho 2257 * rho 2257 * (-1))) = rho 2258 * rho 2258 - rho 2257 * rho 2257 * (-1) := by
      rw [hd1, hd2]
      linear_combination r2777
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX4 rho : F), (dtkAccY4 rho : F)⟩
      ⟨(rho 2257 : F), (rho 2258 : F)⟩
      ⟨(rho 2263 : F), (rho 2264 : F)⟩
      ⟨(dtkAccX5 rho : F), (dtkAccY5 rho : F)⟩
      ⟨(rho 2270 : F), (rho 2271 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung4

theorem dtk_rows5 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2778 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2779 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2780 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2781 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2782 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2783 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2784 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2785 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2786 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2787 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2788 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2789 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2790 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p34, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart34 at p34
  rcases p34 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2778, r2779, r2780, r2781, r2782, r2783, r2784, r2785, r2786, r2787, r2788, r2789, r2790, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r2778, r2779, r2780, r2781, r2782, r2783, r2784, r2785, r2786, r2787, r2788, r2789, r2790⟩

theorem dtk_rung5 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 988 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX5 rho : F), (dtkAccY5 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 2270 : F), (rho 2271 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX5 rho : F), (dtkAccY5 rho : F)⟩
        ⟨(rho 2270 : F), (rho 2271 : F)⟩
        ⟨(dtkAccX6 rho : F), (dtkAccY6 rho : F)⟩
        ⟨(rho 2283 : F), (rho 2284 : F)⟩ := by
  obtain ⟨r2778, r2779, r2780, r2781, r2782, r2783, r2784, r2785, r2786, r2787, r2788, r2789, r2790⟩ := dtk_rows5 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2778 at r2778
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2779 at r2779
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2780 at r2780
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2781 at r2781
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2782 at r2782
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2783 at r2783
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2784 at r2784
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2785 at r2785
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2786 at r2786
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2787 at r2787
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2788 at r2788
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2789 at r2789
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2790 at r2790
  have hrung5 (bit : Bool) (hbit : rho 988 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX5 rho : F), (dtkAccY5 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 2270 : F), (rho 2271 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX5 rho : F), (dtkAccY5 rho : F)⟩
        ⟨(rho 2270 : F), (rho 2271 : F)⟩
        ⟨(dtkAccX6 rho : F), (dtkAccY6 rho : F)⟩
        ⟨(rho 2283 : F), (rho 2284 : F)⟩ := by
    have hnextx : dtkAccX6 rho = dtkAccX5 rho + rho 2278 := by
      unfold dtkAccX6 dtkAccX5
      ring
    have hnexty : dtkAccY6 rho = dtkAccY5 rho + rho 2279 := by
      unfold dtkAccY6 dtkAccY5
      ring
    have ha0 : (rho 2270 + rho 2271) * (dtkAccX5 rho + dtkAccY5 rho) = rho 2272 := by
      unfold dtkAccX5 dtkAccY5
      linear_combination r2778
    have ha1 : rho 2271 * dtkAccX5 rho = rho 2273 := by
      unfold dtkAccX5
      linear_combination r2779
    have ha2 : rho 2270 * dtkAccY5 rho = rho 2274 := by
      unfold dtkAccY5
      linear_combination r2780
    have ha3 : 3021 * rho 2273 * rho 2274 = rho 2275 := by
      linear_combination r2781
    have ha4 : rho 2276 * (1 + rho 2275) = rho 2273 + rho 2274 := by
      linear_combination r2782
    have ha5 : rho 2277 * (1 - rho 2275) = rho 2272 - rho 2273 - rho 2274 := by
      linear_combination r2783
    have haddx :
        rho 2276 * (1 + 3021 * (rho 2271 * dtkAccX5 rho) * (rho 2270 * dtkAccY5 rho)) =
          rho 2271 * dtkAccX5 rho + rho 2270 * dtkAccY5 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 2277 * (1 - 3021 * (rho 2271 * dtkAccX5 rho) * (rho 2270 * dtkAccY5 rho)) =
          (-1) * (rho 2271 * dtkAccX5 rho) - rho 2270 * dtkAccY5 rho +
            (dtkAccY5 rho - dtkAccX5 rho * (-1)) * (rho 2270 + rho 2271) := by
      rw [ha1, ha2, ha3]
      calc
        rho 2277 * (1 - rho 2275) = rho 2272 - rho 2273 - rho 2274 := ha5
        _ = (-1) * rho 2273 - rho 2274 + (dtkAccY5 rho - dtkAccX5 rho * (-1)) * (rho 2270 + rho 2271) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX6 rho = dtkAccX5 rho - Bool.toZMod bit * (dtkAccX5 rho - rho 2276) := by
      have hd : rho 2278 = Bool.toZMod bit * (rho 2276 - dtkAccX5 rho) := by
        rw [← hbit]
        unfold dtkAccX5
        linear_combination -r2784
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY6 rho = dtkAccY5 rho - Bool.toZMod bit * (dtkAccY5 rho - rho 2277) := by
      have hd : rho 2279 = Bool.toZMod bit * (rho 2277 - dtkAccY5 rho) := by
        rw [← hbit]
        unfold dtkAccY5
        linear_combination -r2785
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 2270 * rho 2271 = rho 2280 := by linear_combination r2786
    have hd1 : rho 2270 * rho 2270 = rho 2281 := by linear_combination r2787
    have hd2 : rho 2271 * rho 2271 = rho 2282 := by linear_combination r2788
    have hd3 : rho 2283 * (rho 2271 * rho 2271 + rho 2270 * rho 2270 * (-1)) = 2 * (rho 2270 * rho 2271) := by
      rw [hd0, hd1, hd2]
      linear_combination r2789
    have hd4 : rho 2284 * (2 - (rho 2271 * rho 2271 + rho 2270 * rho 2270 * (-1))) = rho 2271 * rho 2271 - rho 2270 * rho 2270 * (-1) := by
      rw [hd1, hd2]
      linear_combination r2790
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX5 rho : F), (dtkAccY5 rho : F)⟩
      ⟨(rho 2270 : F), (rho 2271 : F)⟩
      ⟨(rho 2276 : F), (rho 2277 : F)⟩
      ⟨(dtkAccX6 rho : F), (dtkAccY6 rho : F)⟩
      ⟨(rho 2283 : F), (rho 2284 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung5

theorem dtk_hstep_c0 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (983 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 0 ≤ i → i < 6 →
      EdwardsBridge.onCurve (dtkLadderAccState rho i) →
      EdwardsBridge.onCurve (dtkLadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (dtkLadderAccState rho i) (dtkLadderCurState rho i)
        (dtkLadderAccState rho (i + 1)) (dtkLadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact dtk_rung0 rho h bits[0]! (hbitAt 0 (by omega)) hacc hcur
  · exact dtk_rung1 rho h bits[1]! (hbitAt 1 (by omega)) hacc hcur
  · exact dtk_rung2 rho h bits[2]! (hbitAt 2 (by omega)) hacc hcur
  · exact dtk_rung3 rho h bits[3]! (hbitAt 3 (by omega)) hacc hcur
  · exact dtk_rung4 rho h bits[4]! (hbitAt 4 (by omega)) hacc hcur
  · exact dtk_rung5 rho h bits[5]! (hbitAt 5 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport
