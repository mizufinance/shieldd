import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg5_rows209 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow5741 rho ∧ Seg5.relationRow5742 rho ∧ Seg5.relationRow5743 rho ∧ Seg5.relationRow5744 rho ∧ Seg5.relationRow5745 rho ∧ Seg5.relationRow5746 rho ∧ Seg5.relationRow5747 rho ∧ Seg5.relationRow5748 rho ∧ Seg5.relationRow5749 rho ∧ Seg5.relationRow5750 rho ∧ Seg5.relationRow5751 rho ∧ Seg5.relationRow5752 rho ∧ Seg5.relationRow5753 rho ∧ Seg5.relationRow5754 rho := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart71 at p71
  rcases p71 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5741, r5742, r5743, r5744, r5745, r5746, r5747, r5748, r5749, r5750, r5751, r5752, r5753, r5754, _, _, _, _, _⟩
  exact ⟨r5741, r5742, r5743, r5744, r5745, r5746, r5747, r5748, r5749, r5750, r5751, r5752, r5753, r5754⟩

theorem seg5_rung209 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2624 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX209 rho : Seg5.F), (seg5AccY209 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5434 : Seg5.F), (rho 5435 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX209 rho : Seg5.F), (seg5AccY209 rho : Seg5.F)⟩
        ⟨(rho 5434 : Seg5.F), (rho 5435 : Seg5.F)⟩
        ⟨(seg5AccX210 rho : Seg5.F), (seg5AccY210 rho : Seg5.F)⟩
        ⟨(rho 5448 : Seg5.F), (rho 5449 : Seg5.F)⟩ := by
  obtain ⟨r5741, r5742, r5743, r5744, r5745, r5746, r5747, r5748, r5749, r5750, r5751, r5752, r5753, r5754⟩ := seg5_rows209 rho h
  unfold Seg5.relationRow5741 at r5741
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5741
  unfold Seg5.relationRow5742 at r5742
  unfold Seg5.relationRow5743 at r5743
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5743
  unfold Seg5.relationRow5744 at r5744
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5744
  unfold Seg5.relationRow5745 at r5745
  unfold Seg5.relationRow5746 at r5746
  unfold Seg5.relationRow5747 at r5747
  unfold Seg5.relationRow5748 at r5748
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5748
  unfold Seg5.relationRow5749 at r5749
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5749
  unfold Seg5.relationRow5750 at r5750
  unfold Seg5.relationRow5751 at r5751
  unfold Seg5.relationRow5752 at r5752
  unfold Seg5.relationRow5753 at r5753
  unfold Seg5.relationRow5754 at r5754
  have hrung209 (bit : Bool) (hbit : rho 2624 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX209 rho : Seg5.F), (seg5AccY209 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5434 : Seg5.F), (rho 5435 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX209 rho : Seg5.F), (seg5AccY209 rho : Seg5.F)⟩
        ⟨(rho 5434 : Seg5.F), (rho 5435 : Seg5.F)⟩
        ⟨(seg5AccX210 rho : Seg5.F), (seg5AccY210 rho : Seg5.F)⟩
        ⟨(rho 5448 : Seg5.F), (rho 5449 : Seg5.F)⟩ := by
    have hnextx : seg5AccX210 rho = seg5AccX209 rho + rho 5443 := by
      unfold seg5AccX210 seg5AccX209
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 59]
      ring
    have hnexty : seg5AccY210 rho = seg5AccY209 rho + rho 5444 := by
      unfold seg5AccY210 seg5AccY209
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 59]
      ring
    have hsum : seg5AccX209 rho + seg5AccY209 rho = rho 5436 := by
      unfold seg5AccX209 seg5AccY209
      linear_combination r5741
    have ha0 : (rho 5434 + rho 5435) * (seg5AccX209 rho + seg5AccY209 rho) = rho 5437 := by
      rw [hsum]
      linear_combination r5742
    have ha1 : rho 5435 * seg5AccX209 rho = rho 5438 := by
      unfold seg5AccX209
      linear_combination r5743
    have ha2 : rho 5434 * seg5AccY209 rho = rho 5439 := by
      unfold seg5AccY209
      linear_combination r5744
    have ha3 : 3021 * rho 5438 * rho 5439 = rho 5440 := by
      linear_combination r5745
    have ha4 : rho 5441 * (1 + rho 5440) = rho 5438 + rho 5439 := by
      linear_combination r5746
    have ha5 : rho 5442 * (1 - rho 5440) = rho 5437 - rho 5438 - rho 5439 := by
      linear_combination r5747
    have haddx :
        rho 5441 * (1 + 3021 * (rho 5435 * seg5AccX209 rho) * (rho 5434 * seg5AccY209 rho)) =
          rho 5435 * seg5AccX209 rho + rho 5434 * seg5AccY209 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5442 * (1 - 3021 * (rho 5435 * seg5AccX209 rho) * (rho 5434 * seg5AccY209 rho)) =
          (-1) * (rho 5435 * seg5AccX209 rho) - rho 5434 * seg5AccY209 rho +
            (seg5AccY209 rho - seg5AccX209 rho * (-1)) * (rho 5434 + rho 5435) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5442 * (1 - rho 5440) = rho 5437 - rho 5438 - rho 5439 := ha5
        _ = (-1) * rho 5438 - rho 5439 + (seg5AccY209 rho - seg5AccX209 rho * (-1)) * (rho 5434 + rho 5435) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX210 rho = seg5AccX209 rho - Bool.toZMod bit * (seg5AccX209 rho - rho 5441) := by
      have hd : rho 5443 = Bool.toZMod bit * (rho 5441 - seg5AccX209 rho) := by
        rw [← hbit]
        unfold seg5AccX209
        linear_combination -r5748
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY210 rho = seg5AccY209 rho - Bool.toZMod bit * (seg5AccY209 rho - rho 5442) := by
      have hd : rho 5444 = Bool.toZMod bit * (rho 5442 - seg5AccY209 rho) := by
        rw [← hbit]
        unfold seg5AccY209
        linear_combination -r5749
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5434 * rho 5435 = rho 5445 := by linear_combination r5750
    have hd1 : rho 5434 * rho 5434 = rho 5446 := by linear_combination r5751
    have hd2 : rho 5435 * rho 5435 = rho 5447 := by linear_combination r5752
    have hd3 : rho 5448 * (rho 5435 * rho 5435 + rho 5434 * rho 5434 * (-1)) = 2 * (rho 5434 * rho 5435) := by
      rw [hd0, hd1, hd2]
      linear_combination r5753
    have hd4 : rho 5449 * (2 - (rho 5435 * rho 5435 + rho 5434 * rho 5434 * (-1))) = rho 5435 * rho 5435 - rho 5434 * rho 5434 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5754
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX209 rho : Seg5.F), (seg5AccY209 rho : Seg5.F)⟩
      ⟨(rho 5434 : Seg5.F), (rho 5435 : Seg5.F)⟩
      ⟨(rho 5441 : Seg5.F), (rho 5442 : Seg5.F)⟩
      ⟨(seg5AccX210 rho : Seg5.F), (seg5AccY210 rho : Seg5.F)⟩
      ⟨(rho 5448 : Seg5.F), (rho 5449 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung209

theorem seg5_rows210 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow5755 rho ∧ Seg5.relationRow5756 rho ∧ Seg5.relationRow5757 rho ∧ Seg5.relationRow5758 rho ∧ Seg5.relationRow5759 rho ∧ Seg5.relationRow5760 rho ∧ Seg5.relationRow5761 rho ∧ Seg5.relationRow5762 rho ∧ Seg5.relationRow5763 rho ∧ Seg5.relationRow5764 rho ∧ Seg5.relationRow5765 rho ∧ Seg5.relationRow5766 rho ∧ Seg5.relationRow5767 rho ∧ Seg5.relationRow5768 rho := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart71 at p71
  rcases p71 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5755, r5756, r5757, r5758, r5759⟩
  unfold Seg5.relationPart72 at p72
  rcases p72 with ⟨r5760, r5761, r5762, r5763, r5764, r5765, r5766, r5767, r5768, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5755, r5756, r5757, r5758, r5759, r5760, r5761, r5762, r5763, r5764, r5765, r5766, r5767, r5768⟩

theorem seg5_rung210 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2625 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX210 rho : Seg5.F), (seg5AccY210 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5448 : Seg5.F), (rho 5449 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX210 rho : Seg5.F), (seg5AccY210 rho : Seg5.F)⟩
        ⟨(rho 5448 : Seg5.F), (rho 5449 : Seg5.F)⟩
        ⟨(seg5AccX211 rho : Seg5.F), (seg5AccY211 rho : Seg5.F)⟩
        ⟨(rho 5462 : Seg5.F), (rho 5463 : Seg5.F)⟩ := by
  obtain ⟨r5755, r5756, r5757, r5758, r5759, r5760, r5761, r5762, r5763, r5764, r5765, r5766, r5767, r5768⟩ := seg5_rows210 rho h
  unfold Seg5.relationRow5755 at r5755
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5755
  unfold Seg5.relationRow5756 at r5756
  unfold Seg5.relationRow5757 at r5757
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5757
  unfold Seg5.relationRow5758 at r5758
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5758
  unfold Seg5.relationRow5759 at r5759
  unfold Seg5.relationRow5760 at r5760
  unfold Seg5.relationRow5761 at r5761
  unfold Seg5.relationRow5762 at r5762
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5762
  unfold Seg5.relationRow5763 at r5763
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5763
  unfold Seg5.relationRow5764 at r5764
  unfold Seg5.relationRow5765 at r5765
  unfold Seg5.relationRow5766 at r5766
  unfold Seg5.relationRow5767 at r5767
  unfold Seg5.relationRow5768 at r5768
  have hrung210 (bit : Bool) (hbit : rho 2625 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX210 rho : Seg5.F), (seg5AccY210 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5448 : Seg5.F), (rho 5449 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX210 rho : Seg5.F), (seg5AccY210 rho : Seg5.F)⟩
        ⟨(rho 5448 : Seg5.F), (rho 5449 : Seg5.F)⟩
        ⟨(seg5AccX211 rho : Seg5.F), (seg5AccY211 rho : Seg5.F)⟩
        ⟨(rho 5462 : Seg5.F), (rho 5463 : Seg5.F)⟩ := by
    have hnextx : seg5AccX211 rho = seg5AccX210 rho + rho 5457 := by
      unfold seg5AccX211 seg5AccX210
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 60]
      ring
    have hnexty : seg5AccY211 rho = seg5AccY210 rho + rho 5458 := by
      unfold seg5AccY211 seg5AccY210
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 60]
      ring
    have hsum : seg5AccX210 rho + seg5AccY210 rho = rho 5450 := by
      unfold seg5AccX210 seg5AccY210
      linear_combination r5755
    have ha0 : (rho 5448 + rho 5449) * (seg5AccX210 rho + seg5AccY210 rho) = rho 5451 := by
      rw [hsum]
      linear_combination r5756
    have ha1 : rho 5449 * seg5AccX210 rho = rho 5452 := by
      unfold seg5AccX210
      linear_combination r5757
    have ha2 : rho 5448 * seg5AccY210 rho = rho 5453 := by
      unfold seg5AccY210
      linear_combination r5758
    have ha3 : 3021 * rho 5452 * rho 5453 = rho 5454 := by
      linear_combination r5759
    have ha4 : rho 5455 * (1 + rho 5454) = rho 5452 + rho 5453 := by
      linear_combination r5760
    have ha5 : rho 5456 * (1 - rho 5454) = rho 5451 - rho 5452 - rho 5453 := by
      linear_combination r5761
    have haddx :
        rho 5455 * (1 + 3021 * (rho 5449 * seg5AccX210 rho) * (rho 5448 * seg5AccY210 rho)) =
          rho 5449 * seg5AccX210 rho + rho 5448 * seg5AccY210 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5456 * (1 - 3021 * (rho 5449 * seg5AccX210 rho) * (rho 5448 * seg5AccY210 rho)) =
          (-1) * (rho 5449 * seg5AccX210 rho) - rho 5448 * seg5AccY210 rho +
            (seg5AccY210 rho - seg5AccX210 rho * (-1)) * (rho 5448 + rho 5449) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5456 * (1 - rho 5454) = rho 5451 - rho 5452 - rho 5453 := ha5
        _ = (-1) * rho 5452 - rho 5453 + (seg5AccY210 rho - seg5AccX210 rho * (-1)) * (rho 5448 + rho 5449) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX211 rho = seg5AccX210 rho - Bool.toZMod bit * (seg5AccX210 rho - rho 5455) := by
      have hd : rho 5457 = Bool.toZMod bit * (rho 5455 - seg5AccX210 rho) := by
        rw [← hbit]
        unfold seg5AccX210
        linear_combination -r5762
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY211 rho = seg5AccY210 rho - Bool.toZMod bit * (seg5AccY210 rho - rho 5456) := by
      have hd : rho 5458 = Bool.toZMod bit * (rho 5456 - seg5AccY210 rho) := by
        rw [← hbit]
        unfold seg5AccY210
        linear_combination -r5763
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5448 * rho 5449 = rho 5459 := by linear_combination r5764
    have hd1 : rho 5448 * rho 5448 = rho 5460 := by linear_combination r5765
    have hd2 : rho 5449 * rho 5449 = rho 5461 := by linear_combination r5766
    have hd3 : rho 5462 * (rho 5449 * rho 5449 + rho 5448 * rho 5448 * (-1)) = 2 * (rho 5448 * rho 5449) := by
      rw [hd0, hd1, hd2]
      linear_combination r5767
    have hd4 : rho 5463 * (2 - (rho 5449 * rho 5449 + rho 5448 * rho 5448 * (-1))) = rho 5449 * rho 5449 - rho 5448 * rho 5448 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5768
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX210 rho : Seg5.F), (seg5AccY210 rho : Seg5.F)⟩
      ⟨(rho 5448 : Seg5.F), (rho 5449 : Seg5.F)⟩
      ⟨(rho 5455 : Seg5.F), (rho 5456 : Seg5.F)⟩
      ⟨(seg5AccX211 rho : Seg5.F), (seg5AccY211 rho : Seg5.F)⟩
      ⟨(rho 5462 : Seg5.F), (rho 5463 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung210

theorem seg5_rows211 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow5769 rho ∧ Seg5.relationRow5770 rho ∧ Seg5.relationRow5771 rho ∧ Seg5.relationRow5772 rho ∧ Seg5.relationRow5773 rho ∧ Seg5.relationRow5774 rho ∧ Seg5.relationRow5775 rho ∧ Seg5.relationRow5776 rho ∧ Seg5.relationRow5777 rho ∧ Seg5.relationRow5778 rho ∧ Seg5.relationRow5779 rho ∧ Seg5.relationRow5780 rho ∧ Seg5.relationRow5781 rho ∧ Seg5.relationRow5782 rho := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart72 at p72
  rcases p72 with ⟨_, _, _, _, _, _, _, _, _, r5769, r5770, r5771, r5772, r5773, r5774, r5775, r5776, r5777, r5778, r5779, r5780, r5781, r5782, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5769, r5770, r5771, r5772, r5773, r5774, r5775, r5776, r5777, r5778, r5779, r5780, r5781, r5782⟩

theorem seg5_rung211 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2626 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX211 rho : Seg5.F), (seg5AccY211 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5462 : Seg5.F), (rho 5463 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX211 rho : Seg5.F), (seg5AccY211 rho : Seg5.F)⟩
        ⟨(rho 5462 : Seg5.F), (rho 5463 : Seg5.F)⟩
        ⟨(seg5AccX212 rho : Seg5.F), (seg5AccY212 rho : Seg5.F)⟩
        ⟨(rho 5476 : Seg5.F), (rho 5477 : Seg5.F)⟩ := by
  obtain ⟨r5769, r5770, r5771, r5772, r5773, r5774, r5775, r5776, r5777, r5778, r5779, r5780, r5781, r5782⟩ := seg5_rows211 rho h
  unfold Seg5.relationRow5769 at r5769
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5769
  unfold Seg5.relationRow5770 at r5770
  unfold Seg5.relationRow5771 at r5771
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5771
  unfold Seg5.relationRow5772 at r5772
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5772
  unfold Seg5.relationRow5773 at r5773
  unfold Seg5.relationRow5774 at r5774
  unfold Seg5.relationRow5775 at r5775
  unfold Seg5.relationRow5776 at r5776
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5776
  unfold Seg5.relationRow5777 at r5777
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5777
  unfold Seg5.relationRow5778 at r5778
  unfold Seg5.relationRow5779 at r5779
  unfold Seg5.relationRow5780 at r5780
  unfold Seg5.relationRow5781 at r5781
  unfold Seg5.relationRow5782 at r5782
  have hrung211 (bit : Bool) (hbit : rho 2626 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX211 rho : Seg5.F), (seg5AccY211 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5462 : Seg5.F), (rho 5463 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX211 rho : Seg5.F), (seg5AccY211 rho : Seg5.F)⟩
        ⟨(rho 5462 : Seg5.F), (rho 5463 : Seg5.F)⟩
        ⟨(seg5AccX212 rho : Seg5.F), (seg5AccY212 rho : Seg5.F)⟩
        ⟨(rho 5476 : Seg5.F), (rho 5477 : Seg5.F)⟩ := by
    have hnextx : seg5AccX212 rho = seg5AccX211 rho + rho 5471 := by
      unfold seg5AccX212 seg5AccX211
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 61]
      ring
    have hnexty : seg5AccY212 rho = seg5AccY211 rho + rho 5472 := by
      unfold seg5AccY212 seg5AccY211
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 61]
      ring
    have hsum : seg5AccX211 rho + seg5AccY211 rho = rho 5464 := by
      unfold seg5AccX211 seg5AccY211
      linear_combination r5769
    have ha0 : (rho 5462 + rho 5463) * (seg5AccX211 rho + seg5AccY211 rho) = rho 5465 := by
      rw [hsum]
      linear_combination r5770
    have ha1 : rho 5463 * seg5AccX211 rho = rho 5466 := by
      unfold seg5AccX211
      linear_combination r5771
    have ha2 : rho 5462 * seg5AccY211 rho = rho 5467 := by
      unfold seg5AccY211
      linear_combination r5772
    have ha3 : 3021 * rho 5466 * rho 5467 = rho 5468 := by
      linear_combination r5773
    have ha4 : rho 5469 * (1 + rho 5468) = rho 5466 + rho 5467 := by
      linear_combination r5774
    have ha5 : rho 5470 * (1 - rho 5468) = rho 5465 - rho 5466 - rho 5467 := by
      linear_combination r5775
    have haddx :
        rho 5469 * (1 + 3021 * (rho 5463 * seg5AccX211 rho) * (rho 5462 * seg5AccY211 rho)) =
          rho 5463 * seg5AccX211 rho + rho 5462 * seg5AccY211 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5470 * (1 - 3021 * (rho 5463 * seg5AccX211 rho) * (rho 5462 * seg5AccY211 rho)) =
          (-1) * (rho 5463 * seg5AccX211 rho) - rho 5462 * seg5AccY211 rho +
            (seg5AccY211 rho - seg5AccX211 rho * (-1)) * (rho 5462 + rho 5463) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5470 * (1 - rho 5468) = rho 5465 - rho 5466 - rho 5467 := ha5
        _ = (-1) * rho 5466 - rho 5467 + (seg5AccY211 rho - seg5AccX211 rho * (-1)) * (rho 5462 + rho 5463) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX212 rho = seg5AccX211 rho - Bool.toZMod bit * (seg5AccX211 rho - rho 5469) := by
      have hd : rho 5471 = Bool.toZMod bit * (rho 5469 - seg5AccX211 rho) := by
        rw [← hbit]
        unfold seg5AccX211
        linear_combination -r5776
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY212 rho = seg5AccY211 rho - Bool.toZMod bit * (seg5AccY211 rho - rho 5470) := by
      have hd : rho 5472 = Bool.toZMod bit * (rho 5470 - seg5AccY211 rho) := by
        rw [← hbit]
        unfold seg5AccY211
        linear_combination -r5777
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5462 * rho 5463 = rho 5473 := by linear_combination r5778
    have hd1 : rho 5462 * rho 5462 = rho 5474 := by linear_combination r5779
    have hd2 : rho 5463 * rho 5463 = rho 5475 := by linear_combination r5780
    have hd3 : rho 5476 * (rho 5463 * rho 5463 + rho 5462 * rho 5462 * (-1)) = 2 * (rho 5462 * rho 5463) := by
      rw [hd0, hd1, hd2]
      linear_combination r5781
    have hd4 : rho 5477 * (2 - (rho 5463 * rho 5463 + rho 5462 * rho 5462 * (-1))) = rho 5463 * rho 5463 - rho 5462 * rho 5462 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5782
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX211 rho : Seg5.F), (seg5AccY211 rho : Seg5.F)⟩
      ⟨(rho 5462 : Seg5.F), (rho 5463 : Seg5.F)⟩
      ⟨(rho 5469 : Seg5.F), (rho 5470 : Seg5.F)⟩
      ⟨(seg5AccX212 rho : Seg5.F), (seg5AccY212 rho : Seg5.F)⟩
      ⟨(rho 5476 : Seg5.F), (rho 5477 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung211

theorem seg5_rows212 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow5783 rho ∧ Seg5.relationRow5784 rho ∧ Seg5.relationRow5785 rho ∧ Seg5.relationRow5786 rho ∧ Seg5.relationRow5787 rho ∧ Seg5.relationRow5788 rho ∧ Seg5.relationRow5789 rho ∧ Seg5.relationRow5790 rho ∧ Seg5.relationRow5791 rho ∧ Seg5.relationRow5792 rho ∧ Seg5.relationRow5793 rho ∧ Seg5.relationRow5794 rho ∧ Seg5.relationRow5795 rho ∧ Seg5.relationRow5796 rho := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart72 at p72
  rcases p72 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5783, r5784, r5785, r5786, r5787, r5788, r5789, r5790, r5791, r5792, r5793, r5794, r5795, r5796, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5783, r5784, r5785, r5786, r5787, r5788, r5789, r5790, r5791, r5792, r5793, r5794, r5795, r5796⟩

theorem seg5_rung212 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2627 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX212 rho : Seg5.F), (seg5AccY212 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5476 : Seg5.F), (rho 5477 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX212 rho : Seg5.F), (seg5AccY212 rho : Seg5.F)⟩
        ⟨(rho 5476 : Seg5.F), (rho 5477 : Seg5.F)⟩
        ⟨(seg5AccX213 rho : Seg5.F), (seg5AccY213 rho : Seg5.F)⟩
        ⟨(rho 5490 : Seg5.F), (rho 5491 : Seg5.F)⟩ := by
  obtain ⟨r5783, r5784, r5785, r5786, r5787, r5788, r5789, r5790, r5791, r5792, r5793, r5794, r5795, r5796⟩ := seg5_rows212 rho h
  unfold Seg5.relationRow5783 at r5783
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5783
  unfold Seg5.relationRow5784 at r5784
  unfold Seg5.relationRow5785 at r5785
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5785
  unfold Seg5.relationRow5786 at r5786
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5786
  unfold Seg5.relationRow5787 at r5787
  unfold Seg5.relationRow5788 at r5788
  unfold Seg5.relationRow5789 at r5789
  unfold Seg5.relationRow5790 at r5790
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5790
  unfold Seg5.relationRow5791 at r5791
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5791
  unfold Seg5.relationRow5792 at r5792
  unfold Seg5.relationRow5793 at r5793
  unfold Seg5.relationRow5794 at r5794
  unfold Seg5.relationRow5795 at r5795
  unfold Seg5.relationRow5796 at r5796
  have hrung212 (bit : Bool) (hbit : rho 2627 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX212 rho : Seg5.F), (seg5AccY212 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5476 : Seg5.F), (rho 5477 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX212 rho : Seg5.F), (seg5AccY212 rho : Seg5.F)⟩
        ⟨(rho 5476 : Seg5.F), (rho 5477 : Seg5.F)⟩
        ⟨(seg5AccX213 rho : Seg5.F), (seg5AccY213 rho : Seg5.F)⟩
        ⟨(rho 5490 : Seg5.F), (rho 5491 : Seg5.F)⟩ := by
    have hnextx : seg5AccX213 rho = seg5AccX212 rho + rho 5485 := by
      unfold seg5AccX213 seg5AccX212
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 62]
      ring
    have hnexty : seg5AccY213 rho = seg5AccY212 rho + rho 5486 := by
      unfold seg5AccY213 seg5AccY212
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 62]
      ring
    have hsum : seg5AccX212 rho + seg5AccY212 rho = rho 5478 := by
      unfold seg5AccX212 seg5AccY212
      linear_combination r5783
    have ha0 : (rho 5476 + rho 5477) * (seg5AccX212 rho + seg5AccY212 rho) = rho 5479 := by
      rw [hsum]
      linear_combination r5784
    have ha1 : rho 5477 * seg5AccX212 rho = rho 5480 := by
      unfold seg5AccX212
      linear_combination r5785
    have ha2 : rho 5476 * seg5AccY212 rho = rho 5481 := by
      unfold seg5AccY212
      linear_combination r5786
    have ha3 : 3021 * rho 5480 * rho 5481 = rho 5482 := by
      linear_combination r5787
    have ha4 : rho 5483 * (1 + rho 5482) = rho 5480 + rho 5481 := by
      linear_combination r5788
    have ha5 : rho 5484 * (1 - rho 5482) = rho 5479 - rho 5480 - rho 5481 := by
      linear_combination r5789
    have haddx :
        rho 5483 * (1 + 3021 * (rho 5477 * seg5AccX212 rho) * (rho 5476 * seg5AccY212 rho)) =
          rho 5477 * seg5AccX212 rho + rho 5476 * seg5AccY212 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5484 * (1 - 3021 * (rho 5477 * seg5AccX212 rho) * (rho 5476 * seg5AccY212 rho)) =
          (-1) * (rho 5477 * seg5AccX212 rho) - rho 5476 * seg5AccY212 rho +
            (seg5AccY212 rho - seg5AccX212 rho * (-1)) * (rho 5476 + rho 5477) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5484 * (1 - rho 5482) = rho 5479 - rho 5480 - rho 5481 := ha5
        _ = (-1) * rho 5480 - rho 5481 + (seg5AccY212 rho - seg5AccX212 rho * (-1)) * (rho 5476 + rho 5477) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX213 rho = seg5AccX212 rho - Bool.toZMod bit * (seg5AccX212 rho - rho 5483) := by
      have hd : rho 5485 = Bool.toZMod bit * (rho 5483 - seg5AccX212 rho) := by
        rw [← hbit]
        unfold seg5AccX212
        linear_combination -r5790
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY213 rho = seg5AccY212 rho - Bool.toZMod bit * (seg5AccY212 rho - rho 5484) := by
      have hd : rho 5486 = Bool.toZMod bit * (rho 5484 - seg5AccY212 rho) := by
        rw [← hbit]
        unfold seg5AccY212
        linear_combination -r5791
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5476 * rho 5477 = rho 5487 := by linear_combination r5792
    have hd1 : rho 5476 * rho 5476 = rho 5488 := by linear_combination r5793
    have hd2 : rho 5477 * rho 5477 = rho 5489 := by linear_combination r5794
    have hd3 : rho 5490 * (rho 5477 * rho 5477 + rho 5476 * rho 5476 * (-1)) = 2 * (rho 5476 * rho 5477) := by
      rw [hd0, hd1, hd2]
      linear_combination r5795
    have hd4 : rho 5491 * (2 - (rho 5477 * rho 5477 + rho 5476 * rho 5476 * (-1))) = rho 5477 * rho 5477 - rho 5476 * rho 5476 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5796
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX212 rho : Seg5.F), (seg5AccY212 rho : Seg5.F)⟩
      ⟨(rho 5476 : Seg5.F), (rho 5477 : Seg5.F)⟩
      ⟨(rho 5483 : Seg5.F), (rho 5484 : Seg5.F)⟩
      ⟨(seg5AccX213 rho : Seg5.F), (seg5AccY213 rho : Seg5.F)⟩
      ⟨(rho 5490 : Seg5.F), (rho 5491 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung212

theorem seg5_rows213 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow5797 rho ∧ Seg5.relationRow5798 rho ∧ Seg5.relationRow5799 rho ∧ Seg5.relationRow5800 rho ∧ Seg5.relationRow5801 rho ∧ Seg5.relationRow5802 rho ∧ Seg5.relationRow5803 rho ∧ Seg5.relationRow5804 rho ∧ Seg5.relationRow5805 rho ∧ Seg5.relationRow5806 rho ∧ Seg5.relationRow5807 rho ∧ Seg5.relationRow5808 rho ∧ Seg5.relationRow5809 rho ∧ Seg5.relationRow5810 rho := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart72 at p72
  rcases p72 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5797, r5798, r5799, r5800, r5801, r5802, r5803, r5804, r5805, r5806, r5807, r5808, r5809, r5810, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5797, r5798, r5799, r5800, r5801, r5802, r5803, r5804, r5805, r5806, r5807, r5808, r5809, r5810⟩

theorem seg5_rung213 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2628 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX213 rho : Seg5.F), (seg5AccY213 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5490 : Seg5.F), (rho 5491 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX213 rho : Seg5.F), (seg5AccY213 rho : Seg5.F)⟩
        ⟨(rho 5490 : Seg5.F), (rho 5491 : Seg5.F)⟩
        ⟨(seg5AccX214 rho : Seg5.F), (seg5AccY214 rho : Seg5.F)⟩
        ⟨(rho 5504 : Seg5.F), (rho 5505 : Seg5.F)⟩ := by
  obtain ⟨r5797, r5798, r5799, r5800, r5801, r5802, r5803, r5804, r5805, r5806, r5807, r5808, r5809, r5810⟩ := seg5_rows213 rho h
  unfold Seg5.relationRow5797 at r5797
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5797
  unfold Seg5.relationRow5798 at r5798
  unfold Seg5.relationRow5799 at r5799
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5799
  unfold Seg5.relationRow5800 at r5800
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5800
  unfold Seg5.relationRow5801 at r5801
  unfold Seg5.relationRow5802 at r5802
  unfold Seg5.relationRow5803 at r5803
  unfold Seg5.relationRow5804 at r5804
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5804
  unfold Seg5.relationRow5805 at r5805
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5805
  unfold Seg5.relationRow5806 at r5806
  unfold Seg5.relationRow5807 at r5807
  unfold Seg5.relationRow5808 at r5808
  unfold Seg5.relationRow5809 at r5809
  unfold Seg5.relationRow5810 at r5810
  have hrung213 (bit : Bool) (hbit : rho 2628 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX213 rho : Seg5.F), (seg5AccY213 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5490 : Seg5.F), (rho 5491 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX213 rho : Seg5.F), (seg5AccY213 rho : Seg5.F)⟩
        ⟨(rho 5490 : Seg5.F), (rho 5491 : Seg5.F)⟩
        ⟨(seg5AccX214 rho : Seg5.F), (seg5AccY214 rho : Seg5.F)⟩
        ⟨(rho 5504 : Seg5.F), (rho 5505 : Seg5.F)⟩ := by
    have hnextx : seg5AccX214 rho = seg5AccX213 rho + rho 5499 := by
      unfold seg5AccX214 seg5AccX213
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 63]
      ring
    have hnexty : seg5AccY214 rho = seg5AccY213 rho + rho 5500 := by
      unfold seg5AccY214 seg5AccY213
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 63]
      ring
    have hsum : seg5AccX213 rho + seg5AccY213 rho = rho 5492 := by
      unfold seg5AccX213 seg5AccY213
      linear_combination r5797
    have ha0 : (rho 5490 + rho 5491) * (seg5AccX213 rho + seg5AccY213 rho) = rho 5493 := by
      rw [hsum]
      linear_combination r5798
    have ha1 : rho 5491 * seg5AccX213 rho = rho 5494 := by
      unfold seg5AccX213
      linear_combination r5799
    have ha2 : rho 5490 * seg5AccY213 rho = rho 5495 := by
      unfold seg5AccY213
      linear_combination r5800
    have ha3 : 3021 * rho 5494 * rho 5495 = rho 5496 := by
      linear_combination r5801
    have ha4 : rho 5497 * (1 + rho 5496) = rho 5494 + rho 5495 := by
      linear_combination r5802
    have ha5 : rho 5498 * (1 - rho 5496) = rho 5493 - rho 5494 - rho 5495 := by
      linear_combination r5803
    have haddx :
        rho 5497 * (1 + 3021 * (rho 5491 * seg5AccX213 rho) * (rho 5490 * seg5AccY213 rho)) =
          rho 5491 * seg5AccX213 rho + rho 5490 * seg5AccY213 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5498 * (1 - 3021 * (rho 5491 * seg5AccX213 rho) * (rho 5490 * seg5AccY213 rho)) =
          (-1) * (rho 5491 * seg5AccX213 rho) - rho 5490 * seg5AccY213 rho +
            (seg5AccY213 rho - seg5AccX213 rho * (-1)) * (rho 5490 + rho 5491) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5498 * (1 - rho 5496) = rho 5493 - rho 5494 - rho 5495 := ha5
        _ = (-1) * rho 5494 - rho 5495 + (seg5AccY213 rho - seg5AccX213 rho * (-1)) * (rho 5490 + rho 5491) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX214 rho = seg5AccX213 rho - Bool.toZMod bit * (seg5AccX213 rho - rho 5497) := by
      have hd : rho 5499 = Bool.toZMod bit * (rho 5497 - seg5AccX213 rho) := by
        rw [← hbit]
        unfold seg5AccX213
        linear_combination -r5804
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY214 rho = seg5AccY213 rho - Bool.toZMod bit * (seg5AccY213 rho - rho 5498) := by
      have hd : rho 5500 = Bool.toZMod bit * (rho 5498 - seg5AccY213 rho) := by
        rw [← hbit]
        unfold seg5AccY213
        linear_combination -r5805
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5490 * rho 5491 = rho 5501 := by linear_combination r5806
    have hd1 : rho 5490 * rho 5490 = rho 5502 := by linear_combination r5807
    have hd2 : rho 5491 * rho 5491 = rho 5503 := by linear_combination r5808
    have hd3 : rho 5504 * (rho 5491 * rho 5491 + rho 5490 * rho 5490 * (-1)) = 2 * (rho 5490 * rho 5491) := by
      rw [hd0, hd1, hd2]
      linear_combination r5809
    have hd4 : rho 5505 * (2 - (rho 5491 * rho 5491 + rho 5490 * rho 5490 * (-1))) = rho 5491 * rho 5491 - rho 5490 * rho 5490 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5810
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX213 rho : Seg5.F), (seg5AccY213 rho : Seg5.F)⟩
      ⟨(rho 5490 : Seg5.F), (rho 5491 : Seg5.F)⟩
      ⟨(rho 5497 : Seg5.F), (rho 5498 : Seg5.F)⟩
      ⟨(seg5AccX214 rho : Seg5.F), (seg5AccY214 rho : Seg5.F)⟩
      ⟨(rho 5504 : Seg5.F), (rho 5505 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung213

theorem seg5_rows214 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow5811 rho ∧ Seg5.relationRow5812 rho ∧ Seg5.relationRow5813 rho ∧ Seg5.relationRow5814 rho ∧ Seg5.relationRow5815 rho ∧ Seg5.relationRow5816 rho ∧ Seg5.relationRow5817 rho ∧ Seg5.relationRow5818 rho ∧ Seg5.relationRow5819 rho ∧ Seg5.relationRow5820 rho ∧ Seg5.relationRow5821 rho ∧ Seg5.relationRow5822 rho ∧ Seg5.relationRow5823 rho ∧ Seg5.relationRow5824 rho := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart72 at p72
  rcases p72 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5811, r5812, r5813, r5814, r5815, r5816, r5817, r5818, r5819, r5820, r5821, r5822, r5823, r5824, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5811, r5812, r5813, r5814, r5815, r5816, r5817, r5818, r5819, r5820, r5821, r5822, r5823, r5824⟩

theorem seg5_rung214 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2629 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX214 rho : Seg5.F), (seg5AccY214 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5504 : Seg5.F), (rho 5505 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX214 rho : Seg5.F), (seg5AccY214 rho : Seg5.F)⟩
        ⟨(rho 5504 : Seg5.F), (rho 5505 : Seg5.F)⟩
        ⟨(seg5AccX215 rho : Seg5.F), (seg5AccY215 rho : Seg5.F)⟩
        ⟨(rho 5518 : Seg5.F), (rho 5519 : Seg5.F)⟩ := by
  obtain ⟨r5811, r5812, r5813, r5814, r5815, r5816, r5817, r5818, r5819, r5820, r5821, r5822, r5823, r5824⟩ := seg5_rows214 rho h
  unfold Seg5.relationRow5811 at r5811
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5811
  unfold Seg5.relationRow5812 at r5812
  unfold Seg5.relationRow5813 at r5813
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5813
  unfold Seg5.relationRow5814 at r5814
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5814
  unfold Seg5.relationRow5815 at r5815
  unfold Seg5.relationRow5816 at r5816
  unfold Seg5.relationRow5817 at r5817
  unfold Seg5.relationRow5818 at r5818
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5818
  unfold Seg5.relationRow5819 at r5819
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5819
  unfold Seg5.relationRow5820 at r5820
  unfold Seg5.relationRow5821 at r5821
  unfold Seg5.relationRow5822 at r5822
  unfold Seg5.relationRow5823 at r5823
  unfold Seg5.relationRow5824 at r5824
  have hrung214 (bit : Bool) (hbit : rho 2629 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX214 rho : Seg5.F), (seg5AccY214 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5504 : Seg5.F), (rho 5505 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX214 rho : Seg5.F), (seg5AccY214 rho : Seg5.F)⟩
        ⟨(rho 5504 : Seg5.F), (rho 5505 : Seg5.F)⟩
        ⟨(seg5AccX215 rho : Seg5.F), (seg5AccY215 rho : Seg5.F)⟩
        ⟨(rho 5518 : Seg5.F), (rho 5519 : Seg5.F)⟩ := by
    have hnextx : seg5AccX215 rho = seg5AccX214 rho + rho 5513 := by
      unfold seg5AccX215 seg5AccX214
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 64]
      ring
    have hnexty : seg5AccY215 rho = seg5AccY214 rho + rho 5514 := by
      unfold seg5AccY215 seg5AccY214
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 64]
      ring
    have hsum : seg5AccX214 rho + seg5AccY214 rho = rho 5506 := by
      unfold seg5AccX214 seg5AccY214
      linear_combination r5811
    have ha0 : (rho 5504 + rho 5505) * (seg5AccX214 rho + seg5AccY214 rho) = rho 5507 := by
      rw [hsum]
      linear_combination r5812
    have ha1 : rho 5505 * seg5AccX214 rho = rho 5508 := by
      unfold seg5AccX214
      linear_combination r5813
    have ha2 : rho 5504 * seg5AccY214 rho = rho 5509 := by
      unfold seg5AccY214
      linear_combination r5814
    have ha3 : 3021 * rho 5508 * rho 5509 = rho 5510 := by
      linear_combination r5815
    have ha4 : rho 5511 * (1 + rho 5510) = rho 5508 + rho 5509 := by
      linear_combination r5816
    have ha5 : rho 5512 * (1 - rho 5510) = rho 5507 - rho 5508 - rho 5509 := by
      linear_combination r5817
    have haddx :
        rho 5511 * (1 + 3021 * (rho 5505 * seg5AccX214 rho) * (rho 5504 * seg5AccY214 rho)) =
          rho 5505 * seg5AccX214 rho + rho 5504 * seg5AccY214 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5512 * (1 - 3021 * (rho 5505 * seg5AccX214 rho) * (rho 5504 * seg5AccY214 rho)) =
          (-1) * (rho 5505 * seg5AccX214 rho) - rho 5504 * seg5AccY214 rho +
            (seg5AccY214 rho - seg5AccX214 rho * (-1)) * (rho 5504 + rho 5505) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5512 * (1 - rho 5510) = rho 5507 - rho 5508 - rho 5509 := ha5
        _ = (-1) * rho 5508 - rho 5509 + (seg5AccY214 rho - seg5AccX214 rho * (-1)) * (rho 5504 + rho 5505) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX215 rho = seg5AccX214 rho - Bool.toZMod bit * (seg5AccX214 rho - rho 5511) := by
      have hd : rho 5513 = Bool.toZMod bit * (rho 5511 - seg5AccX214 rho) := by
        rw [← hbit]
        unfold seg5AccX214
        linear_combination -r5818
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY215 rho = seg5AccY214 rho - Bool.toZMod bit * (seg5AccY214 rho - rho 5512) := by
      have hd : rho 5514 = Bool.toZMod bit * (rho 5512 - seg5AccY214 rho) := by
        rw [← hbit]
        unfold seg5AccY214
        linear_combination -r5819
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5504 * rho 5505 = rho 5515 := by linear_combination r5820
    have hd1 : rho 5504 * rho 5504 = rho 5516 := by linear_combination r5821
    have hd2 : rho 5505 * rho 5505 = rho 5517 := by linear_combination r5822
    have hd3 : rho 5518 * (rho 5505 * rho 5505 + rho 5504 * rho 5504 * (-1)) = 2 * (rho 5504 * rho 5505) := by
      rw [hd0, hd1, hd2]
      linear_combination r5823
    have hd4 : rho 5519 * (2 - (rho 5505 * rho 5505 + rho 5504 * rho 5504 * (-1))) = rho 5505 * rho 5505 - rho 5504 * rho 5504 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5824
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX214 rho : Seg5.F), (seg5AccY214 rho : Seg5.F)⟩
      ⟨(rho 5504 : Seg5.F), (rho 5505 : Seg5.F)⟩
      ⟨(rho 5511 : Seg5.F), (rho 5512 : Seg5.F)⟩
      ⟨(seg5AccX215 rho : Seg5.F), (seg5AccY215 rho : Seg5.F)⟩
      ⟨(rho 5518 : Seg5.F), (rho 5519 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung214

theorem seg5_rows215 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow5825 rho ∧ Seg5.relationRow5826 rho ∧ Seg5.relationRow5827 rho ∧ Seg5.relationRow5828 rho ∧ Seg5.relationRow5829 rho ∧ Seg5.relationRow5830 rho ∧ Seg5.relationRow5831 rho ∧ Seg5.relationRow5832 rho ∧ Seg5.relationRow5833 rho ∧ Seg5.relationRow5834 rho ∧ Seg5.relationRow5835 rho ∧ Seg5.relationRow5836 rho ∧ Seg5.relationRow5837 rho ∧ Seg5.relationRow5838 rho := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart72 at p72
  rcases p72 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5825, r5826, r5827, r5828, r5829, r5830, r5831, r5832, r5833, r5834, r5835, r5836, r5837, r5838, _⟩
  exact ⟨r5825, r5826, r5827, r5828, r5829, r5830, r5831, r5832, r5833, r5834, r5835, r5836, r5837, r5838⟩

theorem seg5_rung215 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2630 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX215 rho : Seg5.F), (seg5AccY215 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5518 : Seg5.F), (rho 5519 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX215 rho : Seg5.F), (seg5AccY215 rho : Seg5.F)⟩
        ⟨(rho 5518 : Seg5.F), (rho 5519 : Seg5.F)⟩
        ⟨(seg5AccX216 rho : Seg5.F), (seg5AccY216 rho : Seg5.F)⟩
        ⟨(rho 5532 : Seg5.F), (rho 5533 : Seg5.F)⟩ := by
  obtain ⟨r5825, r5826, r5827, r5828, r5829, r5830, r5831, r5832, r5833, r5834, r5835, r5836, r5837, r5838⟩ := seg5_rows215 rho h
  unfold Seg5.relationRow5825 at r5825
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5825
  unfold Seg5.relationRow5826 at r5826
  unfold Seg5.relationRow5827 at r5827
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5827
  unfold Seg5.relationRow5828 at r5828
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5828
  unfold Seg5.relationRow5829 at r5829
  unfold Seg5.relationRow5830 at r5830
  unfold Seg5.relationRow5831 at r5831
  unfold Seg5.relationRow5832 at r5832
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5832
  unfold Seg5.relationRow5833 at r5833
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5833
  unfold Seg5.relationRow5834 at r5834
  unfold Seg5.relationRow5835 at r5835
  unfold Seg5.relationRow5836 at r5836
  unfold Seg5.relationRow5837 at r5837
  unfold Seg5.relationRow5838 at r5838
  have hrung215 (bit : Bool) (hbit : rho 2630 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX215 rho : Seg5.F), (seg5AccY215 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5518 : Seg5.F), (rho 5519 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX215 rho : Seg5.F), (seg5AccY215 rho : Seg5.F)⟩
        ⟨(rho 5518 : Seg5.F), (rho 5519 : Seg5.F)⟩
        ⟨(seg5AccX216 rho : Seg5.F), (seg5AccY216 rho : Seg5.F)⟩
        ⟨(rho 5532 : Seg5.F), (rho 5533 : Seg5.F)⟩ := by
    have hnextx : seg5AccX216 rho = seg5AccX215 rho + rho 5527 := by
      unfold seg5AccX216 seg5AccX215
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 65]
      ring
    have hnexty : seg5AccY216 rho = seg5AccY215 rho + rho 5528 := by
      unfold seg5AccY216 seg5AccY215
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 65]
      ring
    have hsum : seg5AccX215 rho + seg5AccY215 rho = rho 5520 := by
      unfold seg5AccX215 seg5AccY215
      linear_combination r5825
    have ha0 : (rho 5518 + rho 5519) * (seg5AccX215 rho + seg5AccY215 rho) = rho 5521 := by
      rw [hsum]
      linear_combination r5826
    have ha1 : rho 5519 * seg5AccX215 rho = rho 5522 := by
      unfold seg5AccX215
      linear_combination r5827
    have ha2 : rho 5518 * seg5AccY215 rho = rho 5523 := by
      unfold seg5AccY215
      linear_combination r5828
    have ha3 : 3021 * rho 5522 * rho 5523 = rho 5524 := by
      linear_combination r5829
    have ha4 : rho 5525 * (1 + rho 5524) = rho 5522 + rho 5523 := by
      linear_combination r5830
    have ha5 : rho 5526 * (1 - rho 5524) = rho 5521 - rho 5522 - rho 5523 := by
      linear_combination r5831
    have haddx :
        rho 5525 * (1 + 3021 * (rho 5519 * seg5AccX215 rho) * (rho 5518 * seg5AccY215 rho)) =
          rho 5519 * seg5AccX215 rho + rho 5518 * seg5AccY215 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5526 * (1 - 3021 * (rho 5519 * seg5AccX215 rho) * (rho 5518 * seg5AccY215 rho)) =
          (-1) * (rho 5519 * seg5AccX215 rho) - rho 5518 * seg5AccY215 rho +
            (seg5AccY215 rho - seg5AccX215 rho * (-1)) * (rho 5518 + rho 5519) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5526 * (1 - rho 5524) = rho 5521 - rho 5522 - rho 5523 := ha5
        _ = (-1) * rho 5522 - rho 5523 + (seg5AccY215 rho - seg5AccX215 rho * (-1)) * (rho 5518 + rho 5519) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX216 rho = seg5AccX215 rho - Bool.toZMod bit * (seg5AccX215 rho - rho 5525) := by
      have hd : rho 5527 = Bool.toZMod bit * (rho 5525 - seg5AccX215 rho) := by
        rw [← hbit]
        unfold seg5AccX215
        linear_combination -r5832
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY216 rho = seg5AccY215 rho - Bool.toZMod bit * (seg5AccY215 rho - rho 5526) := by
      have hd : rho 5528 = Bool.toZMod bit * (rho 5526 - seg5AccY215 rho) := by
        rw [← hbit]
        unfold seg5AccY215
        linear_combination -r5833
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5518 * rho 5519 = rho 5529 := by linear_combination r5834
    have hd1 : rho 5518 * rho 5518 = rho 5530 := by linear_combination r5835
    have hd2 : rho 5519 * rho 5519 = rho 5531 := by linear_combination r5836
    have hd3 : rho 5532 * (rho 5519 * rho 5519 + rho 5518 * rho 5518 * (-1)) = 2 * (rho 5518 * rho 5519) := by
      rw [hd0, hd1, hd2]
      linear_combination r5837
    have hd4 : rho 5533 * (2 - (rho 5519 * rho 5519 + rho 5518 * rho 5518 * (-1))) = rho 5519 * rho 5519 - rho 5518 * rho 5518 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5838
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX215 rho : Seg5.F), (seg5AccY215 rho : Seg5.F)⟩
      ⟨(rho 5518 : Seg5.F), (rho 5519 : Seg5.F)⟩
      ⟨(rho 5525 : Seg5.F), (rho 5526 : Seg5.F)⟩
      ⟨(seg5AccX216 rho : Seg5.F), (seg5AccY216 rho : Seg5.F)⟩
      ⟨(rho 5532 : Seg5.F), (rho 5533 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung215

theorem seg5_rows216 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow5839 rho ∧ Seg5.relationRow5840 rho ∧ Seg5.relationRow5841 rho ∧ Seg5.relationRow5842 rho ∧ Seg5.relationRow5843 rho ∧ Seg5.relationRow5844 rho ∧ Seg5.relationRow5845 rho ∧ Seg5.relationRow5846 rho ∧ Seg5.relationRow5847 rho ∧ Seg5.relationRow5848 rho ∧ Seg5.relationRow5849 rho ∧ Seg5.relationRow5850 rho ∧ Seg5.relationRow5851 rho ∧ Seg5.relationRow5852 rho := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart72 at p72
  rcases p72 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5839⟩
  unfold Seg5.relationPart73 at p73
  rcases p73 with ⟨r5840, r5841, r5842, r5843, r5844, r5845, r5846, r5847, r5848, r5849, r5850, r5851, r5852, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5839, r5840, r5841, r5842, r5843, r5844, r5845, r5846, r5847, r5848, r5849, r5850, r5851, r5852⟩

theorem seg5_rung216 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2631 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX216 rho : Seg5.F), (seg5AccY216 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5532 : Seg5.F), (rho 5533 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX216 rho : Seg5.F), (seg5AccY216 rho : Seg5.F)⟩
        ⟨(rho 5532 : Seg5.F), (rho 5533 : Seg5.F)⟩
        ⟨(seg5AccX217 rho : Seg5.F), (seg5AccY217 rho : Seg5.F)⟩
        ⟨(rho 5546 : Seg5.F), (rho 5547 : Seg5.F)⟩ := by
  obtain ⟨r5839, r5840, r5841, r5842, r5843, r5844, r5845, r5846, r5847, r5848, r5849, r5850, r5851, r5852⟩ := seg5_rows216 rho h
  unfold Seg5.relationRow5839 at r5839
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5839
  unfold Seg5.relationRow5840 at r5840
  unfold Seg5.relationRow5841 at r5841
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5841
  unfold Seg5.relationRow5842 at r5842
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5842
  unfold Seg5.relationRow5843 at r5843
  unfold Seg5.relationRow5844 at r5844
  unfold Seg5.relationRow5845 at r5845
  unfold Seg5.relationRow5846 at r5846
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5846
  unfold Seg5.relationRow5847 at r5847
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5847
  unfold Seg5.relationRow5848 at r5848
  unfold Seg5.relationRow5849 at r5849
  unfold Seg5.relationRow5850 at r5850
  unfold Seg5.relationRow5851 at r5851
  unfold Seg5.relationRow5852 at r5852
  have hrung216 (bit : Bool) (hbit : rho 2631 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX216 rho : Seg5.F), (seg5AccY216 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5532 : Seg5.F), (rho 5533 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX216 rho : Seg5.F), (seg5AccY216 rho : Seg5.F)⟩
        ⟨(rho 5532 : Seg5.F), (rho 5533 : Seg5.F)⟩
        ⟨(seg5AccX217 rho : Seg5.F), (seg5AccY217 rho : Seg5.F)⟩
        ⟨(rho 5546 : Seg5.F), (rho 5547 : Seg5.F)⟩ := by
    have hnextx : seg5AccX217 rho = seg5AccX216 rho + rho 5541 := by
      unfold seg5AccX217 seg5AccX216
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 66]
      ring
    have hnexty : seg5AccY217 rho = seg5AccY216 rho + rho 5542 := by
      unfold seg5AccY217 seg5AccY216
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 66]
      ring
    have hsum : seg5AccX216 rho + seg5AccY216 rho = rho 5534 := by
      unfold seg5AccX216 seg5AccY216
      linear_combination r5839
    have ha0 : (rho 5532 + rho 5533) * (seg5AccX216 rho + seg5AccY216 rho) = rho 5535 := by
      rw [hsum]
      linear_combination r5840
    have ha1 : rho 5533 * seg5AccX216 rho = rho 5536 := by
      unfold seg5AccX216
      linear_combination r5841
    have ha2 : rho 5532 * seg5AccY216 rho = rho 5537 := by
      unfold seg5AccY216
      linear_combination r5842
    have ha3 : 3021 * rho 5536 * rho 5537 = rho 5538 := by
      linear_combination r5843
    have ha4 : rho 5539 * (1 + rho 5538) = rho 5536 + rho 5537 := by
      linear_combination r5844
    have ha5 : rho 5540 * (1 - rho 5538) = rho 5535 - rho 5536 - rho 5537 := by
      linear_combination r5845
    have haddx :
        rho 5539 * (1 + 3021 * (rho 5533 * seg5AccX216 rho) * (rho 5532 * seg5AccY216 rho)) =
          rho 5533 * seg5AccX216 rho + rho 5532 * seg5AccY216 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5540 * (1 - 3021 * (rho 5533 * seg5AccX216 rho) * (rho 5532 * seg5AccY216 rho)) =
          (-1) * (rho 5533 * seg5AccX216 rho) - rho 5532 * seg5AccY216 rho +
            (seg5AccY216 rho - seg5AccX216 rho * (-1)) * (rho 5532 + rho 5533) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5540 * (1 - rho 5538) = rho 5535 - rho 5536 - rho 5537 := ha5
        _ = (-1) * rho 5536 - rho 5537 + (seg5AccY216 rho - seg5AccX216 rho * (-1)) * (rho 5532 + rho 5533) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX217 rho = seg5AccX216 rho - Bool.toZMod bit * (seg5AccX216 rho - rho 5539) := by
      have hd : rho 5541 = Bool.toZMod bit * (rho 5539 - seg5AccX216 rho) := by
        rw [← hbit]
        unfold seg5AccX216
        linear_combination -r5846
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY217 rho = seg5AccY216 rho - Bool.toZMod bit * (seg5AccY216 rho - rho 5540) := by
      have hd : rho 5542 = Bool.toZMod bit * (rho 5540 - seg5AccY216 rho) := by
        rw [← hbit]
        unfold seg5AccY216
        linear_combination -r5847
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5532 * rho 5533 = rho 5543 := by linear_combination r5848
    have hd1 : rho 5532 * rho 5532 = rho 5544 := by linear_combination r5849
    have hd2 : rho 5533 * rho 5533 = rho 5545 := by linear_combination r5850
    have hd3 : rho 5546 * (rho 5533 * rho 5533 + rho 5532 * rho 5532 * (-1)) = 2 * (rho 5532 * rho 5533) := by
      rw [hd0, hd1, hd2]
      linear_combination r5851
    have hd4 : rho 5547 * (2 - (rho 5533 * rho 5533 + rho 5532 * rho 5532 * (-1))) = rho 5533 * rho 5533 - rho 5532 * rho 5532 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5852
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX216 rho : Seg5.F), (seg5AccY216 rho : Seg5.F)⟩
      ⟨(rho 5532 : Seg5.F), (rho 5533 : Seg5.F)⟩
      ⟨(rho 5539 : Seg5.F), (rho 5540 : Seg5.F)⟩
      ⟨(seg5AccX217 rho : Seg5.F), (seg5AccY217 rho : Seg5.F)⟩
      ⟨(rho 5546 : Seg5.F), (rho 5547 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung216

theorem seg5_rows217 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow5853 rho ∧ Seg5.relationRow5854 rho ∧ Seg5.relationRow5855 rho ∧ Seg5.relationRow5856 rho ∧ Seg5.relationRow5857 rho ∧ Seg5.relationRow5858 rho ∧ Seg5.relationRow5859 rho ∧ Seg5.relationRow5860 rho ∧ Seg5.relationRow5861 rho ∧ Seg5.relationRow5862 rho ∧ Seg5.relationRow5863 rho ∧ Seg5.relationRow5864 rho ∧ Seg5.relationRow5865 rho ∧ Seg5.relationRow5866 rho := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart73 at p73
  rcases p73 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, r5853, r5854, r5855, r5856, r5857, r5858, r5859, r5860, r5861, r5862, r5863, r5864, r5865, r5866, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5853, r5854, r5855, r5856, r5857, r5858, r5859, r5860, r5861, r5862, r5863, r5864, r5865, r5866⟩

theorem seg5_rung217 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2632 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX217 rho : Seg5.F), (seg5AccY217 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5546 : Seg5.F), (rho 5547 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX217 rho : Seg5.F), (seg5AccY217 rho : Seg5.F)⟩
        ⟨(rho 5546 : Seg5.F), (rho 5547 : Seg5.F)⟩
        ⟨(seg5AccX218 rho : Seg5.F), (seg5AccY218 rho : Seg5.F)⟩
        ⟨(rho 5560 : Seg5.F), (rho 5561 : Seg5.F)⟩ := by
  obtain ⟨r5853, r5854, r5855, r5856, r5857, r5858, r5859, r5860, r5861, r5862, r5863, r5864, r5865, r5866⟩ := seg5_rows217 rho h
  unfold Seg5.relationRow5853 at r5853
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5853
  unfold Seg5.relationRow5854 at r5854
  unfold Seg5.relationRow5855 at r5855
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5855
  unfold Seg5.relationRow5856 at r5856
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5856
  unfold Seg5.relationRow5857 at r5857
  unfold Seg5.relationRow5858 at r5858
  unfold Seg5.relationRow5859 at r5859
  unfold Seg5.relationRow5860 at r5860
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5860
  unfold Seg5.relationRow5861 at r5861
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5861
  unfold Seg5.relationRow5862 at r5862
  unfold Seg5.relationRow5863 at r5863
  unfold Seg5.relationRow5864 at r5864
  unfold Seg5.relationRow5865 at r5865
  unfold Seg5.relationRow5866 at r5866
  have hrung217 (bit : Bool) (hbit : rho 2632 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX217 rho : Seg5.F), (seg5AccY217 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5546 : Seg5.F), (rho 5547 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX217 rho : Seg5.F), (seg5AccY217 rho : Seg5.F)⟩
        ⟨(rho 5546 : Seg5.F), (rho 5547 : Seg5.F)⟩
        ⟨(seg5AccX218 rho : Seg5.F), (seg5AccY218 rho : Seg5.F)⟩
        ⟨(rho 5560 : Seg5.F), (rho 5561 : Seg5.F)⟩ := by
    have hnextx : seg5AccX218 rho = seg5AccX217 rho + rho 5555 := by
      unfold seg5AccX218 seg5AccX217
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 67]
      ring
    have hnexty : seg5AccY218 rho = seg5AccY217 rho + rho 5556 := by
      unfold seg5AccY218 seg5AccY217
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 67]
      ring
    have hsum : seg5AccX217 rho + seg5AccY217 rho = rho 5548 := by
      unfold seg5AccX217 seg5AccY217
      linear_combination r5853
    have ha0 : (rho 5546 + rho 5547) * (seg5AccX217 rho + seg5AccY217 rho) = rho 5549 := by
      rw [hsum]
      linear_combination r5854
    have ha1 : rho 5547 * seg5AccX217 rho = rho 5550 := by
      unfold seg5AccX217
      linear_combination r5855
    have ha2 : rho 5546 * seg5AccY217 rho = rho 5551 := by
      unfold seg5AccY217
      linear_combination r5856
    have ha3 : 3021 * rho 5550 * rho 5551 = rho 5552 := by
      linear_combination r5857
    have ha4 : rho 5553 * (1 + rho 5552) = rho 5550 + rho 5551 := by
      linear_combination r5858
    have ha5 : rho 5554 * (1 - rho 5552) = rho 5549 - rho 5550 - rho 5551 := by
      linear_combination r5859
    have haddx :
        rho 5553 * (1 + 3021 * (rho 5547 * seg5AccX217 rho) * (rho 5546 * seg5AccY217 rho)) =
          rho 5547 * seg5AccX217 rho + rho 5546 * seg5AccY217 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5554 * (1 - 3021 * (rho 5547 * seg5AccX217 rho) * (rho 5546 * seg5AccY217 rho)) =
          (-1) * (rho 5547 * seg5AccX217 rho) - rho 5546 * seg5AccY217 rho +
            (seg5AccY217 rho - seg5AccX217 rho * (-1)) * (rho 5546 + rho 5547) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5554 * (1 - rho 5552) = rho 5549 - rho 5550 - rho 5551 := ha5
        _ = (-1) * rho 5550 - rho 5551 + (seg5AccY217 rho - seg5AccX217 rho * (-1)) * (rho 5546 + rho 5547) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX218 rho = seg5AccX217 rho - Bool.toZMod bit * (seg5AccX217 rho - rho 5553) := by
      have hd : rho 5555 = Bool.toZMod bit * (rho 5553 - seg5AccX217 rho) := by
        rw [← hbit]
        unfold seg5AccX217
        linear_combination -r5860
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY218 rho = seg5AccY217 rho - Bool.toZMod bit * (seg5AccY217 rho - rho 5554) := by
      have hd : rho 5556 = Bool.toZMod bit * (rho 5554 - seg5AccY217 rho) := by
        rw [← hbit]
        unfold seg5AccY217
        linear_combination -r5861
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5546 * rho 5547 = rho 5557 := by linear_combination r5862
    have hd1 : rho 5546 * rho 5546 = rho 5558 := by linear_combination r5863
    have hd2 : rho 5547 * rho 5547 = rho 5559 := by linear_combination r5864
    have hd3 : rho 5560 * (rho 5547 * rho 5547 + rho 5546 * rho 5546 * (-1)) = 2 * (rho 5546 * rho 5547) := by
      rw [hd0, hd1, hd2]
      linear_combination r5865
    have hd4 : rho 5561 * (2 - (rho 5547 * rho 5547 + rho 5546 * rho 5546 * (-1))) = rho 5547 * rho 5547 - rho 5546 * rho 5546 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5866
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX217 rho : Seg5.F), (seg5AccY217 rho : Seg5.F)⟩
      ⟨(rho 5546 : Seg5.F), (rho 5547 : Seg5.F)⟩
      ⟨(rho 5553 : Seg5.F), (rho 5554 : Seg5.F)⟩
      ⟨(seg5AccX218 rho : Seg5.F), (seg5AccY218 rho : Seg5.F)⟩
      ⟨(rho 5560 : Seg5.F), (rho 5561 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung217

theorem seg5_rows218 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow5867 rho ∧ Seg5.relationRow5868 rho ∧ Seg5.relationRow5869 rho ∧ Seg5.relationRow5870 rho ∧ Seg5.relationRow5871 rho ∧ Seg5.relationRow5872 rho ∧ Seg5.relationRow5873 rho ∧ Seg5.relationRow5874 rho ∧ Seg5.relationRow5875 rho ∧ Seg5.relationRow5876 rho ∧ Seg5.relationRow5877 rho ∧ Seg5.relationRow5878 rho ∧ Seg5.relationRow5879 rho ∧ Seg5.relationRow5880 rho := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart73 at p73
  rcases p73 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5867, r5868, r5869, r5870, r5871, r5872, r5873, r5874, r5875, r5876, r5877, r5878, r5879, r5880, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5867, r5868, r5869, r5870, r5871, r5872, r5873, r5874, r5875, r5876, r5877, r5878, r5879, r5880⟩

theorem seg5_rung218 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2633 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX218 rho : Seg5.F), (seg5AccY218 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5560 : Seg5.F), (rho 5561 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX218 rho : Seg5.F), (seg5AccY218 rho : Seg5.F)⟩
        ⟨(rho 5560 : Seg5.F), (rho 5561 : Seg5.F)⟩
        ⟨(seg5AccX219 rho : Seg5.F), (seg5AccY219 rho : Seg5.F)⟩
        ⟨(rho 5574 : Seg5.F), (rho 5575 : Seg5.F)⟩ := by
  obtain ⟨r5867, r5868, r5869, r5870, r5871, r5872, r5873, r5874, r5875, r5876, r5877, r5878, r5879, r5880⟩ := seg5_rows218 rho h
  unfold Seg5.relationRow5867 at r5867
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5867
  unfold Seg5.relationRow5868 at r5868
  unfold Seg5.relationRow5869 at r5869
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5869
  unfold Seg5.relationRow5870 at r5870
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5870
  unfold Seg5.relationRow5871 at r5871
  unfold Seg5.relationRow5872 at r5872
  unfold Seg5.relationRow5873 at r5873
  unfold Seg5.relationRow5874 at r5874
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5874
  unfold Seg5.relationRow5875 at r5875
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5875
  unfold Seg5.relationRow5876 at r5876
  unfold Seg5.relationRow5877 at r5877
  unfold Seg5.relationRow5878 at r5878
  unfold Seg5.relationRow5879 at r5879
  unfold Seg5.relationRow5880 at r5880
  have hrung218 (bit : Bool) (hbit : rho 2633 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX218 rho : Seg5.F), (seg5AccY218 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5560 : Seg5.F), (rho 5561 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX218 rho : Seg5.F), (seg5AccY218 rho : Seg5.F)⟩
        ⟨(rho 5560 : Seg5.F), (rho 5561 : Seg5.F)⟩
        ⟨(seg5AccX219 rho : Seg5.F), (seg5AccY219 rho : Seg5.F)⟩
        ⟨(rho 5574 : Seg5.F), (rho 5575 : Seg5.F)⟩ := by
    have hnextx : seg5AccX219 rho = seg5AccX218 rho + rho 5569 := by
      unfold seg5AccX219 seg5AccX218
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 68]
      ring
    have hnexty : seg5AccY219 rho = seg5AccY218 rho + rho 5570 := by
      unfold seg5AccY219 seg5AccY218
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 68]
      ring
    have hsum : seg5AccX218 rho + seg5AccY218 rho = rho 5562 := by
      unfold seg5AccX218 seg5AccY218
      linear_combination r5867
    have ha0 : (rho 5560 + rho 5561) * (seg5AccX218 rho + seg5AccY218 rho) = rho 5563 := by
      rw [hsum]
      linear_combination r5868
    have ha1 : rho 5561 * seg5AccX218 rho = rho 5564 := by
      unfold seg5AccX218
      linear_combination r5869
    have ha2 : rho 5560 * seg5AccY218 rho = rho 5565 := by
      unfold seg5AccY218
      linear_combination r5870
    have ha3 : 3021 * rho 5564 * rho 5565 = rho 5566 := by
      linear_combination r5871
    have ha4 : rho 5567 * (1 + rho 5566) = rho 5564 + rho 5565 := by
      linear_combination r5872
    have ha5 : rho 5568 * (1 - rho 5566) = rho 5563 - rho 5564 - rho 5565 := by
      linear_combination r5873
    have haddx :
        rho 5567 * (1 + 3021 * (rho 5561 * seg5AccX218 rho) * (rho 5560 * seg5AccY218 rho)) =
          rho 5561 * seg5AccX218 rho + rho 5560 * seg5AccY218 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5568 * (1 - 3021 * (rho 5561 * seg5AccX218 rho) * (rho 5560 * seg5AccY218 rho)) =
          (-1) * (rho 5561 * seg5AccX218 rho) - rho 5560 * seg5AccY218 rho +
            (seg5AccY218 rho - seg5AccX218 rho * (-1)) * (rho 5560 + rho 5561) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5568 * (1 - rho 5566) = rho 5563 - rho 5564 - rho 5565 := ha5
        _ = (-1) * rho 5564 - rho 5565 + (seg5AccY218 rho - seg5AccX218 rho * (-1)) * (rho 5560 + rho 5561) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX219 rho = seg5AccX218 rho - Bool.toZMod bit * (seg5AccX218 rho - rho 5567) := by
      have hd : rho 5569 = Bool.toZMod bit * (rho 5567 - seg5AccX218 rho) := by
        rw [← hbit]
        unfold seg5AccX218
        linear_combination -r5874
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY219 rho = seg5AccY218 rho - Bool.toZMod bit * (seg5AccY218 rho - rho 5568) := by
      have hd : rho 5570 = Bool.toZMod bit * (rho 5568 - seg5AccY218 rho) := by
        rw [← hbit]
        unfold seg5AccY218
        linear_combination -r5875
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5560 * rho 5561 = rho 5571 := by linear_combination r5876
    have hd1 : rho 5560 * rho 5560 = rho 5572 := by linear_combination r5877
    have hd2 : rho 5561 * rho 5561 = rho 5573 := by linear_combination r5878
    have hd3 : rho 5574 * (rho 5561 * rho 5561 + rho 5560 * rho 5560 * (-1)) = 2 * (rho 5560 * rho 5561) := by
      rw [hd0, hd1, hd2]
      linear_combination r5879
    have hd4 : rho 5575 * (2 - (rho 5561 * rho 5561 + rho 5560 * rho 5560 * (-1))) = rho 5561 * rho 5561 - rho 5560 * rho 5560 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5880
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX218 rho : Seg5.F), (seg5AccY218 rho : Seg5.F)⟩
      ⟨(rho 5560 : Seg5.F), (rho 5561 : Seg5.F)⟩
      ⟨(rho 5567 : Seg5.F), (rho 5568 : Seg5.F)⟩
      ⟨(seg5AccX219 rho : Seg5.F), (seg5AccY219 rho : Seg5.F)⟩
      ⟨(rho 5574 : Seg5.F), (rho 5575 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung218

theorem seg5_rows219 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow5881 rho ∧ Seg5.relationRow5882 rho ∧ Seg5.relationRow5883 rho ∧ Seg5.relationRow5884 rho ∧ Seg5.relationRow5885 rho ∧ Seg5.relationRow5886 rho ∧ Seg5.relationRow5887 rho ∧ Seg5.relationRow5888 rho ∧ Seg5.relationRow5889 rho ∧ Seg5.relationRow5890 rho ∧ Seg5.relationRow5891 rho ∧ Seg5.relationRow5892 rho ∧ Seg5.relationRow5893 rho ∧ Seg5.relationRow5894 rho := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart73 at p73
  rcases p73 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5881, r5882, r5883, r5884, r5885, r5886, r5887, r5888, r5889, r5890, r5891, r5892, r5893, r5894, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5881, r5882, r5883, r5884, r5885, r5886, r5887, r5888, r5889, r5890, r5891, r5892, r5893, r5894⟩

theorem seg5_rung219 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2634 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX219 rho : Seg5.F), (seg5AccY219 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5574 : Seg5.F), (rho 5575 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX219 rho : Seg5.F), (seg5AccY219 rho : Seg5.F)⟩
        ⟨(rho 5574 : Seg5.F), (rho 5575 : Seg5.F)⟩
        ⟨(seg5AccX220 rho : Seg5.F), (seg5AccY220 rho : Seg5.F)⟩
        ⟨(rho 5588 : Seg5.F), (rho 5589 : Seg5.F)⟩ := by
  obtain ⟨r5881, r5882, r5883, r5884, r5885, r5886, r5887, r5888, r5889, r5890, r5891, r5892, r5893, r5894⟩ := seg5_rows219 rho h
  unfold Seg5.relationRow5881 at r5881
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5881
  unfold Seg5.relationRow5882 at r5882
  unfold Seg5.relationRow5883 at r5883
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5883
  unfold Seg5.relationRow5884 at r5884
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5884
  unfold Seg5.relationRow5885 at r5885
  unfold Seg5.relationRow5886 at r5886
  unfold Seg5.relationRow5887 at r5887
  unfold Seg5.relationRow5888 at r5888
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5888
  unfold Seg5.relationRow5889 at r5889
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5889
  unfold Seg5.relationRow5890 at r5890
  unfold Seg5.relationRow5891 at r5891
  unfold Seg5.relationRow5892 at r5892
  unfold Seg5.relationRow5893 at r5893
  unfold Seg5.relationRow5894 at r5894
  have hrung219 (bit : Bool) (hbit : rho 2634 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX219 rho : Seg5.F), (seg5AccY219 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5574 : Seg5.F), (rho 5575 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX219 rho : Seg5.F), (seg5AccY219 rho : Seg5.F)⟩
        ⟨(rho 5574 : Seg5.F), (rho 5575 : Seg5.F)⟩
        ⟨(seg5AccX220 rho : Seg5.F), (seg5AccY220 rho : Seg5.F)⟩
        ⟨(rho 5588 : Seg5.F), (rho 5589 : Seg5.F)⟩ := by
    have hnextx : seg5AccX220 rho = seg5AccX219 rho + rho 5583 := by
      unfold seg5AccX220 seg5AccX219
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 69]
      ring
    have hnexty : seg5AccY220 rho = seg5AccY219 rho + rho 5584 := by
      unfold seg5AccY220 seg5AccY219
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 69]
      ring
    have hsum : seg5AccX219 rho + seg5AccY219 rho = rho 5576 := by
      unfold seg5AccX219 seg5AccY219
      linear_combination r5881
    have ha0 : (rho 5574 + rho 5575) * (seg5AccX219 rho + seg5AccY219 rho) = rho 5577 := by
      rw [hsum]
      linear_combination r5882
    have ha1 : rho 5575 * seg5AccX219 rho = rho 5578 := by
      unfold seg5AccX219
      linear_combination r5883
    have ha2 : rho 5574 * seg5AccY219 rho = rho 5579 := by
      unfold seg5AccY219
      linear_combination r5884
    have ha3 : 3021 * rho 5578 * rho 5579 = rho 5580 := by
      linear_combination r5885
    have ha4 : rho 5581 * (1 + rho 5580) = rho 5578 + rho 5579 := by
      linear_combination r5886
    have ha5 : rho 5582 * (1 - rho 5580) = rho 5577 - rho 5578 - rho 5579 := by
      linear_combination r5887
    have haddx :
        rho 5581 * (1 + 3021 * (rho 5575 * seg5AccX219 rho) * (rho 5574 * seg5AccY219 rho)) =
          rho 5575 * seg5AccX219 rho + rho 5574 * seg5AccY219 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5582 * (1 - 3021 * (rho 5575 * seg5AccX219 rho) * (rho 5574 * seg5AccY219 rho)) =
          (-1) * (rho 5575 * seg5AccX219 rho) - rho 5574 * seg5AccY219 rho +
            (seg5AccY219 rho - seg5AccX219 rho * (-1)) * (rho 5574 + rho 5575) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5582 * (1 - rho 5580) = rho 5577 - rho 5578 - rho 5579 := ha5
        _ = (-1) * rho 5578 - rho 5579 + (seg5AccY219 rho - seg5AccX219 rho * (-1)) * (rho 5574 + rho 5575) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX220 rho = seg5AccX219 rho - Bool.toZMod bit * (seg5AccX219 rho - rho 5581) := by
      have hd : rho 5583 = Bool.toZMod bit * (rho 5581 - seg5AccX219 rho) := by
        rw [← hbit]
        unfold seg5AccX219
        linear_combination -r5888
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY220 rho = seg5AccY219 rho - Bool.toZMod bit * (seg5AccY219 rho - rho 5582) := by
      have hd : rho 5584 = Bool.toZMod bit * (rho 5582 - seg5AccY219 rho) := by
        rw [← hbit]
        unfold seg5AccY219
        linear_combination -r5889
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5574 * rho 5575 = rho 5585 := by linear_combination r5890
    have hd1 : rho 5574 * rho 5574 = rho 5586 := by linear_combination r5891
    have hd2 : rho 5575 * rho 5575 = rho 5587 := by linear_combination r5892
    have hd3 : rho 5588 * (rho 5575 * rho 5575 + rho 5574 * rho 5574 * (-1)) = 2 * (rho 5574 * rho 5575) := by
      rw [hd0, hd1, hd2]
      linear_combination r5893
    have hd4 : rho 5589 * (2 - (rho 5575 * rho 5575 + rho 5574 * rho 5574 * (-1))) = rho 5575 * rho 5575 - rho 5574 * rho 5574 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5894
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX219 rho : Seg5.F), (seg5AccY219 rho : Seg5.F)⟩
      ⟨(rho 5574 : Seg5.F), (rho 5575 : Seg5.F)⟩
      ⟨(rho 5581 : Seg5.F), (rho 5582 : Seg5.F)⟩
      ⟨(seg5AccX220 rho : Seg5.F), (seg5AccY220 rho : Seg5.F)⟩
      ⟨(rho 5588 : Seg5.F), (rho 5589 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung219

theorem seg5_hstep_c19 (rho : Nat -> Seg5.F) (h : Seg5.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (2415 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 209 ≤ i → i < 220 →
      EdwardsBridge.onCurve (seg5LadderAccState rho i) →
      EdwardsBridge.onCurve (seg5LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg5LadderAccState rho i) (seg5LadderCurState rho i)
        (seg5LadderAccState rho (i + 1)) (seg5LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg5_rung209 rho h bits[209]! (hbitAt 209 (by omega)) hacc hcur
  · exact seg5_rung210 rho h bits[210]! (hbitAt 210 (by omega)) hacc hcur
  · exact seg5_rung211 rho h bits[211]! (hbitAt 211 (by omega)) hacc hcur
  · exact seg5_rung212 rho h bits[212]! (hbitAt 212 (by omega)) hacc hcur
  · exact seg5_rung213 rho h bits[213]! (hbitAt 213 (by omega)) hacc hcur
  · exact seg5_rung214 rho h bits[214]! (hbitAt 214 (by omega)) hacc hcur
  · exact seg5_rung215 rho h bits[215]! (hbitAt 215 (by omega)) hacc hcur
  · exact seg5_rung216 rho h bits[216]! (hbitAt 216 (by omega)) hacc hcur
  · exact seg5_rung217 rho h bits[217]! (hbitAt 217 (by omega)) hacc hcur
  · exact seg5_rung218 rho h bits[218]! (hbitAt 218 (by omega)) hacc hcur
  · exact seg5_rung219 rho h bits[219]! (hbitAt 219 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
