import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg34_rows209 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow5741 rho ∧ Seg34.relationRow5742 rho ∧ Seg34.relationRow5743 rho ∧ Seg34.relationRow5744 rho ∧ Seg34.relationRow5745 rho ∧ Seg34.relationRow5746 rho ∧ Seg34.relationRow5747 rho ∧ Seg34.relationRow5748 rho ∧ Seg34.relationRow5749 rho ∧ Seg34.relationRow5750 rho ∧ Seg34.relationRow5751 rho ∧ Seg34.relationRow5752 rho ∧ Seg34.relationRow5753 rho ∧ Seg34.relationRow5754 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart71 at p71
  rcases p71 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5741, r5742, r5743, r5744, r5745, r5746, r5747, r5748, r5749, r5750, r5751, r5752, r5753, r5754, _, _, _, _, _⟩
  exact ⟨r5741, r5742, r5743, r5744, r5745, r5746, r5747, r5748, r5749, r5750, r5751, r5752, r5753, r5754⟩

theorem seg34_rung209 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34201 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX209 rho : Seg34.F), (seg34AccY209 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 37011 : Seg34.F), (rho 37012 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX209 rho : Seg34.F), (seg34AccY209 rho : Seg34.F)⟩
        ⟨(rho 37011 : Seg34.F), (rho 37012 : Seg34.F)⟩
        ⟨(seg34AccX210 rho : Seg34.F), (seg34AccY210 rho : Seg34.F)⟩
        ⟨(rho 37025 : Seg34.F), (rho 37026 : Seg34.F)⟩ := by
  obtain ⟨r5741, r5742, r5743, r5744, r5745, r5746, r5747, r5748, r5749, r5750, r5751, r5752, r5753, r5754⟩ := seg34_rows209 rho h
  unfold Seg34.relationRow5741 at r5741
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5741
  unfold Seg34.relationRow5742 at r5742
  unfold Seg34.relationRow5743 at r5743
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5743
  unfold Seg34.relationRow5744 at r5744
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5744
  unfold Seg34.relationRow5745 at r5745
  unfold Seg34.relationRow5746 at r5746
  unfold Seg34.relationRow5747 at r5747
  unfold Seg34.relationRow5748 at r5748
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5748
  unfold Seg34.relationRow5749 at r5749
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5749
  unfold Seg34.relationRow5750 at r5750
  unfold Seg34.relationRow5751 at r5751
  unfold Seg34.relationRow5752 at r5752
  unfold Seg34.relationRow5753 at r5753
  unfold Seg34.relationRow5754 at r5754
  have hrung209 (bit : Bool) (hbit : rho 34201 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX209 rho : Seg34.F), (seg34AccY209 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 37011 : Seg34.F), (rho 37012 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX209 rho : Seg34.F), (seg34AccY209 rho : Seg34.F)⟩
        ⟨(rho 37011 : Seg34.F), (rho 37012 : Seg34.F)⟩
        ⟨(seg34AccX210 rho : Seg34.F), (seg34AccY210 rho : Seg34.F)⟩
        ⟨(rho 37025 : Seg34.F), (rho 37026 : Seg34.F)⟩ := by
    have hnextx : seg34AccX210 rho = seg34AccX209 rho + rho 37020 := by
      unfold seg34AccX210 seg34AccX209
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 59]
      ring
    have hnexty : seg34AccY210 rho = seg34AccY209 rho + rho 37021 := by
      unfold seg34AccY210 seg34AccY209
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 59]
      ring
    have hsum : seg34AccX209 rho + seg34AccY209 rho = rho 37013 := by
      unfold seg34AccX209 seg34AccY209
      linear_combination r5741
    have ha0 : (rho 37011 + rho 37012) * (seg34AccX209 rho + seg34AccY209 rho) = rho 37014 := by
      rw [hsum]
      linear_combination r5742
    have ha1 : rho 37012 * seg34AccX209 rho = rho 37015 := by
      unfold seg34AccX209
      linear_combination r5743
    have ha2 : rho 37011 * seg34AccY209 rho = rho 37016 := by
      unfold seg34AccY209
      linear_combination r5744
    have ha3 : 3021 * rho 37015 * rho 37016 = rho 37017 := by
      linear_combination r5745
    have ha4 : rho 37018 * (1 + rho 37017) = rho 37015 + rho 37016 := by
      linear_combination r5746
    have ha5 : rho 37019 * (1 - rho 37017) = rho 37014 - rho 37015 - rho 37016 := by
      linear_combination r5747
    have haddx :
        rho 37018 * (1 + 3021 * (rho 37012 * seg34AccX209 rho) * (rho 37011 * seg34AccY209 rho)) =
          rho 37012 * seg34AccX209 rho + rho 37011 * seg34AccY209 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 37019 * (1 - 3021 * (rho 37012 * seg34AccX209 rho) * (rho 37011 * seg34AccY209 rho)) =
          (-1) * (rho 37012 * seg34AccX209 rho) - rho 37011 * seg34AccY209 rho +
            (seg34AccY209 rho - seg34AccX209 rho * (-1)) * (rho 37011 + rho 37012) := by
      rw [ha1, ha2, ha3]
      calc
        rho 37019 * (1 - rho 37017) = rho 37014 - rho 37015 - rho 37016 := ha5
        _ = (-1) * rho 37015 - rho 37016 + (seg34AccY209 rho - seg34AccX209 rho * (-1)) * (rho 37011 + rho 37012) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX210 rho = seg34AccX209 rho - Bool.toZMod bit * (seg34AccX209 rho - rho 37018) := by
      have hd : rho 37020 = Bool.toZMod bit * (rho 37018 - seg34AccX209 rho) := by
        rw [← hbit]
        unfold seg34AccX209
        linear_combination -r5748
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY210 rho = seg34AccY209 rho - Bool.toZMod bit * (seg34AccY209 rho - rho 37019) := by
      have hd : rho 37021 = Bool.toZMod bit * (rho 37019 - seg34AccY209 rho) := by
        rw [← hbit]
        unfold seg34AccY209
        linear_combination -r5749
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 37011 * rho 37012 = rho 37022 := by linear_combination r5750
    have hd1 : rho 37011 * rho 37011 = rho 37023 := by linear_combination r5751
    have hd2 : rho 37012 * rho 37012 = rho 37024 := by linear_combination r5752
    have hd3 : rho 37025 * (rho 37012 * rho 37012 + rho 37011 * rho 37011 * (-1)) = 2 * (rho 37011 * rho 37012) := by
      rw [hd0, hd1, hd2]
      linear_combination r5753
    have hd4 : rho 37026 * (2 - (rho 37012 * rho 37012 + rho 37011 * rho 37011 * (-1))) = rho 37012 * rho 37012 - rho 37011 * rho 37011 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5754
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX209 rho : Seg34.F), (seg34AccY209 rho : Seg34.F)⟩
      ⟨(rho 37011 : Seg34.F), (rho 37012 : Seg34.F)⟩
      ⟨(rho 37018 : Seg34.F), (rho 37019 : Seg34.F)⟩
      ⟨(seg34AccX210 rho : Seg34.F), (seg34AccY210 rho : Seg34.F)⟩
      ⟨(rho 37025 : Seg34.F), (rho 37026 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung209

theorem seg34_rows210 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow5755 rho ∧ Seg34.relationRow5756 rho ∧ Seg34.relationRow5757 rho ∧ Seg34.relationRow5758 rho ∧ Seg34.relationRow5759 rho ∧ Seg34.relationRow5760 rho ∧ Seg34.relationRow5761 rho ∧ Seg34.relationRow5762 rho ∧ Seg34.relationRow5763 rho ∧ Seg34.relationRow5764 rho ∧ Seg34.relationRow5765 rho ∧ Seg34.relationRow5766 rho ∧ Seg34.relationRow5767 rho ∧ Seg34.relationRow5768 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart71 at p71
  rcases p71 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5755, r5756, r5757, r5758, r5759⟩
  unfold Seg34.relationPart72 at p72
  rcases p72 with ⟨r5760, r5761, r5762, r5763, r5764, r5765, r5766, r5767, r5768, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5755, r5756, r5757, r5758, r5759, r5760, r5761, r5762, r5763, r5764, r5765, r5766, r5767, r5768⟩

theorem seg34_rung210 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34202 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX210 rho : Seg34.F), (seg34AccY210 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 37025 : Seg34.F), (rho 37026 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX210 rho : Seg34.F), (seg34AccY210 rho : Seg34.F)⟩
        ⟨(rho 37025 : Seg34.F), (rho 37026 : Seg34.F)⟩
        ⟨(seg34AccX211 rho : Seg34.F), (seg34AccY211 rho : Seg34.F)⟩
        ⟨(rho 37039 : Seg34.F), (rho 37040 : Seg34.F)⟩ := by
  obtain ⟨r5755, r5756, r5757, r5758, r5759, r5760, r5761, r5762, r5763, r5764, r5765, r5766, r5767, r5768⟩ := seg34_rows210 rho h
  unfold Seg34.relationRow5755 at r5755
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5755
  unfold Seg34.relationRow5756 at r5756
  unfold Seg34.relationRow5757 at r5757
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5757
  unfold Seg34.relationRow5758 at r5758
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5758
  unfold Seg34.relationRow5759 at r5759
  unfold Seg34.relationRow5760 at r5760
  unfold Seg34.relationRow5761 at r5761
  unfold Seg34.relationRow5762 at r5762
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5762
  unfold Seg34.relationRow5763 at r5763
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5763
  unfold Seg34.relationRow5764 at r5764
  unfold Seg34.relationRow5765 at r5765
  unfold Seg34.relationRow5766 at r5766
  unfold Seg34.relationRow5767 at r5767
  unfold Seg34.relationRow5768 at r5768
  have hrung210 (bit : Bool) (hbit : rho 34202 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX210 rho : Seg34.F), (seg34AccY210 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 37025 : Seg34.F), (rho 37026 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX210 rho : Seg34.F), (seg34AccY210 rho : Seg34.F)⟩
        ⟨(rho 37025 : Seg34.F), (rho 37026 : Seg34.F)⟩
        ⟨(seg34AccX211 rho : Seg34.F), (seg34AccY211 rho : Seg34.F)⟩
        ⟨(rho 37039 : Seg34.F), (rho 37040 : Seg34.F)⟩ := by
    have hnextx : seg34AccX211 rho = seg34AccX210 rho + rho 37034 := by
      unfold seg34AccX211 seg34AccX210
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 60]
      ring
    have hnexty : seg34AccY211 rho = seg34AccY210 rho + rho 37035 := by
      unfold seg34AccY211 seg34AccY210
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 60]
      ring
    have hsum : seg34AccX210 rho + seg34AccY210 rho = rho 37027 := by
      unfold seg34AccX210 seg34AccY210
      linear_combination r5755
    have ha0 : (rho 37025 + rho 37026) * (seg34AccX210 rho + seg34AccY210 rho) = rho 37028 := by
      rw [hsum]
      linear_combination r5756
    have ha1 : rho 37026 * seg34AccX210 rho = rho 37029 := by
      unfold seg34AccX210
      linear_combination r5757
    have ha2 : rho 37025 * seg34AccY210 rho = rho 37030 := by
      unfold seg34AccY210
      linear_combination r5758
    have ha3 : 3021 * rho 37029 * rho 37030 = rho 37031 := by
      linear_combination r5759
    have ha4 : rho 37032 * (1 + rho 37031) = rho 37029 + rho 37030 := by
      linear_combination r5760
    have ha5 : rho 37033 * (1 - rho 37031) = rho 37028 - rho 37029 - rho 37030 := by
      linear_combination r5761
    have haddx :
        rho 37032 * (1 + 3021 * (rho 37026 * seg34AccX210 rho) * (rho 37025 * seg34AccY210 rho)) =
          rho 37026 * seg34AccX210 rho + rho 37025 * seg34AccY210 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 37033 * (1 - 3021 * (rho 37026 * seg34AccX210 rho) * (rho 37025 * seg34AccY210 rho)) =
          (-1) * (rho 37026 * seg34AccX210 rho) - rho 37025 * seg34AccY210 rho +
            (seg34AccY210 rho - seg34AccX210 rho * (-1)) * (rho 37025 + rho 37026) := by
      rw [ha1, ha2, ha3]
      calc
        rho 37033 * (1 - rho 37031) = rho 37028 - rho 37029 - rho 37030 := ha5
        _ = (-1) * rho 37029 - rho 37030 + (seg34AccY210 rho - seg34AccX210 rho * (-1)) * (rho 37025 + rho 37026) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX211 rho = seg34AccX210 rho - Bool.toZMod bit * (seg34AccX210 rho - rho 37032) := by
      have hd : rho 37034 = Bool.toZMod bit * (rho 37032 - seg34AccX210 rho) := by
        rw [← hbit]
        unfold seg34AccX210
        linear_combination -r5762
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY211 rho = seg34AccY210 rho - Bool.toZMod bit * (seg34AccY210 rho - rho 37033) := by
      have hd : rho 37035 = Bool.toZMod bit * (rho 37033 - seg34AccY210 rho) := by
        rw [← hbit]
        unfold seg34AccY210
        linear_combination -r5763
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 37025 * rho 37026 = rho 37036 := by linear_combination r5764
    have hd1 : rho 37025 * rho 37025 = rho 37037 := by linear_combination r5765
    have hd2 : rho 37026 * rho 37026 = rho 37038 := by linear_combination r5766
    have hd3 : rho 37039 * (rho 37026 * rho 37026 + rho 37025 * rho 37025 * (-1)) = 2 * (rho 37025 * rho 37026) := by
      rw [hd0, hd1, hd2]
      linear_combination r5767
    have hd4 : rho 37040 * (2 - (rho 37026 * rho 37026 + rho 37025 * rho 37025 * (-1))) = rho 37026 * rho 37026 - rho 37025 * rho 37025 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5768
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX210 rho : Seg34.F), (seg34AccY210 rho : Seg34.F)⟩
      ⟨(rho 37025 : Seg34.F), (rho 37026 : Seg34.F)⟩
      ⟨(rho 37032 : Seg34.F), (rho 37033 : Seg34.F)⟩
      ⟨(seg34AccX211 rho : Seg34.F), (seg34AccY211 rho : Seg34.F)⟩
      ⟨(rho 37039 : Seg34.F), (rho 37040 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung210

theorem seg34_rows211 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow5769 rho ∧ Seg34.relationRow5770 rho ∧ Seg34.relationRow5771 rho ∧ Seg34.relationRow5772 rho ∧ Seg34.relationRow5773 rho ∧ Seg34.relationRow5774 rho ∧ Seg34.relationRow5775 rho ∧ Seg34.relationRow5776 rho ∧ Seg34.relationRow5777 rho ∧ Seg34.relationRow5778 rho ∧ Seg34.relationRow5779 rho ∧ Seg34.relationRow5780 rho ∧ Seg34.relationRow5781 rho ∧ Seg34.relationRow5782 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart72 at p72
  rcases p72 with ⟨_, _, _, _, _, _, _, _, _, r5769, r5770, r5771, r5772, r5773, r5774, r5775, r5776, r5777, r5778, r5779, r5780, r5781, r5782, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5769, r5770, r5771, r5772, r5773, r5774, r5775, r5776, r5777, r5778, r5779, r5780, r5781, r5782⟩

theorem seg34_rung211 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34203 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX211 rho : Seg34.F), (seg34AccY211 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 37039 : Seg34.F), (rho 37040 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX211 rho : Seg34.F), (seg34AccY211 rho : Seg34.F)⟩
        ⟨(rho 37039 : Seg34.F), (rho 37040 : Seg34.F)⟩
        ⟨(seg34AccX212 rho : Seg34.F), (seg34AccY212 rho : Seg34.F)⟩
        ⟨(rho 37053 : Seg34.F), (rho 37054 : Seg34.F)⟩ := by
  obtain ⟨r5769, r5770, r5771, r5772, r5773, r5774, r5775, r5776, r5777, r5778, r5779, r5780, r5781, r5782⟩ := seg34_rows211 rho h
  unfold Seg34.relationRow5769 at r5769
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5769
  unfold Seg34.relationRow5770 at r5770
  unfold Seg34.relationRow5771 at r5771
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5771
  unfold Seg34.relationRow5772 at r5772
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5772
  unfold Seg34.relationRow5773 at r5773
  unfold Seg34.relationRow5774 at r5774
  unfold Seg34.relationRow5775 at r5775
  unfold Seg34.relationRow5776 at r5776
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5776
  unfold Seg34.relationRow5777 at r5777
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5777
  unfold Seg34.relationRow5778 at r5778
  unfold Seg34.relationRow5779 at r5779
  unfold Seg34.relationRow5780 at r5780
  unfold Seg34.relationRow5781 at r5781
  unfold Seg34.relationRow5782 at r5782
  have hrung211 (bit : Bool) (hbit : rho 34203 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX211 rho : Seg34.F), (seg34AccY211 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 37039 : Seg34.F), (rho 37040 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX211 rho : Seg34.F), (seg34AccY211 rho : Seg34.F)⟩
        ⟨(rho 37039 : Seg34.F), (rho 37040 : Seg34.F)⟩
        ⟨(seg34AccX212 rho : Seg34.F), (seg34AccY212 rho : Seg34.F)⟩
        ⟨(rho 37053 : Seg34.F), (rho 37054 : Seg34.F)⟩ := by
    have hnextx : seg34AccX212 rho = seg34AccX211 rho + rho 37048 := by
      unfold seg34AccX212 seg34AccX211
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 61]
      ring
    have hnexty : seg34AccY212 rho = seg34AccY211 rho + rho 37049 := by
      unfold seg34AccY212 seg34AccY211
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 61]
      ring
    have hsum : seg34AccX211 rho + seg34AccY211 rho = rho 37041 := by
      unfold seg34AccX211 seg34AccY211
      linear_combination r5769
    have ha0 : (rho 37039 + rho 37040) * (seg34AccX211 rho + seg34AccY211 rho) = rho 37042 := by
      rw [hsum]
      linear_combination r5770
    have ha1 : rho 37040 * seg34AccX211 rho = rho 37043 := by
      unfold seg34AccX211
      linear_combination r5771
    have ha2 : rho 37039 * seg34AccY211 rho = rho 37044 := by
      unfold seg34AccY211
      linear_combination r5772
    have ha3 : 3021 * rho 37043 * rho 37044 = rho 37045 := by
      linear_combination r5773
    have ha4 : rho 37046 * (1 + rho 37045) = rho 37043 + rho 37044 := by
      linear_combination r5774
    have ha5 : rho 37047 * (1 - rho 37045) = rho 37042 - rho 37043 - rho 37044 := by
      linear_combination r5775
    have haddx :
        rho 37046 * (1 + 3021 * (rho 37040 * seg34AccX211 rho) * (rho 37039 * seg34AccY211 rho)) =
          rho 37040 * seg34AccX211 rho + rho 37039 * seg34AccY211 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 37047 * (1 - 3021 * (rho 37040 * seg34AccX211 rho) * (rho 37039 * seg34AccY211 rho)) =
          (-1) * (rho 37040 * seg34AccX211 rho) - rho 37039 * seg34AccY211 rho +
            (seg34AccY211 rho - seg34AccX211 rho * (-1)) * (rho 37039 + rho 37040) := by
      rw [ha1, ha2, ha3]
      calc
        rho 37047 * (1 - rho 37045) = rho 37042 - rho 37043 - rho 37044 := ha5
        _ = (-1) * rho 37043 - rho 37044 + (seg34AccY211 rho - seg34AccX211 rho * (-1)) * (rho 37039 + rho 37040) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX212 rho = seg34AccX211 rho - Bool.toZMod bit * (seg34AccX211 rho - rho 37046) := by
      have hd : rho 37048 = Bool.toZMod bit * (rho 37046 - seg34AccX211 rho) := by
        rw [← hbit]
        unfold seg34AccX211
        linear_combination -r5776
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY212 rho = seg34AccY211 rho - Bool.toZMod bit * (seg34AccY211 rho - rho 37047) := by
      have hd : rho 37049 = Bool.toZMod bit * (rho 37047 - seg34AccY211 rho) := by
        rw [← hbit]
        unfold seg34AccY211
        linear_combination -r5777
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 37039 * rho 37040 = rho 37050 := by linear_combination r5778
    have hd1 : rho 37039 * rho 37039 = rho 37051 := by linear_combination r5779
    have hd2 : rho 37040 * rho 37040 = rho 37052 := by linear_combination r5780
    have hd3 : rho 37053 * (rho 37040 * rho 37040 + rho 37039 * rho 37039 * (-1)) = 2 * (rho 37039 * rho 37040) := by
      rw [hd0, hd1, hd2]
      linear_combination r5781
    have hd4 : rho 37054 * (2 - (rho 37040 * rho 37040 + rho 37039 * rho 37039 * (-1))) = rho 37040 * rho 37040 - rho 37039 * rho 37039 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5782
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX211 rho : Seg34.F), (seg34AccY211 rho : Seg34.F)⟩
      ⟨(rho 37039 : Seg34.F), (rho 37040 : Seg34.F)⟩
      ⟨(rho 37046 : Seg34.F), (rho 37047 : Seg34.F)⟩
      ⟨(seg34AccX212 rho : Seg34.F), (seg34AccY212 rho : Seg34.F)⟩
      ⟨(rho 37053 : Seg34.F), (rho 37054 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung211

theorem seg34_rows212 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow5783 rho ∧ Seg34.relationRow5784 rho ∧ Seg34.relationRow5785 rho ∧ Seg34.relationRow5786 rho ∧ Seg34.relationRow5787 rho ∧ Seg34.relationRow5788 rho ∧ Seg34.relationRow5789 rho ∧ Seg34.relationRow5790 rho ∧ Seg34.relationRow5791 rho ∧ Seg34.relationRow5792 rho ∧ Seg34.relationRow5793 rho ∧ Seg34.relationRow5794 rho ∧ Seg34.relationRow5795 rho ∧ Seg34.relationRow5796 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart72 at p72
  rcases p72 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5783, r5784, r5785, r5786, r5787, r5788, r5789, r5790, r5791, r5792, r5793, r5794, r5795, r5796, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5783, r5784, r5785, r5786, r5787, r5788, r5789, r5790, r5791, r5792, r5793, r5794, r5795, r5796⟩

theorem seg34_rung212 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34204 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX212 rho : Seg34.F), (seg34AccY212 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 37053 : Seg34.F), (rho 37054 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX212 rho : Seg34.F), (seg34AccY212 rho : Seg34.F)⟩
        ⟨(rho 37053 : Seg34.F), (rho 37054 : Seg34.F)⟩
        ⟨(seg34AccX213 rho : Seg34.F), (seg34AccY213 rho : Seg34.F)⟩
        ⟨(rho 37067 : Seg34.F), (rho 37068 : Seg34.F)⟩ := by
  obtain ⟨r5783, r5784, r5785, r5786, r5787, r5788, r5789, r5790, r5791, r5792, r5793, r5794, r5795, r5796⟩ := seg34_rows212 rho h
  unfold Seg34.relationRow5783 at r5783
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5783
  unfold Seg34.relationRow5784 at r5784
  unfold Seg34.relationRow5785 at r5785
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5785
  unfold Seg34.relationRow5786 at r5786
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5786
  unfold Seg34.relationRow5787 at r5787
  unfold Seg34.relationRow5788 at r5788
  unfold Seg34.relationRow5789 at r5789
  unfold Seg34.relationRow5790 at r5790
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5790
  unfold Seg34.relationRow5791 at r5791
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5791
  unfold Seg34.relationRow5792 at r5792
  unfold Seg34.relationRow5793 at r5793
  unfold Seg34.relationRow5794 at r5794
  unfold Seg34.relationRow5795 at r5795
  unfold Seg34.relationRow5796 at r5796
  have hrung212 (bit : Bool) (hbit : rho 34204 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX212 rho : Seg34.F), (seg34AccY212 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 37053 : Seg34.F), (rho 37054 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX212 rho : Seg34.F), (seg34AccY212 rho : Seg34.F)⟩
        ⟨(rho 37053 : Seg34.F), (rho 37054 : Seg34.F)⟩
        ⟨(seg34AccX213 rho : Seg34.F), (seg34AccY213 rho : Seg34.F)⟩
        ⟨(rho 37067 : Seg34.F), (rho 37068 : Seg34.F)⟩ := by
    have hnextx : seg34AccX213 rho = seg34AccX212 rho + rho 37062 := by
      unfold seg34AccX213 seg34AccX212
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 62]
      ring
    have hnexty : seg34AccY213 rho = seg34AccY212 rho + rho 37063 := by
      unfold seg34AccY213 seg34AccY212
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 62]
      ring
    have hsum : seg34AccX212 rho + seg34AccY212 rho = rho 37055 := by
      unfold seg34AccX212 seg34AccY212
      linear_combination r5783
    have ha0 : (rho 37053 + rho 37054) * (seg34AccX212 rho + seg34AccY212 rho) = rho 37056 := by
      rw [hsum]
      linear_combination r5784
    have ha1 : rho 37054 * seg34AccX212 rho = rho 37057 := by
      unfold seg34AccX212
      linear_combination r5785
    have ha2 : rho 37053 * seg34AccY212 rho = rho 37058 := by
      unfold seg34AccY212
      linear_combination r5786
    have ha3 : 3021 * rho 37057 * rho 37058 = rho 37059 := by
      linear_combination r5787
    have ha4 : rho 37060 * (1 + rho 37059) = rho 37057 + rho 37058 := by
      linear_combination r5788
    have ha5 : rho 37061 * (1 - rho 37059) = rho 37056 - rho 37057 - rho 37058 := by
      linear_combination r5789
    have haddx :
        rho 37060 * (1 + 3021 * (rho 37054 * seg34AccX212 rho) * (rho 37053 * seg34AccY212 rho)) =
          rho 37054 * seg34AccX212 rho + rho 37053 * seg34AccY212 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 37061 * (1 - 3021 * (rho 37054 * seg34AccX212 rho) * (rho 37053 * seg34AccY212 rho)) =
          (-1) * (rho 37054 * seg34AccX212 rho) - rho 37053 * seg34AccY212 rho +
            (seg34AccY212 rho - seg34AccX212 rho * (-1)) * (rho 37053 + rho 37054) := by
      rw [ha1, ha2, ha3]
      calc
        rho 37061 * (1 - rho 37059) = rho 37056 - rho 37057 - rho 37058 := ha5
        _ = (-1) * rho 37057 - rho 37058 + (seg34AccY212 rho - seg34AccX212 rho * (-1)) * (rho 37053 + rho 37054) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX213 rho = seg34AccX212 rho - Bool.toZMod bit * (seg34AccX212 rho - rho 37060) := by
      have hd : rho 37062 = Bool.toZMod bit * (rho 37060 - seg34AccX212 rho) := by
        rw [← hbit]
        unfold seg34AccX212
        linear_combination -r5790
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY213 rho = seg34AccY212 rho - Bool.toZMod bit * (seg34AccY212 rho - rho 37061) := by
      have hd : rho 37063 = Bool.toZMod bit * (rho 37061 - seg34AccY212 rho) := by
        rw [← hbit]
        unfold seg34AccY212
        linear_combination -r5791
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 37053 * rho 37054 = rho 37064 := by linear_combination r5792
    have hd1 : rho 37053 * rho 37053 = rho 37065 := by linear_combination r5793
    have hd2 : rho 37054 * rho 37054 = rho 37066 := by linear_combination r5794
    have hd3 : rho 37067 * (rho 37054 * rho 37054 + rho 37053 * rho 37053 * (-1)) = 2 * (rho 37053 * rho 37054) := by
      rw [hd0, hd1, hd2]
      linear_combination r5795
    have hd4 : rho 37068 * (2 - (rho 37054 * rho 37054 + rho 37053 * rho 37053 * (-1))) = rho 37054 * rho 37054 - rho 37053 * rho 37053 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5796
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX212 rho : Seg34.F), (seg34AccY212 rho : Seg34.F)⟩
      ⟨(rho 37053 : Seg34.F), (rho 37054 : Seg34.F)⟩
      ⟨(rho 37060 : Seg34.F), (rho 37061 : Seg34.F)⟩
      ⟨(seg34AccX213 rho : Seg34.F), (seg34AccY213 rho : Seg34.F)⟩
      ⟨(rho 37067 : Seg34.F), (rho 37068 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung212

theorem seg34_rows213 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow5797 rho ∧ Seg34.relationRow5798 rho ∧ Seg34.relationRow5799 rho ∧ Seg34.relationRow5800 rho ∧ Seg34.relationRow5801 rho ∧ Seg34.relationRow5802 rho ∧ Seg34.relationRow5803 rho ∧ Seg34.relationRow5804 rho ∧ Seg34.relationRow5805 rho ∧ Seg34.relationRow5806 rho ∧ Seg34.relationRow5807 rho ∧ Seg34.relationRow5808 rho ∧ Seg34.relationRow5809 rho ∧ Seg34.relationRow5810 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart72 at p72
  rcases p72 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5797, r5798, r5799, r5800, r5801, r5802, r5803, r5804, r5805, r5806, r5807, r5808, r5809, r5810, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5797, r5798, r5799, r5800, r5801, r5802, r5803, r5804, r5805, r5806, r5807, r5808, r5809, r5810⟩

theorem seg34_rung213 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34205 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX213 rho : Seg34.F), (seg34AccY213 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 37067 : Seg34.F), (rho 37068 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX213 rho : Seg34.F), (seg34AccY213 rho : Seg34.F)⟩
        ⟨(rho 37067 : Seg34.F), (rho 37068 : Seg34.F)⟩
        ⟨(seg34AccX214 rho : Seg34.F), (seg34AccY214 rho : Seg34.F)⟩
        ⟨(rho 37081 : Seg34.F), (rho 37082 : Seg34.F)⟩ := by
  obtain ⟨r5797, r5798, r5799, r5800, r5801, r5802, r5803, r5804, r5805, r5806, r5807, r5808, r5809, r5810⟩ := seg34_rows213 rho h
  unfold Seg34.relationRow5797 at r5797
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5797
  unfold Seg34.relationRow5798 at r5798
  unfold Seg34.relationRow5799 at r5799
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5799
  unfold Seg34.relationRow5800 at r5800
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5800
  unfold Seg34.relationRow5801 at r5801
  unfold Seg34.relationRow5802 at r5802
  unfold Seg34.relationRow5803 at r5803
  unfold Seg34.relationRow5804 at r5804
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5804
  unfold Seg34.relationRow5805 at r5805
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5805
  unfold Seg34.relationRow5806 at r5806
  unfold Seg34.relationRow5807 at r5807
  unfold Seg34.relationRow5808 at r5808
  unfold Seg34.relationRow5809 at r5809
  unfold Seg34.relationRow5810 at r5810
  have hrung213 (bit : Bool) (hbit : rho 34205 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX213 rho : Seg34.F), (seg34AccY213 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 37067 : Seg34.F), (rho 37068 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX213 rho : Seg34.F), (seg34AccY213 rho : Seg34.F)⟩
        ⟨(rho 37067 : Seg34.F), (rho 37068 : Seg34.F)⟩
        ⟨(seg34AccX214 rho : Seg34.F), (seg34AccY214 rho : Seg34.F)⟩
        ⟨(rho 37081 : Seg34.F), (rho 37082 : Seg34.F)⟩ := by
    have hnextx : seg34AccX214 rho = seg34AccX213 rho + rho 37076 := by
      unfold seg34AccX214 seg34AccX213
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 63]
      ring
    have hnexty : seg34AccY214 rho = seg34AccY213 rho + rho 37077 := by
      unfold seg34AccY214 seg34AccY213
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 63]
      ring
    have hsum : seg34AccX213 rho + seg34AccY213 rho = rho 37069 := by
      unfold seg34AccX213 seg34AccY213
      linear_combination r5797
    have ha0 : (rho 37067 + rho 37068) * (seg34AccX213 rho + seg34AccY213 rho) = rho 37070 := by
      rw [hsum]
      linear_combination r5798
    have ha1 : rho 37068 * seg34AccX213 rho = rho 37071 := by
      unfold seg34AccX213
      linear_combination r5799
    have ha2 : rho 37067 * seg34AccY213 rho = rho 37072 := by
      unfold seg34AccY213
      linear_combination r5800
    have ha3 : 3021 * rho 37071 * rho 37072 = rho 37073 := by
      linear_combination r5801
    have ha4 : rho 37074 * (1 + rho 37073) = rho 37071 + rho 37072 := by
      linear_combination r5802
    have ha5 : rho 37075 * (1 - rho 37073) = rho 37070 - rho 37071 - rho 37072 := by
      linear_combination r5803
    have haddx :
        rho 37074 * (1 + 3021 * (rho 37068 * seg34AccX213 rho) * (rho 37067 * seg34AccY213 rho)) =
          rho 37068 * seg34AccX213 rho + rho 37067 * seg34AccY213 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 37075 * (1 - 3021 * (rho 37068 * seg34AccX213 rho) * (rho 37067 * seg34AccY213 rho)) =
          (-1) * (rho 37068 * seg34AccX213 rho) - rho 37067 * seg34AccY213 rho +
            (seg34AccY213 rho - seg34AccX213 rho * (-1)) * (rho 37067 + rho 37068) := by
      rw [ha1, ha2, ha3]
      calc
        rho 37075 * (1 - rho 37073) = rho 37070 - rho 37071 - rho 37072 := ha5
        _ = (-1) * rho 37071 - rho 37072 + (seg34AccY213 rho - seg34AccX213 rho * (-1)) * (rho 37067 + rho 37068) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX214 rho = seg34AccX213 rho - Bool.toZMod bit * (seg34AccX213 rho - rho 37074) := by
      have hd : rho 37076 = Bool.toZMod bit * (rho 37074 - seg34AccX213 rho) := by
        rw [← hbit]
        unfold seg34AccX213
        linear_combination -r5804
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY214 rho = seg34AccY213 rho - Bool.toZMod bit * (seg34AccY213 rho - rho 37075) := by
      have hd : rho 37077 = Bool.toZMod bit * (rho 37075 - seg34AccY213 rho) := by
        rw [← hbit]
        unfold seg34AccY213
        linear_combination -r5805
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 37067 * rho 37068 = rho 37078 := by linear_combination r5806
    have hd1 : rho 37067 * rho 37067 = rho 37079 := by linear_combination r5807
    have hd2 : rho 37068 * rho 37068 = rho 37080 := by linear_combination r5808
    have hd3 : rho 37081 * (rho 37068 * rho 37068 + rho 37067 * rho 37067 * (-1)) = 2 * (rho 37067 * rho 37068) := by
      rw [hd0, hd1, hd2]
      linear_combination r5809
    have hd4 : rho 37082 * (2 - (rho 37068 * rho 37068 + rho 37067 * rho 37067 * (-1))) = rho 37068 * rho 37068 - rho 37067 * rho 37067 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5810
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX213 rho : Seg34.F), (seg34AccY213 rho : Seg34.F)⟩
      ⟨(rho 37067 : Seg34.F), (rho 37068 : Seg34.F)⟩
      ⟨(rho 37074 : Seg34.F), (rho 37075 : Seg34.F)⟩
      ⟨(seg34AccX214 rho : Seg34.F), (seg34AccY214 rho : Seg34.F)⟩
      ⟨(rho 37081 : Seg34.F), (rho 37082 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung213

theorem seg34_rows214 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow5811 rho ∧ Seg34.relationRow5812 rho ∧ Seg34.relationRow5813 rho ∧ Seg34.relationRow5814 rho ∧ Seg34.relationRow5815 rho ∧ Seg34.relationRow5816 rho ∧ Seg34.relationRow5817 rho ∧ Seg34.relationRow5818 rho ∧ Seg34.relationRow5819 rho ∧ Seg34.relationRow5820 rho ∧ Seg34.relationRow5821 rho ∧ Seg34.relationRow5822 rho ∧ Seg34.relationRow5823 rho ∧ Seg34.relationRow5824 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart72 at p72
  rcases p72 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5811, r5812, r5813, r5814, r5815, r5816, r5817, r5818, r5819, r5820, r5821, r5822, r5823, r5824, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5811, r5812, r5813, r5814, r5815, r5816, r5817, r5818, r5819, r5820, r5821, r5822, r5823, r5824⟩

theorem seg34_rung214 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34206 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX214 rho : Seg34.F), (seg34AccY214 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 37081 : Seg34.F), (rho 37082 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX214 rho : Seg34.F), (seg34AccY214 rho : Seg34.F)⟩
        ⟨(rho 37081 : Seg34.F), (rho 37082 : Seg34.F)⟩
        ⟨(seg34AccX215 rho : Seg34.F), (seg34AccY215 rho : Seg34.F)⟩
        ⟨(rho 37095 : Seg34.F), (rho 37096 : Seg34.F)⟩ := by
  obtain ⟨r5811, r5812, r5813, r5814, r5815, r5816, r5817, r5818, r5819, r5820, r5821, r5822, r5823, r5824⟩ := seg34_rows214 rho h
  unfold Seg34.relationRow5811 at r5811
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5811
  unfold Seg34.relationRow5812 at r5812
  unfold Seg34.relationRow5813 at r5813
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5813
  unfold Seg34.relationRow5814 at r5814
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5814
  unfold Seg34.relationRow5815 at r5815
  unfold Seg34.relationRow5816 at r5816
  unfold Seg34.relationRow5817 at r5817
  unfold Seg34.relationRow5818 at r5818
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5818
  unfold Seg34.relationRow5819 at r5819
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5819
  unfold Seg34.relationRow5820 at r5820
  unfold Seg34.relationRow5821 at r5821
  unfold Seg34.relationRow5822 at r5822
  unfold Seg34.relationRow5823 at r5823
  unfold Seg34.relationRow5824 at r5824
  have hrung214 (bit : Bool) (hbit : rho 34206 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX214 rho : Seg34.F), (seg34AccY214 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 37081 : Seg34.F), (rho 37082 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX214 rho : Seg34.F), (seg34AccY214 rho : Seg34.F)⟩
        ⟨(rho 37081 : Seg34.F), (rho 37082 : Seg34.F)⟩
        ⟨(seg34AccX215 rho : Seg34.F), (seg34AccY215 rho : Seg34.F)⟩
        ⟨(rho 37095 : Seg34.F), (rho 37096 : Seg34.F)⟩ := by
    have hnextx : seg34AccX215 rho = seg34AccX214 rho + rho 37090 := by
      unfold seg34AccX215 seg34AccX214
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 64]
      ring
    have hnexty : seg34AccY215 rho = seg34AccY214 rho + rho 37091 := by
      unfold seg34AccY215 seg34AccY214
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 64]
      ring
    have hsum : seg34AccX214 rho + seg34AccY214 rho = rho 37083 := by
      unfold seg34AccX214 seg34AccY214
      linear_combination r5811
    have ha0 : (rho 37081 + rho 37082) * (seg34AccX214 rho + seg34AccY214 rho) = rho 37084 := by
      rw [hsum]
      linear_combination r5812
    have ha1 : rho 37082 * seg34AccX214 rho = rho 37085 := by
      unfold seg34AccX214
      linear_combination r5813
    have ha2 : rho 37081 * seg34AccY214 rho = rho 37086 := by
      unfold seg34AccY214
      linear_combination r5814
    have ha3 : 3021 * rho 37085 * rho 37086 = rho 37087 := by
      linear_combination r5815
    have ha4 : rho 37088 * (1 + rho 37087) = rho 37085 + rho 37086 := by
      linear_combination r5816
    have ha5 : rho 37089 * (1 - rho 37087) = rho 37084 - rho 37085 - rho 37086 := by
      linear_combination r5817
    have haddx :
        rho 37088 * (1 + 3021 * (rho 37082 * seg34AccX214 rho) * (rho 37081 * seg34AccY214 rho)) =
          rho 37082 * seg34AccX214 rho + rho 37081 * seg34AccY214 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 37089 * (1 - 3021 * (rho 37082 * seg34AccX214 rho) * (rho 37081 * seg34AccY214 rho)) =
          (-1) * (rho 37082 * seg34AccX214 rho) - rho 37081 * seg34AccY214 rho +
            (seg34AccY214 rho - seg34AccX214 rho * (-1)) * (rho 37081 + rho 37082) := by
      rw [ha1, ha2, ha3]
      calc
        rho 37089 * (1 - rho 37087) = rho 37084 - rho 37085 - rho 37086 := ha5
        _ = (-1) * rho 37085 - rho 37086 + (seg34AccY214 rho - seg34AccX214 rho * (-1)) * (rho 37081 + rho 37082) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX215 rho = seg34AccX214 rho - Bool.toZMod bit * (seg34AccX214 rho - rho 37088) := by
      have hd : rho 37090 = Bool.toZMod bit * (rho 37088 - seg34AccX214 rho) := by
        rw [← hbit]
        unfold seg34AccX214
        linear_combination -r5818
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY215 rho = seg34AccY214 rho - Bool.toZMod bit * (seg34AccY214 rho - rho 37089) := by
      have hd : rho 37091 = Bool.toZMod bit * (rho 37089 - seg34AccY214 rho) := by
        rw [← hbit]
        unfold seg34AccY214
        linear_combination -r5819
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 37081 * rho 37082 = rho 37092 := by linear_combination r5820
    have hd1 : rho 37081 * rho 37081 = rho 37093 := by linear_combination r5821
    have hd2 : rho 37082 * rho 37082 = rho 37094 := by linear_combination r5822
    have hd3 : rho 37095 * (rho 37082 * rho 37082 + rho 37081 * rho 37081 * (-1)) = 2 * (rho 37081 * rho 37082) := by
      rw [hd0, hd1, hd2]
      linear_combination r5823
    have hd4 : rho 37096 * (2 - (rho 37082 * rho 37082 + rho 37081 * rho 37081 * (-1))) = rho 37082 * rho 37082 - rho 37081 * rho 37081 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5824
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX214 rho : Seg34.F), (seg34AccY214 rho : Seg34.F)⟩
      ⟨(rho 37081 : Seg34.F), (rho 37082 : Seg34.F)⟩
      ⟨(rho 37088 : Seg34.F), (rho 37089 : Seg34.F)⟩
      ⟨(seg34AccX215 rho : Seg34.F), (seg34AccY215 rho : Seg34.F)⟩
      ⟨(rho 37095 : Seg34.F), (rho 37096 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung214

theorem seg34_rows215 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow5825 rho ∧ Seg34.relationRow5826 rho ∧ Seg34.relationRow5827 rho ∧ Seg34.relationRow5828 rho ∧ Seg34.relationRow5829 rho ∧ Seg34.relationRow5830 rho ∧ Seg34.relationRow5831 rho ∧ Seg34.relationRow5832 rho ∧ Seg34.relationRow5833 rho ∧ Seg34.relationRow5834 rho ∧ Seg34.relationRow5835 rho ∧ Seg34.relationRow5836 rho ∧ Seg34.relationRow5837 rho ∧ Seg34.relationRow5838 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart72 at p72
  rcases p72 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5825, r5826, r5827, r5828, r5829, r5830, r5831, r5832, r5833, r5834, r5835, r5836, r5837, r5838, _⟩
  exact ⟨r5825, r5826, r5827, r5828, r5829, r5830, r5831, r5832, r5833, r5834, r5835, r5836, r5837, r5838⟩

theorem seg34_rung215 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34207 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX215 rho : Seg34.F), (seg34AccY215 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 37095 : Seg34.F), (rho 37096 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX215 rho : Seg34.F), (seg34AccY215 rho : Seg34.F)⟩
        ⟨(rho 37095 : Seg34.F), (rho 37096 : Seg34.F)⟩
        ⟨(seg34AccX216 rho : Seg34.F), (seg34AccY216 rho : Seg34.F)⟩
        ⟨(rho 37109 : Seg34.F), (rho 37110 : Seg34.F)⟩ := by
  obtain ⟨r5825, r5826, r5827, r5828, r5829, r5830, r5831, r5832, r5833, r5834, r5835, r5836, r5837, r5838⟩ := seg34_rows215 rho h
  unfold Seg34.relationRow5825 at r5825
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5825
  unfold Seg34.relationRow5826 at r5826
  unfold Seg34.relationRow5827 at r5827
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5827
  unfold Seg34.relationRow5828 at r5828
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5828
  unfold Seg34.relationRow5829 at r5829
  unfold Seg34.relationRow5830 at r5830
  unfold Seg34.relationRow5831 at r5831
  unfold Seg34.relationRow5832 at r5832
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5832
  unfold Seg34.relationRow5833 at r5833
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5833
  unfold Seg34.relationRow5834 at r5834
  unfold Seg34.relationRow5835 at r5835
  unfold Seg34.relationRow5836 at r5836
  unfold Seg34.relationRow5837 at r5837
  unfold Seg34.relationRow5838 at r5838
  have hrung215 (bit : Bool) (hbit : rho 34207 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX215 rho : Seg34.F), (seg34AccY215 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 37095 : Seg34.F), (rho 37096 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX215 rho : Seg34.F), (seg34AccY215 rho : Seg34.F)⟩
        ⟨(rho 37095 : Seg34.F), (rho 37096 : Seg34.F)⟩
        ⟨(seg34AccX216 rho : Seg34.F), (seg34AccY216 rho : Seg34.F)⟩
        ⟨(rho 37109 : Seg34.F), (rho 37110 : Seg34.F)⟩ := by
    have hnextx : seg34AccX216 rho = seg34AccX215 rho + rho 37104 := by
      unfold seg34AccX216 seg34AccX215
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 65]
      ring
    have hnexty : seg34AccY216 rho = seg34AccY215 rho + rho 37105 := by
      unfold seg34AccY216 seg34AccY215
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 65]
      ring
    have hsum : seg34AccX215 rho + seg34AccY215 rho = rho 37097 := by
      unfold seg34AccX215 seg34AccY215
      linear_combination r5825
    have ha0 : (rho 37095 + rho 37096) * (seg34AccX215 rho + seg34AccY215 rho) = rho 37098 := by
      rw [hsum]
      linear_combination r5826
    have ha1 : rho 37096 * seg34AccX215 rho = rho 37099 := by
      unfold seg34AccX215
      linear_combination r5827
    have ha2 : rho 37095 * seg34AccY215 rho = rho 37100 := by
      unfold seg34AccY215
      linear_combination r5828
    have ha3 : 3021 * rho 37099 * rho 37100 = rho 37101 := by
      linear_combination r5829
    have ha4 : rho 37102 * (1 + rho 37101) = rho 37099 + rho 37100 := by
      linear_combination r5830
    have ha5 : rho 37103 * (1 - rho 37101) = rho 37098 - rho 37099 - rho 37100 := by
      linear_combination r5831
    have haddx :
        rho 37102 * (1 + 3021 * (rho 37096 * seg34AccX215 rho) * (rho 37095 * seg34AccY215 rho)) =
          rho 37096 * seg34AccX215 rho + rho 37095 * seg34AccY215 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 37103 * (1 - 3021 * (rho 37096 * seg34AccX215 rho) * (rho 37095 * seg34AccY215 rho)) =
          (-1) * (rho 37096 * seg34AccX215 rho) - rho 37095 * seg34AccY215 rho +
            (seg34AccY215 rho - seg34AccX215 rho * (-1)) * (rho 37095 + rho 37096) := by
      rw [ha1, ha2, ha3]
      calc
        rho 37103 * (1 - rho 37101) = rho 37098 - rho 37099 - rho 37100 := ha5
        _ = (-1) * rho 37099 - rho 37100 + (seg34AccY215 rho - seg34AccX215 rho * (-1)) * (rho 37095 + rho 37096) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX216 rho = seg34AccX215 rho - Bool.toZMod bit * (seg34AccX215 rho - rho 37102) := by
      have hd : rho 37104 = Bool.toZMod bit * (rho 37102 - seg34AccX215 rho) := by
        rw [← hbit]
        unfold seg34AccX215
        linear_combination -r5832
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY216 rho = seg34AccY215 rho - Bool.toZMod bit * (seg34AccY215 rho - rho 37103) := by
      have hd : rho 37105 = Bool.toZMod bit * (rho 37103 - seg34AccY215 rho) := by
        rw [← hbit]
        unfold seg34AccY215
        linear_combination -r5833
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 37095 * rho 37096 = rho 37106 := by linear_combination r5834
    have hd1 : rho 37095 * rho 37095 = rho 37107 := by linear_combination r5835
    have hd2 : rho 37096 * rho 37096 = rho 37108 := by linear_combination r5836
    have hd3 : rho 37109 * (rho 37096 * rho 37096 + rho 37095 * rho 37095 * (-1)) = 2 * (rho 37095 * rho 37096) := by
      rw [hd0, hd1, hd2]
      linear_combination r5837
    have hd4 : rho 37110 * (2 - (rho 37096 * rho 37096 + rho 37095 * rho 37095 * (-1))) = rho 37096 * rho 37096 - rho 37095 * rho 37095 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5838
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX215 rho : Seg34.F), (seg34AccY215 rho : Seg34.F)⟩
      ⟨(rho 37095 : Seg34.F), (rho 37096 : Seg34.F)⟩
      ⟨(rho 37102 : Seg34.F), (rho 37103 : Seg34.F)⟩
      ⟨(seg34AccX216 rho : Seg34.F), (seg34AccY216 rho : Seg34.F)⟩
      ⟨(rho 37109 : Seg34.F), (rho 37110 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung215

theorem seg34_rows216 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow5839 rho ∧ Seg34.relationRow5840 rho ∧ Seg34.relationRow5841 rho ∧ Seg34.relationRow5842 rho ∧ Seg34.relationRow5843 rho ∧ Seg34.relationRow5844 rho ∧ Seg34.relationRow5845 rho ∧ Seg34.relationRow5846 rho ∧ Seg34.relationRow5847 rho ∧ Seg34.relationRow5848 rho ∧ Seg34.relationRow5849 rho ∧ Seg34.relationRow5850 rho ∧ Seg34.relationRow5851 rho ∧ Seg34.relationRow5852 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart72 at p72
  rcases p72 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5839⟩
  unfold Seg34.relationPart73 at p73
  rcases p73 with ⟨r5840, r5841, r5842, r5843, r5844, r5845, r5846, r5847, r5848, r5849, r5850, r5851, r5852, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5839, r5840, r5841, r5842, r5843, r5844, r5845, r5846, r5847, r5848, r5849, r5850, r5851, r5852⟩

theorem seg34_rung216 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34208 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX216 rho : Seg34.F), (seg34AccY216 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 37109 : Seg34.F), (rho 37110 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX216 rho : Seg34.F), (seg34AccY216 rho : Seg34.F)⟩
        ⟨(rho 37109 : Seg34.F), (rho 37110 : Seg34.F)⟩
        ⟨(seg34AccX217 rho : Seg34.F), (seg34AccY217 rho : Seg34.F)⟩
        ⟨(rho 37123 : Seg34.F), (rho 37124 : Seg34.F)⟩ := by
  obtain ⟨r5839, r5840, r5841, r5842, r5843, r5844, r5845, r5846, r5847, r5848, r5849, r5850, r5851, r5852⟩ := seg34_rows216 rho h
  unfold Seg34.relationRow5839 at r5839
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5839
  unfold Seg34.relationRow5840 at r5840
  unfold Seg34.relationRow5841 at r5841
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5841
  unfold Seg34.relationRow5842 at r5842
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5842
  unfold Seg34.relationRow5843 at r5843
  unfold Seg34.relationRow5844 at r5844
  unfold Seg34.relationRow5845 at r5845
  unfold Seg34.relationRow5846 at r5846
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5846
  unfold Seg34.relationRow5847 at r5847
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5847
  unfold Seg34.relationRow5848 at r5848
  unfold Seg34.relationRow5849 at r5849
  unfold Seg34.relationRow5850 at r5850
  unfold Seg34.relationRow5851 at r5851
  unfold Seg34.relationRow5852 at r5852
  have hrung216 (bit : Bool) (hbit : rho 34208 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX216 rho : Seg34.F), (seg34AccY216 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 37109 : Seg34.F), (rho 37110 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX216 rho : Seg34.F), (seg34AccY216 rho : Seg34.F)⟩
        ⟨(rho 37109 : Seg34.F), (rho 37110 : Seg34.F)⟩
        ⟨(seg34AccX217 rho : Seg34.F), (seg34AccY217 rho : Seg34.F)⟩
        ⟨(rho 37123 : Seg34.F), (rho 37124 : Seg34.F)⟩ := by
    have hnextx : seg34AccX217 rho = seg34AccX216 rho + rho 37118 := by
      unfold seg34AccX217 seg34AccX216
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 66]
      ring
    have hnexty : seg34AccY217 rho = seg34AccY216 rho + rho 37119 := by
      unfold seg34AccY217 seg34AccY216
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 66]
      ring
    have hsum : seg34AccX216 rho + seg34AccY216 rho = rho 37111 := by
      unfold seg34AccX216 seg34AccY216
      linear_combination r5839
    have ha0 : (rho 37109 + rho 37110) * (seg34AccX216 rho + seg34AccY216 rho) = rho 37112 := by
      rw [hsum]
      linear_combination r5840
    have ha1 : rho 37110 * seg34AccX216 rho = rho 37113 := by
      unfold seg34AccX216
      linear_combination r5841
    have ha2 : rho 37109 * seg34AccY216 rho = rho 37114 := by
      unfold seg34AccY216
      linear_combination r5842
    have ha3 : 3021 * rho 37113 * rho 37114 = rho 37115 := by
      linear_combination r5843
    have ha4 : rho 37116 * (1 + rho 37115) = rho 37113 + rho 37114 := by
      linear_combination r5844
    have ha5 : rho 37117 * (1 - rho 37115) = rho 37112 - rho 37113 - rho 37114 := by
      linear_combination r5845
    have haddx :
        rho 37116 * (1 + 3021 * (rho 37110 * seg34AccX216 rho) * (rho 37109 * seg34AccY216 rho)) =
          rho 37110 * seg34AccX216 rho + rho 37109 * seg34AccY216 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 37117 * (1 - 3021 * (rho 37110 * seg34AccX216 rho) * (rho 37109 * seg34AccY216 rho)) =
          (-1) * (rho 37110 * seg34AccX216 rho) - rho 37109 * seg34AccY216 rho +
            (seg34AccY216 rho - seg34AccX216 rho * (-1)) * (rho 37109 + rho 37110) := by
      rw [ha1, ha2, ha3]
      calc
        rho 37117 * (1 - rho 37115) = rho 37112 - rho 37113 - rho 37114 := ha5
        _ = (-1) * rho 37113 - rho 37114 + (seg34AccY216 rho - seg34AccX216 rho * (-1)) * (rho 37109 + rho 37110) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX217 rho = seg34AccX216 rho - Bool.toZMod bit * (seg34AccX216 rho - rho 37116) := by
      have hd : rho 37118 = Bool.toZMod bit * (rho 37116 - seg34AccX216 rho) := by
        rw [← hbit]
        unfold seg34AccX216
        linear_combination -r5846
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY217 rho = seg34AccY216 rho - Bool.toZMod bit * (seg34AccY216 rho - rho 37117) := by
      have hd : rho 37119 = Bool.toZMod bit * (rho 37117 - seg34AccY216 rho) := by
        rw [← hbit]
        unfold seg34AccY216
        linear_combination -r5847
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 37109 * rho 37110 = rho 37120 := by linear_combination r5848
    have hd1 : rho 37109 * rho 37109 = rho 37121 := by linear_combination r5849
    have hd2 : rho 37110 * rho 37110 = rho 37122 := by linear_combination r5850
    have hd3 : rho 37123 * (rho 37110 * rho 37110 + rho 37109 * rho 37109 * (-1)) = 2 * (rho 37109 * rho 37110) := by
      rw [hd0, hd1, hd2]
      linear_combination r5851
    have hd4 : rho 37124 * (2 - (rho 37110 * rho 37110 + rho 37109 * rho 37109 * (-1))) = rho 37110 * rho 37110 - rho 37109 * rho 37109 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5852
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX216 rho : Seg34.F), (seg34AccY216 rho : Seg34.F)⟩
      ⟨(rho 37109 : Seg34.F), (rho 37110 : Seg34.F)⟩
      ⟨(rho 37116 : Seg34.F), (rho 37117 : Seg34.F)⟩
      ⟨(seg34AccX217 rho : Seg34.F), (seg34AccY217 rho : Seg34.F)⟩
      ⟨(rho 37123 : Seg34.F), (rho 37124 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung216

theorem seg34_rows217 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow5853 rho ∧ Seg34.relationRow5854 rho ∧ Seg34.relationRow5855 rho ∧ Seg34.relationRow5856 rho ∧ Seg34.relationRow5857 rho ∧ Seg34.relationRow5858 rho ∧ Seg34.relationRow5859 rho ∧ Seg34.relationRow5860 rho ∧ Seg34.relationRow5861 rho ∧ Seg34.relationRow5862 rho ∧ Seg34.relationRow5863 rho ∧ Seg34.relationRow5864 rho ∧ Seg34.relationRow5865 rho ∧ Seg34.relationRow5866 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart73 at p73
  rcases p73 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, r5853, r5854, r5855, r5856, r5857, r5858, r5859, r5860, r5861, r5862, r5863, r5864, r5865, r5866, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5853, r5854, r5855, r5856, r5857, r5858, r5859, r5860, r5861, r5862, r5863, r5864, r5865, r5866⟩

theorem seg34_rung217 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34209 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX217 rho : Seg34.F), (seg34AccY217 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 37123 : Seg34.F), (rho 37124 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX217 rho : Seg34.F), (seg34AccY217 rho : Seg34.F)⟩
        ⟨(rho 37123 : Seg34.F), (rho 37124 : Seg34.F)⟩
        ⟨(seg34AccX218 rho : Seg34.F), (seg34AccY218 rho : Seg34.F)⟩
        ⟨(rho 37137 : Seg34.F), (rho 37138 : Seg34.F)⟩ := by
  obtain ⟨r5853, r5854, r5855, r5856, r5857, r5858, r5859, r5860, r5861, r5862, r5863, r5864, r5865, r5866⟩ := seg34_rows217 rho h
  unfold Seg34.relationRow5853 at r5853
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5853
  unfold Seg34.relationRow5854 at r5854
  unfold Seg34.relationRow5855 at r5855
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5855
  unfold Seg34.relationRow5856 at r5856
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5856
  unfold Seg34.relationRow5857 at r5857
  unfold Seg34.relationRow5858 at r5858
  unfold Seg34.relationRow5859 at r5859
  unfold Seg34.relationRow5860 at r5860
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5860
  unfold Seg34.relationRow5861 at r5861
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5861
  unfold Seg34.relationRow5862 at r5862
  unfold Seg34.relationRow5863 at r5863
  unfold Seg34.relationRow5864 at r5864
  unfold Seg34.relationRow5865 at r5865
  unfold Seg34.relationRow5866 at r5866
  have hrung217 (bit : Bool) (hbit : rho 34209 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX217 rho : Seg34.F), (seg34AccY217 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 37123 : Seg34.F), (rho 37124 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX217 rho : Seg34.F), (seg34AccY217 rho : Seg34.F)⟩
        ⟨(rho 37123 : Seg34.F), (rho 37124 : Seg34.F)⟩
        ⟨(seg34AccX218 rho : Seg34.F), (seg34AccY218 rho : Seg34.F)⟩
        ⟨(rho 37137 : Seg34.F), (rho 37138 : Seg34.F)⟩ := by
    have hnextx : seg34AccX218 rho = seg34AccX217 rho + rho 37132 := by
      unfold seg34AccX218 seg34AccX217
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 67]
      ring
    have hnexty : seg34AccY218 rho = seg34AccY217 rho + rho 37133 := by
      unfold seg34AccY218 seg34AccY217
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 67]
      ring
    have hsum : seg34AccX217 rho + seg34AccY217 rho = rho 37125 := by
      unfold seg34AccX217 seg34AccY217
      linear_combination r5853
    have ha0 : (rho 37123 + rho 37124) * (seg34AccX217 rho + seg34AccY217 rho) = rho 37126 := by
      rw [hsum]
      linear_combination r5854
    have ha1 : rho 37124 * seg34AccX217 rho = rho 37127 := by
      unfold seg34AccX217
      linear_combination r5855
    have ha2 : rho 37123 * seg34AccY217 rho = rho 37128 := by
      unfold seg34AccY217
      linear_combination r5856
    have ha3 : 3021 * rho 37127 * rho 37128 = rho 37129 := by
      linear_combination r5857
    have ha4 : rho 37130 * (1 + rho 37129) = rho 37127 + rho 37128 := by
      linear_combination r5858
    have ha5 : rho 37131 * (1 - rho 37129) = rho 37126 - rho 37127 - rho 37128 := by
      linear_combination r5859
    have haddx :
        rho 37130 * (1 + 3021 * (rho 37124 * seg34AccX217 rho) * (rho 37123 * seg34AccY217 rho)) =
          rho 37124 * seg34AccX217 rho + rho 37123 * seg34AccY217 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 37131 * (1 - 3021 * (rho 37124 * seg34AccX217 rho) * (rho 37123 * seg34AccY217 rho)) =
          (-1) * (rho 37124 * seg34AccX217 rho) - rho 37123 * seg34AccY217 rho +
            (seg34AccY217 rho - seg34AccX217 rho * (-1)) * (rho 37123 + rho 37124) := by
      rw [ha1, ha2, ha3]
      calc
        rho 37131 * (1 - rho 37129) = rho 37126 - rho 37127 - rho 37128 := ha5
        _ = (-1) * rho 37127 - rho 37128 + (seg34AccY217 rho - seg34AccX217 rho * (-1)) * (rho 37123 + rho 37124) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX218 rho = seg34AccX217 rho - Bool.toZMod bit * (seg34AccX217 rho - rho 37130) := by
      have hd : rho 37132 = Bool.toZMod bit * (rho 37130 - seg34AccX217 rho) := by
        rw [← hbit]
        unfold seg34AccX217
        linear_combination -r5860
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY218 rho = seg34AccY217 rho - Bool.toZMod bit * (seg34AccY217 rho - rho 37131) := by
      have hd : rho 37133 = Bool.toZMod bit * (rho 37131 - seg34AccY217 rho) := by
        rw [← hbit]
        unfold seg34AccY217
        linear_combination -r5861
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 37123 * rho 37124 = rho 37134 := by linear_combination r5862
    have hd1 : rho 37123 * rho 37123 = rho 37135 := by linear_combination r5863
    have hd2 : rho 37124 * rho 37124 = rho 37136 := by linear_combination r5864
    have hd3 : rho 37137 * (rho 37124 * rho 37124 + rho 37123 * rho 37123 * (-1)) = 2 * (rho 37123 * rho 37124) := by
      rw [hd0, hd1, hd2]
      linear_combination r5865
    have hd4 : rho 37138 * (2 - (rho 37124 * rho 37124 + rho 37123 * rho 37123 * (-1))) = rho 37124 * rho 37124 - rho 37123 * rho 37123 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5866
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX217 rho : Seg34.F), (seg34AccY217 rho : Seg34.F)⟩
      ⟨(rho 37123 : Seg34.F), (rho 37124 : Seg34.F)⟩
      ⟨(rho 37130 : Seg34.F), (rho 37131 : Seg34.F)⟩
      ⟨(seg34AccX218 rho : Seg34.F), (seg34AccY218 rho : Seg34.F)⟩
      ⟨(rho 37137 : Seg34.F), (rho 37138 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung217

theorem seg34_rows218 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow5867 rho ∧ Seg34.relationRow5868 rho ∧ Seg34.relationRow5869 rho ∧ Seg34.relationRow5870 rho ∧ Seg34.relationRow5871 rho ∧ Seg34.relationRow5872 rho ∧ Seg34.relationRow5873 rho ∧ Seg34.relationRow5874 rho ∧ Seg34.relationRow5875 rho ∧ Seg34.relationRow5876 rho ∧ Seg34.relationRow5877 rho ∧ Seg34.relationRow5878 rho ∧ Seg34.relationRow5879 rho ∧ Seg34.relationRow5880 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart73 at p73
  rcases p73 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5867, r5868, r5869, r5870, r5871, r5872, r5873, r5874, r5875, r5876, r5877, r5878, r5879, r5880, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5867, r5868, r5869, r5870, r5871, r5872, r5873, r5874, r5875, r5876, r5877, r5878, r5879, r5880⟩

theorem seg34_rung218 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34210 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX218 rho : Seg34.F), (seg34AccY218 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 37137 : Seg34.F), (rho 37138 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX218 rho : Seg34.F), (seg34AccY218 rho : Seg34.F)⟩
        ⟨(rho 37137 : Seg34.F), (rho 37138 : Seg34.F)⟩
        ⟨(seg34AccX219 rho : Seg34.F), (seg34AccY219 rho : Seg34.F)⟩
        ⟨(rho 37151 : Seg34.F), (rho 37152 : Seg34.F)⟩ := by
  obtain ⟨r5867, r5868, r5869, r5870, r5871, r5872, r5873, r5874, r5875, r5876, r5877, r5878, r5879, r5880⟩ := seg34_rows218 rho h
  unfold Seg34.relationRow5867 at r5867
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5867
  unfold Seg34.relationRow5868 at r5868
  unfold Seg34.relationRow5869 at r5869
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5869
  unfold Seg34.relationRow5870 at r5870
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5870
  unfold Seg34.relationRow5871 at r5871
  unfold Seg34.relationRow5872 at r5872
  unfold Seg34.relationRow5873 at r5873
  unfold Seg34.relationRow5874 at r5874
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5874
  unfold Seg34.relationRow5875 at r5875
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5875
  unfold Seg34.relationRow5876 at r5876
  unfold Seg34.relationRow5877 at r5877
  unfold Seg34.relationRow5878 at r5878
  unfold Seg34.relationRow5879 at r5879
  unfold Seg34.relationRow5880 at r5880
  have hrung218 (bit : Bool) (hbit : rho 34210 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX218 rho : Seg34.F), (seg34AccY218 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 37137 : Seg34.F), (rho 37138 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX218 rho : Seg34.F), (seg34AccY218 rho : Seg34.F)⟩
        ⟨(rho 37137 : Seg34.F), (rho 37138 : Seg34.F)⟩
        ⟨(seg34AccX219 rho : Seg34.F), (seg34AccY219 rho : Seg34.F)⟩
        ⟨(rho 37151 : Seg34.F), (rho 37152 : Seg34.F)⟩ := by
    have hnextx : seg34AccX219 rho = seg34AccX218 rho + rho 37146 := by
      unfold seg34AccX219 seg34AccX218
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 68]
      ring
    have hnexty : seg34AccY219 rho = seg34AccY218 rho + rho 37147 := by
      unfold seg34AccY219 seg34AccY218
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 68]
      ring
    have hsum : seg34AccX218 rho + seg34AccY218 rho = rho 37139 := by
      unfold seg34AccX218 seg34AccY218
      linear_combination r5867
    have ha0 : (rho 37137 + rho 37138) * (seg34AccX218 rho + seg34AccY218 rho) = rho 37140 := by
      rw [hsum]
      linear_combination r5868
    have ha1 : rho 37138 * seg34AccX218 rho = rho 37141 := by
      unfold seg34AccX218
      linear_combination r5869
    have ha2 : rho 37137 * seg34AccY218 rho = rho 37142 := by
      unfold seg34AccY218
      linear_combination r5870
    have ha3 : 3021 * rho 37141 * rho 37142 = rho 37143 := by
      linear_combination r5871
    have ha4 : rho 37144 * (1 + rho 37143) = rho 37141 + rho 37142 := by
      linear_combination r5872
    have ha5 : rho 37145 * (1 - rho 37143) = rho 37140 - rho 37141 - rho 37142 := by
      linear_combination r5873
    have haddx :
        rho 37144 * (1 + 3021 * (rho 37138 * seg34AccX218 rho) * (rho 37137 * seg34AccY218 rho)) =
          rho 37138 * seg34AccX218 rho + rho 37137 * seg34AccY218 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 37145 * (1 - 3021 * (rho 37138 * seg34AccX218 rho) * (rho 37137 * seg34AccY218 rho)) =
          (-1) * (rho 37138 * seg34AccX218 rho) - rho 37137 * seg34AccY218 rho +
            (seg34AccY218 rho - seg34AccX218 rho * (-1)) * (rho 37137 + rho 37138) := by
      rw [ha1, ha2, ha3]
      calc
        rho 37145 * (1 - rho 37143) = rho 37140 - rho 37141 - rho 37142 := ha5
        _ = (-1) * rho 37141 - rho 37142 + (seg34AccY218 rho - seg34AccX218 rho * (-1)) * (rho 37137 + rho 37138) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX219 rho = seg34AccX218 rho - Bool.toZMod bit * (seg34AccX218 rho - rho 37144) := by
      have hd : rho 37146 = Bool.toZMod bit * (rho 37144 - seg34AccX218 rho) := by
        rw [← hbit]
        unfold seg34AccX218
        linear_combination -r5874
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY219 rho = seg34AccY218 rho - Bool.toZMod bit * (seg34AccY218 rho - rho 37145) := by
      have hd : rho 37147 = Bool.toZMod bit * (rho 37145 - seg34AccY218 rho) := by
        rw [← hbit]
        unfold seg34AccY218
        linear_combination -r5875
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 37137 * rho 37138 = rho 37148 := by linear_combination r5876
    have hd1 : rho 37137 * rho 37137 = rho 37149 := by linear_combination r5877
    have hd2 : rho 37138 * rho 37138 = rho 37150 := by linear_combination r5878
    have hd3 : rho 37151 * (rho 37138 * rho 37138 + rho 37137 * rho 37137 * (-1)) = 2 * (rho 37137 * rho 37138) := by
      rw [hd0, hd1, hd2]
      linear_combination r5879
    have hd4 : rho 37152 * (2 - (rho 37138 * rho 37138 + rho 37137 * rho 37137 * (-1))) = rho 37138 * rho 37138 - rho 37137 * rho 37137 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5880
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX218 rho : Seg34.F), (seg34AccY218 rho : Seg34.F)⟩
      ⟨(rho 37137 : Seg34.F), (rho 37138 : Seg34.F)⟩
      ⟨(rho 37144 : Seg34.F), (rho 37145 : Seg34.F)⟩
      ⟨(seg34AccX219 rho : Seg34.F), (seg34AccY219 rho : Seg34.F)⟩
      ⟨(rho 37151 : Seg34.F), (rho 37152 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung218

theorem seg34_rows219 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow5881 rho ∧ Seg34.relationRow5882 rho ∧ Seg34.relationRow5883 rho ∧ Seg34.relationRow5884 rho ∧ Seg34.relationRow5885 rho ∧ Seg34.relationRow5886 rho ∧ Seg34.relationRow5887 rho ∧ Seg34.relationRow5888 rho ∧ Seg34.relationRow5889 rho ∧ Seg34.relationRow5890 rho ∧ Seg34.relationRow5891 rho ∧ Seg34.relationRow5892 rho ∧ Seg34.relationRow5893 rho ∧ Seg34.relationRow5894 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart73 at p73
  rcases p73 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5881, r5882, r5883, r5884, r5885, r5886, r5887, r5888, r5889, r5890, r5891, r5892, r5893, r5894, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5881, r5882, r5883, r5884, r5885, r5886, r5887, r5888, r5889, r5890, r5891, r5892, r5893, r5894⟩

theorem seg34_rung219 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34211 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX219 rho : Seg34.F), (seg34AccY219 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 37151 : Seg34.F), (rho 37152 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX219 rho : Seg34.F), (seg34AccY219 rho : Seg34.F)⟩
        ⟨(rho 37151 : Seg34.F), (rho 37152 : Seg34.F)⟩
        ⟨(seg34AccX220 rho : Seg34.F), (seg34AccY220 rho : Seg34.F)⟩
        ⟨(rho 37165 : Seg34.F), (rho 37166 : Seg34.F)⟩ := by
  obtain ⟨r5881, r5882, r5883, r5884, r5885, r5886, r5887, r5888, r5889, r5890, r5891, r5892, r5893, r5894⟩ := seg34_rows219 rho h
  unfold Seg34.relationRow5881 at r5881
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5881
  unfold Seg34.relationRow5882 at r5882
  unfold Seg34.relationRow5883 at r5883
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5883
  unfold Seg34.relationRow5884 at r5884
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5884
  unfold Seg34.relationRow5885 at r5885
  unfold Seg34.relationRow5886 at r5886
  unfold Seg34.relationRow5887 at r5887
  unfold Seg34.relationRow5888 at r5888
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5888
  unfold Seg34.relationRow5889 at r5889
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5889
  unfold Seg34.relationRow5890 at r5890
  unfold Seg34.relationRow5891 at r5891
  unfold Seg34.relationRow5892 at r5892
  unfold Seg34.relationRow5893 at r5893
  unfold Seg34.relationRow5894 at r5894
  have hrung219 (bit : Bool) (hbit : rho 34211 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX219 rho : Seg34.F), (seg34AccY219 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 37151 : Seg34.F), (rho 37152 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX219 rho : Seg34.F), (seg34AccY219 rho : Seg34.F)⟩
        ⟨(rho 37151 : Seg34.F), (rho 37152 : Seg34.F)⟩
        ⟨(seg34AccX220 rho : Seg34.F), (seg34AccY220 rho : Seg34.F)⟩
        ⟨(rho 37165 : Seg34.F), (rho 37166 : Seg34.F)⟩ := by
    have hnextx : seg34AccX220 rho = seg34AccX219 rho + rho 37160 := by
      unfold seg34AccX220 seg34AccX219
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 69]
      ring
    have hnexty : seg34AccY220 rho = seg34AccY219 rho + rho 37161 := by
      unfold seg34AccY220 seg34AccY219
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 69]
      ring
    have hsum : seg34AccX219 rho + seg34AccY219 rho = rho 37153 := by
      unfold seg34AccX219 seg34AccY219
      linear_combination r5881
    have ha0 : (rho 37151 + rho 37152) * (seg34AccX219 rho + seg34AccY219 rho) = rho 37154 := by
      rw [hsum]
      linear_combination r5882
    have ha1 : rho 37152 * seg34AccX219 rho = rho 37155 := by
      unfold seg34AccX219
      linear_combination r5883
    have ha2 : rho 37151 * seg34AccY219 rho = rho 37156 := by
      unfold seg34AccY219
      linear_combination r5884
    have ha3 : 3021 * rho 37155 * rho 37156 = rho 37157 := by
      linear_combination r5885
    have ha4 : rho 37158 * (1 + rho 37157) = rho 37155 + rho 37156 := by
      linear_combination r5886
    have ha5 : rho 37159 * (1 - rho 37157) = rho 37154 - rho 37155 - rho 37156 := by
      linear_combination r5887
    have haddx :
        rho 37158 * (1 + 3021 * (rho 37152 * seg34AccX219 rho) * (rho 37151 * seg34AccY219 rho)) =
          rho 37152 * seg34AccX219 rho + rho 37151 * seg34AccY219 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 37159 * (1 - 3021 * (rho 37152 * seg34AccX219 rho) * (rho 37151 * seg34AccY219 rho)) =
          (-1) * (rho 37152 * seg34AccX219 rho) - rho 37151 * seg34AccY219 rho +
            (seg34AccY219 rho - seg34AccX219 rho * (-1)) * (rho 37151 + rho 37152) := by
      rw [ha1, ha2, ha3]
      calc
        rho 37159 * (1 - rho 37157) = rho 37154 - rho 37155 - rho 37156 := ha5
        _ = (-1) * rho 37155 - rho 37156 + (seg34AccY219 rho - seg34AccX219 rho * (-1)) * (rho 37151 + rho 37152) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX220 rho = seg34AccX219 rho - Bool.toZMod bit * (seg34AccX219 rho - rho 37158) := by
      have hd : rho 37160 = Bool.toZMod bit * (rho 37158 - seg34AccX219 rho) := by
        rw [← hbit]
        unfold seg34AccX219
        linear_combination -r5888
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY220 rho = seg34AccY219 rho - Bool.toZMod bit * (seg34AccY219 rho - rho 37159) := by
      have hd : rho 37161 = Bool.toZMod bit * (rho 37159 - seg34AccY219 rho) := by
        rw [← hbit]
        unfold seg34AccY219
        linear_combination -r5889
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 37151 * rho 37152 = rho 37162 := by linear_combination r5890
    have hd1 : rho 37151 * rho 37151 = rho 37163 := by linear_combination r5891
    have hd2 : rho 37152 * rho 37152 = rho 37164 := by linear_combination r5892
    have hd3 : rho 37165 * (rho 37152 * rho 37152 + rho 37151 * rho 37151 * (-1)) = 2 * (rho 37151 * rho 37152) := by
      rw [hd0, hd1, hd2]
      linear_combination r5893
    have hd4 : rho 37166 * (2 - (rho 37152 * rho 37152 + rho 37151 * rho 37151 * (-1))) = rho 37152 * rho 37152 - rho 37151 * rho 37151 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5894
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX219 rho : Seg34.F), (seg34AccY219 rho : Seg34.F)⟩
      ⟨(rho 37151 : Seg34.F), (rho 37152 : Seg34.F)⟩
      ⟨(rho 37158 : Seg34.F), (rho 37159 : Seg34.F)⟩
      ⟨(seg34AccX220 rho : Seg34.F), (seg34AccY220 rho : Seg34.F)⟩
      ⟨(rho 37165 : Seg34.F), (rho 37166 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung219

theorem seg34_hstep_c19 (rho : Nat -> Seg34.F) (h : Seg34.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (33992 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 209 ≤ i → i < 220 →
      EdwardsBridge.onCurve (seg34LadderAccState rho i) →
      EdwardsBridge.onCurve (seg34LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg34LadderAccState rho i) (seg34LadderCurState rho i)
        (seg34LadderAccState rho (i + 1)) (seg34LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg34_rung209 rho h bits[209]! (hbitAt 209 (by omega)) hacc hcur
  · exact seg34_rung210 rho h bits[210]! (hbitAt 210 (by omega)) hacc hcur
  · exact seg34_rung211 rho h bits[211]! (hbitAt 211 (by omega)) hacc hcur
  · exact seg34_rung212 rho h bits[212]! (hbitAt 212 (by omega)) hacc hcur
  · exact seg34_rung213 rho h bits[213]! (hbitAt 213 (by omega)) hacc hcur
  · exact seg34_rung214 rho h bits[214]! (hbitAt 214 (by omega)) hacc hcur
  · exact seg34_rung215 rho h bits[215]! (hbitAt 215 (by omega)) hacc hcur
  · exact seg34_rung216 rho h bits[216]! (hbitAt 216 (by omega)) hacc hcur
  · exact seg34_rung217 rho h bits[217]! (hbitAt 217 (by omega)) hacc hcur
  · exact seg34_rung218 rho h bits[218]! (hbitAt 218 (by omega)) hacc hcur
  · exact seg34_rung219 rho h bits[219]! (hbitAt 219 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
