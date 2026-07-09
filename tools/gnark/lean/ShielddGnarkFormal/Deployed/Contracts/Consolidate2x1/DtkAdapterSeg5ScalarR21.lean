import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg5_rows231 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow6049 rho ∧ Seg5.relationRow6050 rho ∧ Seg5.relationRow6051 rho ∧ Seg5.relationRow6052 rho ∧ Seg5.relationRow6053 rho ∧ Seg5.relationRow6054 rho ∧ Seg5.relationRow6055 rho ∧ Seg5.relationRow6056 rho ∧ Seg5.relationRow6057 rho ∧ Seg5.relationRow6058 rho ∧ Seg5.relationRow6059 rho ∧ Seg5.relationRow6060 rho ∧ Seg5.relationRow6061 rho ∧ Seg5.relationRow6062 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p75, _, _, _, _
  ⟩
  unfold Seg5.relationPart75 at p75
  rcases p75 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6049, r6050, r6051, r6052, r6053, r6054, r6055, r6056, r6057, r6058, r6059, r6060, r6061, r6062, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r6049, r6050, r6051, r6052, r6053, r6054, r6055, r6056, r6057, r6058, r6059, r6060, r6061, r6062⟩

theorem seg5_rung231 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2646 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX231 rho : Seg5.F), (seg5AccY231 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5742 : Seg5.F), (rho 5743 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX231 rho : Seg5.F), (seg5AccY231 rho : Seg5.F)⟩
        ⟨(rho 5742 : Seg5.F), (rho 5743 : Seg5.F)⟩
        ⟨(seg5AccX232 rho : Seg5.F), (seg5AccY232 rho : Seg5.F)⟩
        ⟨(rho 5756 : Seg5.F), (rho 5757 : Seg5.F)⟩ := by
  obtain ⟨r6049, r6050, r6051, r6052, r6053, r6054, r6055, r6056, r6057, r6058, r6059, r6060, r6061, r6062⟩ := seg5_rows231 rho h
  unfold Seg5.relationRow6049 at r6049
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6049
  unfold Seg5.relationRow6050 at r6050
  unfold Seg5.relationRow6051 at r6051
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6051
  unfold Seg5.relationRow6052 at r6052
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6052
  unfold Seg5.relationRow6053 at r6053
  unfold Seg5.relationRow6054 at r6054
  unfold Seg5.relationRow6055 at r6055
  unfold Seg5.relationRow6056 at r6056
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6056
  unfold Seg5.relationRow6057 at r6057
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6057
  unfold Seg5.relationRow6058 at r6058
  unfold Seg5.relationRow6059 at r6059
  unfold Seg5.relationRow6060 at r6060
  unfold Seg5.relationRow6061 at r6061
  unfold Seg5.relationRow6062 at r6062
  have hrung231 (bit : Bool) (hbit : rho 2646 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX231 rho : Seg5.F), (seg5AccY231 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5742 : Seg5.F), (rho 5743 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX231 rho : Seg5.F), (seg5AccY231 rho : Seg5.F)⟩
        ⟨(rho 5742 : Seg5.F), (rho 5743 : Seg5.F)⟩
        ⟨(seg5AccX232 rho : Seg5.F), (seg5AccY232 rho : Seg5.F)⟩
        ⟨(rho 5756 : Seg5.F), (rho 5757 : Seg5.F)⟩ := by
    have hnextx : seg5AccX232 rho = seg5AccX231 rho + rho 5751 := by
      unfold seg5AccX232 seg5AccX231
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 81]
      ring
    have hnexty : seg5AccY232 rho = seg5AccY231 rho + rho 5752 := by
      unfold seg5AccY232 seg5AccY231
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 81]
      ring
    have hsum : seg5AccX231 rho + seg5AccY231 rho = rho 5744 := by
      unfold seg5AccX231 seg5AccY231
      linear_combination r6049
    have ha0 : (rho 5742 + rho 5743) * (seg5AccX231 rho + seg5AccY231 rho) = rho 5745 := by
      rw [hsum]
      linear_combination r6050
    have ha1 : rho 5743 * seg5AccX231 rho = rho 5746 := by
      unfold seg5AccX231
      linear_combination r6051
    have ha2 : rho 5742 * seg5AccY231 rho = rho 5747 := by
      unfold seg5AccY231
      linear_combination r6052
    have ha3 : 3021 * rho 5746 * rho 5747 = rho 5748 := by
      linear_combination r6053
    have ha4 : rho 5749 * (1 + rho 5748) = rho 5746 + rho 5747 := by
      linear_combination r6054
    have ha5 : rho 5750 * (1 - rho 5748) = rho 5745 - rho 5746 - rho 5747 := by
      linear_combination r6055
    have haddx :
        rho 5749 * (1 + 3021 * (rho 5743 * seg5AccX231 rho) * (rho 5742 * seg5AccY231 rho)) =
          rho 5743 * seg5AccX231 rho + rho 5742 * seg5AccY231 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5750 * (1 - 3021 * (rho 5743 * seg5AccX231 rho) * (rho 5742 * seg5AccY231 rho)) =
          (-1) * (rho 5743 * seg5AccX231 rho) - rho 5742 * seg5AccY231 rho +
            (seg5AccY231 rho - seg5AccX231 rho * (-1)) * (rho 5742 + rho 5743) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5750 * (1 - rho 5748) = rho 5745 - rho 5746 - rho 5747 := ha5
        _ = (-1) * rho 5746 - rho 5747 + (seg5AccY231 rho - seg5AccX231 rho * (-1)) * (rho 5742 + rho 5743) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX232 rho = seg5AccX231 rho - Bool.toZMod bit * (seg5AccX231 rho - rho 5749) := by
      have hd : rho 5751 = Bool.toZMod bit * (rho 5749 - seg5AccX231 rho) := by
        rw [← hbit]
        unfold seg5AccX231
        linear_combination -r6056
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY232 rho = seg5AccY231 rho - Bool.toZMod bit * (seg5AccY231 rho - rho 5750) := by
      have hd : rho 5752 = Bool.toZMod bit * (rho 5750 - seg5AccY231 rho) := by
        rw [← hbit]
        unfold seg5AccY231
        linear_combination -r6057
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5742 * rho 5743 = rho 5753 := by linear_combination r6058
    have hd1 : rho 5742 * rho 5742 = rho 5754 := by linear_combination r6059
    have hd2 : rho 5743 * rho 5743 = rho 5755 := by linear_combination r6060
    have hd3 : rho 5756 * (rho 5743 * rho 5743 + rho 5742 * rho 5742 * (-1)) = 2 * (rho 5742 * rho 5743) := by
      rw [hd0, hd1, hd2]
      linear_combination r6061
    have hd4 : rho 5757 * (2 - (rho 5743 * rho 5743 + rho 5742 * rho 5742 * (-1))) = rho 5743 * rho 5743 - rho 5742 * rho 5742 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6062
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX231 rho : Seg5.F), (seg5AccY231 rho : Seg5.F)⟩
      ⟨(rho 5742 : Seg5.F), (rho 5743 : Seg5.F)⟩
      ⟨(rho 5749 : Seg5.F), (rho 5750 : Seg5.F)⟩
      ⟨(seg5AccX232 rho : Seg5.F), (seg5AccY232 rho : Seg5.F)⟩
      ⟨(rho 5756 : Seg5.F), (rho 5757 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung231

theorem seg5_rows232 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow6063 rho ∧ Seg5.relationRow6064 rho ∧ Seg5.relationRow6065 rho ∧ Seg5.relationRow6066 rho ∧ Seg5.relationRow6067 rho ∧ Seg5.relationRow6068 rho ∧ Seg5.relationRow6069 rho ∧ Seg5.relationRow6070 rho ∧ Seg5.relationRow6071 rho ∧ Seg5.relationRow6072 rho ∧ Seg5.relationRow6073 rho ∧ Seg5.relationRow6074 rho ∧ Seg5.relationRow6075 rho ∧ Seg5.relationRow6076 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p75, _, _, _, _
  ⟩
  unfold Seg5.relationPart75 at p75
  rcases p75 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6063, r6064, r6065, r6066, r6067, r6068, r6069, r6070, r6071, r6072, r6073, r6074, r6075, r6076, _, _, _⟩
  exact ⟨r6063, r6064, r6065, r6066, r6067, r6068, r6069, r6070, r6071, r6072, r6073, r6074, r6075, r6076⟩

theorem seg5_rung232 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2647 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX232 rho : Seg5.F), (seg5AccY232 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5756 : Seg5.F), (rho 5757 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX232 rho : Seg5.F), (seg5AccY232 rho : Seg5.F)⟩
        ⟨(rho 5756 : Seg5.F), (rho 5757 : Seg5.F)⟩
        ⟨(seg5AccX233 rho : Seg5.F), (seg5AccY233 rho : Seg5.F)⟩
        ⟨(rho 5770 : Seg5.F), (rho 5771 : Seg5.F)⟩ := by
  obtain ⟨r6063, r6064, r6065, r6066, r6067, r6068, r6069, r6070, r6071, r6072, r6073, r6074, r6075, r6076⟩ := seg5_rows232 rho h
  unfold Seg5.relationRow6063 at r6063
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6063
  unfold Seg5.relationRow6064 at r6064
  unfold Seg5.relationRow6065 at r6065
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6065
  unfold Seg5.relationRow6066 at r6066
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6066
  unfold Seg5.relationRow6067 at r6067
  unfold Seg5.relationRow6068 at r6068
  unfold Seg5.relationRow6069 at r6069
  unfold Seg5.relationRow6070 at r6070
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6070
  unfold Seg5.relationRow6071 at r6071
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6071
  unfold Seg5.relationRow6072 at r6072
  unfold Seg5.relationRow6073 at r6073
  unfold Seg5.relationRow6074 at r6074
  unfold Seg5.relationRow6075 at r6075
  unfold Seg5.relationRow6076 at r6076
  have hrung232 (bit : Bool) (hbit : rho 2647 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX232 rho : Seg5.F), (seg5AccY232 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5756 : Seg5.F), (rho 5757 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX232 rho : Seg5.F), (seg5AccY232 rho : Seg5.F)⟩
        ⟨(rho 5756 : Seg5.F), (rho 5757 : Seg5.F)⟩
        ⟨(seg5AccX233 rho : Seg5.F), (seg5AccY233 rho : Seg5.F)⟩
        ⟨(rho 5770 : Seg5.F), (rho 5771 : Seg5.F)⟩ := by
    have hnextx : seg5AccX233 rho = seg5AccX232 rho + rho 5765 := by
      unfold seg5AccX233 seg5AccX232
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 82]
      ring
    have hnexty : seg5AccY233 rho = seg5AccY232 rho + rho 5766 := by
      unfold seg5AccY233 seg5AccY232
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 82]
      ring
    have hsum : seg5AccX232 rho + seg5AccY232 rho = rho 5758 := by
      unfold seg5AccX232 seg5AccY232
      linear_combination r6063
    have ha0 : (rho 5756 + rho 5757) * (seg5AccX232 rho + seg5AccY232 rho) = rho 5759 := by
      rw [hsum]
      linear_combination r6064
    have ha1 : rho 5757 * seg5AccX232 rho = rho 5760 := by
      unfold seg5AccX232
      linear_combination r6065
    have ha2 : rho 5756 * seg5AccY232 rho = rho 5761 := by
      unfold seg5AccY232
      linear_combination r6066
    have ha3 : 3021 * rho 5760 * rho 5761 = rho 5762 := by
      linear_combination r6067
    have ha4 : rho 5763 * (1 + rho 5762) = rho 5760 + rho 5761 := by
      linear_combination r6068
    have ha5 : rho 5764 * (1 - rho 5762) = rho 5759 - rho 5760 - rho 5761 := by
      linear_combination r6069
    have haddx :
        rho 5763 * (1 + 3021 * (rho 5757 * seg5AccX232 rho) * (rho 5756 * seg5AccY232 rho)) =
          rho 5757 * seg5AccX232 rho + rho 5756 * seg5AccY232 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5764 * (1 - 3021 * (rho 5757 * seg5AccX232 rho) * (rho 5756 * seg5AccY232 rho)) =
          (-1) * (rho 5757 * seg5AccX232 rho) - rho 5756 * seg5AccY232 rho +
            (seg5AccY232 rho - seg5AccX232 rho * (-1)) * (rho 5756 + rho 5757) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5764 * (1 - rho 5762) = rho 5759 - rho 5760 - rho 5761 := ha5
        _ = (-1) * rho 5760 - rho 5761 + (seg5AccY232 rho - seg5AccX232 rho * (-1)) * (rho 5756 + rho 5757) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX233 rho = seg5AccX232 rho - Bool.toZMod bit * (seg5AccX232 rho - rho 5763) := by
      have hd : rho 5765 = Bool.toZMod bit * (rho 5763 - seg5AccX232 rho) := by
        rw [← hbit]
        unfold seg5AccX232
        linear_combination -r6070
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY233 rho = seg5AccY232 rho - Bool.toZMod bit * (seg5AccY232 rho - rho 5764) := by
      have hd : rho 5766 = Bool.toZMod bit * (rho 5764 - seg5AccY232 rho) := by
        rw [← hbit]
        unfold seg5AccY232
        linear_combination -r6071
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5756 * rho 5757 = rho 5767 := by linear_combination r6072
    have hd1 : rho 5756 * rho 5756 = rho 5768 := by linear_combination r6073
    have hd2 : rho 5757 * rho 5757 = rho 5769 := by linear_combination r6074
    have hd3 : rho 5770 * (rho 5757 * rho 5757 + rho 5756 * rho 5756 * (-1)) = 2 * (rho 5756 * rho 5757) := by
      rw [hd0, hd1, hd2]
      linear_combination r6075
    have hd4 : rho 5771 * (2 - (rho 5757 * rho 5757 + rho 5756 * rho 5756 * (-1))) = rho 5757 * rho 5757 - rho 5756 * rho 5756 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6076
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX232 rho : Seg5.F), (seg5AccY232 rho : Seg5.F)⟩
      ⟨(rho 5756 : Seg5.F), (rho 5757 : Seg5.F)⟩
      ⟨(rho 5763 : Seg5.F), (rho 5764 : Seg5.F)⟩
      ⟨(seg5AccX233 rho : Seg5.F), (seg5AccY233 rho : Seg5.F)⟩
      ⟨(rho 5770 : Seg5.F), (rho 5771 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung232

theorem seg5_rows233 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow6077 rho ∧ Seg5.relationRow6078 rho ∧ Seg5.relationRow6079 rho ∧ Seg5.relationRow6080 rho ∧ Seg5.relationRow6081 rho ∧ Seg5.relationRow6082 rho ∧ Seg5.relationRow6083 rho ∧ Seg5.relationRow6084 rho ∧ Seg5.relationRow6085 rho ∧ Seg5.relationRow6086 rho ∧ Seg5.relationRow6087 rho ∧ Seg5.relationRow6088 rho ∧ Seg5.relationRow6089 rho ∧ Seg5.relationRow6090 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p75, p76, _, _, _
  ⟩
  unfold Seg5.relationPart75 at p75
  rcases p75 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6077, r6078, r6079⟩
  unfold Seg5.relationPart76 at p76
  rcases p76 with ⟨r6080, r6081, r6082, r6083, r6084, r6085, r6086, r6087, r6088, r6089, r6090, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r6077, r6078, r6079, r6080, r6081, r6082, r6083, r6084, r6085, r6086, r6087, r6088, r6089, r6090⟩

theorem seg5_rung233 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2648 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX233 rho : Seg5.F), (seg5AccY233 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5770 : Seg5.F), (rho 5771 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX233 rho : Seg5.F), (seg5AccY233 rho : Seg5.F)⟩
        ⟨(rho 5770 : Seg5.F), (rho 5771 : Seg5.F)⟩
        ⟨(seg5AccX234 rho : Seg5.F), (seg5AccY234 rho : Seg5.F)⟩
        ⟨(rho 5784 : Seg5.F), (rho 5785 : Seg5.F)⟩ := by
  obtain ⟨r6077, r6078, r6079, r6080, r6081, r6082, r6083, r6084, r6085, r6086, r6087, r6088, r6089, r6090⟩ := seg5_rows233 rho h
  unfold Seg5.relationRow6077 at r6077
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6077
  unfold Seg5.relationRow6078 at r6078
  unfold Seg5.relationRow6079 at r6079
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6079
  unfold Seg5.relationRow6080 at r6080
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6080
  unfold Seg5.relationRow6081 at r6081
  unfold Seg5.relationRow6082 at r6082
  unfold Seg5.relationRow6083 at r6083
  unfold Seg5.relationRow6084 at r6084
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6084
  unfold Seg5.relationRow6085 at r6085
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6085
  unfold Seg5.relationRow6086 at r6086
  unfold Seg5.relationRow6087 at r6087
  unfold Seg5.relationRow6088 at r6088
  unfold Seg5.relationRow6089 at r6089
  unfold Seg5.relationRow6090 at r6090
  have hrung233 (bit : Bool) (hbit : rho 2648 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX233 rho : Seg5.F), (seg5AccY233 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5770 : Seg5.F), (rho 5771 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX233 rho : Seg5.F), (seg5AccY233 rho : Seg5.F)⟩
        ⟨(rho 5770 : Seg5.F), (rho 5771 : Seg5.F)⟩
        ⟨(seg5AccX234 rho : Seg5.F), (seg5AccY234 rho : Seg5.F)⟩
        ⟨(rho 5784 : Seg5.F), (rho 5785 : Seg5.F)⟩ := by
    have hnextx : seg5AccX234 rho = seg5AccX233 rho + rho 5779 := by
      unfold seg5AccX234 seg5AccX233
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 83]
      ring
    have hnexty : seg5AccY234 rho = seg5AccY233 rho + rho 5780 := by
      unfold seg5AccY234 seg5AccY233
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 83]
      ring
    have hsum : seg5AccX233 rho + seg5AccY233 rho = rho 5772 := by
      unfold seg5AccX233 seg5AccY233
      linear_combination r6077
    have ha0 : (rho 5770 + rho 5771) * (seg5AccX233 rho + seg5AccY233 rho) = rho 5773 := by
      rw [hsum]
      linear_combination r6078
    have ha1 : rho 5771 * seg5AccX233 rho = rho 5774 := by
      unfold seg5AccX233
      linear_combination r6079
    have ha2 : rho 5770 * seg5AccY233 rho = rho 5775 := by
      unfold seg5AccY233
      linear_combination r6080
    have ha3 : 3021 * rho 5774 * rho 5775 = rho 5776 := by
      linear_combination r6081
    have ha4 : rho 5777 * (1 + rho 5776) = rho 5774 + rho 5775 := by
      linear_combination r6082
    have ha5 : rho 5778 * (1 - rho 5776) = rho 5773 - rho 5774 - rho 5775 := by
      linear_combination r6083
    have haddx :
        rho 5777 * (1 + 3021 * (rho 5771 * seg5AccX233 rho) * (rho 5770 * seg5AccY233 rho)) =
          rho 5771 * seg5AccX233 rho + rho 5770 * seg5AccY233 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5778 * (1 - 3021 * (rho 5771 * seg5AccX233 rho) * (rho 5770 * seg5AccY233 rho)) =
          (-1) * (rho 5771 * seg5AccX233 rho) - rho 5770 * seg5AccY233 rho +
            (seg5AccY233 rho - seg5AccX233 rho * (-1)) * (rho 5770 + rho 5771) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5778 * (1 - rho 5776) = rho 5773 - rho 5774 - rho 5775 := ha5
        _ = (-1) * rho 5774 - rho 5775 + (seg5AccY233 rho - seg5AccX233 rho * (-1)) * (rho 5770 + rho 5771) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX234 rho = seg5AccX233 rho - Bool.toZMod bit * (seg5AccX233 rho - rho 5777) := by
      have hd : rho 5779 = Bool.toZMod bit * (rho 5777 - seg5AccX233 rho) := by
        rw [← hbit]
        unfold seg5AccX233
        linear_combination -r6084
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY234 rho = seg5AccY233 rho - Bool.toZMod bit * (seg5AccY233 rho - rho 5778) := by
      have hd : rho 5780 = Bool.toZMod bit * (rho 5778 - seg5AccY233 rho) := by
        rw [← hbit]
        unfold seg5AccY233
        linear_combination -r6085
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5770 * rho 5771 = rho 5781 := by linear_combination r6086
    have hd1 : rho 5770 * rho 5770 = rho 5782 := by linear_combination r6087
    have hd2 : rho 5771 * rho 5771 = rho 5783 := by linear_combination r6088
    have hd3 : rho 5784 * (rho 5771 * rho 5771 + rho 5770 * rho 5770 * (-1)) = 2 * (rho 5770 * rho 5771) := by
      rw [hd0, hd1, hd2]
      linear_combination r6089
    have hd4 : rho 5785 * (2 - (rho 5771 * rho 5771 + rho 5770 * rho 5770 * (-1))) = rho 5771 * rho 5771 - rho 5770 * rho 5770 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6090
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX233 rho : Seg5.F), (seg5AccY233 rho : Seg5.F)⟩
      ⟨(rho 5770 : Seg5.F), (rho 5771 : Seg5.F)⟩
      ⟨(rho 5777 : Seg5.F), (rho 5778 : Seg5.F)⟩
      ⟨(seg5AccX234 rho : Seg5.F), (seg5AccY234 rho : Seg5.F)⟩
      ⟨(rho 5784 : Seg5.F), (rho 5785 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung233

theorem seg5_rows234 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow6091 rho ∧ Seg5.relationRow6092 rho ∧ Seg5.relationRow6093 rho ∧ Seg5.relationRow6094 rho ∧ Seg5.relationRow6095 rho ∧ Seg5.relationRow6096 rho ∧ Seg5.relationRow6097 rho ∧ Seg5.relationRow6098 rho ∧ Seg5.relationRow6099 rho ∧ Seg5.relationRow6100 rho ∧ Seg5.relationRow6101 rho ∧ Seg5.relationRow6102 rho ∧ Seg5.relationRow6103 rho ∧ Seg5.relationRow6104 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p76, _, _, _
  ⟩
  unfold Seg5.relationPart76 at p76
  rcases p76 with ⟨_, _, _, _, _, _, _, _, _, _, _, r6091, r6092, r6093, r6094, r6095, r6096, r6097, r6098, r6099, r6100, r6101, r6102, r6103, r6104, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r6091, r6092, r6093, r6094, r6095, r6096, r6097, r6098, r6099, r6100, r6101, r6102, r6103, r6104⟩

theorem seg5_rung234 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2649 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX234 rho : Seg5.F), (seg5AccY234 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5784 : Seg5.F), (rho 5785 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX234 rho : Seg5.F), (seg5AccY234 rho : Seg5.F)⟩
        ⟨(rho 5784 : Seg5.F), (rho 5785 : Seg5.F)⟩
        ⟨(seg5AccX235 rho : Seg5.F), (seg5AccY235 rho : Seg5.F)⟩
        ⟨(rho 5798 : Seg5.F), (rho 5799 : Seg5.F)⟩ := by
  obtain ⟨r6091, r6092, r6093, r6094, r6095, r6096, r6097, r6098, r6099, r6100, r6101, r6102, r6103, r6104⟩ := seg5_rows234 rho h
  unfold Seg5.relationRow6091 at r6091
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6091
  unfold Seg5.relationRow6092 at r6092
  unfold Seg5.relationRow6093 at r6093
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6093
  unfold Seg5.relationRow6094 at r6094
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6094
  unfold Seg5.relationRow6095 at r6095
  unfold Seg5.relationRow6096 at r6096
  unfold Seg5.relationRow6097 at r6097
  unfold Seg5.relationRow6098 at r6098
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6098
  unfold Seg5.relationRow6099 at r6099
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6099
  unfold Seg5.relationRow6100 at r6100
  unfold Seg5.relationRow6101 at r6101
  unfold Seg5.relationRow6102 at r6102
  unfold Seg5.relationRow6103 at r6103
  unfold Seg5.relationRow6104 at r6104
  have hrung234 (bit : Bool) (hbit : rho 2649 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX234 rho : Seg5.F), (seg5AccY234 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5784 : Seg5.F), (rho 5785 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX234 rho : Seg5.F), (seg5AccY234 rho : Seg5.F)⟩
        ⟨(rho 5784 : Seg5.F), (rho 5785 : Seg5.F)⟩
        ⟨(seg5AccX235 rho : Seg5.F), (seg5AccY235 rho : Seg5.F)⟩
        ⟨(rho 5798 : Seg5.F), (rho 5799 : Seg5.F)⟩ := by
    have hnextx : seg5AccX235 rho = seg5AccX234 rho + rho 5793 := by
      unfold seg5AccX235 seg5AccX234
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 84]
      ring
    have hnexty : seg5AccY235 rho = seg5AccY234 rho + rho 5794 := by
      unfold seg5AccY235 seg5AccY234
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 84]
      ring
    have hsum : seg5AccX234 rho + seg5AccY234 rho = rho 5786 := by
      unfold seg5AccX234 seg5AccY234
      linear_combination r6091
    have ha0 : (rho 5784 + rho 5785) * (seg5AccX234 rho + seg5AccY234 rho) = rho 5787 := by
      rw [hsum]
      linear_combination r6092
    have ha1 : rho 5785 * seg5AccX234 rho = rho 5788 := by
      unfold seg5AccX234
      linear_combination r6093
    have ha2 : rho 5784 * seg5AccY234 rho = rho 5789 := by
      unfold seg5AccY234
      linear_combination r6094
    have ha3 : 3021 * rho 5788 * rho 5789 = rho 5790 := by
      linear_combination r6095
    have ha4 : rho 5791 * (1 + rho 5790) = rho 5788 + rho 5789 := by
      linear_combination r6096
    have ha5 : rho 5792 * (1 - rho 5790) = rho 5787 - rho 5788 - rho 5789 := by
      linear_combination r6097
    have haddx :
        rho 5791 * (1 + 3021 * (rho 5785 * seg5AccX234 rho) * (rho 5784 * seg5AccY234 rho)) =
          rho 5785 * seg5AccX234 rho + rho 5784 * seg5AccY234 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5792 * (1 - 3021 * (rho 5785 * seg5AccX234 rho) * (rho 5784 * seg5AccY234 rho)) =
          (-1) * (rho 5785 * seg5AccX234 rho) - rho 5784 * seg5AccY234 rho +
            (seg5AccY234 rho - seg5AccX234 rho * (-1)) * (rho 5784 + rho 5785) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5792 * (1 - rho 5790) = rho 5787 - rho 5788 - rho 5789 := ha5
        _ = (-1) * rho 5788 - rho 5789 + (seg5AccY234 rho - seg5AccX234 rho * (-1)) * (rho 5784 + rho 5785) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX235 rho = seg5AccX234 rho - Bool.toZMod bit * (seg5AccX234 rho - rho 5791) := by
      have hd : rho 5793 = Bool.toZMod bit * (rho 5791 - seg5AccX234 rho) := by
        rw [← hbit]
        unfold seg5AccX234
        linear_combination -r6098
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY235 rho = seg5AccY234 rho - Bool.toZMod bit * (seg5AccY234 rho - rho 5792) := by
      have hd : rho 5794 = Bool.toZMod bit * (rho 5792 - seg5AccY234 rho) := by
        rw [← hbit]
        unfold seg5AccY234
        linear_combination -r6099
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5784 * rho 5785 = rho 5795 := by linear_combination r6100
    have hd1 : rho 5784 * rho 5784 = rho 5796 := by linear_combination r6101
    have hd2 : rho 5785 * rho 5785 = rho 5797 := by linear_combination r6102
    have hd3 : rho 5798 * (rho 5785 * rho 5785 + rho 5784 * rho 5784 * (-1)) = 2 * (rho 5784 * rho 5785) := by
      rw [hd0, hd1, hd2]
      linear_combination r6103
    have hd4 : rho 5799 * (2 - (rho 5785 * rho 5785 + rho 5784 * rho 5784 * (-1))) = rho 5785 * rho 5785 - rho 5784 * rho 5784 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6104
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX234 rho : Seg5.F), (seg5AccY234 rho : Seg5.F)⟩
      ⟨(rho 5784 : Seg5.F), (rho 5785 : Seg5.F)⟩
      ⟨(rho 5791 : Seg5.F), (rho 5792 : Seg5.F)⟩
      ⟨(seg5AccX235 rho : Seg5.F), (seg5AccY235 rho : Seg5.F)⟩
      ⟨(rho 5798 : Seg5.F), (rho 5799 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung234

theorem seg5_rows235 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow6105 rho ∧ Seg5.relationRow6106 rho ∧ Seg5.relationRow6107 rho ∧ Seg5.relationRow6108 rho ∧ Seg5.relationRow6109 rho ∧ Seg5.relationRow6110 rho ∧ Seg5.relationRow6111 rho ∧ Seg5.relationRow6112 rho ∧ Seg5.relationRow6113 rho ∧ Seg5.relationRow6114 rho ∧ Seg5.relationRow6115 rho ∧ Seg5.relationRow6116 rho ∧ Seg5.relationRow6117 rho ∧ Seg5.relationRow6118 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p76, _, _, _
  ⟩
  unfold Seg5.relationPart76 at p76
  rcases p76 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6105, r6106, r6107, r6108, r6109, r6110, r6111, r6112, r6113, r6114, r6115, r6116, r6117, r6118, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r6105, r6106, r6107, r6108, r6109, r6110, r6111, r6112, r6113, r6114, r6115, r6116, r6117, r6118⟩

theorem seg5_rung235 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2650 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX235 rho : Seg5.F), (seg5AccY235 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5798 : Seg5.F), (rho 5799 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX235 rho : Seg5.F), (seg5AccY235 rho : Seg5.F)⟩
        ⟨(rho 5798 : Seg5.F), (rho 5799 : Seg5.F)⟩
        ⟨(seg5AccX236 rho : Seg5.F), (seg5AccY236 rho : Seg5.F)⟩
        ⟨(rho 5812 : Seg5.F), (rho 5813 : Seg5.F)⟩ := by
  obtain ⟨r6105, r6106, r6107, r6108, r6109, r6110, r6111, r6112, r6113, r6114, r6115, r6116, r6117, r6118⟩ := seg5_rows235 rho h
  unfold Seg5.relationRow6105 at r6105
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6105
  unfold Seg5.relationRow6106 at r6106
  unfold Seg5.relationRow6107 at r6107
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6107
  unfold Seg5.relationRow6108 at r6108
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6108
  unfold Seg5.relationRow6109 at r6109
  unfold Seg5.relationRow6110 at r6110
  unfold Seg5.relationRow6111 at r6111
  unfold Seg5.relationRow6112 at r6112
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6112
  unfold Seg5.relationRow6113 at r6113
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6113
  unfold Seg5.relationRow6114 at r6114
  unfold Seg5.relationRow6115 at r6115
  unfold Seg5.relationRow6116 at r6116
  unfold Seg5.relationRow6117 at r6117
  unfold Seg5.relationRow6118 at r6118
  have hrung235 (bit : Bool) (hbit : rho 2650 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX235 rho : Seg5.F), (seg5AccY235 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5798 : Seg5.F), (rho 5799 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX235 rho : Seg5.F), (seg5AccY235 rho : Seg5.F)⟩
        ⟨(rho 5798 : Seg5.F), (rho 5799 : Seg5.F)⟩
        ⟨(seg5AccX236 rho : Seg5.F), (seg5AccY236 rho : Seg5.F)⟩
        ⟨(rho 5812 : Seg5.F), (rho 5813 : Seg5.F)⟩ := by
    have hnextx : seg5AccX236 rho = seg5AccX235 rho + rho 5807 := by
      unfold seg5AccX236 seg5AccX235
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 85]
      ring
    have hnexty : seg5AccY236 rho = seg5AccY235 rho + rho 5808 := by
      unfold seg5AccY236 seg5AccY235
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 85]
      ring
    have hsum : seg5AccX235 rho + seg5AccY235 rho = rho 5800 := by
      unfold seg5AccX235 seg5AccY235
      linear_combination r6105
    have ha0 : (rho 5798 + rho 5799) * (seg5AccX235 rho + seg5AccY235 rho) = rho 5801 := by
      rw [hsum]
      linear_combination r6106
    have ha1 : rho 5799 * seg5AccX235 rho = rho 5802 := by
      unfold seg5AccX235
      linear_combination r6107
    have ha2 : rho 5798 * seg5AccY235 rho = rho 5803 := by
      unfold seg5AccY235
      linear_combination r6108
    have ha3 : 3021 * rho 5802 * rho 5803 = rho 5804 := by
      linear_combination r6109
    have ha4 : rho 5805 * (1 + rho 5804) = rho 5802 + rho 5803 := by
      linear_combination r6110
    have ha5 : rho 5806 * (1 - rho 5804) = rho 5801 - rho 5802 - rho 5803 := by
      linear_combination r6111
    have haddx :
        rho 5805 * (1 + 3021 * (rho 5799 * seg5AccX235 rho) * (rho 5798 * seg5AccY235 rho)) =
          rho 5799 * seg5AccX235 rho + rho 5798 * seg5AccY235 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5806 * (1 - 3021 * (rho 5799 * seg5AccX235 rho) * (rho 5798 * seg5AccY235 rho)) =
          (-1) * (rho 5799 * seg5AccX235 rho) - rho 5798 * seg5AccY235 rho +
            (seg5AccY235 rho - seg5AccX235 rho * (-1)) * (rho 5798 + rho 5799) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5806 * (1 - rho 5804) = rho 5801 - rho 5802 - rho 5803 := ha5
        _ = (-1) * rho 5802 - rho 5803 + (seg5AccY235 rho - seg5AccX235 rho * (-1)) * (rho 5798 + rho 5799) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX236 rho = seg5AccX235 rho - Bool.toZMod bit * (seg5AccX235 rho - rho 5805) := by
      have hd : rho 5807 = Bool.toZMod bit * (rho 5805 - seg5AccX235 rho) := by
        rw [← hbit]
        unfold seg5AccX235
        linear_combination -r6112
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY236 rho = seg5AccY235 rho - Bool.toZMod bit * (seg5AccY235 rho - rho 5806) := by
      have hd : rho 5808 = Bool.toZMod bit * (rho 5806 - seg5AccY235 rho) := by
        rw [← hbit]
        unfold seg5AccY235
        linear_combination -r6113
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5798 * rho 5799 = rho 5809 := by linear_combination r6114
    have hd1 : rho 5798 * rho 5798 = rho 5810 := by linear_combination r6115
    have hd2 : rho 5799 * rho 5799 = rho 5811 := by linear_combination r6116
    have hd3 : rho 5812 * (rho 5799 * rho 5799 + rho 5798 * rho 5798 * (-1)) = 2 * (rho 5798 * rho 5799) := by
      rw [hd0, hd1, hd2]
      linear_combination r6117
    have hd4 : rho 5813 * (2 - (rho 5799 * rho 5799 + rho 5798 * rho 5798 * (-1))) = rho 5799 * rho 5799 - rho 5798 * rho 5798 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6118
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX235 rho : Seg5.F), (seg5AccY235 rho : Seg5.F)⟩
      ⟨(rho 5798 : Seg5.F), (rho 5799 : Seg5.F)⟩
      ⟨(rho 5805 : Seg5.F), (rho 5806 : Seg5.F)⟩
      ⟨(seg5AccX236 rho : Seg5.F), (seg5AccY236 rho : Seg5.F)⟩
      ⟨(rho 5812 : Seg5.F), (rho 5813 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung235

theorem seg5_rows236 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow6119 rho ∧ Seg5.relationRow6120 rho ∧ Seg5.relationRow6121 rho ∧ Seg5.relationRow6122 rho ∧ Seg5.relationRow6123 rho ∧ Seg5.relationRow6124 rho ∧ Seg5.relationRow6125 rho ∧ Seg5.relationRow6126 rho ∧ Seg5.relationRow6127 rho ∧ Seg5.relationRow6128 rho ∧ Seg5.relationRow6129 rho ∧ Seg5.relationRow6130 rho ∧ Seg5.relationRow6131 rho ∧ Seg5.relationRow6132 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p76, _, _, _
  ⟩
  unfold Seg5.relationPart76 at p76
  rcases p76 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6119, r6120, r6121, r6122, r6123, r6124, r6125, r6126, r6127, r6128, r6129, r6130, r6131, r6132, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r6119, r6120, r6121, r6122, r6123, r6124, r6125, r6126, r6127, r6128, r6129, r6130, r6131, r6132⟩

theorem seg5_rung236 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2651 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX236 rho : Seg5.F), (seg5AccY236 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5812 : Seg5.F), (rho 5813 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX236 rho : Seg5.F), (seg5AccY236 rho : Seg5.F)⟩
        ⟨(rho 5812 : Seg5.F), (rho 5813 : Seg5.F)⟩
        ⟨(seg5AccX237 rho : Seg5.F), (seg5AccY237 rho : Seg5.F)⟩
        ⟨(rho 5826 : Seg5.F), (rho 5827 : Seg5.F)⟩ := by
  obtain ⟨r6119, r6120, r6121, r6122, r6123, r6124, r6125, r6126, r6127, r6128, r6129, r6130, r6131, r6132⟩ := seg5_rows236 rho h
  unfold Seg5.relationRow6119 at r6119
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6119
  unfold Seg5.relationRow6120 at r6120
  unfold Seg5.relationRow6121 at r6121
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6121
  unfold Seg5.relationRow6122 at r6122
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6122
  unfold Seg5.relationRow6123 at r6123
  unfold Seg5.relationRow6124 at r6124
  unfold Seg5.relationRow6125 at r6125
  unfold Seg5.relationRow6126 at r6126
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6126
  unfold Seg5.relationRow6127 at r6127
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6127
  unfold Seg5.relationRow6128 at r6128
  unfold Seg5.relationRow6129 at r6129
  unfold Seg5.relationRow6130 at r6130
  unfold Seg5.relationRow6131 at r6131
  unfold Seg5.relationRow6132 at r6132
  have hrung236 (bit : Bool) (hbit : rho 2651 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX236 rho : Seg5.F), (seg5AccY236 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5812 : Seg5.F), (rho 5813 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX236 rho : Seg5.F), (seg5AccY236 rho : Seg5.F)⟩
        ⟨(rho 5812 : Seg5.F), (rho 5813 : Seg5.F)⟩
        ⟨(seg5AccX237 rho : Seg5.F), (seg5AccY237 rho : Seg5.F)⟩
        ⟨(rho 5826 : Seg5.F), (rho 5827 : Seg5.F)⟩ := by
    have hnextx : seg5AccX237 rho = seg5AccX236 rho + rho 5821 := by
      unfold seg5AccX237 seg5AccX236
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 86]
      ring
    have hnexty : seg5AccY237 rho = seg5AccY236 rho + rho 5822 := by
      unfold seg5AccY237 seg5AccY236
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 86]
      ring
    have hsum : seg5AccX236 rho + seg5AccY236 rho = rho 5814 := by
      unfold seg5AccX236 seg5AccY236
      linear_combination r6119
    have ha0 : (rho 5812 + rho 5813) * (seg5AccX236 rho + seg5AccY236 rho) = rho 5815 := by
      rw [hsum]
      linear_combination r6120
    have ha1 : rho 5813 * seg5AccX236 rho = rho 5816 := by
      unfold seg5AccX236
      linear_combination r6121
    have ha2 : rho 5812 * seg5AccY236 rho = rho 5817 := by
      unfold seg5AccY236
      linear_combination r6122
    have ha3 : 3021 * rho 5816 * rho 5817 = rho 5818 := by
      linear_combination r6123
    have ha4 : rho 5819 * (1 + rho 5818) = rho 5816 + rho 5817 := by
      linear_combination r6124
    have ha5 : rho 5820 * (1 - rho 5818) = rho 5815 - rho 5816 - rho 5817 := by
      linear_combination r6125
    have haddx :
        rho 5819 * (1 + 3021 * (rho 5813 * seg5AccX236 rho) * (rho 5812 * seg5AccY236 rho)) =
          rho 5813 * seg5AccX236 rho + rho 5812 * seg5AccY236 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5820 * (1 - 3021 * (rho 5813 * seg5AccX236 rho) * (rho 5812 * seg5AccY236 rho)) =
          (-1) * (rho 5813 * seg5AccX236 rho) - rho 5812 * seg5AccY236 rho +
            (seg5AccY236 rho - seg5AccX236 rho * (-1)) * (rho 5812 + rho 5813) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5820 * (1 - rho 5818) = rho 5815 - rho 5816 - rho 5817 := ha5
        _ = (-1) * rho 5816 - rho 5817 + (seg5AccY236 rho - seg5AccX236 rho * (-1)) * (rho 5812 + rho 5813) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX237 rho = seg5AccX236 rho - Bool.toZMod bit * (seg5AccX236 rho - rho 5819) := by
      have hd : rho 5821 = Bool.toZMod bit * (rho 5819 - seg5AccX236 rho) := by
        rw [← hbit]
        unfold seg5AccX236
        linear_combination -r6126
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY237 rho = seg5AccY236 rho - Bool.toZMod bit * (seg5AccY236 rho - rho 5820) := by
      have hd : rho 5822 = Bool.toZMod bit * (rho 5820 - seg5AccY236 rho) := by
        rw [← hbit]
        unfold seg5AccY236
        linear_combination -r6127
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5812 * rho 5813 = rho 5823 := by linear_combination r6128
    have hd1 : rho 5812 * rho 5812 = rho 5824 := by linear_combination r6129
    have hd2 : rho 5813 * rho 5813 = rho 5825 := by linear_combination r6130
    have hd3 : rho 5826 * (rho 5813 * rho 5813 + rho 5812 * rho 5812 * (-1)) = 2 * (rho 5812 * rho 5813) := by
      rw [hd0, hd1, hd2]
      linear_combination r6131
    have hd4 : rho 5827 * (2 - (rho 5813 * rho 5813 + rho 5812 * rho 5812 * (-1))) = rho 5813 * rho 5813 - rho 5812 * rho 5812 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6132
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX236 rho : Seg5.F), (seg5AccY236 rho : Seg5.F)⟩
      ⟨(rho 5812 : Seg5.F), (rho 5813 : Seg5.F)⟩
      ⟨(rho 5819 : Seg5.F), (rho 5820 : Seg5.F)⟩
      ⟨(seg5AccX237 rho : Seg5.F), (seg5AccY237 rho : Seg5.F)⟩
      ⟨(rho 5826 : Seg5.F), (rho 5827 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung236

theorem seg5_rows237 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow6133 rho ∧ Seg5.relationRow6134 rho ∧ Seg5.relationRow6135 rho ∧ Seg5.relationRow6136 rho ∧ Seg5.relationRow6137 rho ∧ Seg5.relationRow6138 rho ∧ Seg5.relationRow6139 rho ∧ Seg5.relationRow6140 rho ∧ Seg5.relationRow6141 rho ∧ Seg5.relationRow6142 rho ∧ Seg5.relationRow6143 rho ∧ Seg5.relationRow6144 rho ∧ Seg5.relationRow6145 rho ∧ Seg5.relationRow6146 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p76, _, _, _
  ⟩
  unfold Seg5.relationPart76 at p76
  rcases p76 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6133, r6134, r6135, r6136, r6137, r6138, r6139, r6140, r6141, r6142, r6143, r6144, r6145, r6146, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r6133, r6134, r6135, r6136, r6137, r6138, r6139, r6140, r6141, r6142, r6143, r6144, r6145, r6146⟩

theorem seg5_rung237 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2652 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX237 rho : Seg5.F), (seg5AccY237 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5826 : Seg5.F), (rho 5827 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX237 rho : Seg5.F), (seg5AccY237 rho : Seg5.F)⟩
        ⟨(rho 5826 : Seg5.F), (rho 5827 : Seg5.F)⟩
        ⟨(seg5AccX238 rho : Seg5.F), (seg5AccY238 rho : Seg5.F)⟩
        ⟨(rho 5840 : Seg5.F), (rho 5841 : Seg5.F)⟩ := by
  obtain ⟨r6133, r6134, r6135, r6136, r6137, r6138, r6139, r6140, r6141, r6142, r6143, r6144, r6145, r6146⟩ := seg5_rows237 rho h
  unfold Seg5.relationRow6133 at r6133
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6133
  unfold Seg5.relationRow6134 at r6134
  unfold Seg5.relationRow6135 at r6135
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6135
  unfold Seg5.relationRow6136 at r6136
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6136
  unfold Seg5.relationRow6137 at r6137
  unfold Seg5.relationRow6138 at r6138
  unfold Seg5.relationRow6139 at r6139
  unfold Seg5.relationRow6140 at r6140
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6140
  unfold Seg5.relationRow6141 at r6141
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6141
  unfold Seg5.relationRow6142 at r6142
  unfold Seg5.relationRow6143 at r6143
  unfold Seg5.relationRow6144 at r6144
  unfold Seg5.relationRow6145 at r6145
  unfold Seg5.relationRow6146 at r6146
  have hrung237 (bit : Bool) (hbit : rho 2652 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX237 rho : Seg5.F), (seg5AccY237 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5826 : Seg5.F), (rho 5827 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX237 rho : Seg5.F), (seg5AccY237 rho : Seg5.F)⟩
        ⟨(rho 5826 : Seg5.F), (rho 5827 : Seg5.F)⟩
        ⟨(seg5AccX238 rho : Seg5.F), (seg5AccY238 rho : Seg5.F)⟩
        ⟨(rho 5840 : Seg5.F), (rho 5841 : Seg5.F)⟩ := by
    have hnextx : seg5AccX238 rho = seg5AccX237 rho + rho 5835 := by
      unfold seg5AccX238 seg5AccX237
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 87]
      ring
    have hnexty : seg5AccY238 rho = seg5AccY237 rho + rho 5836 := by
      unfold seg5AccY238 seg5AccY237
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 87]
      ring
    have hsum : seg5AccX237 rho + seg5AccY237 rho = rho 5828 := by
      unfold seg5AccX237 seg5AccY237
      linear_combination r6133
    have ha0 : (rho 5826 + rho 5827) * (seg5AccX237 rho + seg5AccY237 rho) = rho 5829 := by
      rw [hsum]
      linear_combination r6134
    have ha1 : rho 5827 * seg5AccX237 rho = rho 5830 := by
      unfold seg5AccX237
      linear_combination r6135
    have ha2 : rho 5826 * seg5AccY237 rho = rho 5831 := by
      unfold seg5AccY237
      linear_combination r6136
    have ha3 : 3021 * rho 5830 * rho 5831 = rho 5832 := by
      linear_combination r6137
    have ha4 : rho 5833 * (1 + rho 5832) = rho 5830 + rho 5831 := by
      linear_combination r6138
    have ha5 : rho 5834 * (1 - rho 5832) = rho 5829 - rho 5830 - rho 5831 := by
      linear_combination r6139
    have haddx :
        rho 5833 * (1 + 3021 * (rho 5827 * seg5AccX237 rho) * (rho 5826 * seg5AccY237 rho)) =
          rho 5827 * seg5AccX237 rho + rho 5826 * seg5AccY237 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5834 * (1 - 3021 * (rho 5827 * seg5AccX237 rho) * (rho 5826 * seg5AccY237 rho)) =
          (-1) * (rho 5827 * seg5AccX237 rho) - rho 5826 * seg5AccY237 rho +
            (seg5AccY237 rho - seg5AccX237 rho * (-1)) * (rho 5826 + rho 5827) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5834 * (1 - rho 5832) = rho 5829 - rho 5830 - rho 5831 := ha5
        _ = (-1) * rho 5830 - rho 5831 + (seg5AccY237 rho - seg5AccX237 rho * (-1)) * (rho 5826 + rho 5827) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX238 rho = seg5AccX237 rho - Bool.toZMod bit * (seg5AccX237 rho - rho 5833) := by
      have hd : rho 5835 = Bool.toZMod bit * (rho 5833 - seg5AccX237 rho) := by
        rw [← hbit]
        unfold seg5AccX237
        linear_combination -r6140
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY238 rho = seg5AccY237 rho - Bool.toZMod bit * (seg5AccY237 rho - rho 5834) := by
      have hd : rho 5836 = Bool.toZMod bit * (rho 5834 - seg5AccY237 rho) := by
        rw [← hbit]
        unfold seg5AccY237
        linear_combination -r6141
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5826 * rho 5827 = rho 5837 := by linear_combination r6142
    have hd1 : rho 5826 * rho 5826 = rho 5838 := by linear_combination r6143
    have hd2 : rho 5827 * rho 5827 = rho 5839 := by linear_combination r6144
    have hd3 : rho 5840 * (rho 5827 * rho 5827 + rho 5826 * rho 5826 * (-1)) = 2 * (rho 5826 * rho 5827) := by
      rw [hd0, hd1, hd2]
      linear_combination r6145
    have hd4 : rho 5841 * (2 - (rho 5827 * rho 5827 + rho 5826 * rho 5826 * (-1))) = rho 5827 * rho 5827 - rho 5826 * rho 5826 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6146
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX237 rho : Seg5.F), (seg5AccY237 rho : Seg5.F)⟩
      ⟨(rho 5826 : Seg5.F), (rho 5827 : Seg5.F)⟩
      ⟨(rho 5833 : Seg5.F), (rho 5834 : Seg5.F)⟩
      ⟨(seg5AccX238 rho : Seg5.F), (seg5AccY238 rho : Seg5.F)⟩
      ⟨(rho 5840 : Seg5.F), (rho 5841 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung237

theorem seg5_rows238 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow6147 rho ∧ Seg5.relationRow6148 rho ∧ Seg5.relationRow6149 rho ∧ Seg5.relationRow6150 rho ∧ Seg5.relationRow6151 rho ∧ Seg5.relationRow6152 rho ∧ Seg5.relationRow6153 rho ∧ Seg5.relationRow6154 rho ∧ Seg5.relationRow6155 rho ∧ Seg5.relationRow6156 rho ∧ Seg5.relationRow6157 rho ∧ Seg5.relationRow6158 rho ∧ Seg5.relationRow6159 rho ∧ Seg5.relationRow6160 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p76, p77, _, _
  ⟩
  unfold Seg5.relationPart76 at p76
  rcases p76 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6147, r6148, r6149, r6150, r6151, r6152, r6153, r6154, r6155, r6156, r6157, r6158, r6159⟩
  unfold Seg5.relationPart77 at p77
  rcases p77 with ⟨r6160, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r6147, r6148, r6149, r6150, r6151, r6152, r6153, r6154, r6155, r6156, r6157, r6158, r6159, r6160⟩

theorem seg5_rung238 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2653 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX238 rho : Seg5.F), (seg5AccY238 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5840 : Seg5.F), (rho 5841 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX238 rho : Seg5.F), (seg5AccY238 rho : Seg5.F)⟩
        ⟨(rho 5840 : Seg5.F), (rho 5841 : Seg5.F)⟩
        ⟨(seg5AccX239 rho : Seg5.F), (seg5AccY239 rho : Seg5.F)⟩
        ⟨(rho 5854 : Seg5.F), (rho 5855 : Seg5.F)⟩ := by
  obtain ⟨r6147, r6148, r6149, r6150, r6151, r6152, r6153, r6154, r6155, r6156, r6157, r6158, r6159, r6160⟩ := seg5_rows238 rho h
  unfold Seg5.relationRow6147 at r6147
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6147
  unfold Seg5.relationRow6148 at r6148
  unfold Seg5.relationRow6149 at r6149
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6149
  unfold Seg5.relationRow6150 at r6150
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6150
  unfold Seg5.relationRow6151 at r6151
  unfold Seg5.relationRow6152 at r6152
  unfold Seg5.relationRow6153 at r6153
  unfold Seg5.relationRow6154 at r6154
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6154
  unfold Seg5.relationRow6155 at r6155
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6155
  unfold Seg5.relationRow6156 at r6156
  unfold Seg5.relationRow6157 at r6157
  unfold Seg5.relationRow6158 at r6158
  unfold Seg5.relationRow6159 at r6159
  unfold Seg5.relationRow6160 at r6160
  have hrung238 (bit : Bool) (hbit : rho 2653 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX238 rho : Seg5.F), (seg5AccY238 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5840 : Seg5.F), (rho 5841 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX238 rho : Seg5.F), (seg5AccY238 rho : Seg5.F)⟩
        ⟨(rho 5840 : Seg5.F), (rho 5841 : Seg5.F)⟩
        ⟨(seg5AccX239 rho : Seg5.F), (seg5AccY239 rho : Seg5.F)⟩
        ⟨(rho 5854 : Seg5.F), (rho 5855 : Seg5.F)⟩ := by
    have hnextx : seg5AccX239 rho = seg5AccX238 rho + rho 5849 := by
      unfold seg5AccX239 seg5AccX238
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 88]
      ring
    have hnexty : seg5AccY239 rho = seg5AccY238 rho + rho 5850 := by
      unfold seg5AccY239 seg5AccY238
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 88]
      ring
    have hsum : seg5AccX238 rho + seg5AccY238 rho = rho 5842 := by
      unfold seg5AccX238 seg5AccY238
      linear_combination r6147
    have ha0 : (rho 5840 + rho 5841) * (seg5AccX238 rho + seg5AccY238 rho) = rho 5843 := by
      rw [hsum]
      linear_combination r6148
    have ha1 : rho 5841 * seg5AccX238 rho = rho 5844 := by
      unfold seg5AccX238
      linear_combination r6149
    have ha2 : rho 5840 * seg5AccY238 rho = rho 5845 := by
      unfold seg5AccY238
      linear_combination r6150
    have ha3 : 3021 * rho 5844 * rho 5845 = rho 5846 := by
      linear_combination r6151
    have ha4 : rho 5847 * (1 + rho 5846) = rho 5844 + rho 5845 := by
      linear_combination r6152
    have ha5 : rho 5848 * (1 - rho 5846) = rho 5843 - rho 5844 - rho 5845 := by
      linear_combination r6153
    have haddx :
        rho 5847 * (1 + 3021 * (rho 5841 * seg5AccX238 rho) * (rho 5840 * seg5AccY238 rho)) =
          rho 5841 * seg5AccX238 rho + rho 5840 * seg5AccY238 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5848 * (1 - 3021 * (rho 5841 * seg5AccX238 rho) * (rho 5840 * seg5AccY238 rho)) =
          (-1) * (rho 5841 * seg5AccX238 rho) - rho 5840 * seg5AccY238 rho +
            (seg5AccY238 rho - seg5AccX238 rho * (-1)) * (rho 5840 + rho 5841) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5848 * (1 - rho 5846) = rho 5843 - rho 5844 - rho 5845 := ha5
        _ = (-1) * rho 5844 - rho 5845 + (seg5AccY238 rho - seg5AccX238 rho * (-1)) * (rho 5840 + rho 5841) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX239 rho = seg5AccX238 rho - Bool.toZMod bit * (seg5AccX238 rho - rho 5847) := by
      have hd : rho 5849 = Bool.toZMod bit * (rho 5847 - seg5AccX238 rho) := by
        rw [← hbit]
        unfold seg5AccX238
        linear_combination -r6154
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY239 rho = seg5AccY238 rho - Bool.toZMod bit * (seg5AccY238 rho - rho 5848) := by
      have hd : rho 5850 = Bool.toZMod bit * (rho 5848 - seg5AccY238 rho) := by
        rw [← hbit]
        unfold seg5AccY238
        linear_combination -r6155
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5840 * rho 5841 = rho 5851 := by linear_combination r6156
    have hd1 : rho 5840 * rho 5840 = rho 5852 := by linear_combination r6157
    have hd2 : rho 5841 * rho 5841 = rho 5853 := by linear_combination r6158
    have hd3 : rho 5854 * (rho 5841 * rho 5841 + rho 5840 * rho 5840 * (-1)) = 2 * (rho 5840 * rho 5841) := by
      rw [hd0, hd1, hd2]
      linear_combination r6159
    have hd4 : rho 5855 * (2 - (rho 5841 * rho 5841 + rho 5840 * rho 5840 * (-1))) = rho 5841 * rho 5841 - rho 5840 * rho 5840 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6160
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX238 rho : Seg5.F), (seg5AccY238 rho : Seg5.F)⟩
      ⟨(rho 5840 : Seg5.F), (rho 5841 : Seg5.F)⟩
      ⟨(rho 5847 : Seg5.F), (rho 5848 : Seg5.F)⟩
      ⟨(seg5AccX239 rho : Seg5.F), (seg5AccY239 rho : Seg5.F)⟩
      ⟨(rho 5854 : Seg5.F), (rho 5855 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung238

theorem seg5_rows239 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow6161 rho ∧ Seg5.relationRow6162 rho ∧ Seg5.relationRow6163 rho ∧ Seg5.relationRow6164 rho ∧ Seg5.relationRow6165 rho ∧ Seg5.relationRow6166 rho ∧ Seg5.relationRow6167 rho ∧ Seg5.relationRow6168 rho ∧ Seg5.relationRow6169 rho ∧ Seg5.relationRow6170 rho ∧ Seg5.relationRow6171 rho ∧ Seg5.relationRow6172 rho ∧ Seg5.relationRow6173 rho ∧ Seg5.relationRow6174 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p77, _, _
  ⟩
  unfold Seg5.relationPart77 at p77
  rcases p77 with ⟨_, r6161, r6162, r6163, r6164, r6165, r6166, r6167, r6168, r6169, r6170, r6171, r6172, r6173, r6174, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r6161, r6162, r6163, r6164, r6165, r6166, r6167, r6168, r6169, r6170, r6171, r6172, r6173, r6174⟩

theorem seg5_rung239 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2654 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX239 rho : Seg5.F), (seg5AccY239 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5854 : Seg5.F), (rho 5855 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX239 rho : Seg5.F), (seg5AccY239 rho : Seg5.F)⟩
        ⟨(rho 5854 : Seg5.F), (rho 5855 : Seg5.F)⟩
        ⟨(seg5AccX240 rho : Seg5.F), (seg5AccY240 rho : Seg5.F)⟩
        ⟨(rho 5868 : Seg5.F), (rho 5869 : Seg5.F)⟩ := by
  obtain ⟨r6161, r6162, r6163, r6164, r6165, r6166, r6167, r6168, r6169, r6170, r6171, r6172, r6173, r6174⟩ := seg5_rows239 rho h
  unfold Seg5.relationRow6161 at r6161
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6161
  unfold Seg5.relationRow6162 at r6162
  unfold Seg5.relationRow6163 at r6163
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6163
  unfold Seg5.relationRow6164 at r6164
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6164
  unfold Seg5.relationRow6165 at r6165
  unfold Seg5.relationRow6166 at r6166
  unfold Seg5.relationRow6167 at r6167
  unfold Seg5.relationRow6168 at r6168
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6168
  unfold Seg5.relationRow6169 at r6169
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6169
  unfold Seg5.relationRow6170 at r6170
  unfold Seg5.relationRow6171 at r6171
  unfold Seg5.relationRow6172 at r6172
  unfold Seg5.relationRow6173 at r6173
  unfold Seg5.relationRow6174 at r6174
  have hrung239 (bit : Bool) (hbit : rho 2654 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX239 rho : Seg5.F), (seg5AccY239 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5854 : Seg5.F), (rho 5855 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX239 rho : Seg5.F), (seg5AccY239 rho : Seg5.F)⟩
        ⟨(rho 5854 : Seg5.F), (rho 5855 : Seg5.F)⟩
        ⟨(seg5AccX240 rho : Seg5.F), (seg5AccY240 rho : Seg5.F)⟩
        ⟨(rho 5868 : Seg5.F), (rho 5869 : Seg5.F)⟩ := by
    have hnextx : seg5AccX240 rho = seg5AccX239 rho + rho 5863 := by
      unfold seg5AccX240 seg5AccX239
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 89]
      ring
    have hnexty : seg5AccY240 rho = seg5AccY239 rho + rho 5864 := by
      unfold seg5AccY240 seg5AccY239
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 89]
      ring
    have hsum : seg5AccX239 rho + seg5AccY239 rho = rho 5856 := by
      unfold seg5AccX239 seg5AccY239
      linear_combination r6161
    have ha0 : (rho 5854 + rho 5855) * (seg5AccX239 rho + seg5AccY239 rho) = rho 5857 := by
      rw [hsum]
      linear_combination r6162
    have ha1 : rho 5855 * seg5AccX239 rho = rho 5858 := by
      unfold seg5AccX239
      linear_combination r6163
    have ha2 : rho 5854 * seg5AccY239 rho = rho 5859 := by
      unfold seg5AccY239
      linear_combination r6164
    have ha3 : 3021 * rho 5858 * rho 5859 = rho 5860 := by
      linear_combination r6165
    have ha4 : rho 5861 * (1 + rho 5860) = rho 5858 + rho 5859 := by
      linear_combination r6166
    have ha5 : rho 5862 * (1 - rho 5860) = rho 5857 - rho 5858 - rho 5859 := by
      linear_combination r6167
    have haddx :
        rho 5861 * (1 + 3021 * (rho 5855 * seg5AccX239 rho) * (rho 5854 * seg5AccY239 rho)) =
          rho 5855 * seg5AccX239 rho + rho 5854 * seg5AccY239 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5862 * (1 - 3021 * (rho 5855 * seg5AccX239 rho) * (rho 5854 * seg5AccY239 rho)) =
          (-1) * (rho 5855 * seg5AccX239 rho) - rho 5854 * seg5AccY239 rho +
            (seg5AccY239 rho - seg5AccX239 rho * (-1)) * (rho 5854 + rho 5855) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5862 * (1 - rho 5860) = rho 5857 - rho 5858 - rho 5859 := ha5
        _ = (-1) * rho 5858 - rho 5859 + (seg5AccY239 rho - seg5AccX239 rho * (-1)) * (rho 5854 + rho 5855) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX240 rho = seg5AccX239 rho - Bool.toZMod bit * (seg5AccX239 rho - rho 5861) := by
      have hd : rho 5863 = Bool.toZMod bit * (rho 5861 - seg5AccX239 rho) := by
        rw [← hbit]
        unfold seg5AccX239
        linear_combination -r6168
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY240 rho = seg5AccY239 rho - Bool.toZMod bit * (seg5AccY239 rho - rho 5862) := by
      have hd : rho 5864 = Bool.toZMod bit * (rho 5862 - seg5AccY239 rho) := by
        rw [← hbit]
        unfold seg5AccY239
        linear_combination -r6169
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5854 * rho 5855 = rho 5865 := by linear_combination r6170
    have hd1 : rho 5854 * rho 5854 = rho 5866 := by linear_combination r6171
    have hd2 : rho 5855 * rho 5855 = rho 5867 := by linear_combination r6172
    have hd3 : rho 5868 * (rho 5855 * rho 5855 + rho 5854 * rho 5854 * (-1)) = 2 * (rho 5854 * rho 5855) := by
      rw [hd0, hd1, hd2]
      linear_combination r6173
    have hd4 : rho 5869 * (2 - (rho 5855 * rho 5855 + rho 5854 * rho 5854 * (-1))) = rho 5855 * rho 5855 - rho 5854 * rho 5854 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6174
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX239 rho : Seg5.F), (seg5AccY239 rho : Seg5.F)⟩
      ⟨(rho 5854 : Seg5.F), (rho 5855 : Seg5.F)⟩
      ⟨(rho 5861 : Seg5.F), (rho 5862 : Seg5.F)⟩
      ⟨(seg5AccX240 rho : Seg5.F), (seg5AccY240 rho : Seg5.F)⟩
      ⟨(rho 5868 : Seg5.F), (rho 5869 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung239

theorem seg5_rows240 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow6175 rho ∧ Seg5.relationRow6176 rho ∧ Seg5.relationRow6177 rho ∧ Seg5.relationRow6178 rho ∧ Seg5.relationRow6179 rho ∧ Seg5.relationRow6180 rho ∧ Seg5.relationRow6181 rho ∧ Seg5.relationRow6182 rho ∧ Seg5.relationRow6183 rho ∧ Seg5.relationRow6184 rho ∧ Seg5.relationRow6185 rho ∧ Seg5.relationRow6186 rho ∧ Seg5.relationRow6187 rho ∧ Seg5.relationRow6188 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p77, _, _
  ⟩
  unfold Seg5.relationPart77 at p77
  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6175, r6176, r6177, r6178, r6179, r6180, r6181, r6182, r6183, r6184, r6185, r6186, r6187, r6188, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r6175, r6176, r6177, r6178, r6179, r6180, r6181, r6182, r6183, r6184, r6185, r6186, r6187, r6188⟩

theorem seg5_rung240 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2655 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX240 rho : Seg5.F), (seg5AccY240 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5868 : Seg5.F), (rho 5869 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX240 rho : Seg5.F), (seg5AccY240 rho : Seg5.F)⟩
        ⟨(rho 5868 : Seg5.F), (rho 5869 : Seg5.F)⟩
        ⟨(seg5AccX241 rho : Seg5.F), (seg5AccY241 rho : Seg5.F)⟩
        ⟨(rho 5882 : Seg5.F), (rho 5883 : Seg5.F)⟩ := by
  obtain ⟨r6175, r6176, r6177, r6178, r6179, r6180, r6181, r6182, r6183, r6184, r6185, r6186, r6187, r6188⟩ := seg5_rows240 rho h
  unfold Seg5.relationRow6175 at r6175
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6175
  unfold Seg5.relationRow6176 at r6176
  unfold Seg5.relationRow6177 at r6177
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6177
  unfold Seg5.relationRow6178 at r6178
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6178
  unfold Seg5.relationRow6179 at r6179
  unfold Seg5.relationRow6180 at r6180
  unfold Seg5.relationRow6181 at r6181
  unfold Seg5.relationRow6182 at r6182
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6182
  unfold Seg5.relationRow6183 at r6183
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6183
  unfold Seg5.relationRow6184 at r6184
  unfold Seg5.relationRow6185 at r6185
  unfold Seg5.relationRow6186 at r6186
  unfold Seg5.relationRow6187 at r6187
  unfold Seg5.relationRow6188 at r6188
  have hrung240 (bit : Bool) (hbit : rho 2655 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX240 rho : Seg5.F), (seg5AccY240 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5868 : Seg5.F), (rho 5869 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX240 rho : Seg5.F), (seg5AccY240 rho : Seg5.F)⟩
        ⟨(rho 5868 : Seg5.F), (rho 5869 : Seg5.F)⟩
        ⟨(seg5AccX241 rho : Seg5.F), (seg5AccY241 rho : Seg5.F)⟩
        ⟨(rho 5882 : Seg5.F), (rho 5883 : Seg5.F)⟩ := by
    have hnextx : seg5AccX241 rho = seg5AccX240 rho + rho 5877 := by
      unfold seg5AccX241 seg5AccX240
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 90]
      ring
    have hnexty : seg5AccY241 rho = seg5AccY240 rho + rho 5878 := by
      unfold seg5AccY241 seg5AccY240
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 90]
      ring
    have hsum : seg5AccX240 rho + seg5AccY240 rho = rho 5870 := by
      unfold seg5AccX240 seg5AccY240
      linear_combination r6175
    have ha0 : (rho 5868 + rho 5869) * (seg5AccX240 rho + seg5AccY240 rho) = rho 5871 := by
      rw [hsum]
      linear_combination r6176
    have ha1 : rho 5869 * seg5AccX240 rho = rho 5872 := by
      unfold seg5AccX240
      linear_combination r6177
    have ha2 : rho 5868 * seg5AccY240 rho = rho 5873 := by
      unfold seg5AccY240
      linear_combination r6178
    have ha3 : 3021 * rho 5872 * rho 5873 = rho 5874 := by
      linear_combination r6179
    have ha4 : rho 5875 * (1 + rho 5874) = rho 5872 + rho 5873 := by
      linear_combination r6180
    have ha5 : rho 5876 * (1 - rho 5874) = rho 5871 - rho 5872 - rho 5873 := by
      linear_combination r6181
    have haddx :
        rho 5875 * (1 + 3021 * (rho 5869 * seg5AccX240 rho) * (rho 5868 * seg5AccY240 rho)) =
          rho 5869 * seg5AccX240 rho + rho 5868 * seg5AccY240 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5876 * (1 - 3021 * (rho 5869 * seg5AccX240 rho) * (rho 5868 * seg5AccY240 rho)) =
          (-1) * (rho 5869 * seg5AccX240 rho) - rho 5868 * seg5AccY240 rho +
            (seg5AccY240 rho - seg5AccX240 rho * (-1)) * (rho 5868 + rho 5869) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5876 * (1 - rho 5874) = rho 5871 - rho 5872 - rho 5873 := ha5
        _ = (-1) * rho 5872 - rho 5873 + (seg5AccY240 rho - seg5AccX240 rho * (-1)) * (rho 5868 + rho 5869) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX241 rho = seg5AccX240 rho - Bool.toZMod bit * (seg5AccX240 rho - rho 5875) := by
      have hd : rho 5877 = Bool.toZMod bit * (rho 5875 - seg5AccX240 rho) := by
        rw [← hbit]
        unfold seg5AccX240
        linear_combination -r6182
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY241 rho = seg5AccY240 rho - Bool.toZMod bit * (seg5AccY240 rho - rho 5876) := by
      have hd : rho 5878 = Bool.toZMod bit * (rho 5876 - seg5AccY240 rho) := by
        rw [← hbit]
        unfold seg5AccY240
        linear_combination -r6183
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5868 * rho 5869 = rho 5879 := by linear_combination r6184
    have hd1 : rho 5868 * rho 5868 = rho 5880 := by linear_combination r6185
    have hd2 : rho 5869 * rho 5869 = rho 5881 := by linear_combination r6186
    have hd3 : rho 5882 * (rho 5869 * rho 5869 + rho 5868 * rho 5868 * (-1)) = 2 * (rho 5868 * rho 5869) := by
      rw [hd0, hd1, hd2]
      linear_combination r6187
    have hd4 : rho 5883 * (2 - (rho 5869 * rho 5869 + rho 5868 * rho 5868 * (-1))) = rho 5869 * rho 5869 - rho 5868 * rho 5868 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6188
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX240 rho : Seg5.F), (seg5AccY240 rho : Seg5.F)⟩
      ⟨(rho 5868 : Seg5.F), (rho 5869 : Seg5.F)⟩
      ⟨(rho 5875 : Seg5.F), (rho 5876 : Seg5.F)⟩
      ⟨(seg5AccX241 rho : Seg5.F), (seg5AccY241 rho : Seg5.F)⟩
      ⟨(rho 5882 : Seg5.F), (rho 5883 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung240

theorem seg5_rows241 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow6189 rho ∧ Seg5.relationRow6190 rho ∧ Seg5.relationRow6191 rho ∧ Seg5.relationRow6192 rho ∧ Seg5.relationRow6193 rho ∧ Seg5.relationRow6194 rho ∧ Seg5.relationRow6195 rho ∧ Seg5.relationRow6196 rho ∧ Seg5.relationRow6197 rho ∧ Seg5.relationRow6198 rho ∧ Seg5.relationRow6199 rho ∧ Seg5.relationRow6200 rho ∧ Seg5.relationRow6201 rho ∧ Seg5.relationRow6202 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p77, _, _
  ⟩
  unfold Seg5.relationPart77 at p77
  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6189, r6190, r6191, r6192, r6193, r6194, r6195, r6196, r6197, r6198, r6199, r6200, r6201, r6202, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r6189, r6190, r6191, r6192, r6193, r6194, r6195, r6196, r6197, r6198, r6199, r6200, r6201, r6202⟩

theorem seg5_rung241 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2656 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX241 rho : Seg5.F), (seg5AccY241 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5882 : Seg5.F), (rho 5883 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX241 rho : Seg5.F), (seg5AccY241 rho : Seg5.F)⟩
        ⟨(rho 5882 : Seg5.F), (rho 5883 : Seg5.F)⟩
        ⟨(seg5AccX242 rho : Seg5.F), (seg5AccY242 rho : Seg5.F)⟩
        ⟨(rho 5896 : Seg5.F), (rho 5897 : Seg5.F)⟩ := by
  obtain ⟨r6189, r6190, r6191, r6192, r6193, r6194, r6195, r6196, r6197, r6198, r6199, r6200, r6201, r6202⟩ := seg5_rows241 rho h
  unfold Seg5.relationRow6189 at r6189
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6189
  unfold Seg5.relationRow6190 at r6190
  unfold Seg5.relationRow6191 at r6191
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6191
  unfold Seg5.relationRow6192 at r6192
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6192
  unfold Seg5.relationRow6193 at r6193
  unfold Seg5.relationRow6194 at r6194
  unfold Seg5.relationRow6195 at r6195
  unfold Seg5.relationRow6196 at r6196
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6196
  unfold Seg5.relationRow6197 at r6197
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6197
  unfold Seg5.relationRow6198 at r6198
  unfold Seg5.relationRow6199 at r6199
  unfold Seg5.relationRow6200 at r6200
  unfold Seg5.relationRow6201 at r6201
  unfold Seg5.relationRow6202 at r6202
  have hrung241 (bit : Bool) (hbit : rho 2656 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX241 rho : Seg5.F), (seg5AccY241 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5882 : Seg5.F), (rho 5883 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX241 rho : Seg5.F), (seg5AccY241 rho : Seg5.F)⟩
        ⟨(rho 5882 : Seg5.F), (rho 5883 : Seg5.F)⟩
        ⟨(seg5AccX242 rho : Seg5.F), (seg5AccY242 rho : Seg5.F)⟩
        ⟨(rho 5896 : Seg5.F), (rho 5897 : Seg5.F)⟩ := by
    have hnextx : seg5AccX242 rho = seg5AccX241 rho + rho 5891 := by
      unfold seg5AccX242 seg5AccX241
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 91]
      ring
    have hnexty : seg5AccY242 rho = seg5AccY241 rho + rho 5892 := by
      unfold seg5AccY242 seg5AccY241
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 91]
      ring
    have hsum : seg5AccX241 rho + seg5AccY241 rho = rho 5884 := by
      unfold seg5AccX241 seg5AccY241
      linear_combination r6189
    have ha0 : (rho 5882 + rho 5883) * (seg5AccX241 rho + seg5AccY241 rho) = rho 5885 := by
      rw [hsum]
      linear_combination r6190
    have ha1 : rho 5883 * seg5AccX241 rho = rho 5886 := by
      unfold seg5AccX241
      linear_combination r6191
    have ha2 : rho 5882 * seg5AccY241 rho = rho 5887 := by
      unfold seg5AccY241
      linear_combination r6192
    have ha3 : 3021 * rho 5886 * rho 5887 = rho 5888 := by
      linear_combination r6193
    have ha4 : rho 5889 * (1 + rho 5888) = rho 5886 + rho 5887 := by
      linear_combination r6194
    have ha5 : rho 5890 * (1 - rho 5888) = rho 5885 - rho 5886 - rho 5887 := by
      linear_combination r6195
    have haddx :
        rho 5889 * (1 + 3021 * (rho 5883 * seg5AccX241 rho) * (rho 5882 * seg5AccY241 rho)) =
          rho 5883 * seg5AccX241 rho + rho 5882 * seg5AccY241 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5890 * (1 - 3021 * (rho 5883 * seg5AccX241 rho) * (rho 5882 * seg5AccY241 rho)) =
          (-1) * (rho 5883 * seg5AccX241 rho) - rho 5882 * seg5AccY241 rho +
            (seg5AccY241 rho - seg5AccX241 rho * (-1)) * (rho 5882 + rho 5883) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5890 * (1 - rho 5888) = rho 5885 - rho 5886 - rho 5887 := ha5
        _ = (-1) * rho 5886 - rho 5887 + (seg5AccY241 rho - seg5AccX241 rho * (-1)) * (rho 5882 + rho 5883) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX242 rho = seg5AccX241 rho - Bool.toZMod bit * (seg5AccX241 rho - rho 5889) := by
      have hd : rho 5891 = Bool.toZMod bit * (rho 5889 - seg5AccX241 rho) := by
        rw [← hbit]
        unfold seg5AccX241
        linear_combination -r6196
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY242 rho = seg5AccY241 rho - Bool.toZMod bit * (seg5AccY241 rho - rho 5890) := by
      have hd : rho 5892 = Bool.toZMod bit * (rho 5890 - seg5AccY241 rho) := by
        rw [← hbit]
        unfold seg5AccY241
        linear_combination -r6197
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5882 * rho 5883 = rho 5893 := by linear_combination r6198
    have hd1 : rho 5882 * rho 5882 = rho 5894 := by linear_combination r6199
    have hd2 : rho 5883 * rho 5883 = rho 5895 := by linear_combination r6200
    have hd3 : rho 5896 * (rho 5883 * rho 5883 + rho 5882 * rho 5882 * (-1)) = 2 * (rho 5882 * rho 5883) := by
      rw [hd0, hd1, hd2]
      linear_combination r6201
    have hd4 : rho 5897 * (2 - (rho 5883 * rho 5883 + rho 5882 * rho 5882 * (-1))) = rho 5883 * rho 5883 - rho 5882 * rho 5882 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6202
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX241 rho : Seg5.F), (seg5AccY241 rho : Seg5.F)⟩
      ⟨(rho 5882 : Seg5.F), (rho 5883 : Seg5.F)⟩
      ⟨(rho 5889 : Seg5.F), (rho 5890 : Seg5.F)⟩
      ⟨(seg5AccX242 rho : Seg5.F), (seg5AccY242 rho : Seg5.F)⟩
      ⟨(rho 5896 : Seg5.F), (rho 5897 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung241

theorem seg5_hstep_c21 (rho : Nat -> Seg5.F) (h : Seg5.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (2415 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 231 ≤ i → i < 242 →
      EdwardsBridge.onCurve (seg5LadderAccState rho i) →
      EdwardsBridge.onCurve (seg5LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg5LadderAccState rho i) (seg5LadderCurState rho i)
        (seg5LadderAccState rho (i + 1)) (seg5LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg5_rung231 rho h bits[231]! (hbitAt 231 (by omega)) hacc hcur
  · exact seg5_rung232 rho h bits[232]! (hbitAt 232 (by omega)) hacc hcur
  · exact seg5_rung233 rho h bits[233]! (hbitAt 233 (by omega)) hacc hcur
  · exact seg5_rung234 rho h bits[234]! (hbitAt 234 (by omega)) hacc hcur
  · exact seg5_rung235 rho h bits[235]! (hbitAt 235 (by omega)) hacc hcur
  · exact seg5_rung236 rho h bits[236]! (hbitAt 236 (by omega)) hacc hcur
  · exact seg5_rung237 rho h bits[237]! (hbitAt 237 (by omega)) hacc hcur
  · exact seg5_rung238 rho h bits[238]! (hbitAt 238 (by omega)) hacc hcur
  · exact seg5_rung239 rho h bits[239]! (hbitAt 239 (by omega)) hacc hcur
  · exact seg5_rung240 rho h bits[240]! (hbitAt 240 (by omega)) hacc hcur
  · exact seg5_rung241 rho h bits[241]! (hbitAt 241 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
