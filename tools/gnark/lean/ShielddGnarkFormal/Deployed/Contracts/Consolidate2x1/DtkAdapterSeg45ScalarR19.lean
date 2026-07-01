import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg45_rows209 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow5741 rho ∧ Seg45.relationRow5742 rho ∧ Seg45.relationRow5743 rho ∧ Seg45.relationRow5744 rho ∧ Seg45.relationRow5745 rho ∧ Seg45.relationRow5746 rho ∧ Seg45.relationRow5747 rho ∧ Seg45.relationRow5748 rho ∧ Seg45.relationRow5749 rho ∧ Seg45.relationRow5750 rho ∧ Seg45.relationRow5751 rho ∧ Seg45.relationRow5752 rho ∧ Seg45.relationRow5753 rho ∧ Seg45.relationRow5754 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart71 at p71
  rcases p71 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5741, r5742, r5743, r5744, r5745, r5746, r5747, r5748, r5749, r5750, r5751, r5752, r5753, r5754, _, _, _, _, _⟩
  exact ⟨r5741, r5742, r5743, r5744, r5745, r5746, r5747, r5748, r5749, r5750, r5751, r5752, r5753, r5754⟩

theorem seg45_rung209 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41157 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX209 rho : Seg45.F), (seg45AccY209 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43967 : Seg45.F), (rho 43968 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX209 rho : Seg45.F), (seg45AccY209 rho : Seg45.F)⟩
        ⟨(rho 43967 : Seg45.F), (rho 43968 : Seg45.F)⟩
        ⟨(seg45AccX210 rho : Seg45.F), (seg45AccY210 rho : Seg45.F)⟩
        ⟨(rho 43981 : Seg45.F), (rho 43982 : Seg45.F)⟩ := by
  obtain ⟨r5741, r5742, r5743, r5744, r5745, r5746, r5747, r5748, r5749, r5750, r5751, r5752, r5753, r5754⟩ := seg45_rows209 rho h
  unfold Seg45.relationRow5741 at r5741
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5741
  unfold Seg45.relationRow5742 at r5742
  unfold Seg45.relationRow5743 at r5743
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5743
  unfold Seg45.relationRow5744 at r5744
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5744
  unfold Seg45.relationRow5745 at r5745
  unfold Seg45.relationRow5746 at r5746
  unfold Seg45.relationRow5747 at r5747
  unfold Seg45.relationRow5748 at r5748
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5748
  unfold Seg45.relationRow5749 at r5749
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5749
  unfold Seg45.relationRow5750 at r5750
  unfold Seg45.relationRow5751 at r5751
  unfold Seg45.relationRow5752 at r5752
  unfold Seg45.relationRow5753 at r5753
  unfold Seg45.relationRow5754 at r5754
  have hrung209 (bit : Bool) (hbit : rho 41157 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX209 rho : Seg45.F), (seg45AccY209 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43967 : Seg45.F), (rho 43968 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX209 rho : Seg45.F), (seg45AccY209 rho : Seg45.F)⟩
        ⟨(rho 43967 : Seg45.F), (rho 43968 : Seg45.F)⟩
        ⟨(seg45AccX210 rho : Seg45.F), (seg45AccY210 rho : Seg45.F)⟩
        ⟨(rho 43981 : Seg45.F), (rho 43982 : Seg45.F)⟩ := by
    have hnextx : seg45AccX210 rho = seg45AccX209 rho + rho 43976 := by
      unfold seg45AccX210 seg45AccX209
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 59]
      ring
    have hnexty : seg45AccY210 rho = seg45AccY209 rho + rho 43977 := by
      unfold seg45AccY210 seg45AccY209
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 59]
      ring
    have hsum : seg45AccX209 rho + seg45AccY209 rho = rho 43969 := by
      unfold seg45AccX209 seg45AccY209
      linear_combination r5741
    have ha0 : (rho 43967 + rho 43968) * (seg45AccX209 rho + seg45AccY209 rho) = rho 43970 := by
      rw [hsum]
      linear_combination r5742
    have ha1 : rho 43968 * seg45AccX209 rho = rho 43971 := by
      unfold seg45AccX209
      linear_combination r5743
    have ha2 : rho 43967 * seg45AccY209 rho = rho 43972 := by
      unfold seg45AccY209
      linear_combination r5744
    have ha3 : 3021 * rho 43971 * rho 43972 = rho 43973 := by
      linear_combination r5745
    have ha4 : rho 43974 * (1 + rho 43973) = rho 43971 + rho 43972 := by
      linear_combination r5746
    have ha5 : rho 43975 * (1 - rho 43973) = rho 43970 - rho 43971 - rho 43972 := by
      linear_combination r5747
    have haddx :
        rho 43974 * (1 + 3021 * (rho 43968 * seg45AccX209 rho) * (rho 43967 * seg45AccY209 rho)) =
          rho 43968 * seg45AccX209 rho + rho 43967 * seg45AccY209 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43975 * (1 - 3021 * (rho 43968 * seg45AccX209 rho) * (rho 43967 * seg45AccY209 rho)) =
          (-1) * (rho 43968 * seg45AccX209 rho) - rho 43967 * seg45AccY209 rho +
            (seg45AccY209 rho - seg45AccX209 rho * (-1)) * (rho 43967 + rho 43968) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43975 * (1 - rho 43973) = rho 43970 - rho 43971 - rho 43972 := ha5
        _ = (-1) * rho 43971 - rho 43972 + (seg45AccY209 rho - seg45AccX209 rho * (-1)) * (rho 43967 + rho 43968) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX210 rho = seg45AccX209 rho - Bool.toZMod bit * (seg45AccX209 rho - rho 43974) := by
      have hd : rho 43976 = Bool.toZMod bit * (rho 43974 - seg45AccX209 rho) := by
        rw [← hbit]
        unfold seg45AccX209
        linear_combination -r5748
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY210 rho = seg45AccY209 rho - Bool.toZMod bit * (seg45AccY209 rho - rho 43975) := by
      have hd : rho 43977 = Bool.toZMod bit * (rho 43975 - seg45AccY209 rho) := by
        rw [← hbit]
        unfold seg45AccY209
        linear_combination -r5749
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 43967 * rho 43968 = rho 43978 := by linear_combination r5750
    have hd1 : rho 43967 * rho 43967 = rho 43979 := by linear_combination r5751
    have hd2 : rho 43968 * rho 43968 = rho 43980 := by linear_combination r5752
    have hd3 : rho 43981 * (rho 43968 * rho 43968 + rho 43967 * rho 43967 * (-1)) = 2 * (rho 43967 * rho 43968) := by
      rw [hd0, hd1, hd2]
      linear_combination r5753
    have hd4 : rho 43982 * (2 - (rho 43968 * rho 43968 + rho 43967 * rho 43967 * (-1))) = rho 43968 * rho 43968 - rho 43967 * rho 43967 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5754
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX209 rho : Seg45.F), (seg45AccY209 rho : Seg45.F)⟩
      ⟨(rho 43967 : Seg45.F), (rho 43968 : Seg45.F)⟩
      ⟨(rho 43974 : Seg45.F), (rho 43975 : Seg45.F)⟩
      ⟨(seg45AccX210 rho : Seg45.F), (seg45AccY210 rho : Seg45.F)⟩
      ⟨(rho 43981 : Seg45.F), (rho 43982 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung209

theorem seg45_rows210 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow5755 rho ∧ Seg45.relationRow5756 rho ∧ Seg45.relationRow5757 rho ∧ Seg45.relationRow5758 rho ∧ Seg45.relationRow5759 rho ∧ Seg45.relationRow5760 rho ∧ Seg45.relationRow5761 rho ∧ Seg45.relationRow5762 rho ∧ Seg45.relationRow5763 rho ∧ Seg45.relationRow5764 rho ∧ Seg45.relationRow5765 rho ∧ Seg45.relationRow5766 rho ∧ Seg45.relationRow5767 rho ∧ Seg45.relationRow5768 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart71 at p71
  rcases p71 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5755, r5756, r5757, r5758, r5759⟩
  unfold Seg45.relationPart72 at p72
  rcases p72 with ⟨r5760, r5761, r5762, r5763, r5764, r5765, r5766, r5767, r5768, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5755, r5756, r5757, r5758, r5759, r5760, r5761, r5762, r5763, r5764, r5765, r5766, r5767, r5768⟩

theorem seg45_rung210 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41158 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX210 rho : Seg45.F), (seg45AccY210 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43981 : Seg45.F), (rho 43982 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX210 rho : Seg45.F), (seg45AccY210 rho : Seg45.F)⟩
        ⟨(rho 43981 : Seg45.F), (rho 43982 : Seg45.F)⟩
        ⟨(seg45AccX211 rho : Seg45.F), (seg45AccY211 rho : Seg45.F)⟩
        ⟨(rho 43995 : Seg45.F), (rho 43996 : Seg45.F)⟩ := by
  obtain ⟨r5755, r5756, r5757, r5758, r5759, r5760, r5761, r5762, r5763, r5764, r5765, r5766, r5767, r5768⟩ := seg45_rows210 rho h
  unfold Seg45.relationRow5755 at r5755
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5755
  unfold Seg45.relationRow5756 at r5756
  unfold Seg45.relationRow5757 at r5757
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5757
  unfold Seg45.relationRow5758 at r5758
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5758
  unfold Seg45.relationRow5759 at r5759
  unfold Seg45.relationRow5760 at r5760
  unfold Seg45.relationRow5761 at r5761
  unfold Seg45.relationRow5762 at r5762
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5762
  unfold Seg45.relationRow5763 at r5763
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5763
  unfold Seg45.relationRow5764 at r5764
  unfold Seg45.relationRow5765 at r5765
  unfold Seg45.relationRow5766 at r5766
  unfold Seg45.relationRow5767 at r5767
  unfold Seg45.relationRow5768 at r5768
  have hrung210 (bit : Bool) (hbit : rho 41158 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX210 rho : Seg45.F), (seg45AccY210 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43981 : Seg45.F), (rho 43982 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX210 rho : Seg45.F), (seg45AccY210 rho : Seg45.F)⟩
        ⟨(rho 43981 : Seg45.F), (rho 43982 : Seg45.F)⟩
        ⟨(seg45AccX211 rho : Seg45.F), (seg45AccY211 rho : Seg45.F)⟩
        ⟨(rho 43995 : Seg45.F), (rho 43996 : Seg45.F)⟩ := by
    have hnextx : seg45AccX211 rho = seg45AccX210 rho + rho 43990 := by
      unfold seg45AccX211 seg45AccX210
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 60]
      ring
    have hnexty : seg45AccY211 rho = seg45AccY210 rho + rho 43991 := by
      unfold seg45AccY211 seg45AccY210
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 60]
      ring
    have hsum : seg45AccX210 rho + seg45AccY210 rho = rho 43983 := by
      unfold seg45AccX210 seg45AccY210
      linear_combination r5755
    have ha0 : (rho 43981 + rho 43982) * (seg45AccX210 rho + seg45AccY210 rho) = rho 43984 := by
      rw [hsum]
      linear_combination r5756
    have ha1 : rho 43982 * seg45AccX210 rho = rho 43985 := by
      unfold seg45AccX210
      linear_combination r5757
    have ha2 : rho 43981 * seg45AccY210 rho = rho 43986 := by
      unfold seg45AccY210
      linear_combination r5758
    have ha3 : 3021 * rho 43985 * rho 43986 = rho 43987 := by
      linear_combination r5759
    have ha4 : rho 43988 * (1 + rho 43987) = rho 43985 + rho 43986 := by
      linear_combination r5760
    have ha5 : rho 43989 * (1 - rho 43987) = rho 43984 - rho 43985 - rho 43986 := by
      linear_combination r5761
    have haddx :
        rho 43988 * (1 + 3021 * (rho 43982 * seg45AccX210 rho) * (rho 43981 * seg45AccY210 rho)) =
          rho 43982 * seg45AccX210 rho + rho 43981 * seg45AccY210 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43989 * (1 - 3021 * (rho 43982 * seg45AccX210 rho) * (rho 43981 * seg45AccY210 rho)) =
          (-1) * (rho 43982 * seg45AccX210 rho) - rho 43981 * seg45AccY210 rho +
            (seg45AccY210 rho - seg45AccX210 rho * (-1)) * (rho 43981 + rho 43982) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43989 * (1 - rho 43987) = rho 43984 - rho 43985 - rho 43986 := ha5
        _ = (-1) * rho 43985 - rho 43986 + (seg45AccY210 rho - seg45AccX210 rho * (-1)) * (rho 43981 + rho 43982) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX211 rho = seg45AccX210 rho - Bool.toZMod bit * (seg45AccX210 rho - rho 43988) := by
      have hd : rho 43990 = Bool.toZMod bit * (rho 43988 - seg45AccX210 rho) := by
        rw [← hbit]
        unfold seg45AccX210
        linear_combination -r5762
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY211 rho = seg45AccY210 rho - Bool.toZMod bit * (seg45AccY210 rho - rho 43989) := by
      have hd : rho 43991 = Bool.toZMod bit * (rho 43989 - seg45AccY210 rho) := by
        rw [← hbit]
        unfold seg45AccY210
        linear_combination -r5763
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 43981 * rho 43982 = rho 43992 := by linear_combination r5764
    have hd1 : rho 43981 * rho 43981 = rho 43993 := by linear_combination r5765
    have hd2 : rho 43982 * rho 43982 = rho 43994 := by linear_combination r5766
    have hd3 : rho 43995 * (rho 43982 * rho 43982 + rho 43981 * rho 43981 * (-1)) = 2 * (rho 43981 * rho 43982) := by
      rw [hd0, hd1, hd2]
      linear_combination r5767
    have hd4 : rho 43996 * (2 - (rho 43982 * rho 43982 + rho 43981 * rho 43981 * (-1))) = rho 43982 * rho 43982 - rho 43981 * rho 43981 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5768
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX210 rho : Seg45.F), (seg45AccY210 rho : Seg45.F)⟩
      ⟨(rho 43981 : Seg45.F), (rho 43982 : Seg45.F)⟩
      ⟨(rho 43988 : Seg45.F), (rho 43989 : Seg45.F)⟩
      ⟨(seg45AccX211 rho : Seg45.F), (seg45AccY211 rho : Seg45.F)⟩
      ⟨(rho 43995 : Seg45.F), (rho 43996 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung210

theorem seg45_rows211 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow5769 rho ∧ Seg45.relationRow5770 rho ∧ Seg45.relationRow5771 rho ∧ Seg45.relationRow5772 rho ∧ Seg45.relationRow5773 rho ∧ Seg45.relationRow5774 rho ∧ Seg45.relationRow5775 rho ∧ Seg45.relationRow5776 rho ∧ Seg45.relationRow5777 rho ∧ Seg45.relationRow5778 rho ∧ Seg45.relationRow5779 rho ∧ Seg45.relationRow5780 rho ∧ Seg45.relationRow5781 rho ∧ Seg45.relationRow5782 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart72 at p72
  rcases p72 with ⟨_, _, _, _, _, _, _, _, _, r5769, r5770, r5771, r5772, r5773, r5774, r5775, r5776, r5777, r5778, r5779, r5780, r5781, r5782, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5769, r5770, r5771, r5772, r5773, r5774, r5775, r5776, r5777, r5778, r5779, r5780, r5781, r5782⟩

theorem seg45_rung211 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41159 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX211 rho : Seg45.F), (seg45AccY211 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43995 : Seg45.F), (rho 43996 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX211 rho : Seg45.F), (seg45AccY211 rho : Seg45.F)⟩
        ⟨(rho 43995 : Seg45.F), (rho 43996 : Seg45.F)⟩
        ⟨(seg45AccX212 rho : Seg45.F), (seg45AccY212 rho : Seg45.F)⟩
        ⟨(rho 44009 : Seg45.F), (rho 44010 : Seg45.F)⟩ := by
  obtain ⟨r5769, r5770, r5771, r5772, r5773, r5774, r5775, r5776, r5777, r5778, r5779, r5780, r5781, r5782⟩ := seg45_rows211 rho h
  unfold Seg45.relationRow5769 at r5769
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5769
  unfold Seg45.relationRow5770 at r5770
  unfold Seg45.relationRow5771 at r5771
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5771
  unfold Seg45.relationRow5772 at r5772
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5772
  unfold Seg45.relationRow5773 at r5773
  unfold Seg45.relationRow5774 at r5774
  unfold Seg45.relationRow5775 at r5775
  unfold Seg45.relationRow5776 at r5776
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5776
  unfold Seg45.relationRow5777 at r5777
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5777
  unfold Seg45.relationRow5778 at r5778
  unfold Seg45.relationRow5779 at r5779
  unfold Seg45.relationRow5780 at r5780
  unfold Seg45.relationRow5781 at r5781
  unfold Seg45.relationRow5782 at r5782
  have hrung211 (bit : Bool) (hbit : rho 41159 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX211 rho : Seg45.F), (seg45AccY211 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43995 : Seg45.F), (rho 43996 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX211 rho : Seg45.F), (seg45AccY211 rho : Seg45.F)⟩
        ⟨(rho 43995 : Seg45.F), (rho 43996 : Seg45.F)⟩
        ⟨(seg45AccX212 rho : Seg45.F), (seg45AccY212 rho : Seg45.F)⟩
        ⟨(rho 44009 : Seg45.F), (rho 44010 : Seg45.F)⟩ := by
    have hnextx : seg45AccX212 rho = seg45AccX211 rho + rho 44004 := by
      unfold seg45AccX212 seg45AccX211
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 61]
      ring
    have hnexty : seg45AccY212 rho = seg45AccY211 rho + rho 44005 := by
      unfold seg45AccY212 seg45AccY211
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 61]
      ring
    have hsum : seg45AccX211 rho + seg45AccY211 rho = rho 43997 := by
      unfold seg45AccX211 seg45AccY211
      linear_combination r5769
    have ha0 : (rho 43995 + rho 43996) * (seg45AccX211 rho + seg45AccY211 rho) = rho 43998 := by
      rw [hsum]
      linear_combination r5770
    have ha1 : rho 43996 * seg45AccX211 rho = rho 43999 := by
      unfold seg45AccX211
      linear_combination r5771
    have ha2 : rho 43995 * seg45AccY211 rho = rho 44000 := by
      unfold seg45AccY211
      linear_combination r5772
    have ha3 : 3021 * rho 43999 * rho 44000 = rho 44001 := by
      linear_combination r5773
    have ha4 : rho 44002 * (1 + rho 44001) = rho 43999 + rho 44000 := by
      linear_combination r5774
    have ha5 : rho 44003 * (1 - rho 44001) = rho 43998 - rho 43999 - rho 44000 := by
      linear_combination r5775
    have haddx :
        rho 44002 * (1 + 3021 * (rho 43996 * seg45AccX211 rho) * (rho 43995 * seg45AccY211 rho)) =
          rho 43996 * seg45AccX211 rho + rho 43995 * seg45AccY211 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 44003 * (1 - 3021 * (rho 43996 * seg45AccX211 rho) * (rho 43995 * seg45AccY211 rho)) =
          (-1) * (rho 43996 * seg45AccX211 rho) - rho 43995 * seg45AccY211 rho +
            (seg45AccY211 rho - seg45AccX211 rho * (-1)) * (rho 43995 + rho 43996) := by
      rw [ha1, ha2, ha3]
      calc
        rho 44003 * (1 - rho 44001) = rho 43998 - rho 43999 - rho 44000 := ha5
        _ = (-1) * rho 43999 - rho 44000 + (seg45AccY211 rho - seg45AccX211 rho * (-1)) * (rho 43995 + rho 43996) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX212 rho = seg45AccX211 rho - Bool.toZMod bit * (seg45AccX211 rho - rho 44002) := by
      have hd : rho 44004 = Bool.toZMod bit * (rho 44002 - seg45AccX211 rho) := by
        rw [← hbit]
        unfold seg45AccX211
        linear_combination -r5776
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY212 rho = seg45AccY211 rho - Bool.toZMod bit * (seg45AccY211 rho - rho 44003) := by
      have hd : rho 44005 = Bool.toZMod bit * (rho 44003 - seg45AccY211 rho) := by
        rw [← hbit]
        unfold seg45AccY211
        linear_combination -r5777
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 43995 * rho 43996 = rho 44006 := by linear_combination r5778
    have hd1 : rho 43995 * rho 43995 = rho 44007 := by linear_combination r5779
    have hd2 : rho 43996 * rho 43996 = rho 44008 := by linear_combination r5780
    have hd3 : rho 44009 * (rho 43996 * rho 43996 + rho 43995 * rho 43995 * (-1)) = 2 * (rho 43995 * rho 43996) := by
      rw [hd0, hd1, hd2]
      linear_combination r5781
    have hd4 : rho 44010 * (2 - (rho 43996 * rho 43996 + rho 43995 * rho 43995 * (-1))) = rho 43996 * rho 43996 - rho 43995 * rho 43995 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5782
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX211 rho : Seg45.F), (seg45AccY211 rho : Seg45.F)⟩
      ⟨(rho 43995 : Seg45.F), (rho 43996 : Seg45.F)⟩
      ⟨(rho 44002 : Seg45.F), (rho 44003 : Seg45.F)⟩
      ⟨(seg45AccX212 rho : Seg45.F), (seg45AccY212 rho : Seg45.F)⟩
      ⟨(rho 44009 : Seg45.F), (rho 44010 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung211

theorem seg45_rows212 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow5783 rho ∧ Seg45.relationRow5784 rho ∧ Seg45.relationRow5785 rho ∧ Seg45.relationRow5786 rho ∧ Seg45.relationRow5787 rho ∧ Seg45.relationRow5788 rho ∧ Seg45.relationRow5789 rho ∧ Seg45.relationRow5790 rho ∧ Seg45.relationRow5791 rho ∧ Seg45.relationRow5792 rho ∧ Seg45.relationRow5793 rho ∧ Seg45.relationRow5794 rho ∧ Seg45.relationRow5795 rho ∧ Seg45.relationRow5796 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart72 at p72
  rcases p72 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5783, r5784, r5785, r5786, r5787, r5788, r5789, r5790, r5791, r5792, r5793, r5794, r5795, r5796, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5783, r5784, r5785, r5786, r5787, r5788, r5789, r5790, r5791, r5792, r5793, r5794, r5795, r5796⟩

theorem seg45_rung212 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41160 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX212 rho : Seg45.F), (seg45AccY212 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 44009 : Seg45.F), (rho 44010 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX212 rho : Seg45.F), (seg45AccY212 rho : Seg45.F)⟩
        ⟨(rho 44009 : Seg45.F), (rho 44010 : Seg45.F)⟩
        ⟨(seg45AccX213 rho : Seg45.F), (seg45AccY213 rho : Seg45.F)⟩
        ⟨(rho 44023 : Seg45.F), (rho 44024 : Seg45.F)⟩ := by
  obtain ⟨r5783, r5784, r5785, r5786, r5787, r5788, r5789, r5790, r5791, r5792, r5793, r5794, r5795, r5796⟩ := seg45_rows212 rho h
  unfold Seg45.relationRow5783 at r5783
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5783
  unfold Seg45.relationRow5784 at r5784
  unfold Seg45.relationRow5785 at r5785
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5785
  unfold Seg45.relationRow5786 at r5786
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5786
  unfold Seg45.relationRow5787 at r5787
  unfold Seg45.relationRow5788 at r5788
  unfold Seg45.relationRow5789 at r5789
  unfold Seg45.relationRow5790 at r5790
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5790
  unfold Seg45.relationRow5791 at r5791
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5791
  unfold Seg45.relationRow5792 at r5792
  unfold Seg45.relationRow5793 at r5793
  unfold Seg45.relationRow5794 at r5794
  unfold Seg45.relationRow5795 at r5795
  unfold Seg45.relationRow5796 at r5796
  have hrung212 (bit : Bool) (hbit : rho 41160 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX212 rho : Seg45.F), (seg45AccY212 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 44009 : Seg45.F), (rho 44010 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX212 rho : Seg45.F), (seg45AccY212 rho : Seg45.F)⟩
        ⟨(rho 44009 : Seg45.F), (rho 44010 : Seg45.F)⟩
        ⟨(seg45AccX213 rho : Seg45.F), (seg45AccY213 rho : Seg45.F)⟩
        ⟨(rho 44023 : Seg45.F), (rho 44024 : Seg45.F)⟩ := by
    have hnextx : seg45AccX213 rho = seg45AccX212 rho + rho 44018 := by
      unfold seg45AccX213 seg45AccX212
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 62]
      ring
    have hnexty : seg45AccY213 rho = seg45AccY212 rho + rho 44019 := by
      unfold seg45AccY213 seg45AccY212
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 62]
      ring
    have hsum : seg45AccX212 rho + seg45AccY212 rho = rho 44011 := by
      unfold seg45AccX212 seg45AccY212
      linear_combination r5783
    have ha0 : (rho 44009 + rho 44010) * (seg45AccX212 rho + seg45AccY212 rho) = rho 44012 := by
      rw [hsum]
      linear_combination r5784
    have ha1 : rho 44010 * seg45AccX212 rho = rho 44013 := by
      unfold seg45AccX212
      linear_combination r5785
    have ha2 : rho 44009 * seg45AccY212 rho = rho 44014 := by
      unfold seg45AccY212
      linear_combination r5786
    have ha3 : 3021 * rho 44013 * rho 44014 = rho 44015 := by
      linear_combination r5787
    have ha4 : rho 44016 * (1 + rho 44015) = rho 44013 + rho 44014 := by
      linear_combination r5788
    have ha5 : rho 44017 * (1 - rho 44015) = rho 44012 - rho 44013 - rho 44014 := by
      linear_combination r5789
    have haddx :
        rho 44016 * (1 + 3021 * (rho 44010 * seg45AccX212 rho) * (rho 44009 * seg45AccY212 rho)) =
          rho 44010 * seg45AccX212 rho + rho 44009 * seg45AccY212 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 44017 * (1 - 3021 * (rho 44010 * seg45AccX212 rho) * (rho 44009 * seg45AccY212 rho)) =
          (-1) * (rho 44010 * seg45AccX212 rho) - rho 44009 * seg45AccY212 rho +
            (seg45AccY212 rho - seg45AccX212 rho * (-1)) * (rho 44009 + rho 44010) := by
      rw [ha1, ha2, ha3]
      calc
        rho 44017 * (1 - rho 44015) = rho 44012 - rho 44013 - rho 44014 := ha5
        _ = (-1) * rho 44013 - rho 44014 + (seg45AccY212 rho - seg45AccX212 rho * (-1)) * (rho 44009 + rho 44010) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX213 rho = seg45AccX212 rho - Bool.toZMod bit * (seg45AccX212 rho - rho 44016) := by
      have hd : rho 44018 = Bool.toZMod bit * (rho 44016 - seg45AccX212 rho) := by
        rw [← hbit]
        unfold seg45AccX212
        linear_combination -r5790
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY213 rho = seg45AccY212 rho - Bool.toZMod bit * (seg45AccY212 rho - rho 44017) := by
      have hd : rho 44019 = Bool.toZMod bit * (rho 44017 - seg45AccY212 rho) := by
        rw [← hbit]
        unfold seg45AccY212
        linear_combination -r5791
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 44009 * rho 44010 = rho 44020 := by linear_combination r5792
    have hd1 : rho 44009 * rho 44009 = rho 44021 := by linear_combination r5793
    have hd2 : rho 44010 * rho 44010 = rho 44022 := by linear_combination r5794
    have hd3 : rho 44023 * (rho 44010 * rho 44010 + rho 44009 * rho 44009 * (-1)) = 2 * (rho 44009 * rho 44010) := by
      rw [hd0, hd1, hd2]
      linear_combination r5795
    have hd4 : rho 44024 * (2 - (rho 44010 * rho 44010 + rho 44009 * rho 44009 * (-1))) = rho 44010 * rho 44010 - rho 44009 * rho 44009 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5796
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX212 rho : Seg45.F), (seg45AccY212 rho : Seg45.F)⟩
      ⟨(rho 44009 : Seg45.F), (rho 44010 : Seg45.F)⟩
      ⟨(rho 44016 : Seg45.F), (rho 44017 : Seg45.F)⟩
      ⟨(seg45AccX213 rho : Seg45.F), (seg45AccY213 rho : Seg45.F)⟩
      ⟨(rho 44023 : Seg45.F), (rho 44024 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung212

theorem seg45_rows213 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow5797 rho ∧ Seg45.relationRow5798 rho ∧ Seg45.relationRow5799 rho ∧ Seg45.relationRow5800 rho ∧ Seg45.relationRow5801 rho ∧ Seg45.relationRow5802 rho ∧ Seg45.relationRow5803 rho ∧ Seg45.relationRow5804 rho ∧ Seg45.relationRow5805 rho ∧ Seg45.relationRow5806 rho ∧ Seg45.relationRow5807 rho ∧ Seg45.relationRow5808 rho ∧ Seg45.relationRow5809 rho ∧ Seg45.relationRow5810 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart72 at p72
  rcases p72 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5797, r5798, r5799, r5800, r5801, r5802, r5803, r5804, r5805, r5806, r5807, r5808, r5809, r5810, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5797, r5798, r5799, r5800, r5801, r5802, r5803, r5804, r5805, r5806, r5807, r5808, r5809, r5810⟩

theorem seg45_rung213 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41161 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX213 rho : Seg45.F), (seg45AccY213 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 44023 : Seg45.F), (rho 44024 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX213 rho : Seg45.F), (seg45AccY213 rho : Seg45.F)⟩
        ⟨(rho 44023 : Seg45.F), (rho 44024 : Seg45.F)⟩
        ⟨(seg45AccX214 rho : Seg45.F), (seg45AccY214 rho : Seg45.F)⟩
        ⟨(rho 44037 : Seg45.F), (rho 44038 : Seg45.F)⟩ := by
  obtain ⟨r5797, r5798, r5799, r5800, r5801, r5802, r5803, r5804, r5805, r5806, r5807, r5808, r5809, r5810⟩ := seg45_rows213 rho h
  unfold Seg45.relationRow5797 at r5797
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5797
  unfold Seg45.relationRow5798 at r5798
  unfold Seg45.relationRow5799 at r5799
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5799
  unfold Seg45.relationRow5800 at r5800
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5800
  unfold Seg45.relationRow5801 at r5801
  unfold Seg45.relationRow5802 at r5802
  unfold Seg45.relationRow5803 at r5803
  unfold Seg45.relationRow5804 at r5804
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5804
  unfold Seg45.relationRow5805 at r5805
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5805
  unfold Seg45.relationRow5806 at r5806
  unfold Seg45.relationRow5807 at r5807
  unfold Seg45.relationRow5808 at r5808
  unfold Seg45.relationRow5809 at r5809
  unfold Seg45.relationRow5810 at r5810
  have hrung213 (bit : Bool) (hbit : rho 41161 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX213 rho : Seg45.F), (seg45AccY213 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 44023 : Seg45.F), (rho 44024 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX213 rho : Seg45.F), (seg45AccY213 rho : Seg45.F)⟩
        ⟨(rho 44023 : Seg45.F), (rho 44024 : Seg45.F)⟩
        ⟨(seg45AccX214 rho : Seg45.F), (seg45AccY214 rho : Seg45.F)⟩
        ⟨(rho 44037 : Seg45.F), (rho 44038 : Seg45.F)⟩ := by
    have hnextx : seg45AccX214 rho = seg45AccX213 rho + rho 44032 := by
      unfold seg45AccX214 seg45AccX213
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 63]
      ring
    have hnexty : seg45AccY214 rho = seg45AccY213 rho + rho 44033 := by
      unfold seg45AccY214 seg45AccY213
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 63]
      ring
    have hsum : seg45AccX213 rho + seg45AccY213 rho = rho 44025 := by
      unfold seg45AccX213 seg45AccY213
      linear_combination r5797
    have ha0 : (rho 44023 + rho 44024) * (seg45AccX213 rho + seg45AccY213 rho) = rho 44026 := by
      rw [hsum]
      linear_combination r5798
    have ha1 : rho 44024 * seg45AccX213 rho = rho 44027 := by
      unfold seg45AccX213
      linear_combination r5799
    have ha2 : rho 44023 * seg45AccY213 rho = rho 44028 := by
      unfold seg45AccY213
      linear_combination r5800
    have ha3 : 3021 * rho 44027 * rho 44028 = rho 44029 := by
      linear_combination r5801
    have ha4 : rho 44030 * (1 + rho 44029) = rho 44027 + rho 44028 := by
      linear_combination r5802
    have ha5 : rho 44031 * (1 - rho 44029) = rho 44026 - rho 44027 - rho 44028 := by
      linear_combination r5803
    have haddx :
        rho 44030 * (1 + 3021 * (rho 44024 * seg45AccX213 rho) * (rho 44023 * seg45AccY213 rho)) =
          rho 44024 * seg45AccX213 rho + rho 44023 * seg45AccY213 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 44031 * (1 - 3021 * (rho 44024 * seg45AccX213 rho) * (rho 44023 * seg45AccY213 rho)) =
          (-1) * (rho 44024 * seg45AccX213 rho) - rho 44023 * seg45AccY213 rho +
            (seg45AccY213 rho - seg45AccX213 rho * (-1)) * (rho 44023 + rho 44024) := by
      rw [ha1, ha2, ha3]
      calc
        rho 44031 * (1 - rho 44029) = rho 44026 - rho 44027 - rho 44028 := ha5
        _ = (-1) * rho 44027 - rho 44028 + (seg45AccY213 rho - seg45AccX213 rho * (-1)) * (rho 44023 + rho 44024) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX214 rho = seg45AccX213 rho - Bool.toZMod bit * (seg45AccX213 rho - rho 44030) := by
      have hd : rho 44032 = Bool.toZMod bit * (rho 44030 - seg45AccX213 rho) := by
        rw [← hbit]
        unfold seg45AccX213
        linear_combination -r5804
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY214 rho = seg45AccY213 rho - Bool.toZMod bit * (seg45AccY213 rho - rho 44031) := by
      have hd : rho 44033 = Bool.toZMod bit * (rho 44031 - seg45AccY213 rho) := by
        rw [← hbit]
        unfold seg45AccY213
        linear_combination -r5805
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 44023 * rho 44024 = rho 44034 := by linear_combination r5806
    have hd1 : rho 44023 * rho 44023 = rho 44035 := by linear_combination r5807
    have hd2 : rho 44024 * rho 44024 = rho 44036 := by linear_combination r5808
    have hd3 : rho 44037 * (rho 44024 * rho 44024 + rho 44023 * rho 44023 * (-1)) = 2 * (rho 44023 * rho 44024) := by
      rw [hd0, hd1, hd2]
      linear_combination r5809
    have hd4 : rho 44038 * (2 - (rho 44024 * rho 44024 + rho 44023 * rho 44023 * (-1))) = rho 44024 * rho 44024 - rho 44023 * rho 44023 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5810
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX213 rho : Seg45.F), (seg45AccY213 rho : Seg45.F)⟩
      ⟨(rho 44023 : Seg45.F), (rho 44024 : Seg45.F)⟩
      ⟨(rho 44030 : Seg45.F), (rho 44031 : Seg45.F)⟩
      ⟨(seg45AccX214 rho : Seg45.F), (seg45AccY214 rho : Seg45.F)⟩
      ⟨(rho 44037 : Seg45.F), (rho 44038 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung213

theorem seg45_rows214 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow5811 rho ∧ Seg45.relationRow5812 rho ∧ Seg45.relationRow5813 rho ∧ Seg45.relationRow5814 rho ∧ Seg45.relationRow5815 rho ∧ Seg45.relationRow5816 rho ∧ Seg45.relationRow5817 rho ∧ Seg45.relationRow5818 rho ∧ Seg45.relationRow5819 rho ∧ Seg45.relationRow5820 rho ∧ Seg45.relationRow5821 rho ∧ Seg45.relationRow5822 rho ∧ Seg45.relationRow5823 rho ∧ Seg45.relationRow5824 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart72 at p72
  rcases p72 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5811, r5812, r5813, r5814, r5815, r5816, r5817, r5818, r5819, r5820, r5821, r5822, r5823, r5824, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5811, r5812, r5813, r5814, r5815, r5816, r5817, r5818, r5819, r5820, r5821, r5822, r5823, r5824⟩

theorem seg45_rung214 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41162 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX214 rho : Seg45.F), (seg45AccY214 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 44037 : Seg45.F), (rho 44038 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX214 rho : Seg45.F), (seg45AccY214 rho : Seg45.F)⟩
        ⟨(rho 44037 : Seg45.F), (rho 44038 : Seg45.F)⟩
        ⟨(seg45AccX215 rho : Seg45.F), (seg45AccY215 rho : Seg45.F)⟩
        ⟨(rho 44051 : Seg45.F), (rho 44052 : Seg45.F)⟩ := by
  obtain ⟨r5811, r5812, r5813, r5814, r5815, r5816, r5817, r5818, r5819, r5820, r5821, r5822, r5823, r5824⟩ := seg45_rows214 rho h
  unfold Seg45.relationRow5811 at r5811
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5811
  unfold Seg45.relationRow5812 at r5812
  unfold Seg45.relationRow5813 at r5813
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5813
  unfold Seg45.relationRow5814 at r5814
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5814
  unfold Seg45.relationRow5815 at r5815
  unfold Seg45.relationRow5816 at r5816
  unfold Seg45.relationRow5817 at r5817
  unfold Seg45.relationRow5818 at r5818
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5818
  unfold Seg45.relationRow5819 at r5819
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5819
  unfold Seg45.relationRow5820 at r5820
  unfold Seg45.relationRow5821 at r5821
  unfold Seg45.relationRow5822 at r5822
  unfold Seg45.relationRow5823 at r5823
  unfold Seg45.relationRow5824 at r5824
  have hrung214 (bit : Bool) (hbit : rho 41162 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX214 rho : Seg45.F), (seg45AccY214 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 44037 : Seg45.F), (rho 44038 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX214 rho : Seg45.F), (seg45AccY214 rho : Seg45.F)⟩
        ⟨(rho 44037 : Seg45.F), (rho 44038 : Seg45.F)⟩
        ⟨(seg45AccX215 rho : Seg45.F), (seg45AccY215 rho : Seg45.F)⟩
        ⟨(rho 44051 : Seg45.F), (rho 44052 : Seg45.F)⟩ := by
    have hnextx : seg45AccX215 rho = seg45AccX214 rho + rho 44046 := by
      unfold seg45AccX215 seg45AccX214
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 64]
      ring
    have hnexty : seg45AccY215 rho = seg45AccY214 rho + rho 44047 := by
      unfold seg45AccY215 seg45AccY214
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 64]
      ring
    have hsum : seg45AccX214 rho + seg45AccY214 rho = rho 44039 := by
      unfold seg45AccX214 seg45AccY214
      linear_combination r5811
    have ha0 : (rho 44037 + rho 44038) * (seg45AccX214 rho + seg45AccY214 rho) = rho 44040 := by
      rw [hsum]
      linear_combination r5812
    have ha1 : rho 44038 * seg45AccX214 rho = rho 44041 := by
      unfold seg45AccX214
      linear_combination r5813
    have ha2 : rho 44037 * seg45AccY214 rho = rho 44042 := by
      unfold seg45AccY214
      linear_combination r5814
    have ha3 : 3021 * rho 44041 * rho 44042 = rho 44043 := by
      linear_combination r5815
    have ha4 : rho 44044 * (1 + rho 44043) = rho 44041 + rho 44042 := by
      linear_combination r5816
    have ha5 : rho 44045 * (1 - rho 44043) = rho 44040 - rho 44041 - rho 44042 := by
      linear_combination r5817
    have haddx :
        rho 44044 * (1 + 3021 * (rho 44038 * seg45AccX214 rho) * (rho 44037 * seg45AccY214 rho)) =
          rho 44038 * seg45AccX214 rho + rho 44037 * seg45AccY214 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 44045 * (1 - 3021 * (rho 44038 * seg45AccX214 rho) * (rho 44037 * seg45AccY214 rho)) =
          (-1) * (rho 44038 * seg45AccX214 rho) - rho 44037 * seg45AccY214 rho +
            (seg45AccY214 rho - seg45AccX214 rho * (-1)) * (rho 44037 + rho 44038) := by
      rw [ha1, ha2, ha3]
      calc
        rho 44045 * (1 - rho 44043) = rho 44040 - rho 44041 - rho 44042 := ha5
        _ = (-1) * rho 44041 - rho 44042 + (seg45AccY214 rho - seg45AccX214 rho * (-1)) * (rho 44037 + rho 44038) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX215 rho = seg45AccX214 rho - Bool.toZMod bit * (seg45AccX214 rho - rho 44044) := by
      have hd : rho 44046 = Bool.toZMod bit * (rho 44044 - seg45AccX214 rho) := by
        rw [← hbit]
        unfold seg45AccX214
        linear_combination -r5818
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY215 rho = seg45AccY214 rho - Bool.toZMod bit * (seg45AccY214 rho - rho 44045) := by
      have hd : rho 44047 = Bool.toZMod bit * (rho 44045 - seg45AccY214 rho) := by
        rw [← hbit]
        unfold seg45AccY214
        linear_combination -r5819
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 44037 * rho 44038 = rho 44048 := by linear_combination r5820
    have hd1 : rho 44037 * rho 44037 = rho 44049 := by linear_combination r5821
    have hd2 : rho 44038 * rho 44038 = rho 44050 := by linear_combination r5822
    have hd3 : rho 44051 * (rho 44038 * rho 44038 + rho 44037 * rho 44037 * (-1)) = 2 * (rho 44037 * rho 44038) := by
      rw [hd0, hd1, hd2]
      linear_combination r5823
    have hd4 : rho 44052 * (2 - (rho 44038 * rho 44038 + rho 44037 * rho 44037 * (-1))) = rho 44038 * rho 44038 - rho 44037 * rho 44037 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5824
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX214 rho : Seg45.F), (seg45AccY214 rho : Seg45.F)⟩
      ⟨(rho 44037 : Seg45.F), (rho 44038 : Seg45.F)⟩
      ⟨(rho 44044 : Seg45.F), (rho 44045 : Seg45.F)⟩
      ⟨(seg45AccX215 rho : Seg45.F), (seg45AccY215 rho : Seg45.F)⟩
      ⟨(rho 44051 : Seg45.F), (rho 44052 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung214

theorem seg45_rows215 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow5825 rho ∧ Seg45.relationRow5826 rho ∧ Seg45.relationRow5827 rho ∧ Seg45.relationRow5828 rho ∧ Seg45.relationRow5829 rho ∧ Seg45.relationRow5830 rho ∧ Seg45.relationRow5831 rho ∧ Seg45.relationRow5832 rho ∧ Seg45.relationRow5833 rho ∧ Seg45.relationRow5834 rho ∧ Seg45.relationRow5835 rho ∧ Seg45.relationRow5836 rho ∧ Seg45.relationRow5837 rho ∧ Seg45.relationRow5838 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart72 at p72
  rcases p72 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5825, r5826, r5827, r5828, r5829, r5830, r5831, r5832, r5833, r5834, r5835, r5836, r5837, r5838, _⟩
  exact ⟨r5825, r5826, r5827, r5828, r5829, r5830, r5831, r5832, r5833, r5834, r5835, r5836, r5837, r5838⟩

theorem seg45_rung215 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41163 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX215 rho : Seg45.F), (seg45AccY215 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 44051 : Seg45.F), (rho 44052 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX215 rho : Seg45.F), (seg45AccY215 rho : Seg45.F)⟩
        ⟨(rho 44051 : Seg45.F), (rho 44052 : Seg45.F)⟩
        ⟨(seg45AccX216 rho : Seg45.F), (seg45AccY216 rho : Seg45.F)⟩
        ⟨(rho 44065 : Seg45.F), (rho 44066 : Seg45.F)⟩ := by
  obtain ⟨r5825, r5826, r5827, r5828, r5829, r5830, r5831, r5832, r5833, r5834, r5835, r5836, r5837, r5838⟩ := seg45_rows215 rho h
  unfold Seg45.relationRow5825 at r5825
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5825
  unfold Seg45.relationRow5826 at r5826
  unfold Seg45.relationRow5827 at r5827
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5827
  unfold Seg45.relationRow5828 at r5828
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5828
  unfold Seg45.relationRow5829 at r5829
  unfold Seg45.relationRow5830 at r5830
  unfold Seg45.relationRow5831 at r5831
  unfold Seg45.relationRow5832 at r5832
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5832
  unfold Seg45.relationRow5833 at r5833
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5833
  unfold Seg45.relationRow5834 at r5834
  unfold Seg45.relationRow5835 at r5835
  unfold Seg45.relationRow5836 at r5836
  unfold Seg45.relationRow5837 at r5837
  unfold Seg45.relationRow5838 at r5838
  have hrung215 (bit : Bool) (hbit : rho 41163 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX215 rho : Seg45.F), (seg45AccY215 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 44051 : Seg45.F), (rho 44052 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX215 rho : Seg45.F), (seg45AccY215 rho : Seg45.F)⟩
        ⟨(rho 44051 : Seg45.F), (rho 44052 : Seg45.F)⟩
        ⟨(seg45AccX216 rho : Seg45.F), (seg45AccY216 rho : Seg45.F)⟩
        ⟨(rho 44065 : Seg45.F), (rho 44066 : Seg45.F)⟩ := by
    have hnextx : seg45AccX216 rho = seg45AccX215 rho + rho 44060 := by
      unfold seg45AccX216 seg45AccX215
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 65]
      ring
    have hnexty : seg45AccY216 rho = seg45AccY215 rho + rho 44061 := by
      unfold seg45AccY216 seg45AccY215
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 65]
      ring
    have hsum : seg45AccX215 rho + seg45AccY215 rho = rho 44053 := by
      unfold seg45AccX215 seg45AccY215
      linear_combination r5825
    have ha0 : (rho 44051 + rho 44052) * (seg45AccX215 rho + seg45AccY215 rho) = rho 44054 := by
      rw [hsum]
      linear_combination r5826
    have ha1 : rho 44052 * seg45AccX215 rho = rho 44055 := by
      unfold seg45AccX215
      linear_combination r5827
    have ha2 : rho 44051 * seg45AccY215 rho = rho 44056 := by
      unfold seg45AccY215
      linear_combination r5828
    have ha3 : 3021 * rho 44055 * rho 44056 = rho 44057 := by
      linear_combination r5829
    have ha4 : rho 44058 * (1 + rho 44057) = rho 44055 + rho 44056 := by
      linear_combination r5830
    have ha5 : rho 44059 * (1 - rho 44057) = rho 44054 - rho 44055 - rho 44056 := by
      linear_combination r5831
    have haddx :
        rho 44058 * (1 + 3021 * (rho 44052 * seg45AccX215 rho) * (rho 44051 * seg45AccY215 rho)) =
          rho 44052 * seg45AccX215 rho + rho 44051 * seg45AccY215 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 44059 * (1 - 3021 * (rho 44052 * seg45AccX215 rho) * (rho 44051 * seg45AccY215 rho)) =
          (-1) * (rho 44052 * seg45AccX215 rho) - rho 44051 * seg45AccY215 rho +
            (seg45AccY215 rho - seg45AccX215 rho * (-1)) * (rho 44051 + rho 44052) := by
      rw [ha1, ha2, ha3]
      calc
        rho 44059 * (1 - rho 44057) = rho 44054 - rho 44055 - rho 44056 := ha5
        _ = (-1) * rho 44055 - rho 44056 + (seg45AccY215 rho - seg45AccX215 rho * (-1)) * (rho 44051 + rho 44052) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX216 rho = seg45AccX215 rho - Bool.toZMod bit * (seg45AccX215 rho - rho 44058) := by
      have hd : rho 44060 = Bool.toZMod bit * (rho 44058 - seg45AccX215 rho) := by
        rw [← hbit]
        unfold seg45AccX215
        linear_combination -r5832
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY216 rho = seg45AccY215 rho - Bool.toZMod bit * (seg45AccY215 rho - rho 44059) := by
      have hd : rho 44061 = Bool.toZMod bit * (rho 44059 - seg45AccY215 rho) := by
        rw [← hbit]
        unfold seg45AccY215
        linear_combination -r5833
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 44051 * rho 44052 = rho 44062 := by linear_combination r5834
    have hd1 : rho 44051 * rho 44051 = rho 44063 := by linear_combination r5835
    have hd2 : rho 44052 * rho 44052 = rho 44064 := by linear_combination r5836
    have hd3 : rho 44065 * (rho 44052 * rho 44052 + rho 44051 * rho 44051 * (-1)) = 2 * (rho 44051 * rho 44052) := by
      rw [hd0, hd1, hd2]
      linear_combination r5837
    have hd4 : rho 44066 * (2 - (rho 44052 * rho 44052 + rho 44051 * rho 44051 * (-1))) = rho 44052 * rho 44052 - rho 44051 * rho 44051 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5838
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX215 rho : Seg45.F), (seg45AccY215 rho : Seg45.F)⟩
      ⟨(rho 44051 : Seg45.F), (rho 44052 : Seg45.F)⟩
      ⟨(rho 44058 : Seg45.F), (rho 44059 : Seg45.F)⟩
      ⟨(seg45AccX216 rho : Seg45.F), (seg45AccY216 rho : Seg45.F)⟩
      ⟨(rho 44065 : Seg45.F), (rho 44066 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung215

theorem seg45_rows216 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow5839 rho ∧ Seg45.relationRow5840 rho ∧ Seg45.relationRow5841 rho ∧ Seg45.relationRow5842 rho ∧ Seg45.relationRow5843 rho ∧ Seg45.relationRow5844 rho ∧ Seg45.relationRow5845 rho ∧ Seg45.relationRow5846 rho ∧ Seg45.relationRow5847 rho ∧ Seg45.relationRow5848 rho ∧ Seg45.relationRow5849 rho ∧ Seg45.relationRow5850 rho ∧ Seg45.relationRow5851 rho ∧ Seg45.relationRow5852 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart72 at p72
  rcases p72 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5839⟩
  unfold Seg45.relationPart73 at p73
  rcases p73 with ⟨r5840, r5841, r5842, r5843, r5844, r5845, r5846, r5847, r5848, r5849, r5850, r5851, r5852, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5839, r5840, r5841, r5842, r5843, r5844, r5845, r5846, r5847, r5848, r5849, r5850, r5851, r5852⟩

theorem seg45_rung216 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41164 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX216 rho : Seg45.F), (seg45AccY216 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 44065 : Seg45.F), (rho 44066 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX216 rho : Seg45.F), (seg45AccY216 rho : Seg45.F)⟩
        ⟨(rho 44065 : Seg45.F), (rho 44066 : Seg45.F)⟩
        ⟨(seg45AccX217 rho : Seg45.F), (seg45AccY217 rho : Seg45.F)⟩
        ⟨(rho 44079 : Seg45.F), (rho 44080 : Seg45.F)⟩ := by
  obtain ⟨r5839, r5840, r5841, r5842, r5843, r5844, r5845, r5846, r5847, r5848, r5849, r5850, r5851, r5852⟩ := seg45_rows216 rho h
  unfold Seg45.relationRow5839 at r5839
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5839
  unfold Seg45.relationRow5840 at r5840
  unfold Seg45.relationRow5841 at r5841
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5841
  unfold Seg45.relationRow5842 at r5842
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5842
  unfold Seg45.relationRow5843 at r5843
  unfold Seg45.relationRow5844 at r5844
  unfold Seg45.relationRow5845 at r5845
  unfold Seg45.relationRow5846 at r5846
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5846
  unfold Seg45.relationRow5847 at r5847
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5847
  unfold Seg45.relationRow5848 at r5848
  unfold Seg45.relationRow5849 at r5849
  unfold Seg45.relationRow5850 at r5850
  unfold Seg45.relationRow5851 at r5851
  unfold Seg45.relationRow5852 at r5852
  have hrung216 (bit : Bool) (hbit : rho 41164 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX216 rho : Seg45.F), (seg45AccY216 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 44065 : Seg45.F), (rho 44066 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX216 rho : Seg45.F), (seg45AccY216 rho : Seg45.F)⟩
        ⟨(rho 44065 : Seg45.F), (rho 44066 : Seg45.F)⟩
        ⟨(seg45AccX217 rho : Seg45.F), (seg45AccY217 rho : Seg45.F)⟩
        ⟨(rho 44079 : Seg45.F), (rho 44080 : Seg45.F)⟩ := by
    have hnextx : seg45AccX217 rho = seg45AccX216 rho + rho 44074 := by
      unfold seg45AccX217 seg45AccX216
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 66]
      ring
    have hnexty : seg45AccY217 rho = seg45AccY216 rho + rho 44075 := by
      unfold seg45AccY217 seg45AccY216
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 66]
      ring
    have hsum : seg45AccX216 rho + seg45AccY216 rho = rho 44067 := by
      unfold seg45AccX216 seg45AccY216
      linear_combination r5839
    have ha0 : (rho 44065 + rho 44066) * (seg45AccX216 rho + seg45AccY216 rho) = rho 44068 := by
      rw [hsum]
      linear_combination r5840
    have ha1 : rho 44066 * seg45AccX216 rho = rho 44069 := by
      unfold seg45AccX216
      linear_combination r5841
    have ha2 : rho 44065 * seg45AccY216 rho = rho 44070 := by
      unfold seg45AccY216
      linear_combination r5842
    have ha3 : 3021 * rho 44069 * rho 44070 = rho 44071 := by
      linear_combination r5843
    have ha4 : rho 44072 * (1 + rho 44071) = rho 44069 + rho 44070 := by
      linear_combination r5844
    have ha5 : rho 44073 * (1 - rho 44071) = rho 44068 - rho 44069 - rho 44070 := by
      linear_combination r5845
    have haddx :
        rho 44072 * (1 + 3021 * (rho 44066 * seg45AccX216 rho) * (rho 44065 * seg45AccY216 rho)) =
          rho 44066 * seg45AccX216 rho + rho 44065 * seg45AccY216 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 44073 * (1 - 3021 * (rho 44066 * seg45AccX216 rho) * (rho 44065 * seg45AccY216 rho)) =
          (-1) * (rho 44066 * seg45AccX216 rho) - rho 44065 * seg45AccY216 rho +
            (seg45AccY216 rho - seg45AccX216 rho * (-1)) * (rho 44065 + rho 44066) := by
      rw [ha1, ha2, ha3]
      calc
        rho 44073 * (1 - rho 44071) = rho 44068 - rho 44069 - rho 44070 := ha5
        _ = (-1) * rho 44069 - rho 44070 + (seg45AccY216 rho - seg45AccX216 rho * (-1)) * (rho 44065 + rho 44066) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX217 rho = seg45AccX216 rho - Bool.toZMod bit * (seg45AccX216 rho - rho 44072) := by
      have hd : rho 44074 = Bool.toZMod bit * (rho 44072 - seg45AccX216 rho) := by
        rw [← hbit]
        unfold seg45AccX216
        linear_combination -r5846
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY217 rho = seg45AccY216 rho - Bool.toZMod bit * (seg45AccY216 rho - rho 44073) := by
      have hd : rho 44075 = Bool.toZMod bit * (rho 44073 - seg45AccY216 rho) := by
        rw [← hbit]
        unfold seg45AccY216
        linear_combination -r5847
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 44065 * rho 44066 = rho 44076 := by linear_combination r5848
    have hd1 : rho 44065 * rho 44065 = rho 44077 := by linear_combination r5849
    have hd2 : rho 44066 * rho 44066 = rho 44078 := by linear_combination r5850
    have hd3 : rho 44079 * (rho 44066 * rho 44066 + rho 44065 * rho 44065 * (-1)) = 2 * (rho 44065 * rho 44066) := by
      rw [hd0, hd1, hd2]
      linear_combination r5851
    have hd4 : rho 44080 * (2 - (rho 44066 * rho 44066 + rho 44065 * rho 44065 * (-1))) = rho 44066 * rho 44066 - rho 44065 * rho 44065 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5852
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX216 rho : Seg45.F), (seg45AccY216 rho : Seg45.F)⟩
      ⟨(rho 44065 : Seg45.F), (rho 44066 : Seg45.F)⟩
      ⟨(rho 44072 : Seg45.F), (rho 44073 : Seg45.F)⟩
      ⟨(seg45AccX217 rho : Seg45.F), (seg45AccY217 rho : Seg45.F)⟩
      ⟨(rho 44079 : Seg45.F), (rho 44080 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung216

theorem seg45_rows217 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow5853 rho ∧ Seg45.relationRow5854 rho ∧ Seg45.relationRow5855 rho ∧ Seg45.relationRow5856 rho ∧ Seg45.relationRow5857 rho ∧ Seg45.relationRow5858 rho ∧ Seg45.relationRow5859 rho ∧ Seg45.relationRow5860 rho ∧ Seg45.relationRow5861 rho ∧ Seg45.relationRow5862 rho ∧ Seg45.relationRow5863 rho ∧ Seg45.relationRow5864 rho ∧ Seg45.relationRow5865 rho ∧ Seg45.relationRow5866 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart73 at p73
  rcases p73 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, r5853, r5854, r5855, r5856, r5857, r5858, r5859, r5860, r5861, r5862, r5863, r5864, r5865, r5866, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5853, r5854, r5855, r5856, r5857, r5858, r5859, r5860, r5861, r5862, r5863, r5864, r5865, r5866⟩

theorem seg45_rung217 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41165 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX217 rho : Seg45.F), (seg45AccY217 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 44079 : Seg45.F), (rho 44080 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX217 rho : Seg45.F), (seg45AccY217 rho : Seg45.F)⟩
        ⟨(rho 44079 : Seg45.F), (rho 44080 : Seg45.F)⟩
        ⟨(seg45AccX218 rho : Seg45.F), (seg45AccY218 rho : Seg45.F)⟩
        ⟨(rho 44093 : Seg45.F), (rho 44094 : Seg45.F)⟩ := by
  obtain ⟨r5853, r5854, r5855, r5856, r5857, r5858, r5859, r5860, r5861, r5862, r5863, r5864, r5865, r5866⟩ := seg45_rows217 rho h
  unfold Seg45.relationRow5853 at r5853
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5853
  unfold Seg45.relationRow5854 at r5854
  unfold Seg45.relationRow5855 at r5855
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5855
  unfold Seg45.relationRow5856 at r5856
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5856
  unfold Seg45.relationRow5857 at r5857
  unfold Seg45.relationRow5858 at r5858
  unfold Seg45.relationRow5859 at r5859
  unfold Seg45.relationRow5860 at r5860
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5860
  unfold Seg45.relationRow5861 at r5861
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5861
  unfold Seg45.relationRow5862 at r5862
  unfold Seg45.relationRow5863 at r5863
  unfold Seg45.relationRow5864 at r5864
  unfold Seg45.relationRow5865 at r5865
  unfold Seg45.relationRow5866 at r5866
  have hrung217 (bit : Bool) (hbit : rho 41165 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX217 rho : Seg45.F), (seg45AccY217 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 44079 : Seg45.F), (rho 44080 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX217 rho : Seg45.F), (seg45AccY217 rho : Seg45.F)⟩
        ⟨(rho 44079 : Seg45.F), (rho 44080 : Seg45.F)⟩
        ⟨(seg45AccX218 rho : Seg45.F), (seg45AccY218 rho : Seg45.F)⟩
        ⟨(rho 44093 : Seg45.F), (rho 44094 : Seg45.F)⟩ := by
    have hnextx : seg45AccX218 rho = seg45AccX217 rho + rho 44088 := by
      unfold seg45AccX218 seg45AccX217
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 67]
      ring
    have hnexty : seg45AccY218 rho = seg45AccY217 rho + rho 44089 := by
      unfold seg45AccY218 seg45AccY217
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 67]
      ring
    have hsum : seg45AccX217 rho + seg45AccY217 rho = rho 44081 := by
      unfold seg45AccX217 seg45AccY217
      linear_combination r5853
    have ha0 : (rho 44079 + rho 44080) * (seg45AccX217 rho + seg45AccY217 rho) = rho 44082 := by
      rw [hsum]
      linear_combination r5854
    have ha1 : rho 44080 * seg45AccX217 rho = rho 44083 := by
      unfold seg45AccX217
      linear_combination r5855
    have ha2 : rho 44079 * seg45AccY217 rho = rho 44084 := by
      unfold seg45AccY217
      linear_combination r5856
    have ha3 : 3021 * rho 44083 * rho 44084 = rho 44085 := by
      linear_combination r5857
    have ha4 : rho 44086 * (1 + rho 44085) = rho 44083 + rho 44084 := by
      linear_combination r5858
    have ha5 : rho 44087 * (1 - rho 44085) = rho 44082 - rho 44083 - rho 44084 := by
      linear_combination r5859
    have haddx :
        rho 44086 * (1 + 3021 * (rho 44080 * seg45AccX217 rho) * (rho 44079 * seg45AccY217 rho)) =
          rho 44080 * seg45AccX217 rho + rho 44079 * seg45AccY217 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 44087 * (1 - 3021 * (rho 44080 * seg45AccX217 rho) * (rho 44079 * seg45AccY217 rho)) =
          (-1) * (rho 44080 * seg45AccX217 rho) - rho 44079 * seg45AccY217 rho +
            (seg45AccY217 rho - seg45AccX217 rho * (-1)) * (rho 44079 + rho 44080) := by
      rw [ha1, ha2, ha3]
      calc
        rho 44087 * (1 - rho 44085) = rho 44082 - rho 44083 - rho 44084 := ha5
        _ = (-1) * rho 44083 - rho 44084 + (seg45AccY217 rho - seg45AccX217 rho * (-1)) * (rho 44079 + rho 44080) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX218 rho = seg45AccX217 rho - Bool.toZMod bit * (seg45AccX217 rho - rho 44086) := by
      have hd : rho 44088 = Bool.toZMod bit * (rho 44086 - seg45AccX217 rho) := by
        rw [← hbit]
        unfold seg45AccX217
        linear_combination -r5860
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY218 rho = seg45AccY217 rho - Bool.toZMod bit * (seg45AccY217 rho - rho 44087) := by
      have hd : rho 44089 = Bool.toZMod bit * (rho 44087 - seg45AccY217 rho) := by
        rw [← hbit]
        unfold seg45AccY217
        linear_combination -r5861
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 44079 * rho 44080 = rho 44090 := by linear_combination r5862
    have hd1 : rho 44079 * rho 44079 = rho 44091 := by linear_combination r5863
    have hd2 : rho 44080 * rho 44080 = rho 44092 := by linear_combination r5864
    have hd3 : rho 44093 * (rho 44080 * rho 44080 + rho 44079 * rho 44079 * (-1)) = 2 * (rho 44079 * rho 44080) := by
      rw [hd0, hd1, hd2]
      linear_combination r5865
    have hd4 : rho 44094 * (2 - (rho 44080 * rho 44080 + rho 44079 * rho 44079 * (-1))) = rho 44080 * rho 44080 - rho 44079 * rho 44079 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5866
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX217 rho : Seg45.F), (seg45AccY217 rho : Seg45.F)⟩
      ⟨(rho 44079 : Seg45.F), (rho 44080 : Seg45.F)⟩
      ⟨(rho 44086 : Seg45.F), (rho 44087 : Seg45.F)⟩
      ⟨(seg45AccX218 rho : Seg45.F), (seg45AccY218 rho : Seg45.F)⟩
      ⟨(rho 44093 : Seg45.F), (rho 44094 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung217

theorem seg45_rows218 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow5867 rho ∧ Seg45.relationRow5868 rho ∧ Seg45.relationRow5869 rho ∧ Seg45.relationRow5870 rho ∧ Seg45.relationRow5871 rho ∧ Seg45.relationRow5872 rho ∧ Seg45.relationRow5873 rho ∧ Seg45.relationRow5874 rho ∧ Seg45.relationRow5875 rho ∧ Seg45.relationRow5876 rho ∧ Seg45.relationRow5877 rho ∧ Seg45.relationRow5878 rho ∧ Seg45.relationRow5879 rho ∧ Seg45.relationRow5880 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart73 at p73
  rcases p73 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5867, r5868, r5869, r5870, r5871, r5872, r5873, r5874, r5875, r5876, r5877, r5878, r5879, r5880, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5867, r5868, r5869, r5870, r5871, r5872, r5873, r5874, r5875, r5876, r5877, r5878, r5879, r5880⟩

theorem seg45_rung218 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41166 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX218 rho : Seg45.F), (seg45AccY218 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 44093 : Seg45.F), (rho 44094 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX218 rho : Seg45.F), (seg45AccY218 rho : Seg45.F)⟩
        ⟨(rho 44093 : Seg45.F), (rho 44094 : Seg45.F)⟩
        ⟨(seg45AccX219 rho : Seg45.F), (seg45AccY219 rho : Seg45.F)⟩
        ⟨(rho 44107 : Seg45.F), (rho 44108 : Seg45.F)⟩ := by
  obtain ⟨r5867, r5868, r5869, r5870, r5871, r5872, r5873, r5874, r5875, r5876, r5877, r5878, r5879, r5880⟩ := seg45_rows218 rho h
  unfold Seg45.relationRow5867 at r5867
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5867
  unfold Seg45.relationRow5868 at r5868
  unfold Seg45.relationRow5869 at r5869
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5869
  unfold Seg45.relationRow5870 at r5870
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5870
  unfold Seg45.relationRow5871 at r5871
  unfold Seg45.relationRow5872 at r5872
  unfold Seg45.relationRow5873 at r5873
  unfold Seg45.relationRow5874 at r5874
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5874
  unfold Seg45.relationRow5875 at r5875
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5875
  unfold Seg45.relationRow5876 at r5876
  unfold Seg45.relationRow5877 at r5877
  unfold Seg45.relationRow5878 at r5878
  unfold Seg45.relationRow5879 at r5879
  unfold Seg45.relationRow5880 at r5880
  have hrung218 (bit : Bool) (hbit : rho 41166 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX218 rho : Seg45.F), (seg45AccY218 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 44093 : Seg45.F), (rho 44094 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX218 rho : Seg45.F), (seg45AccY218 rho : Seg45.F)⟩
        ⟨(rho 44093 : Seg45.F), (rho 44094 : Seg45.F)⟩
        ⟨(seg45AccX219 rho : Seg45.F), (seg45AccY219 rho : Seg45.F)⟩
        ⟨(rho 44107 : Seg45.F), (rho 44108 : Seg45.F)⟩ := by
    have hnextx : seg45AccX219 rho = seg45AccX218 rho + rho 44102 := by
      unfold seg45AccX219 seg45AccX218
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 68]
      ring
    have hnexty : seg45AccY219 rho = seg45AccY218 rho + rho 44103 := by
      unfold seg45AccY219 seg45AccY218
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 68]
      ring
    have hsum : seg45AccX218 rho + seg45AccY218 rho = rho 44095 := by
      unfold seg45AccX218 seg45AccY218
      linear_combination r5867
    have ha0 : (rho 44093 + rho 44094) * (seg45AccX218 rho + seg45AccY218 rho) = rho 44096 := by
      rw [hsum]
      linear_combination r5868
    have ha1 : rho 44094 * seg45AccX218 rho = rho 44097 := by
      unfold seg45AccX218
      linear_combination r5869
    have ha2 : rho 44093 * seg45AccY218 rho = rho 44098 := by
      unfold seg45AccY218
      linear_combination r5870
    have ha3 : 3021 * rho 44097 * rho 44098 = rho 44099 := by
      linear_combination r5871
    have ha4 : rho 44100 * (1 + rho 44099) = rho 44097 + rho 44098 := by
      linear_combination r5872
    have ha5 : rho 44101 * (1 - rho 44099) = rho 44096 - rho 44097 - rho 44098 := by
      linear_combination r5873
    have haddx :
        rho 44100 * (1 + 3021 * (rho 44094 * seg45AccX218 rho) * (rho 44093 * seg45AccY218 rho)) =
          rho 44094 * seg45AccX218 rho + rho 44093 * seg45AccY218 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 44101 * (1 - 3021 * (rho 44094 * seg45AccX218 rho) * (rho 44093 * seg45AccY218 rho)) =
          (-1) * (rho 44094 * seg45AccX218 rho) - rho 44093 * seg45AccY218 rho +
            (seg45AccY218 rho - seg45AccX218 rho * (-1)) * (rho 44093 + rho 44094) := by
      rw [ha1, ha2, ha3]
      calc
        rho 44101 * (1 - rho 44099) = rho 44096 - rho 44097 - rho 44098 := ha5
        _ = (-1) * rho 44097 - rho 44098 + (seg45AccY218 rho - seg45AccX218 rho * (-1)) * (rho 44093 + rho 44094) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX219 rho = seg45AccX218 rho - Bool.toZMod bit * (seg45AccX218 rho - rho 44100) := by
      have hd : rho 44102 = Bool.toZMod bit * (rho 44100 - seg45AccX218 rho) := by
        rw [← hbit]
        unfold seg45AccX218
        linear_combination -r5874
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY219 rho = seg45AccY218 rho - Bool.toZMod bit * (seg45AccY218 rho - rho 44101) := by
      have hd : rho 44103 = Bool.toZMod bit * (rho 44101 - seg45AccY218 rho) := by
        rw [← hbit]
        unfold seg45AccY218
        linear_combination -r5875
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 44093 * rho 44094 = rho 44104 := by linear_combination r5876
    have hd1 : rho 44093 * rho 44093 = rho 44105 := by linear_combination r5877
    have hd2 : rho 44094 * rho 44094 = rho 44106 := by linear_combination r5878
    have hd3 : rho 44107 * (rho 44094 * rho 44094 + rho 44093 * rho 44093 * (-1)) = 2 * (rho 44093 * rho 44094) := by
      rw [hd0, hd1, hd2]
      linear_combination r5879
    have hd4 : rho 44108 * (2 - (rho 44094 * rho 44094 + rho 44093 * rho 44093 * (-1))) = rho 44094 * rho 44094 - rho 44093 * rho 44093 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5880
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX218 rho : Seg45.F), (seg45AccY218 rho : Seg45.F)⟩
      ⟨(rho 44093 : Seg45.F), (rho 44094 : Seg45.F)⟩
      ⟨(rho 44100 : Seg45.F), (rho 44101 : Seg45.F)⟩
      ⟨(seg45AccX219 rho : Seg45.F), (seg45AccY219 rho : Seg45.F)⟩
      ⟨(rho 44107 : Seg45.F), (rho 44108 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung218

theorem seg45_rows219 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow5881 rho ∧ Seg45.relationRow5882 rho ∧ Seg45.relationRow5883 rho ∧ Seg45.relationRow5884 rho ∧ Seg45.relationRow5885 rho ∧ Seg45.relationRow5886 rho ∧ Seg45.relationRow5887 rho ∧ Seg45.relationRow5888 rho ∧ Seg45.relationRow5889 rho ∧ Seg45.relationRow5890 rho ∧ Seg45.relationRow5891 rho ∧ Seg45.relationRow5892 rho ∧ Seg45.relationRow5893 rho ∧ Seg45.relationRow5894 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart73 at p73
  rcases p73 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5881, r5882, r5883, r5884, r5885, r5886, r5887, r5888, r5889, r5890, r5891, r5892, r5893, r5894, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5881, r5882, r5883, r5884, r5885, r5886, r5887, r5888, r5889, r5890, r5891, r5892, r5893, r5894⟩

theorem seg45_rung219 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41167 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX219 rho : Seg45.F), (seg45AccY219 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 44107 : Seg45.F), (rho 44108 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX219 rho : Seg45.F), (seg45AccY219 rho : Seg45.F)⟩
        ⟨(rho 44107 : Seg45.F), (rho 44108 : Seg45.F)⟩
        ⟨(seg45AccX220 rho : Seg45.F), (seg45AccY220 rho : Seg45.F)⟩
        ⟨(rho 44121 : Seg45.F), (rho 44122 : Seg45.F)⟩ := by
  obtain ⟨r5881, r5882, r5883, r5884, r5885, r5886, r5887, r5888, r5889, r5890, r5891, r5892, r5893, r5894⟩ := seg45_rows219 rho h
  unfold Seg45.relationRow5881 at r5881
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5881
  unfold Seg45.relationRow5882 at r5882
  unfold Seg45.relationRow5883 at r5883
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5883
  unfold Seg45.relationRow5884 at r5884
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5884
  unfold Seg45.relationRow5885 at r5885
  unfold Seg45.relationRow5886 at r5886
  unfold Seg45.relationRow5887 at r5887
  unfold Seg45.relationRow5888 at r5888
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5888
  unfold Seg45.relationRow5889 at r5889
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5889
  unfold Seg45.relationRow5890 at r5890
  unfold Seg45.relationRow5891 at r5891
  unfold Seg45.relationRow5892 at r5892
  unfold Seg45.relationRow5893 at r5893
  unfold Seg45.relationRow5894 at r5894
  have hrung219 (bit : Bool) (hbit : rho 41167 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX219 rho : Seg45.F), (seg45AccY219 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 44107 : Seg45.F), (rho 44108 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX219 rho : Seg45.F), (seg45AccY219 rho : Seg45.F)⟩
        ⟨(rho 44107 : Seg45.F), (rho 44108 : Seg45.F)⟩
        ⟨(seg45AccX220 rho : Seg45.F), (seg45AccY220 rho : Seg45.F)⟩
        ⟨(rho 44121 : Seg45.F), (rho 44122 : Seg45.F)⟩ := by
    have hnextx : seg45AccX220 rho = seg45AccX219 rho + rho 44116 := by
      unfold seg45AccX220 seg45AccX219
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 69]
      ring
    have hnexty : seg45AccY220 rho = seg45AccY219 rho + rho 44117 := by
      unfold seg45AccY220 seg45AccY219
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 69]
      ring
    have hsum : seg45AccX219 rho + seg45AccY219 rho = rho 44109 := by
      unfold seg45AccX219 seg45AccY219
      linear_combination r5881
    have ha0 : (rho 44107 + rho 44108) * (seg45AccX219 rho + seg45AccY219 rho) = rho 44110 := by
      rw [hsum]
      linear_combination r5882
    have ha1 : rho 44108 * seg45AccX219 rho = rho 44111 := by
      unfold seg45AccX219
      linear_combination r5883
    have ha2 : rho 44107 * seg45AccY219 rho = rho 44112 := by
      unfold seg45AccY219
      linear_combination r5884
    have ha3 : 3021 * rho 44111 * rho 44112 = rho 44113 := by
      linear_combination r5885
    have ha4 : rho 44114 * (1 + rho 44113) = rho 44111 + rho 44112 := by
      linear_combination r5886
    have ha5 : rho 44115 * (1 - rho 44113) = rho 44110 - rho 44111 - rho 44112 := by
      linear_combination r5887
    have haddx :
        rho 44114 * (1 + 3021 * (rho 44108 * seg45AccX219 rho) * (rho 44107 * seg45AccY219 rho)) =
          rho 44108 * seg45AccX219 rho + rho 44107 * seg45AccY219 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 44115 * (1 - 3021 * (rho 44108 * seg45AccX219 rho) * (rho 44107 * seg45AccY219 rho)) =
          (-1) * (rho 44108 * seg45AccX219 rho) - rho 44107 * seg45AccY219 rho +
            (seg45AccY219 rho - seg45AccX219 rho * (-1)) * (rho 44107 + rho 44108) := by
      rw [ha1, ha2, ha3]
      calc
        rho 44115 * (1 - rho 44113) = rho 44110 - rho 44111 - rho 44112 := ha5
        _ = (-1) * rho 44111 - rho 44112 + (seg45AccY219 rho - seg45AccX219 rho * (-1)) * (rho 44107 + rho 44108) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX220 rho = seg45AccX219 rho - Bool.toZMod bit * (seg45AccX219 rho - rho 44114) := by
      have hd : rho 44116 = Bool.toZMod bit * (rho 44114 - seg45AccX219 rho) := by
        rw [← hbit]
        unfold seg45AccX219
        linear_combination -r5888
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY220 rho = seg45AccY219 rho - Bool.toZMod bit * (seg45AccY219 rho - rho 44115) := by
      have hd : rho 44117 = Bool.toZMod bit * (rho 44115 - seg45AccY219 rho) := by
        rw [← hbit]
        unfold seg45AccY219
        linear_combination -r5889
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 44107 * rho 44108 = rho 44118 := by linear_combination r5890
    have hd1 : rho 44107 * rho 44107 = rho 44119 := by linear_combination r5891
    have hd2 : rho 44108 * rho 44108 = rho 44120 := by linear_combination r5892
    have hd3 : rho 44121 * (rho 44108 * rho 44108 + rho 44107 * rho 44107 * (-1)) = 2 * (rho 44107 * rho 44108) := by
      rw [hd0, hd1, hd2]
      linear_combination r5893
    have hd4 : rho 44122 * (2 - (rho 44108 * rho 44108 + rho 44107 * rho 44107 * (-1))) = rho 44108 * rho 44108 - rho 44107 * rho 44107 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5894
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX219 rho : Seg45.F), (seg45AccY219 rho : Seg45.F)⟩
      ⟨(rho 44107 : Seg45.F), (rho 44108 : Seg45.F)⟩
      ⟨(rho 44114 : Seg45.F), (rho 44115 : Seg45.F)⟩
      ⟨(seg45AccX220 rho : Seg45.F), (seg45AccY220 rho : Seg45.F)⟩
      ⟨(rho 44121 : Seg45.F), (rho 44122 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung219

theorem seg45_hstep_c19 (rho : Nat -> Seg45.F) (h : Seg45.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (40948 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 209 ≤ i → i < 220 →
      EdwardsBridge.onCurve (seg45LadderAccState rho i) →
      EdwardsBridge.onCurve (seg45LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg45LadderAccState rho i) (seg45LadderCurState rho i)
        (seg45LadderAccState rho (i + 1)) (seg45LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg45_rung209 rho h bits[209]! (hbitAt 209 (by omega)) hacc hcur
  · exact seg45_rung210 rho h bits[210]! (hbitAt 210 (by omega)) hacc hcur
  · exact seg45_rung211 rho h bits[211]! (hbitAt 211 (by omega)) hacc hcur
  · exact seg45_rung212 rho h bits[212]! (hbitAt 212 (by omega)) hacc hcur
  · exact seg45_rung213 rho h bits[213]! (hbitAt 213 (by omega)) hacc hcur
  · exact seg45_rung214 rho h bits[214]! (hbitAt 214 (by omega)) hacc hcur
  · exact seg45_rung215 rho h bits[215]! (hbitAt 215 (by omega)) hacc hcur
  · exact seg45_rung216 rho h bits[216]! (hbitAt 216 (by omega)) hacc hcur
  · exact seg45_rung217 rho h bits[217]! (hbitAt 217 (by omega)) hacc hcur
  · exact seg45_rung218 rho h bits[218]! (hbitAt 218 (by omega)) hacc hcur
  · exact seg45_rung219 rho h bits[219]! (hbitAt 219 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
