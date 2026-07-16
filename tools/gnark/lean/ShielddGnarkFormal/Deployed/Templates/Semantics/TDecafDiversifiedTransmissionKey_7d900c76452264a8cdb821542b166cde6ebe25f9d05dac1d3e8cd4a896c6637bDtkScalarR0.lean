import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDtkScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport

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

theorem dtk_hstep_c0 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (983 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 0 ≤ i → i < 11 →
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
  · exact dtk_rung6 rho h bits[6]! (hbitAt 6 (by omega)) hacc hcur
  · exact dtk_rung7 rho h bits[7]! (hbitAt 7 (by omega)) hacc hcur
  · exact dtk_rung8 rho h bits[8]! (hbitAt 8 (by omega)) hacc hcur
  · exact dtk_rung9 rho h bits[9]! (hbitAt 9 (by omega)) hacc hcur
  · exact dtk_rung10 rho h bits[10]! (hbitAt 10 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport
