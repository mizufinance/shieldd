import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg6_rows220 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow5643 rho ∧ Seg6.relationRow5644 rho ∧ Seg6.relationRow5645 rho ∧ Seg6.relationRow5646 rho ∧ Seg6.relationRow5647 rho ∧ Seg6.relationRow5648 rho ∧ Seg6.relationRow5649 rho ∧ Seg6.relationRow5650 rho ∧ Seg6.relationRow5651 rho ∧ Seg6.relationRow5652 rho ∧ Seg6.relationRow5653 rho ∧ Seg6.relationRow5654 rho ∧ Seg6.relationRow5655 rho ∧ Seg6.relationRow5656 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p70, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart70 at p70
  rcases p70 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5643, r5644, r5645, r5646, r5647, r5648, r5649, r5650, r5651, r5652, r5653, r5654, r5655, r5656, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5643, r5644, r5645, r5646, r5647, r5648, r5649, r5650, r5651, r5652, r5653, r5654, r5655, r5656⟩

theorem seg6_rung220 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2104 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX220 rho : Seg6.F), (seg6AccY220 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 6034 : Seg6.F), (rho 6035 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX220 rho : Seg6.F), (seg6AccY220 rho : Seg6.F)⟩
        ⟨(rho 6034 : Seg6.F), (rho 6035 : Seg6.F)⟩
        ⟨(seg6AccX221 rho : Seg6.F), (seg6AccY221 rho : Seg6.F)⟩
        ⟨(rho 6048 : Seg6.F), (rho 6049 : Seg6.F)⟩ := by
  obtain ⟨r5643, r5644, r5645, r5646, r5647, r5648, r5649, r5650, r5651, r5652, r5653, r5654, r5655, r5656⟩ := seg6_rows220 rho h
  unfold Seg6.relationRow5643 Seg6.relationLc1188 at r5643
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5643
  unfold Seg6.relationRow5644 at r5644
  unfold Seg6.relationRow5645 Seg6.relationLc1189 at r5645
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5645
  unfold Seg6.relationRow5646 Seg6.relationLc1190 at r5646
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5646
  unfold Seg6.relationRow5647 at r5647
  unfold Seg6.relationRow5648 at r5648
  unfold Seg6.relationRow5649 at r5649
  unfold Seg6.relationRow5650 Seg6.relationLc1191 at r5650
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5650
  unfold Seg6.relationRow5651 Seg6.relationLc1192 at r5651
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5651
  unfold Seg6.relationRow5652 at r5652
  unfold Seg6.relationRow5653 at r5653
  unfold Seg6.relationRow5654 at r5654
  unfold Seg6.relationRow5655 at r5655
  unfold Seg6.relationRow5656 at r5656
  have hrung220 (bit : Bool) (hbit : rho 2104 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX220 rho : Seg6.F), (seg6AccY220 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 6034 : Seg6.F), (rho 6035 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX220 rho : Seg6.F), (seg6AccY220 rho : Seg6.F)⟩
        ⟨(rho 6034 : Seg6.F), (rho 6035 : Seg6.F)⟩
        ⟨(seg6AccX221 rho : Seg6.F), (seg6AccY221 rho : Seg6.F)⟩
        ⟨(rho 6048 : Seg6.F), (rho 6049 : Seg6.F)⟩ := by
    have hnextx : seg6AccX221 rho = seg6AccX220 rho + rho 6043 := by
      unfold seg6AccX221 seg6AccX220
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5063 14 70]
      ring
    have hnexty : seg6AccY221 rho = seg6AccY220 rho + rho 6044 := by
      unfold seg6AccY221 seg6AccY220
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5064 14 70]
      ring
    have hsum : seg6AccX220 rho + seg6AccY220 rho = rho 6036 := by
      unfold seg6AccX220 seg6AccY220
      linear_combination r5643
    have ha0 : (rho 6034 + rho 6035) * (seg6AccX220 rho + seg6AccY220 rho) = rho 6037 := by
      rw [hsum]
      linear_combination r5644
    have ha1 : rho 6035 * seg6AccX220 rho = rho 6038 := by
      unfold seg6AccX220
      linear_combination r5645
    have ha2 : rho 6034 * seg6AccY220 rho = rho 6039 := by
      unfold seg6AccY220
      linear_combination r5646
    have ha3 : 3021 * rho 6038 * rho 6039 = rho 6040 := by
      linear_combination r5647
    have ha4 : rho 6041 * (1 + rho 6040) = rho 6038 + rho 6039 := by
      linear_combination r5648
    have ha5 : rho 6042 * (1 - rho 6040) = rho 6037 - rho 6038 - rho 6039 := by
      linear_combination r5649
    have haddx :
        rho 6041 * (1 + 3021 * (rho 6035 * seg6AccX220 rho) * (rho 6034 * seg6AccY220 rho)) =
          rho 6035 * seg6AccX220 rho + rho 6034 * seg6AccY220 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 6042 * (1 - 3021 * (rho 6035 * seg6AccX220 rho) * (rho 6034 * seg6AccY220 rho)) =
          (-1) * (rho 6035 * seg6AccX220 rho) - rho 6034 * seg6AccY220 rho +
            (seg6AccY220 rho - seg6AccX220 rho * (-1)) * (rho 6034 + rho 6035) := by
      rw [ha1, ha2, ha3]
      calc
        rho 6042 * (1 - rho 6040) = rho 6037 - rho 6038 - rho 6039 := ha5
        _ = (-1) * rho 6038 - rho 6039 + (seg6AccY220 rho - seg6AccX220 rho * (-1)) * (rho 6034 + rho 6035) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX221 rho = seg6AccX220 rho - Bool.toZMod bit * (seg6AccX220 rho - rho 6041) := by
      have hd : rho 6043 = Bool.toZMod bit * (rho 6041 - seg6AccX220 rho) := by
        rw [← hbit]
        unfold seg6AccX220
        linear_combination -r5650
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY221 rho = seg6AccY220 rho - Bool.toZMod bit * (seg6AccY220 rho - rho 6042) := by
      have hd : rho 6044 = Bool.toZMod bit * (rho 6042 - seg6AccY220 rho) := by
        rw [← hbit]
        unfold seg6AccY220
        linear_combination -r5651
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 6034 * rho 6035 = rho 6045 := by linear_combination r5652
    have hd1 : rho 6034 * rho 6034 = rho 6046 := by linear_combination r5653
    have hd2 : rho 6035 * rho 6035 = rho 6047 := by linear_combination r5654
    have hd3 : rho 6048 * (rho 6035 * rho 6035 + rho 6034 * rho 6034 * (-1)) = 2 * (rho 6034 * rho 6035) := by
      rw [hd0, hd1, hd2]
      linear_combination r5655
    have hd4 : rho 6049 * (2 - (rho 6035 * rho 6035 + rho 6034 * rho 6034 * (-1))) = rho 6035 * rho 6035 - rho 6034 * rho 6034 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5656
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX220 rho : Seg6.F), (seg6AccY220 rho : Seg6.F)⟩
      ⟨(rho 6034 : Seg6.F), (rho 6035 : Seg6.F)⟩
      ⟨(rho 6041 : Seg6.F), (rho 6042 : Seg6.F)⟩
      ⟨(seg6AccX221 rho : Seg6.F), (seg6AccY221 rho : Seg6.F)⟩
      ⟨(rho 6048 : Seg6.F), (rho 6049 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung220

theorem seg6_rows221 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow5657 rho ∧ Seg6.relationRow5658 rho ∧ Seg6.relationRow5659 rho ∧ Seg6.relationRow5660 rho ∧ Seg6.relationRow5661 rho ∧ Seg6.relationRow5662 rho ∧ Seg6.relationRow5663 rho ∧ Seg6.relationRow5664 rho ∧ Seg6.relationRow5665 rho ∧ Seg6.relationRow5666 rho ∧ Seg6.relationRow5667 rho ∧ Seg6.relationRow5668 rho ∧ Seg6.relationRow5669 rho ∧ Seg6.relationRow5670 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p70, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart70 at p70
  rcases p70 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5657, r5658, r5659, r5660, r5661, r5662, r5663, r5664, r5665, r5666, r5667, r5668, r5669, r5670, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5657, r5658, r5659, r5660, r5661, r5662, r5663, r5664, r5665, r5666, r5667, r5668, r5669, r5670⟩

theorem seg6_rung221 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2105 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX221 rho : Seg6.F), (seg6AccY221 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 6048 : Seg6.F), (rho 6049 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX221 rho : Seg6.F), (seg6AccY221 rho : Seg6.F)⟩
        ⟨(rho 6048 : Seg6.F), (rho 6049 : Seg6.F)⟩
        ⟨(seg6AccX222 rho : Seg6.F), (seg6AccY222 rho : Seg6.F)⟩
        ⟨(rho 6062 : Seg6.F), (rho 6063 : Seg6.F)⟩ := by
  obtain ⟨r5657, r5658, r5659, r5660, r5661, r5662, r5663, r5664, r5665, r5666, r5667, r5668, r5669, r5670⟩ := seg6_rows221 rho h
  unfold Seg6.relationRow5657 Seg6.relationLc1193 at r5657
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5657
  unfold Seg6.relationRow5658 at r5658
  unfold Seg6.relationRow5659 Seg6.relationLc1194 at r5659
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5659
  unfold Seg6.relationRow5660 Seg6.relationLc1195 at r5660
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5660
  unfold Seg6.relationRow5661 at r5661
  unfold Seg6.relationRow5662 at r5662
  unfold Seg6.relationRow5663 at r5663
  unfold Seg6.relationRow5664 Seg6.relationLc1196 at r5664
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5664
  unfold Seg6.relationRow5665 Seg6.relationLc1197 at r5665
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5665
  unfold Seg6.relationRow5666 at r5666
  unfold Seg6.relationRow5667 at r5667
  unfold Seg6.relationRow5668 at r5668
  unfold Seg6.relationRow5669 at r5669
  unfold Seg6.relationRow5670 at r5670
  have hrung221 (bit : Bool) (hbit : rho 2105 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX221 rho : Seg6.F), (seg6AccY221 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 6048 : Seg6.F), (rho 6049 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX221 rho : Seg6.F), (seg6AccY221 rho : Seg6.F)⟩
        ⟨(rho 6048 : Seg6.F), (rho 6049 : Seg6.F)⟩
        ⟨(seg6AccX222 rho : Seg6.F), (seg6AccY222 rho : Seg6.F)⟩
        ⟨(rho 6062 : Seg6.F), (rho 6063 : Seg6.F)⟩ := by
    have hnextx : seg6AccX222 rho = seg6AccX221 rho + rho 6057 := by
      unfold seg6AccX222 seg6AccX221
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5063 14 71]
      ring
    have hnexty : seg6AccY222 rho = seg6AccY221 rho + rho 6058 := by
      unfold seg6AccY222 seg6AccY221
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5064 14 71]
      ring
    have hsum : seg6AccX221 rho + seg6AccY221 rho = rho 6050 := by
      unfold seg6AccX221 seg6AccY221
      linear_combination r5657
    have ha0 : (rho 6048 + rho 6049) * (seg6AccX221 rho + seg6AccY221 rho) = rho 6051 := by
      rw [hsum]
      linear_combination r5658
    have ha1 : rho 6049 * seg6AccX221 rho = rho 6052 := by
      unfold seg6AccX221
      linear_combination r5659
    have ha2 : rho 6048 * seg6AccY221 rho = rho 6053 := by
      unfold seg6AccY221
      linear_combination r5660
    have ha3 : 3021 * rho 6052 * rho 6053 = rho 6054 := by
      linear_combination r5661
    have ha4 : rho 6055 * (1 + rho 6054) = rho 6052 + rho 6053 := by
      linear_combination r5662
    have ha5 : rho 6056 * (1 - rho 6054) = rho 6051 - rho 6052 - rho 6053 := by
      linear_combination r5663
    have haddx :
        rho 6055 * (1 + 3021 * (rho 6049 * seg6AccX221 rho) * (rho 6048 * seg6AccY221 rho)) =
          rho 6049 * seg6AccX221 rho + rho 6048 * seg6AccY221 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 6056 * (1 - 3021 * (rho 6049 * seg6AccX221 rho) * (rho 6048 * seg6AccY221 rho)) =
          (-1) * (rho 6049 * seg6AccX221 rho) - rho 6048 * seg6AccY221 rho +
            (seg6AccY221 rho - seg6AccX221 rho * (-1)) * (rho 6048 + rho 6049) := by
      rw [ha1, ha2, ha3]
      calc
        rho 6056 * (1 - rho 6054) = rho 6051 - rho 6052 - rho 6053 := ha5
        _ = (-1) * rho 6052 - rho 6053 + (seg6AccY221 rho - seg6AccX221 rho * (-1)) * (rho 6048 + rho 6049) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX222 rho = seg6AccX221 rho - Bool.toZMod bit * (seg6AccX221 rho - rho 6055) := by
      have hd : rho 6057 = Bool.toZMod bit * (rho 6055 - seg6AccX221 rho) := by
        rw [← hbit]
        unfold seg6AccX221
        linear_combination -r5664
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY222 rho = seg6AccY221 rho - Bool.toZMod bit * (seg6AccY221 rho - rho 6056) := by
      have hd : rho 6058 = Bool.toZMod bit * (rho 6056 - seg6AccY221 rho) := by
        rw [← hbit]
        unfold seg6AccY221
        linear_combination -r5665
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 6048 * rho 6049 = rho 6059 := by linear_combination r5666
    have hd1 : rho 6048 * rho 6048 = rho 6060 := by linear_combination r5667
    have hd2 : rho 6049 * rho 6049 = rho 6061 := by linear_combination r5668
    have hd3 : rho 6062 * (rho 6049 * rho 6049 + rho 6048 * rho 6048 * (-1)) = 2 * (rho 6048 * rho 6049) := by
      rw [hd0, hd1, hd2]
      linear_combination r5669
    have hd4 : rho 6063 * (2 - (rho 6049 * rho 6049 + rho 6048 * rho 6048 * (-1))) = rho 6049 * rho 6049 - rho 6048 * rho 6048 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5670
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX221 rho : Seg6.F), (seg6AccY221 rho : Seg6.F)⟩
      ⟨(rho 6048 : Seg6.F), (rho 6049 : Seg6.F)⟩
      ⟨(rho 6055 : Seg6.F), (rho 6056 : Seg6.F)⟩
      ⟨(seg6AccX222 rho : Seg6.F), (seg6AccY222 rho : Seg6.F)⟩
      ⟨(rho 6062 : Seg6.F), (rho 6063 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung221

theorem seg6_rows222 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow5671 rho ∧ Seg6.relationRow5672 rho ∧ Seg6.relationRow5673 rho ∧ Seg6.relationRow5674 rho ∧ Seg6.relationRow5675 rho ∧ Seg6.relationRow5676 rho ∧ Seg6.relationRow5677 rho ∧ Seg6.relationRow5678 rho ∧ Seg6.relationRow5679 rho ∧ Seg6.relationRow5680 rho ∧ Seg6.relationRow5681 rho ∧ Seg6.relationRow5682 rho ∧ Seg6.relationRow5683 rho ∧ Seg6.relationRow5684 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p70, p71, _, _, _, _
  ⟩
  unfold Seg6.relationPart70 at p70
  rcases p70 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5671, r5672, r5673, r5674, r5675, r5676, r5677, r5678, r5679⟩
  unfold Seg6.relationPart71 at p71
  rcases p71 with ⟨r5680, r5681, r5682, r5683, r5684, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5671, r5672, r5673, r5674, r5675, r5676, r5677, r5678, r5679, r5680, r5681, r5682, r5683, r5684⟩

theorem seg6_rung222 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2106 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX222 rho : Seg6.F), (seg6AccY222 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 6062 : Seg6.F), (rho 6063 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX222 rho : Seg6.F), (seg6AccY222 rho : Seg6.F)⟩
        ⟨(rho 6062 : Seg6.F), (rho 6063 : Seg6.F)⟩
        ⟨(seg6AccX223 rho : Seg6.F), (seg6AccY223 rho : Seg6.F)⟩
        ⟨(rho 6076 : Seg6.F), (rho 6077 : Seg6.F)⟩ := by
  obtain ⟨r5671, r5672, r5673, r5674, r5675, r5676, r5677, r5678, r5679, r5680, r5681, r5682, r5683, r5684⟩ := seg6_rows222 rho h
  unfold Seg6.relationRow5671 Seg6.relationLc1198 at r5671
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5671
  unfold Seg6.relationRow5672 at r5672
  unfold Seg6.relationRow5673 Seg6.relationLc1199 at r5673
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5673
  unfold Seg6.relationRow5674 Seg6.relationLc1200 at r5674
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5674
  unfold Seg6.relationRow5675 at r5675
  unfold Seg6.relationRow5676 at r5676
  unfold Seg6.relationRow5677 at r5677
  unfold Seg6.relationRow5678 Seg6.relationLc1201 at r5678
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5678
  unfold Seg6.relationRow5679 Seg6.relationLc1202 at r5679
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5679
  unfold Seg6.relationRow5680 at r5680
  unfold Seg6.relationRow5681 at r5681
  unfold Seg6.relationRow5682 at r5682
  unfold Seg6.relationRow5683 at r5683
  unfold Seg6.relationRow5684 at r5684
  have hrung222 (bit : Bool) (hbit : rho 2106 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX222 rho : Seg6.F), (seg6AccY222 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 6062 : Seg6.F), (rho 6063 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX222 rho : Seg6.F), (seg6AccY222 rho : Seg6.F)⟩
        ⟨(rho 6062 : Seg6.F), (rho 6063 : Seg6.F)⟩
        ⟨(seg6AccX223 rho : Seg6.F), (seg6AccY223 rho : Seg6.F)⟩
        ⟨(rho 6076 : Seg6.F), (rho 6077 : Seg6.F)⟩ := by
    have hnextx : seg6AccX223 rho = seg6AccX222 rho + rho 6071 := by
      unfold seg6AccX223 seg6AccX222
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5063 14 72]
      ring
    have hnexty : seg6AccY223 rho = seg6AccY222 rho + rho 6072 := by
      unfold seg6AccY223 seg6AccY222
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5064 14 72]
      ring
    have hsum : seg6AccX222 rho + seg6AccY222 rho = rho 6064 := by
      unfold seg6AccX222 seg6AccY222
      linear_combination r5671
    have ha0 : (rho 6062 + rho 6063) * (seg6AccX222 rho + seg6AccY222 rho) = rho 6065 := by
      rw [hsum]
      linear_combination r5672
    have ha1 : rho 6063 * seg6AccX222 rho = rho 6066 := by
      unfold seg6AccX222
      linear_combination r5673
    have ha2 : rho 6062 * seg6AccY222 rho = rho 6067 := by
      unfold seg6AccY222
      linear_combination r5674
    have ha3 : 3021 * rho 6066 * rho 6067 = rho 6068 := by
      linear_combination r5675
    have ha4 : rho 6069 * (1 + rho 6068) = rho 6066 + rho 6067 := by
      linear_combination r5676
    have ha5 : rho 6070 * (1 - rho 6068) = rho 6065 - rho 6066 - rho 6067 := by
      linear_combination r5677
    have haddx :
        rho 6069 * (1 + 3021 * (rho 6063 * seg6AccX222 rho) * (rho 6062 * seg6AccY222 rho)) =
          rho 6063 * seg6AccX222 rho + rho 6062 * seg6AccY222 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 6070 * (1 - 3021 * (rho 6063 * seg6AccX222 rho) * (rho 6062 * seg6AccY222 rho)) =
          (-1) * (rho 6063 * seg6AccX222 rho) - rho 6062 * seg6AccY222 rho +
            (seg6AccY222 rho - seg6AccX222 rho * (-1)) * (rho 6062 + rho 6063) := by
      rw [ha1, ha2, ha3]
      calc
        rho 6070 * (1 - rho 6068) = rho 6065 - rho 6066 - rho 6067 := ha5
        _ = (-1) * rho 6066 - rho 6067 + (seg6AccY222 rho - seg6AccX222 rho * (-1)) * (rho 6062 + rho 6063) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX223 rho = seg6AccX222 rho - Bool.toZMod bit * (seg6AccX222 rho - rho 6069) := by
      have hd : rho 6071 = Bool.toZMod bit * (rho 6069 - seg6AccX222 rho) := by
        rw [← hbit]
        unfold seg6AccX222
        linear_combination -r5678
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY223 rho = seg6AccY222 rho - Bool.toZMod bit * (seg6AccY222 rho - rho 6070) := by
      have hd : rho 6072 = Bool.toZMod bit * (rho 6070 - seg6AccY222 rho) := by
        rw [← hbit]
        unfold seg6AccY222
        linear_combination -r5679
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 6062 * rho 6063 = rho 6073 := by linear_combination r5680
    have hd1 : rho 6062 * rho 6062 = rho 6074 := by linear_combination r5681
    have hd2 : rho 6063 * rho 6063 = rho 6075 := by linear_combination r5682
    have hd3 : rho 6076 * (rho 6063 * rho 6063 + rho 6062 * rho 6062 * (-1)) = 2 * (rho 6062 * rho 6063) := by
      rw [hd0, hd1, hd2]
      linear_combination r5683
    have hd4 : rho 6077 * (2 - (rho 6063 * rho 6063 + rho 6062 * rho 6062 * (-1))) = rho 6063 * rho 6063 - rho 6062 * rho 6062 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5684
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX222 rho : Seg6.F), (seg6AccY222 rho : Seg6.F)⟩
      ⟨(rho 6062 : Seg6.F), (rho 6063 : Seg6.F)⟩
      ⟨(rho 6069 : Seg6.F), (rho 6070 : Seg6.F)⟩
      ⟨(seg6AccX223 rho : Seg6.F), (seg6AccY223 rho : Seg6.F)⟩
      ⟨(rho 6076 : Seg6.F), (rho 6077 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung222

theorem seg6_rows223 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow5685 rho ∧ Seg6.relationRow5686 rho ∧ Seg6.relationRow5687 rho ∧ Seg6.relationRow5688 rho ∧ Seg6.relationRow5689 rho ∧ Seg6.relationRow5690 rho ∧ Seg6.relationRow5691 rho ∧ Seg6.relationRow5692 rho ∧ Seg6.relationRow5693 rho ∧ Seg6.relationRow5694 rho ∧ Seg6.relationRow5695 rho ∧ Seg6.relationRow5696 rho ∧ Seg6.relationRow5697 rho ∧ Seg6.relationRow5698 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p71, _, _, _, _
  ⟩
  unfold Seg6.relationPart71 at p71
  rcases p71 with ⟨_, _, _, _, _, r5685, r5686, r5687, r5688, r5689, r5690, r5691, r5692, r5693, r5694, r5695, r5696, r5697, r5698, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5685, r5686, r5687, r5688, r5689, r5690, r5691, r5692, r5693, r5694, r5695, r5696, r5697, r5698⟩

theorem seg6_rung223 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2107 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX223 rho : Seg6.F), (seg6AccY223 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 6076 : Seg6.F), (rho 6077 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX223 rho : Seg6.F), (seg6AccY223 rho : Seg6.F)⟩
        ⟨(rho 6076 : Seg6.F), (rho 6077 : Seg6.F)⟩
        ⟨(seg6AccX224 rho : Seg6.F), (seg6AccY224 rho : Seg6.F)⟩
        ⟨(rho 6090 : Seg6.F), (rho 6091 : Seg6.F)⟩ := by
  obtain ⟨r5685, r5686, r5687, r5688, r5689, r5690, r5691, r5692, r5693, r5694, r5695, r5696, r5697, r5698⟩ := seg6_rows223 rho h
  unfold Seg6.relationRow5685 Seg6.relationLc1203 at r5685
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5685
  unfold Seg6.relationRow5686 at r5686
  unfold Seg6.relationRow5687 Seg6.relationLc1204 at r5687
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5687
  unfold Seg6.relationRow5688 Seg6.relationLc1205 at r5688
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5688
  unfold Seg6.relationRow5689 at r5689
  unfold Seg6.relationRow5690 at r5690
  unfold Seg6.relationRow5691 at r5691
  unfold Seg6.relationRow5692 Seg6.relationLc1206 at r5692
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5692
  unfold Seg6.relationRow5693 Seg6.relationLc1207 at r5693
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5693
  unfold Seg6.relationRow5694 at r5694
  unfold Seg6.relationRow5695 at r5695
  unfold Seg6.relationRow5696 at r5696
  unfold Seg6.relationRow5697 at r5697
  unfold Seg6.relationRow5698 at r5698
  have hrung223 (bit : Bool) (hbit : rho 2107 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX223 rho : Seg6.F), (seg6AccY223 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 6076 : Seg6.F), (rho 6077 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX223 rho : Seg6.F), (seg6AccY223 rho : Seg6.F)⟩
        ⟨(rho 6076 : Seg6.F), (rho 6077 : Seg6.F)⟩
        ⟨(seg6AccX224 rho : Seg6.F), (seg6AccY224 rho : Seg6.F)⟩
        ⟨(rho 6090 : Seg6.F), (rho 6091 : Seg6.F)⟩ := by
    have hnextx : seg6AccX224 rho = seg6AccX223 rho + rho 6085 := by
      unfold seg6AccX224 seg6AccX223
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5063 14 73]
      ring
    have hnexty : seg6AccY224 rho = seg6AccY223 rho + rho 6086 := by
      unfold seg6AccY224 seg6AccY223
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5064 14 73]
      ring
    have hsum : seg6AccX223 rho + seg6AccY223 rho = rho 6078 := by
      unfold seg6AccX223 seg6AccY223
      linear_combination r5685
    have ha0 : (rho 6076 + rho 6077) * (seg6AccX223 rho + seg6AccY223 rho) = rho 6079 := by
      rw [hsum]
      linear_combination r5686
    have ha1 : rho 6077 * seg6AccX223 rho = rho 6080 := by
      unfold seg6AccX223
      linear_combination r5687
    have ha2 : rho 6076 * seg6AccY223 rho = rho 6081 := by
      unfold seg6AccY223
      linear_combination r5688
    have ha3 : 3021 * rho 6080 * rho 6081 = rho 6082 := by
      linear_combination r5689
    have ha4 : rho 6083 * (1 + rho 6082) = rho 6080 + rho 6081 := by
      linear_combination r5690
    have ha5 : rho 6084 * (1 - rho 6082) = rho 6079 - rho 6080 - rho 6081 := by
      linear_combination r5691
    have haddx :
        rho 6083 * (1 + 3021 * (rho 6077 * seg6AccX223 rho) * (rho 6076 * seg6AccY223 rho)) =
          rho 6077 * seg6AccX223 rho + rho 6076 * seg6AccY223 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 6084 * (1 - 3021 * (rho 6077 * seg6AccX223 rho) * (rho 6076 * seg6AccY223 rho)) =
          (-1) * (rho 6077 * seg6AccX223 rho) - rho 6076 * seg6AccY223 rho +
            (seg6AccY223 rho - seg6AccX223 rho * (-1)) * (rho 6076 + rho 6077) := by
      rw [ha1, ha2, ha3]
      calc
        rho 6084 * (1 - rho 6082) = rho 6079 - rho 6080 - rho 6081 := ha5
        _ = (-1) * rho 6080 - rho 6081 + (seg6AccY223 rho - seg6AccX223 rho * (-1)) * (rho 6076 + rho 6077) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX224 rho = seg6AccX223 rho - Bool.toZMod bit * (seg6AccX223 rho - rho 6083) := by
      have hd : rho 6085 = Bool.toZMod bit * (rho 6083 - seg6AccX223 rho) := by
        rw [← hbit]
        unfold seg6AccX223
        linear_combination -r5692
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY224 rho = seg6AccY223 rho - Bool.toZMod bit * (seg6AccY223 rho - rho 6084) := by
      have hd : rho 6086 = Bool.toZMod bit * (rho 6084 - seg6AccY223 rho) := by
        rw [← hbit]
        unfold seg6AccY223
        linear_combination -r5693
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 6076 * rho 6077 = rho 6087 := by linear_combination r5694
    have hd1 : rho 6076 * rho 6076 = rho 6088 := by linear_combination r5695
    have hd2 : rho 6077 * rho 6077 = rho 6089 := by linear_combination r5696
    have hd3 : rho 6090 * (rho 6077 * rho 6077 + rho 6076 * rho 6076 * (-1)) = 2 * (rho 6076 * rho 6077) := by
      rw [hd0, hd1, hd2]
      linear_combination r5697
    have hd4 : rho 6091 * (2 - (rho 6077 * rho 6077 + rho 6076 * rho 6076 * (-1))) = rho 6077 * rho 6077 - rho 6076 * rho 6076 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5698
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX223 rho : Seg6.F), (seg6AccY223 rho : Seg6.F)⟩
      ⟨(rho 6076 : Seg6.F), (rho 6077 : Seg6.F)⟩
      ⟨(rho 6083 : Seg6.F), (rho 6084 : Seg6.F)⟩
      ⟨(seg6AccX224 rho : Seg6.F), (seg6AccY224 rho : Seg6.F)⟩
      ⟨(rho 6090 : Seg6.F), (rho 6091 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung223

theorem seg6_rows224 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow5699 rho ∧ Seg6.relationRow5700 rho ∧ Seg6.relationRow5701 rho ∧ Seg6.relationRow5702 rho ∧ Seg6.relationRow5703 rho ∧ Seg6.relationRow5704 rho ∧ Seg6.relationRow5705 rho ∧ Seg6.relationRow5706 rho ∧ Seg6.relationRow5707 rho ∧ Seg6.relationRow5708 rho ∧ Seg6.relationRow5709 rho ∧ Seg6.relationRow5710 rho ∧ Seg6.relationRow5711 rho ∧ Seg6.relationRow5712 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p71, _, _, _, _
  ⟩
  unfold Seg6.relationPart71 at p71
  rcases p71 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5699, r5700, r5701, r5702, r5703, r5704, r5705, r5706, r5707, r5708, r5709, r5710, r5711, r5712, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5699, r5700, r5701, r5702, r5703, r5704, r5705, r5706, r5707, r5708, r5709, r5710, r5711, r5712⟩

theorem seg6_rung224 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2108 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX224 rho : Seg6.F), (seg6AccY224 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 6090 : Seg6.F), (rho 6091 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX224 rho : Seg6.F), (seg6AccY224 rho : Seg6.F)⟩
        ⟨(rho 6090 : Seg6.F), (rho 6091 : Seg6.F)⟩
        ⟨(seg6AccX225 rho : Seg6.F), (seg6AccY225 rho : Seg6.F)⟩
        ⟨(rho 6104 : Seg6.F), (rho 6105 : Seg6.F)⟩ := by
  obtain ⟨r5699, r5700, r5701, r5702, r5703, r5704, r5705, r5706, r5707, r5708, r5709, r5710, r5711, r5712⟩ := seg6_rows224 rho h
  unfold Seg6.relationRow5699 Seg6.relationLc1208 at r5699
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5699
  unfold Seg6.relationRow5700 at r5700
  unfold Seg6.relationRow5701 Seg6.relationLc1209 at r5701
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5701
  unfold Seg6.relationRow5702 Seg6.relationLc1210 at r5702
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5702
  unfold Seg6.relationRow5703 at r5703
  unfold Seg6.relationRow5704 at r5704
  unfold Seg6.relationRow5705 at r5705
  unfold Seg6.relationRow5706 Seg6.relationLc1211 at r5706
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5706
  unfold Seg6.relationRow5707 Seg6.relationLc1212 at r5707
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5707
  unfold Seg6.relationRow5708 at r5708
  unfold Seg6.relationRow5709 at r5709
  unfold Seg6.relationRow5710 at r5710
  unfold Seg6.relationRow5711 at r5711
  unfold Seg6.relationRow5712 at r5712
  have hrung224 (bit : Bool) (hbit : rho 2108 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX224 rho : Seg6.F), (seg6AccY224 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 6090 : Seg6.F), (rho 6091 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX224 rho : Seg6.F), (seg6AccY224 rho : Seg6.F)⟩
        ⟨(rho 6090 : Seg6.F), (rho 6091 : Seg6.F)⟩
        ⟨(seg6AccX225 rho : Seg6.F), (seg6AccY225 rho : Seg6.F)⟩
        ⟨(rho 6104 : Seg6.F), (rho 6105 : Seg6.F)⟩ := by
    have hnextx : seg6AccX225 rho = seg6AccX224 rho + rho 6099 := by
      unfold seg6AccX225 seg6AccX224
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5063 14 74]
      ring
    have hnexty : seg6AccY225 rho = seg6AccY224 rho + rho 6100 := by
      unfold seg6AccY225 seg6AccY224
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5064 14 74]
      ring
    have hsum : seg6AccX224 rho + seg6AccY224 rho = rho 6092 := by
      unfold seg6AccX224 seg6AccY224
      linear_combination r5699
    have ha0 : (rho 6090 + rho 6091) * (seg6AccX224 rho + seg6AccY224 rho) = rho 6093 := by
      rw [hsum]
      linear_combination r5700
    have ha1 : rho 6091 * seg6AccX224 rho = rho 6094 := by
      unfold seg6AccX224
      linear_combination r5701
    have ha2 : rho 6090 * seg6AccY224 rho = rho 6095 := by
      unfold seg6AccY224
      linear_combination r5702
    have ha3 : 3021 * rho 6094 * rho 6095 = rho 6096 := by
      linear_combination r5703
    have ha4 : rho 6097 * (1 + rho 6096) = rho 6094 + rho 6095 := by
      linear_combination r5704
    have ha5 : rho 6098 * (1 - rho 6096) = rho 6093 - rho 6094 - rho 6095 := by
      linear_combination r5705
    have haddx :
        rho 6097 * (1 + 3021 * (rho 6091 * seg6AccX224 rho) * (rho 6090 * seg6AccY224 rho)) =
          rho 6091 * seg6AccX224 rho + rho 6090 * seg6AccY224 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 6098 * (1 - 3021 * (rho 6091 * seg6AccX224 rho) * (rho 6090 * seg6AccY224 rho)) =
          (-1) * (rho 6091 * seg6AccX224 rho) - rho 6090 * seg6AccY224 rho +
            (seg6AccY224 rho - seg6AccX224 rho * (-1)) * (rho 6090 + rho 6091) := by
      rw [ha1, ha2, ha3]
      calc
        rho 6098 * (1 - rho 6096) = rho 6093 - rho 6094 - rho 6095 := ha5
        _ = (-1) * rho 6094 - rho 6095 + (seg6AccY224 rho - seg6AccX224 rho * (-1)) * (rho 6090 + rho 6091) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX225 rho = seg6AccX224 rho - Bool.toZMod bit * (seg6AccX224 rho - rho 6097) := by
      have hd : rho 6099 = Bool.toZMod bit * (rho 6097 - seg6AccX224 rho) := by
        rw [← hbit]
        unfold seg6AccX224
        linear_combination -r5706
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY225 rho = seg6AccY224 rho - Bool.toZMod bit * (seg6AccY224 rho - rho 6098) := by
      have hd : rho 6100 = Bool.toZMod bit * (rho 6098 - seg6AccY224 rho) := by
        rw [← hbit]
        unfold seg6AccY224
        linear_combination -r5707
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 6090 * rho 6091 = rho 6101 := by linear_combination r5708
    have hd1 : rho 6090 * rho 6090 = rho 6102 := by linear_combination r5709
    have hd2 : rho 6091 * rho 6091 = rho 6103 := by linear_combination r5710
    have hd3 : rho 6104 * (rho 6091 * rho 6091 + rho 6090 * rho 6090 * (-1)) = 2 * (rho 6090 * rho 6091) := by
      rw [hd0, hd1, hd2]
      linear_combination r5711
    have hd4 : rho 6105 * (2 - (rho 6091 * rho 6091 + rho 6090 * rho 6090 * (-1))) = rho 6091 * rho 6091 - rho 6090 * rho 6090 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5712
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX224 rho : Seg6.F), (seg6AccY224 rho : Seg6.F)⟩
      ⟨(rho 6090 : Seg6.F), (rho 6091 : Seg6.F)⟩
      ⟨(rho 6097 : Seg6.F), (rho 6098 : Seg6.F)⟩
      ⟨(seg6AccX225 rho : Seg6.F), (seg6AccY225 rho : Seg6.F)⟩
      ⟨(rho 6104 : Seg6.F), (rho 6105 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung224

theorem seg6_rows225 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow5713 rho ∧ Seg6.relationRow5714 rho ∧ Seg6.relationRow5715 rho ∧ Seg6.relationRow5716 rho ∧ Seg6.relationRow5717 rho ∧ Seg6.relationRow5718 rho ∧ Seg6.relationRow5719 rho ∧ Seg6.relationRow5720 rho ∧ Seg6.relationRow5721 rho ∧ Seg6.relationRow5722 rho ∧ Seg6.relationRow5723 rho ∧ Seg6.relationRow5724 rho ∧ Seg6.relationRow5725 rho ∧ Seg6.relationRow5726 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p71, _, _, _, _
  ⟩
  unfold Seg6.relationPart71 at p71
  rcases p71 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5713, r5714, r5715, r5716, r5717, r5718, r5719, r5720, r5721, r5722, r5723, r5724, r5725, r5726, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5713, r5714, r5715, r5716, r5717, r5718, r5719, r5720, r5721, r5722, r5723, r5724, r5725, r5726⟩

theorem seg6_rung225 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2109 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX225 rho : Seg6.F), (seg6AccY225 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 6104 : Seg6.F), (rho 6105 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX225 rho : Seg6.F), (seg6AccY225 rho : Seg6.F)⟩
        ⟨(rho 6104 : Seg6.F), (rho 6105 : Seg6.F)⟩
        ⟨(seg6AccX226 rho : Seg6.F), (seg6AccY226 rho : Seg6.F)⟩
        ⟨(rho 6118 : Seg6.F), (rho 6119 : Seg6.F)⟩ := by
  obtain ⟨r5713, r5714, r5715, r5716, r5717, r5718, r5719, r5720, r5721, r5722, r5723, r5724, r5725, r5726⟩ := seg6_rows225 rho h
  unfold Seg6.relationRow5713 Seg6.relationLc1213 at r5713
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5713
  unfold Seg6.relationRow5714 at r5714
  unfold Seg6.relationRow5715 Seg6.relationLc1214 at r5715
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5715
  unfold Seg6.relationRow5716 Seg6.relationLc1215 at r5716
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5716
  unfold Seg6.relationRow5717 at r5717
  unfold Seg6.relationRow5718 at r5718
  unfold Seg6.relationRow5719 at r5719
  unfold Seg6.relationRow5720 Seg6.relationLc1216 at r5720
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5720
  unfold Seg6.relationRow5721 Seg6.relationLc1217 at r5721
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5721
  unfold Seg6.relationRow5722 at r5722
  unfold Seg6.relationRow5723 at r5723
  unfold Seg6.relationRow5724 at r5724
  unfold Seg6.relationRow5725 at r5725
  unfold Seg6.relationRow5726 at r5726
  have hrung225 (bit : Bool) (hbit : rho 2109 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX225 rho : Seg6.F), (seg6AccY225 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 6104 : Seg6.F), (rho 6105 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX225 rho : Seg6.F), (seg6AccY225 rho : Seg6.F)⟩
        ⟨(rho 6104 : Seg6.F), (rho 6105 : Seg6.F)⟩
        ⟨(seg6AccX226 rho : Seg6.F), (seg6AccY226 rho : Seg6.F)⟩
        ⟨(rho 6118 : Seg6.F), (rho 6119 : Seg6.F)⟩ := by
    have hnextx : seg6AccX226 rho = seg6AccX225 rho + rho 6113 := by
      unfold seg6AccX226 seg6AccX225
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5063 14 75]
      ring
    have hnexty : seg6AccY226 rho = seg6AccY225 rho + rho 6114 := by
      unfold seg6AccY226 seg6AccY225
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5064 14 75]
      ring
    have hsum : seg6AccX225 rho + seg6AccY225 rho = rho 6106 := by
      unfold seg6AccX225 seg6AccY225
      linear_combination r5713
    have ha0 : (rho 6104 + rho 6105) * (seg6AccX225 rho + seg6AccY225 rho) = rho 6107 := by
      rw [hsum]
      linear_combination r5714
    have ha1 : rho 6105 * seg6AccX225 rho = rho 6108 := by
      unfold seg6AccX225
      linear_combination r5715
    have ha2 : rho 6104 * seg6AccY225 rho = rho 6109 := by
      unfold seg6AccY225
      linear_combination r5716
    have ha3 : 3021 * rho 6108 * rho 6109 = rho 6110 := by
      linear_combination r5717
    have ha4 : rho 6111 * (1 + rho 6110) = rho 6108 + rho 6109 := by
      linear_combination r5718
    have ha5 : rho 6112 * (1 - rho 6110) = rho 6107 - rho 6108 - rho 6109 := by
      linear_combination r5719
    have haddx :
        rho 6111 * (1 + 3021 * (rho 6105 * seg6AccX225 rho) * (rho 6104 * seg6AccY225 rho)) =
          rho 6105 * seg6AccX225 rho + rho 6104 * seg6AccY225 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 6112 * (1 - 3021 * (rho 6105 * seg6AccX225 rho) * (rho 6104 * seg6AccY225 rho)) =
          (-1) * (rho 6105 * seg6AccX225 rho) - rho 6104 * seg6AccY225 rho +
            (seg6AccY225 rho - seg6AccX225 rho * (-1)) * (rho 6104 + rho 6105) := by
      rw [ha1, ha2, ha3]
      calc
        rho 6112 * (1 - rho 6110) = rho 6107 - rho 6108 - rho 6109 := ha5
        _ = (-1) * rho 6108 - rho 6109 + (seg6AccY225 rho - seg6AccX225 rho * (-1)) * (rho 6104 + rho 6105) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX226 rho = seg6AccX225 rho - Bool.toZMod bit * (seg6AccX225 rho - rho 6111) := by
      have hd : rho 6113 = Bool.toZMod bit * (rho 6111 - seg6AccX225 rho) := by
        rw [← hbit]
        unfold seg6AccX225
        linear_combination -r5720
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY226 rho = seg6AccY225 rho - Bool.toZMod bit * (seg6AccY225 rho - rho 6112) := by
      have hd : rho 6114 = Bool.toZMod bit * (rho 6112 - seg6AccY225 rho) := by
        rw [← hbit]
        unfold seg6AccY225
        linear_combination -r5721
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 6104 * rho 6105 = rho 6115 := by linear_combination r5722
    have hd1 : rho 6104 * rho 6104 = rho 6116 := by linear_combination r5723
    have hd2 : rho 6105 * rho 6105 = rho 6117 := by linear_combination r5724
    have hd3 : rho 6118 * (rho 6105 * rho 6105 + rho 6104 * rho 6104 * (-1)) = 2 * (rho 6104 * rho 6105) := by
      rw [hd0, hd1, hd2]
      linear_combination r5725
    have hd4 : rho 6119 * (2 - (rho 6105 * rho 6105 + rho 6104 * rho 6104 * (-1))) = rho 6105 * rho 6105 - rho 6104 * rho 6104 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5726
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX225 rho : Seg6.F), (seg6AccY225 rho : Seg6.F)⟩
      ⟨(rho 6104 : Seg6.F), (rho 6105 : Seg6.F)⟩
      ⟨(rho 6111 : Seg6.F), (rho 6112 : Seg6.F)⟩
      ⟨(seg6AccX226 rho : Seg6.F), (seg6AccY226 rho : Seg6.F)⟩
      ⟨(rho 6118 : Seg6.F), (rho 6119 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung225

theorem seg6_rows226 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow5727 rho ∧ Seg6.relationRow5728 rho ∧ Seg6.relationRow5729 rho ∧ Seg6.relationRow5730 rho ∧ Seg6.relationRow5731 rho ∧ Seg6.relationRow5732 rho ∧ Seg6.relationRow5733 rho ∧ Seg6.relationRow5734 rho ∧ Seg6.relationRow5735 rho ∧ Seg6.relationRow5736 rho ∧ Seg6.relationRow5737 rho ∧ Seg6.relationRow5738 rho ∧ Seg6.relationRow5739 rho ∧ Seg6.relationRow5740 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p71, _, _, _, _
  ⟩
  unfold Seg6.relationPart71 at p71
  rcases p71 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5727, r5728, r5729, r5730, r5731, r5732, r5733, r5734, r5735, r5736, r5737, r5738, r5739, r5740, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5727, r5728, r5729, r5730, r5731, r5732, r5733, r5734, r5735, r5736, r5737, r5738, r5739, r5740⟩

theorem seg6_rung226 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2110 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX226 rho : Seg6.F), (seg6AccY226 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 6118 : Seg6.F), (rho 6119 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX226 rho : Seg6.F), (seg6AccY226 rho : Seg6.F)⟩
        ⟨(rho 6118 : Seg6.F), (rho 6119 : Seg6.F)⟩
        ⟨(seg6AccX227 rho : Seg6.F), (seg6AccY227 rho : Seg6.F)⟩
        ⟨(rho 6132 : Seg6.F), (rho 6133 : Seg6.F)⟩ := by
  obtain ⟨r5727, r5728, r5729, r5730, r5731, r5732, r5733, r5734, r5735, r5736, r5737, r5738, r5739, r5740⟩ := seg6_rows226 rho h
  unfold Seg6.relationRow5727 Seg6.relationLc1218 at r5727
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5727
  unfold Seg6.relationRow5728 at r5728
  unfold Seg6.relationRow5729 Seg6.relationLc1219 at r5729
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5729
  unfold Seg6.relationRow5730 Seg6.relationLc1220 at r5730
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5730
  unfold Seg6.relationRow5731 at r5731
  unfold Seg6.relationRow5732 at r5732
  unfold Seg6.relationRow5733 at r5733
  unfold Seg6.relationRow5734 Seg6.relationLc1221 at r5734
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5734
  unfold Seg6.relationRow5735 Seg6.relationLc1222 at r5735
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5735
  unfold Seg6.relationRow5736 at r5736
  unfold Seg6.relationRow5737 at r5737
  unfold Seg6.relationRow5738 at r5738
  unfold Seg6.relationRow5739 at r5739
  unfold Seg6.relationRow5740 at r5740
  have hrung226 (bit : Bool) (hbit : rho 2110 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX226 rho : Seg6.F), (seg6AccY226 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 6118 : Seg6.F), (rho 6119 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX226 rho : Seg6.F), (seg6AccY226 rho : Seg6.F)⟩
        ⟨(rho 6118 : Seg6.F), (rho 6119 : Seg6.F)⟩
        ⟨(seg6AccX227 rho : Seg6.F), (seg6AccY227 rho : Seg6.F)⟩
        ⟨(rho 6132 : Seg6.F), (rho 6133 : Seg6.F)⟩ := by
    have hnextx : seg6AccX227 rho = seg6AccX226 rho + rho 6127 := by
      unfold seg6AccX227 seg6AccX226
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5063 14 76]
      ring
    have hnexty : seg6AccY227 rho = seg6AccY226 rho + rho 6128 := by
      unfold seg6AccY227 seg6AccY226
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5064 14 76]
      ring
    have hsum : seg6AccX226 rho + seg6AccY226 rho = rho 6120 := by
      unfold seg6AccX226 seg6AccY226
      linear_combination r5727
    have ha0 : (rho 6118 + rho 6119) * (seg6AccX226 rho + seg6AccY226 rho) = rho 6121 := by
      rw [hsum]
      linear_combination r5728
    have ha1 : rho 6119 * seg6AccX226 rho = rho 6122 := by
      unfold seg6AccX226
      linear_combination r5729
    have ha2 : rho 6118 * seg6AccY226 rho = rho 6123 := by
      unfold seg6AccY226
      linear_combination r5730
    have ha3 : 3021 * rho 6122 * rho 6123 = rho 6124 := by
      linear_combination r5731
    have ha4 : rho 6125 * (1 + rho 6124) = rho 6122 + rho 6123 := by
      linear_combination r5732
    have ha5 : rho 6126 * (1 - rho 6124) = rho 6121 - rho 6122 - rho 6123 := by
      linear_combination r5733
    have haddx :
        rho 6125 * (1 + 3021 * (rho 6119 * seg6AccX226 rho) * (rho 6118 * seg6AccY226 rho)) =
          rho 6119 * seg6AccX226 rho + rho 6118 * seg6AccY226 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 6126 * (1 - 3021 * (rho 6119 * seg6AccX226 rho) * (rho 6118 * seg6AccY226 rho)) =
          (-1) * (rho 6119 * seg6AccX226 rho) - rho 6118 * seg6AccY226 rho +
            (seg6AccY226 rho - seg6AccX226 rho * (-1)) * (rho 6118 + rho 6119) := by
      rw [ha1, ha2, ha3]
      calc
        rho 6126 * (1 - rho 6124) = rho 6121 - rho 6122 - rho 6123 := ha5
        _ = (-1) * rho 6122 - rho 6123 + (seg6AccY226 rho - seg6AccX226 rho * (-1)) * (rho 6118 + rho 6119) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX227 rho = seg6AccX226 rho - Bool.toZMod bit * (seg6AccX226 rho - rho 6125) := by
      have hd : rho 6127 = Bool.toZMod bit * (rho 6125 - seg6AccX226 rho) := by
        rw [← hbit]
        unfold seg6AccX226
        linear_combination -r5734
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY227 rho = seg6AccY226 rho - Bool.toZMod bit * (seg6AccY226 rho - rho 6126) := by
      have hd : rho 6128 = Bool.toZMod bit * (rho 6126 - seg6AccY226 rho) := by
        rw [← hbit]
        unfold seg6AccY226
        linear_combination -r5735
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 6118 * rho 6119 = rho 6129 := by linear_combination r5736
    have hd1 : rho 6118 * rho 6118 = rho 6130 := by linear_combination r5737
    have hd2 : rho 6119 * rho 6119 = rho 6131 := by linear_combination r5738
    have hd3 : rho 6132 * (rho 6119 * rho 6119 + rho 6118 * rho 6118 * (-1)) = 2 * (rho 6118 * rho 6119) := by
      rw [hd0, hd1, hd2]
      linear_combination r5739
    have hd4 : rho 6133 * (2 - (rho 6119 * rho 6119 + rho 6118 * rho 6118 * (-1))) = rho 6119 * rho 6119 - rho 6118 * rho 6118 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5740
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX226 rho : Seg6.F), (seg6AccY226 rho : Seg6.F)⟩
      ⟨(rho 6118 : Seg6.F), (rho 6119 : Seg6.F)⟩
      ⟨(rho 6125 : Seg6.F), (rho 6126 : Seg6.F)⟩
      ⟨(seg6AccX227 rho : Seg6.F), (seg6AccY227 rho : Seg6.F)⟩
      ⟨(rho 6132 : Seg6.F), (rho 6133 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung226

theorem seg6_rows227 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow5741 rho ∧ Seg6.relationRow5742 rho ∧ Seg6.relationRow5743 rho ∧ Seg6.relationRow5744 rho ∧ Seg6.relationRow5745 rho ∧ Seg6.relationRow5746 rho ∧ Seg6.relationRow5747 rho ∧ Seg6.relationRow5748 rho ∧ Seg6.relationRow5749 rho ∧ Seg6.relationRow5750 rho ∧ Seg6.relationRow5751 rho ∧ Seg6.relationRow5752 rho ∧ Seg6.relationRow5753 rho ∧ Seg6.relationRow5754 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p71, _, _, _, _
  ⟩
  unfold Seg6.relationPart71 at p71
  rcases p71 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5741, r5742, r5743, r5744, r5745, r5746, r5747, r5748, r5749, r5750, r5751, r5752, r5753, r5754, _, _, _, _, _⟩
  exact ⟨r5741, r5742, r5743, r5744, r5745, r5746, r5747, r5748, r5749, r5750, r5751, r5752, r5753, r5754⟩

theorem seg6_rung227 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2111 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX227 rho : Seg6.F), (seg6AccY227 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 6132 : Seg6.F), (rho 6133 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX227 rho : Seg6.F), (seg6AccY227 rho : Seg6.F)⟩
        ⟨(rho 6132 : Seg6.F), (rho 6133 : Seg6.F)⟩
        ⟨(seg6AccX228 rho : Seg6.F), (seg6AccY228 rho : Seg6.F)⟩
        ⟨(rho 6146 : Seg6.F), (rho 6147 : Seg6.F)⟩ := by
  obtain ⟨r5741, r5742, r5743, r5744, r5745, r5746, r5747, r5748, r5749, r5750, r5751, r5752, r5753, r5754⟩ := seg6_rows227 rho h
  unfold Seg6.relationRow5741 Seg6.relationLc1223 at r5741
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5741
  unfold Seg6.relationRow5742 at r5742
  unfold Seg6.relationRow5743 Seg6.relationLc1224 at r5743
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5743
  unfold Seg6.relationRow5744 Seg6.relationLc1225 at r5744
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5744
  unfold Seg6.relationRow5745 at r5745
  unfold Seg6.relationRow5746 at r5746
  unfold Seg6.relationRow5747 at r5747
  unfold Seg6.relationRow5748 Seg6.relationLc1226 at r5748
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5748
  unfold Seg6.relationRow5749 Seg6.relationLc1227 at r5749
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5749
  unfold Seg6.relationRow5750 at r5750
  unfold Seg6.relationRow5751 at r5751
  unfold Seg6.relationRow5752 at r5752
  unfold Seg6.relationRow5753 at r5753
  unfold Seg6.relationRow5754 at r5754
  have hrung227 (bit : Bool) (hbit : rho 2111 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX227 rho : Seg6.F), (seg6AccY227 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 6132 : Seg6.F), (rho 6133 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX227 rho : Seg6.F), (seg6AccY227 rho : Seg6.F)⟩
        ⟨(rho 6132 : Seg6.F), (rho 6133 : Seg6.F)⟩
        ⟨(seg6AccX228 rho : Seg6.F), (seg6AccY228 rho : Seg6.F)⟩
        ⟨(rho 6146 : Seg6.F), (rho 6147 : Seg6.F)⟩ := by
    have hnextx : seg6AccX228 rho = seg6AccX227 rho + rho 6141 := by
      unfold seg6AccX228 seg6AccX227
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5063 14 77]
      ring
    have hnexty : seg6AccY228 rho = seg6AccY227 rho + rho 6142 := by
      unfold seg6AccY228 seg6AccY227
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5064 14 77]
      ring
    have hsum : seg6AccX227 rho + seg6AccY227 rho = rho 6134 := by
      unfold seg6AccX227 seg6AccY227
      linear_combination r5741
    have ha0 : (rho 6132 + rho 6133) * (seg6AccX227 rho + seg6AccY227 rho) = rho 6135 := by
      rw [hsum]
      linear_combination r5742
    have ha1 : rho 6133 * seg6AccX227 rho = rho 6136 := by
      unfold seg6AccX227
      linear_combination r5743
    have ha2 : rho 6132 * seg6AccY227 rho = rho 6137 := by
      unfold seg6AccY227
      linear_combination r5744
    have ha3 : 3021 * rho 6136 * rho 6137 = rho 6138 := by
      linear_combination r5745
    have ha4 : rho 6139 * (1 + rho 6138) = rho 6136 + rho 6137 := by
      linear_combination r5746
    have ha5 : rho 6140 * (1 - rho 6138) = rho 6135 - rho 6136 - rho 6137 := by
      linear_combination r5747
    have haddx :
        rho 6139 * (1 + 3021 * (rho 6133 * seg6AccX227 rho) * (rho 6132 * seg6AccY227 rho)) =
          rho 6133 * seg6AccX227 rho + rho 6132 * seg6AccY227 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 6140 * (1 - 3021 * (rho 6133 * seg6AccX227 rho) * (rho 6132 * seg6AccY227 rho)) =
          (-1) * (rho 6133 * seg6AccX227 rho) - rho 6132 * seg6AccY227 rho +
            (seg6AccY227 rho - seg6AccX227 rho * (-1)) * (rho 6132 + rho 6133) := by
      rw [ha1, ha2, ha3]
      calc
        rho 6140 * (1 - rho 6138) = rho 6135 - rho 6136 - rho 6137 := ha5
        _ = (-1) * rho 6136 - rho 6137 + (seg6AccY227 rho - seg6AccX227 rho * (-1)) * (rho 6132 + rho 6133) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX228 rho = seg6AccX227 rho - Bool.toZMod bit * (seg6AccX227 rho - rho 6139) := by
      have hd : rho 6141 = Bool.toZMod bit * (rho 6139 - seg6AccX227 rho) := by
        rw [← hbit]
        unfold seg6AccX227
        linear_combination -r5748
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY228 rho = seg6AccY227 rho - Bool.toZMod bit * (seg6AccY227 rho - rho 6140) := by
      have hd : rho 6142 = Bool.toZMod bit * (rho 6140 - seg6AccY227 rho) := by
        rw [← hbit]
        unfold seg6AccY227
        linear_combination -r5749
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 6132 * rho 6133 = rho 6143 := by linear_combination r5750
    have hd1 : rho 6132 * rho 6132 = rho 6144 := by linear_combination r5751
    have hd2 : rho 6133 * rho 6133 = rho 6145 := by linear_combination r5752
    have hd3 : rho 6146 * (rho 6133 * rho 6133 + rho 6132 * rho 6132 * (-1)) = 2 * (rho 6132 * rho 6133) := by
      rw [hd0, hd1, hd2]
      linear_combination r5753
    have hd4 : rho 6147 * (2 - (rho 6133 * rho 6133 + rho 6132 * rho 6132 * (-1))) = rho 6133 * rho 6133 - rho 6132 * rho 6132 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5754
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX227 rho : Seg6.F), (seg6AccY227 rho : Seg6.F)⟩
      ⟨(rho 6132 : Seg6.F), (rho 6133 : Seg6.F)⟩
      ⟨(rho 6139 : Seg6.F), (rho 6140 : Seg6.F)⟩
      ⟨(seg6AccX228 rho : Seg6.F), (seg6AccY228 rho : Seg6.F)⟩
      ⟨(rho 6146 : Seg6.F), (rho 6147 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung227

theorem seg6_rows228 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow5755 rho ∧ Seg6.relationRow5756 rho ∧ Seg6.relationRow5757 rho ∧ Seg6.relationRow5758 rho ∧ Seg6.relationRow5759 rho ∧ Seg6.relationRow5760 rho ∧ Seg6.relationRow5761 rho ∧ Seg6.relationRow5762 rho ∧ Seg6.relationRow5763 rho ∧ Seg6.relationRow5764 rho ∧ Seg6.relationRow5765 rho ∧ Seg6.relationRow5766 rho ∧ Seg6.relationRow5767 rho ∧ Seg6.relationRow5768 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p71, p72, _, _, _
  ⟩
  unfold Seg6.relationPart71 at p71
  rcases p71 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5755, r5756, r5757, r5758, r5759⟩
  unfold Seg6.relationPart72 at p72
  rcases p72 with ⟨r5760, r5761, r5762, r5763, r5764, r5765, r5766, r5767, r5768, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5755, r5756, r5757, r5758, r5759, r5760, r5761, r5762, r5763, r5764, r5765, r5766, r5767, r5768⟩

theorem seg6_rung228 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2112 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX228 rho : Seg6.F), (seg6AccY228 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 6146 : Seg6.F), (rho 6147 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX228 rho : Seg6.F), (seg6AccY228 rho : Seg6.F)⟩
        ⟨(rho 6146 : Seg6.F), (rho 6147 : Seg6.F)⟩
        ⟨(seg6AccX229 rho : Seg6.F), (seg6AccY229 rho : Seg6.F)⟩
        ⟨(rho 6160 : Seg6.F), (rho 6161 : Seg6.F)⟩ := by
  obtain ⟨r5755, r5756, r5757, r5758, r5759, r5760, r5761, r5762, r5763, r5764, r5765, r5766, r5767, r5768⟩ := seg6_rows228 rho h
  unfold Seg6.relationRow5755 Seg6.relationLc1228 at r5755
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5755
  unfold Seg6.relationRow5756 at r5756
  unfold Seg6.relationRow5757 Seg6.relationLc1229 at r5757
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5757
  unfold Seg6.relationRow5758 Seg6.relationLc1230 at r5758
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5758
  unfold Seg6.relationRow5759 at r5759
  unfold Seg6.relationRow5760 at r5760
  unfold Seg6.relationRow5761 at r5761
  unfold Seg6.relationRow5762 Seg6.relationLc1231 at r5762
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5762
  unfold Seg6.relationRow5763 Seg6.relationLc1232 at r5763
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5763
  unfold Seg6.relationRow5764 at r5764
  unfold Seg6.relationRow5765 at r5765
  unfold Seg6.relationRow5766 at r5766
  unfold Seg6.relationRow5767 at r5767
  unfold Seg6.relationRow5768 at r5768
  have hrung228 (bit : Bool) (hbit : rho 2112 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX228 rho : Seg6.F), (seg6AccY228 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 6146 : Seg6.F), (rho 6147 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX228 rho : Seg6.F), (seg6AccY228 rho : Seg6.F)⟩
        ⟨(rho 6146 : Seg6.F), (rho 6147 : Seg6.F)⟩
        ⟨(seg6AccX229 rho : Seg6.F), (seg6AccY229 rho : Seg6.F)⟩
        ⟨(rho 6160 : Seg6.F), (rho 6161 : Seg6.F)⟩ := by
    have hnextx : seg6AccX229 rho = seg6AccX228 rho + rho 6155 := by
      unfold seg6AccX229 seg6AccX228
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5063 14 78]
      ring
    have hnexty : seg6AccY229 rho = seg6AccY228 rho + rho 6156 := by
      unfold seg6AccY229 seg6AccY228
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5064 14 78]
      ring
    have hsum : seg6AccX228 rho + seg6AccY228 rho = rho 6148 := by
      unfold seg6AccX228 seg6AccY228
      linear_combination r5755
    have ha0 : (rho 6146 + rho 6147) * (seg6AccX228 rho + seg6AccY228 rho) = rho 6149 := by
      rw [hsum]
      linear_combination r5756
    have ha1 : rho 6147 * seg6AccX228 rho = rho 6150 := by
      unfold seg6AccX228
      linear_combination r5757
    have ha2 : rho 6146 * seg6AccY228 rho = rho 6151 := by
      unfold seg6AccY228
      linear_combination r5758
    have ha3 : 3021 * rho 6150 * rho 6151 = rho 6152 := by
      linear_combination r5759
    have ha4 : rho 6153 * (1 + rho 6152) = rho 6150 + rho 6151 := by
      linear_combination r5760
    have ha5 : rho 6154 * (1 - rho 6152) = rho 6149 - rho 6150 - rho 6151 := by
      linear_combination r5761
    have haddx :
        rho 6153 * (1 + 3021 * (rho 6147 * seg6AccX228 rho) * (rho 6146 * seg6AccY228 rho)) =
          rho 6147 * seg6AccX228 rho + rho 6146 * seg6AccY228 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 6154 * (1 - 3021 * (rho 6147 * seg6AccX228 rho) * (rho 6146 * seg6AccY228 rho)) =
          (-1) * (rho 6147 * seg6AccX228 rho) - rho 6146 * seg6AccY228 rho +
            (seg6AccY228 rho - seg6AccX228 rho * (-1)) * (rho 6146 + rho 6147) := by
      rw [ha1, ha2, ha3]
      calc
        rho 6154 * (1 - rho 6152) = rho 6149 - rho 6150 - rho 6151 := ha5
        _ = (-1) * rho 6150 - rho 6151 + (seg6AccY228 rho - seg6AccX228 rho * (-1)) * (rho 6146 + rho 6147) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX229 rho = seg6AccX228 rho - Bool.toZMod bit * (seg6AccX228 rho - rho 6153) := by
      have hd : rho 6155 = Bool.toZMod bit * (rho 6153 - seg6AccX228 rho) := by
        rw [← hbit]
        unfold seg6AccX228
        linear_combination -r5762
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY229 rho = seg6AccY228 rho - Bool.toZMod bit * (seg6AccY228 rho - rho 6154) := by
      have hd : rho 6156 = Bool.toZMod bit * (rho 6154 - seg6AccY228 rho) := by
        rw [← hbit]
        unfold seg6AccY228
        linear_combination -r5763
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 6146 * rho 6147 = rho 6157 := by linear_combination r5764
    have hd1 : rho 6146 * rho 6146 = rho 6158 := by linear_combination r5765
    have hd2 : rho 6147 * rho 6147 = rho 6159 := by linear_combination r5766
    have hd3 : rho 6160 * (rho 6147 * rho 6147 + rho 6146 * rho 6146 * (-1)) = 2 * (rho 6146 * rho 6147) := by
      rw [hd0, hd1, hd2]
      linear_combination r5767
    have hd4 : rho 6161 * (2 - (rho 6147 * rho 6147 + rho 6146 * rho 6146 * (-1))) = rho 6147 * rho 6147 - rho 6146 * rho 6146 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5768
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX228 rho : Seg6.F), (seg6AccY228 rho : Seg6.F)⟩
      ⟨(rho 6146 : Seg6.F), (rho 6147 : Seg6.F)⟩
      ⟨(rho 6153 : Seg6.F), (rho 6154 : Seg6.F)⟩
      ⟨(seg6AccX229 rho : Seg6.F), (seg6AccY229 rho : Seg6.F)⟩
      ⟨(rho 6160 : Seg6.F), (rho 6161 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung228

theorem seg6_rows229 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow5769 rho ∧ Seg6.relationRow5770 rho ∧ Seg6.relationRow5771 rho ∧ Seg6.relationRow5772 rho ∧ Seg6.relationRow5773 rho ∧ Seg6.relationRow5774 rho ∧ Seg6.relationRow5775 rho ∧ Seg6.relationRow5776 rho ∧ Seg6.relationRow5777 rho ∧ Seg6.relationRow5778 rho ∧ Seg6.relationRow5779 rho ∧ Seg6.relationRow5780 rho ∧ Seg6.relationRow5781 rho ∧ Seg6.relationRow5782 rho := by
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
  rcases p72 with ⟨_, _, _, _, _, _, _, _, _, r5769, r5770, r5771, r5772, r5773, r5774, r5775, r5776, r5777, r5778, r5779, r5780, r5781, r5782, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5769, r5770, r5771, r5772, r5773, r5774, r5775, r5776, r5777, r5778, r5779, r5780, r5781, r5782⟩

theorem seg6_rung229 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2113 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX229 rho : Seg6.F), (seg6AccY229 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 6160 : Seg6.F), (rho 6161 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX229 rho : Seg6.F), (seg6AccY229 rho : Seg6.F)⟩
        ⟨(rho 6160 : Seg6.F), (rho 6161 : Seg6.F)⟩
        ⟨(seg6AccX230 rho : Seg6.F), (seg6AccY230 rho : Seg6.F)⟩
        ⟨(rho 6174 : Seg6.F), (rho 6175 : Seg6.F)⟩ := by
  obtain ⟨r5769, r5770, r5771, r5772, r5773, r5774, r5775, r5776, r5777, r5778, r5779, r5780, r5781, r5782⟩ := seg6_rows229 rho h
  unfold Seg6.relationRow5769 Seg6.relationLc1233 at r5769
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5769
  unfold Seg6.relationRow5770 at r5770
  unfold Seg6.relationRow5771 Seg6.relationLc1234 at r5771
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5771
  unfold Seg6.relationRow5772 Seg6.relationLc1235 at r5772
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5772
  unfold Seg6.relationRow5773 at r5773
  unfold Seg6.relationRow5774 at r5774
  unfold Seg6.relationRow5775 at r5775
  unfold Seg6.relationRow5776 Seg6.relationLc1236 at r5776
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5776
  unfold Seg6.relationRow5777 Seg6.relationLc1237 at r5777
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5777
  unfold Seg6.relationRow5778 at r5778
  unfold Seg6.relationRow5779 at r5779
  unfold Seg6.relationRow5780 at r5780
  unfold Seg6.relationRow5781 at r5781
  unfold Seg6.relationRow5782 at r5782
  have hrung229 (bit : Bool) (hbit : rho 2113 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX229 rho : Seg6.F), (seg6AccY229 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 6160 : Seg6.F), (rho 6161 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX229 rho : Seg6.F), (seg6AccY229 rho : Seg6.F)⟩
        ⟨(rho 6160 : Seg6.F), (rho 6161 : Seg6.F)⟩
        ⟨(seg6AccX230 rho : Seg6.F), (seg6AccY230 rho : Seg6.F)⟩
        ⟨(rho 6174 : Seg6.F), (rho 6175 : Seg6.F)⟩ := by
    have hnextx : seg6AccX230 rho = seg6AccX229 rho + rho 6169 := by
      unfold seg6AccX230 seg6AccX229
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5063 14 79]
      ring
    have hnexty : seg6AccY230 rho = seg6AccY229 rho + rho 6170 := by
      unfold seg6AccY230 seg6AccY229
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5064 14 79]
      ring
    have hsum : seg6AccX229 rho + seg6AccY229 rho = rho 6162 := by
      unfold seg6AccX229 seg6AccY229
      linear_combination r5769
    have ha0 : (rho 6160 + rho 6161) * (seg6AccX229 rho + seg6AccY229 rho) = rho 6163 := by
      rw [hsum]
      linear_combination r5770
    have ha1 : rho 6161 * seg6AccX229 rho = rho 6164 := by
      unfold seg6AccX229
      linear_combination r5771
    have ha2 : rho 6160 * seg6AccY229 rho = rho 6165 := by
      unfold seg6AccY229
      linear_combination r5772
    have ha3 : 3021 * rho 6164 * rho 6165 = rho 6166 := by
      linear_combination r5773
    have ha4 : rho 6167 * (1 + rho 6166) = rho 6164 + rho 6165 := by
      linear_combination r5774
    have ha5 : rho 6168 * (1 - rho 6166) = rho 6163 - rho 6164 - rho 6165 := by
      linear_combination r5775
    have haddx :
        rho 6167 * (1 + 3021 * (rho 6161 * seg6AccX229 rho) * (rho 6160 * seg6AccY229 rho)) =
          rho 6161 * seg6AccX229 rho + rho 6160 * seg6AccY229 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 6168 * (1 - 3021 * (rho 6161 * seg6AccX229 rho) * (rho 6160 * seg6AccY229 rho)) =
          (-1) * (rho 6161 * seg6AccX229 rho) - rho 6160 * seg6AccY229 rho +
            (seg6AccY229 rho - seg6AccX229 rho * (-1)) * (rho 6160 + rho 6161) := by
      rw [ha1, ha2, ha3]
      calc
        rho 6168 * (1 - rho 6166) = rho 6163 - rho 6164 - rho 6165 := ha5
        _ = (-1) * rho 6164 - rho 6165 + (seg6AccY229 rho - seg6AccX229 rho * (-1)) * (rho 6160 + rho 6161) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX230 rho = seg6AccX229 rho - Bool.toZMod bit * (seg6AccX229 rho - rho 6167) := by
      have hd : rho 6169 = Bool.toZMod bit * (rho 6167 - seg6AccX229 rho) := by
        rw [← hbit]
        unfold seg6AccX229
        linear_combination -r5776
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY230 rho = seg6AccY229 rho - Bool.toZMod bit * (seg6AccY229 rho - rho 6168) := by
      have hd : rho 6170 = Bool.toZMod bit * (rho 6168 - seg6AccY229 rho) := by
        rw [← hbit]
        unfold seg6AccY229
        linear_combination -r5777
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 6160 * rho 6161 = rho 6171 := by linear_combination r5778
    have hd1 : rho 6160 * rho 6160 = rho 6172 := by linear_combination r5779
    have hd2 : rho 6161 * rho 6161 = rho 6173 := by linear_combination r5780
    have hd3 : rho 6174 * (rho 6161 * rho 6161 + rho 6160 * rho 6160 * (-1)) = 2 * (rho 6160 * rho 6161) := by
      rw [hd0, hd1, hd2]
      linear_combination r5781
    have hd4 : rho 6175 * (2 - (rho 6161 * rho 6161 + rho 6160 * rho 6160 * (-1))) = rho 6161 * rho 6161 - rho 6160 * rho 6160 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5782
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX229 rho : Seg6.F), (seg6AccY229 rho : Seg6.F)⟩
      ⟨(rho 6160 : Seg6.F), (rho 6161 : Seg6.F)⟩
      ⟨(rho 6167 : Seg6.F), (rho 6168 : Seg6.F)⟩
      ⟨(seg6AccX230 rho : Seg6.F), (seg6AccY230 rho : Seg6.F)⟩
      ⟨(rho 6174 : Seg6.F), (rho 6175 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung229

theorem seg6_rows230 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow5783 rho ∧ Seg6.relationRow5784 rho ∧ Seg6.relationRow5785 rho ∧ Seg6.relationRow5786 rho ∧ Seg6.relationRow5787 rho ∧ Seg6.relationRow5788 rho ∧ Seg6.relationRow5789 rho ∧ Seg6.relationRow5790 rho ∧ Seg6.relationRow5791 rho ∧ Seg6.relationRow5792 rho ∧ Seg6.relationRow5793 rho ∧ Seg6.relationRow5794 rho ∧ Seg6.relationRow5795 rho ∧ Seg6.relationRow5796 rho := by
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
  rcases p72 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5783, r5784, r5785, r5786, r5787, r5788, r5789, r5790, r5791, r5792, r5793, r5794, r5795, r5796, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5783, r5784, r5785, r5786, r5787, r5788, r5789, r5790, r5791, r5792, r5793, r5794, r5795, r5796⟩

theorem seg6_rung230 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2114 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX230 rho : Seg6.F), (seg6AccY230 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 6174 : Seg6.F), (rho 6175 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX230 rho : Seg6.F), (seg6AccY230 rho : Seg6.F)⟩
        ⟨(rho 6174 : Seg6.F), (rho 6175 : Seg6.F)⟩
        ⟨(seg6AccX231 rho : Seg6.F), (seg6AccY231 rho : Seg6.F)⟩
        ⟨(rho 6188 : Seg6.F), (rho 6189 : Seg6.F)⟩ := by
  obtain ⟨r5783, r5784, r5785, r5786, r5787, r5788, r5789, r5790, r5791, r5792, r5793, r5794, r5795, r5796⟩ := seg6_rows230 rho h
  unfold Seg6.relationRow5783 Seg6.relationLc1238 at r5783
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5783
  unfold Seg6.relationRow5784 at r5784
  unfold Seg6.relationRow5785 Seg6.relationLc1239 at r5785
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5785
  unfold Seg6.relationRow5786 Seg6.relationLc1240 at r5786
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5786
  unfold Seg6.relationRow5787 at r5787
  unfold Seg6.relationRow5788 at r5788
  unfold Seg6.relationRow5789 at r5789
  unfold Seg6.relationRow5790 Seg6.relationLc1241 at r5790
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5790
  unfold Seg6.relationRow5791 Seg6.relationLc1242 at r5791
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5791
  unfold Seg6.relationRow5792 at r5792
  unfold Seg6.relationRow5793 at r5793
  unfold Seg6.relationRow5794 at r5794
  unfold Seg6.relationRow5795 at r5795
  unfold Seg6.relationRow5796 at r5796
  have hrung230 (bit : Bool) (hbit : rho 2114 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX230 rho : Seg6.F), (seg6AccY230 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 6174 : Seg6.F), (rho 6175 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX230 rho : Seg6.F), (seg6AccY230 rho : Seg6.F)⟩
        ⟨(rho 6174 : Seg6.F), (rho 6175 : Seg6.F)⟩
        ⟨(seg6AccX231 rho : Seg6.F), (seg6AccY231 rho : Seg6.F)⟩
        ⟨(rho 6188 : Seg6.F), (rho 6189 : Seg6.F)⟩ := by
    have hnextx : seg6AccX231 rho = seg6AccX230 rho + rho 6183 := by
      unfold seg6AccX231 seg6AccX230
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5063 14 80]
      ring
    have hnexty : seg6AccY231 rho = seg6AccY230 rho + rho 6184 := by
      unfold seg6AccY231 seg6AccY230
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5064 14 80]
      ring
    have hsum : seg6AccX230 rho + seg6AccY230 rho = rho 6176 := by
      unfold seg6AccX230 seg6AccY230
      linear_combination r5783
    have ha0 : (rho 6174 + rho 6175) * (seg6AccX230 rho + seg6AccY230 rho) = rho 6177 := by
      rw [hsum]
      linear_combination r5784
    have ha1 : rho 6175 * seg6AccX230 rho = rho 6178 := by
      unfold seg6AccX230
      linear_combination r5785
    have ha2 : rho 6174 * seg6AccY230 rho = rho 6179 := by
      unfold seg6AccY230
      linear_combination r5786
    have ha3 : 3021 * rho 6178 * rho 6179 = rho 6180 := by
      linear_combination r5787
    have ha4 : rho 6181 * (1 + rho 6180) = rho 6178 + rho 6179 := by
      linear_combination r5788
    have ha5 : rho 6182 * (1 - rho 6180) = rho 6177 - rho 6178 - rho 6179 := by
      linear_combination r5789
    have haddx :
        rho 6181 * (1 + 3021 * (rho 6175 * seg6AccX230 rho) * (rho 6174 * seg6AccY230 rho)) =
          rho 6175 * seg6AccX230 rho + rho 6174 * seg6AccY230 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 6182 * (1 - 3021 * (rho 6175 * seg6AccX230 rho) * (rho 6174 * seg6AccY230 rho)) =
          (-1) * (rho 6175 * seg6AccX230 rho) - rho 6174 * seg6AccY230 rho +
            (seg6AccY230 rho - seg6AccX230 rho * (-1)) * (rho 6174 + rho 6175) := by
      rw [ha1, ha2, ha3]
      calc
        rho 6182 * (1 - rho 6180) = rho 6177 - rho 6178 - rho 6179 := ha5
        _ = (-1) * rho 6178 - rho 6179 + (seg6AccY230 rho - seg6AccX230 rho * (-1)) * (rho 6174 + rho 6175) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX231 rho = seg6AccX230 rho - Bool.toZMod bit * (seg6AccX230 rho - rho 6181) := by
      have hd : rho 6183 = Bool.toZMod bit * (rho 6181 - seg6AccX230 rho) := by
        rw [← hbit]
        unfold seg6AccX230
        linear_combination -r5790
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY231 rho = seg6AccY230 rho - Bool.toZMod bit * (seg6AccY230 rho - rho 6182) := by
      have hd : rho 6184 = Bool.toZMod bit * (rho 6182 - seg6AccY230 rho) := by
        rw [← hbit]
        unfold seg6AccY230
        linear_combination -r5791
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 6174 * rho 6175 = rho 6185 := by linear_combination r5792
    have hd1 : rho 6174 * rho 6174 = rho 6186 := by linear_combination r5793
    have hd2 : rho 6175 * rho 6175 = rho 6187 := by linear_combination r5794
    have hd3 : rho 6188 * (rho 6175 * rho 6175 + rho 6174 * rho 6174 * (-1)) = 2 * (rho 6174 * rho 6175) := by
      rw [hd0, hd1, hd2]
      linear_combination r5795
    have hd4 : rho 6189 * (2 - (rho 6175 * rho 6175 + rho 6174 * rho 6174 * (-1))) = rho 6175 * rho 6175 - rho 6174 * rho 6174 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5796
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX230 rho : Seg6.F), (seg6AccY230 rho : Seg6.F)⟩
      ⟨(rho 6174 : Seg6.F), (rho 6175 : Seg6.F)⟩
      ⟨(rho 6181 : Seg6.F), (rho 6182 : Seg6.F)⟩
      ⟨(seg6AccX231 rho : Seg6.F), (seg6AccY231 rho : Seg6.F)⟩
      ⟨(rho 6188 : Seg6.F), (rho 6189 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung230

theorem seg6_hstep_c20 (rho : Nat -> Seg6.F) (h : Seg6.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (1884 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 220 ≤ i → i < 231 →
      EdwardsBridge.onCurve (seg6LadderAccState rho i) →
      EdwardsBridge.onCurve (seg6LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg6LadderAccState rho i) (seg6LadderCurState rho i)
        (seg6LadderAccState rho (i + 1)) (seg6LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg6_rung220 rho h bits[220]! (hbitAt 220 (by omega)) hacc hcur
  · exact seg6_rung221 rho h bits[221]! (hbitAt 221 (by omega)) hacc hcur
  · exact seg6_rung222 rho h bits[222]! (hbitAt 222 (by omega)) hacc hcur
  · exact seg6_rung223 rho h bits[223]! (hbitAt 223 (by omega)) hacc hcur
  · exact seg6_rung224 rho h bits[224]! (hbitAt 224 (by omega)) hacc hcur
  · exact seg6_rung225 rho h bits[225]! (hbitAt 225 (by omega)) hacc hcur
  · exact seg6_rung226 rho h bits[226]! (hbitAt 226 (by omega)) hacc hcur
  · exact seg6_rung227 rho h bits[227]! (hbitAt 227 (by omega)) hacc hcur
  · exact seg6_rung228 rho h bits[228]! (hbitAt 228 (by omega)) hacc hcur
  · exact seg6_rung229 rho h bits[229]! (hbitAt 229 (by omega)) hacc hcur
  · exact seg6_rung230 rho h bits[230]! (hbitAt 230 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
