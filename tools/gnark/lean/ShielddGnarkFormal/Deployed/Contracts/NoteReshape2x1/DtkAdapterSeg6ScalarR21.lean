import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg6_rows231 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow5797 rho ∧ Seg6.relationRow5798 rho ∧ Seg6.relationRow5799 rho ∧ Seg6.relationRow5800 rho ∧ Seg6.relationRow5801 rho ∧ Seg6.relationRow5802 rho ∧ Seg6.relationRow5803 rho ∧ Seg6.relationRow5804 rho ∧ Seg6.relationRow5805 rho ∧ Seg6.relationRow5806 rho ∧ Seg6.relationRow5807 rho ∧ Seg6.relationRow5808 rho ∧ Seg6.relationRow5809 rho ∧ Seg6.relationRow5810 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p72, _, _, _
  ⟩
  unfold Seg6.relationPart72 at p72
  rcases p72 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5797, r5798, r5799, r5800, r5801, r5802, r5803, r5804, r5805, r5806, r5807, r5808, r5809, r5810, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5797, r5798, r5799, r5800, r5801, r5802, r5803, r5804, r5805, r5806, r5807, r5808, r5809, r5810⟩

theorem seg6_rung231 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2121 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX231 rho : Seg6.F), (seg6AccY231 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 6194 : Seg6.F), (rho 6195 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX231 rho : Seg6.F), (seg6AccY231 rho : Seg6.F)⟩
        ⟨(rho 6194 : Seg6.F), (rho 6195 : Seg6.F)⟩
        ⟨(seg6AccX232 rho : Seg6.F), (seg6AccY232 rho : Seg6.F)⟩
        ⟨(rho 6208 : Seg6.F), (rho 6209 : Seg6.F)⟩ := by
  obtain ⟨r5797, r5798, r5799, r5800, r5801, r5802, r5803, r5804, r5805, r5806, r5807, r5808, r5809, r5810⟩ := seg6_rows231 rho h
  unfold Seg6.relationRow5797 Seg6.relationLc1243 at r5797
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5797
  unfold Seg6.relationRow5798 at r5798
  unfold Seg6.relationRow5799 Seg6.relationLc1244 at r5799
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5799
  unfold Seg6.relationRow5800 Seg6.relationLc1245 at r5800
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5800
  unfold Seg6.relationRow5801 at r5801
  unfold Seg6.relationRow5802 at r5802
  unfold Seg6.relationRow5803 at r5803
  unfold Seg6.relationRow5804 Seg6.relationLc1246 at r5804
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5804
  unfold Seg6.relationRow5805 Seg6.relationLc1247 at r5805
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5805
  unfold Seg6.relationRow5806 at r5806
  unfold Seg6.relationRow5807 at r5807
  unfold Seg6.relationRow5808 at r5808
  unfold Seg6.relationRow5809 at r5809
  unfold Seg6.relationRow5810 at r5810
  have hrung231 (bit : Bool) (hbit : rho 2121 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX231 rho : Seg6.F), (seg6AccY231 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 6194 : Seg6.F), (rho 6195 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX231 rho : Seg6.F), (seg6AccY231 rho : Seg6.F)⟩
        ⟨(rho 6194 : Seg6.F), (rho 6195 : Seg6.F)⟩
        ⟨(seg6AccX232 rho : Seg6.F), (seg6AccY232 rho : Seg6.F)⟩
        ⟨(rho 6208 : Seg6.F), (rho 6209 : Seg6.F)⟩ := by
    have hnextx : seg6AccX232 rho = seg6AccX231 rho + rho 6203 := by
      unfold seg6AccX232 seg6AccX231
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5069 14 81]
      ring
    have hnexty : seg6AccY232 rho = seg6AccY231 rho + rho 6204 := by
      unfold seg6AccY232 seg6AccY231
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5070 14 81]
      ring
    have hsum : seg6AccX231 rho + seg6AccY231 rho = rho 6196 := by
      unfold seg6AccX231 seg6AccY231
      linear_combination r5797
    have ha0 : (rho 6194 + rho 6195) * (seg6AccX231 rho + seg6AccY231 rho) = rho 6197 := by
      rw [hsum]
      linear_combination r5798
    have ha1 : rho 6195 * seg6AccX231 rho = rho 6198 := by
      unfold seg6AccX231
      linear_combination r5799
    have ha2 : rho 6194 * seg6AccY231 rho = rho 6199 := by
      unfold seg6AccY231
      linear_combination r5800
    have ha3 : 3021 * rho 6198 * rho 6199 = rho 6200 := by
      linear_combination r5801
    have ha4 : rho 6201 * (1 + rho 6200) = rho 6198 + rho 6199 := by
      linear_combination r5802
    have ha5 : rho 6202 * (1 - rho 6200) = rho 6197 - rho 6198 - rho 6199 := by
      linear_combination r5803
    have haddx :
        rho 6201 * (1 + 3021 * (rho 6195 * seg6AccX231 rho) * (rho 6194 * seg6AccY231 rho)) =
          rho 6195 * seg6AccX231 rho + rho 6194 * seg6AccY231 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 6202 * (1 - 3021 * (rho 6195 * seg6AccX231 rho) * (rho 6194 * seg6AccY231 rho)) =
          (-1) * (rho 6195 * seg6AccX231 rho) - rho 6194 * seg6AccY231 rho +
            (seg6AccY231 rho - seg6AccX231 rho * (-1)) * (rho 6194 + rho 6195) := by
      rw [ha1, ha2, ha3]
      calc
        rho 6202 * (1 - rho 6200) = rho 6197 - rho 6198 - rho 6199 := ha5
        _ = (-1) * rho 6198 - rho 6199 + (seg6AccY231 rho - seg6AccX231 rho * (-1)) * (rho 6194 + rho 6195) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX232 rho = seg6AccX231 rho - Bool.toZMod bit * (seg6AccX231 rho - rho 6201) := by
      have hd : rho 6203 = Bool.toZMod bit * (rho 6201 - seg6AccX231 rho) := by
        rw [← hbit]
        unfold seg6AccX231
        linear_combination -r5804
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY232 rho = seg6AccY231 rho - Bool.toZMod bit * (seg6AccY231 rho - rho 6202) := by
      have hd : rho 6204 = Bool.toZMod bit * (rho 6202 - seg6AccY231 rho) := by
        rw [← hbit]
        unfold seg6AccY231
        linear_combination -r5805
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 6194 * rho 6195 = rho 6205 := by linear_combination r5806
    have hd1 : rho 6194 * rho 6194 = rho 6206 := by linear_combination r5807
    have hd2 : rho 6195 * rho 6195 = rho 6207 := by linear_combination r5808
    have hd3 : rho 6208 * (rho 6195 * rho 6195 + rho 6194 * rho 6194 * (-1)) = 2 * (rho 6194 * rho 6195) := by
      rw [hd0, hd1, hd2]
      linear_combination r5809
    have hd4 : rho 6209 * (2 - (rho 6195 * rho 6195 + rho 6194 * rho 6194 * (-1))) = rho 6195 * rho 6195 - rho 6194 * rho 6194 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5810
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX231 rho : Seg6.F), (seg6AccY231 rho : Seg6.F)⟩
      ⟨(rho 6194 : Seg6.F), (rho 6195 : Seg6.F)⟩
      ⟨(rho 6201 : Seg6.F), (rho 6202 : Seg6.F)⟩
      ⟨(seg6AccX232 rho : Seg6.F), (seg6AccY232 rho : Seg6.F)⟩
      ⟨(rho 6208 : Seg6.F), (rho 6209 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung231

theorem seg6_rows232 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow5811 rho ∧ Seg6.relationRow5812 rho ∧ Seg6.relationRow5813 rho ∧ Seg6.relationRow5814 rho ∧ Seg6.relationRow5815 rho ∧ Seg6.relationRow5816 rho ∧ Seg6.relationRow5817 rho ∧ Seg6.relationRow5818 rho ∧ Seg6.relationRow5819 rho ∧ Seg6.relationRow5820 rho ∧ Seg6.relationRow5821 rho ∧ Seg6.relationRow5822 rho ∧ Seg6.relationRow5823 rho ∧ Seg6.relationRow5824 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p72, _, _, _
  ⟩
  unfold Seg6.relationPart72 at p72
  rcases p72 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5811, r5812, r5813, r5814, r5815, r5816, r5817, r5818, r5819, r5820, r5821, r5822, r5823, r5824, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5811, r5812, r5813, r5814, r5815, r5816, r5817, r5818, r5819, r5820, r5821, r5822, r5823, r5824⟩

theorem seg6_rung232 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2122 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX232 rho : Seg6.F), (seg6AccY232 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 6208 : Seg6.F), (rho 6209 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX232 rho : Seg6.F), (seg6AccY232 rho : Seg6.F)⟩
        ⟨(rho 6208 : Seg6.F), (rho 6209 : Seg6.F)⟩
        ⟨(seg6AccX233 rho : Seg6.F), (seg6AccY233 rho : Seg6.F)⟩
        ⟨(rho 6222 : Seg6.F), (rho 6223 : Seg6.F)⟩ := by
  obtain ⟨r5811, r5812, r5813, r5814, r5815, r5816, r5817, r5818, r5819, r5820, r5821, r5822, r5823, r5824⟩ := seg6_rows232 rho h
  unfold Seg6.relationRow5811 Seg6.relationLc1248 at r5811
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5811
  unfold Seg6.relationRow5812 at r5812
  unfold Seg6.relationRow5813 Seg6.relationLc1249 at r5813
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5813
  unfold Seg6.relationRow5814 Seg6.relationLc1250 at r5814
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5814
  unfold Seg6.relationRow5815 at r5815
  unfold Seg6.relationRow5816 at r5816
  unfold Seg6.relationRow5817 at r5817
  unfold Seg6.relationRow5818 Seg6.relationLc1251 at r5818
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5818
  unfold Seg6.relationRow5819 Seg6.relationLc1252 at r5819
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5819
  unfold Seg6.relationRow5820 at r5820
  unfold Seg6.relationRow5821 at r5821
  unfold Seg6.relationRow5822 at r5822
  unfold Seg6.relationRow5823 at r5823
  unfold Seg6.relationRow5824 at r5824
  have hrung232 (bit : Bool) (hbit : rho 2122 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX232 rho : Seg6.F), (seg6AccY232 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 6208 : Seg6.F), (rho 6209 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX232 rho : Seg6.F), (seg6AccY232 rho : Seg6.F)⟩
        ⟨(rho 6208 : Seg6.F), (rho 6209 : Seg6.F)⟩
        ⟨(seg6AccX233 rho : Seg6.F), (seg6AccY233 rho : Seg6.F)⟩
        ⟨(rho 6222 : Seg6.F), (rho 6223 : Seg6.F)⟩ := by
    have hnextx : seg6AccX233 rho = seg6AccX232 rho + rho 6217 := by
      unfold seg6AccX233 seg6AccX232
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5069 14 82]
      ring
    have hnexty : seg6AccY233 rho = seg6AccY232 rho + rho 6218 := by
      unfold seg6AccY233 seg6AccY232
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5070 14 82]
      ring
    have hsum : seg6AccX232 rho + seg6AccY232 rho = rho 6210 := by
      unfold seg6AccX232 seg6AccY232
      linear_combination r5811
    have ha0 : (rho 6208 + rho 6209) * (seg6AccX232 rho + seg6AccY232 rho) = rho 6211 := by
      rw [hsum]
      linear_combination r5812
    have ha1 : rho 6209 * seg6AccX232 rho = rho 6212 := by
      unfold seg6AccX232
      linear_combination r5813
    have ha2 : rho 6208 * seg6AccY232 rho = rho 6213 := by
      unfold seg6AccY232
      linear_combination r5814
    have ha3 : 3021 * rho 6212 * rho 6213 = rho 6214 := by
      linear_combination r5815
    have ha4 : rho 6215 * (1 + rho 6214) = rho 6212 + rho 6213 := by
      linear_combination r5816
    have ha5 : rho 6216 * (1 - rho 6214) = rho 6211 - rho 6212 - rho 6213 := by
      linear_combination r5817
    have haddx :
        rho 6215 * (1 + 3021 * (rho 6209 * seg6AccX232 rho) * (rho 6208 * seg6AccY232 rho)) =
          rho 6209 * seg6AccX232 rho + rho 6208 * seg6AccY232 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 6216 * (1 - 3021 * (rho 6209 * seg6AccX232 rho) * (rho 6208 * seg6AccY232 rho)) =
          (-1) * (rho 6209 * seg6AccX232 rho) - rho 6208 * seg6AccY232 rho +
            (seg6AccY232 rho - seg6AccX232 rho * (-1)) * (rho 6208 + rho 6209) := by
      rw [ha1, ha2, ha3]
      calc
        rho 6216 * (1 - rho 6214) = rho 6211 - rho 6212 - rho 6213 := ha5
        _ = (-1) * rho 6212 - rho 6213 + (seg6AccY232 rho - seg6AccX232 rho * (-1)) * (rho 6208 + rho 6209) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX233 rho = seg6AccX232 rho - Bool.toZMod bit * (seg6AccX232 rho - rho 6215) := by
      have hd : rho 6217 = Bool.toZMod bit * (rho 6215 - seg6AccX232 rho) := by
        rw [← hbit]
        unfold seg6AccX232
        linear_combination -r5818
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY233 rho = seg6AccY232 rho - Bool.toZMod bit * (seg6AccY232 rho - rho 6216) := by
      have hd : rho 6218 = Bool.toZMod bit * (rho 6216 - seg6AccY232 rho) := by
        rw [← hbit]
        unfold seg6AccY232
        linear_combination -r5819
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 6208 * rho 6209 = rho 6219 := by linear_combination r5820
    have hd1 : rho 6208 * rho 6208 = rho 6220 := by linear_combination r5821
    have hd2 : rho 6209 * rho 6209 = rho 6221 := by linear_combination r5822
    have hd3 : rho 6222 * (rho 6209 * rho 6209 + rho 6208 * rho 6208 * (-1)) = 2 * (rho 6208 * rho 6209) := by
      rw [hd0, hd1, hd2]
      linear_combination r5823
    have hd4 : rho 6223 * (2 - (rho 6209 * rho 6209 + rho 6208 * rho 6208 * (-1))) = rho 6209 * rho 6209 - rho 6208 * rho 6208 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5824
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX232 rho : Seg6.F), (seg6AccY232 rho : Seg6.F)⟩
      ⟨(rho 6208 : Seg6.F), (rho 6209 : Seg6.F)⟩
      ⟨(rho 6215 : Seg6.F), (rho 6216 : Seg6.F)⟩
      ⟨(seg6AccX233 rho : Seg6.F), (seg6AccY233 rho : Seg6.F)⟩
      ⟨(rho 6222 : Seg6.F), (rho 6223 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung232

theorem seg6_rows233 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow5825 rho ∧ Seg6.relationRow5826 rho ∧ Seg6.relationRow5827 rho ∧ Seg6.relationRow5828 rho ∧ Seg6.relationRow5829 rho ∧ Seg6.relationRow5830 rho ∧ Seg6.relationRow5831 rho ∧ Seg6.relationRow5832 rho ∧ Seg6.relationRow5833 rho ∧ Seg6.relationRow5834 rho ∧ Seg6.relationRow5835 rho ∧ Seg6.relationRow5836 rho ∧ Seg6.relationRow5837 rho ∧ Seg6.relationRow5838 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p72, _, _, _
  ⟩
  unfold Seg6.relationPart72 at p72
  rcases p72 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5825, r5826, r5827, r5828, r5829, r5830, r5831, r5832, r5833, r5834, r5835, r5836, r5837, r5838, _⟩
  exact ⟨r5825, r5826, r5827, r5828, r5829, r5830, r5831, r5832, r5833, r5834, r5835, r5836, r5837, r5838⟩

theorem seg6_rung233 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2123 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX233 rho : Seg6.F), (seg6AccY233 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 6222 : Seg6.F), (rho 6223 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX233 rho : Seg6.F), (seg6AccY233 rho : Seg6.F)⟩
        ⟨(rho 6222 : Seg6.F), (rho 6223 : Seg6.F)⟩
        ⟨(seg6AccX234 rho : Seg6.F), (seg6AccY234 rho : Seg6.F)⟩
        ⟨(rho 6236 : Seg6.F), (rho 6237 : Seg6.F)⟩ := by
  obtain ⟨r5825, r5826, r5827, r5828, r5829, r5830, r5831, r5832, r5833, r5834, r5835, r5836, r5837, r5838⟩ := seg6_rows233 rho h
  unfold Seg6.relationRow5825 Seg6.relationLc1253 at r5825
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5825
  unfold Seg6.relationRow5826 at r5826
  unfold Seg6.relationRow5827 Seg6.relationLc1254 at r5827
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5827
  unfold Seg6.relationRow5828 Seg6.relationLc1255 at r5828
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5828
  unfold Seg6.relationRow5829 at r5829
  unfold Seg6.relationRow5830 at r5830
  unfold Seg6.relationRow5831 at r5831
  unfold Seg6.relationRow5832 Seg6.relationLc1256 at r5832
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5832
  unfold Seg6.relationRow5833 Seg6.relationLc1257 at r5833
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5833
  unfold Seg6.relationRow5834 at r5834
  unfold Seg6.relationRow5835 at r5835
  unfold Seg6.relationRow5836 at r5836
  unfold Seg6.relationRow5837 at r5837
  unfold Seg6.relationRow5838 at r5838
  have hrung233 (bit : Bool) (hbit : rho 2123 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX233 rho : Seg6.F), (seg6AccY233 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 6222 : Seg6.F), (rho 6223 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX233 rho : Seg6.F), (seg6AccY233 rho : Seg6.F)⟩
        ⟨(rho 6222 : Seg6.F), (rho 6223 : Seg6.F)⟩
        ⟨(seg6AccX234 rho : Seg6.F), (seg6AccY234 rho : Seg6.F)⟩
        ⟨(rho 6236 : Seg6.F), (rho 6237 : Seg6.F)⟩ := by
    have hnextx : seg6AccX234 rho = seg6AccX233 rho + rho 6231 := by
      unfold seg6AccX234 seg6AccX233
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5069 14 83]
      ring
    have hnexty : seg6AccY234 rho = seg6AccY233 rho + rho 6232 := by
      unfold seg6AccY234 seg6AccY233
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5070 14 83]
      ring
    have hsum : seg6AccX233 rho + seg6AccY233 rho = rho 6224 := by
      unfold seg6AccX233 seg6AccY233
      linear_combination r5825
    have ha0 : (rho 6222 + rho 6223) * (seg6AccX233 rho + seg6AccY233 rho) = rho 6225 := by
      rw [hsum]
      linear_combination r5826
    have ha1 : rho 6223 * seg6AccX233 rho = rho 6226 := by
      unfold seg6AccX233
      linear_combination r5827
    have ha2 : rho 6222 * seg6AccY233 rho = rho 6227 := by
      unfold seg6AccY233
      linear_combination r5828
    have ha3 : 3021 * rho 6226 * rho 6227 = rho 6228 := by
      linear_combination r5829
    have ha4 : rho 6229 * (1 + rho 6228) = rho 6226 + rho 6227 := by
      linear_combination r5830
    have ha5 : rho 6230 * (1 - rho 6228) = rho 6225 - rho 6226 - rho 6227 := by
      linear_combination r5831
    have haddx :
        rho 6229 * (1 + 3021 * (rho 6223 * seg6AccX233 rho) * (rho 6222 * seg6AccY233 rho)) =
          rho 6223 * seg6AccX233 rho + rho 6222 * seg6AccY233 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 6230 * (1 - 3021 * (rho 6223 * seg6AccX233 rho) * (rho 6222 * seg6AccY233 rho)) =
          (-1) * (rho 6223 * seg6AccX233 rho) - rho 6222 * seg6AccY233 rho +
            (seg6AccY233 rho - seg6AccX233 rho * (-1)) * (rho 6222 + rho 6223) := by
      rw [ha1, ha2, ha3]
      calc
        rho 6230 * (1 - rho 6228) = rho 6225 - rho 6226 - rho 6227 := ha5
        _ = (-1) * rho 6226 - rho 6227 + (seg6AccY233 rho - seg6AccX233 rho * (-1)) * (rho 6222 + rho 6223) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX234 rho = seg6AccX233 rho - Bool.toZMod bit * (seg6AccX233 rho - rho 6229) := by
      have hd : rho 6231 = Bool.toZMod bit * (rho 6229 - seg6AccX233 rho) := by
        rw [← hbit]
        unfold seg6AccX233
        linear_combination -r5832
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY234 rho = seg6AccY233 rho - Bool.toZMod bit * (seg6AccY233 rho - rho 6230) := by
      have hd : rho 6232 = Bool.toZMod bit * (rho 6230 - seg6AccY233 rho) := by
        rw [← hbit]
        unfold seg6AccY233
        linear_combination -r5833
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 6222 * rho 6223 = rho 6233 := by linear_combination r5834
    have hd1 : rho 6222 * rho 6222 = rho 6234 := by linear_combination r5835
    have hd2 : rho 6223 * rho 6223 = rho 6235 := by linear_combination r5836
    have hd3 : rho 6236 * (rho 6223 * rho 6223 + rho 6222 * rho 6222 * (-1)) = 2 * (rho 6222 * rho 6223) := by
      rw [hd0, hd1, hd2]
      linear_combination r5837
    have hd4 : rho 6237 * (2 - (rho 6223 * rho 6223 + rho 6222 * rho 6222 * (-1))) = rho 6223 * rho 6223 - rho 6222 * rho 6222 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5838
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX233 rho : Seg6.F), (seg6AccY233 rho : Seg6.F)⟩
      ⟨(rho 6222 : Seg6.F), (rho 6223 : Seg6.F)⟩
      ⟨(rho 6229 : Seg6.F), (rho 6230 : Seg6.F)⟩
      ⟨(seg6AccX234 rho : Seg6.F), (seg6AccY234 rho : Seg6.F)⟩
      ⟨(rho 6236 : Seg6.F), (rho 6237 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung233

theorem seg6_rows234 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow5839 rho ∧ Seg6.relationRow5840 rho ∧ Seg6.relationRow5841 rho ∧ Seg6.relationRow5842 rho ∧ Seg6.relationRow5843 rho ∧ Seg6.relationRow5844 rho ∧ Seg6.relationRow5845 rho ∧ Seg6.relationRow5846 rho ∧ Seg6.relationRow5847 rho ∧ Seg6.relationRow5848 rho ∧ Seg6.relationRow5849 rho ∧ Seg6.relationRow5850 rho ∧ Seg6.relationRow5851 rho ∧ Seg6.relationRow5852 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p72, p73, _, _
  ⟩
  unfold Seg6.relationPart72 at p72
  rcases p72 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5839⟩
  unfold Seg6.relationPart73 at p73
  rcases p73 with ⟨r5840, r5841, r5842, r5843, r5844, r5845, r5846, r5847, r5848, r5849, r5850, r5851, r5852, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5839, r5840, r5841, r5842, r5843, r5844, r5845, r5846, r5847, r5848, r5849, r5850, r5851, r5852⟩

theorem seg6_rung234 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2124 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX234 rho : Seg6.F), (seg6AccY234 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 6236 : Seg6.F), (rho 6237 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX234 rho : Seg6.F), (seg6AccY234 rho : Seg6.F)⟩
        ⟨(rho 6236 : Seg6.F), (rho 6237 : Seg6.F)⟩
        ⟨(seg6AccX235 rho : Seg6.F), (seg6AccY235 rho : Seg6.F)⟩
        ⟨(rho 6250 : Seg6.F), (rho 6251 : Seg6.F)⟩ := by
  obtain ⟨r5839, r5840, r5841, r5842, r5843, r5844, r5845, r5846, r5847, r5848, r5849, r5850, r5851, r5852⟩ := seg6_rows234 rho h
  unfold Seg6.relationRow5839 Seg6.relationLc1258 at r5839
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5839
  unfold Seg6.relationRow5840 at r5840
  unfold Seg6.relationRow5841 Seg6.relationLc1259 at r5841
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5841
  unfold Seg6.relationRow5842 Seg6.relationLc1260 at r5842
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5842
  unfold Seg6.relationRow5843 at r5843
  unfold Seg6.relationRow5844 at r5844
  unfold Seg6.relationRow5845 at r5845
  unfold Seg6.relationRow5846 Seg6.relationLc1261 at r5846
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5846
  unfold Seg6.relationRow5847 Seg6.relationLc1262 at r5847
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5847
  unfold Seg6.relationRow5848 at r5848
  unfold Seg6.relationRow5849 at r5849
  unfold Seg6.relationRow5850 at r5850
  unfold Seg6.relationRow5851 at r5851
  unfold Seg6.relationRow5852 at r5852
  have hrung234 (bit : Bool) (hbit : rho 2124 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX234 rho : Seg6.F), (seg6AccY234 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 6236 : Seg6.F), (rho 6237 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX234 rho : Seg6.F), (seg6AccY234 rho : Seg6.F)⟩
        ⟨(rho 6236 : Seg6.F), (rho 6237 : Seg6.F)⟩
        ⟨(seg6AccX235 rho : Seg6.F), (seg6AccY235 rho : Seg6.F)⟩
        ⟨(rho 6250 : Seg6.F), (rho 6251 : Seg6.F)⟩ := by
    have hnextx : seg6AccX235 rho = seg6AccX234 rho + rho 6245 := by
      unfold seg6AccX235 seg6AccX234
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5069 14 84]
      ring
    have hnexty : seg6AccY235 rho = seg6AccY234 rho + rho 6246 := by
      unfold seg6AccY235 seg6AccY234
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5070 14 84]
      ring
    have hsum : seg6AccX234 rho + seg6AccY234 rho = rho 6238 := by
      unfold seg6AccX234 seg6AccY234
      linear_combination r5839
    have ha0 : (rho 6236 + rho 6237) * (seg6AccX234 rho + seg6AccY234 rho) = rho 6239 := by
      rw [hsum]
      linear_combination r5840
    have ha1 : rho 6237 * seg6AccX234 rho = rho 6240 := by
      unfold seg6AccX234
      linear_combination r5841
    have ha2 : rho 6236 * seg6AccY234 rho = rho 6241 := by
      unfold seg6AccY234
      linear_combination r5842
    have ha3 : 3021 * rho 6240 * rho 6241 = rho 6242 := by
      linear_combination r5843
    have ha4 : rho 6243 * (1 + rho 6242) = rho 6240 + rho 6241 := by
      linear_combination r5844
    have ha5 : rho 6244 * (1 - rho 6242) = rho 6239 - rho 6240 - rho 6241 := by
      linear_combination r5845
    have haddx :
        rho 6243 * (1 + 3021 * (rho 6237 * seg6AccX234 rho) * (rho 6236 * seg6AccY234 rho)) =
          rho 6237 * seg6AccX234 rho + rho 6236 * seg6AccY234 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 6244 * (1 - 3021 * (rho 6237 * seg6AccX234 rho) * (rho 6236 * seg6AccY234 rho)) =
          (-1) * (rho 6237 * seg6AccX234 rho) - rho 6236 * seg6AccY234 rho +
            (seg6AccY234 rho - seg6AccX234 rho * (-1)) * (rho 6236 + rho 6237) := by
      rw [ha1, ha2, ha3]
      calc
        rho 6244 * (1 - rho 6242) = rho 6239 - rho 6240 - rho 6241 := ha5
        _ = (-1) * rho 6240 - rho 6241 + (seg6AccY234 rho - seg6AccX234 rho * (-1)) * (rho 6236 + rho 6237) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX235 rho = seg6AccX234 rho - Bool.toZMod bit * (seg6AccX234 rho - rho 6243) := by
      have hd : rho 6245 = Bool.toZMod bit * (rho 6243 - seg6AccX234 rho) := by
        rw [← hbit]
        unfold seg6AccX234
        linear_combination -r5846
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY235 rho = seg6AccY234 rho - Bool.toZMod bit * (seg6AccY234 rho - rho 6244) := by
      have hd : rho 6246 = Bool.toZMod bit * (rho 6244 - seg6AccY234 rho) := by
        rw [← hbit]
        unfold seg6AccY234
        linear_combination -r5847
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 6236 * rho 6237 = rho 6247 := by linear_combination r5848
    have hd1 : rho 6236 * rho 6236 = rho 6248 := by linear_combination r5849
    have hd2 : rho 6237 * rho 6237 = rho 6249 := by linear_combination r5850
    have hd3 : rho 6250 * (rho 6237 * rho 6237 + rho 6236 * rho 6236 * (-1)) = 2 * (rho 6236 * rho 6237) := by
      rw [hd0, hd1, hd2]
      linear_combination r5851
    have hd4 : rho 6251 * (2 - (rho 6237 * rho 6237 + rho 6236 * rho 6236 * (-1))) = rho 6237 * rho 6237 - rho 6236 * rho 6236 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5852
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX234 rho : Seg6.F), (seg6AccY234 rho : Seg6.F)⟩
      ⟨(rho 6236 : Seg6.F), (rho 6237 : Seg6.F)⟩
      ⟨(rho 6243 : Seg6.F), (rho 6244 : Seg6.F)⟩
      ⟨(seg6AccX235 rho : Seg6.F), (seg6AccY235 rho : Seg6.F)⟩
      ⟨(rho 6250 : Seg6.F), (rho 6251 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung234

theorem seg6_rows235 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow5853 rho ∧ Seg6.relationRow5854 rho ∧ Seg6.relationRow5855 rho ∧ Seg6.relationRow5856 rho ∧ Seg6.relationRow5857 rho ∧ Seg6.relationRow5858 rho ∧ Seg6.relationRow5859 rho ∧ Seg6.relationRow5860 rho ∧ Seg6.relationRow5861 rho ∧ Seg6.relationRow5862 rho ∧ Seg6.relationRow5863 rho ∧ Seg6.relationRow5864 rho ∧ Seg6.relationRow5865 rho ∧ Seg6.relationRow5866 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p73, _, _
  ⟩
  unfold Seg6.relationPart73 at p73
  rcases p73 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, r5853, r5854, r5855, r5856, r5857, r5858, r5859, r5860, r5861, r5862, r5863, r5864, r5865, r5866, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5853, r5854, r5855, r5856, r5857, r5858, r5859, r5860, r5861, r5862, r5863, r5864, r5865, r5866⟩

theorem seg6_rung235 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2125 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX235 rho : Seg6.F), (seg6AccY235 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 6250 : Seg6.F), (rho 6251 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX235 rho : Seg6.F), (seg6AccY235 rho : Seg6.F)⟩
        ⟨(rho 6250 : Seg6.F), (rho 6251 : Seg6.F)⟩
        ⟨(seg6AccX236 rho : Seg6.F), (seg6AccY236 rho : Seg6.F)⟩
        ⟨(rho 6264 : Seg6.F), (rho 6265 : Seg6.F)⟩ := by
  obtain ⟨r5853, r5854, r5855, r5856, r5857, r5858, r5859, r5860, r5861, r5862, r5863, r5864, r5865, r5866⟩ := seg6_rows235 rho h
  unfold Seg6.relationRow5853 Seg6.relationLc1263 at r5853
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5853
  unfold Seg6.relationRow5854 at r5854
  unfold Seg6.relationRow5855 Seg6.relationLc1264 at r5855
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5855
  unfold Seg6.relationRow5856 Seg6.relationLc1265 at r5856
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5856
  unfold Seg6.relationRow5857 at r5857
  unfold Seg6.relationRow5858 at r5858
  unfold Seg6.relationRow5859 at r5859
  unfold Seg6.relationRow5860 Seg6.relationLc1266 at r5860
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5860
  unfold Seg6.relationRow5861 Seg6.relationLc1267 at r5861
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5861
  unfold Seg6.relationRow5862 at r5862
  unfold Seg6.relationRow5863 at r5863
  unfold Seg6.relationRow5864 at r5864
  unfold Seg6.relationRow5865 at r5865
  unfold Seg6.relationRow5866 at r5866
  have hrung235 (bit : Bool) (hbit : rho 2125 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX235 rho : Seg6.F), (seg6AccY235 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 6250 : Seg6.F), (rho 6251 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX235 rho : Seg6.F), (seg6AccY235 rho : Seg6.F)⟩
        ⟨(rho 6250 : Seg6.F), (rho 6251 : Seg6.F)⟩
        ⟨(seg6AccX236 rho : Seg6.F), (seg6AccY236 rho : Seg6.F)⟩
        ⟨(rho 6264 : Seg6.F), (rho 6265 : Seg6.F)⟩ := by
    have hnextx : seg6AccX236 rho = seg6AccX235 rho + rho 6259 := by
      unfold seg6AccX236 seg6AccX235
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5069 14 85]
      ring
    have hnexty : seg6AccY236 rho = seg6AccY235 rho + rho 6260 := by
      unfold seg6AccY236 seg6AccY235
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5070 14 85]
      ring
    have hsum : seg6AccX235 rho + seg6AccY235 rho = rho 6252 := by
      unfold seg6AccX235 seg6AccY235
      linear_combination r5853
    have ha0 : (rho 6250 + rho 6251) * (seg6AccX235 rho + seg6AccY235 rho) = rho 6253 := by
      rw [hsum]
      linear_combination r5854
    have ha1 : rho 6251 * seg6AccX235 rho = rho 6254 := by
      unfold seg6AccX235
      linear_combination r5855
    have ha2 : rho 6250 * seg6AccY235 rho = rho 6255 := by
      unfold seg6AccY235
      linear_combination r5856
    have ha3 : 3021 * rho 6254 * rho 6255 = rho 6256 := by
      linear_combination r5857
    have ha4 : rho 6257 * (1 + rho 6256) = rho 6254 + rho 6255 := by
      linear_combination r5858
    have ha5 : rho 6258 * (1 - rho 6256) = rho 6253 - rho 6254 - rho 6255 := by
      linear_combination r5859
    have haddx :
        rho 6257 * (1 + 3021 * (rho 6251 * seg6AccX235 rho) * (rho 6250 * seg6AccY235 rho)) =
          rho 6251 * seg6AccX235 rho + rho 6250 * seg6AccY235 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 6258 * (1 - 3021 * (rho 6251 * seg6AccX235 rho) * (rho 6250 * seg6AccY235 rho)) =
          (-1) * (rho 6251 * seg6AccX235 rho) - rho 6250 * seg6AccY235 rho +
            (seg6AccY235 rho - seg6AccX235 rho * (-1)) * (rho 6250 + rho 6251) := by
      rw [ha1, ha2, ha3]
      calc
        rho 6258 * (1 - rho 6256) = rho 6253 - rho 6254 - rho 6255 := ha5
        _ = (-1) * rho 6254 - rho 6255 + (seg6AccY235 rho - seg6AccX235 rho * (-1)) * (rho 6250 + rho 6251) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX236 rho = seg6AccX235 rho - Bool.toZMod bit * (seg6AccX235 rho - rho 6257) := by
      have hd : rho 6259 = Bool.toZMod bit * (rho 6257 - seg6AccX235 rho) := by
        rw [← hbit]
        unfold seg6AccX235
        linear_combination -r5860
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY236 rho = seg6AccY235 rho - Bool.toZMod bit * (seg6AccY235 rho - rho 6258) := by
      have hd : rho 6260 = Bool.toZMod bit * (rho 6258 - seg6AccY235 rho) := by
        rw [← hbit]
        unfold seg6AccY235
        linear_combination -r5861
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 6250 * rho 6251 = rho 6261 := by linear_combination r5862
    have hd1 : rho 6250 * rho 6250 = rho 6262 := by linear_combination r5863
    have hd2 : rho 6251 * rho 6251 = rho 6263 := by linear_combination r5864
    have hd3 : rho 6264 * (rho 6251 * rho 6251 + rho 6250 * rho 6250 * (-1)) = 2 * (rho 6250 * rho 6251) := by
      rw [hd0, hd1, hd2]
      linear_combination r5865
    have hd4 : rho 6265 * (2 - (rho 6251 * rho 6251 + rho 6250 * rho 6250 * (-1))) = rho 6251 * rho 6251 - rho 6250 * rho 6250 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5866
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX235 rho : Seg6.F), (seg6AccY235 rho : Seg6.F)⟩
      ⟨(rho 6250 : Seg6.F), (rho 6251 : Seg6.F)⟩
      ⟨(rho 6257 : Seg6.F), (rho 6258 : Seg6.F)⟩
      ⟨(seg6AccX236 rho : Seg6.F), (seg6AccY236 rho : Seg6.F)⟩
      ⟨(rho 6264 : Seg6.F), (rho 6265 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung235

theorem seg6_rows236 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow5867 rho ∧ Seg6.relationRow5868 rho ∧ Seg6.relationRow5869 rho ∧ Seg6.relationRow5870 rho ∧ Seg6.relationRow5871 rho ∧ Seg6.relationRow5872 rho ∧ Seg6.relationRow5873 rho ∧ Seg6.relationRow5874 rho ∧ Seg6.relationRow5875 rho ∧ Seg6.relationRow5876 rho ∧ Seg6.relationRow5877 rho ∧ Seg6.relationRow5878 rho ∧ Seg6.relationRow5879 rho ∧ Seg6.relationRow5880 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p73, _, _
  ⟩
  unfold Seg6.relationPart73 at p73
  rcases p73 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5867, r5868, r5869, r5870, r5871, r5872, r5873, r5874, r5875, r5876, r5877, r5878, r5879, r5880, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5867, r5868, r5869, r5870, r5871, r5872, r5873, r5874, r5875, r5876, r5877, r5878, r5879, r5880⟩

theorem seg6_rung236 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2126 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX236 rho : Seg6.F), (seg6AccY236 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 6264 : Seg6.F), (rho 6265 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX236 rho : Seg6.F), (seg6AccY236 rho : Seg6.F)⟩
        ⟨(rho 6264 : Seg6.F), (rho 6265 : Seg6.F)⟩
        ⟨(seg6AccX237 rho : Seg6.F), (seg6AccY237 rho : Seg6.F)⟩
        ⟨(rho 6278 : Seg6.F), (rho 6279 : Seg6.F)⟩ := by
  obtain ⟨r5867, r5868, r5869, r5870, r5871, r5872, r5873, r5874, r5875, r5876, r5877, r5878, r5879, r5880⟩ := seg6_rows236 rho h
  unfold Seg6.relationRow5867 Seg6.relationLc1268 at r5867
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5867
  unfold Seg6.relationRow5868 at r5868
  unfold Seg6.relationRow5869 Seg6.relationLc1269 at r5869
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5869
  unfold Seg6.relationRow5870 Seg6.relationLc1270 at r5870
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5870
  unfold Seg6.relationRow5871 at r5871
  unfold Seg6.relationRow5872 at r5872
  unfold Seg6.relationRow5873 at r5873
  unfold Seg6.relationRow5874 Seg6.relationLc1271 at r5874
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5874
  unfold Seg6.relationRow5875 Seg6.relationLc1272 at r5875
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5875
  unfold Seg6.relationRow5876 at r5876
  unfold Seg6.relationRow5877 at r5877
  unfold Seg6.relationRow5878 at r5878
  unfold Seg6.relationRow5879 at r5879
  unfold Seg6.relationRow5880 at r5880
  have hrung236 (bit : Bool) (hbit : rho 2126 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX236 rho : Seg6.F), (seg6AccY236 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 6264 : Seg6.F), (rho 6265 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX236 rho : Seg6.F), (seg6AccY236 rho : Seg6.F)⟩
        ⟨(rho 6264 : Seg6.F), (rho 6265 : Seg6.F)⟩
        ⟨(seg6AccX237 rho : Seg6.F), (seg6AccY237 rho : Seg6.F)⟩
        ⟨(rho 6278 : Seg6.F), (rho 6279 : Seg6.F)⟩ := by
    have hnextx : seg6AccX237 rho = seg6AccX236 rho + rho 6273 := by
      unfold seg6AccX237 seg6AccX236
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5069 14 86]
      ring
    have hnexty : seg6AccY237 rho = seg6AccY236 rho + rho 6274 := by
      unfold seg6AccY237 seg6AccY236
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5070 14 86]
      ring
    have hsum : seg6AccX236 rho + seg6AccY236 rho = rho 6266 := by
      unfold seg6AccX236 seg6AccY236
      linear_combination r5867
    have ha0 : (rho 6264 + rho 6265) * (seg6AccX236 rho + seg6AccY236 rho) = rho 6267 := by
      rw [hsum]
      linear_combination r5868
    have ha1 : rho 6265 * seg6AccX236 rho = rho 6268 := by
      unfold seg6AccX236
      linear_combination r5869
    have ha2 : rho 6264 * seg6AccY236 rho = rho 6269 := by
      unfold seg6AccY236
      linear_combination r5870
    have ha3 : 3021 * rho 6268 * rho 6269 = rho 6270 := by
      linear_combination r5871
    have ha4 : rho 6271 * (1 + rho 6270) = rho 6268 + rho 6269 := by
      linear_combination r5872
    have ha5 : rho 6272 * (1 - rho 6270) = rho 6267 - rho 6268 - rho 6269 := by
      linear_combination r5873
    have haddx :
        rho 6271 * (1 + 3021 * (rho 6265 * seg6AccX236 rho) * (rho 6264 * seg6AccY236 rho)) =
          rho 6265 * seg6AccX236 rho + rho 6264 * seg6AccY236 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 6272 * (1 - 3021 * (rho 6265 * seg6AccX236 rho) * (rho 6264 * seg6AccY236 rho)) =
          (-1) * (rho 6265 * seg6AccX236 rho) - rho 6264 * seg6AccY236 rho +
            (seg6AccY236 rho - seg6AccX236 rho * (-1)) * (rho 6264 + rho 6265) := by
      rw [ha1, ha2, ha3]
      calc
        rho 6272 * (1 - rho 6270) = rho 6267 - rho 6268 - rho 6269 := ha5
        _ = (-1) * rho 6268 - rho 6269 + (seg6AccY236 rho - seg6AccX236 rho * (-1)) * (rho 6264 + rho 6265) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX237 rho = seg6AccX236 rho - Bool.toZMod bit * (seg6AccX236 rho - rho 6271) := by
      have hd : rho 6273 = Bool.toZMod bit * (rho 6271 - seg6AccX236 rho) := by
        rw [← hbit]
        unfold seg6AccX236
        linear_combination -r5874
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY237 rho = seg6AccY236 rho - Bool.toZMod bit * (seg6AccY236 rho - rho 6272) := by
      have hd : rho 6274 = Bool.toZMod bit * (rho 6272 - seg6AccY236 rho) := by
        rw [← hbit]
        unfold seg6AccY236
        linear_combination -r5875
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 6264 * rho 6265 = rho 6275 := by linear_combination r5876
    have hd1 : rho 6264 * rho 6264 = rho 6276 := by linear_combination r5877
    have hd2 : rho 6265 * rho 6265 = rho 6277 := by linear_combination r5878
    have hd3 : rho 6278 * (rho 6265 * rho 6265 + rho 6264 * rho 6264 * (-1)) = 2 * (rho 6264 * rho 6265) := by
      rw [hd0, hd1, hd2]
      linear_combination r5879
    have hd4 : rho 6279 * (2 - (rho 6265 * rho 6265 + rho 6264 * rho 6264 * (-1))) = rho 6265 * rho 6265 - rho 6264 * rho 6264 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5880
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX236 rho : Seg6.F), (seg6AccY236 rho : Seg6.F)⟩
      ⟨(rho 6264 : Seg6.F), (rho 6265 : Seg6.F)⟩
      ⟨(rho 6271 : Seg6.F), (rho 6272 : Seg6.F)⟩
      ⟨(seg6AccX237 rho : Seg6.F), (seg6AccY237 rho : Seg6.F)⟩
      ⟨(rho 6278 : Seg6.F), (rho 6279 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung236

theorem seg6_rows237 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow5881 rho ∧ Seg6.relationRow5882 rho ∧ Seg6.relationRow5883 rho ∧ Seg6.relationRow5884 rho ∧ Seg6.relationRow5885 rho ∧ Seg6.relationRow5886 rho ∧ Seg6.relationRow5887 rho ∧ Seg6.relationRow5888 rho ∧ Seg6.relationRow5889 rho ∧ Seg6.relationRow5890 rho ∧ Seg6.relationRow5891 rho ∧ Seg6.relationRow5892 rho ∧ Seg6.relationRow5893 rho ∧ Seg6.relationRow5894 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p73, _, _
  ⟩
  unfold Seg6.relationPart73 at p73
  rcases p73 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5881, r5882, r5883, r5884, r5885, r5886, r5887, r5888, r5889, r5890, r5891, r5892, r5893, r5894, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5881, r5882, r5883, r5884, r5885, r5886, r5887, r5888, r5889, r5890, r5891, r5892, r5893, r5894⟩

theorem seg6_rung237 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2127 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX237 rho : Seg6.F), (seg6AccY237 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 6278 : Seg6.F), (rho 6279 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX237 rho : Seg6.F), (seg6AccY237 rho : Seg6.F)⟩
        ⟨(rho 6278 : Seg6.F), (rho 6279 : Seg6.F)⟩
        ⟨(seg6AccX238 rho : Seg6.F), (seg6AccY238 rho : Seg6.F)⟩
        ⟨(rho 6292 : Seg6.F), (rho 6293 : Seg6.F)⟩ := by
  obtain ⟨r5881, r5882, r5883, r5884, r5885, r5886, r5887, r5888, r5889, r5890, r5891, r5892, r5893, r5894⟩ := seg6_rows237 rho h
  unfold Seg6.relationRow5881 Seg6.relationLc1273 at r5881
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5881
  unfold Seg6.relationRow5882 at r5882
  unfold Seg6.relationRow5883 Seg6.relationLc1274 at r5883
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5883
  unfold Seg6.relationRow5884 Seg6.relationLc1275 at r5884
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5884
  unfold Seg6.relationRow5885 at r5885
  unfold Seg6.relationRow5886 at r5886
  unfold Seg6.relationRow5887 at r5887
  unfold Seg6.relationRow5888 Seg6.relationLc1276 at r5888
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5888
  unfold Seg6.relationRow5889 Seg6.relationLc1277 at r5889
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5889
  unfold Seg6.relationRow5890 at r5890
  unfold Seg6.relationRow5891 at r5891
  unfold Seg6.relationRow5892 at r5892
  unfold Seg6.relationRow5893 at r5893
  unfold Seg6.relationRow5894 at r5894
  have hrung237 (bit : Bool) (hbit : rho 2127 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX237 rho : Seg6.F), (seg6AccY237 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 6278 : Seg6.F), (rho 6279 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX237 rho : Seg6.F), (seg6AccY237 rho : Seg6.F)⟩
        ⟨(rho 6278 : Seg6.F), (rho 6279 : Seg6.F)⟩
        ⟨(seg6AccX238 rho : Seg6.F), (seg6AccY238 rho : Seg6.F)⟩
        ⟨(rho 6292 : Seg6.F), (rho 6293 : Seg6.F)⟩ := by
    have hnextx : seg6AccX238 rho = seg6AccX237 rho + rho 6287 := by
      unfold seg6AccX238 seg6AccX237
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5069 14 87]
      ring
    have hnexty : seg6AccY238 rho = seg6AccY237 rho + rho 6288 := by
      unfold seg6AccY238 seg6AccY237
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5070 14 87]
      ring
    have hsum : seg6AccX237 rho + seg6AccY237 rho = rho 6280 := by
      unfold seg6AccX237 seg6AccY237
      linear_combination r5881
    have ha0 : (rho 6278 + rho 6279) * (seg6AccX237 rho + seg6AccY237 rho) = rho 6281 := by
      rw [hsum]
      linear_combination r5882
    have ha1 : rho 6279 * seg6AccX237 rho = rho 6282 := by
      unfold seg6AccX237
      linear_combination r5883
    have ha2 : rho 6278 * seg6AccY237 rho = rho 6283 := by
      unfold seg6AccY237
      linear_combination r5884
    have ha3 : 3021 * rho 6282 * rho 6283 = rho 6284 := by
      linear_combination r5885
    have ha4 : rho 6285 * (1 + rho 6284) = rho 6282 + rho 6283 := by
      linear_combination r5886
    have ha5 : rho 6286 * (1 - rho 6284) = rho 6281 - rho 6282 - rho 6283 := by
      linear_combination r5887
    have haddx :
        rho 6285 * (1 + 3021 * (rho 6279 * seg6AccX237 rho) * (rho 6278 * seg6AccY237 rho)) =
          rho 6279 * seg6AccX237 rho + rho 6278 * seg6AccY237 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 6286 * (1 - 3021 * (rho 6279 * seg6AccX237 rho) * (rho 6278 * seg6AccY237 rho)) =
          (-1) * (rho 6279 * seg6AccX237 rho) - rho 6278 * seg6AccY237 rho +
            (seg6AccY237 rho - seg6AccX237 rho * (-1)) * (rho 6278 + rho 6279) := by
      rw [ha1, ha2, ha3]
      calc
        rho 6286 * (1 - rho 6284) = rho 6281 - rho 6282 - rho 6283 := ha5
        _ = (-1) * rho 6282 - rho 6283 + (seg6AccY237 rho - seg6AccX237 rho * (-1)) * (rho 6278 + rho 6279) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX238 rho = seg6AccX237 rho - Bool.toZMod bit * (seg6AccX237 rho - rho 6285) := by
      have hd : rho 6287 = Bool.toZMod bit * (rho 6285 - seg6AccX237 rho) := by
        rw [← hbit]
        unfold seg6AccX237
        linear_combination -r5888
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY238 rho = seg6AccY237 rho - Bool.toZMod bit * (seg6AccY237 rho - rho 6286) := by
      have hd : rho 6288 = Bool.toZMod bit * (rho 6286 - seg6AccY237 rho) := by
        rw [← hbit]
        unfold seg6AccY237
        linear_combination -r5889
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 6278 * rho 6279 = rho 6289 := by linear_combination r5890
    have hd1 : rho 6278 * rho 6278 = rho 6290 := by linear_combination r5891
    have hd2 : rho 6279 * rho 6279 = rho 6291 := by linear_combination r5892
    have hd3 : rho 6292 * (rho 6279 * rho 6279 + rho 6278 * rho 6278 * (-1)) = 2 * (rho 6278 * rho 6279) := by
      rw [hd0, hd1, hd2]
      linear_combination r5893
    have hd4 : rho 6293 * (2 - (rho 6279 * rho 6279 + rho 6278 * rho 6278 * (-1))) = rho 6279 * rho 6279 - rho 6278 * rho 6278 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5894
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX237 rho : Seg6.F), (seg6AccY237 rho : Seg6.F)⟩
      ⟨(rho 6278 : Seg6.F), (rho 6279 : Seg6.F)⟩
      ⟨(rho 6285 : Seg6.F), (rho 6286 : Seg6.F)⟩
      ⟨(seg6AccX238 rho : Seg6.F), (seg6AccY238 rho : Seg6.F)⟩
      ⟨(rho 6292 : Seg6.F), (rho 6293 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung237

theorem seg6_rows238 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow5895 rho ∧ Seg6.relationRow5896 rho ∧ Seg6.relationRow5897 rho ∧ Seg6.relationRow5898 rho ∧ Seg6.relationRow5899 rho ∧ Seg6.relationRow5900 rho ∧ Seg6.relationRow5901 rho ∧ Seg6.relationRow5902 rho ∧ Seg6.relationRow5903 rho ∧ Seg6.relationRow5904 rho ∧ Seg6.relationRow5905 rho ∧ Seg6.relationRow5906 rho ∧ Seg6.relationRow5907 rho ∧ Seg6.relationRow5908 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p73, _, _
  ⟩
  unfold Seg6.relationPart73 at p73
  rcases p73 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5895, r5896, r5897, r5898, r5899, r5900, r5901, r5902, r5903, r5904, r5905, r5906, r5907, r5908, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5895, r5896, r5897, r5898, r5899, r5900, r5901, r5902, r5903, r5904, r5905, r5906, r5907, r5908⟩

theorem seg6_rung238 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2128 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX238 rho : Seg6.F), (seg6AccY238 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 6292 : Seg6.F), (rho 6293 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX238 rho : Seg6.F), (seg6AccY238 rho : Seg6.F)⟩
        ⟨(rho 6292 : Seg6.F), (rho 6293 : Seg6.F)⟩
        ⟨(seg6AccX239 rho : Seg6.F), (seg6AccY239 rho : Seg6.F)⟩
        ⟨(rho 6306 : Seg6.F), (rho 6307 : Seg6.F)⟩ := by
  obtain ⟨r5895, r5896, r5897, r5898, r5899, r5900, r5901, r5902, r5903, r5904, r5905, r5906, r5907, r5908⟩ := seg6_rows238 rho h
  unfold Seg6.relationRow5895 Seg6.relationLc1278 at r5895
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5895
  unfold Seg6.relationRow5896 at r5896
  unfold Seg6.relationRow5897 Seg6.relationLc1279 at r5897
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5897
  unfold Seg6.relationRow5898 Seg6.relationLc1280 at r5898
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5898
  unfold Seg6.relationRow5899 at r5899
  unfold Seg6.relationRow5900 at r5900
  unfold Seg6.relationRow5901 at r5901
  unfold Seg6.relationRow5902 Seg6.relationLc1281 at r5902
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5902
  unfold Seg6.relationRow5903 Seg6.relationLc1282 at r5903
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5903
  unfold Seg6.relationRow5904 at r5904
  unfold Seg6.relationRow5905 at r5905
  unfold Seg6.relationRow5906 at r5906
  unfold Seg6.relationRow5907 at r5907
  unfold Seg6.relationRow5908 at r5908
  have hrung238 (bit : Bool) (hbit : rho 2128 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX238 rho : Seg6.F), (seg6AccY238 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 6292 : Seg6.F), (rho 6293 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX238 rho : Seg6.F), (seg6AccY238 rho : Seg6.F)⟩
        ⟨(rho 6292 : Seg6.F), (rho 6293 : Seg6.F)⟩
        ⟨(seg6AccX239 rho : Seg6.F), (seg6AccY239 rho : Seg6.F)⟩
        ⟨(rho 6306 : Seg6.F), (rho 6307 : Seg6.F)⟩ := by
    have hnextx : seg6AccX239 rho = seg6AccX238 rho + rho 6301 := by
      unfold seg6AccX239 seg6AccX238
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5069 14 88]
      ring
    have hnexty : seg6AccY239 rho = seg6AccY238 rho + rho 6302 := by
      unfold seg6AccY239 seg6AccY238
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5070 14 88]
      ring
    have hsum : seg6AccX238 rho + seg6AccY238 rho = rho 6294 := by
      unfold seg6AccX238 seg6AccY238
      linear_combination r5895
    have ha0 : (rho 6292 + rho 6293) * (seg6AccX238 rho + seg6AccY238 rho) = rho 6295 := by
      rw [hsum]
      linear_combination r5896
    have ha1 : rho 6293 * seg6AccX238 rho = rho 6296 := by
      unfold seg6AccX238
      linear_combination r5897
    have ha2 : rho 6292 * seg6AccY238 rho = rho 6297 := by
      unfold seg6AccY238
      linear_combination r5898
    have ha3 : 3021 * rho 6296 * rho 6297 = rho 6298 := by
      linear_combination r5899
    have ha4 : rho 6299 * (1 + rho 6298) = rho 6296 + rho 6297 := by
      linear_combination r5900
    have ha5 : rho 6300 * (1 - rho 6298) = rho 6295 - rho 6296 - rho 6297 := by
      linear_combination r5901
    have haddx :
        rho 6299 * (1 + 3021 * (rho 6293 * seg6AccX238 rho) * (rho 6292 * seg6AccY238 rho)) =
          rho 6293 * seg6AccX238 rho + rho 6292 * seg6AccY238 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 6300 * (1 - 3021 * (rho 6293 * seg6AccX238 rho) * (rho 6292 * seg6AccY238 rho)) =
          (-1) * (rho 6293 * seg6AccX238 rho) - rho 6292 * seg6AccY238 rho +
            (seg6AccY238 rho - seg6AccX238 rho * (-1)) * (rho 6292 + rho 6293) := by
      rw [ha1, ha2, ha3]
      calc
        rho 6300 * (1 - rho 6298) = rho 6295 - rho 6296 - rho 6297 := ha5
        _ = (-1) * rho 6296 - rho 6297 + (seg6AccY238 rho - seg6AccX238 rho * (-1)) * (rho 6292 + rho 6293) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX239 rho = seg6AccX238 rho - Bool.toZMod bit * (seg6AccX238 rho - rho 6299) := by
      have hd : rho 6301 = Bool.toZMod bit * (rho 6299 - seg6AccX238 rho) := by
        rw [← hbit]
        unfold seg6AccX238
        linear_combination -r5902
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY239 rho = seg6AccY238 rho - Bool.toZMod bit * (seg6AccY238 rho - rho 6300) := by
      have hd : rho 6302 = Bool.toZMod bit * (rho 6300 - seg6AccY238 rho) := by
        rw [← hbit]
        unfold seg6AccY238
        linear_combination -r5903
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 6292 * rho 6293 = rho 6303 := by linear_combination r5904
    have hd1 : rho 6292 * rho 6292 = rho 6304 := by linear_combination r5905
    have hd2 : rho 6293 * rho 6293 = rho 6305 := by linear_combination r5906
    have hd3 : rho 6306 * (rho 6293 * rho 6293 + rho 6292 * rho 6292 * (-1)) = 2 * (rho 6292 * rho 6293) := by
      rw [hd0, hd1, hd2]
      linear_combination r5907
    have hd4 : rho 6307 * (2 - (rho 6293 * rho 6293 + rho 6292 * rho 6292 * (-1))) = rho 6293 * rho 6293 - rho 6292 * rho 6292 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5908
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX238 rho : Seg6.F), (seg6AccY238 rho : Seg6.F)⟩
      ⟨(rho 6292 : Seg6.F), (rho 6293 : Seg6.F)⟩
      ⟨(rho 6299 : Seg6.F), (rho 6300 : Seg6.F)⟩
      ⟨(seg6AccX239 rho : Seg6.F), (seg6AccY239 rho : Seg6.F)⟩
      ⟨(rho 6306 : Seg6.F), (rho 6307 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung238

theorem seg6_rows239 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow5909 rho ∧ Seg6.relationRow5910 rho ∧ Seg6.relationRow5911 rho ∧ Seg6.relationRow5912 rho ∧ Seg6.relationRow5913 rho ∧ Seg6.relationRow5914 rho ∧ Seg6.relationRow5915 rho ∧ Seg6.relationRow5916 rho ∧ Seg6.relationRow5917 rho ∧ Seg6.relationRow5918 rho ∧ Seg6.relationRow5919 rho ∧ Seg6.relationRow5920 rho ∧ Seg6.relationRow5921 rho ∧ Seg6.relationRow5922 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p73, p74, _
  ⟩
  unfold Seg6.relationPart73 at p73
  rcases p73 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5909, r5910, r5911, r5912, r5913, r5914, r5915, r5916, r5917, r5918, r5919⟩
  unfold Seg6.relationPart74 at p74
  rcases p74 with ⟨r5920, r5921, r5922, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5909, r5910, r5911, r5912, r5913, r5914, r5915, r5916, r5917, r5918, r5919, r5920, r5921, r5922⟩

theorem seg6_rung239 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2129 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX239 rho : Seg6.F), (seg6AccY239 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 6306 : Seg6.F), (rho 6307 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX239 rho : Seg6.F), (seg6AccY239 rho : Seg6.F)⟩
        ⟨(rho 6306 : Seg6.F), (rho 6307 : Seg6.F)⟩
        ⟨(seg6AccX240 rho : Seg6.F), (seg6AccY240 rho : Seg6.F)⟩
        ⟨(rho 6320 : Seg6.F), (rho 6321 : Seg6.F)⟩ := by
  obtain ⟨r5909, r5910, r5911, r5912, r5913, r5914, r5915, r5916, r5917, r5918, r5919, r5920, r5921, r5922⟩ := seg6_rows239 rho h
  unfold Seg6.relationRow5909 Seg6.relationLc1283 at r5909
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5909
  unfold Seg6.relationRow5910 at r5910
  unfold Seg6.relationRow5911 Seg6.relationLc1284 at r5911
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5911
  unfold Seg6.relationRow5912 Seg6.relationLc1285 at r5912
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5912
  unfold Seg6.relationRow5913 at r5913
  unfold Seg6.relationRow5914 at r5914
  unfold Seg6.relationRow5915 at r5915
  unfold Seg6.relationRow5916 Seg6.relationLc1286 at r5916
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5916
  unfold Seg6.relationRow5917 Seg6.relationLc1287 at r5917
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5917
  unfold Seg6.relationRow5918 at r5918
  unfold Seg6.relationRow5919 at r5919
  unfold Seg6.relationRow5920 at r5920
  unfold Seg6.relationRow5921 at r5921
  unfold Seg6.relationRow5922 at r5922
  have hrung239 (bit : Bool) (hbit : rho 2129 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX239 rho : Seg6.F), (seg6AccY239 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 6306 : Seg6.F), (rho 6307 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX239 rho : Seg6.F), (seg6AccY239 rho : Seg6.F)⟩
        ⟨(rho 6306 : Seg6.F), (rho 6307 : Seg6.F)⟩
        ⟨(seg6AccX240 rho : Seg6.F), (seg6AccY240 rho : Seg6.F)⟩
        ⟨(rho 6320 : Seg6.F), (rho 6321 : Seg6.F)⟩ := by
    have hnextx : seg6AccX240 rho = seg6AccX239 rho + rho 6315 := by
      unfold seg6AccX240 seg6AccX239
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5069 14 89]
      ring
    have hnexty : seg6AccY240 rho = seg6AccY239 rho + rho 6316 := by
      unfold seg6AccY240 seg6AccY239
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5070 14 89]
      ring
    have hsum : seg6AccX239 rho + seg6AccY239 rho = rho 6308 := by
      unfold seg6AccX239 seg6AccY239
      linear_combination r5909
    have ha0 : (rho 6306 + rho 6307) * (seg6AccX239 rho + seg6AccY239 rho) = rho 6309 := by
      rw [hsum]
      linear_combination r5910
    have ha1 : rho 6307 * seg6AccX239 rho = rho 6310 := by
      unfold seg6AccX239
      linear_combination r5911
    have ha2 : rho 6306 * seg6AccY239 rho = rho 6311 := by
      unfold seg6AccY239
      linear_combination r5912
    have ha3 : 3021 * rho 6310 * rho 6311 = rho 6312 := by
      linear_combination r5913
    have ha4 : rho 6313 * (1 + rho 6312) = rho 6310 + rho 6311 := by
      linear_combination r5914
    have ha5 : rho 6314 * (1 - rho 6312) = rho 6309 - rho 6310 - rho 6311 := by
      linear_combination r5915
    have haddx :
        rho 6313 * (1 + 3021 * (rho 6307 * seg6AccX239 rho) * (rho 6306 * seg6AccY239 rho)) =
          rho 6307 * seg6AccX239 rho + rho 6306 * seg6AccY239 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 6314 * (1 - 3021 * (rho 6307 * seg6AccX239 rho) * (rho 6306 * seg6AccY239 rho)) =
          (-1) * (rho 6307 * seg6AccX239 rho) - rho 6306 * seg6AccY239 rho +
            (seg6AccY239 rho - seg6AccX239 rho * (-1)) * (rho 6306 + rho 6307) := by
      rw [ha1, ha2, ha3]
      calc
        rho 6314 * (1 - rho 6312) = rho 6309 - rho 6310 - rho 6311 := ha5
        _ = (-1) * rho 6310 - rho 6311 + (seg6AccY239 rho - seg6AccX239 rho * (-1)) * (rho 6306 + rho 6307) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX240 rho = seg6AccX239 rho - Bool.toZMod bit * (seg6AccX239 rho - rho 6313) := by
      have hd : rho 6315 = Bool.toZMod bit * (rho 6313 - seg6AccX239 rho) := by
        rw [← hbit]
        unfold seg6AccX239
        linear_combination -r5916
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY240 rho = seg6AccY239 rho - Bool.toZMod bit * (seg6AccY239 rho - rho 6314) := by
      have hd : rho 6316 = Bool.toZMod bit * (rho 6314 - seg6AccY239 rho) := by
        rw [← hbit]
        unfold seg6AccY239
        linear_combination -r5917
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 6306 * rho 6307 = rho 6317 := by linear_combination r5918
    have hd1 : rho 6306 * rho 6306 = rho 6318 := by linear_combination r5919
    have hd2 : rho 6307 * rho 6307 = rho 6319 := by linear_combination r5920
    have hd3 : rho 6320 * (rho 6307 * rho 6307 + rho 6306 * rho 6306 * (-1)) = 2 * (rho 6306 * rho 6307) := by
      rw [hd0, hd1, hd2]
      linear_combination r5921
    have hd4 : rho 6321 * (2 - (rho 6307 * rho 6307 + rho 6306 * rho 6306 * (-1))) = rho 6307 * rho 6307 - rho 6306 * rho 6306 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5922
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX239 rho : Seg6.F), (seg6AccY239 rho : Seg6.F)⟩
      ⟨(rho 6306 : Seg6.F), (rho 6307 : Seg6.F)⟩
      ⟨(rho 6313 : Seg6.F), (rho 6314 : Seg6.F)⟩
      ⟨(seg6AccX240 rho : Seg6.F), (seg6AccY240 rho : Seg6.F)⟩
      ⟨(rho 6320 : Seg6.F), (rho 6321 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung239

theorem seg6_rows240 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow5923 rho ∧ Seg6.relationRow5924 rho ∧ Seg6.relationRow5925 rho ∧ Seg6.relationRow5926 rho ∧ Seg6.relationRow5927 rho ∧ Seg6.relationRow5928 rho ∧ Seg6.relationRow5929 rho ∧ Seg6.relationRow5930 rho ∧ Seg6.relationRow5931 rho ∧ Seg6.relationRow5932 rho ∧ Seg6.relationRow5933 rho ∧ Seg6.relationRow5934 rho ∧ Seg6.relationRow5935 rho ∧ Seg6.relationRow5936 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p74, _
  ⟩
  unfold Seg6.relationPart74 at p74
  rcases p74 with ⟨_, _, _, r5923, r5924, r5925, r5926, r5927, r5928, r5929, r5930, r5931, r5932, r5933, r5934, r5935, r5936, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5923, r5924, r5925, r5926, r5927, r5928, r5929, r5930, r5931, r5932, r5933, r5934, r5935, r5936⟩

theorem seg6_rung240 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2130 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX240 rho : Seg6.F), (seg6AccY240 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 6320 : Seg6.F), (rho 6321 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX240 rho : Seg6.F), (seg6AccY240 rho : Seg6.F)⟩
        ⟨(rho 6320 : Seg6.F), (rho 6321 : Seg6.F)⟩
        ⟨(seg6AccX241 rho : Seg6.F), (seg6AccY241 rho : Seg6.F)⟩
        ⟨(rho 6334 : Seg6.F), (rho 6335 : Seg6.F)⟩ := by
  obtain ⟨r5923, r5924, r5925, r5926, r5927, r5928, r5929, r5930, r5931, r5932, r5933, r5934, r5935, r5936⟩ := seg6_rows240 rho h
  unfold Seg6.relationRow5923 Seg6.relationLc1288 at r5923
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5923
  unfold Seg6.relationRow5924 at r5924
  unfold Seg6.relationRow5925 Seg6.relationLc1289 at r5925
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5925
  unfold Seg6.relationRow5926 Seg6.relationLc1290 at r5926
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5926
  unfold Seg6.relationRow5927 at r5927
  unfold Seg6.relationRow5928 at r5928
  unfold Seg6.relationRow5929 at r5929
  unfold Seg6.relationRow5930 Seg6.relationLc1291 at r5930
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5930
  unfold Seg6.relationRow5931 Seg6.relationLc1292 at r5931
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5931
  unfold Seg6.relationRow5932 at r5932
  unfold Seg6.relationRow5933 at r5933
  unfold Seg6.relationRow5934 at r5934
  unfold Seg6.relationRow5935 at r5935
  unfold Seg6.relationRow5936 at r5936
  have hrung240 (bit : Bool) (hbit : rho 2130 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX240 rho : Seg6.F), (seg6AccY240 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 6320 : Seg6.F), (rho 6321 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX240 rho : Seg6.F), (seg6AccY240 rho : Seg6.F)⟩
        ⟨(rho 6320 : Seg6.F), (rho 6321 : Seg6.F)⟩
        ⟨(seg6AccX241 rho : Seg6.F), (seg6AccY241 rho : Seg6.F)⟩
        ⟨(rho 6334 : Seg6.F), (rho 6335 : Seg6.F)⟩ := by
    have hnextx : seg6AccX241 rho = seg6AccX240 rho + rho 6329 := by
      unfold seg6AccX241 seg6AccX240
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5069 14 90]
      ring
    have hnexty : seg6AccY241 rho = seg6AccY240 rho + rho 6330 := by
      unfold seg6AccY241 seg6AccY240
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5070 14 90]
      ring
    have hsum : seg6AccX240 rho + seg6AccY240 rho = rho 6322 := by
      unfold seg6AccX240 seg6AccY240
      linear_combination r5923
    have ha0 : (rho 6320 + rho 6321) * (seg6AccX240 rho + seg6AccY240 rho) = rho 6323 := by
      rw [hsum]
      linear_combination r5924
    have ha1 : rho 6321 * seg6AccX240 rho = rho 6324 := by
      unfold seg6AccX240
      linear_combination r5925
    have ha2 : rho 6320 * seg6AccY240 rho = rho 6325 := by
      unfold seg6AccY240
      linear_combination r5926
    have ha3 : 3021 * rho 6324 * rho 6325 = rho 6326 := by
      linear_combination r5927
    have ha4 : rho 6327 * (1 + rho 6326) = rho 6324 + rho 6325 := by
      linear_combination r5928
    have ha5 : rho 6328 * (1 - rho 6326) = rho 6323 - rho 6324 - rho 6325 := by
      linear_combination r5929
    have haddx :
        rho 6327 * (1 + 3021 * (rho 6321 * seg6AccX240 rho) * (rho 6320 * seg6AccY240 rho)) =
          rho 6321 * seg6AccX240 rho + rho 6320 * seg6AccY240 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 6328 * (1 - 3021 * (rho 6321 * seg6AccX240 rho) * (rho 6320 * seg6AccY240 rho)) =
          (-1) * (rho 6321 * seg6AccX240 rho) - rho 6320 * seg6AccY240 rho +
            (seg6AccY240 rho - seg6AccX240 rho * (-1)) * (rho 6320 + rho 6321) := by
      rw [ha1, ha2, ha3]
      calc
        rho 6328 * (1 - rho 6326) = rho 6323 - rho 6324 - rho 6325 := ha5
        _ = (-1) * rho 6324 - rho 6325 + (seg6AccY240 rho - seg6AccX240 rho * (-1)) * (rho 6320 + rho 6321) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX241 rho = seg6AccX240 rho - Bool.toZMod bit * (seg6AccX240 rho - rho 6327) := by
      have hd : rho 6329 = Bool.toZMod bit * (rho 6327 - seg6AccX240 rho) := by
        rw [← hbit]
        unfold seg6AccX240
        linear_combination -r5930
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY241 rho = seg6AccY240 rho - Bool.toZMod bit * (seg6AccY240 rho - rho 6328) := by
      have hd : rho 6330 = Bool.toZMod bit * (rho 6328 - seg6AccY240 rho) := by
        rw [← hbit]
        unfold seg6AccY240
        linear_combination -r5931
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 6320 * rho 6321 = rho 6331 := by linear_combination r5932
    have hd1 : rho 6320 * rho 6320 = rho 6332 := by linear_combination r5933
    have hd2 : rho 6321 * rho 6321 = rho 6333 := by linear_combination r5934
    have hd3 : rho 6334 * (rho 6321 * rho 6321 + rho 6320 * rho 6320 * (-1)) = 2 * (rho 6320 * rho 6321) := by
      rw [hd0, hd1, hd2]
      linear_combination r5935
    have hd4 : rho 6335 * (2 - (rho 6321 * rho 6321 + rho 6320 * rho 6320 * (-1))) = rho 6321 * rho 6321 - rho 6320 * rho 6320 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5936
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX240 rho : Seg6.F), (seg6AccY240 rho : Seg6.F)⟩
      ⟨(rho 6320 : Seg6.F), (rho 6321 : Seg6.F)⟩
      ⟨(rho 6327 : Seg6.F), (rho 6328 : Seg6.F)⟩
      ⟨(seg6AccX241 rho : Seg6.F), (seg6AccY241 rho : Seg6.F)⟩
      ⟨(rho 6334 : Seg6.F), (rho 6335 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung240

theorem seg6_rows241 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow5937 rho ∧ Seg6.relationRow5938 rho ∧ Seg6.relationRow5939 rho ∧ Seg6.relationRow5940 rho ∧ Seg6.relationRow5941 rho ∧ Seg6.relationRow5942 rho ∧ Seg6.relationRow5943 rho ∧ Seg6.relationRow5944 rho ∧ Seg6.relationRow5945 rho ∧ Seg6.relationRow5946 rho ∧ Seg6.relationRow5947 rho ∧ Seg6.relationRow5948 rho ∧ Seg6.relationRow5949 rho ∧ Seg6.relationRow5950 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p74, _
  ⟩
  unfold Seg6.relationPart74 at p74
  rcases p74 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5937, r5938, r5939, r5940, r5941, r5942, r5943, r5944, r5945, r5946, r5947, r5948, r5949, r5950, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5937, r5938, r5939, r5940, r5941, r5942, r5943, r5944, r5945, r5946, r5947, r5948, r5949, r5950⟩

theorem seg6_rung241 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2131 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX241 rho : Seg6.F), (seg6AccY241 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 6334 : Seg6.F), (rho 6335 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX241 rho : Seg6.F), (seg6AccY241 rho : Seg6.F)⟩
        ⟨(rho 6334 : Seg6.F), (rho 6335 : Seg6.F)⟩
        ⟨(seg6AccX242 rho : Seg6.F), (seg6AccY242 rho : Seg6.F)⟩
        ⟨(rho 6348 : Seg6.F), (rho 6349 : Seg6.F)⟩ := by
  obtain ⟨r5937, r5938, r5939, r5940, r5941, r5942, r5943, r5944, r5945, r5946, r5947, r5948, r5949, r5950⟩ := seg6_rows241 rho h
  unfold Seg6.relationRow5937 Seg6.relationLc1293 at r5937
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5937
  unfold Seg6.relationRow5938 at r5938
  unfold Seg6.relationRow5939 Seg6.relationLc1294 at r5939
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5939
  unfold Seg6.relationRow5940 Seg6.relationLc1295 at r5940
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5940
  unfold Seg6.relationRow5941 at r5941
  unfold Seg6.relationRow5942 at r5942
  unfold Seg6.relationRow5943 at r5943
  unfold Seg6.relationRow5944 Seg6.relationLc1296 at r5944
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5944
  unfold Seg6.relationRow5945 Seg6.relationLc1297 at r5945
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5945
  unfold Seg6.relationRow5946 at r5946
  unfold Seg6.relationRow5947 at r5947
  unfold Seg6.relationRow5948 at r5948
  unfold Seg6.relationRow5949 at r5949
  unfold Seg6.relationRow5950 at r5950
  have hrung241 (bit : Bool) (hbit : rho 2131 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX241 rho : Seg6.F), (seg6AccY241 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 6334 : Seg6.F), (rho 6335 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX241 rho : Seg6.F), (seg6AccY241 rho : Seg6.F)⟩
        ⟨(rho 6334 : Seg6.F), (rho 6335 : Seg6.F)⟩
        ⟨(seg6AccX242 rho : Seg6.F), (seg6AccY242 rho : Seg6.F)⟩
        ⟨(rho 6348 : Seg6.F), (rho 6349 : Seg6.F)⟩ := by
    have hnextx : seg6AccX242 rho = seg6AccX241 rho + rho 6343 := by
      unfold seg6AccX242 seg6AccX241
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5069 14 91]
      ring
    have hnexty : seg6AccY242 rho = seg6AccY241 rho + rho 6344 := by
      unfold seg6AccY242 seg6AccY241
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5070 14 91]
      ring
    have hsum : seg6AccX241 rho + seg6AccY241 rho = rho 6336 := by
      unfold seg6AccX241 seg6AccY241
      linear_combination r5937
    have ha0 : (rho 6334 + rho 6335) * (seg6AccX241 rho + seg6AccY241 rho) = rho 6337 := by
      rw [hsum]
      linear_combination r5938
    have ha1 : rho 6335 * seg6AccX241 rho = rho 6338 := by
      unfold seg6AccX241
      linear_combination r5939
    have ha2 : rho 6334 * seg6AccY241 rho = rho 6339 := by
      unfold seg6AccY241
      linear_combination r5940
    have ha3 : 3021 * rho 6338 * rho 6339 = rho 6340 := by
      linear_combination r5941
    have ha4 : rho 6341 * (1 + rho 6340) = rho 6338 + rho 6339 := by
      linear_combination r5942
    have ha5 : rho 6342 * (1 - rho 6340) = rho 6337 - rho 6338 - rho 6339 := by
      linear_combination r5943
    have haddx :
        rho 6341 * (1 + 3021 * (rho 6335 * seg6AccX241 rho) * (rho 6334 * seg6AccY241 rho)) =
          rho 6335 * seg6AccX241 rho + rho 6334 * seg6AccY241 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 6342 * (1 - 3021 * (rho 6335 * seg6AccX241 rho) * (rho 6334 * seg6AccY241 rho)) =
          (-1) * (rho 6335 * seg6AccX241 rho) - rho 6334 * seg6AccY241 rho +
            (seg6AccY241 rho - seg6AccX241 rho * (-1)) * (rho 6334 + rho 6335) := by
      rw [ha1, ha2, ha3]
      calc
        rho 6342 * (1 - rho 6340) = rho 6337 - rho 6338 - rho 6339 := ha5
        _ = (-1) * rho 6338 - rho 6339 + (seg6AccY241 rho - seg6AccX241 rho * (-1)) * (rho 6334 + rho 6335) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX242 rho = seg6AccX241 rho - Bool.toZMod bit * (seg6AccX241 rho - rho 6341) := by
      have hd : rho 6343 = Bool.toZMod bit * (rho 6341 - seg6AccX241 rho) := by
        rw [← hbit]
        unfold seg6AccX241
        linear_combination -r5944
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY242 rho = seg6AccY241 rho - Bool.toZMod bit * (seg6AccY241 rho - rho 6342) := by
      have hd : rho 6344 = Bool.toZMod bit * (rho 6342 - seg6AccY241 rho) := by
        rw [← hbit]
        unfold seg6AccY241
        linear_combination -r5945
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 6334 * rho 6335 = rho 6345 := by linear_combination r5946
    have hd1 : rho 6334 * rho 6334 = rho 6346 := by linear_combination r5947
    have hd2 : rho 6335 * rho 6335 = rho 6347 := by linear_combination r5948
    have hd3 : rho 6348 * (rho 6335 * rho 6335 + rho 6334 * rho 6334 * (-1)) = 2 * (rho 6334 * rho 6335) := by
      rw [hd0, hd1, hd2]
      linear_combination r5949
    have hd4 : rho 6349 * (2 - (rho 6335 * rho 6335 + rho 6334 * rho 6334 * (-1))) = rho 6335 * rho 6335 - rho 6334 * rho 6334 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5950
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX241 rho : Seg6.F), (seg6AccY241 rho : Seg6.F)⟩
      ⟨(rho 6334 : Seg6.F), (rho 6335 : Seg6.F)⟩
      ⟨(rho 6341 : Seg6.F), (rho 6342 : Seg6.F)⟩
      ⟨(seg6AccX242 rho : Seg6.F), (seg6AccY242 rho : Seg6.F)⟩
      ⟨(rho 6348 : Seg6.F), (rho 6349 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung241

theorem seg6_hstep_c21 (rho : Nat -> Seg6.F) (h : Seg6.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (1890 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 231 ≤ i → i < 242 →
      EdwardsBridge.onCurve (seg6LadderAccState rho i) →
      EdwardsBridge.onCurve (seg6LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg6LadderAccState rho i) (seg6LadderCurState rho i)
        (seg6LadderAccState rho (i + 1)) (seg6LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg6_rung231 rho h bits[231]! (hbitAt 231 (by omega)) hacc hcur
  · exact seg6_rung232 rho h bits[232]! (hbitAt 232 (by omega)) hacc hcur
  · exact seg6_rung233 rho h bits[233]! (hbitAt 233 (by omega)) hacc hcur
  · exact seg6_rung234 rho h bits[234]! (hbitAt 234 (by omega)) hacc hcur
  · exact seg6_rung235 rho h bits[235]! (hbitAt 235 (by omega)) hacc hcur
  · exact seg6_rung236 rho h bits[236]! (hbitAt 236 (by omega)) hacc hcur
  · exact seg6_rung237 rho h bits[237]! (hbitAt 237 (by omega)) hacc hcur
  · exact seg6_rung238 rho h bits[238]! (hbitAt 238 (by omega)) hacc hcur
  · exact seg6_rung239 rho h bits[239]! (hbitAt 239 (by omega)) hacc hcur
  · exact seg6_rung240 rho h bits[240]! (hbitAt 240 (by omega)) hacc hcur
  · exact seg6_rung241 rho h bits[241]! (hbitAt 241 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
