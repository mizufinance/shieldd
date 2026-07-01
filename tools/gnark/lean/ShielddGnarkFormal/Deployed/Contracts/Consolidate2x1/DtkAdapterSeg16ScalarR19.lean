import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg16_rows209 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow5741 rho ∧ Seg16.relationRow5742 rho ∧ Seg16.relationRow5743 rho ∧ Seg16.relationRow5744 rho ∧ Seg16.relationRow5745 rho ∧ Seg16.relationRow5746 rho ∧ Seg16.relationRow5747 rho ∧ Seg16.relationRow5748 rho ∧ Seg16.relationRow5749 rho ∧ Seg16.relationRow5750 rho ∧ Seg16.relationRow5751 rho ∧ Seg16.relationRow5752 rho ∧ Seg16.relationRow5753 rho ∧ Seg16.relationRow5754 rho := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p71, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart71 at p71
  rcases p71 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5741, r5742, r5743, r5744, r5745, r5746, r5747, r5748, r5749, r5750, r5751, r5752, r5753, r5754, _, _, _, _, _⟩
  exact ⟨r5741, r5742, r5743, r5744, r5745, r5746, r5747, r5748, r5749, r5750, r5751, r5752, r5753, r5754⟩

theorem seg16_rung209 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15501 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX209 rho : Seg16.F), (seg16AccY209 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18311 : Seg16.F), (rho 18312 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX209 rho : Seg16.F), (seg16AccY209 rho : Seg16.F)⟩
        ⟨(rho 18311 : Seg16.F), (rho 18312 : Seg16.F)⟩
        ⟨(seg16AccX210 rho : Seg16.F), (seg16AccY210 rho : Seg16.F)⟩
        ⟨(rho 18325 : Seg16.F), (rho 18326 : Seg16.F)⟩ := by
  obtain ⟨r5741, r5742, r5743, r5744, r5745, r5746, r5747, r5748, r5749, r5750, r5751, r5752, r5753, r5754⟩ := seg16_rows209 rho h
  unfold Seg16.relationRow5741 at r5741
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5741
  unfold Seg16.relationRow5742 at r5742
  unfold Seg16.relationRow5743 at r5743
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5743
  unfold Seg16.relationRow5744 at r5744
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5744
  unfold Seg16.relationRow5745 at r5745
  unfold Seg16.relationRow5746 at r5746
  unfold Seg16.relationRow5747 at r5747
  unfold Seg16.relationRow5748 at r5748
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5748
  unfold Seg16.relationRow5749 at r5749
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5749
  unfold Seg16.relationRow5750 at r5750
  unfold Seg16.relationRow5751 at r5751
  unfold Seg16.relationRow5752 at r5752
  unfold Seg16.relationRow5753 at r5753
  unfold Seg16.relationRow5754 at r5754
  have hrung209 (bit : Bool) (hbit : rho 15501 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX209 rho : Seg16.F), (seg16AccY209 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18311 : Seg16.F), (rho 18312 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX209 rho : Seg16.F), (seg16AccY209 rho : Seg16.F)⟩
        ⟨(rho 18311 : Seg16.F), (rho 18312 : Seg16.F)⟩
        ⟨(seg16AccX210 rho : Seg16.F), (seg16AccY210 rho : Seg16.F)⟩
        ⟨(rho 18325 : Seg16.F), (rho 18326 : Seg16.F)⟩ := by
    have hnextx : seg16AccX210 rho = seg16AccX209 rho + rho 18320 := by
      unfold seg16AccX210 seg16AccX209
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 59]
      ring
    have hnexty : seg16AccY210 rho = seg16AccY209 rho + rho 18321 := by
      unfold seg16AccY210 seg16AccY209
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 59]
      ring
    have hsum : seg16AccX209 rho + seg16AccY209 rho = rho 18313 := by
      unfold seg16AccX209 seg16AccY209
      linear_combination r5741
    have ha0 : (rho 18311 + rho 18312) * (seg16AccX209 rho + seg16AccY209 rho) = rho 18314 := by
      rw [hsum]
      linear_combination r5742
    have ha1 : rho 18312 * seg16AccX209 rho = rho 18315 := by
      unfold seg16AccX209
      linear_combination r5743
    have ha2 : rho 18311 * seg16AccY209 rho = rho 18316 := by
      unfold seg16AccY209
      linear_combination r5744
    have ha3 : 3021 * rho 18315 * rho 18316 = rho 18317 := by
      linear_combination r5745
    have ha4 : rho 18318 * (1 + rho 18317) = rho 18315 + rho 18316 := by
      linear_combination r5746
    have ha5 : rho 18319 * (1 - rho 18317) = rho 18314 - rho 18315 - rho 18316 := by
      linear_combination r5747
    have haddx :
        rho 18318 * (1 + 3021 * (rho 18312 * seg16AccX209 rho) * (rho 18311 * seg16AccY209 rho)) =
          rho 18312 * seg16AccX209 rho + rho 18311 * seg16AccY209 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18319 * (1 - 3021 * (rho 18312 * seg16AccX209 rho) * (rho 18311 * seg16AccY209 rho)) =
          (-1) * (rho 18312 * seg16AccX209 rho) - rho 18311 * seg16AccY209 rho +
            (seg16AccY209 rho - seg16AccX209 rho * (-1)) * (rho 18311 + rho 18312) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18319 * (1 - rho 18317) = rho 18314 - rho 18315 - rho 18316 := ha5
        _ = (-1) * rho 18315 - rho 18316 + (seg16AccY209 rho - seg16AccX209 rho * (-1)) * (rho 18311 + rho 18312) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX210 rho = seg16AccX209 rho - Bool.toZMod bit * (seg16AccX209 rho - rho 18318) := by
      have hd : rho 18320 = Bool.toZMod bit * (rho 18318 - seg16AccX209 rho) := by
        rw [← hbit]
        unfold seg16AccX209
        linear_combination -r5748
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY210 rho = seg16AccY209 rho - Bool.toZMod bit * (seg16AccY209 rho - rho 18319) := by
      have hd : rho 18321 = Bool.toZMod bit * (rho 18319 - seg16AccY209 rho) := by
        rw [← hbit]
        unfold seg16AccY209
        linear_combination -r5749
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 18311 * rho 18312 = rho 18322 := by linear_combination r5750
    have hd1 : rho 18311 * rho 18311 = rho 18323 := by linear_combination r5751
    have hd2 : rho 18312 * rho 18312 = rho 18324 := by linear_combination r5752
    have hd3 : rho 18325 * (rho 18312 * rho 18312 + rho 18311 * rho 18311 * (-1)) = 2 * (rho 18311 * rho 18312) := by
      rw [hd0, hd1, hd2]
      linear_combination r5753
    have hd4 : rho 18326 * (2 - (rho 18312 * rho 18312 + rho 18311 * rho 18311 * (-1))) = rho 18312 * rho 18312 - rho 18311 * rho 18311 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5754
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX209 rho : Seg16.F), (seg16AccY209 rho : Seg16.F)⟩
      ⟨(rho 18311 : Seg16.F), (rho 18312 : Seg16.F)⟩
      ⟨(rho 18318 : Seg16.F), (rho 18319 : Seg16.F)⟩
      ⟨(seg16AccX210 rho : Seg16.F), (seg16AccY210 rho : Seg16.F)⟩
      ⟨(rho 18325 : Seg16.F), (rho 18326 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung209

theorem seg16_rows210 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow5755 rho ∧ Seg16.relationRow5756 rho ∧ Seg16.relationRow5757 rho ∧ Seg16.relationRow5758 rho ∧ Seg16.relationRow5759 rho ∧ Seg16.relationRow5760 rho ∧ Seg16.relationRow5761 rho ∧ Seg16.relationRow5762 rho ∧ Seg16.relationRow5763 rho ∧ Seg16.relationRow5764 rho ∧ Seg16.relationRow5765 rho ∧ Seg16.relationRow5766 rho ∧ Seg16.relationRow5767 rho ∧ Seg16.relationRow5768 rho := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p71, p72, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart71 at p71
  rcases p71 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5755, r5756, r5757, r5758, r5759⟩
  unfold Seg16.relationPart72 at p72
  rcases p72 with ⟨r5760, r5761, r5762, r5763, r5764, r5765, r5766, r5767, r5768, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5755, r5756, r5757, r5758, r5759, r5760, r5761, r5762, r5763, r5764, r5765, r5766, r5767, r5768⟩

theorem seg16_rung210 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15502 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX210 rho : Seg16.F), (seg16AccY210 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18325 : Seg16.F), (rho 18326 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX210 rho : Seg16.F), (seg16AccY210 rho : Seg16.F)⟩
        ⟨(rho 18325 : Seg16.F), (rho 18326 : Seg16.F)⟩
        ⟨(seg16AccX211 rho : Seg16.F), (seg16AccY211 rho : Seg16.F)⟩
        ⟨(rho 18339 : Seg16.F), (rho 18340 : Seg16.F)⟩ := by
  obtain ⟨r5755, r5756, r5757, r5758, r5759, r5760, r5761, r5762, r5763, r5764, r5765, r5766, r5767, r5768⟩ := seg16_rows210 rho h
  unfold Seg16.relationRow5755 at r5755
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5755
  unfold Seg16.relationRow5756 at r5756
  unfold Seg16.relationRow5757 at r5757
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5757
  unfold Seg16.relationRow5758 at r5758
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5758
  unfold Seg16.relationRow5759 at r5759
  unfold Seg16.relationRow5760 at r5760
  unfold Seg16.relationRow5761 at r5761
  unfold Seg16.relationRow5762 at r5762
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5762
  unfold Seg16.relationRow5763 at r5763
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5763
  unfold Seg16.relationRow5764 at r5764
  unfold Seg16.relationRow5765 at r5765
  unfold Seg16.relationRow5766 at r5766
  unfold Seg16.relationRow5767 at r5767
  unfold Seg16.relationRow5768 at r5768
  have hrung210 (bit : Bool) (hbit : rho 15502 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX210 rho : Seg16.F), (seg16AccY210 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18325 : Seg16.F), (rho 18326 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX210 rho : Seg16.F), (seg16AccY210 rho : Seg16.F)⟩
        ⟨(rho 18325 : Seg16.F), (rho 18326 : Seg16.F)⟩
        ⟨(seg16AccX211 rho : Seg16.F), (seg16AccY211 rho : Seg16.F)⟩
        ⟨(rho 18339 : Seg16.F), (rho 18340 : Seg16.F)⟩ := by
    have hnextx : seg16AccX211 rho = seg16AccX210 rho + rho 18334 := by
      unfold seg16AccX211 seg16AccX210
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 60]
      ring
    have hnexty : seg16AccY211 rho = seg16AccY210 rho + rho 18335 := by
      unfold seg16AccY211 seg16AccY210
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 60]
      ring
    have hsum : seg16AccX210 rho + seg16AccY210 rho = rho 18327 := by
      unfold seg16AccX210 seg16AccY210
      linear_combination r5755
    have ha0 : (rho 18325 + rho 18326) * (seg16AccX210 rho + seg16AccY210 rho) = rho 18328 := by
      rw [hsum]
      linear_combination r5756
    have ha1 : rho 18326 * seg16AccX210 rho = rho 18329 := by
      unfold seg16AccX210
      linear_combination r5757
    have ha2 : rho 18325 * seg16AccY210 rho = rho 18330 := by
      unfold seg16AccY210
      linear_combination r5758
    have ha3 : 3021 * rho 18329 * rho 18330 = rho 18331 := by
      linear_combination r5759
    have ha4 : rho 18332 * (1 + rho 18331) = rho 18329 + rho 18330 := by
      linear_combination r5760
    have ha5 : rho 18333 * (1 - rho 18331) = rho 18328 - rho 18329 - rho 18330 := by
      linear_combination r5761
    have haddx :
        rho 18332 * (1 + 3021 * (rho 18326 * seg16AccX210 rho) * (rho 18325 * seg16AccY210 rho)) =
          rho 18326 * seg16AccX210 rho + rho 18325 * seg16AccY210 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18333 * (1 - 3021 * (rho 18326 * seg16AccX210 rho) * (rho 18325 * seg16AccY210 rho)) =
          (-1) * (rho 18326 * seg16AccX210 rho) - rho 18325 * seg16AccY210 rho +
            (seg16AccY210 rho - seg16AccX210 rho * (-1)) * (rho 18325 + rho 18326) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18333 * (1 - rho 18331) = rho 18328 - rho 18329 - rho 18330 := ha5
        _ = (-1) * rho 18329 - rho 18330 + (seg16AccY210 rho - seg16AccX210 rho * (-1)) * (rho 18325 + rho 18326) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX211 rho = seg16AccX210 rho - Bool.toZMod bit * (seg16AccX210 rho - rho 18332) := by
      have hd : rho 18334 = Bool.toZMod bit * (rho 18332 - seg16AccX210 rho) := by
        rw [← hbit]
        unfold seg16AccX210
        linear_combination -r5762
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY211 rho = seg16AccY210 rho - Bool.toZMod bit * (seg16AccY210 rho - rho 18333) := by
      have hd : rho 18335 = Bool.toZMod bit * (rho 18333 - seg16AccY210 rho) := by
        rw [← hbit]
        unfold seg16AccY210
        linear_combination -r5763
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 18325 * rho 18326 = rho 18336 := by linear_combination r5764
    have hd1 : rho 18325 * rho 18325 = rho 18337 := by linear_combination r5765
    have hd2 : rho 18326 * rho 18326 = rho 18338 := by linear_combination r5766
    have hd3 : rho 18339 * (rho 18326 * rho 18326 + rho 18325 * rho 18325 * (-1)) = 2 * (rho 18325 * rho 18326) := by
      rw [hd0, hd1, hd2]
      linear_combination r5767
    have hd4 : rho 18340 * (2 - (rho 18326 * rho 18326 + rho 18325 * rho 18325 * (-1))) = rho 18326 * rho 18326 - rho 18325 * rho 18325 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5768
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX210 rho : Seg16.F), (seg16AccY210 rho : Seg16.F)⟩
      ⟨(rho 18325 : Seg16.F), (rho 18326 : Seg16.F)⟩
      ⟨(rho 18332 : Seg16.F), (rho 18333 : Seg16.F)⟩
      ⟨(seg16AccX211 rho : Seg16.F), (seg16AccY211 rho : Seg16.F)⟩
      ⟨(rho 18339 : Seg16.F), (rho 18340 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung210

theorem seg16_rows211 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow5769 rho ∧ Seg16.relationRow5770 rho ∧ Seg16.relationRow5771 rho ∧ Seg16.relationRow5772 rho ∧ Seg16.relationRow5773 rho ∧ Seg16.relationRow5774 rho ∧ Seg16.relationRow5775 rho ∧ Seg16.relationRow5776 rho ∧ Seg16.relationRow5777 rho ∧ Seg16.relationRow5778 rho ∧ Seg16.relationRow5779 rho ∧ Seg16.relationRow5780 rho ∧ Seg16.relationRow5781 rho ∧ Seg16.relationRow5782 rho := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p72, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart72 at p72
  rcases p72 with ⟨_, _, _, _, _, _, _, _, _, r5769, r5770, r5771, r5772, r5773, r5774, r5775, r5776, r5777, r5778, r5779, r5780, r5781, r5782, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5769, r5770, r5771, r5772, r5773, r5774, r5775, r5776, r5777, r5778, r5779, r5780, r5781, r5782⟩

theorem seg16_rung211 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15503 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX211 rho : Seg16.F), (seg16AccY211 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18339 : Seg16.F), (rho 18340 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX211 rho : Seg16.F), (seg16AccY211 rho : Seg16.F)⟩
        ⟨(rho 18339 : Seg16.F), (rho 18340 : Seg16.F)⟩
        ⟨(seg16AccX212 rho : Seg16.F), (seg16AccY212 rho : Seg16.F)⟩
        ⟨(rho 18353 : Seg16.F), (rho 18354 : Seg16.F)⟩ := by
  obtain ⟨r5769, r5770, r5771, r5772, r5773, r5774, r5775, r5776, r5777, r5778, r5779, r5780, r5781, r5782⟩ := seg16_rows211 rho h
  unfold Seg16.relationRow5769 at r5769
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5769
  unfold Seg16.relationRow5770 at r5770
  unfold Seg16.relationRow5771 at r5771
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5771
  unfold Seg16.relationRow5772 at r5772
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5772
  unfold Seg16.relationRow5773 at r5773
  unfold Seg16.relationRow5774 at r5774
  unfold Seg16.relationRow5775 at r5775
  unfold Seg16.relationRow5776 at r5776
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5776
  unfold Seg16.relationRow5777 at r5777
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5777
  unfold Seg16.relationRow5778 at r5778
  unfold Seg16.relationRow5779 at r5779
  unfold Seg16.relationRow5780 at r5780
  unfold Seg16.relationRow5781 at r5781
  unfold Seg16.relationRow5782 at r5782
  have hrung211 (bit : Bool) (hbit : rho 15503 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX211 rho : Seg16.F), (seg16AccY211 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18339 : Seg16.F), (rho 18340 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX211 rho : Seg16.F), (seg16AccY211 rho : Seg16.F)⟩
        ⟨(rho 18339 : Seg16.F), (rho 18340 : Seg16.F)⟩
        ⟨(seg16AccX212 rho : Seg16.F), (seg16AccY212 rho : Seg16.F)⟩
        ⟨(rho 18353 : Seg16.F), (rho 18354 : Seg16.F)⟩ := by
    have hnextx : seg16AccX212 rho = seg16AccX211 rho + rho 18348 := by
      unfold seg16AccX212 seg16AccX211
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 61]
      ring
    have hnexty : seg16AccY212 rho = seg16AccY211 rho + rho 18349 := by
      unfold seg16AccY212 seg16AccY211
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 61]
      ring
    have hsum : seg16AccX211 rho + seg16AccY211 rho = rho 18341 := by
      unfold seg16AccX211 seg16AccY211
      linear_combination r5769
    have ha0 : (rho 18339 + rho 18340) * (seg16AccX211 rho + seg16AccY211 rho) = rho 18342 := by
      rw [hsum]
      linear_combination r5770
    have ha1 : rho 18340 * seg16AccX211 rho = rho 18343 := by
      unfold seg16AccX211
      linear_combination r5771
    have ha2 : rho 18339 * seg16AccY211 rho = rho 18344 := by
      unfold seg16AccY211
      linear_combination r5772
    have ha3 : 3021 * rho 18343 * rho 18344 = rho 18345 := by
      linear_combination r5773
    have ha4 : rho 18346 * (1 + rho 18345) = rho 18343 + rho 18344 := by
      linear_combination r5774
    have ha5 : rho 18347 * (1 - rho 18345) = rho 18342 - rho 18343 - rho 18344 := by
      linear_combination r5775
    have haddx :
        rho 18346 * (1 + 3021 * (rho 18340 * seg16AccX211 rho) * (rho 18339 * seg16AccY211 rho)) =
          rho 18340 * seg16AccX211 rho + rho 18339 * seg16AccY211 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18347 * (1 - 3021 * (rho 18340 * seg16AccX211 rho) * (rho 18339 * seg16AccY211 rho)) =
          (-1) * (rho 18340 * seg16AccX211 rho) - rho 18339 * seg16AccY211 rho +
            (seg16AccY211 rho - seg16AccX211 rho * (-1)) * (rho 18339 + rho 18340) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18347 * (1 - rho 18345) = rho 18342 - rho 18343 - rho 18344 := ha5
        _ = (-1) * rho 18343 - rho 18344 + (seg16AccY211 rho - seg16AccX211 rho * (-1)) * (rho 18339 + rho 18340) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX212 rho = seg16AccX211 rho - Bool.toZMod bit * (seg16AccX211 rho - rho 18346) := by
      have hd : rho 18348 = Bool.toZMod bit * (rho 18346 - seg16AccX211 rho) := by
        rw [← hbit]
        unfold seg16AccX211
        linear_combination -r5776
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY212 rho = seg16AccY211 rho - Bool.toZMod bit * (seg16AccY211 rho - rho 18347) := by
      have hd : rho 18349 = Bool.toZMod bit * (rho 18347 - seg16AccY211 rho) := by
        rw [← hbit]
        unfold seg16AccY211
        linear_combination -r5777
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 18339 * rho 18340 = rho 18350 := by linear_combination r5778
    have hd1 : rho 18339 * rho 18339 = rho 18351 := by linear_combination r5779
    have hd2 : rho 18340 * rho 18340 = rho 18352 := by linear_combination r5780
    have hd3 : rho 18353 * (rho 18340 * rho 18340 + rho 18339 * rho 18339 * (-1)) = 2 * (rho 18339 * rho 18340) := by
      rw [hd0, hd1, hd2]
      linear_combination r5781
    have hd4 : rho 18354 * (2 - (rho 18340 * rho 18340 + rho 18339 * rho 18339 * (-1))) = rho 18340 * rho 18340 - rho 18339 * rho 18339 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5782
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX211 rho : Seg16.F), (seg16AccY211 rho : Seg16.F)⟩
      ⟨(rho 18339 : Seg16.F), (rho 18340 : Seg16.F)⟩
      ⟨(rho 18346 : Seg16.F), (rho 18347 : Seg16.F)⟩
      ⟨(seg16AccX212 rho : Seg16.F), (seg16AccY212 rho : Seg16.F)⟩
      ⟨(rho 18353 : Seg16.F), (rho 18354 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung211

theorem seg16_rows212 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow5783 rho ∧ Seg16.relationRow5784 rho ∧ Seg16.relationRow5785 rho ∧ Seg16.relationRow5786 rho ∧ Seg16.relationRow5787 rho ∧ Seg16.relationRow5788 rho ∧ Seg16.relationRow5789 rho ∧ Seg16.relationRow5790 rho ∧ Seg16.relationRow5791 rho ∧ Seg16.relationRow5792 rho ∧ Seg16.relationRow5793 rho ∧ Seg16.relationRow5794 rho ∧ Seg16.relationRow5795 rho ∧ Seg16.relationRow5796 rho := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p72, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart72 at p72
  rcases p72 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5783, r5784, r5785, r5786, r5787, r5788, r5789, r5790, r5791, r5792, r5793, r5794, r5795, r5796, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5783, r5784, r5785, r5786, r5787, r5788, r5789, r5790, r5791, r5792, r5793, r5794, r5795, r5796⟩

theorem seg16_rung212 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15504 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX212 rho : Seg16.F), (seg16AccY212 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18353 : Seg16.F), (rho 18354 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX212 rho : Seg16.F), (seg16AccY212 rho : Seg16.F)⟩
        ⟨(rho 18353 : Seg16.F), (rho 18354 : Seg16.F)⟩
        ⟨(seg16AccX213 rho : Seg16.F), (seg16AccY213 rho : Seg16.F)⟩
        ⟨(rho 18367 : Seg16.F), (rho 18368 : Seg16.F)⟩ := by
  obtain ⟨r5783, r5784, r5785, r5786, r5787, r5788, r5789, r5790, r5791, r5792, r5793, r5794, r5795, r5796⟩ := seg16_rows212 rho h
  unfold Seg16.relationRow5783 at r5783
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5783
  unfold Seg16.relationRow5784 at r5784
  unfold Seg16.relationRow5785 at r5785
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5785
  unfold Seg16.relationRow5786 at r5786
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5786
  unfold Seg16.relationRow5787 at r5787
  unfold Seg16.relationRow5788 at r5788
  unfold Seg16.relationRow5789 at r5789
  unfold Seg16.relationRow5790 at r5790
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5790
  unfold Seg16.relationRow5791 at r5791
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5791
  unfold Seg16.relationRow5792 at r5792
  unfold Seg16.relationRow5793 at r5793
  unfold Seg16.relationRow5794 at r5794
  unfold Seg16.relationRow5795 at r5795
  unfold Seg16.relationRow5796 at r5796
  have hrung212 (bit : Bool) (hbit : rho 15504 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX212 rho : Seg16.F), (seg16AccY212 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18353 : Seg16.F), (rho 18354 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX212 rho : Seg16.F), (seg16AccY212 rho : Seg16.F)⟩
        ⟨(rho 18353 : Seg16.F), (rho 18354 : Seg16.F)⟩
        ⟨(seg16AccX213 rho : Seg16.F), (seg16AccY213 rho : Seg16.F)⟩
        ⟨(rho 18367 : Seg16.F), (rho 18368 : Seg16.F)⟩ := by
    have hnextx : seg16AccX213 rho = seg16AccX212 rho + rho 18362 := by
      unfold seg16AccX213 seg16AccX212
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 62]
      ring
    have hnexty : seg16AccY213 rho = seg16AccY212 rho + rho 18363 := by
      unfold seg16AccY213 seg16AccY212
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 62]
      ring
    have hsum : seg16AccX212 rho + seg16AccY212 rho = rho 18355 := by
      unfold seg16AccX212 seg16AccY212
      linear_combination r5783
    have ha0 : (rho 18353 + rho 18354) * (seg16AccX212 rho + seg16AccY212 rho) = rho 18356 := by
      rw [hsum]
      linear_combination r5784
    have ha1 : rho 18354 * seg16AccX212 rho = rho 18357 := by
      unfold seg16AccX212
      linear_combination r5785
    have ha2 : rho 18353 * seg16AccY212 rho = rho 18358 := by
      unfold seg16AccY212
      linear_combination r5786
    have ha3 : 3021 * rho 18357 * rho 18358 = rho 18359 := by
      linear_combination r5787
    have ha4 : rho 18360 * (1 + rho 18359) = rho 18357 + rho 18358 := by
      linear_combination r5788
    have ha5 : rho 18361 * (1 - rho 18359) = rho 18356 - rho 18357 - rho 18358 := by
      linear_combination r5789
    have haddx :
        rho 18360 * (1 + 3021 * (rho 18354 * seg16AccX212 rho) * (rho 18353 * seg16AccY212 rho)) =
          rho 18354 * seg16AccX212 rho + rho 18353 * seg16AccY212 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18361 * (1 - 3021 * (rho 18354 * seg16AccX212 rho) * (rho 18353 * seg16AccY212 rho)) =
          (-1) * (rho 18354 * seg16AccX212 rho) - rho 18353 * seg16AccY212 rho +
            (seg16AccY212 rho - seg16AccX212 rho * (-1)) * (rho 18353 + rho 18354) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18361 * (1 - rho 18359) = rho 18356 - rho 18357 - rho 18358 := ha5
        _ = (-1) * rho 18357 - rho 18358 + (seg16AccY212 rho - seg16AccX212 rho * (-1)) * (rho 18353 + rho 18354) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX213 rho = seg16AccX212 rho - Bool.toZMod bit * (seg16AccX212 rho - rho 18360) := by
      have hd : rho 18362 = Bool.toZMod bit * (rho 18360 - seg16AccX212 rho) := by
        rw [← hbit]
        unfold seg16AccX212
        linear_combination -r5790
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY213 rho = seg16AccY212 rho - Bool.toZMod bit * (seg16AccY212 rho - rho 18361) := by
      have hd : rho 18363 = Bool.toZMod bit * (rho 18361 - seg16AccY212 rho) := by
        rw [← hbit]
        unfold seg16AccY212
        linear_combination -r5791
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 18353 * rho 18354 = rho 18364 := by linear_combination r5792
    have hd1 : rho 18353 * rho 18353 = rho 18365 := by linear_combination r5793
    have hd2 : rho 18354 * rho 18354 = rho 18366 := by linear_combination r5794
    have hd3 : rho 18367 * (rho 18354 * rho 18354 + rho 18353 * rho 18353 * (-1)) = 2 * (rho 18353 * rho 18354) := by
      rw [hd0, hd1, hd2]
      linear_combination r5795
    have hd4 : rho 18368 * (2 - (rho 18354 * rho 18354 + rho 18353 * rho 18353 * (-1))) = rho 18354 * rho 18354 - rho 18353 * rho 18353 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5796
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX212 rho : Seg16.F), (seg16AccY212 rho : Seg16.F)⟩
      ⟨(rho 18353 : Seg16.F), (rho 18354 : Seg16.F)⟩
      ⟨(rho 18360 : Seg16.F), (rho 18361 : Seg16.F)⟩
      ⟨(seg16AccX213 rho : Seg16.F), (seg16AccY213 rho : Seg16.F)⟩
      ⟨(rho 18367 : Seg16.F), (rho 18368 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung212

theorem seg16_rows213 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow5797 rho ∧ Seg16.relationRow5798 rho ∧ Seg16.relationRow5799 rho ∧ Seg16.relationRow5800 rho ∧ Seg16.relationRow5801 rho ∧ Seg16.relationRow5802 rho ∧ Seg16.relationRow5803 rho ∧ Seg16.relationRow5804 rho ∧ Seg16.relationRow5805 rho ∧ Seg16.relationRow5806 rho ∧ Seg16.relationRow5807 rho ∧ Seg16.relationRow5808 rho ∧ Seg16.relationRow5809 rho ∧ Seg16.relationRow5810 rho := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p72, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart72 at p72
  rcases p72 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5797, r5798, r5799, r5800, r5801, r5802, r5803, r5804, r5805, r5806, r5807, r5808, r5809, r5810, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5797, r5798, r5799, r5800, r5801, r5802, r5803, r5804, r5805, r5806, r5807, r5808, r5809, r5810⟩

theorem seg16_rung213 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15505 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX213 rho : Seg16.F), (seg16AccY213 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18367 : Seg16.F), (rho 18368 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX213 rho : Seg16.F), (seg16AccY213 rho : Seg16.F)⟩
        ⟨(rho 18367 : Seg16.F), (rho 18368 : Seg16.F)⟩
        ⟨(seg16AccX214 rho : Seg16.F), (seg16AccY214 rho : Seg16.F)⟩
        ⟨(rho 18381 : Seg16.F), (rho 18382 : Seg16.F)⟩ := by
  obtain ⟨r5797, r5798, r5799, r5800, r5801, r5802, r5803, r5804, r5805, r5806, r5807, r5808, r5809, r5810⟩ := seg16_rows213 rho h
  unfold Seg16.relationRow5797 at r5797
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5797
  unfold Seg16.relationRow5798 at r5798
  unfold Seg16.relationRow5799 at r5799
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5799
  unfold Seg16.relationRow5800 at r5800
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5800
  unfold Seg16.relationRow5801 at r5801
  unfold Seg16.relationRow5802 at r5802
  unfold Seg16.relationRow5803 at r5803
  unfold Seg16.relationRow5804 at r5804
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5804
  unfold Seg16.relationRow5805 at r5805
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5805
  unfold Seg16.relationRow5806 at r5806
  unfold Seg16.relationRow5807 at r5807
  unfold Seg16.relationRow5808 at r5808
  unfold Seg16.relationRow5809 at r5809
  unfold Seg16.relationRow5810 at r5810
  have hrung213 (bit : Bool) (hbit : rho 15505 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX213 rho : Seg16.F), (seg16AccY213 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18367 : Seg16.F), (rho 18368 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX213 rho : Seg16.F), (seg16AccY213 rho : Seg16.F)⟩
        ⟨(rho 18367 : Seg16.F), (rho 18368 : Seg16.F)⟩
        ⟨(seg16AccX214 rho : Seg16.F), (seg16AccY214 rho : Seg16.F)⟩
        ⟨(rho 18381 : Seg16.F), (rho 18382 : Seg16.F)⟩ := by
    have hnextx : seg16AccX214 rho = seg16AccX213 rho + rho 18376 := by
      unfold seg16AccX214 seg16AccX213
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 63]
      ring
    have hnexty : seg16AccY214 rho = seg16AccY213 rho + rho 18377 := by
      unfold seg16AccY214 seg16AccY213
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 63]
      ring
    have hsum : seg16AccX213 rho + seg16AccY213 rho = rho 18369 := by
      unfold seg16AccX213 seg16AccY213
      linear_combination r5797
    have ha0 : (rho 18367 + rho 18368) * (seg16AccX213 rho + seg16AccY213 rho) = rho 18370 := by
      rw [hsum]
      linear_combination r5798
    have ha1 : rho 18368 * seg16AccX213 rho = rho 18371 := by
      unfold seg16AccX213
      linear_combination r5799
    have ha2 : rho 18367 * seg16AccY213 rho = rho 18372 := by
      unfold seg16AccY213
      linear_combination r5800
    have ha3 : 3021 * rho 18371 * rho 18372 = rho 18373 := by
      linear_combination r5801
    have ha4 : rho 18374 * (1 + rho 18373) = rho 18371 + rho 18372 := by
      linear_combination r5802
    have ha5 : rho 18375 * (1 - rho 18373) = rho 18370 - rho 18371 - rho 18372 := by
      linear_combination r5803
    have haddx :
        rho 18374 * (1 + 3021 * (rho 18368 * seg16AccX213 rho) * (rho 18367 * seg16AccY213 rho)) =
          rho 18368 * seg16AccX213 rho + rho 18367 * seg16AccY213 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18375 * (1 - 3021 * (rho 18368 * seg16AccX213 rho) * (rho 18367 * seg16AccY213 rho)) =
          (-1) * (rho 18368 * seg16AccX213 rho) - rho 18367 * seg16AccY213 rho +
            (seg16AccY213 rho - seg16AccX213 rho * (-1)) * (rho 18367 + rho 18368) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18375 * (1 - rho 18373) = rho 18370 - rho 18371 - rho 18372 := ha5
        _ = (-1) * rho 18371 - rho 18372 + (seg16AccY213 rho - seg16AccX213 rho * (-1)) * (rho 18367 + rho 18368) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX214 rho = seg16AccX213 rho - Bool.toZMod bit * (seg16AccX213 rho - rho 18374) := by
      have hd : rho 18376 = Bool.toZMod bit * (rho 18374 - seg16AccX213 rho) := by
        rw [← hbit]
        unfold seg16AccX213
        linear_combination -r5804
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY214 rho = seg16AccY213 rho - Bool.toZMod bit * (seg16AccY213 rho - rho 18375) := by
      have hd : rho 18377 = Bool.toZMod bit * (rho 18375 - seg16AccY213 rho) := by
        rw [← hbit]
        unfold seg16AccY213
        linear_combination -r5805
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 18367 * rho 18368 = rho 18378 := by linear_combination r5806
    have hd1 : rho 18367 * rho 18367 = rho 18379 := by linear_combination r5807
    have hd2 : rho 18368 * rho 18368 = rho 18380 := by linear_combination r5808
    have hd3 : rho 18381 * (rho 18368 * rho 18368 + rho 18367 * rho 18367 * (-1)) = 2 * (rho 18367 * rho 18368) := by
      rw [hd0, hd1, hd2]
      linear_combination r5809
    have hd4 : rho 18382 * (2 - (rho 18368 * rho 18368 + rho 18367 * rho 18367 * (-1))) = rho 18368 * rho 18368 - rho 18367 * rho 18367 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5810
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX213 rho : Seg16.F), (seg16AccY213 rho : Seg16.F)⟩
      ⟨(rho 18367 : Seg16.F), (rho 18368 : Seg16.F)⟩
      ⟨(rho 18374 : Seg16.F), (rho 18375 : Seg16.F)⟩
      ⟨(seg16AccX214 rho : Seg16.F), (seg16AccY214 rho : Seg16.F)⟩
      ⟨(rho 18381 : Seg16.F), (rho 18382 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung213

theorem seg16_rows214 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow5811 rho ∧ Seg16.relationRow5812 rho ∧ Seg16.relationRow5813 rho ∧ Seg16.relationRow5814 rho ∧ Seg16.relationRow5815 rho ∧ Seg16.relationRow5816 rho ∧ Seg16.relationRow5817 rho ∧ Seg16.relationRow5818 rho ∧ Seg16.relationRow5819 rho ∧ Seg16.relationRow5820 rho ∧ Seg16.relationRow5821 rho ∧ Seg16.relationRow5822 rho ∧ Seg16.relationRow5823 rho ∧ Seg16.relationRow5824 rho := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p72, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart72 at p72
  rcases p72 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5811, r5812, r5813, r5814, r5815, r5816, r5817, r5818, r5819, r5820, r5821, r5822, r5823, r5824, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5811, r5812, r5813, r5814, r5815, r5816, r5817, r5818, r5819, r5820, r5821, r5822, r5823, r5824⟩

theorem seg16_rung214 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15506 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX214 rho : Seg16.F), (seg16AccY214 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18381 : Seg16.F), (rho 18382 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX214 rho : Seg16.F), (seg16AccY214 rho : Seg16.F)⟩
        ⟨(rho 18381 : Seg16.F), (rho 18382 : Seg16.F)⟩
        ⟨(seg16AccX215 rho : Seg16.F), (seg16AccY215 rho : Seg16.F)⟩
        ⟨(rho 18395 : Seg16.F), (rho 18396 : Seg16.F)⟩ := by
  obtain ⟨r5811, r5812, r5813, r5814, r5815, r5816, r5817, r5818, r5819, r5820, r5821, r5822, r5823, r5824⟩ := seg16_rows214 rho h
  unfold Seg16.relationRow5811 at r5811
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5811
  unfold Seg16.relationRow5812 at r5812
  unfold Seg16.relationRow5813 at r5813
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5813
  unfold Seg16.relationRow5814 at r5814
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5814
  unfold Seg16.relationRow5815 at r5815
  unfold Seg16.relationRow5816 at r5816
  unfold Seg16.relationRow5817 at r5817
  unfold Seg16.relationRow5818 at r5818
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5818
  unfold Seg16.relationRow5819 at r5819
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5819
  unfold Seg16.relationRow5820 at r5820
  unfold Seg16.relationRow5821 at r5821
  unfold Seg16.relationRow5822 at r5822
  unfold Seg16.relationRow5823 at r5823
  unfold Seg16.relationRow5824 at r5824
  have hrung214 (bit : Bool) (hbit : rho 15506 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX214 rho : Seg16.F), (seg16AccY214 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18381 : Seg16.F), (rho 18382 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX214 rho : Seg16.F), (seg16AccY214 rho : Seg16.F)⟩
        ⟨(rho 18381 : Seg16.F), (rho 18382 : Seg16.F)⟩
        ⟨(seg16AccX215 rho : Seg16.F), (seg16AccY215 rho : Seg16.F)⟩
        ⟨(rho 18395 : Seg16.F), (rho 18396 : Seg16.F)⟩ := by
    have hnextx : seg16AccX215 rho = seg16AccX214 rho + rho 18390 := by
      unfold seg16AccX215 seg16AccX214
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 64]
      ring
    have hnexty : seg16AccY215 rho = seg16AccY214 rho + rho 18391 := by
      unfold seg16AccY215 seg16AccY214
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 64]
      ring
    have hsum : seg16AccX214 rho + seg16AccY214 rho = rho 18383 := by
      unfold seg16AccX214 seg16AccY214
      linear_combination r5811
    have ha0 : (rho 18381 + rho 18382) * (seg16AccX214 rho + seg16AccY214 rho) = rho 18384 := by
      rw [hsum]
      linear_combination r5812
    have ha1 : rho 18382 * seg16AccX214 rho = rho 18385 := by
      unfold seg16AccX214
      linear_combination r5813
    have ha2 : rho 18381 * seg16AccY214 rho = rho 18386 := by
      unfold seg16AccY214
      linear_combination r5814
    have ha3 : 3021 * rho 18385 * rho 18386 = rho 18387 := by
      linear_combination r5815
    have ha4 : rho 18388 * (1 + rho 18387) = rho 18385 + rho 18386 := by
      linear_combination r5816
    have ha5 : rho 18389 * (1 - rho 18387) = rho 18384 - rho 18385 - rho 18386 := by
      linear_combination r5817
    have haddx :
        rho 18388 * (1 + 3021 * (rho 18382 * seg16AccX214 rho) * (rho 18381 * seg16AccY214 rho)) =
          rho 18382 * seg16AccX214 rho + rho 18381 * seg16AccY214 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18389 * (1 - 3021 * (rho 18382 * seg16AccX214 rho) * (rho 18381 * seg16AccY214 rho)) =
          (-1) * (rho 18382 * seg16AccX214 rho) - rho 18381 * seg16AccY214 rho +
            (seg16AccY214 rho - seg16AccX214 rho * (-1)) * (rho 18381 + rho 18382) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18389 * (1 - rho 18387) = rho 18384 - rho 18385 - rho 18386 := ha5
        _ = (-1) * rho 18385 - rho 18386 + (seg16AccY214 rho - seg16AccX214 rho * (-1)) * (rho 18381 + rho 18382) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX215 rho = seg16AccX214 rho - Bool.toZMod bit * (seg16AccX214 rho - rho 18388) := by
      have hd : rho 18390 = Bool.toZMod bit * (rho 18388 - seg16AccX214 rho) := by
        rw [← hbit]
        unfold seg16AccX214
        linear_combination -r5818
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY215 rho = seg16AccY214 rho - Bool.toZMod bit * (seg16AccY214 rho - rho 18389) := by
      have hd : rho 18391 = Bool.toZMod bit * (rho 18389 - seg16AccY214 rho) := by
        rw [← hbit]
        unfold seg16AccY214
        linear_combination -r5819
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 18381 * rho 18382 = rho 18392 := by linear_combination r5820
    have hd1 : rho 18381 * rho 18381 = rho 18393 := by linear_combination r5821
    have hd2 : rho 18382 * rho 18382 = rho 18394 := by linear_combination r5822
    have hd3 : rho 18395 * (rho 18382 * rho 18382 + rho 18381 * rho 18381 * (-1)) = 2 * (rho 18381 * rho 18382) := by
      rw [hd0, hd1, hd2]
      linear_combination r5823
    have hd4 : rho 18396 * (2 - (rho 18382 * rho 18382 + rho 18381 * rho 18381 * (-1))) = rho 18382 * rho 18382 - rho 18381 * rho 18381 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5824
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX214 rho : Seg16.F), (seg16AccY214 rho : Seg16.F)⟩
      ⟨(rho 18381 : Seg16.F), (rho 18382 : Seg16.F)⟩
      ⟨(rho 18388 : Seg16.F), (rho 18389 : Seg16.F)⟩
      ⟨(seg16AccX215 rho : Seg16.F), (seg16AccY215 rho : Seg16.F)⟩
      ⟨(rho 18395 : Seg16.F), (rho 18396 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung214

theorem seg16_rows215 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow5825 rho ∧ Seg16.relationRow5826 rho ∧ Seg16.relationRow5827 rho ∧ Seg16.relationRow5828 rho ∧ Seg16.relationRow5829 rho ∧ Seg16.relationRow5830 rho ∧ Seg16.relationRow5831 rho ∧ Seg16.relationRow5832 rho ∧ Seg16.relationRow5833 rho ∧ Seg16.relationRow5834 rho ∧ Seg16.relationRow5835 rho ∧ Seg16.relationRow5836 rho ∧ Seg16.relationRow5837 rho ∧ Seg16.relationRow5838 rho := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p72, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart72 at p72
  rcases p72 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5825, r5826, r5827, r5828, r5829, r5830, r5831, r5832, r5833, r5834, r5835, r5836, r5837, r5838, _⟩
  exact ⟨r5825, r5826, r5827, r5828, r5829, r5830, r5831, r5832, r5833, r5834, r5835, r5836, r5837, r5838⟩

theorem seg16_rung215 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15507 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX215 rho : Seg16.F), (seg16AccY215 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18395 : Seg16.F), (rho 18396 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX215 rho : Seg16.F), (seg16AccY215 rho : Seg16.F)⟩
        ⟨(rho 18395 : Seg16.F), (rho 18396 : Seg16.F)⟩
        ⟨(seg16AccX216 rho : Seg16.F), (seg16AccY216 rho : Seg16.F)⟩
        ⟨(rho 18409 : Seg16.F), (rho 18410 : Seg16.F)⟩ := by
  obtain ⟨r5825, r5826, r5827, r5828, r5829, r5830, r5831, r5832, r5833, r5834, r5835, r5836, r5837, r5838⟩ := seg16_rows215 rho h
  unfold Seg16.relationRow5825 at r5825
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5825
  unfold Seg16.relationRow5826 at r5826
  unfold Seg16.relationRow5827 at r5827
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5827
  unfold Seg16.relationRow5828 at r5828
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5828
  unfold Seg16.relationRow5829 at r5829
  unfold Seg16.relationRow5830 at r5830
  unfold Seg16.relationRow5831 at r5831
  unfold Seg16.relationRow5832 at r5832
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5832
  unfold Seg16.relationRow5833 at r5833
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5833
  unfold Seg16.relationRow5834 at r5834
  unfold Seg16.relationRow5835 at r5835
  unfold Seg16.relationRow5836 at r5836
  unfold Seg16.relationRow5837 at r5837
  unfold Seg16.relationRow5838 at r5838
  have hrung215 (bit : Bool) (hbit : rho 15507 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX215 rho : Seg16.F), (seg16AccY215 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18395 : Seg16.F), (rho 18396 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX215 rho : Seg16.F), (seg16AccY215 rho : Seg16.F)⟩
        ⟨(rho 18395 : Seg16.F), (rho 18396 : Seg16.F)⟩
        ⟨(seg16AccX216 rho : Seg16.F), (seg16AccY216 rho : Seg16.F)⟩
        ⟨(rho 18409 : Seg16.F), (rho 18410 : Seg16.F)⟩ := by
    have hnextx : seg16AccX216 rho = seg16AccX215 rho + rho 18404 := by
      unfold seg16AccX216 seg16AccX215
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 65]
      ring
    have hnexty : seg16AccY216 rho = seg16AccY215 rho + rho 18405 := by
      unfold seg16AccY216 seg16AccY215
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 65]
      ring
    have hsum : seg16AccX215 rho + seg16AccY215 rho = rho 18397 := by
      unfold seg16AccX215 seg16AccY215
      linear_combination r5825
    have ha0 : (rho 18395 + rho 18396) * (seg16AccX215 rho + seg16AccY215 rho) = rho 18398 := by
      rw [hsum]
      linear_combination r5826
    have ha1 : rho 18396 * seg16AccX215 rho = rho 18399 := by
      unfold seg16AccX215
      linear_combination r5827
    have ha2 : rho 18395 * seg16AccY215 rho = rho 18400 := by
      unfold seg16AccY215
      linear_combination r5828
    have ha3 : 3021 * rho 18399 * rho 18400 = rho 18401 := by
      linear_combination r5829
    have ha4 : rho 18402 * (1 + rho 18401) = rho 18399 + rho 18400 := by
      linear_combination r5830
    have ha5 : rho 18403 * (1 - rho 18401) = rho 18398 - rho 18399 - rho 18400 := by
      linear_combination r5831
    have haddx :
        rho 18402 * (1 + 3021 * (rho 18396 * seg16AccX215 rho) * (rho 18395 * seg16AccY215 rho)) =
          rho 18396 * seg16AccX215 rho + rho 18395 * seg16AccY215 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18403 * (1 - 3021 * (rho 18396 * seg16AccX215 rho) * (rho 18395 * seg16AccY215 rho)) =
          (-1) * (rho 18396 * seg16AccX215 rho) - rho 18395 * seg16AccY215 rho +
            (seg16AccY215 rho - seg16AccX215 rho * (-1)) * (rho 18395 + rho 18396) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18403 * (1 - rho 18401) = rho 18398 - rho 18399 - rho 18400 := ha5
        _ = (-1) * rho 18399 - rho 18400 + (seg16AccY215 rho - seg16AccX215 rho * (-1)) * (rho 18395 + rho 18396) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX216 rho = seg16AccX215 rho - Bool.toZMod bit * (seg16AccX215 rho - rho 18402) := by
      have hd : rho 18404 = Bool.toZMod bit * (rho 18402 - seg16AccX215 rho) := by
        rw [← hbit]
        unfold seg16AccX215
        linear_combination -r5832
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY216 rho = seg16AccY215 rho - Bool.toZMod bit * (seg16AccY215 rho - rho 18403) := by
      have hd : rho 18405 = Bool.toZMod bit * (rho 18403 - seg16AccY215 rho) := by
        rw [← hbit]
        unfold seg16AccY215
        linear_combination -r5833
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 18395 * rho 18396 = rho 18406 := by linear_combination r5834
    have hd1 : rho 18395 * rho 18395 = rho 18407 := by linear_combination r5835
    have hd2 : rho 18396 * rho 18396 = rho 18408 := by linear_combination r5836
    have hd3 : rho 18409 * (rho 18396 * rho 18396 + rho 18395 * rho 18395 * (-1)) = 2 * (rho 18395 * rho 18396) := by
      rw [hd0, hd1, hd2]
      linear_combination r5837
    have hd4 : rho 18410 * (2 - (rho 18396 * rho 18396 + rho 18395 * rho 18395 * (-1))) = rho 18396 * rho 18396 - rho 18395 * rho 18395 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5838
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX215 rho : Seg16.F), (seg16AccY215 rho : Seg16.F)⟩
      ⟨(rho 18395 : Seg16.F), (rho 18396 : Seg16.F)⟩
      ⟨(rho 18402 : Seg16.F), (rho 18403 : Seg16.F)⟩
      ⟨(seg16AccX216 rho : Seg16.F), (seg16AccY216 rho : Seg16.F)⟩
      ⟨(rho 18409 : Seg16.F), (rho 18410 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung215

theorem seg16_rows216 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow5839 rho ∧ Seg16.relationRow5840 rho ∧ Seg16.relationRow5841 rho ∧ Seg16.relationRow5842 rho ∧ Seg16.relationRow5843 rho ∧ Seg16.relationRow5844 rho ∧ Seg16.relationRow5845 rho ∧ Seg16.relationRow5846 rho ∧ Seg16.relationRow5847 rho ∧ Seg16.relationRow5848 rho ∧ Seg16.relationRow5849 rho ∧ Seg16.relationRow5850 rho ∧ Seg16.relationRow5851 rho ∧ Seg16.relationRow5852 rho := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p72, p73, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart72 at p72
  rcases p72 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5839⟩
  unfold Seg16.relationPart73 at p73
  rcases p73 with ⟨r5840, r5841, r5842, r5843, r5844, r5845, r5846, r5847, r5848, r5849, r5850, r5851, r5852, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5839, r5840, r5841, r5842, r5843, r5844, r5845, r5846, r5847, r5848, r5849, r5850, r5851, r5852⟩

theorem seg16_rung216 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15508 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX216 rho : Seg16.F), (seg16AccY216 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18409 : Seg16.F), (rho 18410 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX216 rho : Seg16.F), (seg16AccY216 rho : Seg16.F)⟩
        ⟨(rho 18409 : Seg16.F), (rho 18410 : Seg16.F)⟩
        ⟨(seg16AccX217 rho : Seg16.F), (seg16AccY217 rho : Seg16.F)⟩
        ⟨(rho 18423 : Seg16.F), (rho 18424 : Seg16.F)⟩ := by
  obtain ⟨r5839, r5840, r5841, r5842, r5843, r5844, r5845, r5846, r5847, r5848, r5849, r5850, r5851, r5852⟩ := seg16_rows216 rho h
  unfold Seg16.relationRow5839 at r5839
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5839
  unfold Seg16.relationRow5840 at r5840
  unfold Seg16.relationRow5841 at r5841
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5841
  unfold Seg16.relationRow5842 at r5842
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5842
  unfold Seg16.relationRow5843 at r5843
  unfold Seg16.relationRow5844 at r5844
  unfold Seg16.relationRow5845 at r5845
  unfold Seg16.relationRow5846 at r5846
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5846
  unfold Seg16.relationRow5847 at r5847
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5847
  unfold Seg16.relationRow5848 at r5848
  unfold Seg16.relationRow5849 at r5849
  unfold Seg16.relationRow5850 at r5850
  unfold Seg16.relationRow5851 at r5851
  unfold Seg16.relationRow5852 at r5852
  have hrung216 (bit : Bool) (hbit : rho 15508 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX216 rho : Seg16.F), (seg16AccY216 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18409 : Seg16.F), (rho 18410 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX216 rho : Seg16.F), (seg16AccY216 rho : Seg16.F)⟩
        ⟨(rho 18409 : Seg16.F), (rho 18410 : Seg16.F)⟩
        ⟨(seg16AccX217 rho : Seg16.F), (seg16AccY217 rho : Seg16.F)⟩
        ⟨(rho 18423 : Seg16.F), (rho 18424 : Seg16.F)⟩ := by
    have hnextx : seg16AccX217 rho = seg16AccX216 rho + rho 18418 := by
      unfold seg16AccX217 seg16AccX216
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 66]
      ring
    have hnexty : seg16AccY217 rho = seg16AccY216 rho + rho 18419 := by
      unfold seg16AccY217 seg16AccY216
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 66]
      ring
    have hsum : seg16AccX216 rho + seg16AccY216 rho = rho 18411 := by
      unfold seg16AccX216 seg16AccY216
      linear_combination r5839
    have ha0 : (rho 18409 + rho 18410) * (seg16AccX216 rho + seg16AccY216 rho) = rho 18412 := by
      rw [hsum]
      linear_combination r5840
    have ha1 : rho 18410 * seg16AccX216 rho = rho 18413 := by
      unfold seg16AccX216
      linear_combination r5841
    have ha2 : rho 18409 * seg16AccY216 rho = rho 18414 := by
      unfold seg16AccY216
      linear_combination r5842
    have ha3 : 3021 * rho 18413 * rho 18414 = rho 18415 := by
      linear_combination r5843
    have ha4 : rho 18416 * (1 + rho 18415) = rho 18413 + rho 18414 := by
      linear_combination r5844
    have ha5 : rho 18417 * (1 - rho 18415) = rho 18412 - rho 18413 - rho 18414 := by
      linear_combination r5845
    have haddx :
        rho 18416 * (1 + 3021 * (rho 18410 * seg16AccX216 rho) * (rho 18409 * seg16AccY216 rho)) =
          rho 18410 * seg16AccX216 rho + rho 18409 * seg16AccY216 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18417 * (1 - 3021 * (rho 18410 * seg16AccX216 rho) * (rho 18409 * seg16AccY216 rho)) =
          (-1) * (rho 18410 * seg16AccX216 rho) - rho 18409 * seg16AccY216 rho +
            (seg16AccY216 rho - seg16AccX216 rho * (-1)) * (rho 18409 + rho 18410) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18417 * (1 - rho 18415) = rho 18412 - rho 18413 - rho 18414 := ha5
        _ = (-1) * rho 18413 - rho 18414 + (seg16AccY216 rho - seg16AccX216 rho * (-1)) * (rho 18409 + rho 18410) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX217 rho = seg16AccX216 rho - Bool.toZMod bit * (seg16AccX216 rho - rho 18416) := by
      have hd : rho 18418 = Bool.toZMod bit * (rho 18416 - seg16AccX216 rho) := by
        rw [← hbit]
        unfold seg16AccX216
        linear_combination -r5846
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY217 rho = seg16AccY216 rho - Bool.toZMod bit * (seg16AccY216 rho - rho 18417) := by
      have hd : rho 18419 = Bool.toZMod bit * (rho 18417 - seg16AccY216 rho) := by
        rw [← hbit]
        unfold seg16AccY216
        linear_combination -r5847
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 18409 * rho 18410 = rho 18420 := by linear_combination r5848
    have hd1 : rho 18409 * rho 18409 = rho 18421 := by linear_combination r5849
    have hd2 : rho 18410 * rho 18410 = rho 18422 := by linear_combination r5850
    have hd3 : rho 18423 * (rho 18410 * rho 18410 + rho 18409 * rho 18409 * (-1)) = 2 * (rho 18409 * rho 18410) := by
      rw [hd0, hd1, hd2]
      linear_combination r5851
    have hd4 : rho 18424 * (2 - (rho 18410 * rho 18410 + rho 18409 * rho 18409 * (-1))) = rho 18410 * rho 18410 - rho 18409 * rho 18409 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5852
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX216 rho : Seg16.F), (seg16AccY216 rho : Seg16.F)⟩
      ⟨(rho 18409 : Seg16.F), (rho 18410 : Seg16.F)⟩
      ⟨(rho 18416 : Seg16.F), (rho 18417 : Seg16.F)⟩
      ⟨(seg16AccX217 rho : Seg16.F), (seg16AccY217 rho : Seg16.F)⟩
      ⟨(rho 18423 : Seg16.F), (rho 18424 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung216

theorem seg16_rows217 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow5853 rho ∧ Seg16.relationRow5854 rho ∧ Seg16.relationRow5855 rho ∧ Seg16.relationRow5856 rho ∧ Seg16.relationRow5857 rho ∧ Seg16.relationRow5858 rho ∧ Seg16.relationRow5859 rho ∧ Seg16.relationRow5860 rho ∧ Seg16.relationRow5861 rho ∧ Seg16.relationRow5862 rho ∧ Seg16.relationRow5863 rho ∧ Seg16.relationRow5864 rho ∧ Seg16.relationRow5865 rho ∧ Seg16.relationRow5866 rho := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p73, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart73 at p73
  rcases p73 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, r5853, r5854, r5855, r5856, r5857, r5858, r5859, r5860, r5861, r5862, r5863, r5864, r5865, r5866, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5853, r5854, r5855, r5856, r5857, r5858, r5859, r5860, r5861, r5862, r5863, r5864, r5865, r5866⟩

theorem seg16_rung217 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15509 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX217 rho : Seg16.F), (seg16AccY217 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18423 : Seg16.F), (rho 18424 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX217 rho : Seg16.F), (seg16AccY217 rho : Seg16.F)⟩
        ⟨(rho 18423 : Seg16.F), (rho 18424 : Seg16.F)⟩
        ⟨(seg16AccX218 rho : Seg16.F), (seg16AccY218 rho : Seg16.F)⟩
        ⟨(rho 18437 : Seg16.F), (rho 18438 : Seg16.F)⟩ := by
  obtain ⟨r5853, r5854, r5855, r5856, r5857, r5858, r5859, r5860, r5861, r5862, r5863, r5864, r5865, r5866⟩ := seg16_rows217 rho h
  unfold Seg16.relationRow5853 at r5853
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5853
  unfold Seg16.relationRow5854 at r5854
  unfold Seg16.relationRow5855 at r5855
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5855
  unfold Seg16.relationRow5856 at r5856
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5856
  unfold Seg16.relationRow5857 at r5857
  unfold Seg16.relationRow5858 at r5858
  unfold Seg16.relationRow5859 at r5859
  unfold Seg16.relationRow5860 at r5860
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5860
  unfold Seg16.relationRow5861 at r5861
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5861
  unfold Seg16.relationRow5862 at r5862
  unfold Seg16.relationRow5863 at r5863
  unfold Seg16.relationRow5864 at r5864
  unfold Seg16.relationRow5865 at r5865
  unfold Seg16.relationRow5866 at r5866
  have hrung217 (bit : Bool) (hbit : rho 15509 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX217 rho : Seg16.F), (seg16AccY217 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18423 : Seg16.F), (rho 18424 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX217 rho : Seg16.F), (seg16AccY217 rho : Seg16.F)⟩
        ⟨(rho 18423 : Seg16.F), (rho 18424 : Seg16.F)⟩
        ⟨(seg16AccX218 rho : Seg16.F), (seg16AccY218 rho : Seg16.F)⟩
        ⟨(rho 18437 : Seg16.F), (rho 18438 : Seg16.F)⟩ := by
    have hnextx : seg16AccX218 rho = seg16AccX217 rho + rho 18432 := by
      unfold seg16AccX218 seg16AccX217
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 67]
      ring
    have hnexty : seg16AccY218 rho = seg16AccY217 rho + rho 18433 := by
      unfold seg16AccY218 seg16AccY217
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 67]
      ring
    have hsum : seg16AccX217 rho + seg16AccY217 rho = rho 18425 := by
      unfold seg16AccX217 seg16AccY217
      linear_combination r5853
    have ha0 : (rho 18423 + rho 18424) * (seg16AccX217 rho + seg16AccY217 rho) = rho 18426 := by
      rw [hsum]
      linear_combination r5854
    have ha1 : rho 18424 * seg16AccX217 rho = rho 18427 := by
      unfold seg16AccX217
      linear_combination r5855
    have ha2 : rho 18423 * seg16AccY217 rho = rho 18428 := by
      unfold seg16AccY217
      linear_combination r5856
    have ha3 : 3021 * rho 18427 * rho 18428 = rho 18429 := by
      linear_combination r5857
    have ha4 : rho 18430 * (1 + rho 18429) = rho 18427 + rho 18428 := by
      linear_combination r5858
    have ha5 : rho 18431 * (1 - rho 18429) = rho 18426 - rho 18427 - rho 18428 := by
      linear_combination r5859
    have haddx :
        rho 18430 * (1 + 3021 * (rho 18424 * seg16AccX217 rho) * (rho 18423 * seg16AccY217 rho)) =
          rho 18424 * seg16AccX217 rho + rho 18423 * seg16AccY217 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18431 * (1 - 3021 * (rho 18424 * seg16AccX217 rho) * (rho 18423 * seg16AccY217 rho)) =
          (-1) * (rho 18424 * seg16AccX217 rho) - rho 18423 * seg16AccY217 rho +
            (seg16AccY217 rho - seg16AccX217 rho * (-1)) * (rho 18423 + rho 18424) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18431 * (1 - rho 18429) = rho 18426 - rho 18427 - rho 18428 := ha5
        _ = (-1) * rho 18427 - rho 18428 + (seg16AccY217 rho - seg16AccX217 rho * (-1)) * (rho 18423 + rho 18424) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX218 rho = seg16AccX217 rho - Bool.toZMod bit * (seg16AccX217 rho - rho 18430) := by
      have hd : rho 18432 = Bool.toZMod bit * (rho 18430 - seg16AccX217 rho) := by
        rw [← hbit]
        unfold seg16AccX217
        linear_combination -r5860
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY218 rho = seg16AccY217 rho - Bool.toZMod bit * (seg16AccY217 rho - rho 18431) := by
      have hd : rho 18433 = Bool.toZMod bit * (rho 18431 - seg16AccY217 rho) := by
        rw [← hbit]
        unfold seg16AccY217
        linear_combination -r5861
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 18423 * rho 18424 = rho 18434 := by linear_combination r5862
    have hd1 : rho 18423 * rho 18423 = rho 18435 := by linear_combination r5863
    have hd2 : rho 18424 * rho 18424 = rho 18436 := by linear_combination r5864
    have hd3 : rho 18437 * (rho 18424 * rho 18424 + rho 18423 * rho 18423 * (-1)) = 2 * (rho 18423 * rho 18424) := by
      rw [hd0, hd1, hd2]
      linear_combination r5865
    have hd4 : rho 18438 * (2 - (rho 18424 * rho 18424 + rho 18423 * rho 18423 * (-1))) = rho 18424 * rho 18424 - rho 18423 * rho 18423 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5866
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX217 rho : Seg16.F), (seg16AccY217 rho : Seg16.F)⟩
      ⟨(rho 18423 : Seg16.F), (rho 18424 : Seg16.F)⟩
      ⟨(rho 18430 : Seg16.F), (rho 18431 : Seg16.F)⟩
      ⟨(seg16AccX218 rho : Seg16.F), (seg16AccY218 rho : Seg16.F)⟩
      ⟨(rho 18437 : Seg16.F), (rho 18438 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung217

theorem seg16_rows218 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow5867 rho ∧ Seg16.relationRow5868 rho ∧ Seg16.relationRow5869 rho ∧ Seg16.relationRow5870 rho ∧ Seg16.relationRow5871 rho ∧ Seg16.relationRow5872 rho ∧ Seg16.relationRow5873 rho ∧ Seg16.relationRow5874 rho ∧ Seg16.relationRow5875 rho ∧ Seg16.relationRow5876 rho ∧ Seg16.relationRow5877 rho ∧ Seg16.relationRow5878 rho ∧ Seg16.relationRow5879 rho ∧ Seg16.relationRow5880 rho := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p73, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart73 at p73
  rcases p73 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5867, r5868, r5869, r5870, r5871, r5872, r5873, r5874, r5875, r5876, r5877, r5878, r5879, r5880, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5867, r5868, r5869, r5870, r5871, r5872, r5873, r5874, r5875, r5876, r5877, r5878, r5879, r5880⟩

theorem seg16_rung218 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15510 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX218 rho : Seg16.F), (seg16AccY218 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18437 : Seg16.F), (rho 18438 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX218 rho : Seg16.F), (seg16AccY218 rho : Seg16.F)⟩
        ⟨(rho 18437 : Seg16.F), (rho 18438 : Seg16.F)⟩
        ⟨(seg16AccX219 rho : Seg16.F), (seg16AccY219 rho : Seg16.F)⟩
        ⟨(rho 18451 : Seg16.F), (rho 18452 : Seg16.F)⟩ := by
  obtain ⟨r5867, r5868, r5869, r5870, r5871, r5872, r5873, r5874, r5875, r5876, r5877, r5878, r5879, r5880⟩ := seg16_rows218 rho h
  unfold Seg16.relationRow5867 at r5867
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5867
  unfold Seg16.relationRow5868 at r5868
  unfold Seg16.relationRow5869 at r5869
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5869
  unfold Seg16.relationRow5870 at r5870
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5870
  unfold Seg16.relationRow5871 at r5871
  unfold Seg16.relationRow5872 at r5872
  unfold Seg16.relationRow5873 at r5873
  unfold Seg16.relationRow5874 at r5874
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5874
  unfold Seg16.relationRow5875 at r5875
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5875
  unfold Seg16.relationRow5876 at r5876
  unfold Seg16.relationRow5877 at r5877
  unfold Seg16.relationRow5878 at r5878
  unfold Seg16.relationRow5879 at r5879
  unfold Seg16.relationRow5880 at r5880
  have hrung218 (bit : Bool) (hbit : rho 15510 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX218 rho : Seg16.F), (seg16AccY218 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18437 : Seg16.F), (rho 18438 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX218 rho : Seg16.F), (seg16AccY218 rho : Seg16.F)⟩
        ⟨(rho 18437 : Seg16.F), (rho 18438 : Seg16.F)⟩
        ⟨(seg16AccX219 rho : Seg16.F), (seg16AccY219 rho : Seg16.F)⟩
        ⟨(rho 18451 : Seg16.F), (rho 18452 : Seg16.F)⟩ := by
    have hnextx : seg16AccX219 rho = seg16AccX218 rho + rho 18446 := by
      unfold seg16AccX219 seg16AccX218
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 68]
      ring
    have hnexty : seg16AccY219 rho = seg16AccY218 rho + rho 18447 := by
      unfold seg16AccY219 seg16AccY218
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 68]
      ring
    have hsum : seg16AccX218 rho + seg16AccY218 rho = rho 18439 := by
      unfold seg16AccX218 seg16AccY218
      linear_combination r5867
    have ha0 : (rho 18437 + rho 18438) * (seg16AccX218 rho + seg16AccY218 rho) = rho 18440 := by
      rw [hsum]
      linear_combination r5868
    have ha1 : rho 18438 * seg16AccX218 rho = rho 18441 := by
      unfold seg16AccX218
      linear_combination r5869
    have ha2 : rho 18437 * seg16AccY218 rho = rho 18442 := by
      unfold seg16AccY218
      linear_combination r5870
    have ha3 : 3021 * rho 18441 * rho 18442 = rho 18443 := by
      linear_combination r5871
    have ha4 : rho 18444 * (1 + rho 18443) = rho 18441 + rho 18442 := by
      linear_combination r5872
    have ha5 : rho 18445 * (1 - rho 18443) = rho 18440 - rho 18441 - rho 18442 := by
      linear_combination r5873
    have haddx :
        rho 18444 * (1 + 3021 * (rho 18438 * seg16AccX218 rho) * (rho 18437 * seg16AccY218 rho)) =
          rho 18438 * seg16AccX218 rho + rho 18437 * seg16AccY218 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18445 * (1 - 3021 * (rho 18438 * seg16AccX218 rho) * (rho 18437 * seg16AccY218 rho)) =
          (-1) * (rho 18438 * seg16AccX218 rho) - rho 18437 * seg16AccY218 rho +
            (seg16AccY218 rho - seg16AccX218 rho * (-1)) * (rho 18437 + rho 18438) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18445 * (1 - rho 18443) = rho 18440 - rho 18441 - rho 18442 := ha5
        _ = (-1) * rho 18441 - rho 18442 + (seg16AccY218 rho - seg16AccX218 rho * (-1)) * (rho 18437 + rho 18438) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX219 rho = seg16AccX218 rho - Bool.toZMod bit * (seg16AccX218 rho - rho 18444) := by
      have hd : rho 18446 = Bool.toZMod bit * (rho 18444 - seg16AccX218 rho) := by
        rw [← hbit]
        unfold seg16AccX218
        linear_combination -r5874
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY219 rho = seg16AccY218 rho - Bool.toZMod bit * (seg16AccY218 rho - rho 18445) := by
      have hd : rho 18447 = Bool.toZMod bit * (rho 18445 - seg16AccY218 rho) := by
        rw [← hbit]
        unfold seg16AccY218
        linear_combination -r5875
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 18437 * rho 18438 = rho 18448 := by linear_combination r5876
    have hd1 : rho 18437 * rho 18437 = rho 18449 := by linear_combination r5877
    have hd2 : rho 18438 * rho 18438 = rho 18450 := by linear_combination r5878
    have hd3 : rho 18451 * (rho 18438 * rho 18438 + rho 18437 * rho 18437 * (-1)) = 2 * (rho 18437 * rho 18438) := by
      rw [hd0, hd1, hd2]
      linear_combination r5879
    have hd4 : rho 18452 * (2 - (rho 18438 * rho 18438 + rho 18437 * rho 18437 * (-1))) = rho 18438 * rho 18438 - rho 18437 * rho 18437 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5880
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX218 rho : Seg16.F), (seg16AccY218 rho : Seg16.F)⟩
      ⟨(rho 18437 : Seg16.F), (rho 18438 : Seg16.F)⟩
      ⟨(rho 18444 : Seg16.F), (rho 18445 : Seg16.F)⟩
      ⟨(seg16AccX219 rho : Seg16.F), (seg16AccY219 rho : Seg16.F)⟩
      ⟨(rho 18451 : Seg16.F), (rho 18452 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung218

theorem seg16_rows219 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow5881 rho ∧ Seg16.relationRow5882 rho ∧ Seg16.relationRow5883 rho ∧ Seg16.relationRow5884 rho ∧ Seg16.relationRow5885 rho ∧ Seg16.relationRow5886 rho ∧ Seg16.relationRow5887 rho ∧ Seg16.relationRow5888 rho ∧ Seg16.relationRow5889 rho ∧ Seg16.relationRow5890 rho ∧ Seg16.relationRow5891 rho ∧ Seg16.relationRow5892 rho ∧ Seg16.relationRow5893 rho ∧ Seg16.relationRow5894 rho := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p73, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart73 at p73
  rcases p73 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5881, r5882, r5883, r5884, r5885, r5886, r5887, r5888, r5889, r5890, r5891, r5892, r5893, r5894, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5881, r5882, r5883, r5884, r5885, r5886, r5887, r5888, r5889, r5890, r5891, r5892, r5893, r5894⟩

theorem seg16_rung219 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15511 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX219 rho : Seg16.F), (seg16AccY219 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18451 : Seg16.F), (rho 18452 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX219 rho : Seg16.F), (seg16AccY219 rho : Seg16.F)⟩
        ⟨(rho 18451 : Seg16.F), (rho 18452 : Seg16.F)⟩
        ⟨(seg16AccX220 rho : Seg16.F), (seg16AccY220 rho : Seg16.F)⟩
        ⟨(rho 18465 : Seg16.F), (rho 18466 : Seg16.F)⟩ := by
  obtain ⟨r5881, r5882, r5883, r5884, r5885, r5886, r5887, r5888, r5889, r5890, r5891, r5892, r5893, r5894⟩ := seg16_rows219 rho h
  unfold Seg16.relationRow5881 at r5881
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5881
  unfold Seg16.relationRow5882 at r5882
  unfold Seg16.relationRow5883 at r5883
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5883
  unfold Seg16.relationRow5884 at r5884
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5884
  unfold Seg16.relationRow5885 at r5885
  unfold Seg16.relationRow5886 at r5886
  unfold Seg16.relationRow5887 at r5887
  unfold Seg16.relationRow5888 at r5888
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5888
  unfold Seg16.relationRow5889 at r5889
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5889
  unfold Seg16.relationRow5890 at r5890
  unfold Seg16.relationRow5891 at r5891
  unfold Seg16.relationRow5892 at r5892
  unfold Seg16.relationRow5893 at r5893
  unfold Seg16.relationRow5894 at r5894
  have hrung219 (bit : Bool) (hbit : rho 15511 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX219 rho : Seg16.F), (seg16AccY219 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18451 : Seg16.F), (rho 18452 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX219 rho : Seg16.F), (seg16AccY219 rho : Seg16.F)⟩
        ⟨(rho 18451 : Seg16.F), (rho 18452 : Seg16.F)⟩
        ⟨(seg16AccX220 rho : Seg16.F), (seg16AccY220 rho : Seg16.F)⟩
        ⟨(rho 18465 : Seg16.F), (rho 18466 : Seg16.F)⟩ := by
    have hnextx : seg16AccX220 rho = seg16AccX219 rho + rho 18460 := by
      unfold seg16AccX220 seg16AccX219
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 69]
      ring
    have hnexty : seg16AccY220 rho = seg16AccY219 rho + rho 18461 := by
      unfold seg16AccY220 seg16AccY219
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 69]
      ring
    have hsum : seg16AccX219 rho + seg16AccY219 rho = rho 18453 := by
      unfold seg16AccX219 seg16AccY219
      linear_combination r5881
    have ha0 : (rho 18451 + rho 18452) * (seg16AccX219 rho + seg16AccY219 rho) = rho 18454 := by
      rw [hsum]
      linear_combination r5882
    have ha1 : rho 18452 * seg16AccX219 rho = rho 18455 := by
      unfold seg16AccX219
      linear_combination r5883
    have ha2 : rho 18451 * seg16AccY219 rho = rho 18456 := by
      unfold seg16AccY219
      linear_combination r5884
    have ha3 : 3021 * rho 18455 * rho 18456 = rho 18457 := by
      linear_combination r5885
    have ha4 : rho 18458 * (1 + rho 18457) = rho 18455 + rho 18456 := by
      linear_combination r5886
    have ha5 : rho 18459 * (1 - rho 18457) = rho 18454 - rho 18455 - rho 18456 := by
      linear_combination r5887
    have haddx :
        rho 18458 * (1 + 3021 * (rho 18452 * seg16AccX219 rho) * (rho 18451 * seg16AccY219 rho)) =
          rho 18452 * seg16AccX219 rho + rho 18451 * seg16AccY219 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18459 * (1 - 3021 * (rho 18452 * seg16AccX219 rho) * (rho 18451 * seg16AccY219 rho)) =
          (-1) * (rho 18452 * seg16AccX219 rho) - rho 18451 * seg16AccY219 rho +
            (seg16AccY219 rho - seg16AccX219 rho * (-1)) * (rho 18451 + rho 18452) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18459 * (1 - rho 18457) = rho 18454 - rho 18455 - rho 18456 := ha5
        _ = (-1) * rho 18455 - rho 18456 + (seg16AccY219 rho - seg16AccX219 rho * (-1)) * (rho 18451 + rho 18452) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX220 rho = seg16AccX219 rho - Bool.toZMod bit * (seg16AccX219 rho - rho 18458) := by
      have hd : rho 18460 = Bool.toZMod bit * (rho 18458 - seg16AccX219 rho) := by
        rw [← hbit]
        unfold seg16AccX219
        linear_combination -r5888
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY220 rho = seg16AccY219 rho - Bool.toZMod bit * (seg16AccY219 rho - rho 18459) := by
      have hd : rho 18461 = Bool.toZMod bit * (rho 18459 - seg16AccY219 rho) := by
        rw [← hbit]
        unfold seg16AccY219
        linear_combination -r5889
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 18451 * rho 18452 = rho 18462 := by linear_combination r5890
    have hd1 : rho 18451 * rho 18451 = rho 18463 := by linear_combination r5891
    have hd2 : rho 18452 * rho 18452 = rho 18464 := by linear_combination r5892
    have hd3 : rho 18465 * (rho 18452 * rho 18452 + rho 18451 * rho 18451 * (-1)) = 2 * (rho 18451 * rho 18452) := by
      rw [hd0, hd1, hd2]
      linear_combination r5893
    have hd4 : rho 18466 * (2 - (rho 18452 * rho 18452 + rho 18451 * rho 18451 * (-1))) = rho 18452 * rho 18452 - rho 18451 * rho 18451 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5894
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX219 rho : Seg16.F), (seg16AccY219 rho : Seg16.F)⟩
      ⟨(rho 18451 : Seg16.F), (rho 18452 : Seg16.F)⟩
      ⟨(rho 18458 : Seg16.F), (rho 18459 : Seg16.F)⟩
      ⟨(seg16AccX220 rho : Seg16.F), (seg16AccY220 rho : Seg16.F)⟩
      ⟨(rho 18465 : Seg16.F), (rho 18466 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung219

theorem seg16_hstep_c19 (rho : Nat -> Seg16.F) (h : Seg16.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (15292 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 209 ≤ i → i < 220 →
      EdwardsBridge.onCurve (seg16LadderAccState rho i) →
      EdwardsBridge.onCurve (seg16LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg16LadderAccState rho i) (seg16LadderCurState rho i)
        (seg16LadderAccState rho (i + 1)) (seg16LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg16_rung209 rho h bits[209]! (hbitAt 209 (by omega)) hacc hcur
  · exact seg16_rung210 rho h bits[210]! (hbitAt 210 (by omega)) hacc hcur
  · exact seg16_rung211 rho h bits[211]! (hbitAt 211 (by omega)) hacc hcur
  · exact seg16_rung212 rho h bits[212]! (hbitAt 212 (by omega)) hacc hcur
  · exact seg16_rung213 rho h bits[213]! (hbitAt 213 (by omega)) hacc hcur
  · exact seg16_rung214 rho h bits[214]! (hbitAt 214 (by omega)) hacc hcur
  · exact seg16_rung215 rho h bits[215]! (hbitAt 215 (by omega)) hacc hcur
  · exact seg16_rung216 rho h bits[216]! (hbitAt 216 (by omega)) hacc hcur
  · exact seg16_rung217 rho h bits[217]! (hbitAt 217 (by omega)) hacc hcur
  · exact seg16_rung218 rho h bits[218]! (hbitAt 218 (by omega)) hacc hcur
  · exact seg16_rung219 rho h bits[219]! (hbitAt 219 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
