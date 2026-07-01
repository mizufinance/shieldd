import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg45_rung128 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41076 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX128 rho : Seg45.F), (seg45AccY128 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42855 : Seg45.F), (rho 42856 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX128 rho : Seg45.F), (seg45AccY128 rho : Seg45.F)⟩
        ⟨(rho 42855 : Seg45.F), (rho 42856 : Seg45.F)⟩
        ⟨(seg45AccX129 rho : Seg45.F), (seg45AccY129 rho : Seg45.F)⟩
        ⟨(rho 42868 : Seg45.F), (rho 42869 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p57, p58, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart57 at p57
  rcases p57 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4629, r4630, r4631, r4632, r4633, r4634, r4635, r4636, r4637, r4638, r4639⟩
  unfold Seg45.relationPart58 at p58
  rcases p58 with ⟨r4640, r4641, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow4629 Seg45.relationLc675 Seg45.relationLc675Part0 Seg45.relationLc675Part1 Seg45.relationLc675Part2 Seg45.relationLc675Part3 Seg45.relationLc675Part4 Seg45.relationLc675Part5 Seg45.relationLc675Part6 Seg45.relationLc675Part7 Seg45.relationLc675Part8 at r4629
  unfold Seg45.relationRow4630 Seg45.relationLc676 Seg45.relationLc676Part0 Seg45.relationLc676Part1 Seg45.relationLc676Part2 Seg45.relationLc676Part3 at r4630
  unfold Seg45.relationRow4631 Seg45.relationLc677 Seg45.relationLc677Part0 Seg45.relationLc677Part1 Seg45.relationLc677Part2 Seg45.relationLc677Part3 Seg45.relationLc677Part4 at r4631
  unfold Seg45.relationRow4632 at r4632
  unfold Seg45.relationRow4633 at r4633
  unfold Seg45.relationRow4634 at r4634
  unfold Seg45.relationRow4635 Seg45.relationLc678 Seg45.relationLc678Part0 Seg45.relationLc678Part1 Seg45.relationLc678Part2 Seg45.relationLc678Part3 Seg45.relationLc678Part4 at r4635
  unfold Seg45.relationRow4636 Seg45.relationLc679 Seg45.relationLc679Part0 Seg45.relationLc679Part1 Seg45.relationLc679Part2 Seg45.relationLc679Part3 Seg45.relationLc679Part4 at r4636
  unfold Seg45.relationRow4637 at r4637
  unfold Seg45.relationRow4638 at r4638
  unfold Seg45.relationRow4639 at r4639
  unfold Seg45.relationRow4640 at r4640
  unfold Seg45.relationRow4641 at r4641
  have hrung128 (bit : Bool) (hbit : rho 41076 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX128 rho : Seg45.F), (seg45AccY128 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42855 : Seg45.F), (rho 42856 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX128 rho : Seg45.F), (seg45AccY128 rho : Seg45.F)⟩
        ⟨(rho 42855 : Seg45.F), (rho 42856 : Seg45.F)⟩
        ⟨(seg45AccX129 rho : Seg45.F), (seg45AccY129 rho : Seg45.F)⟩
        ⟨(rho 42868 : Seg45.F), (rho 42869 : Seg45.F)⟩ := by
    have ha0 : (rho 42855 + rho 42856) * (seg45AccX128 rho + seg45AccY128 rho) = rho 42857 := by
      rw [seg45LadderFlatX128_eq, seg45LadderFlatY128_eq]
      unfold seg45LadderFlatX128 seg45LadderFlatY128
      linear_combination r4629
    have ha1 : rho 42856 * seg45AccX128 rho = rho 42858 := by
      rw [seg45LadderFlatX128_eq]
      unfold seg45LadderFlatX128
      linear_combination r4630
    have ha2 : rho 42855 * seg45AccY128 rho = rho 42859 := by
      rw [seg45LadderFlatY128_eq]
      unfold seg45LadderFlatY128
      linear_combination r4631
    have ha3 : 3021 * rho 42858 * rho 42859 = rho 42860 := by
      linear_combination r4632
    have ha4 : rho 42861 * (1 + rho 42860) = rho 42858 + rho 42859 := by
      linear_combination r4633
    have ha5 : rho 42862 * (1 - rho 42860) = rho 42857 - rho 42858 - rho 42859 := by
      linear_combination r4634
    have haddx :
        rho 42861 * (1 + 3021 * (rho 42856 * seg45AccX128 rho) * (rho 42855 * seg45AccY128 rho)) =
          rho 42856 * seg45AccX128 rho + rho 42855 * seg45AccY128 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42862 * (1 - 3021 * (rho 42856 * seg45AccX128 rho) * (rho 42855 * seg45AccY128 rho)) =
          (-1) * (rho 42856 * seg45AccX128 rho) - rho 42855 * seg45AccY128 rho +
            (seg45AccY128 rho - seg45AccX128 rho * (-1)) * (rho 42855 + rho 42856) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42862 * (1 - rho 42860) = rho 42857 - rho 42858 - rho 42859 := ha5
        _ = (-1) * rho 42858 - rho 42859 + (seg45AccY128 rho - seg45AccX128 rho * (-1)) * (rho 42855 + rho 42856) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX129 rho = seg45AccX128 rho - Bool.toZMod bit * (seg45AccX128 rho - rho 42861) := by
      have hd : rho 42863 = Bool.toZMod bit * (rho 42861 - seg45AccX128 rho) := by
        rw [← hbit, seg45LadderFlatX128_eq]
        unfold seg45LadderFlatX128
        linear_combination -r4635
      unfold seg45AccX129
      linear_combination hd
    have hsely : seg45AccY129 rho = seg45AccY128 rho - Bool.toZMod bit * (seg45AccY128 rho - rho 42862) := by
      have hd : rho 42864 = Bool.toZMod bit * (rho 42862 - seg45AccY128 rho) := by
        rw [← hbit, seg45LadderFlatY128_eq]
        unfold seg45LadderFlatY128
        linear_combination -r4636
      unfold seg45AccY129
      linear_combination hd
    have hd0 : rho 42855 * rho 42856 = rho 42865 := by linear_combination r4637
    have hd1 : rho 42855 * rho 42855 = rho 42866 := by linear_combination r4638
    have hd2 : rho 42856 * rho 42856 = rho 42867 := by linear_combination r4639
    have hd3 : rho 42868 * (rho 42856 * rho 42856 + rho 42855 * rho 42855 * (-1)) = 2 * (rho 42855 * rho 42856) := by
      rw [hd0, hd1, hd2]
      linear_combination r4640
    have hd4 : rho 42869 * (2 - (rho 42856 * rho 42856 + rho 42855 * rho 42855 * (-1))) = rho 42856 * rho 42856 - rho 42855 * rho 42855 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4641
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX128 rho : Seg45.F), (seg45AccY128 rho : Seg45.F)⟩
      ⟨(rho 42855 : Seg45.F), (rho 42856 : Seg45.F)⟩
      ⟨(rho 42861 : Seg45.F), (rho 42862 : Seg45.F)⟩
      ⟨(seg45AccX129 rho : Seg45.F), (seg45AccY129 rho : Seg45.F)⟩
      ⟨(rho 42868 : Seg45.F), (rho 42869 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung128

theorem seg45_rung129 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41077 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX129 rho : Seg45.F), (seg45AccY129 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42868 : Seg45.F), (rho 42869 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX129 rho : Seg45.F), (seg45AccY129 rho : Seg45.F)⟩
        ⟨(rho 42868 : Seg45.F), (rho 42869 : Seg45.F)⟩
        ⟨(seg45AccX130 rho : Seg45.F), (seg45AccY130 rho : Seg45.F)⟩
        ⟨(rho 42881 : Seg45.F), (rho 42882 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p58, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart58 at p58
  rcases p58 with ⟨_, _, r4642, r4643, r4644, r4645, r4646, r4647, r4648, r4649, r4650, r4651, r4652, r4653, r4654, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow4642 Seg45.relationLc680 Seg45.relationLc680Part0 Seg45.relationLc680Part1 Seg45.relationLc680Part2 Seg45.relationLc680Part3 Seg45.relationLc680Part4 Seg45.relationLc680Part5 Seg45.relationLc680Part6 Seg45.relationLc680Part7 Seg45.relationLc680Part8 at r4642
  unfold Seg45.relationRow4643 Seg45.relationLc681 Seg45.relationLc681Part0 Seg45.relationLc681Part1 Seg45.relationLc681Part2 Seg45.relationLc681Part3 Seg45.relationLc681Part4 at r4643
  unfold Seg45.relationRow4644 Seg45.relationLc682 Seg45.relationLc682Part0 Seg45.relationLc682Part1 Seg45.relationLc682Part2 Seg45.relationLc682Part3 Seg45.relationLc682Part4 at r4644
  unfold Seg45.relationRow4645 at r4645
  unfold Seg45.relationRow4646 at r4646
  unfold Seg45.relationRow4647 at r4647
  unfold Seg45.relationRow4648 Seg45.relationLc683 Seg45.relationLc683Part0 Seg45.relationLc683Part1 Seg45.relationLc683Part2 Seg45.relationLc683Part3 Seg45.relationLc683Part4 at r4648
  unfold Seg45.relationRow4649 Seg45.relationLc684 Seg45.relationLc684Part0 Seg45.relationLc684Part1 Seg45.relationLc684Part2 Seg45.relationLc684Part3 Seg45.relationLc684Part4 at r4649
  unfold Seg45.relationRow4650 at r4650
  unfold Seg45.relationRow4651 at r4651
  unfold Seg45.relationRow4652 at r4652
  unfold Seg45.relationRow4653 at r4653
  unfold Seg45.relationRow4654 at r4654
  have hrung129 (bit : Bool) (hbit : rho 41077 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX129 rho : Seg45.F), (seg45AccY129 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42868 : Seg45.F), (rho 42869 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX129 rho : Seg45.F), (seg45AccY129 rho : Seg45.F)⟩
        ⟨(rho 42868 : Seg45.F), (rho 42869 : Seg45.F)⟩
        ⟨(seg45AccX130 rho : Seg45.F), (seg45AccY130 rho : Seg45.F)⟩
        ⟨(rho 42881 : Seg45.F), (rho 42882 : Seg45.F)⟩ := by
    have ha0 : (rho 42868 + rho 42869) * (seg45AccX129 rho + seg45AccY129 rho) = rho 42870 := by
      rw [seg45LadderFlatX129_eq, seg45LadderFlatY129_eq]
      unfold seg45LadderFlatX129 seg45LadderFlatY129
      linear_combination r4642
    have ha1 : rho 42869 * seg45AccX129 rho = rho 42871 := by
      rw [seg45LadderFlatX129_eq]
      unfold seg45LadderFlatX129
      linear_combination r4643
    have ha2 : rho 42868 * seg45AccY129 rho = rho 42872 := by
      rw [seg45LadderFlatY129_eq]
      unfold seg45LadderFlatY129
      linear_combination r4644
    have ha3 : 3021 * rho 42871 * rho 42872 = rho 42873 := by
      linear_combination r4645
    have ha4 : rho 42874 * (1 + rho 42873) = rho 42871 + rho 42872 := by
      linear_combination r4646
    have ha5 : rho 42875 * (1 - rho 42873) = rho 42870 - rho 42871 - rho 42872 := by
      linear_combination r4647
    have haddx :
        rho 42874 * (1 + 3021 * (rho 42869 * seg45AccX129 rho) * (rho 42868 * seg45AccY129 rho)) =
          rho 42869 * seg45AccX129 rho + rho 42868 * seg45AccY129 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42875 * (1 - 3021 * (rho 42869 * seg45AccX129 rho) * (rho 42868 * seg45AccY129 rho)) =
          (-1) * (rho 42869 * seg45AccX129 rho) - rho 42868 * seg45AccY129 rho +
            (seg45AccY129 rho - seg45AccX129 rho * (-1)) * (rho 42868 + rho 42869) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42875 * (1 - rho 42873) = rho 42870 - rho 42871 - rho 42872 := ha5
        _ = (-1) * rho 42871 - rho 42872 + (seg45AccY129 rho - seg45AccX129 rho * (-1)) * (rho 42868 + rho 42869) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX130 rho = seg45AccX129 rho - Bool.toZMod bit * (seg45AccX129 rho - rho 42874) := by
      have hd : rho 42876 = Bool.toZMod bit * (rho 42874 - seg45AccX129 rho) := by
        rw [← hbit, seg45LadderFlatX129_eq]
        unfold seg45LadderFlatX129
        linear_combination -r4648
      unfold seg45AccX130
      linear_combination hd
    have hsely : seg45AccY130 rho = seg45AccY129 rho - Bool.toZMod bit * (seg45AccY129 rho - rho 42875) := by
      have hd : rho 42877 = Bool.toZMod bit * (rho 42875 - seg45AccY129 rho) := by
        rw [← hbit, seg45LadderFlatY129_eq]
        unfold seg45LadderFlatY129
        linear_combination -r4649
      unfold seg45AccY130
      linear_combination hd
    have hd0 : rho 42868 * rho 42869 = rho 42878 := by linear_combination r4650
    have hd1 : rho 42868 * rho 42868 = rho 42879 := by linear_combination r4651
    have hd2 : rho 42869 * rho 42869 = rho 42880 := by linear_combination r4652
    have hd3 : rho 42881 * (rho 42869 * rho 42869 + rho 42868 * rho 42868 * (-1)) = 2 * (rho 42868 * rho 42869) := by
      rw [hd0, hd1, hd2]
      linear_combination r4653
    have hd4 : rho 42882 * (2 - (rho 42869 * rho 42869 + rho 42868 * rho 42868 * (-1))) = rho 42869 * rho 42869 - rho 42868 * rho 42868 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4654
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX129 rho : Seg45.F), (seg45AccY129 rho : Seg45.F)⟩
      ⟨(rho 42868 : Seg45.F), (rho 42869 : Seg45.F)⟩
      ⟨(rho 42874 : Seg45.F), (rho 42875 : Seg45.F)⟩
      ⟨(seg45AccX130 rho : Seg45.F), (seg45AccY130 rho : Seg45.F)⟩
      ⟨(rho 42881 : Seg45.F), (rho 42882 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung129

theorem seg45_rung130 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41078 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX130 rho : Seg45.F), (seg45AccY130 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42881 : Seg45.F), (rho 42882 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX130 rho : Seg45.F), (seg45AccY130 rho : Seg45.F)⟩
        ⟨(rho 42881 : Seg45.F), (rho 42882 : Seg45.F)⟩
        ⟨(seg45AccX131 rho : Seg45.F), (seg45AccY131 rho : Seg45.F)⟩
        ⟨(rho 42894 : Seg45.F), (rho 42895 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p58, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart58 at p58
  rcases p58 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4655, r4656, r4657, r4658, r4659, r4660, r4661, r4662, r4663, r4664, r4665, r4666, r4667, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow4655 Seg45.relationLc685 Seg45.relationLc685Part0 Seg45.relationLc685Part1 Seg45.relationLc685Part2 Seg45.relationLc685Part3 Seg45.relationLc685Part4 Seg45.relationLc685Part5 Seg45.relationLc685Part6 Seg45.relationLc685Part7 Seg45.relationLc685Part8 at r4655
  unfold Seg45.relationRow4656 Seg45.relationLc686 Seg45.relationLc686Part0 Seg45.relationLc686Part1 Seg45.relationLc686Part2 Seg45.relationLc686Part3 Seg45.relationLc686Part4 at r4656
  unfold Seg45.relationRow4657 Seg45.relationLc687 Seg45.relationLc687Part0 Seg45.relationLc687Part1 Seg45.relationLc687Part2 Seg45.relationLc687Part3 Seg45.relationLc687Part4 at r4657
  unfold Seg45.relationRow4658 at r4658
  unfold Seg45.relationRow4659 at r4659
  unfold Seg45.relationRow4660 at r4660
  unfold Seg45.relationRow4661 Seg45.relationLc688 Seg45.relationLc688Part0 Seg45.relationLc688Part1 Seg45.relationLc688Part2 Seg45.relationLc688Part3 Seg45.relationLc688Part4 at r4661
  unfold Seg45.relationRow4662 Seg45.relationLc689 Seg45.relationLc689Part0 Seg45.relationLc689Part1 Seg45.relationLc689Part2 Seg45.relationLc689Part3 Seg45.relationLc689Part4 at r4662
  unfold Seg45.relationRow4663 at r4663
  unfold Seg45.relationRow4664 at r4664
  unfold Seg45.relationRow4665 at r4665
  unfold Seg45.relationRow4666 at r4666
  unfold Seg45.relationRow4667 at r4667
  have hrung130 (bit : Bool) (hbit : rho 41078 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX130 rho : Seg45.F), (seg45AccY130 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42881 : Seg45.F), (rho 42882 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX130 rho : Seg45.F), (seg45AccY130 rho : Seg45.F)⟩
        ⟨(rho 42881 : Seg45.F), (rho 42882 : Seg45.F)⟩
        ⟨(seg45AccX131 rho : Seg45.F), (seg45AccY131 rho : Seg45.F)⟩
        ⟨(rho 42894 : Seg45.F), (rho 42895 : Seg45.F)⟩ := by
    have ha0 : (rho 42881 + rho 42882) * (seg45AccX130 rho + seg45AccY130 rho) = rho 42883 := by
      rw [seg45LadderFlatX130_eq, seg45LadderFlatY130_eq]
      unfold seg45LadderFlatX130 seg45LadderFlatY130
      linear_combination r4655
    have ha1 : rho 42882 * seg45AccX130 rho = rho 42884 := by
      rw [seg45LadderFlatX130_eq]
      unfold seg45LadderFlatX130
      linear_combination r4656
    have ha2 : rho 42881 * seg45AccY130 rho = rho 42885 := by
      rw [seg45LadderFlatY130_eq]
      unfold seg45LadderFlatY130
      linear_combination r4657
    have ha3 : 3021 * rho 42884 * rho 42885 = rho 42886 := by
      linear_combination r4658
    have ha4 : rho 42887 * (1 + rho 42886) = rho 42884 + rho 42885 := by
      linear_combination r4659
    have ha5 : rho 42888 * (1 - rho 42886) = rho 42883 - rho 42884 - rho 42885 := by
      linear_combination r4660
    have haddx :
        rho 42887 * (1 + 3021 * (rho 42882 * seg45AccX130 rho) * (rho 42881 * seg45AccY130 rho)) =
          rho 42882 * seg45AccX130 rho + rho 42881 * seg45AccY130 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42888 * (1 - 3021 * (rho 42882 * seg45AccX130 rho) * (rho 42881 * seg45AccY130 rho)) =
          (-1) * (rho 42882 * seg45AccX130 rho) - rho 42881 * seg45AccY130 rho +
            (seg45AccY130 rho - seg45AccX130 rho * (-1)) * (rho 42881 + rho 42882) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42888 * (1 - rho 42886) = rho 42883 - rho 42884 - rho 42885 := ha5
        _ = (-1) * rho 42884 - rho 42885 + (seg45AccY130 rho - seg45AccX130 rho * (-1)) * (rho 42881 + rho 42882) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX131 rho = seg45AccX130 rho - Bool.toZMod bit * (seg45AccX130 rho - rho 42887) := by
      have hd : rho 42889 = Bool.toZMod bit * (rho 42887 - seg45AccX130 rho) := by
        rw [← hbit, seg45LadderFlatX130_eq]
        unfold seg45LadderFlatX130
        linear_combination -r4661
      unfold seg45AccX131
      linear_combination hd
    have hsely : seg45AccY131 rho = seg45AccY130 rho - Bool.toZMod bit * (seg45AccY130 rho - rho 42888) := by
      have hd : rho 42890 = Bool.toZMod bit * (rho 42888 - seg45AccY130 rho) := by
        rw [← hbit, seg45LadderFlatY130_eq]
        unfold seg45LadderFlatY130
        linear_combination -r4662
      unfold seg45AccY131
      linear_combination hd
    have hd0 : rho 42881 * rho 42882 = rho 42891 := by linear_combination r4663
    have hd1 : rho 42881 * rho 42881 = rho 42892 := by linear_combination r4664
    have hd2 : rho 42882 * rho 42882 = rho 42893 := by linear_combination r4665
    have hd3 : rho 42894 * (rho 42882 * rho 42882 + rho 42881 * rho 42881 * (-1)) = 2 * (rho 42881 * rho 42882) := by
      rw [hd0, hd1, hd2]
      linear_combination r4666
    have hd4 : rho 42895 * (2 - (rho 42882 * rho 42882 + rho 42881 * rho 42881 * (-1))) = rho 42882 * rho 42882 - rho 42881 * rho 42881 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4667
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX130 rho : Seg45.F), (seg45AccY130 rho : Seg45.F)⟩
      ⟨(rho 42881 : Seg45.F), (rho 42882 : Seg45.F)⟩
      ⟨(rho 42887 : Seg45.F), (rho 42888 : Seg45.F)⟩
      ⟨(seg45AccX131 rho : Seg45.F), (seg45AccY131 rho : Seg45.F)⟩
      ⟨(rho 42894 : Seg45.F), (rho 42895 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung130

theorem seg45_rung131 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41079 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX131 rho : Seg45.F), (seg45AccY131 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42894 : Seg45.F), (rho 42895 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX131 rho : Seg45.F), (seg45AccY131 rho : Seg45.F)⟩
        ⟨(rho 42894 : Seg45.F), (rho 42895 : Seg45.F)⟩
        ⟨(seg45AccX132 rho : Seg45.F), (seg45AccY132 rho : Seg45.F)⟩
        ⟨(rho 42907 : Seg45.F), (rho 42908 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p58, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart58 at p58
  rcases p58 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4668, r4669, r4670, r4671, r4672, r4673, r4674, r4675, r4676, r4677, r4678, r4679, r4680, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow4668 Seg45.relationLc690 Seg45.relationLc690Part0 Seg45.relationLc690Part1 Seg45.relationLc690Part2 Seg45.relationLc690Part3 Seg45.relationLc690Part4 Seg45.relationLc690Part5 Seg45.relationLc690Part6 Seg45.relationLc690Part7 Seg45.relationLc690Part8 at r4668
  unfold Seg45.relationRow4669 Seg45.relationLc691 Seg45.relationLc691Part0 Seg45.relationLc691Part1 Seg45.relationLc691Part2 Seg45.relationLc691Part3 Seg45.relationLc691Part4 at r4669
  unfold Seg45.relationRow4670 Seg45.relationLc692 Seg45.relationLc692Part0 Seg45.relationLc692Part1 Seg45.relationLc692Part2 Seg45.relationLc692Part3 Seg45.relationLc692Part4 at r4670
  unfold Seg45.relationRow4671 at r4671
  unfold Seg45.relationRow4672 at r4672
  unfold Seg45.relationRow4673 at r4673
  unfold Seg45.relationRow4674 Seg45.relationLc693 Seg45.relationLc693Part0 Seg45.relationLc693Part1 Seg45.relationLc693Part2 Seg45.relationLc693Part3 Seg45.relationLc693Part4 at r4674
  unfold Seg45.relationRow4675 Seg45.relationLc694 Seg45.relationLc694Part0 Seg45.relationLc694Part1 Seg45.relationLc694Part2 Seg45.relationLc694Part3 Seg45.relationLc694Part4 at r4675
  unfold Seg45.relationRow4676 at r4676
  unfold Seg45.relationRow4677 at r4677
  unfold Seg45.relationRow4678 at r4678
  unfold Seg45.relationRow4679 at r4679
  unfold Seg45.relationRow4680 at r4680
  have hrung131 (bit : Bool) (hbit : rho 41079 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX131 rho : Seg45.F), (seg45AccY131 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42894 : Seg45.F), (rho 42895 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX131 rho : Seg45.F), (seg45AccY131 rho : Seg45.F)⟩
        ⟨(rho 42894 : Seg45.F), (rho 42895 : Seg45.F)⟩
        ⟨(seg45AccX132 rho : Seg45.F), (seg45AccY132 rho : Seg45.F)⟩
        ⟨(rho 42907 : Seg45.F), (rho 42908 : Seg45.F)⟩ := by
    have ha0 : (rho 42894 + rho 42895) * (seg45AccX131 rho + seg45AccY131 rho) = rho 42896 := by
      rw [seg45LadderFlatX131_eq, seg45LadderFlatY131_eq]
      unfold seg45LadderFlatX131 seg45LadderFlatY131
      linear_combination r4668
    have ha1 : rho 42895 * seg45AccX131 rho = rho 42897 := by
      rw [seg45LadderFlatX131_eq]
      unfold seg45LadderFlatX131
      linear_combination r4669
    have ha2 : rho 42894 * seg45AccY131 rho = rho 42898 := by
      rw [seg45LadderFlatY131_eq]
      unfold seg45LadderFlatY131
      linear_combination r4670
    have ha3 : 3021 * rho 42897 * rho 42898 = rho 42899 := by
      linear_combination r4671
    have ha4 : rho 42900 * (1 + rho 42899) = rho 42897 + rho 42898 := by
      linear_combination r4672
    have ha5 : rho 42901 * (1 - rho 42899) = rho 42896 - rho 42897 - rho 42898 := by
      linear_combination r4673
    have haddx :
        rho 42900 * (1 + 3021 * (rho 42895 * seg45AccX131 rho) * (rho 42894 * seg45AccY131 rho)) =
          rho 42895 * seg45AccX131 rho + rho 42894 * seg45AccY131 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42901 * (1 - 3021 * (rho 42895 * seg45AccX131 rho) * (rho 42894 * seg45AccY131 rho)) =
          (-1) * (rho 42895 * seg45AccX131 rho) - rho 42894 * seg45AccY131 rho +
            (seg45AccY131 rho - seg45AccX131 rho * (-1)) * (rho 42894 + rho 42895) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42901 * (1 - rho 42899) = rho 42896 - rho 42897 - rho 42898 := ha5
        _ = (-1) * rho 42897 - rho 42898 + (seg45AccY131 rho - seg45AccX131 rho * (-1)) * (rho 42894 + rho 42895) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX132 rho = seg45AccX131 rho - Bool.toZMod bit * (seg45AccX131 rho - rho 42900) := by
      have hd : rho 42902 = Bool.toZMod bit * (rho 42900 - seg45AccX131 rho) := by
        rw [← hbit, seg45LadderFlatX131_eq]
        unfold seg45LadderFlatX131
        linear_combination -r4674
      unfold seg45AccX132
      linear_combination hd
    have hsely : seg45AccY132 rho = seg45AccY131 rho - Bool.toZMod bit * (seg45AccY131 rho - rho 42901) := by
      have hd : rho 42903 = Bool.toZMod bit * (rho 42901 - seg45AccY131 rho) := by
        rw [← hbit, seg45LadderFlatY131_eq]
        unfold seg45LadderFlatY131
        linear_combination -r4675
      unfold seg45AccY132
      linear_combination hd
    have hd0 : rho 42894 * rho 42895 = rho 42904 := by linear_combination r4676
    have hd1 : rho 42894 * rho 42894 = rho 42905 := by linear_combination r4677
    have hd2 : rho 42895 * rho 42895 = rho 42906 := by linear_combination r4678
    have hd3 : rho 42907 * (rho 42895 * rho 42895 + rho 42894 * rho 42894 * (-1)) = 2 * (rho 42894 * rho 42895) := by
      rw [hd0, hd1, hd2]
      linear_combination r4679
    have hd4 : rho 42908 * (2 - (rho 42895 * rho 42895 + rho 42894 * rho 42894 * (-1))) = rho 42895 * rho 42895 - rho 42894 * rho 42894 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4680
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX131 rho : Seg45.F), (seg45AccY131 rho : Seg45.F)⟩
      ⟨(rho 42894 : Seg45.F), (rho 42895 : Seg45.F)⟩
      ⟨(rho 42900 : Seg45.F), (rho 42901 : Seg45.F)⟩
      ⟨(seg45AccX132 rho : Seg45.F), (seg45AccY132 rho : Seg45.F)⟩
      ⟨(rho 42907 : Seg45.F), (rho 42908 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung131

theorem seg45_rung132 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41080 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX132 rho : Seg45.F), (seg45AccY132 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42907 : Seg45.F), (rho 42908 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX132 rho : Seg45.F), (seg45AccY132 rho : Seg45.F)⟩
        ⟨(rho 42907 : Seg45.F), (rho 42908 : Seg45.F)⟩
        ⟨(seg45AccX133 rho : Seg45.F), (seg45AccY133 rho : Seg45.F)⟩
        ⟨(rho 42920 : Seg45.F), (rho 42921 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p58, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart58 at p58
  rcases p58 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4681, r4682, r4683, r4684, r4685, r4686, r4687, r4688, r4689, r4690, r4691, r4692, r4693, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow4681 Seg45.relationLc695 Seg45.relationLc695Part0 Seg45.relationLc695Part1 Seg45.relationLc695Part2 Seg45.relationLc695Part3 Seg45.relationLc695Part4 Seg45.relationLc695Part5 Seg45.relationLc695Part6 Seg45.relationLc695Part7 Seg45.relationLc695Part8 at r4681
  unfold Seg45.relationRow4682 Seg45.relationLc696 Seg45.relationLc696Part0 Seg45.relationLc696Part1 Seg45.relationLc696Part2 Seg45.relationLc696Part3 Seg45.relationLc696Part4 at r4682
  unfold Seg45.relationRow4683 Seg45.relationLc697 Seg45.relationLc697Part0 Seg45.relationLc697Part1 Seg45.relationLc697Part2 Seg45.relationLc697Part3 Seg45.relationLc697Part4 at r4683
  unfold Seg45.relationRow4684 at r4684
  unfold Seg45.relationRow4685 at r4685
  unfold Seg45.relationRow4686 at r4686
  unfold Seg45.relationRow4687 Seg45.relationLc698 Seg45.relationLc698Part0 Seg45.relationLc698Part1 Seg45.relationLc698Part2 Seg45.relationLc698Part3 Seg45.relationLc698Part4 at r4687
  unfold Seg45.relationRow4688 Seg45.relationLc699 Seg45.relationLc699Part0 Seg45.relationLc699Part1 Seg45.relationLc699Part2 Seg45.relationLc699Part3 Seg45.relationLc699Part4 at r4688
  unfold Seg45.relationRow4689 at r4689
  unfold Seg45.relationRow4690 at r4690
  unfold Seg45.relationRow4691 at r4691
  unfold Seg45.relationRow4692 at r4692
  unfold Seg45.relationRow4693 at r4693
  have hrung132 (bit : Bool) (hbit : rho 41080 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX132 rho : Seg45.F), (seg45AccY132 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42907 : Seg45.F), (rho 42908 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX132 rho : Seg45.F), (seg45AccY132 rho : Seg45.F)⟩
        ⟨(rho 42907 : Seg45.F), (rho 42908 : Seg45.F)⟩
        ⟨(seg45AccX133 rho : Seg45.F), (seg45AccY133 rho : Seg45.F)⟩
        ⟨(rho 42920 : Seg45.F), (rho 42921 : Seg45.F)⟩ := by
    have ha0 : (rho 42907 + rho 42908) * (seg45AccX132 rho + seg45AccY132 rho) = rho 42909 := by
      rw [seg45LadderFlatX132_eq, seg45LadderFlatY132_eq]
      unfold seg45LadderFlatX132 seg45LadderFlatY132
      linear_combination r4681
    have ha1 : rho 42908 * seg45AccX132 rho = rho 42910 := by
      rw [seg45LadderFlatX132_eq]
      unfold seg45LadderFlatX132
      linear_combination r4682
    have ha2 : rho 42907 * seg45AccY132 rho = rho 42911 := by
      rw [seg45LadderFlatY132_eq]
      unfold seg45LadderFlatY132
      linear_combination r4683
    have ha3 : 3021 * rho 42910 * rho 42911 = rho 42912 := by
      linear_combination r4684
    have ha4 : rho 42913 * (1 + rho 42912) = rho 42910 + rho 42911 := by
      linear_combination r4685
    have ha5 : rho 42914 * (1 - rho 42912) = rho 42909 - rho 42910 - rho 42911 := by
      linear_combination r4686
    have haddx :
        rho 42913 * (1 + 3021 * (rho 42908 * seg45AccX132 rho) * (rho 42907 * seg45AccY132 rho)) =
          rho 42908 * seg45AccX132 rho + rho 42907 * seg45AccY132 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42914 * (1 - 3021 * (rho 42908 * seg45AccX132 rho) * (rho 42907 * seg45AccY132 rho)) =
          (-1) * (rho 42908 * seg45AccX132 rho) - rho 42907 * seg45AccY132 rho +
            (seg45AccY132 rho - seg45AccX132 rho * (-1)) * (rho 42907 + rho 42908) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42914 * (1 - rho 42912) = rho 42909 - rho 42910 - rho 42911 := ha5
        _ = (-1) * rho 42910 - rho 42911 + (seg45AccY132 rho - seg45AccX132 rho * (-1)) * (rho 42907 + rho 42908) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX133 rho = seg45AccX132 rho - Bool.toZMod bit * (seg45AccX132 rho - rho 42913) := by
      have hd : rho 42915 = Bool.toZMod bit * (rho 42913 - seg45AccX132 rho) := by
        rw [← hbit, seg45LadderFlatX132_eq]
        unfold seg45LadderFlatX132
        linear_combination -r4687
      unfold seg45AccX133
      linear_combination hd
    have hsely : seg45AccY133 rho = seg45AccY132 rho - Bool.toZMod bit * (seg45AccY132 rho - rho 42914) := by
      have hd : rho 42916 = Bool.toZMod bit * (rho 42914 - seg45AccY132 rho) := by
        rw [← hbit, seg45LadderFlatY132_eq]
        unfold seg45LadderFlatY132
        linear_combination -r4688
      unfold seg45AccY133
      linear_combination hd
    have hd0 : rho 42907 * rho 42908 = rho 42917 := by linear_combination r4689
    have hd1 : rho 42907 * rho 42907 = rho 42918 := by linear_combination r4690
    have hd2 : rho 42908 * rho 42908 = rho 42919 := by linear_combination r4691
    have hd3 : rho 42920 * (rho 42908 * rho 42908 + rho 42907 * rho 42907 * (-1)) = 2 * (rho 42907 * rho 42908) := by
      rw [hd0, hd1, hd2]
      linear_combination r4692
    have hd4 : rho 42921 * (2 - (rho 42908 * rho 42908 + rho 42907 * rho 42907 * (-1))) = rho 42908 * rho 42908 - rho 42907 * rho 42907 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4693
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX132 rho : Seg45.F), (seg45AccY132 rho : Seg45.F)⟩
      ⟨(rho 42907 : Seg45.F), (rho 42908 : Seg45.F)⟩
      ⟨(rho 42913 : Seg45.F), (rho 42914 : Seg45.F)⟩
      ⟨(seg45AccX133 rho : Seg45.F), (seg45AccY133 rho : Seg45.F)⟩
      ⟨(rho 42920 : Seg45.F), (rho 42921 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung132

theorem seg45_rung133 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41081 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX133 rho : Seg45.F), (seg45AccY133 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42920 : Seg45.F), (rho 42921 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX133 rho : Seg45.F), (seg45AccY133 rho : Seg45.F)⟩
        ⟨(rho 42920 : Seg45.F), (rho 42921 : Seg45.F)⟩
        ⟨(seg45AccX134 rho : Seg45.F), (seg45AccY134 rho : Seg45.F)⟩
        ⟨(rho 42933 : Seg45.F), (rho 42934 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p58, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart58 at p58
  rcases p58 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4694, r4695, r4696, r4697, r4698, r4699, r4700, r4701, r4702, r4703, r4704, r4705, r4706, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow4694 Seg45.relationLc700 Seg45.relationLc700Part0 Seg45.relationLc700Part1 Seg45.relationLc700Part2 Seg45.relationLc700Part3 Seg45.relationLc700Part4 Seg45.relationLc700Part5 Seg45.relationLc700Part6 Seg45.relationLc700Part7 Seg45.relationLc700Part8 at r4694
  unfold Seg45.relationRow4695 Seg45.relationLc701 Seg45.relationLc701Part0 Seg45.relationLc701Part1 Seg45.relationLc701Part2 Seg45.relationLc701Part3 Seg45.relationLc701Part4 at r4695
  unfold Seg45.relationRow4696 Seg45.relationLc702 Seg45.relationLc702Part0 Seg45.relationLc702Part1 Seg45.relationLc702Part2 Seg45.relationLc702Part3 Seg45.relationLc702Part4 at r4696
  unfold Seg45.relationRow4697 at r4697
  unfold Seg45.relationRow4698 at r4698
  unfold Seg45.relationRow4699 at r4699
  unfold Seg45.relationRow4700 Seg45.relationLc703 Seg45.relationLc703Part0 Seg45.relationLc703Part1 Seg45.relationLc703Part2 Seg45.relationLc703Part3 Seg45.relationLc703Part4 at r4700
  unfold Seg45.relationRow4701 Seg45.relationLc704 Seg45.relationLc704Part0 Seg45.relationLc704Part1 Seg45.relationLc704Part2 Seg45.relationLc704Part3 Seg45.relationLc704Part4 at r4701
  unfold Seg45.relationRow4702 at r4702
  unfold Seg45.relationRow4703 at r4703
  unfold Seg45.relationRow4704 at r4704
  unfold Seg45.relationRow4705 at r4705
  unfold Seg45.relationRow4706 at r4706
  have hrung133 (bit : Bool) (hbit : rho 41081 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX133 rho : Seg45.F), (seg45AccY133 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42920 : Seg45.F), (rho 42921 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX133 rho : Seg45.F), (seg45AccY133 rho : Seg45.F)⟩
        ⟨(rho 42920 : Seg45.F), (rho 42921 : Seg45.F)⟩
        ⟨(seg45AccX134 rho : Seg45.F), (seg45AccY134 rho : Seg45.F)⟩
        ⟨(rho 42933 : Seg45.F), (rho 42934 : Seg45.F)⟩ := by
    have ha0 : (rho 42920 + rho 42921) * (seg45AccX133 rho + seg45AccY133 rho) = rho 42922 := by
      rw [seg45LadderFlatX133_eq, seg45LadderFlatY133_eq]
      unfold seg45LadderFlatX133 seg45LadderFlatY133
      linear_combination r4694
    have ha1 : rho 42921 * seg45AccX133 rho = rho 42923 := by
      rw [seg45LadderFlatX133_eq]
      unfold seg45LadderFlatX133
      linear_combination r4695
    have ha2 : rho 42920 * seg45AccY133 rho = rho 42924 := by
      rw [seg45LadderFlatY133_eq]
      unfold seg45LadderFlatY133
      linear_combination r4696
    have ha3 : 3021 * rho 42923 * rho 42924 = rho 42925 := by
      linear_combination r4697
    have ha4 : rho 42926 * (1 + rho 42925) = rho 42923 + rho 42924 := by
      linear_combination r4698
    have ha5 : rho 42927 * (1 - rho 42925) = rho 42922 - rho 42923 - rho 42924 := by
      linear_combination r4699
    have haddx :
        rho 42926 * (1 + 3021 * (rho 42921 * seg45AccX133 rho) * (rho 42920 * seg45AccY133 rho)) =
          rho 42921 * seg45AccX133 rho + rho 42920 * seg45AccY133 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42927 * (1 - 3021 * (rho 42921 * seg45AccX133 rho) * (rho 42920 * seg45AccY133 rho)) =
          (-1) * (rho 42921 * seg45AccX133 rho) - rho 42920 * seg45AccY133 rho +
            (seg45AccY133 rho - seg45AccX133 rho * (-1)) * (rho 42920 + rho 42921) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42927 * (1 - rho 42925) = rho 42922 - rho 42923 - rho 42924 := ha5
        _ = (-1) * rho 42923 - rho 42924 + (seg45AccY133 rho - seg45AccX133 rho * (-1)) * (rho 42920 + rho 42921) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX134 rho = seg45AccX133 rho - Bool.toZMod bit * (seg45AccX133 rho - rho 42926) := by
      have hd : rho 42928 = Bool.toZMod bit * (rho 42926 - seg45AccX133 rho) := by
        rw [← hbit, seg45LadderFlatX133_eq]
        unfold seg45LadderFlatX133
        linear_combination -r4700
      unfold seg45AccX134
      linear_combination hd
    have hsely : seg45AccY134 rho = seg45AccY133 rho - Bool.toZMod bit * (seg45AccY133 rho - rho 42927) := by
      have hd : rho 42929 = Bool.toZMod bit * (rho 42927 - seg45AccY133 rho) := by
        rw [← hbit, seg45LadderFlatY133_eq]
        unfold seg45LadderFlatY133
        linear_combination -r4701
      unfold seg45AccY134
      linear_combination hd
    have hd0 : rho 42920 * rho 42921 = rho 42930 := by linear_combination r4702
    have hd1 : rho 42920 * rho 42920 = rho 42931 := by linear_combination r4703
    have hd2 : rho 42921 * rho 42921 = rho 42932 := by linear_combination r4704
    have hd3 : rho 42933 * (rho 42921 * rho 42921 + rho 42920 * rho 42920 * (-1)) = 2 * (rho 42920 * rho 42921) := by
      rw [hd0, hd1, hd2]
      linear_combination r4705
    have hd4 : rho 42934 * (2 - (rho 42921 * rho 42921 + rho 42920 * rho 42920 * (-1))) = rho 42921 * rho 42921 - rho 42920 * rho 42920 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4706
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX133 rho : Seg45.F), (seg45AccY133 rho : Seg45.F)⟩
      ⟨(rho 42920 : Seg45.F), (rho 42921 : Seg45.F)⟩
      ⟨(rho 42926 : Seg45.F), (rho 42927 : Seg45.F)⟩
      ⟨(seg45AccX134 rho : Seg45.F), (seg45AccY134 rho : Seg45.F)⟩
      ⟨(rho 42933 : Seg45.F), (rho 42934 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung133

theorem seg45_rung134 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41082 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX134 rho : Seg45.F), (seg45AccY134 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42933 : Seg45.F), (rho 42934 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX134 rho : Seg45.F), (seg45AccY134 rho : Seg45.F)⟩
        ⟨(rho 42933 : Seg45.F), (rho 42934 : Seg45.F)⟩
        ⟨(seg45AccX135 rho : Seg45.F), (seg45AccY135 rho : Seg45.F)⟩
        ⟨(rho 42946 : Seg45.F), (rho 42947 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p58, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart58 at p58
  rcases p58 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4707, r4708, r4709, r4710, r4711, r4712, r4713, r4714, r4715, r4716, r4717, r4718, r4719⟩
  unfold Seg45.relationRow4707 Seg45.relationLc705 Seg45.relationLc705Part0 Seg45.relationLc705Part1 Seg45.relationLc705Part2 Seg45.relationLc705Part3 Seg45.relationLc705Part4 Seg45.relationLc705Part5 Seg45.relationLc705Part6 Seg45.relationLc705Part7 Seg45.relationLc705Part8 at r4707
  unfold Seg45.relationRow4708 Seg45.relationLc706 Seg45.relationLc706Part0 Seg45.relationLc706Part1 Seg45.relationLc706Part2 Seg45.relationLc706Part3 Seg45.relationLc706Part4 at r4708
  unfold Seg45.relationRow4709 Seg45.relationLc707 Seg45.relationLc707Part0 Seg45.relationLc707Part1 Seg45.relationLc707Part2 Seg45.relationLc707Part3 Seg45.relationLc707Part4 at r4709
  unfold Seg45.relationRow4710 at r4710
  unfold Seg45.relationRow4711 at r4711
  unfold Seg45.relationRow4712 at r4712
  unfold Seg45.relationRow4713 Seg45.relationLc708 Seg45.relationLc708Part0 Seg45.relationLc708Part1 Seg45.relationLc708Part2 Seg45.relationLc708Part3 Seg45.relationLc708Part4 at r4713
  unfold Seg45.relationRow4714 Seg45.relationLc709 Seg45.relationLc709Part0 Seg45.relationLc709Part1 Seg45.relationLc709Part2 Seg45.relationLc709Part3 Seg45.relationLc709Part4 at r4714
  unfold Seg45.relationRow4715 at r4715
  unfold Seg45.relationRow4716 at r4716
  unfold Seg45.relationRow4717 at r4717
  unfold Seg45.relationRow4718 at r4718
  unfold Seg45.relationRow4719 at r4719
  have hrung134 (bit : Bool) (hbit : rho 41082 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX134 rho : Seg45.F), (seg45AccY134 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42933 : Seg45.F), (rho 42934 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX134 rho : Seg45.F), (seg45AccY134 rho : Seg45.F)⟩
        ⟨(rho 42933 : Seg45.F), (rho 42934 : Seg45.F)⟩
        ⟨(seg45AccX135 rho : Seg45.F), (seg45AccY135 rho : Seg45.F)⟩
        ⟨(rho 42946 : Seg45.F), (rho 42947 : Seg45.F)⟩ := by
    have ha0 : (rho 42933 + rho 42934) * (seg45AccX134 rho + seg45AccY134 rho) = rho 42935 := by
      rw [seg45LadderFlatX134_eq, seg45LadderFlatY134_eq]
      unfold seg45LadderFlatX134 seg45LadderFlatY134
      linear_combination r4707
    have ha1 : rho 42934 * seg45AccX134 rho = rho 42936 := by
      rw [seg45LadderFlatX134_eq]
      unfold seg45LadderFlatX134
      linear_combination r4708
    have ha2 : rho 42933 * seg45AccY134 rho = rho 42937 := by
      rw [seg45LadderFlatY134_eq]
      unfold seg45LadderFlatY134
      linear_combination r4709
    have ha3 : 3021 * rho 42936 * rho 42937 = rho 42938 := by
      linear_combination r4710
    have ha4 : rho 42939 * (1 + rho 42938) = rho 42936 + rho 42937 := by
      linear_combination r4711
    have ha5 : rho 42940 * (1 - rho 42938) = rho 42935 - rho 42936 - rho 42937 := by
      linear_combination r4712
    have haddx :
        rho 42939 * (1 + 3021 * (rho 42934 * seg45AccX134 rho) * (rho 42933 * seg45AccY134 rho)) =
          rho 42934 * seg45AccX134 rho + rho 42933 * seg45AccY134 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42940 * (1 - 3021 * (rho 42934 * seg45AccX134 rho) * (rho 42933 * seg45AccY134 rho)) =
          (-1) * (rho 42934 * seg45AccX134 rho) - rho 42933 * seg45AccY134 rho +
            (seg45AccY134 rho - seg45AccX134 rho * (-1)) * (rho 42933 + rho 42934) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42940 * (1 - rho 42938) = rho 42935 - rho 42936 - rho 42937 := ha5
        _ = (-1) * rho 42936 - rho 42937 + (seg45AccY134 rho - seg45AccX134 rho * (-1)) * (rho 42933 + rho 42934) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX135 rho = seg45AccX134 rho - Bool.toZMod bit * (seg45AccX134 rho - rho 42939) := by
      have hd : rho 42941 = Bool.toZMod bit * (rho 42939 - seg45AccX134 rho) := by
        rw [← hbit, seg45LadderFlatX134_eq]
        unfold seg45LadderFlatX134
        linear_combination -r4713
      unfold seg45AccX135
      linear_combination hd
    have hsely : seg45AccY135 rho = seg45AccY134 rho - Bool.toZMod bit * (seg45AccY134 rho - rho 42940) := by
      have hd : rho 42942 = Bool.toZMod bit * (rho 42940 - seg45AccY134 rho) := by
        rw [← hbit, seg45LadderFlatY134_eq]
        unfold seg45LadderFlatY134
        linear_combination -r4714
      unfold seg45AccY135
      linear_combination hd
    have hd0 : rho 42933 * rho 42934 = rho 42943 := by linear_combination r4715
    have hd1 : rho 42933 * rho 42933 = rho 42944 := by linear_combination r4716
    have hd2 : rho 42934 * rho 42934 = rho 42945 := by linear_combination r4717
    have hd3 : rho 42946 * (rho 42934 * rho 42934 + rho 42933 * rho 42933 * (-1)) = 2 * (rho 42933 * rho 42934) := by
      rw [hd0, hd1, hd2]
      linear_combination r4718
    have hd4 : rho 42947 * (2 - (rho 42934 * rho 42934 + rho 42933 * rho 42933 * (-1))) = rho 42934 * rho 42934 - rho 42933 * rho 42933 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4719
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX134 rho : Seg45.F), (seg45AccY134 rho : Seg45.F)⟩
      ⟨(rho 42933 : Seg45.F), (rho 42934 : Seg45.F)⟩
      ⟨(rho 42939 : Seg45.F), (rho 42940 : Seg45.F)⟩
      ⟨(seg45AccX135 rho : Seg45.F), (seg45AccY135 rho : Seg45.F)⟩
      ⟨(rho 42946 : Seg45.F), (rho 42947 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung134

theorem seg45_rung135 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41083 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX135 rho : Seg45.F), (seg45AccY135 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42946 : Seg45.F), (rho 42947 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX135 rho : Seg45.F), (seg45AccY135 rho : Seg45.F)⟩
        ⟨(rho 42946 : Seg45.F), (rho 42947 : Seg45.F)⟩
        ⟨(seg45AccX136 rho : Seg45.F), (seg45AccY136 rho : Seg45.F)⟩
        ⟨(rho 42959 : Seg45.F), (rho 42960 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p59,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart59 at p59
  rcases p59 with ⟨r4720, r4721, r4722, r4723, r4724, r4725, r4726, r4727, r4728, r4729, r4730, r4731, r4732, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow4720 Seg45.relationLc710 Seg45.relationLc710Part0 Seg45.relationLc710Part1 Seg45.relationLc710Part2 Seg45.relationLc710Part3 Seg45.relationLc710Part4 Seg45.relationLc710Part5 Seg45.relationLc710Part6 Seg45.relationLc710Part7 Seg45.relationLc710Part8 at r4720
  unfold Seg45.relationRow4721 Seg45.relationLc711 Seg45.relationLc711Part0 Seg45.relationLc711Part1 Seg45.relationLc711Part2 Seg45.relationLc711Part3 Seg45.relationLc711Part4 at r4721
  unfold Seg45.relationRow4722 Seg45.relationLc712 Seg45.relationLc712Part0 Seg45.relationLc712Part1 Seg45.relationLc712Part2 Seg45.relationLc712Part3 Seg45.relationLc712Part4 at r4722
  unfold Seg45.relationRow4723 at r4723
  unfold Seg45.relationRow4724 at r4724
  unfold Seg45.relationRow4725 at r4725
  unfold Seg45.relationRow4726 Seg45.relationLc713 Seg45.relationLc713Part0 Seg45.relationLc713Part1 Seg45.relationLc713Part2 Seg45.relationLc713Part3 Seg45.relationLc713Part4 at r4726
  unfold Seg45.relationRow4727 Seg45.relationLc714 Seg45.relationLc714Part0 Seg45.relationLc714Part1 Seg45.relationLc714Part2 Seg45.relationLc714Part3 Seg45.relationLc714Part4 at r4727
  unfold Seg45.relationRow4728 at r4728
  unfold Seg45.relationRow4729 at r4729
  unfold Seg45.relationRow4730 at r4730
  unfold Seg45.relationRow4731 at r4731
  unfold Seg45.relationRow4732 at r4732
  have hrung135 (bit : Bool) (hbit : rho 41083 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX135 rho : Seg45.F), (seg45AccY135 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42946 : Seg45.F), (rho 42947 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX135 rho : Seg45.F), (seg45AccY135 rho : Seg45.F)⟩
        ⟨(rho 42946 : Seg45.F), (rho 42947 : Seg45.F)⟩
        ⟨(seg45AccX136 rho : Seg45.F), (seg45AccY136 rho : Seg45.F)⟩
        ⟨(rho 42959 : Seg45.F), (rho 42960 : Seg45.F)⟩ := by
    have ha0 : (rho 42946 + rho 42947) * (seg45AccX135 rho + seg45AccY135 rho) = rho 42948 := by
      rw [seg45LadderFlatX135_eq, seg45LadderFlatY135_eq]
      unfold seg45LadderFlatX135 seg45LadderFlatY135
      linear_combination r4720
    have ha1 : rho 42947 * seg45AccX135 rho = rho 42949 := by
      rw [seg45LadderFlatX135_eq]
      unfold seg45LadderFlatX135
      linear_combination r4721
    have ha2 : rho 42946 * seg45AccY135 rho = rho 42950 := by
      rw [seg45LadderFlatY135_eq]
      unfold seg45LadderFlatY135
      linear_combination r4722
    have ha3 : 3021 * rho 42949 * rho 42950 = rho 42951 := by
      linear_combination r4723
    have ha4 : rho 42952 * (1 + rho 42951) = rho 42949 + rho 42950 := by
      linear_combination r4724
    have ha5 : rho 42953 * (1 - rho 42951) = rho 42948 - rho 42949 - rho 42950 := by
      linear_combination r4725
    have haddx :
        rho 42952 * (1 + 3021 * (rho 42947 * seg45AccX135 rho) * (rho 42946 * seg45AccY135 rho)) =
          rho 42947 * seg45AccX135 rho + rho 42946 * seg45AccY135 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42953 * (1 - 3021 * (rho 42947 * seg45AccX135 rho) * (rho 42946 * seg45AccY135 rho)) =
          (-1) * (rho 42947 * seg45AccX135 rho) - rho 42946 * seg45AccY135 rho +
            (seg45AccY135 rho - seg45AccX135 rho * (-1)) * (rho 42946 + rho 42947) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42953 * (1 - rho 42951) = rho 42948 - rho 42949 - rho 42950 := ha5
        _ = (-1) * rho 42949 - rho 42950 + (seg45AccY135 rho - seg45AccX135 rho * (-1)) * (rho 42946 + rho 42947) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX136 rho = seg45AccX135 rho - Bool.toZMod bit * (seg45AccX135 rho - rho 42952) := by
      have hd : rho 42954 = Bool.toZMod bit * (rho 42952 - seg45AccX135 rho) := by
        rw [← hbit, seg45LadderFlatX135_eq]
        unfold seg45LadderFlatX135
        linear_combination -r4726
      unfold seg45AccX136
      linear_combination hd
    have hsely : seg45AccY136 rho = seg45AccY135 rho - Bool.toZMod bit * (seg45AccY135 rho - rho 42953) := by
      have hd : rho 42955 = Bool.toZMod bit * (rho 42953 - seg45AccY135 rho) := by
        rw [← hbit, seg45LadderFlatY135_eq]
        unfold seg45LadderFlatY135
        linear_combination -r4727
      unfold seg45AccY136
      linear_combination hd
    have hd0 : rho 42946 * rho 42947 = rho 42956 := by linear_combination r4728
    have hd1 : rho 42946 * rho 42946 = rho 42957 := by linear_combination r4729
    have hd2 : rho 42947 * rho 42947 = rho 42958 := by linear_combination r4730
    have hd3 : rho 42959 * (rho 42947 * rho 42947 + rho 42946 * rho 42946 * (-1)) = 2 * (rho 42946 * rho 42947) := by
      rw [hd0, hd1, hd2]
      linear_combination r4731
    have hd4 : rho 42960 * (2 - (rho 42947 * rho 42947 + rho 42946 * rho 42946 * (-1))) = rho 42947 * rho 42947 - rho 42946 * rho 42946 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4732
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX135 rho : Seg45.F), (seg45AccY135 rho : Seg45.F)⟩
      ⟨(rho 42946 : Seg45.F), (rho 42947 : Seg45.F)⟩
      ⟨(rho 42952 : Seg45.F), (rho 42953 : Seg45.F)⟩
      ⟨(seg45AccX136 rho : Seg45.F), (seg45AccY136 rho : Seg45.F)⟩
      ⟨(rho 42959 : Seg45.F), (rho 42960 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung135

theorem seg45_rung136 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41084 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX136 rho : Seg45.F), (seg45AccY136 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42959 : Seg45.F), (rho 42960 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX136 rho : Seg45.F), (seg45AccY136 rho : Seg45.F)⟩
        ⟨(rho 42959 : Seg45.F), (rho 42960 : Seg45.F)⟩
        ⟨(seg45AccX137 rho : Seg45.F), (seg45AccY137 rho : Seg45.F)⟩
        ⟨(rho 42972 : Seg45.F), (rho 42973 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p59,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart59 at p59
  rcases p59 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, r4733, r4734, r4735, r4736, r4737, r4738, r4739, r4740, r4741, r4742, r4743, r4744, r4745, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow4733 Seg45.relationLc715 Seg45.relationLc715Part0 Seg45.relationLc715Part1 Seg45.relationLc715Part2 Seg45.relationLc715Part3 Seg45.relationLc715Part4 Seg45.relationLc715Part5 Seg45.relationLc715Part6 Seg45.relationLc715Part7 Seg45.relationLc715Part8 at r4733
  unfold Seg45.relationRow4734 Seg45.relationLc716 Seg45.relationLc716Part0 Seg45.relationLc716Part1 Seg45.relationLc716Part2 Seg45.relationLc716Part3 Seg45.relationLc716Part4 at r4734
  unfold Seg45.relationRow4735 Seg45.relationLc717 Seg45.relationLc717Part0 Seg45.relationLc717Part1 Seg45.relationLc717Part2 Seg45.relationLc717Part3 Seg45.relationLc717Part4 at r4735
  unfold Seg45.relationRow4736 at r4736
  unfold Seg45.relationRow4737 at r4737
  unfold Seg45.relationRow4738 at r4738
  unfold Seg45.relationRow4739 Seg45.relationLc718 Seg45.relationLc718Part0 Seg45.relationLc718Part1 Seg45.relationLc718Part2 Seg45.relationLc718Part3 Seg45.relationLc718Part4 at r4739
  unfold Seg45.relationRow4740 Seg45.relationLc719 Seg45.relationLc719Part0 Seg45.relationLc719Part1 Seg45.relationLc719Part2 Seg45.relationLc719Part3 Seg45.relationLc719Part4 at r4740
  unfold Seg45.relationRow4741 at r4741
  unfold Seg45.relationRow4742 at r4742
  unfold Seg45.relationRow4743 at r4743
  unfold Seg45.relationRow4744 at r4744
  unfold Seg45.relationRow4745 at r4745
  have hrung136 (bit : Bool) (hbit : rho 41084 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX136 rho : Seg45.F), (seg45AccY136 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42959 : Seg45.F), (rho 42960 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX136 rho : Seg45.F), (seg45AccY136 rho : Seg45.F)⟩
        ⟨(rho 42959 : Seg45.F), (rho 42960 : Seg45.F)⟩
        ⟨(seg45AccX137 rho : Seg45.F), (seg45AccY137 rho : Seg45.F)⟩
        ⟨(rho 42972 : Seg45.F), (rho 42973 : Seg45.F)⟩ := by
    have ha0 : (rho 42959 + rho 42960) * (seg45AccX136 rho + seg45AccY136 rho) = rho 42961 := by
      rw [seg45LadderFlatX136_eq, seg45LadderFlatY136_eq]
      unfold seg45LadderFlatX136 seg45LadderFlatY136
      linear_combination r4733
    have ha1 : rho 42960 * seg45AccX136 rho = rho 42962 := by
      rw [seg45LadderFlatX136_eq]
      unfold seg45LadderFlatX136
      linear_combination r4734
    have ha2 : rho 42959 * seg45AccY136 rho = rho 42963 := by
      rw [seg45LadderFlatY136_eq]
      unfold seg45LadderFlatY136
      linear_combination r4735
    have ha3 : 3021 * rho 42962 * rho 42963 = rho 42964 := by
      linear_combination r4736
    have ha4 : rho 42965 * (1 + rho 42964) = rho 42962 + rho 42963 := by
      linear_combination r4737
    have ha5 : rho 42966 * (1 - rho 42964) = rho 42961 - rho 42962 - rho 42963 := by
      linear_combination r4738
    have haddx :
        rho 42965 * (1 + 3021 * (rho 42960 * seg45AccX136 rho) * (rho 42959 * seg45AccY136 rho)) =
          rho 42960 * seg45AccX136 rho + rho 42959 * seg45AccY136 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42966 * (1 - 3021 * (rho 42960 * seg45AccX136 rho) * (rho 42959 * seg45AccY136 rho)) =
          (-1) * (rho 42960 * seg45AccX136 rho) - rho 42959 * seg45AccY136 rho +
            (seg45AccY136 rho - seg45AccX136 rho * (-1)) * (rho 42959 + rho 42960) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42966 * (1 - rho 42964) = rho 42961 - rho 42962 - rho 42963 := ha5
        _ = (-1) * rho 42962 - rho 42963 + (seg45AccY136 rho - seg45AccX136 rho * (-1)) * (rho 42959 + rho 42960) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX137 rho = seg45AccX136 rho - Bool.toZMod bit * (seg45AccX136 rho - rho 42965) := by
      have hd : rho 42967 = Bool.toZMod bit * (rho 42965 - seg45AccX136 rho) := by
        rw [← hbit, seg45LadderFlatX136_eq]
        unfold seg45LadderFlatX136
        linear_combination -r4739
      unfold seg45AccX137
      linear_combination hd
    have hsely : seg45AccY137 rho = seg45AccY136 rho - Bool.toZMod bit * (seg45AccY136 rho - rho 42966) := by
      have hd : rho 42968 = Bool.toZMod bit * (rho 42966 - seg45AccY136 rho) := by
        rw [← hbit, seg45LadderFlatY136_eq]
        unfold seg45LadderFlatY136
        linear_combination -r4740
      unfold seg45AccY137
      linear_combination hd
    have hd0 : rho 42959 * rho 42960 = rho 42969 := by linear_combination r4741
    have hd1 : rho 42959 * rho 42959 = rho 42970 := by linear_combination r4742
    have hd2 : rho 42960 * rho 42960 = rho 42971 := by linear_combination r4743
    have hd3 : rho 42972 * (rho 42960 * rho 42960 + rho 42959 * rho 42959 * (-1)) = 2 * (rho 42959 * rho 42960) := by
      rw [hd0, hd1, hd2]
      linear_combination r4744
    have hd4 : rho 42973 * (2 - (rho 42960 * rho 42960 + rho 42959 * rho 42959 * (-1))) = rho 42960 * rho 42960 - rho 42959 * rho 42959 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4745
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX136 rho : Seg45.F), (seg45AccY136 rho : Seg45.F)⟩
      ⟨(rho 42959 : Seg45.F), (rho 42960 : Seg45.F)⟩
      ⟨(rho 42965 : Seg45.F), (rho 42966 : Seg45.F)⟩
      ⟨(seg45AccX137 rho : Seg45.F), (seg45AccY137 rho : Seg45.F)⟩
      ⟨(rho 42972 : Seg45.F), (rho 42973 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung136

theorem seg45_rung137 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41085 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX137 rho : Seg45.F), (seg45AccY137 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42972 : Seg45.F), (rho 42973 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX137 rho : Seg45.F), (seg45AccY137 rho : Seg45.F)⟩
        ⟨(rho 42972 : Seg45.F), (rho 42973 : Seg45.F)⟩
        ⟨(seg45AccX138 rho : Seg45.F), (seg45AccY138 rho : Seg45.F)⟩
        ⟨(rho 42985 : Seg45.F), (rho 42986 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p59,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart59 at p59
  rcases p59 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4746, r4747, r4748, r4749, r4750, r4751, r4752, r4753, r4754, r4755, r4756, r4757, r4758, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow4746 Seg45.relationLc720 Seg45.relationLc720Part0 Seg45.relationLc720Part1 Seg45.relationLc720Part2 Seg45.relationLc720Part3 Seg45.relationLc720Part4 Seg45.relationLc720Part5 Seg45.relationLc720Part6 Seg45.relationLc720Part7 Seg45.relationLc720Part8 at r4746
  unfold Seg45.relationRow4747 Seg45.relationLc721 Seg45.relationLc721Part0 Seg45.relationLc721Part1 Seg45.relationLc721Part2 Seg45.relationLc721Part3 Seg45.relationLc721Part4 at r4747
  unfold Seg45.relationRow4748 Seg45.relationLc722 Seg45.relationLc722Part0 Seg45.relationLc722Part1 Seg45.relationLc722Part2 Seg45.relationLc722Part3 Seg45.relationLc722Part4 at r4748
  unfold Seg45.relationRow4749 at r4749
  unfold Seg45.relationRow4750 at r4750
  unfold Seg45.relationRow4751 at r4751
  unfold Seg45.relationRow4752 Seg45.relationLc723 Seg45.relationLc723Part0 Seg45.relationLc723Part1 Seg45.relationLc723Part2 Seg45.relationLc723Part3 Seg45.relationLc723Part4 at r4752
  unfold Seg45.relationRow4753 Seg45.relationLc724 Seg45.relationLc724Part0 Seg45.relationLc724Part1 Seg45.relationLc724Part2 Seg45.relationLc724Part3 Seg45.relationLc724Part4 at r4753
  unfold Seg45.relationRow4754 at r4754
  unfold Seg45.relationRow4755 at r4755
  unfold Seg45.relationRow4756 at r4756
  unfold Seg45.relationRow4757 at r4757
  unfold Seg45.relationRow4758 at r4758
  have hrung137 (bit : Bool) (hbit : rho 41085 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX137 rho : Seg45.F), (seg45AccY137 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42972 : Seg45.F), (rho 42973 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX137 rho : Seg45.F), (seg45AccY137 rho : Seg45.F)⟩
        ⟨(rho 42972 : Seg45.F), (rho 42973 : Seg45.F)⟩
        ⟨(seg45AccX138 rho : Seg45.F), (seg45AccY138 rho : Seg45.F)⟩
        ⟨(rho 42985 : Seg45.F), (rho 42986 : Seg45.F)⟩ := by
    have ha0 : (rho 42972 + rho 42973) * (seg45AccX137 rho + seg45AccY137 rho) = rho 42974 := by
      rw [seg45LadderFlatX137_eq, seg45LadderFlatY137_eq]
      unfold seg45LadderFlatX137 seg45LadderFlatY137
      linear_combination r4746
    have ha1 : rho 42973 * seg45AccX137 rho = rho 42975 := by
      rw [seg45LadderFlatX137_eq]
      unfold seg45LadderFlatX137
      linear_combination r4747
    have ha2 : rho 42972 * seg45AccY137 rho = rho 42976 := by
      rw [seg45LadderFlatY137_eq]
      unfold seg45LadderFlatY137
      linear_combination r4748
    have ha3 : 3021 * rho 42975 * rho 42976 = rho 42977 := by
      linear_combination r4749
    have ha4 : rho 42978 * (1 + rho 42977) = rho 42975 + rho 42976 := by
      linear_combination r4750
    have ha5 : rho 42979 * (1 - rho 42977) = rho 42974 - rho 42975 - rho 42976 := by
      linear_combination r4751
    have haddx :
        rho 42978 * (1 + 3021 * (rho 42973 * seg45AccX137 rho) * (rho 42972 * seg45AccY137 rho)) =
          rho 42973 * seg45AccX137 rho + rho 42972 * seg45AccY137 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42979 * (1 - 3021 * (rho 42973 * seg45AccX137 rho) * (rho 42972 * seg45AccY137 rho)) =
          (-1) * (rho 42973 * seg45AccX137 rho) - rho 42972 * seg45AccY137 rho +
            (seg45AccY137 rho - seg45AccX137 rho * (-1)) * (rho 42972 + rho 42973) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42979 * (1 - rho 42977) = rho 42974 - rho 42975 - rho 42976 := ha5
        _ = (-1) * rho 42975 - rho 42976 + (seg45AccY137 rho - seg45AccX137 rho * (-1)) * (rho 42972 + rho 42973) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX138 rho = seg45AccX137 rho - Bool.toZMod bit * (seg45AccX137 rho - rho 42978) := by
      have hd : rho 42980 = Bool.toZMod bit * (rho 42978 - seg45AccX137 rho) := by
        rw [← hbit, seg45LadderFlatX137_eq]
        unfold seg45LadderFlatX137
        linear_combination -r4752
      unfold seg45AccX138
      linear_combination hd
    have hsely : seg45AccY138 rho = seg45AccY137 rho - Bool.toZMod bit * (seg45AccY137 rho - rho 42979) := by
      have hd : rho 42981 = Bool.toZMod bit * (rho 42979 - seg45AccY137 rho) := by
        rw [← hbit, seg45LadderFlatY137_eq]
        unfold seg45LadderFlatY137
        linear_combination -r4753
      unfold seg45AccY138
      linear_combination hd
    have hd0 : rho 42972 * rho 42973 = rho 42982 := by linear_combination r4754
    have hd1 : rho 42972 * rho 42972 = rho 42983 := by linear_combination r4755
    have hd2 : rho 42973 * rho 42973 = rho 42984 := by linear_combination r4756
    have hd3 : rho 42985 * (rho 42973 * rho 42973 + rho 42972 * rho 42972 * (-1)) = 2 * (rho 42972 * rho 42973) := by
      rw [hd0, hd1, hd2]
      linear_combination r4757
    have hd4 : rho 42986 * (2 - (rho 42973 * rho 42973 + rho 42972 * rho 42972 * (-1))) = rho 42973 * rho 42973 - rho 42972 * rho 42972 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4758
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX137 rho : Seg45.F), (seg45AccY137 rho : Seg45.F)⟩
      ⟨(rho 42972 : Seg45.F), (rho 42973 : Seg45.F)⟩
      ⟨(rho 42978 : Seg45.F), (rho 42979 : Seg45.F)⟩
      ⟨(seg45AccX138 rho : Seg45.F), (seg45AccY138 rho : Seg45.F)⟩
      ⟨(rho 42985 : Seg45.F), (rho 42986 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung137

theorem seg45_rung138 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41086 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX138 rho : Seg45.F), (seg45AccY138 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42985 : Seg45.F), (rho 42986 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX138 rho : Seg45.F), (seg45AccY138 rho : Seg45.F)⟩
        ⟨(rho 42985 : Seg45.F), (rho 42986 : Seg45.F)⟩
        ⟨(seg45AccX139 rho : Seg45.F), (seg45AccY139 rho : Seg45.F)⟩
        ⟨(rho 42998 : Seg45.F), (rho 42999 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p59,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart59 at p59
  rcases p59 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4759, r4760, r4761, r4762, r4763, r4764, r4765, r4766, r4767, r4768, r4769, r4770, r4771, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow4759 Seg45.relationLc725 Seg45.relationLc725Part0 Seg45.relationLc725Part1 Seg45.relationLc725Part2 Seg45.relationLc725Part3 Seg45.relationLc725Part4 Seg45.relationLc725Part5 Seg45.relationLc725Part6 Seg45.relationLc725Part7 Seg45.relationLc725Part8 at r4759
  unfold Seg45.relationRow4760 Seg45.relationLc726 Seg45.relationLc726Part0 Seg45.relationLc726Part1 Seg45.relationLc726Part2 Seg45.relationLc726Part3 Seg45.relationLc726Part4 at r4760
  unfold Seg45.relationRow4761 Seg45.relationLc727 Seg45.relationLc727Part0 Seg45.relationLc727Part1 Seg45.relationLc727Part2 Seg45.relationLc727Part3 Seg45.relationLc727Part4 at r4761
  unfold Seg45.relationRow4762 at r4762
  unfold Seg45.relationRow4763 at r4763
  unfold Seg45.relationRow4764 at r4764
  unfold Seg45.relationRow4765 Seg45.relationLc728 Seg45.relationLc728Part0 Seg45.relationLc728Part1 Seg45.relationLc728Part2 Seg45.relationLc728Part3 Seg45.relationLc728Part4 at r4765
  unfold Seg45.relationRow4766 Seg45.relationLc729 Seg45.relationLc729Part0 Seg45.relationLc729Part1 Seg45.relationLc729Part2 Seg45.relationLc729Part3 Seg45.relationLc729Part4 at r4766
  unfold Seg45.relationRow4767 at r4767
  unfold Seg45.relationRow4768 at r4768
  unfold Seg45.relationRow4769 at r4769
  unfold Seg45.relationRow4770 at r4770
  unfold Seg45.relationRow4771 at r4771
  have hrung138 (bit : Bool) (hbit : rho 41086 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX138 rho : Seg45.F), (seg45AccY138 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42985 : Seg45.F), (rho 42986 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX138 rho : Seg45.F), (seg45AccY138 rho : Seg45.F)⟩
        ⟨(rho 42985 : Seg45.F), (rho 42986 : Seg45.F)⟩
        ⟨(seg45AccX139 rho : Seg45.F), (seg45AccY139 rho : Seg45.F)⟩
        ⟨(rho 42998 : Seg45.F), (rho 42999 : Seg45.F)⟩ := by
    have ha0 : (rho 42985 + rho 42986) * (seg45AccX138 rho + seg45AccY138 rho) = rho 42987 := by
      rw [seg45LadderFlatX138_eq, seg45LadderFlatY138_eq]
      unfold seg45LadderFlatX138 seg45LadderFlatY138
      linear_combination r4759
    have ha1 : rho 42986 * seg45AccX138 rho = rho 42988 := by
      rw [seg45LadderFlatX138_eq]
      unfold seg45LadderFlatX138
      linear_combination r4760
    have ha2 : rho 42985 * seg45AccY138 rho = rho 42989 := by
      rw [seg45LadderFlatY138_eq]
      unfold seg45LadderFlatY138
      linear_combination r4761
    have ha3 : 3021 * rho 42988 * rho 42989 = rho 42990 := by
      linear_combination r4762
    have ha4 : rho 42991 * (1 + rho 42990) = rho 42988 + rho 42989 := by
      linear_combination r4763
    have ha5 : rho 42992 * (1 - rho 42990) = rho 42987 - rho 42988 - rho 42989 := by
      linear_combination r4764
    have haddx :
        rho 42991 * (1 + 3021 * (rho 42986 * seg45AccX138 rho) * (rho 42985 * seg45AccY138 rho)) =
          rho 42986 * seg45AccX138 rho + rho 42985 * seg45AccY138 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42992 * (1 - 3021 * (rho 42986 * seg45AccX138 rho) * (rho 42985 * seg45AccY138 rho)) =
          (-1) * (rho 42986 * seg45AccX138 rho) - rho 42985 * seg45AccY138 rho +
            (seg45AccY138 rho - seg45AccX138 rho * (-1)) * (rho 42985 + rho 42986) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42992 * (1 - rho 42990) = rho 42987 - rho 42988 - rho 42989 := ha5
        _ = (-1) * rho 42988 - rho 42989 + (seg45AccY138 rho - seg45AccX138 rho * (-1)) * (rho 42985 + rho 42986) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX139 rho = seg45AccX138 rho - Bool.toZMod bit * (seg45AccX138 rho - rho 42991) := by
      have hd : rho 42993 = Bool.toZMod bit * (rho 42991 - seg45AccX138 rho) := by
        rw [← hbit, seg45LadderFlatX138_eq]
        unfold seg45LadderFlatX138
        linear_combination -r4765
      unfold seg45AccX139
      linear_combination hd
    have hsely : seg45AccY139 rho = seg45AccY138 rho - Bool.toZMod bit * (seg45AccY138 rho - rho 42992) := by
      have hd : rho 42994 = Bool.toZMod bit * (rho 42992 - seg45AccY138 rho) := by
        rw [← hbit, seg45LadderFlatY138_eq]
        unfold seg45LadderFlatY138
        linear_combination -r4766
      unfold seg45AccY139
      linear_combination hd
    have hd0 : rho 42985 * rho 42986 = rho 42995 := by linear_combination r4767
    have hd1 : rho 42985 * rho 42985 = rho 42996 := by linear_combination r4768
    have hd2 : rho 42986 * rho 42986 = rho 42997 := by linear_combination r4769
    have hd3 : rho 42998 * (rho 42986 * rho 42986 + rho 42985 * rho 42985 * (-1)) = 2 * (rho 42985 * rho 42986) := by
      rw [hd0, hd1, hd2]
      linear_combination r4770
    have hd4 : rho 42999 * (2 - (rho 42986 * rho 42986 + rho 42985 * rho 42985 * (-1))) = rho 42986 * rho 42986 - rho 42985 * rho 42985 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4771
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX138 rho : Seg45.F), (seg45AccY138 rho : Seg45.F)⟩
      ⟨(rho 42985 : Seg45.F), (rho 42986 : Seg45.F)⟩
      ⟨(rho 42991 : Seg45.F), (rho 42992 : Seg45.F)⟩
      ⟨(seg45AccX139 rho : Seg45.F), (seg45AccY139 rho : Seg45.F)⟩
      ⟨(rho 42998 : Seg45.F), (rho 42999 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung138

theorem seg45_rung139 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41087 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX139 rho : Seg45.F), (seg45AccY139 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42998 : Seg45.F), (rho 42999 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX139 rho : Seg45.F), (seg45AccY139 rho : Seg45.F)⟩
        ⟨(rho 42998 : Seg45.F), (rho 42999 : Seg45.F)⟩
        ⟨(seg45AccX140 rho : Seg45.F), (seg45AccY140 rho : Seg45.F)⟩
        ⟨(rho 43011 : Seg45.F), (rho 43012 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p59,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart59 at p59
  rcases p59 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4772, r4773, r4774, r4775, r4776, r4777, r4778, r4779, r4780, r4781, r4782, r4783, r4784, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow4772 Seg45.relationLc730 Seg45.relationLc730Part0 Seg45.relationLc730Part1 Seg45.relationLc730Part2 Seg45.relationLc730Part3 Seg45.relationLc730Part4 Seg45.relationLc730Part5 Seg45.relationLc730Part6 Seg45.relationLc730Part7 Seg45.relationLc730Part8 at r4772
  unfold Seg45.relationRow4773 Seg45.relationLc731 Seg45.relationLc731Part0 Seg45.relationLc731Part1 Seg45.relationLc731Part2 Seg45.relationLc731Part3 Seg45.relationLc731Part4 at r4773
  unfold Seg45.relationRow4774 Seg45.relationLc732 Seg45.relationLc732Part0 Seg45.relationLc732Part1 Seg45.relationLc732Part2 Seg45.relationLc732Part3 Seg45.relationLc732Part4 at r4774
  unfold Seg45.relationRow4775 at r4775
  unfold Seg45.relationRow4776 at r4776
  unfold Seg45.relationRow4777 at r4777
  unfold Seg45.relationRow4778 Seg45.relationLc733 Seg45.relationLc733Part0 Seg45.relationLc733Part1 Seg45.relationLc733Part2 Seg45.relationLc733Part3 Seg45.relationLc733Part4 at r4778
  unfold Seg45.relationRow4779 Seg45.relationLc734 Seg45.relationLc734Part0 Seg45.relationLc734Part1 Seg45.relationLc734Part2 Seg45.relationLc734Part3 Seg45.relationLc734Part4 at r4779
  unfold Seg45.relationRow4780 at r4780
  unfold Seg45.relationRow4781 at r4781
  unfold Seg45.relationRow4782 at r4782
  unfold Seg45.relationRow4783 at r4783
  unfold Seg45.relationRow4784 at r4784
  have hrung139 (bit : Bool) (hbit : rho 41087 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX139 rho : Seg45.F), (seg45AccY139 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42998 : Seg45.F), (rho 42999 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX139 rho : Seg45.F), (seg45AccY139 rho : Seg45.F)⟩
        ⟨(rho 42998 : Seg45.F), (rho 42999 : Seg45.F)⟩
        ⟨(seg45AccX140 rho : Seg45.F), (seg45AccY140 rho : Seg45.F)⟩
        ⟨(rho 43011 : Seg45.F), (rho 43012 : Seg45.F)⟩ := by
    have ha0 : (rho 42998 + rho 42999) * (seg45AccX139 rho + seg45AccY139 rho) = rho 43000 := by
      rw [seg45LadderFlatX139_eq, seg45LadderFlatY139_eq]
      unfold seg45LadderFlatX139 seg45LadderFlatY139
      linear_combination r4772
    have ha1 : rho 42999 * seg45AccX139 rho = rho 43001 := by
      rw [seg45LadderFlatX139_eq]
      unfold seg45LadderFlatX139
      linear_combination r4773
    have ha2 : rho 42998 * seg45AccY139 rho = rho 43002 := by
      rw [seg45LadderFlatY139_eq]
      unfold seg45LadderFlatY139
      linear_combination r4774
    have ha3 : 3021 * rho 43001 * rho 43002 = rho 43003 := by
      linear_combination r4775
    have ha4 : rho 43004 * (1 + rho 43003) = rho 43001 + rho 43002 := by
      linear_combination r4776
    have ha5 : rho 43005 * (1 - rho 43003) = rho 43000 - rho 43001 - rho 43002 := by
      linear_combination r4777
    have haddx :
        rho 43004 * (1 + 3021 * (rho 42999 * seg45AccX139 rho) * (rho 42998 * seg45AccY139 rho)) =
          rho 42999 * seg45AccX139 rho + rho 42998 * seg45AccY139 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43005 * (1 - 3021 * (rho 42999 * seg45AccX139 rho) * (rho 42998 * seg45AccY139 rho)) =
          (-1) * (rho 42999 * seg45AccX139 rho) - rho 42998 * seg45AccY139 rho +
            (seg45AccY139 rho - seg45AccX139 rho * (-1)) * (rho 42998 + rho 42999) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43005 * (1 - rho 43003) = rho 43000 - rho 43001 - rho 43002 := ha5
        _ = (-1) * rho 43001 - rho 43002 + (seg45AccY139 rho - seg45AccX139 rho * (-1)) * (rho 42998 + rho 42999) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX140 rho = seg45AccX139 rho - Bool.toZMod bit * (seg45AccX139 rho - rho 43004) := by
      have hd : rho 43006 = Bool.toZMod bit * (rho 43004 - seg45AccX139 rho) := by
        rw [← hbit, seg45LadderFlatX139_eq]
        unfold seg45LadderFlatX139
        linear_combination -r4778
      unfold seg45AccX140
      linear_combination hd
    have hsely : seg45AccY140 rho = seg45AccY139 rho - Bool.toZMod bit * (seg45AccY139 rho - rho 43005) := by
      have hd : rho 43007 = Bool.toZMod bit * (rho 43005 - seg45AccY139 rho) := by
        rw [← hbit, seg45LadderFlatY139_eq]
        unfold seg45LadderFlatY139
        linear_combination -r4779
      unfold seg45AccY140
      linear_combination hd
    have hd0 : rho 42998 * rho 42999 = rho 43008 := by linear_combination r4780
    have hd1 : rho 42998 * rho 42998 = rho 43009 := by linear_combination r4781
    have hd2 : rho 42999 * rho 42999 = rho 43010 := by linear_combination r4782
    have hd3 : rho 43011 * (rho 42999 * rho 42999 + rho 42998 * rho 42998 * (-1)) = 2 * (rho 42998 * rho 42999) := by
      rw [hd0, hd1, hd2]
      linear_combination r4783
    have hd4 : rho 43012 * (2 - (rho 42999 * rho 42999 + rho 42998 * rho 42998 * (-1))) = rho 42999 * rho 42999 - rho 42998 * rho 42998 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4784
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX139 rho : Seg45.F), (seg45AccY139 rho : Seg45.F)⟩
      ⟨(rho 42998 : Seg45.F), (rho 42999 : Seg45.F)⟩
      ⟨(rho 43004 : Seg45.F), (rho 43005 : Seg45.F)⟩
      ⟨(seg45AccX140 rho : Seg45.F), (seg45AccY140 rho : Seg45.F)⟩
      ⟨(rho 43011 : Seg45.F), (rho 43012 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung139

theorem seg45_rung140 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41088 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX140 rho : Seg45.F), (seg45AccY140 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43011 : Seg45.F), (rho 43012 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX140 rho : Seg45.F), (seg45AccY140 rho : Seg45.F)⟩
        ⟨(rho 43011 : Seg45.F), (rho 43012 : Seg45.F)⟩
        ⟨(seg45AccX141 rho : Seg45.F), (seg45AccY141 rho : Seg45.F)⟩
        ⟨(rho 43024 : Seg45.F), (rho 43025 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p59,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart59 at p59
  rcases p59 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4785, r4786, r4787, r4788, r4789, r4790, r4791, r4792, r4793, r4794, r4795, r4796, r4797, _, _⟩
  unfold Seg45.relationRow4785 Seg45.relationLc735 Seg45.relationLc735Part0 Seg45.relationLc735Part1 Seg45.relationLc735Part2 Seg45.relationLc735Part3 Seg45.relationLc735Part4 Seg45.relationLc735Part5 Seg45.relationLc735Part6 Seg45.relationLc735Part7 Seg45.relationLc735Part8 at r4785
  unfold Seg45.relationRow4786 Seg45.relationLc736 Seg45.relationLc736Part0 Seg45.relationLc736Part1 Seg45.relationLc736Part2 Seg45.relationLc736Part3 Seg45.relationLc736Part4 at r4786
  unfold Seg45.relationRow4787 Seg45.relationLc737 Seg45.relationLc737Part0 Seg45.relationLc737Part1 Seg45.relationLc737Part2 Seg45.relationLc737Part3 Seg45.relationLc737Part4 at r4787
  unfold Seg45.relationRow4788 at r4788
  unfold Seg45.relationRow4789 at r4789
  unfold Seg45.relationRow4790 at r4790
  unfold Seg45.relationRow4791 Seg45.relationLc738 Seg45.relationLc738Part0 Seg45.relationLc738Part1 Seg45.relationLc738Part2 Seg45.relationLc738Part3 Seg45.relationLc738Part4 at r4791
  unfold Seg45.relationRow4792 Seg45.relationLc739 Seg45.relationLc739Part0 Seg45.relationLc739Part1 Seg45.relationLc739Part2 Seg45.relationLc739Part3 Seg45.relationLc739Part4 at r4792
  unfold Seg45.relationRow4793 at r4793
  unfold Seg45.relationRow4794 at r4794
  unfold Seg45.relationRow4795 at r4795
  unfold Seg45.relationRow4796 at r4796
  unfold Seg45.relationRow4797 at r4797
  have hrung140 (bit : Bool) (hbit : rho 41088 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX140 rho : Seg45.F), (seg45AccY140 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43011 : Seg45.F), (rho 43012 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX140 rho : Seg45.F), (seg45AccY140 rho : Seg45.F)⟩
        ⟨(rho 43011 : Seg45.F), (rho 43012 : Seg45.F)⟩
        ⟨(seg45AccX141 rho : Seg45.F), (seg45AccY141 rho : Seg45.F)⟩
        ⟨(rho 43024 : Seg45.F), (rho 43025 : Seg45.F)⟩ := by
    have ha0 : (rho 43011 + rho 43012) * (seg45AccX140 rho + seg45AccY140 rho) = rho 43013 := by
      rw [seg45LadderFlatX140_eq, seg45LadderFlatY140_eq]
      unfold seg45LadderFlatX140 seg45LadderFlatY140
      linear_combination r4785
    have ha1 : rho 43012 * seg45AccX140 rho = rho 43014 := by
      rw [seg45LadderFlatX140_eq]
      unfold seg45LadderFlatX140
      linear_combination r4786
    have ha2 : rho 43011 * seg45AccY140 rho = rho 43015 := by
      rw [seg45LadderFlatY140_eq]
      unfold seg45LadderFlatY140
      linear_combination r4787
    have ha3 : 3021 * rho 43014 * rho 43015 = rho 43016 := by
      linear_combination r4788
    have ha4 : rho 43017 * (1 + rho 43016) = rho 43014 + rho 43015 := by
      linear_combination r4789
    have ha5 : rho 43018 * (1 - rho 43016) = rho 43013 - rho 43014 - rho 43015 := by
      linear_combination r4790
    have haddx :
        rho 43017 * (1 + 3021 * (rho 43012 * seg45AccX140 rho) * (rho 43011 * seg45AccY140 rho)) =
          rho 43012 * seg45AccX140 rho + rho 43011 * seg45AccY140 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43018 * (1 - 3021 * (rho 43012 * seg45AccX140 rho) * (rho 43011 * seg45AccY140 rho)) =
          (-1) * (rho 43012 * seg45AccX140 rho) - rho 43011 * seg45AccY140 rho +
            (seg45AccY140 rho - seg45AccX140 rho * (-1)) * (rho 43011 + rho 43012) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43018 * (1 - rho 43016) = rho 43013 - rho 43014 - rho 43015 := ha5
        _ = (-1) * rho 43014 - rho 43015 + (seg45AccY140 rho - seg45AccX140 rho * (-1)) * (rho 43011 + rho 43012) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX141 rho = seg45AccX140 rho - Bool.toZMod bit * (seg45AccX140 rho - rho 43017) := by
      have hd : rho 43019 = Bool.toZMod bit * (rho 43017 - seg45AccX140 rho) := by
        rw [← hbit, seg45LadderFlatX140_eq]
        unfold seg45LadderFlatX140
        linear_combination -r4791
      unfold seg45AccX141
      linear_combination hd
    have hsely : seg45AccY141 rho = seg45AccY140 rho - Bool.toZMod bit * (seg45AccY140 rho - rho 43018) := by
      have hd : rho 43020 = Bool.toZMod bit * (rho 43018 - seg45AccY140 rho) := by
        rw [← hbit, seg45LadderFlatY140_eq]
        unfold seg45LadderFlatY140
        linear_combination -r4792
      unfold seg45AccY141
      linear_combination hd
    have hd0 : rho 43011 * rho 43012 = rho 43021 := by linear_combination r4793
    have hd1 : rho 43011 * rho 43011 = rho 43022 := by linear_combination r4794
    have hd2 : rho 43012 * rho 43012 = rho 43023 := by linear_combination r4795
    have hd3 : rho 43024 * (rho 43012 * rho 43012 + rho 43011 * rho 43011 * (-1)) = 2 * (rho 43011 * rho 43012) := by
      rw [hd0, hd1, hd2]
      linear_combination r4796
    have hd4 : rho 43025 * (2 - (rho 43012 * rho 43012 + rho 43011 * rho 43011 * (-1))) = rho 43012 * rho 43012 - rho 43011 * rho 43011 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4797
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX140 rho : Seg45.F), (seg45AccY140 rho : Seg45.F)⟩
      ⟨(rho 43011 : Seg45.F), (rho 43012 : Seg45.F)⟩
      ⟨(rho 43017 : Seg45.F), (rho 43018 : Seg45.F)⟩
      ⟨(seg45AccX141 rho : Seg45.F), (seg45AccY141 rho : Seg45.F)⟩
      ⟨(rho 43024 : Seg45.F), (rho 43025 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung140

theorem seg45_rung141 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41089 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX141 rho : Seg45.F), (seg45AccY141 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43024 : Seg45.F), (rho 43025 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX141 rho : Seg45.F), (seg45AccY141 rho : Seg45.F)⟩
        ⟨(rho 43024 : Seg45.F), (rho 43025 : Seg45.F)⟩
        ⟨(seg45AccX142 rho : Seg45.F), (seg45AccY142 rho : Seg45.F)⟩
        ⟨(rho 43037 : Seg45.F), (rho 43038 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p59,
    p60, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart59 at p59
  rcases p59 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4798, r4799⟩
  unfold Seg45.relationPart60 at p60
  rcases p60 with ⟨r4800, r4801, r4802, r4803, r4804, r4805, r4806, r4807, r4808, r4809, r4810, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow4798 Seg45.relationLc740 Seg45.relationLc740Part0 Seg45.relationLc740Part1 Seg45.relationLc740Part2 Seg45.relationLc740Part3 Seg45.relationLc740Part4 Seg45.relationLc740Part5 Seg45.relationLc740Part6 Seg45.relationLc740Part7 Seg45.relationLc740Part8 at r4798
  unfold Seg45.relationRow4799 Seg45.relationLc741 Seg45.relationLc741Part0 Seg45.relationLc741Part1 Seg45.relationLc741Part2 Seg45.relationLc741Part3 Seg45.relationLc741Part4 at r4799
  unfold Seg45.relationRow4800 Seg45.relationLc742 Seg45.relationLc742Part0 Seg45.relationLc742Part1 Seg45.relationLc742Part2 Seg45.relationLc742Part3 Seg45.relationLc742Part4 at r4800
  unfold Seg45.relationRow4801 at r4801
  unfold Seg45.relationRow4802 at r4802
  unfold Seg45.relationRow4803 at r4803
  unfold Seg45.relationRow4804 Seg45.relationLc743 Seg45.relationLc743Part0 Seg45.relationLc743Part1 Seg45.relationLc743Part2 Seg45.relationLc743Part3 Seg45.relationLc743Part4 at r4804
  unfold Seg45.relationRow4805 Seg45.relationLc744 Seg45.relationLc744Part0 Seg45.relationLc744Part1 Seg45.relationLc744Part2 Seg45.relationLc744Part3 Seg45.relationLc744Part4 at r4805
  unfold Seg45.relationRow4806 at r4806
  unfold Seg45.relationRow4807 at r4807
  unfold Seg45.relationRow4808 at r4808
  unfold Seg45.relationRow4809 at r4809
  unfold Seg45.relationRow4810 at r4810
  have hrung141 (bit : Bool) (hbit : rho 41089 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX141 rho : Seg45.F), (seg45AccY141 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43024 : Seg45.F), (rho 43025 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX141 rho : Seg45.F), (seg45AccY141 rho : Seg45.F)⟩
        ⟨(rho 43024 : Seg45.F), (rho 43025 : Seg45.F)⟩
        ⟨(seg45AccX142 rho : Seg45.F), (seg45AccY142 rho : Seg45.F)⟩
        ⟨(rho 43037 : Seg45.F), (rho 43038 : Seg45.F)⟩ := by
    have ha0 : (rho 43024 + rho 43025) * (seg45AccX141 rho + seg45AccY141 rho) = rho 43026 := by
      rw [seg45LadderFlatX141_eq, seg45LadderFlatY141_eq]
      unfold seg45LadderFlatX141 seg45LadderFlatY141
      linear_combination r4798
    have ha1 : rho 43025 * seg45AccX141 rho = rho 43027 := by
      rw [seg45LadderFlatX141_eq]
      unfold seg45LadderFlatX141
      linear_combination r4799
    have ha2 : rho 43024 * seg45AccY141 rho = rho 43028 := by
      rw [seg45LadderFlatY141_eq]
      unfold seg45LadderFlatY141
      linear_combination r4800
    have ha3 : 3021 * rho 43027 * rho 43028 = rho 43029 := by
      linear_combination r4801
    have ha4 : rho 43030 * (1 + rho 43029) = rho 43027 + rho 43028 := by
      linear_combination r4802
    have ha5 : rho 43031 * (1 - rho 43029) = rho 43026 - rho 43027 - rho 43028 := by
      linear_combination r4803
    have haddx :
        rho 43030 * (1 + 3021 * (rho 43025 * seg45AccX141 rho) * (rho 43024 * seg45AccY141 rho)) =
          rho 43025 * seg45AccX141 rho + rho 43024 * seg45AccY141 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43031 * (1 - 3021 * (rho 43025 * seg45AccX141 rho) * (rho 43024 * seg45AccY141 rho)) =
          (-1) * (rho 43025 * seg45AccX141 rho) - rho 43024 * seg45AccY141 rho +
            (seg45AccY141 rho - seg45AccX141 rho * (-1)) * (rho 43024 + rho 43025) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43031 * (1 - rho 43029) = rho 43026 - rho 43027 - rho 43028 := ha5
        _ = (-1) * rho 43027 - rho 43028 + (seg45AccY141 rho - seg45AccX141 rho * (-1)) * (rho 43024 + rho 43025) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX142 rho = seg45AccX141 rho - Bool.toZMod bit * (seg45AccX141 rho - rho 43030) := by
      have hd : rho 43032 = Bool.toZMod bit * (rho 43030 - seg45AccX141 rho) := by
        rw [← hbit, seg45LadderFlatX141_eq]
        unfold seg45LadderFlatX141
        linear_combination -r4804
      unfold seg45AccX142
      linear_combination hd
    have hsely : seg45AccY142 rho = seg45AccY141 rho - Bool.toZMod bit * (seg45AccY141 rho - rho 43031) := by
      have hd : rho 43033 = Bool.toZMod bit * (rho 43031 - seg45AccY141 rho) := by
        rw [← hbit, seg45LadderFlatY141_eq]
        unfold seg45LadderFlatY141
        linear_combination -r4805
      unfold seg45AccY142
      linear_combination hd
    have hd0 : rho 43024 * rho 43025 = rho 43034 := by linear_combination r4806
    have hd1 : rho 43024 * rho 43024 = rho 43035 := by linear_combination r4807
    have hd2 : rho 43025 * rho 43025 = rho 43036 := by linear_combination r4808
    have hd3 : rho 43037 * (rho 43025 * rho 43025 + rho 43024 * rho 43024 * (-1)) = 2 * (rho 43024 * rho 43025) := by
      rw [hd0, hd1, hd2]
      linear_combination r4809
    have hd4 : rho 43038 * (2 - (rho 43025 * rho 43025 + rho 43024 * rho 43024 * (-1))) = rho 43025 * rho 43025 - rho 43024 * rho 43024 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4810
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX141 rho : Seg45.F), (seg45AccY141 rho : Seg45.F)⟩
      ⟨(rho 43024 : Seg45.F), (rho 43025 : Seg45.F)⟩
      ⟨(rho 43030 : Seg45.F), (rho 43031 : Seg45.F)⟩
      ⟨(seg45AccX142 rho : Seg45.F), (seg45AccY142 rho : Seg45.F)⟩
      ⟨(rho 43037 : Seg45.F), (rho 43038 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung141

theorem seg45_rung142 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41090 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX142 rho : Seg45.F), (seg45AccY142 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43037 : Seg45.F), (rho 43038 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX142 rho : Seg45.F), (seg45AccY142 rho : Seg45.F)⟩
        ⟨(rho 43037 : Seg45.F), (rho 43038 : Seg45.F)⟩
        ⟨(seg45AccX143 rho : Seg45.F), (seg45AccY143 rho : Seg45.F)⟩
        ⟨(rho 43050 : Seg45.F), (rho 43051 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p60, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart60 at p60
  rcases p60 with ⟨_, _, _, _, _, _, _, _, _, _, _, r4811, r4812, r4813, r4814, r4815, r4816, r4817, r4818, r4819, r4820, r4821, r4822, r4823, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow4811 Seg45.relationLc745 Seg45.relationLc745Part0 Seg45.relationLc745Part1 Seg45.relationLc745Part2 Seg45.relationLc745Part3 Seg45.relationLc745Part4 Seg45.relationLc745Part5 Seg45.relationLc745Part6 Seg45.relationLc745Part7 Seg45.relationLc745Part8 at r4811
  unfold Seg45.relationRow4812 Seg45.relationLc746 Seg45.relationLc746Part0 Seg45.relationLc746Part1 Seg45.relationLc746Part2 Seg45.relationLc746Part3 Seg45.relationLc746Part4 at r4812
  unfold Seg45.relationRow4813 Seg45.relationLc747 Seg45.relationLc747Part0 Seg45.relationLc747Part1 Seg45.relationLc747Part2 Seg45.relationLc747Part3 Seg45.relationLc747Part4 at r4813
  unfold Seg45.relationRow4814 at r4814
  unfold Seg45.relationRow4815 at r4815
  unfold Seg45.relationRow4816 at r4816
  unfold Seg45.relationRow4817 Seg45.relationLc748 Seg45.relationLc748Part0 Seg45.relationLc748Part1 Seg45.relationLc748Part2 Seg45.relationLc748Part3 Seg45.relationLc748Part4 at r4817
  unfold Seg45.relationRow4818 Seg45.relationLc749 Seg45.relationLc749Part0 Seg45.relationLc749Part1 Seg45.relationLc749Part2 Seg45.relationLc749Part3 Seg45.relationLc749Part4 at r4818
  unfold Seg45.relationRow4819 at r4819
  unfold Seg45.relationRow4820 at r4820
  unfold Seg45.relationRow4821 at r4821
  unfold Seg45.relationRow4822 at r4822
  unfold Seg45.relationRow4823 at r4823
  have hrung142 (bit : Bool) (hbit : rho 41090 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX142 rho : Seg45.F), (seg45AccY142 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43037 : Seg45.F), (rho 43038 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX142 rho : Seg45.F), (seg45AccY142 rho : Seg45.F)⟩
        ⟨(rho 43037 : Seg45.F), (rho 43038 : Seg45.F)⟩
        ⟨(seg45AccX143 rho : Seg45.F), (seg45AccY143 rho : Seg45.F)⟩
        ⟨(rho 43050 : Seg45.F), (rho 43051 : Seg45.F)⟩ := by
    have ha0 : (rho 43037 + rho 43038) * (seg45AccX142 rho + seg45AccY142 rho) = rho 43039 := by
      rw [seg45LadderFlatX142_eq, seg45LadderFlatY142_eq]
      unfold seg45LadderFlatX142 seg45LadderFlatY142
      linear_combination r4811
    have ha1 : rho 43038 * seg45AccX142 rho = rho 43040 := by
      rw [seg45LadderFlatX142_eq]
      unfold seg45LadderFlatX142
      linear_combination r4812
    have ha2 : rho 43037 * seg45AccY142 rho = rho 43041 := by
      rw [seg45LadderFlatY142_eq]
      unfold seg45LadderFlatY142
      linear_combination r4813
    have ha3 : 3021 * rho 43040 * rho 43041 = rho 43042 := by
      linear_combination r4814
    have ha4 : rho 43043 * (1 + rho 43042) = rho 43040 + rho 43041 := by
      linear_combination r4815
    have ha5 : rho 43044 * (1 - rho 43042) = rho 43039 - rho 43040 - rho 43041 := by
      linear_combination r4816
    have haddx :
        rho 43043 * (1 + 3021 * (rho 43038 * seg45AccX142 rho) * (rho 43037 * seg45AccY142 rho)) =
          rho 43038 * seg45AccX142 rho + rho 43037 * seg45AccY142 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43044 * (1 - 3021 * (rho 43038 * seg45AccX142 rho) * (rho 43037 * seg45AccY142 rho)) =
          (-1) * (rho 43038 * seg45AccX142 rho) - rho 43037 * seg45AccY142 rho +
            (seg45AccY142 rho - seg45AccX142 rho * (-1)) * (rho 43037 + rho 43038) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43044 * (1 - rho 43042) = rho 43039 - rho 43040 - rho 43041 := ha5
        _ = (-1) * rho 43040 - rho 43041 + (seg45AccY142 rho - seg45AccX142 rho * (-1)) * (rho 43037 + rho 43038) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX143 rho = seg45AccX142 rho - Bool.toZMod bit * (seg45AccX142 rho - rho 43043) := by
      have hd : rho 43045 = Bool.toZMod bit * (rho 43043 - seg45AccX142 rho) := by
        rw [← hbit, seg45LadderFlatX142_eq]
        unfold seg45LadderFlatX142
        linear_combination -r4817
      unfold seg45AccX143
      linear_combination hd
    have hsely : seg45AccY143 rho = seg45AccY142 rho - Bool.toZMod bit * (seg45AccY142 rho - rho 43044) := by
      have hd : rho 43046 = Bool.toZMod bit * (rho 43044 - seg45AccY142 rho) := by
        rw [← hbit, seg45LadderFlatY142_eq]
        unfold seg45LadderFlatY142
        linear_combination -r4818
      unfold seg45AccY143
      linear_combination hd
    have hd0 : rho 43037 * rho 43038 = rho 43047 := by linear_combination r4819
    have hd1 : rho 43037 * rho 43037 = rho 43048 := by linear_combination r4820
    have hd2 : rho 43038 * rho 43038 = rho 43049 := by linear_combination r4821
    have hd3 : rho 43050 * (rho 43038 * rho 43038 + rho 43037 * rho 43037 * (-1)) = 2 * (rho 43037 * rho 43038) := by
      rw [hd0, hd1, hd2]
      linear_combination r4822
    have hd4 : rho 43051 * (2 - (rho 43038 * rho 43038 + rho 43037 * rho 43037 * (-1))) = rho 43038 * rho 43038 - rho 43037 * rho 43037 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4823
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX142 rho : Seg45.F), (seg45AccY142 rho : Seg45.F)⟩
      ⟨(rho 43037 : Seg45.F), (rho 43038 : Seg45.F)⟩
      ⟨(rho 43043 : Seg45.F), (rho 43044 : Seg45.F)⟩
      ⟨(seg45AccX143 rho : Seg45.F), (seg45AccY143 rho : Seg45.F)⟩
      ⟨(rho 43050 : Seg45.F), (rho 43051 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung142

theorem seg45_rung143 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41091 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX143 rho : Seg45.F), (seg45AccY143 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43050 : Seg45.F), (rho 43051 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX143 rho : Seg45.F), (seg45AccY143 rho : Seg45.F)⟩
        ⟨(rho 43050 : Seg45.F), (rho 43051 : Seg45.F)⟩
        ⟨(seg45AccX144 rho : Seg45.F), (seg45AccY144 rho : Seg45.F)⟩
        ⟨(rho 43063 : Seg45.F), (rho 43064 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p60, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart60 at p60
  rcases p60 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4824, r4825, r4826, r4827, r4828, r4829, r4830, r4831, r4832, r4833, r4834, r4835, r4836, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow4824 Seg45.relationLc750 Seg45.relationLc750Part0 Seg45.relationLc750Part1 Seg45.relationLc750Part2 Seg45.relationLc750Part3 Seg45.relationLc750Part4 Seg45.relationLc750Part5 Seg45.relationLc750Part6 Seg45.relationLc750Part7 Seg45.relationLc750Part8 at r4824
  unfold Seg45.relationRow4825 Seg45.relationLc751 Seg45.relationLc751Part0 Seg45.relationLc751Part1 Seg45.relationLc751Part2 Seg45.relationLc751Part3 Seg45.relationLc751Part4 at r4825
  unfold Seg45.relationRow4826 Seg45.relationLc752 Seg45.relationLc752Part0 Seg45.relationLc752Part1 Seg45.relationLc752Part2 Seg45.relationLc752Part3 Seg45.relationLc752Part4 at r4826
  unfold Seg45.relationRow4827 at r4827
  unfold Seg45.relationRow4828 at r4828
  unfold Seg45.relationRow4829 at r4829
  unfold Seg45.relationRow4830 Seg45.relationLc753 Seg45.relationLc753Part0 Seg45.relationLc753Part1 Seg45.relationLc753Part2 Seg45.relationLc753Part3 Seg45.relationLc753Part4 at r4830
  unfold Seg45.relationRow4831 Seg45.relationLc754 Seg45.relationLc754Part0 Seg45.relationLc754Part1 Seg45.relationLc754Part2 Seg45.relationLc754Part3 Seg45.relationLc754Part4 at r4831
  unfold Seg45.relationRow4832 at r4832
  unfold Seg45.relationRow4833 at r4833
  unfold Seg45.relationRow4834 at r4834
  unfold Seg45.relationRow4835 at r4835
  unfold Seg45.relationRow4836 at r4836
  have hrung143 (bit : Bool) (hbit : rho 41091 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX143 rho : Seg45.F), (seg45AccY143 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43050 : Seg45.F), (rho 43051 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX143 rho : Seg45.F), (seg45AccY143 rho : Seg45.F)⟩
        ⟨(rho 43050 : Seg45.F), (rho 43051 : Seg45.F)⟩
        ⟨(seg45AccX144 rho : Seg45.F), (seg45AccY144 rho : Seg45.F)⟩
        ⟨(rho 43063 : Seg45.F), (rho 43064 : Seg45.F)⟩ := by
    have ha0 : (rho 43050 + rho 43051) * (seg45AccX143 rho + seg45AccY143 rho) = rho 43052 := by
      rw [seg45LadderFlatX143_eq, seg45LadderFlatY143_eq]
      unfold seg45LadderFlatX143 seg45LadderFlatY143
      linear_combination r4824
    have ha1 : rho 43051 * seg45AccX143 rho = rho 43053 := by
      rw [seg45LadderFlatX143_eq]
      unfold seg45LadderFlatX143
      linear_combination r4825
    have ha2 : rho 43050 * seg45AccY143 rho = rho 43054 := by
      rw [seg45LadderFlatY143_eq]
      unfold seg45LadderFlatY143
      linear_combination r4826
    have ha3 : 3021 * rho 43053 * rho 43054 = rho 43055 := by
      linear_combination r4827
    have ha4 : rho 43056 * (1 + rho 43055) = rho 43053 + rho 43054 := by
      linear_combination r4828
    have ha5 : rho 43057 * (1 - rho 43055) = rho 43052 - rho 43053 - rho 43054 := by
      linear_combination r4829
    have haddx :
        rho 43056 * (1 + 3021 * (rho 43051 * seg45AccX143 rho) * (rho 43050 * seg45AccY143 rho)) =
          rho 43051 * seg45AccX143 rho + rho 43050 * seg45AccY143 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43057 * (1 - 3021 * (rho 43051 * seg45AccX143 rho) * (rho 43050 * seg45AccY143 rho)) =
          (-1) * (rho 43051 * seg45AccX143 rho) - rho 43050 * seg45AccY143 rho +
            (seg45AccY143 rho - seg45AccX143 rho * (-1)) * (rho 43050 + rho 43051) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43057 * (1 - rho 43055) = rho 43052 - rho 43053 - rho 43054 := ha5
        _ = (-1) * rho 43053 - rho 43054 + (seg45AccY143 rho - seg45AccX143 rho * (-1)) * (rho 43050 + rho 43051) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX144 rho = seg45AccX143 rho - Bool.toZMod bit * (seg45AccX143 rho - rho 43056) := by
      have hd : rho 43058 = Bool.toZMod bit * (rho 43056 - seg45AccX143 rho) := by
        rw [← hbit, seg45LadderFlatX143_eq]
        unfold seg45LadderFlatX143
        linear_combination -r4830
      unfold seg45AccX144
      linear_combination hd
    have hsely : seg45AccY144 rho = seg45AccY143 rho - Bool.toZMod bit * (seg45AccY143 rho - rho 43057) := by
      have hd : rho 43059 = Bool.toZMod bit * (rho 43057 - seg45AccY143 rho) := by
        rw [← hbit, seg45LadderFlatY143_eq]
        unfold seg45LadderFlatY143
        linear_combination -r4831
      unfold seg45AccY144
      linear_combination hd
    have hd0 : rho 43050 * rho 43051 = rho 43060 := by linear_combination r4832
    have hd1 : rho 43050 * rho 43050 = rho 43061 := by linear_combination r4833
    have hd2 : rho 43051 * rho 43051 = rho 43062 := by linear_combination r4834
    have hd3 : rho 43063 * (rho 43051 * rho 43051 + rho 43050 * rho 43050 * (-1)) = 2 * (rho 43050 * rho 43051) := by
      rw [hd0, hd1, hd2]
      linear_combination r4835
    have hd4 : rho 43064 * (2 - (rho 43051 * rho 43051 + rho 43050 * rho 43050 * (-1))) = rho 43051 * rho 43051 - rho 43050 * rho 43050 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4836
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX143 rho : Seg45.F), (seg45AccY143 rho : Seg45.F)⟩
      ⟨(rho 43050 : Seg45.F), (rho 43051 : Seg45.F)⟩
      ⟨(rho 43056 : Seg45.F), (rho 43057 : Seg45.F)⟩
      ⟨(seg45AccX144 rho : Seg45.F), (seg45AccY144 rho : Seg45.F)⟩
      ⟨(rho 43063 : Seg45.F), (rho 43064 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung143

theorem seg45_rung144 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41092 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX144 rho : Seg45.F), (seg45AccY144 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43063 : Seg45.F), (rho 43064 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX144 rho : Seg45.F), (seg45AccY144 rho : Seg45.F)⟩
        ⟨(rho 43063 : Seg45.F), (rho 43064 : Seg45.F)⟩
        ⟨(seg45AccX145 rho : Seg45.F), (seg45AccY145 rho : Seg45.F)⟩
        ⟨(rho 43076 : Seg45.F), (rho 43077 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p60, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart60 at p60
  rcases p60 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4837, r4838, r4839, r4840, r4841, r4842, r4843, r4844, r4845, r4846, r4847, r4848, r4849, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow4837 Seg45.relationLc755 Seg45.relationLc755Part0 Seg45.relationLc755Part1 Seg45.relationLc755Part2 Seg45.relationLc755Part3 Seg45.relationLc755Part4 Seg45.relationLc755Part5 Seg45.relationLc755Part6 Seg45.relationLc755Part7 Seg45.relationLc755Part8 Seg45.relationLc755Part9 at r4837
  unfold Seg45.relationRow4838 Seg45.relationLc756 Seg45.relationLc756Part0 Seg45.relationLc756Part1 Seg45.relationLc756Part2 Seg45.relationLc756Part3 Seg45.relationLc756Part4 at r4838
  unfold Seg45.relationRow4839 Seg45.relationLc757 Seg45.relationLc757Part0 Seg45.relationLc757Part1 Seg45.relationLc757Part2 Seg45.relationLc757Part3 Seg45.relationLc757Part4 at r4839
  unfold Seg45.relationRow4840 at r4840
  unfold Seg45.relationRow4841 at r4841
  unfold Seg45.relationRow4842 at r4842
  unfold Seg45.relationRow4843 Seg45.relationLc758 Seg45.relationLc758Part0 Seg45.relationLc758Part1 Seg45.relationLc758Part2 Seg45.relationLc758Part3 Seg45.relationLc758Part4 at r4843
  unfold Seg45.relationRow4844 Seg45.relationLc759 Seg45.relationLc759Part0 Seg45.relationLc759Part1 Seg45.relationLc759Part2 Seg45.relationLc759Part3 Seg45.relationLc759Part4 at r4844
  unfold Seg45.relationRow4845 at r4845
  unfold Seg45.relationRow4846 at r4846
  unfold Seg45.relationRow4847 at r4847
  unfold Seg45.relationRow4848 at r4848
  unfold Seg45.relationRow4849 at r4849
  have hrung144 (bit : Bool) (hbit : rho 41092 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX144 rho : Seg45.F), (seg45AccY144 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43063 : Seg45.F), (rho 43064 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX144 rho : Seg45.F), (seg45AccY144 rho : Seg45.F)⟩
        ⟨(rho 43063 : Seg45.F), (rho 43064 : Seg45.F)⟩
        ⟨(seg45AccX145 rho : Seg45.F), (seg45AccY145 rho : Seg45.F)⟩
        ⟨(rho 43076 : Seg45.F), (rho 43077 : Seg45.F)⟩ := by
    have ha0 : (rho 43063 + rho 43064) * (seg45AccX144 rho + seg45AccY144 rho) = rho 43065 := by
      rw [seg45LadderFlatX144_eq, seg45LadderFlatY144_eq]
      unfold seg45LadderFlatX144 seg45LadderFlatY144
      linear_combination r4837
    have ha1 : rho 43064 * seg45AccX144 rho = rho 43066 := by
      rw [seg45LadderFlatX144_eq]
      unfold seg45LadderFlatX144
      linear_combination r4838
    have ha2 : rho 43063 * seg45AccY144 rho = rho 43067 := by
      rw [seg45LadderFlatY144_eq]
      unfold seg45LadderFlatY144
      linear_combination r4839
    have ha3 : 3021 * rho 43066 * rho 43067 = rho 43068 := by
      linear_combination r4840
    have ha4 : rho 43069 * (1 + rho 43068) = rho 43066 + rho 43067 := by
      linear_combination r4841
    have ha5 : rho 43070 * (1 - rho 43068) = rho 43065 - rho 43066 - rho 43067 := by
      linear_combination r4842
    have haddx :
        rho 43069 * (1 + 3021 * (rho 43064 * seg45AccX144 rho) * (rho 43063 * seg45AccY144 rho)) =
          rho 43064 * seg45AccX144 rho + rho 43063 * seg45AccY144 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43070 * (1 - 3021 * (rho 43064 * seg45AccX144 rho) * (rho 43063 * seg45AccY144 rho)) =
          (-1) * (rho 43064 * seg45AccX144 rho) - rho 43063 * seg45AccY144 rho +
            (seg45AccY144 rho - seg45AccX144 rho * (-1)) * (rho 43063 + rho 43064) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43070 * (1 - rho 43068) = rho 43065 - rho 43066 - rho 43067 := ha5
        _ = (-1) * rho 43066 - rho 43067 + (seg45AccY144 rho - seg45AccX144 rho * (-1)) * (rho 43063 + rho 43064) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX145 rho = seg45AccX144 rho - Bool.toZMod bit * (seg45AccX144 rho - rho 43069) := by
      have hd : rho 43071 = Bool.toZMod bit * (rho 43069 - seg45AccX144 rho) := by
        rw [← hbit, seg45LadderFlatX144_eq]
        unfold seg45LadderFlatX144
        linear_combination -r4843
      unfold seg45AccX145
      linear_combination hd
    have hsely : seg45AccY145 rho = seg45AccY144 rho - Bool.toZMod bit * (seg45AccY144 rho - rho 43070) := by
      have hd : rho 43072 = Bool.toZMod bit * (rho 43070 - seg45AccY144 rho) := by
        rw [← hbit, seg45LadderFlatY144_eq]
        unfold seg45LadderFlatY144
        linear_combination -r4844
      unfold seg45AccY145
      linear_combination hd
    have hd0 : rho 43063 * rho 43064 = rho 43073 := by linear_combination r4845
    have hd1 : rho 43063 * rho 43063 = rho 43074 := by linear_combination r4846
    have hd2 : rho 43064 * rho 43064 = rho 43075 := by linear_combination r4847
    have hd3 : rho 43076 * (rho 43064 * rho 43064 + rho 43063 * rho 43063 * (-1)) = 2 * (rho 43063 * rho 43064) := by
      rw [hd0, hd1, hd2]
      linear_combination r4848
    have hd4 : rho 43077 * (2 - (rho 43064 * rho 43064 + rho 43063 * rho 43063 * (-1))) = rho 43064 * rho 43064 - rho 43063 * rho 43063 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4849
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX144 rho : Seg45.F), (seg45AccY144 rho : Seg45.F)⟩
      ⟨(rho 43063 : Seg45.F), (rho 43064 : Seg45.F)⟩
      ⟨(rho 43069 : Seg45.F), (rho 43070 : Seg45.F)⟩
      ⟨(seg45AccX145 rho : Seg45.F), (seg45AccY145 rho : Seg45.F)⟩
      ⟨(rho 43076 : Seg45.F), (rho 43077 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung144

theorem seg45_rung145 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41093 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX145 rho : Seg45.F), (seg45AccY145 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43076 : Seg45.F), (rho 43077 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX145 rho : Seg45.F), (seg45AccY145 rho : Seg45.F)⟩
        ⟨(rho 43076 : Seg45.F), (rho 43077 : Seg45.F)⟩
        ⟨(seg45AccX146 rho : Seg45.F), (seg45AccY146 rho : Seg45.F)⟩
        ⟨(rho 43089 : Seg45.F), (rho 43090 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p60, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart60 at p60
  rcases p60 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4850, r4851, r4852, r4853, r4854, r4855, r4856, r4857, r4858, r4859, r4860, r4861, r4862, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow4850 Seg45.relationLc760 Seg45.relationLc760Part0 Seg45.relationLc760Part1 Seg45.relationLc760Part2 Seg45.relationLc760Part3 Seg45.relationLc760Part4 Seg45.relationLc760Part5 Seg45.relationLc760Part6 Seg45.relationLc760Part7 Seg45.relationLc760Part8 Seg45.relationLc760Part9 at r4850
  unfold Seg45.relationRow4851 Seg45.relationLc761 Seg45.relationLc761Part0 Seg45.relationLc761Part1 Seg45.relationLc761Part2 Seg45.relationLc761Part3 Seg45.relationLc761Part4 at r4851
  unfold Seg45.relationRow4852 Seg45.relationLc762 Seg45.relationLc762Part0 Seg45.relationLc762Part1 Seg45.relationLc762Part2 Seg45.relationLc762Part3 Seg45.relationLc762Part4 at r4852
  unfold Seg45.relationRow4853 at r4853
  unfold Seg45.relationRow4854 at r4854
  unfold Seg45.relationRow4855 at r4855
  unfold Seg45.relationRow4856 Seg45.relationLc763 Seg45.relationLc763Part0 Seg45.relationLc763Part1 Seg45.relationLc763Part2 Seg45.relationLc763Part3 Seg45.relationLc763Part4 at r4856
  unfold Seg45.relationRow4857 Seg45.relationLc764 Seg45.relationLc764Part0 Seg45.relationLc764Part1 Seg45.relationLc764Part2 Seg45.relationLc764Part3 Seg45.relationLc764Part4 at r4857
  unfold Seg45.relationRow4858 at r4858
  unfold Seg45.relationRow4859 at r4859
  unfold Seg45.relationRow4860 at r4860
  unfold Seg45.relationRow4861 at r4861
  unfold Seg45.relationRow4862 at r4862
  have hrung145 (bit : Bool) (hbit : rho 41093 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX145 rho : Seg45.F), (seg45AccY145 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43076 : Seg45.F), (rho 43077 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX145 rho : Seg45.F), (seg45AccY145 rho : Seg45.F)⟩
        ⟨(rho 43076 : Seg45.F), (rho 43077 : Seg45.F)⟩
        ⟨(seg45AccX146 rho : Seg45.F), (seg45AccY146 rho : Seg45.F)⟩
        ⟨(rho 43089 : Seg45.F), (rho 43090 : Seg45.F)⟩ := by
    have ha0 : (rho 43076 + rho 43077) * (seg45AccX145 rho + seg45AccY145 rho) = rho 43078 := by
      rw [seg45LadderFlatX145_eq, seg45LadderFlatY145_eq]
      unfold seg45LadderFlatX145 seg45LadderFlatY145
      linear_combination r4850
    have ha1 : rho 43077 * seg45AccX145 rho = rho 43079 := by
      rw [seg45LadderFlatX145_eq]
      unfold seg45LadderFlatX145
      linear_combination r4851
    have ha2 : rho 43076 * seg45AccY145 rho = rho 43080 := by
      rw [seg45LadderFlatY145_eq]
      unfold seg45LadderFlatY145
      linear_combination r4852
    have ha3 : 3021 * rho 43079 * rho 43080 = rho 43081 := by
      linear_combination r4853
    have ha4 : rho 43082 * (1 + rho 43081) = rho 43079 + rho 43080 := by
      linear_combination r4854
    have ha5 : rho 43083 * (1 - rho 43081) = rho 43078 - rho 43079 - rho 43080 := by
      linear_combination r4855
    have haddx :
        rho 43082 * (1 + 3021 * (rho 43077 * seg45AccX145 rho) * (rho 43076 * seg45AccY145 rho)) =
          rho 43077 * seg45AccX145 rho + rho 43076 * seg45AccY145 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43083 * (1 - 3021 * (rho 43077 * seg45AccX145 rho) * (rho 43076 * seg45AccY145 rho)) =
          (-1) * (rho 43077 * seg45AccX145 rho) - rho 43076 * seg45AccY145 rho +
            (seg45AccY145 rho - seg45AccX145 rho * (-1)) * (rho 43076 + rho 43077) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43083 * (1 - rho 43081) = rho 43078 - rho 43079 - rho 43080 := ha5
        _ = (-1) * rho 43079 - rho 43080 + (seg45AccY145 rho - seg45AccX145 rho * (-1)) * (rho 43076 + rho 43077) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX146 rho = seg45AccX145 rho - Bool.toZMod bit * (seg45AccX145 rho - rho 43082) := by
      have hd : rho 43084 = Bool.toZMod bit * (rho 43082 - seg45AccX145 rho) := by
        rw [← hbit, seg45LadderFlatX145_eq]
        unfold seg45LadderFlatX145
        linear_combination -r4856
      unfold seg45AccX146
      linear_combination hd
    have hsely : seg45AccY146 rho = seg45AccY145 rho - Bool.toZMod bit * (seg45AccY145 rho - rho 43083) := by
      have hd : rho 43085 = Bool.toZMod bit * (rho 43083 - seg45AccY145 rho) := by
        rw [← hbit, seg45LadderFlatY145_eq]
        unfold seg45LadderFlatY145
        linear_combination -r4857
      unfold seg45AccY146
      linear_combination hd
    have hd0 : rho 43076 * rho 43077 = rho 43086 := by linear_combination r4858
    have hd1 : rho 43076 * rho 43076 = rho 43087 := by linear_combination r4859
    have hd2 : rho 43077 * rho 43077 = rho 43088 := by linear_combination r4860
    have hd3 : rho 43089 * (rho 43077 * rho 43077 + rho 43076 * rho 43076 * (-1)) = 2 * (rho 43076 * rho 43077) := by
      rw [hd0, hd1, hd2]
      linear_combination r4861
    have hd4 : rho 43090 * (2 - (rho 43077 * rho 43077 + rho 43076 * rho 43076 * (-1))) = rho 43077 * rho 43077 - rho 43076 * rho 43076 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4862
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX145 rho : Seg45.F), (seg45AccY145 rho : Seg45.F)⟩
      ⟨(rho 43076 : Seg45.F), (rho 43077 : Seg45.F)⟩
      ⟨(rho 43082 : Seg45.F), (rho 43083 : Seg45.F)⟩
      ⟨(seg45AccX146 rho : Seg45.F), (seg45AccY146 rho : Seg45.F)⟩
      ⟨(rho 43089 : Seg45.F), (rho 43090 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung145

theorem seg45_rung146 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41094 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX146 rho : Seg45.F), (seg45AccY146 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43089 : Seg45.F), (rho 43090 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX146 rho : Seg45.F), (seg45AccY146 rho : Seg45.F)⟩
        ⟨(rho 43089 : Seg45.F), (rho 43090 : Seg45.F)⟩
        ⟨(seg45AccX147 rho : Seg45.F), (seg45AccY147 rho : Seg45.F)⟩
        ⟨(rho 43102 : Seg45.F), (rho 43103 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p60, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart60 at p60
  rcases p60 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4863, r4864, r4865, r4866, r4867, r4868, r4869, r4870, r4871, r4872, r4873, r4874, r4875, _, _, _, _⟩
  unfold Seg45.relationRow4863 Seg45.relationLc765 Seg45.relationLc765Part0 Seg45.relationLc765Part1 Seg45.relationLc765Part2 Seg45.relationLc765Part3 Seg45.relationLc765Part4 Seg45.relationLc765Part5 Seg45.relationLc765Part6 Seg45.relationLc765Part7 Seg45.relationLc765Part8 Seg45.relationLc765Part9 at r4863
  unfold Seg45.relationRow4864 Seg45.relationLc766 Seg45.relationLc766Part0 Seg45.relationLc766Part1 Seg45.relationLc766Part2 Seg45.relationLc766Part3 Seg45.relationLc766Part4 at r4864
  unfold Seg45.relationRow4865 Seg45.relationLc767 Seg45.relationLc767Part0 Seg45.relationLc767Part1 Seg45.relationLc767Part2 Seg45.relationLc767Part3 Seg45.relationLc767Part4 at r4865
  unfold Seg45.relationRow4866 at r4866
  unfold Seg45.relationRow4867 at r4867
  unfold Seg45.relationRow4868 at r4868
  unfold Seg45.relationRow4869 Seg45.relationLc768 Seg45.relationLc768Part0 Seg45.relationLc768Part1 Seg45.relationLc768Part2 Seg45.relationLc768Part3 Seg45.relationLc768Part4 at r4869
  unfold Seg45.relationRow4870 Seg45.relationLc769 Seg45.relationLc769Part0 Seg45.relationLc769Part1 Seg45.relationLc769Part2 Seg45.relationLc769Part3 Seg45.relationLc769Part4 at r4870
  unfold Seg45.relationRow4871 at r4871
  unfold Seg45.relationRow4872 at r4872
  unfold Seg45.relationRow4873 at r4873
  unfold Seg45.relationRow4874 at r4874
  unfold Seg45.relationRow4875 at r4875
  have hrung146 (bit : Bool) (hbit : rho 41094 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX146 rho : Seg45.F), (seg45AccY146 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43089 : Seg45.F), (rho 43090 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX146 rho : Seg45.F), (seg45AccY146 rho : Seg45.F)⟩
        ⟨(rho 43089 : Seg45.F), (rho 43090 : Seg45.F)⟩
        ⟨(seg45AccX147 rho : Seg45.F), (seg45AccY147 rho : Seg45.F)⟩
        ⟨(rho 43102 : Seg45.F), (rho 43103 : Seg45.F)⟩ := by
    have ha0 : (rho 43089 + rho 43090) * (seg45AccX146 rho + seg45AccY146 rho) = rho 43091 := by
      rw [seg45LadderFlatX146_eq, seg45LadderFlatY146_eq]
      unfold seg45LadderFlatX146 seg45LadderFlatY146
      linear_combination r4863
    have ha1 : rho 43090 * seg45AccX146 rho = rho 43092 := by
      rw [seg45LadderFlatX146_eq]
      unfold seg45LadderFlatX146
      linear_combination r4864
    have ha2 : rho 43089 * seg45AccY146 rho = rho 43093 := by
      rw [seg45LadderFlatY146_eq]
      unfold seg45LadderFlatY146
      linear_combination r4865
    have ha3 : 3021 * rho 43092 * rho 43093 = rho 43094 := by
      linear_combination r4866
    have ha4 : rho 43095 * (1 + rho 43094) = rho 43092 + rho 43093 := by
      linear_combination r4867
    have ha5 : rho 43096 * (1 - rho 43094) = rho 43091 - rho 43092 - rho 43093 := by
      linear_combination r4868
    have haddx :
        rho 43095 * (1 + 3021 * (rho 43090 * seg45AccX146 rho) * (rho 43089 * seg45AccY146 rho)) =
          rho 43090 * seg45AccX146 rho + rho 43089 * seg45AccY146 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43096 * (1 - 3021 * (rho 43090 * seg45AccX146 rho) * (rho 43089 * seg45AccY146 rho)) =
          (-1) * (rho 43090 * seg45AccX146 rho) - rho 43089 * seg45AccY146 rho +
            (seg45AccY146 rho - seg45AccX146 rho * (-1)) * (rho 43089 + rho 43090) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43096 * (1 - rho 43094) = rho 43091 - rho 43092 - rho 43093 := ha5
        _ = (-1) * rho 43092 - rho 43093 + (seg45AccY146 rho - seg45AccX146 rho * (-1)) * (rho 43089 + rho 43090) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX147 rho = seg45AccX146 rho - Bool.toZMod bit * (seg45AccX146 rho - rho 43095) := by
      have hd : rho 43097 = Bool.toZMod bit * (rho 43095 - seg45AccX146 rho) := by
        rw [← hbit, seg45LadderFlatX146_eq]
        unfold seg45LadderFlatX146
        linear_combination -r4869
      unfold seg45AccX147
      linear_combination hd
    have hsely : seg45AccY147 rho = seg45AccY146 rho - Bool.toZMod bit * (seg45AccY146 rho - rho 43096) := by
      have hd : rho 43098 = Bool.toZMod bit * (rho 43096 - seg45AccY146 rho) := by
        rw [← hbit, seg45LadderFlatY146_eq]
        unfold seg45LadderFlatY146
        linear_combination -r4870
      unfold seg45AccY147
      linear_combination hd
    have hd0 : rho 43089 * rho 43090 = rho 43099 := by linear_combination r4871
    have hd1 : rho 43089 * rho 43089 = rho 43100 := by linear_combination r4872
    have hd2 : rho 43090 * rho 43090 = rho 43101 := by linear_combination r4873
    have hd3 : rho 43102 * (rho 43090 * rho 43090 + rho 43089 * rho 43089 * (-1)) = 2 * (rho 43089 * rho 43090) := by
      rw [hd0, hd1, hd2]
      linear_combination r4874
    have hd4 : rho 43103 * (2 - (rho 43090 * rho 43090 + rho 43089 * rho 43089 * (-1))) = rho 43090 * rho 43090 - rho 43089 * rho 43089 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4875
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX146 rho : Seg45.F), (seg45AccY146 rho : Seg45.F)⟩
      ⟨(rho 43089 : Seg45.F), (rho 43090 : Seg45.F)⟩
      ⟨(rho 43095 : Seg45.F), (rho 43096 : Seg45.F)⟩
      ⟨(seg45AccX147 rho : Seg45.F), (seg45AccY147 rho : Seg45.F)⟩
      ⟨(rho 43102 : Seg45.F), (rho 43103 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung146

theorem seg45_rung147 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41095 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX147 rho : Seg45.F), (seg45AccY147 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43102 : Seg45.F), (rho 43103 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX147 rho : Seg45.F), (seg45AccY147 rho : Seg45.F)⟩
        ⟨(rho 43102 : Seg45.F), (rho 43103 : Seg45.F)⟩
        ⟨(seg45AccX148 rho : Seg45.F), (seg45AccY148 rho : Seg45.F)⟩
        ⟨(rho 43115 : Seg45.F), (rho 43116 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p60, p61, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart60 at p60
  rcases p60 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4876, r4877, r4878, r4879⟩
  unfold Seg45.relationPart61 at p61
  rcases p61 with ⟨r4880, r4881, r4882, r4883, r4884, r4885, r4886, r4887, r4888, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow4876 Seg45.relationLc770 Seg45.relationLc770Part0 Seg45.relationLc770Part1 Seg45.relationLc770Part2 Seg45.relationLc770Part3 Seg45.relationLc770Part4 Seg45.relationLc770Part5 Seg45.relationLc770Part6 Seg45.relationLc770Part7 Seg45.relationLc770Part8 Seg45.relationLc770Part9 at r4876
  unfold Seg45.relationRow4877 Seg45.relationLc771 Seg45.relationLc771Part0 Seg45.relationLc771Part1 Seg45.relationLc771Part2 Seg45.relationLc771Part3 Seg45.relationLc771Part4 at r4877
  unfold Seg45.relationRow4878 Seg45.relationLc772 Seg45.relationLc772Part0 Seg45.relationLc772Part1 Seg45.relationLc772Part2 Seg45.relationLc772Part3 Seg45.relationLc772Part4 at r4878
  unfold Seg45.relationRow4879 at r4879
  unfold Seg45.relationRow4880 at r4880
  unfold Seg45.relationRow4881 at r4881
  unfold Seg45.relationRow4882 Seg45.relationLc773 Seg45.relationLc773Part0 Seg45.relationLc773Part1 Seg45.relationLc773Part2 Seg45.relationLc773Part3 Seg45.relationLc773Part4 at r4882
  unfold Seg45.relationRow4883 Seg45.relationLc774 Seg45.relationLc774Part0 Seg45.relationLc774Part1 Seg45.relationLc774Part2 Seg45.relationLc774Part3 Seg45.relationLc774Part4 at r4883
  unfold Seg45.relationRow4884 at r4884
  unfold Seg45.relationRow4885 at r4885
  unfold Seg45.relationRow4886 at r4886
  unfold Seg45.relationRow4887 at r4887
  unfold Seg45.relationRow4888 at r4888
  have hrung147 (bit : Bool) (hbit : rho 41095 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX147 rho : Seg45.F), (seg45AccY147 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43102 : Seg45.F), (rho 43103 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX147 rho : Seg45.F), (seg45AccY147 rho : Seg45.F)⟩
        ⟨(rho 43102 : Seg45.F), (rho 43103 : Seg45.F)⟩
        ⟨(seg45AccX148 rho : Seg45.F), (seg45AccY148 rho : Seg45.F)⟩
        ⟨(rho 43115 : Seg45.F), (rho 43116 : Seg45.F)⟩ := by
    have ha0 : (rho 43102 + rho 43103) * (seg45AccX147 rho + seg45AccY147 rho) = rho 43104 := by
      rw [seg45LadderFlatX147_eq, seg45LadderFlatY147_eq]
      unfold seg45LadderFlatX147 seg45LadderFlatY147
      linear_combination r4876
    have ha1 : rho 43103 * seg45AccX147 rho = rho 43105 := by
      rw [seg45LadderFlatX147_eq]
      unfold seg45LadderFlatX147
      linear_combination r4877
    have ha2 : rho 43102 * seg45AccY147 rho = rho 43106 := by
      rw [seg45LadderFlatY147_eq]
      unfold seg45LadderFlatY147
      linear_combination r4878
    have ha3 : 3021 * rho 43105 * rho 43106 = rho 43107 := by
      linear_combination r4879
    have ha4 : rho 43108 * (1 + rho 43107) = rho 43105 + rho 43106 := by
      linear_combination r4880
    have ha5 : rho 43109 * (1 - rho 43107) = rho 43104 - rho 43105 - rho 43106 := by
      linear_combination r4881
    have haddx :
        rho 43108 * (1 + 3021 * (rho 43103 * seg45AccX147 rho) * (rho 43102 * seg45AccY147 rho)) =
          rho 43103 * seg45AccX147 rho + rho 43102 * seg45AccY147 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43109 * (1 - 3021 * (rho 43103 * seg45AccX147 rho) * (rho 43102 * seg45AccY147 rho)) =
          (-1) * (rho 43103 * seg45AccX147 rho) - rho 43102 * seg45AccY147 rho +
            (seg45AccY147 rho - seg45AccX147 rho * (-1)) * (rho 43102 + rho 43103) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43109 * (1 - rho 43107) = rho 43104 - rho 43105 - rho 43106 := ha5
        _ = (-1) * rho 43105 - rho 43106 + (seg45AccY147 rho - seg45AccX147 rho * (-1)) * (rho 43102 + rho 43103) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX148 rho = seg45AccX147 rho - Bool.toZMod bit * (seg45AccX147 rho - rho 43108) := by
      have hd : rho 43110 = Bool.toZMod bit * (rho 43108 - seg45AccX147 rho) := by
        rw [← hbit, seg45LadderFlatX147_eq]
        unfold seg45LadderFlatX147
        linear_combination -r4882
      unfold seg45AccX148
      linear_combination hd
    have hsely : seg45AccY148 rho = seg45AccY147 rho - Bool.toZMod bit * (seg45AccY147 rho - rho 43109) := by
      have hd : rho 43111 = Bool.toZMod bit * (rho 43109 - seg45AccY147 rho) := by
        rw [← hbit, seg45LadderFlatY147_eq]
        unfold seg45LadderFlatY147
        linear_combination -r4883
      unfold seg45AccY148
      linear_combination hd
    have hd0 : rho 43102 * rho 43103 = rho 43112 := by linear_combination r4884
    have hd1 : rho 43102 * rho 43102 = rho 43113 := by linear_combination r4885
    have hd2 : rho 43103 * rho 43103 = rho 43114 := by linear_combination r4886
    have hd3 : rho 43115 * (rho 43103 * rho 43103 + rho 43102 * rho 43102 * (-1)) = 2 * (rho 43102 * rho 43103) := by
      rw [hd0, hd1, hd2]
      linear_combination r4887
    have hd4 : rho 43116 * (2 - (rho 43103 * rho 43103 + rho 43102 * rho 43102 * (-1))) = rho 43103 * rho 43103 - rho 43102 * rho 43102 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4888
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX147 rho : Seg45.F), (seg45AccY147 rho : Seg45.F)⟩
      ⟨(rho 43102 : Seg45.F), (rho 43103 : Seg45.F)⟩
      ⟨(rho 43108 : Seg45.F), (rho 43109 : Seg45.F)⟩
      ⟨(seg45AccX148 rho : Seg45.F), (seg45AccY148 rho : Seg45.F)⟩
      ⟨(rho 43115 : Seg45.F), (rho 43116 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung147

theorem seg45_rung148 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41096 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX148 rho : Seg45.F), (seg45AccY148 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43115 : Seg45.F), (rho 43116 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX148 rho : Seg45.F), (seg45AccY148 rho : Seg45.F)⟩
        ⟨(rho 43115 : Seg45.F), (rho 43116 : Seg45.F)⟩
        ⟨(seg45AccX149 rho : Seg45.F), (seg45AccY149 rho : Seg45.F)⟩
        ⟨(rho 43128 : Seg45.F), (rho 43129 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p61, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart61 at p61
  rcases p61 with ⟨_, _, _, _, _, _, _, _, _, r4889, r4890, r4891, r4892, r4893, r4894, r4895, r4896, r4897, r4898, r4899, r4900, r4901, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow4889 Seg45.relationLc775 Seg45.relationLc775Part0 Seg45.relationLc775Part1 Seg45.relationLc775Part2 Seg45.relationLc775Part3 Seg45.relationLc775Part4 Seg45.relationLc775Part5 Seg45.relationLc775Part6 Seg45.relationLc775Part7 Seg45.relationLc775Part8 Seg45.relationLc775Part9 at r4889
  unfold Seg45.relationRow4890 Seg45.relationLc776 Seg45.relationLc776Part0 Seg45.relationLc776Part1 Seg45.relationLc776Part2 Seg45.relationLc776Part3 Seg45.relationLc776Part4 at r4890
  unfold Seg45.relationRow4891 Seg45.relationLc777 Seg45.relationLc777Part0 Seg45.relationLc777Part1 Seg45.relationLc777Part2 Seg45.relationLc777Part3 Seg45.relationLc777Part4 at r4891
  unfold Seg45.relationRow4892 at r4892
  unfold Seg45.relationRow4893 at r4893
  unfold Seg45.relationRow4894 at r4894
  unfold Seg45.relationRow4895 Seg45.relationLc778 Seg45.relationLc778Part0 Seg45.relationLc778Part1 Seg45.relationLc778Part2 Seg45.relationLc778Part3 Seg45.relationLc778Part4 at r4895
  unfold Seg45.relationRow4896 Seg45.relationLc779 Seg45.relationLc779Part0 Seg45.relationLc779Part1 Seg45.relationLc779Part2 Seg45.relationLc779Part3 Seg45.relationLc779Part4 at r4896
  unfold Seg45.relationRow4897 at r4897
  unfold Seg45.relationRow4898 at r4898
  unfold Seg45.relationRow4899 at r4899
  unfold Seg45.relationRow4900 at r4900
  unfold Seg45.relationRow4901 at r4901
  have hrung148 (bit : Bool) (hbit : rho 41096 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX148 rho : Seg45.F), (seg45AccY148 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43115 : Seg45.F), (rho 43116 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX148 rho : Seg45.F), (seg45AccY148 rho : Seg45.F)⟩
        ⟨(rho 43115 : Seg45.F), (rho 43116 : Seg45.F)⟩
        ⟨(seg45AccX149 rho : Seg45.F), (seg45AccY149 rho : Seg45.F)⟩
        ⟨(rho 43128 : Seg45.F), (rho 43129 : Seg45.F)⟩ := by
    have ha0 : (rho 43115 + rho 43116) * (seg45AccX148 rho + seg45AccY148 rho) = rho 43117 := by
      rw [seg45LadderFlatX148_eq, seg45LadderFlatY148_eq]
      unfold seg45LadderFlatX148 seg45LadderFlatY148
      linear_combination r4889
    have ha1 : rho 43116 * seg45AccX148 rho = rho 43118 := by
      rw [seg45LadderFlatX148_eq]
      unfold seg45LadderFlatX148
      linear_combination r4890
    have ha2 : rho 43115 * seg45AccY148 rho = rho 43119 := by
      rw [seg45LadderFlatY148_eq]
      unfold seg45LadderFlatY148
      linear_combination r4891
    have ha3 : 3021 * rho 43118 * rho 43119 = rho 43120 := by
      linear_combination r4892
    have ha4 : rho 43121 * (1 + rho 43120) = rho 43118 + rho 43119 := by
      linear_combination r4893
    have ha5 : rho 43122 * (1 - rho 43120) = rho 43117 - rho 43118 - rho 43119 := by
      linear_combination r4894
    have haddx :
        rho 43121 * (1 + 3021 * (rho 43116 * seg45AccX148 rho) * (rho 43115 * seg45AccY148 rho)) =
          rho 43116 * seg45AccX148 rho + rho 43115 * seg45AccY148 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43122 * (1 - 3021 * (rho 43116 * seg45AccX148 rho) * (rho 43115 * seg45AccY148 rho)) =
          (-1) * (rho 43116 * seg45AccX148 rho) - rho 43115 * seg45AccY148 rho +
            (seg45AccY148 rho - seg45AccX148 rho * (-1)) * (rho 43115 + rho 43116) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43122 * (1 - rho 43120) = rho 43117 - rho 43118 - rho 43119 := ha5
        _ = (-1) * rho 43118 - rho 43119 + (seg45AccY148 rho - seg45AccX148 rho * (-1)) * (rho 43115 + rho 43116) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX149 rho = seg45AccX148 rho - Bool.toZMod bit * (seg45AccX148 rho - rho 43121) := by
      have hd : rho 43123 = Bool.toZMod bit * (rho 43121 - seg45AccX148 rho) := by
        rw [← hbit, seg45LadderFlatX148_eq]
        unfold seg45LadderFlatX148
        linear_combination -r4895
      unfold seg45AccX149
      linear_combination hd
    have hsely : seg45AccY149 rho = seg45AccY148 rho - Bool.toZMod bit * (seg45AccY148 rho - rho 43122) := by
      have hd : rho 43124 = Bool.toZMod bit * (rho 43122 - seg45AccY148 rho) := by
        rw [← hbit, seg45LadderFlatY148_eq]
        unfold seg45LadderFlatY148
        linear_combination -r4896
      unfold seg45AccY149
      linear_combination hd
    have hd0 : rho 43115 * rho 43116 = rho 43125 := by linear_combination r4897
    have hd1 : rho 43115 * rho 43115 = rho 43126 := by linear_combination r4898
    have hd2 : rho 43116 * rho 43116 = rho 43127 := by linear_combination r4899
    have hd3 : rho 43128 * (rho 43116 * rho 43116 + rho 43115 * rho 43115 * (-1)) = 2 * (rho 43115 * rho 43116) := by
      rw [hd0, hd1, hd2]
      linear_combination r4900
    have hd4 : rho 43129 * (2 - (rho 43116 * rho 43116 + rho 43115 * rho 43115 * (-1))) = rho 43116 * rho 43116 - rho 43115 * rho 43115 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4901
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX148 rho : Seg45.F), (seg45AccY148 rho : Seg45.F)⟩
      ⟨(rho 43115 : Seg45.F), (rho 43116 : Seg45.F)⟩
      ⟨(rho 43121 : Seg45.F), (rho 43122 : Seg45.F)⟩
      ⟨(seg45AccX149 rho : Seg45.F), (seg45AccY149 rho : Seg45.F)⟩
      ⟨(rho 43128 : Seg45.F), (rho 43129 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung148

theorem seg45_rung149 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41097 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX149 rho : Seg45.F), (seg45AccY149 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43128 : Seg45.F), (rho 43129 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX149 rho : Seg45.F), (seg45AccY149 rho : Seg45.F)⟩
        ⟨(rho 43128 : Seg45.F), (rho 43129 : Seg45.F)⟩
        ⟨(seg45AccX150 rho : Seg45.F), (seg45AccY150 rho : Seg45.F)⟩
        ⟨(rho 43141 : Seg45.F), (rho 43142 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p61, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart61 at p61
  rcases p61 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4902, r4903, r4904, r4905, r4906, r4907, r4908, r4909, r4910, r4911, r4912, r4913, r4914, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow4902 Seg45.relationLc780 Seg45.relationLc780Part0 Seg45.relationLc780Part1 Seg45.relationLc780Part2 Seg45.relationLc780Part3 Seg45.relationLc780Part4 Seg45.relationLc780Part5 Seg45.relationLc780Part6 Seg45.relationLc780Part7 Seg45.relationLc780Part8 Seg45.relationLc780Part9 at r4902
  unfold Seg45.relationRow4903 Seg45.relationLc781 Seg45.relationLc781Part0 Seg45.relationLc781Part1 Seg45.relationLc781Part2 Seg45.relationLc781Part3 Seg45.relationLc781Part4 at r4903
  unfold Seg45.relationRow4904 Seg45.relationLc782 Seg45.relationLc782Part0 Seg45.relationLc782Part1 Seg45.relationLc782Part2 Seg45.relationLc782Part3 Seg45.relationLc782Part4 at r4904
  unfold Seg45.relationRow4905 at r4905
  unfold Seg45.relationRow4906 at r4906
  unfold Seg45.relationRow4907 at r4907
  unfold Seg45.relationRow4908 Seg45.relationLc783 Seg45.relationLc783Part0 Seg45.relationLc783Part1 Seg45.relationLc783Part2 Seg45.relationLc783Part3 Seg45.relationLc783Part4 at r4908
  unfold Seg45.relationRow4909 Seg45.relationLc784 Seg45.relationLc784Part0 Seg45.relationLc784Part1 Seg45.relationLc784Part2 Seg45.relationLc784Part3 Seg45.relationLc784Part4 at r4909
  unfold Seg45.relationRow4910 at r4910
  unfold Seg45.relationRow4911 at r4911
  unfold Seg45.relationRow4912 at r4912
  unfold Seg45.relationRow4913 at r4913
  unfold Seg45.relationRow4914 at r4914
  have hrung149 (bit : Bool) (hbit : rho 41097 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX149 rho : Seg45.F), (seg45AccY149 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43128 : Seg45.F), (rho 43129 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX149 rho : Seg45.F), (seg45AccY149 rho : Seg45.F)⟩
        ⟨(rho 43128 : Seg45.F), (rho 43129 : Seg45.F)⟩
        ⟨(seg45AccX150 rho : Seg45.F), (seg45AccY150 rho : Seg45.F)⟩
        ⟨(rho 43141 : Seg45.F), (rho 43142 : Seg45.F)⟩ := by
    have ha0 : (rho 43128 + rho 43129) * (seg45AccX149 rho + seg45AccY149 rho) = rho 43130 := by
      rw [seg45LadderFlatX149_eq, seg45LadderFlatY149_eq]
      unfold seg45LadderFlatX149 seg45LadderFlatY149
      linear_combination r4902
    have ha1 : rho 43129 * seg45AccX149 rho = rho 43131 := by
      rw [seg45LadderFlatX149_eq]
      unfold seg45LadderFlatX149
      linear_combination r4903
    have ha2 : rho 43128 * seg45AccY149 rho = rho 43132 := by
      rw [seg45LadderFlatY149_eq]
      unfold seg45LadderFlatY149
      linear_combination r4904
    have ha3 : 3021 * rho 43131 * rho 43132 = rho 43133 := by
      linear_combination r4905
    have ha4 : rho 43134 * (1 + rho 43133) = rho 43131 + rho 43132 := by
      linear_combination r4906
    have ha5 : rho 43135 * (1 - rho 43133) = rho 43130 - rho 43131 - rho 43132 := by
      linear_combination r4907
    have haddx :
        rho 43134 * (1 + 3021 * (rho 43129 * seg45AccX149 rho) * (rho 43128 * seg45AccY149 rho)) =
          rho 43129 * seg45AccX149 rho + rho 43128 * seg45AccY149 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43135 * (1 - 3021 * (rho 43129 * seg45AccX149 rho) * (rho 43128 * seg45AccY149 rho)) =
          (-1) * (rho 43129 * seg45AccX149 rho) - rho 43128 * seg45AccY149 rho +
            (seg45AccY149 rho - seg45AccX149 rho * (-1)) * (rho 43128 + rho 43129) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43135 * (1 - rho 43133) = rho 43130 - rho 43131 - rho 43132 := ha5
        _ = (-1) * rho 43131 - rho 43132 + (seg45AccY149 rho - seg45AccX149 rho * (-1)) * (rho 43128 + rho 43129) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX150 rho = seg45AccX149 rho - Bool.toZMod bit * (seg45AccX149 rho - rho 43134) := by
      have hd : rho 43136 = Bool.toZMod bit * (rho 43134 - seg45AccX149 rho) := by
        rw [← hbit, seg45LadderFlatX149_eq]
        unfold seg45LadderFlatX149
        linear_combination -r4908
      unfold seg45AccX150
      linear_combination hd
    have hsely : seg45AccY150 rho = seg45AccY149 rho - Bool.toZMod bit * (seg45AccY149 rho - rho 43135) := by
      have hd : rho 43137 = Bool.toZMod bit * (rho 43135 - seg45AccY149 rho) := by
        rw [← hbit, seg45LadderFlatY149_eq]
        unfold seg45LadderFlatY149
        linear_combination -r4909
      unfold seg45AccY150
      linear_combination hd
    have hd0 : rho 43128 * rho 43129 = rho 43138 := by linear_combination r4910
    have hd1 : rho 43128 * rho 43128 = rho 43139 := by linear_combination r4911
    have hd2 : rho 43129 * rho 43129 = rho 43140 := by linear_combination r4912
    have hd3 : rho 43141 * (rho 43129 * rho 43129 + rho 43128 * rho 43128 * (-1)) = 2 * (rho 43128 * rho 43129) := by
      rw [hd0, hd1, hd2]
      linear_combination r4913
    have hd4 : rho 43142 * (2 - (rho 43129 * rho 43129 + rho 43128 * rho 43128 * (-1))) = rho 43129 * rho 43129 - rho 43128 * rho 43128 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4914
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX149 rho : Seg45.F), (seg45AccY149 rho : Seg45.F)⟩
      ⟨(rho 43128 : Seg45.F), (rho 43129 : Seg45.F)⟩
      ⟨(rho 43134 : Seg45.F), (rho 43135 : Seg45.F)⟩
      ⟨(seg45AccX150 rho : Seg45.F), (seg45AccY150 rho : Seg45.F)⟩
      ⟨(rho 43141 : Seg45.F), (rho 43142 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung149

theorem seg45_rung150 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41098 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX150 rho : Seg45.F), (seg45AccY150 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43141 : Seg45.F), (rho 43142 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX150 rho : Seg45.F), (seg45AccY150 rho : Seg45.F)⟩
        ⟨(rho 43141 : Seg45.F), (rho 43142 : Seg45.F)⟩
        ⟨(seg45AccX151 rho : Seg45.F), (seg45AccY151 rho : Seg45.F)⟩
        ⟨(rho 43155 : Seg45.F), (rho 43156 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p61, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart61 at p61
  rcases p61 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4915, r4916, r4917, r4918, r4919, r4920, r4921, r4922, r4923, r4924, r4925, r4926, r4927, r4928, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow4915 Seg45.relationLc785 Seg45.relationLc785Part0 Seg45.relationLc785Part1 Seg45.relationLc785Part2 Seg45.relationLc785Part3 Seg45.relationLc785Part4 Seg45.relationLc785Part5 Seg45.relationLc785Part6 Seg45.relationLc785Part7 Seg45.relationLc785Part8 Seg45.relationLc785Part9 at r4915
  unfold Seg45.relationRow4916 at r4916
  unfold Seg45.relationRow4917 Seg45.relationLc786 Seg45.relationLc786Part0 Seg45.relationLc786Part1 Seg45.relationLc786Part2 Seg45.relationLc786Part3 Seg45.relationLc786Part4 at r4917
  unfold Seg45.relationRow4918 Seg45.relationLc787 Seg45.relationLc787Part0 Seg45.relationLc787Part1 Seg45.relationLc787Part2 Seg45.relationLc787Part3 Seg45.relationLc787Part4 at r4918
  unfold Seg45.relationRow4919 at r4919
  unfold Seg45.relationRow4920 at r4920
  unfold Seg45.relationRow4921 at r4921
  unfold Seg45.relationRow4922 Seg45.relationLc788 Seg45.relationLc788Part0 Seg45.relationLc788Part1 Seg45.relationLc788Part2 Seg45.relationLc788Part3 Seg45.relationLc788Part4 at r4922
  unfold Seg45.relationRow4923 Seg45.relationLc789 Seg45.relationLc789Part0 Seg45.relationLc789Part1 Seg45.relationLc789Part2 Seg45.relationLc789Part3 Seg45.relationLc789Part4 at r4923
  unfold Seg45.relationRow4924 at r4924
  unfold Seg45.relationRow4925 at r4925
  unfold Seg45.relationRow4926 at r4926
  unfold Seg45.relationRow4927 at r4927
  unfold Seg45.relationRow4928 at r4928
  have hrung150 (bit : Bool) (hbit : rho 41098 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX150 rho : Seg45.F), (seg45AccY150 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43141 : Seg45.F), (rho 43142 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX150 rho : Seg45.F), (seg45AccY150 rho : Seg45.F)⟩
        ⟨(rho 43141 : Seg45.F), (rho 43142 : Seg45.F)⟩
        ⟨(seg45AccX151 rho : Seg45.F), (seg45AccY151 rho : Seg45.F)⟩
        ⟨(rho 43155 : Seg45.F), (rho 43156 : Seg45.F)⟩ := by
    have hsum : seg45AccX150 rho + seg45AccY150 rho = rho 43143 := by
      rw [seg45LadderFlatX150_eq, seg45LadderFlatY150_eq]
      unfold seg45LadderFlatX150 seg45LadderFlatY150
      linear_combination r4915
    have ha0 : (rho 43141 + rho 43142) * (seg45AccX150 rho + seg45AccY150 rho) = rho 43144 := by
      rw [hsum]
      linear_combination r4916
    have ha1 : rho 43142 * seg45AccX150 rho = rho 43145 := by
      rw [seg45LadderFlatX150_eq]
      unfold seg45LadderFlatX150
      linear_combination r4917
    have ha2 : rho 43141 * seg45AccY150 rho = rho 43146 := by
      rw [seg45LadderFlatY150_eq]
      unfold seg45LadderFlatY150
      linear_combination r4918
    have ha3 : 3021 * rho 43145 * rho 43146 = rho 43147 := by
      linear_combination r4919
    have ha4 : rho 43148 * (1 + rho 43147) = rho 43145 + rho 43146 := by
      linear_combination r4920
    have ha5 : rho 43149 * (1 - rho 43147) = rho 43144 - rho 43145 - rho 43146 := by
      linear_combination r4921
    have haddx :
        rho 43148 * (1 + 3021 * (rho 43142 * seg45AccX150 rho) * (rho 43141 * seg45AccY150 rho)) =
          rho 43142 * seg45AccX150 rho + rho 43141 * seg45AccY150 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43149 * (1 - 3021 * (rho 43142 * seg45AccX150 rho) * (rho 43141 * seg45AccY150 rho)) =
          (-1) * (rho 43142 * seg45AccX150 rho) - rho 43141 * seg45AccY150 rho +
            (seg45AccY150 rho - seg45AccX150 rho * (-1)) * (rho 43141 + rho 43142) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43149 * (1 - rho 43147) = rho 43144 - rho 43145 - rho 43146 := ha5
        _ = (-1) * rho 43145 - rho 43146 + (seg45AccY150 rho - seg45AccX150 rho * (-1)) * (rho 43141 + rho 43142) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX151 rho = seg45AccX150 rho - Bool.toZMod bit * (seg45AccX150 rho - rho 43148) := by
      have hd : rho 43150 = Bool.toZMod bit * (rho 43148 - seg45AccX150 rho) := by
        rw [← hbit, seg45LadderFlatX150_eq]
        unfold seg45LadderFlatX150
        linear_combination -r4922
      unfold seg45AccX151
      linear_combination hd
    have hsely : seg45AccY151 rho = seg45AccY150 rho - Bool.toZMod bit * (seg45AccY150 rho - rho 43149) := by
      have hd : rho 43151 = Bool.toZMod bit * (rho 43149 - seg45AccY150 rho) := by
        rw [← hbit, seg45LadderFlatY150_eq]
        unfold seg45LadderFlatY150
        linear_combination -r4923
      unfold seg45AccY151
      linear_combination hd
    have hd0 : rho 43141 * rho 43142 = rho 43152 := by linear_combination r4924
    have hd1 : rho 43141 * rho 43141 = rho 43153 := by linear_combination r4925
    have hd2 : rho 43142 * rho 43142 = rho 43154 := by linear_combination r4926
    have hd3 : rho 43155 * (rho 43142 * rho 43142 + rho 43141 * rho 43141 * (-1)) = 2 * (rho 43141 * rho 43142) := by
      rw [hd0, hd1, hd2]
      linear_combination r4927
    have hd4 : rho 43156 * (2 - (rho 43142 * rho 43142 + rho 43141 * rho 43141 * (-1))) = rho 43142 * rho 43142 - rho 43141 * rho 43141 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4928
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX150 rho : Seg45.F), (seg45AccY150 rho : Seg45.F)⟩
      ⟨(rho 43141 : Seg45.F), (rho 43142 : Seg45.F)⟩
      ⟨(rho 43148 : Seg45.F), (rho 43149 : Seg45.F)⟩
      ⟨(seg45AccX151 rho : Seg45.F), (seg45AccY151 rho : Seg45.F)⟩
      ⟨(rho 43155 : Seg45.F), (rho 43156 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung150

theorem seg45_rung151 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41099 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX151 rho : Seg45.F), (seg45AccY151 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43155 : Seg45.F), (rho 43156 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX151 rho : Seg45.F), (seg45AccY151 rho : Seg45.F)⟩
        ⟨(rho 43155 : Seg45.F), (rho 43156 : Seg45.F)⟩
        ⟨(seg45AccX152 rho : Seg45.F), (seg45AccY152 rho : Seg45.F)⟩
        ⟨(rho 43169 : Seg45.F), (rho 43170 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p61, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart61 at p61
  rcases p61 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4929, r4930, r4931, r4932, r4933, r4934, r4935, r4936, r4937, r4938, r4939, r4940, r4941, r4942, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow4929 Seg45.relationLc790 Seg45.relationLc790Part0 Seg45.relationLc790Part1 Seg45.relationLc790Part2 Seg45.relationLc790Part3 Seg45.relationLc790Part4 Seg45.relationLc790Part5 Seg45.relationLc790Part6 Seg45.relationLc790Part7 Seg45.relationLc790Part8 Seg45.relationLc790Part9 at r4929
  unfold Seg45.relationRow4930 at r4930
  unfold Seg45.relationRow4931 Seg45.relationLc791 Seg45.relationLc791Part0 Seg45.relationLc791Part1 Seg45.relationLc791Part2 Seg45.relationLc791Part3 Seg45.relationLc791Part4 at r4931
  unfold Seg45.relationRow4932 Seg45.relationLc792 Seg45.relationLc792Part0 Seg45.relationLc792Part1 Seg45.relationLc792Part2 Seg45.relationLc792Part3 Seg45.relationLc792Part4 at r4932
  unfold Seg45.relationRow4933 at r4933
  unfold Seg45.relationRow4934 at r4934
  unfold Seg45.relationRow4935 at r4935
  unfold Seg45.relationRow4936 Seg45.relationLc793 Seg45.relationLc793Part0 Seg45.relationLc793Part1 Seg45.relationLc793Part2 Seg45.relationLc793Part3 Seg45.relationLc793Part4 at r4936
  unfold Seg45.relationRow4937 Seg45.relationLc794 Seg45.relationLc794Part0 Seg45.relationLc794Part1 Seg45.relationLc794Part2 Seg45.relationLc794Part3 Seg45.relationLc794Part4 at r4937
  unfold Seg45.relationRow4938 at r4938
  unfold Seg45.relationRow4939 at r4939
  unfold Seg45.relationRow4940 at r4940
  unfold Seg45.relationRow4941 at r4941
  unfold Seg45.relationRow4942 at r4942
  have hrung151 (bit : Bool) (hbit : rho 41099 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX151 rho : Seg45.F), (seg45AccY151 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43155 : Seg45.F), (rho 43156 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX151 rho : Seg45.F), (seg45AccY151 rho : Seg45.F)⟩
        ⟨(rho 43155 : Seg45.F), (rho 43156 : Seg45.F)⟩
        ⟨(seg45AccX152 rho : Seg45.F), (seg45AccY152 rho : Seg45.F)⟩
        ⟨(rho 43169 : Seg45.F), (rho 43170 : Seg45.F)⟩ := by
    have hsum : seg45AccX151 rho + seg45AccY151 rho = rho 43157 := by
      rw [seg45LadderFlatX151_eq, seg45LadderFlatY151_eq]
      unfold seg45LadderFlatX151 seg45LadderFlatY151
      linear_combination r4929
    have ha0 : (rho 43155 + rho 43156) * (seg45AccX151 rho + seg45AccY151 rho) = rho 43158 := by
      rw [hsum]
      linear_combination r4930
    have ha1 : rho 43156 * seg45AccX151 rho = rho 43159 := by
      rw [seg45LadderFlatX151_eq]
      unfold seg45LadderFlatX151
      linear_combination r4931
    have ha2 : rho 43155 * seg45AccY151 rho = rho 43160 := by
      rw [seg45LadderFlatY151_eq]
      unfold seg45LadderFlatY151
      linear_combination r4932
    have ha3 : 3021 * rho 43159 * rho 43160 = rho 43161 := by
      linear_combination r4933
    have ha4 : rho 43162 * (1 + rho 43161) = rho 43159 + rho 43160 := by
      linear_combination r4934
    have ha5 : rho 43163 * (1 - rho 43161) = rho 43158 - rho 43159 - rho 43160 := by
      linear_combination r4935
    have haddx :
        rho 43162 * (1 + 3021 * (rho 43156 * seg45AccX151 rho) * (rho 43155 * seg45AccY151 rho)) =
          rho 43156 * seg45AccX151 rho + rho 43155 * seg45AccY151 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43163 * (1 - 3021 * (rho 43156 * seg45AccX151 rho) * (rho 43155 * seg45AccY151 rho)) =
          (-1) * (rho 43156 * seg45AccX151 rho) - rho 43155 * seg45AccY151 rho +
            (seg45AccY151 rho - seg45AccX151 rho * (-1)) * (rho 43155 + rho 43156) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43163 * (1 - rho 43161) = rho 43158 - rho 43159 - rho 43160 := ha5
        _ = (-1) * rho 43159 - rho 43160 + (seg45AccY151 rho - seg45AccX151 rho * (-1)) * (rho 43155 + rho 43156) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX152 rho = seg45AccX151 rho - Bool.toZMod bit * (seg45AccX151 rho - rho 43162) := by
      have hd : rho 43164 = Bool.toZMod bit * (rho 43162 - seg45AccX151 rho) := by
        rw [← hbit, seg45LadderFlatX151_eq]
        unfold seg45LadderFlatX151
        linear_combination -r4936
      unfold seg45AccX152
      linear_combination hd
    have hsely : seg45AccY152 rho = seg45AccY151 rho - Bool.toZMod bit * (seg45AccY151 rho - rho 43163) := by
      have hd : rho 43165 = Bool.toZMod bit * (rho 43163 - seg45AccY151 rho) := by
        rw [← hbit, seg45LadderFlatY151_eq]
        unfold seg45LadderFlatY151
        linear_combination -r4937
      unfold seg45AccY152
      linear_combination hd
    have hd0 : rho 43155 * rho 43156 = rho 43166 := by linear_combination r4938
    have hd1 : rho 43155 * rho 43155 = rho 43167 := by linear_combination r4939
    have hd2 : rho 43156 * rho 43156 = rho 43168 := by linear_combination r4940
    have hd3 : rho 43169 * (rho 43156 * rho 43156 + rho 43155 * rho 43155 * (-1)) = 2 * (rho 43155 * rho 43156) := by
      rw [hd0, hd1, hd2]
      linear_combination r4941
    have hd4 : rho 43170 * (2 - (rho 43156 * rho 43156 + rho 43155 * rho 43155 * (-1))) = rho 43156 * rho 43156 - rho 43155 * rho 43155 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4942
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX151 rho : Seg45.F), (seg45AccY151 rho : Seg45.F)⟩
      ⟨(rho 43155 : Seg45.F), (rho 43156 : Seg45.F)⟩
      ⟨(rho 43162 : Seg45.F), (rho 43163 : Seg45.F)⟩
      ⟨(seg45AccX152 rho : Seg45.F), (seg45AccY152 rho : Seg45.F)⟩
      ⟨(rho 43169 : Seg45.F), (rho 43170 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung151

theorem seg45_rung152 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41100 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX152 rho : Seg45.F), (seg45AccY152 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43169 : Seg45.F), (rho 43170 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX152 rho : Seg45.F), (seg45AccY152 rho : Seg45.F)⟩
        ⟨(rho 43169 : Seg45.F), (rho 43170 : Seg45.F)⟩
        ⟨(seg45AccX153 rho : Seg45.F), (seg45AccY153 rho : Seg45.F)⟩
        ⟨(rho 43183 : Seg45.F), (rho 43184 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p61, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart61 at p61
  rcases p61 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4943, r4944, r4945, r4946, r4947, r4948, r4949, r4950, r4951, r4952, r4953, r4954, r4955, r4956, _, _, _⟩
  unfold Seg45.relationRow4943 Seg45.relationLc795 Seg45.relationLc795Part0 Seg45.relationLc795Part1 Seg45.relationLc795Part2 Seg45.relationLc795Part3 Seg45.relationLc795Part4 Seg45.relationLc795Part5 Seg45.relationLc795Part6 Seg45.relationLc795Part7 Seg45.relationLc795Part8 Seg45.relationLc795Part9 at r4943
  unfold Seg45.relationRow4944 at r4944
  unfold Seg45.relationRow4945 Seg45.relationLc796 Seg45.relationLc796Part0 Seg45.relationLc796Part1 Seg45.relationLc796Part2 Seg45.relationLc796Part3 Seg45.relationLc796Part4 at r4945
  unfold Seg45.relationRow4946 Seg45.relationLc797 Seg45.relationLc797Part0 Seg45.relationLc797Part1 Seg45.relationLc797Part2 Seg45.relationLc797Part3 Seg45.relationLc797Part4 at r4946
  unfold Seg45.relationRow4947 at r4947
  unfold Seg45.relationRow4948 at r4948
  unfold Seg45.relationRow4949 at r4949
  unfold Seg45.relationRow4950 Seg45.relationLc798 Seg45.relationLc798Part0 Seg45.relationLc798Part1 Seg45.relationLc798Part2 Seg45.relationLc798Part3 Seg45.relationLc798Part4 at r4950
  unfold Seg45.relationRow4951 Seg45.relationLc799 Seg45.relationLc799Part0 Seg45.relationLc799Part1 Seg45.relationLc799Part2 Seg45.relationLc799Part3 Seg45.relationLc799Part4 at r4951
  unfold Seg45.relationRow4952 at r4952
  unfold Seg45.relationRow4953 at r4953
  unfold Seg45.relationRow4954 at r4954
  unfold Seg45.relationRow4955 at r4955
  unfold Seg45.relationRow4956 at r4956
  have hrung152 (bit : Bool) (hbit : rho 41100 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX152 rho : Seg45.F), (seg45AccY152 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43169 : Seg45.F), (rho 43170 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX152 rho : Seg45.F), (seg45AccY152 rho : Seg45.F)⟩
        ⟨(rho 43169 : Seg45.F), (rho 43170 : Seg45.F)⟩
        ⟨(seg45AccX153 rho : Seg45.F), (seg45AccY153 rho : Seg45.F)⟩
        ⟨(rho 43183 : Seg45.F), (rho 43184 : Seg45.F)⟩ := by
    have hsum : seg45AccX152 rho + seg45AccY152 rho = rho 43171 := by
      rw [seg45LadderFlatX152_eq, seg45LadderFlatY152_eq]
      unfold seg45LadderFlatX152 seg45LadderFlatY152
      linear_combination r4943
    have ha0 : (rho 43169 + rho 43170) * (seg45AccX152 rho + seg45AccY152 rho) = rho 43172 := by
      rw [hsum]
      linear_combination r4944
    have ha1 : rho 43170 * seg45AccX152 rho = rho 43173 := by
      rw [seg45LadderFlatX152_eq]
      unfold seg45LadderFlatX152
      linear_combination r4945
    have ha2 : rho 43169 * seg45AccY152 rho = rho 43174 := by
      rw [seg45LadderFlatY152_eq]
      unfold seg45LadderFlatY152
      linear_combination r4946
    have ha3 : 3021 * rho 43173 * rho 43174 = rho 43175 := by
      linear_combination r4947
    have ha4 : rho 43176 * (1 + rho 43175) = rho 43173 + rho 43174 := by
      linear_combination r4948
    have ha5 : rho 43177 * (1 - rho 43175) = rho 43172 - rho 43173 - rho 43174 := by
      linear_combination r4949
    have haddx :
        rho 43176 * (1 + 3021 * (rho 43170 * seg45AccX152 rho) * (rho 43169 * seg45AccY152 rho)) =
          rho 43170 * seg45AccX152 rho + rho 43169 * seg45AccY152 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43177 * (1 - 3021 * (rho 43170 * seg45AccX152 rho) * (rho 43169 * seg45AccY152 rho)) =
          (-1) * (rho 43170 * seg45AccX152 rho) - rho 43169 * seg45AccY152 rho +
            (seg45AccY152 rho - seg45AccX152 rho * (-1)) * (rho 43169 + rho 43170) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43177 * (1 - rho 43175) = rho 43172 - rho 43173 - rho 43174 := ha5
        _ = (-1) * rho 43173 - rho 43174 + (seg45AccY152 rho - seg45AccX152 rho * (-1)) * (rho 43169 + rho 43170) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX153 rho = seg45AccX152 rho - Bool.toZMod bit * (seg45AccX152 rho - rho 43176) := by
      have hd : rho 43178 = Bool.toZMod bit * (rho 43176 - seg45AccX152 rho) := by
        rw [← hbit, seg45LadderFlatX152_eq]
        unfold seg45LadderFlatX152
        linear_combination -r4950
      unfold seg45AccX153
      linear_combination hd
    have hsely : seg45AccY153 rho = seg45AccY152 rho - Bool.toZMod bit * (seg45AccY152 rho - rho 43177) := by
      have hd : rho 43179 = Bool.toZMod bit * (rho 43177 - seg45AccY152 rho) := by
        rw [← hbit, seg45LadderFlatY152_eq]
        unfold seg45LadderFlatY152
        linear_combination -r4951
      unfold seg45AccY153
      linear_combination hd
    have hd0 : rho 43169 * rho 43170 = rho 43180 := by linear_combination r4952
    have hd1 : rho 43169 * rho 43169 = rho 43181 := by linear_combination r4953
    have hd2 : rho 43170 * rho 43170 = rho 43182 := by linear_combination r4954
    have hd3 : rho 43183 * (rho 43170 * rho 43170 + rho 43169 * rho 43169 * (-1)) = 2 * (rho 43169 * rho 43170) := by
      rw [hd0, hd1, hd2]
      linear_combination r4955
    have hd4 : rho 43184 * (2 - (rho 43170 * rho 43170 + rho 43169 * rho 43169 * (-1))) = rho 43170 * rho 43170 - rho 43169 * rho 43169 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4956
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX152 rho : Seg45.F), (seg45AccY152 rho : Seg45.F)⟩
      ⟨(rho 43169 : Seg45.F), (rho 43170 : Seg45.F)⟩
      ⟨(rho 43176 : Seg45.F), (rho 43177 : Seg45.F)⟩
      ⟨(seg45AccX153 rho : Seg45.F), (seg45AccY153 rho : Seg45.F)⟩
      ⟨(rho 43183 : Seg45.F), (rho 43184 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung152

theorem seg45_rung153 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41101 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX153 rho : Seg45.F), (seg45AccY153 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43183 : Seg45.F), (rho 43184 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX153 rho : Seg45.F), (seg45AccY153 rho : Seg45.F)⟩
        ⟨(rho 43183 : Seg45.F), (rho 43184 : Seg45.F)⟩
        ⟨(seg45AccX154 rho : Seg45.F), (seg45AccY154 rho : Seg45.F)⟩
        ⟨(rho 43197 : Seg45.F), (rho 43198 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p61, p62, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart61 at p61
  rcases p61 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4957, r4958, r4959⟩
  unfold Seg45.relationPart62 at p62
  rcases p62 with ⟨r4960, r4961, r4962, r4963, r4964, r4965, r4966, r4967, r4968, r4969, r4970, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow4957 Seg45.relationLc800 Seg45.relationLc800Part0 Seg45.relationLc800Part1 Seg45.relationLc800Part2 Seg45.relationLc800Part3 Seg45.relationLc800Part4 Seg45.relationLc800Part5 Seg45.relationLc800Part6 Seg45.relationLc800Part7 Seg45.relationLc800Part8 Seg45.relationLc800Part9 at r4957
  unfold Seg45.relationRow4958 at r4958
  unfold Seg45.relationRow4959 Seg45.relationLc801 Seg45.relationLc801Part0 Seg45.relationLc801Part1 Seg45.relationLc801Part2 Seg45.relationLc801Part3 Seg45.relationLc801Part4 at r4959
  unfold Seg45.relationRow4960 Seg45.relationLc802 Seg45.relationLc802Part0 Seg45.relationLc802Part1 Seg45.relationLc802Part2 Seg45.relationLc802Part3 Seg45.relationLc802Part4 at r4960
  unfold Seg45.relationRow4961 at r4961
  unfold Seg45.relationRow4962 at r4962
  unfold Seg45.relationRow4963 at r4963
  unfold Seg45.relationRow4964 Seg45.relationLc803 Seg45.relationLc803Part0 Seg45.relationLc803Part1 Seg45.relationLc803Part2 Seg45.relationLc803Part3 Seg45.relationLc803Part4 at r4964
  unfold Seg45.relationRow4965 Seg45.relationLc804 Seg45.relationLc804Part0 Seg45.relationLc804Part1 Seg45.relationLc804Part2 Seg45.relationLc804Part3 Seg45.relationLc804Part4 at r4965
  unfold Seg45.relationRow4966 at r4966
  unfold Seg45.relationRow4967 at r4967
  unfold Seg45.relationRow4968 at r4968
  unfold Seg45.relationRow4969 at r4969
  unfold Seg45.relationRow4970 at r4970
  have hrung153 (bit : Bool) (hbit : rho 41101 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX153 rho : Seg45.F), (seg45AccY153 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43183 : Seg45.F), (rho 43184 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX153 rho : Seg45.F), (seg45AccY153 rho : Seg45.F)⟩
        ⟨(rho 43183 : Seg45.F), (rho 43184 : Seg45.F)⟩
        ⟨(seg45AccX154 rho : Seg45.F), (seg45AccY154 rho : Seg45.F)⟩
        ⟨(rho 43197 : Seg45.F), (rho 43198 : Seg45.F)⟩ := by
    have hsum : seg45AccX153 rho + seg45AccY153 rho = rho 43185 := by
      rw [seg45LadderFlatX153_eq, seg45LadderFlatY153_eq]
      unfold seg45LadderFlatX153 seg45LadderFlatY153
      linear_combination r4957
    have ha0 : (rho 43183 + rho 43184) * (seg45AccX153 rho + seg45AccY153 rho) = rho 43186 := by
      rw [hsum]
      linear_combination r4958
    have ha1 : rho 43184 * seg45AccX153 rho = rho 43187 := by
      rw [seg45LadderFlatX153_eq]
      unfold seg45LadderFlatX153
      linear_combination r4959
    have ha2 : rho 43183 * seg45AccY153 rho = rho 43188 := by
      rw [seg45LadderFlatY153_eq]
      unfold seg45LadderFlatY153
      linear_combination r4960
    have ha3 : 3021 * rho 43187 * rho 43188 = rho 43189 := by
      linear_combination r4961
    have ha4 : rho 43190 * (1 + rho 43189) = rho 43187 + rho 43188 := by
      linear_combination r4962
    have ha5 : rho 43191 * (1 - rho 43189) = rho 43186 - rho 43187 - rho 43188 := by
      linear_combination r4963
    have haddx :
        rho 43190 * (1 + 3021 * (rho 43184 * seg45AccX153 rho) * (rho 43183 * seg45AccY153 rho)) =
          rho 43184 * seg45AccX153 rho + rho 43183 * seg45AccY153 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43191 * (1 - 3021 * (rho 43184 * seg45AccX153 rho) * (rho 43183 * seg45AccY153 rho)) =
          (-1) * (rho 43184 * seg45AccX153 rho) - rho 43183 * seg45AccY153 rho +
            (seg45AccY153 rho - seg45AccX153 rho * (-1)) * (rho 43183 + rho 43184) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43191 * (1 - rho 43189) = rho 43186 - rho 43187 - rho 43188 := ha5
        _ = (-1) * rho 43187 - rho 43188 + (seg45AccY153 rho - seg45AccX153 rho * (-1)) * (rho 43183 + rho 43184) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX154 rho = seg45AccX153 rho - Bool.toZMod bit * (seg45AccX153 rho - rho 43190) := by
      have hd : rho 43192 = Bool.toZMod bit * (rho 43190 - seg45AccX153 rho) := by
        rw [← hbit, seg45LadderFlatX153_eq]
        unfold seg45LadderFlatX153
        linear_combination -r4964
      unfold seg45AccX154
      linear_combination hd
    have hsely : seg45AccY154 rho = seg45AccY153 rho - Bool.toZMod bit * (seg45AccY153 rho - rho 43191) := by
      have hd : rho 43193 = Bool.toZMod bit * (rho 43191 - seg45AccY153 rho) := by
        rw [← hbit, seg45LadderFlatY153_eq]
        unfold seg45LadderFlatY153
        linear_combination -r4965
      unfold seg45AccY154
      linear_combination hd
    have hd0 : rho 43183 * rho 43184 = rho 43194 := by linear_combination r4966
    have hd1 : rho 43183 * rho 43183 = rho 43195 := by linear_combination r4967
    have hd2 : rho 43184 * rho 43184 = rho 43196 := by linear_combination r4968
    have hd3 : rho 43197 * (rho 43184 * rho 43184 + rho 43183 * rho 43183 * (-1)) = 2 * (rho 43183 * rho 43184) := by
      rw [hd0, hd1, hd2]
      linear_combination r4969
    have hd4 : rho 43198 * (2 - (rho 43184 * rho 43184 + rho 43183 * rho 43183 * (-1))) = rho 43184 * rho 43184 - rho 43183 * rho 43183 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4970
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX153 rho : Seg45.F), (seg45AccY153 rho : Seg45.F)⟩
      ⟨(rho 43183 : Seg45.F), (rho 43184 : Seg45.F)⟩
      ⟨(rho 43190 : Seg45.F), (rho 43191 : Seg45.F)⟩
      ⟨(seg45AccX154 rho : Seg45.F), (seg45AccY154 rho : Seg45.F)⟩
      ⟨(rho 43197 : Seg45.F), (rho 43198 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung153

theorem seg45_rung154 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41102 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX154 rho : Seg45.F), (seg45AccY154 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43197 : Seg45.F), (rho 43198 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX154 rho : Seg45.F), (seg45AccY154 rho : Seg45.F)⟩
        ⟨(rho 43197 : Seg45.F), (rho 43198 : Seg45.F)⟩
        ⟨(seg45AccX155 rho : Seg45.F), (seg45AccY155 rho : Seg45.F)⟩
        ⟨(rho 43211 : Seg45.F), (rho 43212 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p62, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart62 at p62
  rcases p62 with ⟨_, _, _, _, _, _, _, _, _, _, _, r4971, r4972, r4973, r4974, r4975, r4976, r4977, r4978, r4979, r4980, r4981, r4982, r4983, r4984, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow4971 Seg45.relationLc805 Seg45.relationLc805Part0 Seg45.relationLc805Part1 Seg45.relationLc805Part2 Seg45.relationLc805Part3 Seg45.relationLc805Part4 Seg45.relationLc805Part5 Seg45.relationLc805Part6 Seg45.relationLc805Part7 Seg45.relationLc805Part8 Seg45.relationLc805Part9 at r4971
  unfold Seg45.relationRow4972 at r4972
  unfold Seg45.relationRow4973 Seg45.relationLc806 Seg45.relationLc806Part0 Seg45.relationLc806Part1 Seg45.relationLc806Part2 Seg45.relationLc806Part3 Seg45.relationLc806Part4 at r4973
  unfold Seg45.relationRow4974 Seg45.relationLc807 Seg45.relationLc807Part0 Seg45.relationLc807Part1 Seg45.relationLc807Part2 Seg45.relationLc807Part3 Seg45.relationLc807Part4 at r4974
  unfold Seg45.relationRow4975 at r4975
  unfold Seg45.relationRow4976 at r4976
  unfold Seg45.relationRow4977 at r4977
  unfold Seg45.relationRow4978 Seg45.relationLc808 Seg45.relationLc808Part0 Seg45.relationLc808Part1 Seg45.relationLc808Part2 Seg45.relationLc808Part3 Seg45.relationLc808Part4 at r4978
  unfold Seg45.relationRow4979 Seg45.relationLc809 Seg45.relationLc809Part0 Seg45.relationLc809Part1 Seg45.relationLc809Part2 Seg45.relationLc809Part3 Seg45.relationLc809Part4 at r4979
  unfold Seg45.relationRow4980 at r4980
  unfold Seg45.relationRow4981 at r4981
  unfold Seg45.relationRow4982 at r4982
  unfold Seg45.relationRow4983 at r4983
  unfold Seg45.relationRow4984 at r4984
  have hrung154 (bit : Bool) (hbit : rho 41102 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX154 rho : Seg45.F), (seg45AccY154 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43197 : Seg45.F), (rho 43198 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX154 rho : Seg45.F), (seg45AccY154 rho : Seg45.F)⟩
        ⟨(rho 43197 : Seg45.F), (rho 43198 : Seg45.F)⟩
        ⟨(seg45AccX155 rho : Seg45.F), (seg45AccY155 rho : Seg45.F)⟩
        ⟨(rho 43211 : Seg45.F), (rho 43212 : Seg45.F)⟩ := by
    have hsum : seg45AccX154 rho + seg45AccY154 rho = rho 43199 := by
      rw [seg45LadderFlatX154_eq, seg45LadderFlatY154_eq]
      unfold seg45LadderFlatX154 seg45LadderFlatY154
      linear_combination r4971
    have ha0 : (rho 43197 + rho 43198) * (seg45AccX154 rho + seg45AccY154 rho) = rho 43200 := by
      rw [hsum]
      linear_combination r4972
    have ha1 : rho 43198 * seg45AccX154 rho = rho 43201 := by
      rw [seg45LadderFlatX154_eq]
      unfold seg45LadderFlatX154
      linear_combination r4973
    have ha2 : rho 43197 * seg45AccY154 rho = rho 43202 := by
      rw [seg45LadderFlatY154_eq]
      unfold seg45LadderFlatY154
      linear_combination r4974
    have ha3 : 3021 * rho 43201 * rho 43202 = rho 43203 := by
      linear_combination r4975
    have ha4 : rho 43204 * (1 + rho 43203) = rho 43201 + rho 43202 := by
      linear_combination r4976
    have ha5 : rho 43205 * (1 - rho 43203) = rho 43200 - rho 43201 - rho 43202 := by
      linear_combination r4977
    have haddx :
        rho 43204 * (1 + 3021 * (rho 43198 * seg45AccX154 rho) * (rho 43197 * seg45AccY154 rho)) =
          rho 43198 * seg45AccX154 rho + rho 43197 * seg45AccY154 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43205 * (1 - 3021 * (rho 43198 * seg45AccX154 rho) * (rho 43197 * seg45AccY154 rho)) =
          (-1) * (rho 43198 * seg45AccX154 rho) - rho 43197 * seg45AccY154 rho +
            (seg45AccY154 rho - seg45AccX154 rho * (-1)) * (rho 43197 + rho 43198) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43205 * (1 - rho 43203) = rho 43200 - rho 43201 - rho 43202 := ha5
        _ = (-1) * rho 43201 - rho 43202 + (seg45AccY154 rho - seg45AccX154 rho * (-1)) * (rho 43197 + rho 43198) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX155 rho = seg45AccX154 rho - Bool.toZMod bit * (seg45AccX154 rho - rho 43204) := by
      have hd : rho 43206 = Bool.toZMod bit * (rho 43204 - seg45AccX154 rho) := by
        rw [← hbit, seg45LadderFlatX154_eq]
        unfold seg45LadderFlatX154
        linear_combination -r4978
      unfold seg45AccX155
      linear_combination hd
    have hsely : seg45AccY155 rho = seg45AccY154 rho - Bool.toZMod bit * (seg45AccY154 rho - rho 43205) := by
      have hd : rho 43207 = Bool.toZMod bit * (rho 43205 - seg45AccY154 rho) := by
        rw [← hbit, seg45LadderFlatY154_eq]
        unfold seg45LadderFlatY154
        linear_combination -r4979
      unfold seg45AccY155
      linear_combination hd
    have hd0 : rho 43197 * rho 43198 = rho 43208 := by linear_combination r4980
    have hd1 : rho 43197 * rho 43197 = rho 43209 := by linear_combination r4981
    have hd2 : rho 43198 * rho 43198 = rho 43210 := by linear_combination r4982
    have hd3 : rho 43211 * (rho 43198 * rho 43198 + rho 43197 * rho 43197 * (-1)) = 2 * (rho 43197 * rho 43198) := by
      rw [hd0, hd1, hd2]
      linear_combination r4983
    have hd4 : rho 43212 * (2 - (rho 43198 * rho 43198 + rho 43197 * rho 43197 * (-1))) = rho 43198 * rho 43198 - rho 43197 * rho 43197 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4984
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX154 rho : Seg45.F), (seg45AccY154 rho : Seg45.F)⟩
      ⟨(rho 43197 : Seg45.F), (rho 43198 : Seg45.F)⟩
      ⟨(rho 43204 : Seg45.F), (rho 43205 : Seg45.F)⟩
      ⟨(seg45AccX155 rho : Seg45.F), (seg45AccY155 rho : Seg45.F)⟩
      ⟨(rho 43211 : Seg45.F), (rho 43212 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung154

theorem seg45_rung155 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41103 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX155 rho : Seg45.F), (seg45AccY155 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43211 : Seg45.F), (rho 43212 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX155 rho : Seg45.F), (seg45AccY155 rho : Seg45.F)⟩
        ⟨(rho 43211 : Seg45.F), (rho 43212 : Seg45.F)⟩
        ⟨(seg45AccX156 rho : Seg45.F), (seg45AccY156 rho : Seg45.F)⟩
        ⟨(rho 43225 : Seg45.F), (rho 43226 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p62, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart62 at p62
  rcases p62 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4985, r4986, r4987, r4988, r4989, r4990, r4991, r4992, r4993, r4994, r4995, r4996, r4997, r4998, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow4985 Seg45.relationLc810 Seg45.relationLc810Part0 Seg45.relationLc810Part1 Seg45.relationLc810Part2 Seg45.relationLc810Part3 Seg45.relationLc810Part4 Seg45.relationLc810Part5 Seg45.relationLc810Part6 Seg45.relationLc810Part7 Seg45.relationLc810Part8 Seg45.relationLc810Part9 at r4985
  unfold Seg45.relationRow4986 at r4986
  unfold Seg45.relationRow4987 Seg45.relationLc811 Seg45.relationLc811Part0 Seg45.relationLc811Part1 Seg45.relationLc811Part2 Seg45.relationLc811Part3 Seg45.relationLc811Part4 at r4987
  unfold Seg45.relationRow4988 Seg45.relationLc812 Seg45.relationLc812Part0 Seg45.relationLc812Part1 Seg45.relationLc812Part2 Seg45.relationLc812Part3 Seg45.relationLc812Part4 at r4988
  unfold Seg45.relationRow4989 at r4989
  unfold Seg45.relationRow4990 at r4990
  unfold Seg45.relationRow4991 at r4991
  unfold Seg45.relationRow4992 Seg45.relationLc813 Seg45.relationLc813Part0 Seg45.relationLc813Part1 Seg45.relationLc813Part2 Seg45.relationLc813Part3 Seg45.relationLc813Part4 at r4992
  unfold Seg45.relationRow4993 Seg45.relationLc814 Seg45.relationLc814Part0 Seg45.relationLc814Part1 Seg45.relationLc814Part2 Seg45.relationLc814Part3 Seg45.relationLc814Part4 at r4993
  unfold Seg45.relationRow4994 at r4994
  unfold Seg45.relationRow4995 at r4995
  unfold Seg45.relationRow4996 at r4996
  unfold Seg45.relationRow4997 at r4997
  unfold Seg45.relationRow4998 at r4998
  have hrung155 (bit : Bool) (hbit : rho 41103 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX155 rho : Seg45.F), (seg45AccY155 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43211 : Seg45.F), (rho 43212 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX155 rho : Seg45.F), (seg45AccY155 rho : Seg45.F)⟩
        ⟨(rho 43211 : Seg45.F), (rho 43212 : Seg45.F)⟩
        ⟨(seg45AccX156 rho : Seg45.F), (seg45AccY156 rho : Seg45.F)⟩
        ⟨(rho 43225 : Seg45.F), (rho 43226 : Seg45.F)⟩ := by
    have hsum : seg45AccX155 rho + seg45AccY155 rho = rho 43213 := by
      rw [seg45LadderFlatX155_eq, seg45LadderFlatY155_eq]
      unfold seg45LadderFlatX155 seg45LadderFlatY155
      linear_combination r4985
    have ha0 : (rho 43211 + rho 43212) * (seg45AccX155 rho + seg45AccY155 rho) = rho 43214 := by
      rw [hsum]
      linear_combination r4986
    have ha1 : rho 43212 * seg45AccX155 rho = rho 43215 := by
      rw [seg45LadderFlatX155_eq]
      unfold seg45LadderFlatX155
      linear_combination r4987
    have ha2 : rho 43211 * seg45AccY155 rho = rho 43216 := by
      rw [seg45LadderFlatY155_eq]
      unfold seg45LadderFlatY155
      linear_combination r4988
    have ha3 : 3021 * rho 43215 * rho 43216 = rho 43217 := by
      linear_combination r4989
    have ha4 : rho 43218 * (1 + rho 43217) = rho 43215 + rho 43216 := by
      linear_combination r4990
    have ha5 : rho 43219 * (1 - rho 43217) = rho 43214 - rho 43215 - rho 43216 := by
      linear_combination r4991
    have haddx :
        rho 43218 * (1 + 3021 * (rho 43212 * seg45AccX155 rho) * (rho 43211 * seg45AccY155 rho)) =
          rho 43212 * seg45AccX155 rho + rho 43211 * seg45AccY155 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43219 * (1 - 3021 * (rho 43212 * seg45AccX155 rho) * (rho 43211 * seg45AccY155 rho)) =
          (-1) * (rho 43212 * seg45AccX155 rho) - rho 43211 * seg45AccY155 rho +
            (seg45AccY155 rho - seg45AccX155 rho * (-1)) * (rho 43211 + rho 43212) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43219 * (1 - rho 43217) = rho 43214 - rho 43215 - rho 43216 := ha5
        _ = (-1) * rho 43215 - rho 43216 + (seg45AccY155 rho - seg45AccX155 rho * (-1)) * (rho 43211 + rho 43212) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX156 rho = seg45AccX155 rho - Bool.toZMod bit * (seg45AccX155 rho - rho 43218) := by
      have hd : rho 43220 = Bool.toZMod bit * (rho 43218 - seg45AccX155 rho) := by
        rw [← hbit, seg45LadderFlatX155_eq]
        unfold seg45LadderFlatX155
        linear_combination -r4992
      unfold seg45AccX156
      linear_combination hd
    have hsely : seg45AccY156 rho = seg45AccY155 rho - Bool.toZMod bit * (seg45AccY155 rho - rho 43219) := by
      have hd : rho 43221 = Bool.toZMod bit * (rho 43219 - seg45AccY155 rho) := by
        rw [← hbit, seg45LadderFlatY155_eq]
        unfold seg45LadderFlatY155
        linear_combination -r4993
      unfold seg45AccY156
      linear_combination hd
    have hd0 : rho 43211 * rho 43212 = rho 43222 := by linear_combination r4994
    have hd1 : rho 43211 * rho 43211 = rho 43223 := by linear_combination r4995
    have hd2 : rho 43212 * rho 43212 = rho 43224 := by linear_combination r4996
    have hd3 : rho 43225 * (rho 43212 * rho 43212 + rho 43211 * rho 43211 * (-1)) = 2 * (rho 43211 * rho 43212) := by
      rw [hd0, hd1, hd2]
      linear_combination r4997
    have hd4 : rho 43226 * (2 - (rho 43212 * rho 43212 + rho 43211 * rho 43211 * (-1))) = rho 43212 * rho 43212 - rho 43211 * rho 43211 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4998
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX155 rho : Seg45.F), (seg45AccY155 rho : Seg45.F)⟩
      ⟨(rho 43211 : Seg45.F), (rho 43212 : Seg45.F)⟩
      ⟨(rho 43218 : Seg45.F), (rho 43219 : Seg45.F)⟩
      ⟨(seg45AccX156 rho : Seg45.F), (seg45AccY156 rho : Seg45.F)⟩
      ⟨(rho 43225 : Seg45.F), (rho 43226 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung155

theorem seg45_rung156 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41104 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX156 rho : Seg45.F), (seg45AccY156 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43225 : Seg45.F), (rho 43226 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX156 rho : Seg45.F), (seg45AccY156 rho : Seg45.F)⟩
        ⟨(rho 43225 : Seg45.F), (rho 43226 : Seg45.F)⟩
        ⟨(seg45AccX157 rho : Seg45.F), (seg45AccY157 rho : Seg45.F)⟩
        ⟨(rho 43239 : Seg45.F), (rho 43240 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p62, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart62 at p62
  rcases p62 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4999, r5000, r5001, r5002, r5003, r5004, r5005, r5006, r5007, r5008, r5009, r5010, r5011, r5012, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow4999 Seg45.relationLc815 Seg45.relationLc815Part0 Seg45.relationLc815Part1 Seg45.relationLc815Part2 Seg45.relationLc815Part3 Seg45.relationLc815Part4 Seg45.relationLc815Part5 Seg45.relationLc815Part6 Seg45.relationLc815Part7 Seg45.relationLc815Part8 Seg45.relationLc815Part9 at r4999
  unfold Seg45.relationRow5000 at r5000
  unfold Seg45.relationRow5001 Seg45.relationLc816 Seg45.relationLc816Part0 Seg45.relationLc816Part1 Seg45.relationLc816Part2 Seg45.relationLc816Part3 Seg45.relationLc816Part4 at r5001
  unfold Seg45.relationRow5002 Seg45.relationLc817 Seg45.relationLc817Part0 Seg45.relationLc817Part1 Seg45.relationLc817Part2 Seg45.relationLc817Part3 Seg45.relationLc817Part4 at r5002
  unfold Seg45.relationRow5003 at r5003
  unfold Seg45.relationRow5004 at r5004
  unfold Seg45.relationRow5005 at r5005
  unfold Seg45.relationRow5006 Seg45.relationLc818 Seg45.relationLc818Part0 Seg45.relationLc818Part1 Seg45.relationLc818Part2 Seg45.relationLc818Part3 Seg45.relationLc818Part4 at r5006
  unfold Seg45.relationRow5007 Seg45.relationLc819 Seg45.relationLc819Part0 Seg45.relationLc819Part1 Seg45.relationLc819Part2 Seg45.relationLc819Part3 Seg45.relationLc819Part4 at r5007
  unfold Seg45.relationRow5008 at r5008
  unfold Seg45.relationRow5009 at r5009
  unfold Seg45.relationRow5010 at r5010
  unfold Seg45.relationRow5011 at r5011
  unfold Seg45.relationRow5012 at r5012
  have hrung156 (bit : Bool) (hbit : rho 41104 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX156 rho : Seg45.F), (seg45AccY156 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43225 : Seg45.F), (rho 43226 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX156 rho : Seg45.F), (seg45AccY156 rho : Seg45.F)⟩
        ⟨(rho 43225 : Seg45.F), (rho 43226 : Seg45.F)⟩
        ⟨(seg45AccX157 rho : Seg45.F), (seg45AccY157 rho : Seg45.F)⟩
        ⟨(rho 43239 : Seg45.F), (rho 43240 : Seg45.F)⟩ := by
    have hsum : seg45AccX156 rho + seg45AccY156 rho = rho 43227 := by
      rw [seg45LadderFlatX156_eq, seg45LadderFlatY156_eq]
      unfold seg45LadderFlatX156 seg45LadderFlatY156
      linear_combination r4999
    have ha0 : (rho 43225 + rho 43226) * (seg45AccX156 rho + seg45AccY156 rho) = rho 43228 := by
      rw [hsum]
      linear_combination r5000
    have ha1 : rho 43226 * seg45AccX156 rho = rho 43229 := by
      rw [seg45LadderFlatX156_eq]
      unfold seg45LadderFlatX156
      linear_combination r5001
    have ha2 : rho 43225 * seg45AccY156 rho = rho 43230 := by
      rw [seg45LadderFlatY156_eq]
      unfold seg45LadderFlatY156
      linear_combination r5002
    have ha3 : 3021 * rho 43229 * rho 43230 = rho 43231 := by
      linear_combination r5003
    have ha4 : rho 43232 * (1 + rho 43231) = rho 43229 + rho 43230 := by
      linear_combination r5004
    have ha5 : rho 43233 * (1 - rho 43231) = rho 43228 - rho 43229 - rho 43230 := by
      linear_combination r5005
    have haddx :
        rho 43232 * (1 + 3021 * (rho 43226 * seg45AccX156 rho) * (rho 43225 * seg45AccY156 rho)) =
          rho 43226 * seg45AccX156 rho + rho 43225 * seg45AccY156 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43233 * (1 - 3021 * (rho 43226 * seg45AccX156 rho) * (rho 43225 * seg45AccY156 rho)) =
          (-1) * (rho 43226 * seg45AccX156 rho) - rho 43225 * seg45AccY156 rho +
            (seg45AccY156 rho - seg45AccX156 rho * (-1)) * (rho 43225 + rho 43226) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43233 * (1 - rho 43231) = rho 43228 - rho 43229 - rho 43230 := ha5
        _ = (-1) * rho 43229 - rho 43230 + (seg45AccY156 rho - seg45AccX156 rho * (-1)) * (rho 43225 + rho 43226) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX157 rho = seg45AccX156 rho - Bool.toZMod bit * (seg45AccX156 rho - rho 43232) := by
      have hd : rho 43234 = Bool.toZMod bit * (rho 43232 - seg45AccX156 rho) := by
        rw [← hbit, seg45LadderFlatX156_eq]
        unfold seg45LadderFlatX156
        linear_combination -r5006
      unfold seg45AccX157
      linear_combination hd
    have hsely : seg45AccY157 rho = seg45AccY156 rho - Bool.toZMod bit * (seg45AccY156 rho - rho 43233) := by
      have hd : rho 43235 = Bool.toZMod bit * (rho 43233 - seg45AccY156 rho) := by
        rw [← hbit, seg45LadderFlatY156_eq]
        unfold seg45LadderFlatY156
        linear_combination -r5007
      unfold seg45AccY157
      linear_combination hd
    have hd0 : rho 43225 * rho 43226 = rho 43236 := by linear_combination r5008
    have hd1 : rho 43225 * rho 43225 = rho 43237 := by linear_combination r5009
    have hd2 : rho 43226 * rho 43226 = rho 43238 := by linear_combination r5010
    have hd3 : rho 43239 * (rho 43226 * rho 43226 + rho 43225 * rho 43225 * (-1)) = 2 * (rho 43225 * rho 43226) := by
      rw [hd0, hd1, hd2]
      linear_combination r5011
    have hd4 : rho 43240 * (2 - (rho 43226 * rho 43226 + rho 43225 * rho 43225 * (-1))) = rho 43226 * rho 43226 - rho 43225 * rho 43225 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5012
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX156 rho : Seg45.F), (seg45AccY156 rho : Seg45.F)⟩
      ⟨(rho 43225 : Seg45.F), (rho 43226 : Seg45.F)⟩
      ⟨(rho 43232 : Seg45.F), (rho 43233 : Seg45.F)⟩
      ⟨(seg45AccX157 rho : Seg45.F), (seg45AccY157 rho : Seg45.F)⟩
      ⟨(rho 43239 : Seg45.F), (rho 43240 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung156

theorem seg45_rung157 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41105 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX157 rho : Seg45.F), (seg45AccY157 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43239 : Seg45.F), (rho 43240 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX157 rho : Seg45.F), (seg45AccY157 rho : Seg45.F)⟩
        ⟨(rho 43239 : Seg45.F), (rho 43240 : Seg45.F)⟩
        ⟨(seg45AccX158 rho : Seg45.F), (seg45AccY158 rho : Seg45.F)⟩
        ⟨(rho 43253 : Seg45.F), (rho 43254 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p62, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart62 at p62
  rcases p62 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5013, r5014, r5015, r5016, r5017, r5018, r5019, r5020, r5021, r5022, r5023, r5024, r5025, r5026, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow5013 Seg45.relationLc820 Seg45.relationLc820Part0 Seg45.relationLc820Part1 Seg45.relationLc820Part2 Seg45.relationLc820Part3 Seg45.relationLc820Part4 Seg45.relationLc820Part5 Seg45.relationLc820Part6 Seg45.relationLc820Part7 Seg45.relationLc820Part8 Seg45.relationLc820Part9 at r5013
  unfold Seg45.relationRow5014 at r5014
  unfold Seg45.relationRow5015 Seg45.relationLc821 Seg45.relationLc821Part0 Seg45.relationLc821Part1 Seg45.relationLc821Part2 Seg45.relationLc821Part3 Seg45.relationLc821Part4 at r5015
  unfold Seg45.relationRow5016 Seg45.relationLc822 Seg45.relationLc822Part0 Seg45.relationLc822Part1 Seg45.relationLc822Part2 Seg45.relationLc822Part3 Seg45.relationLc822Part4 at r5016
  unfold Seg45.relationRow5017 at r5017
  unfold Seg45.relationRow5018 at r5018
  unfold Seg45.relationRow5019 at r5019
  unfold Seg45.relationRow5020 Seg45.relationLc823 Seg45.relationLc823Part0 Seg45.relationLc823Part1 Seg45.relationLc823Part2 Seg45.relationLc823Part3 Seg45.relationLc823Part4 at r5020
  unfold Seg45.relationRow5021 Seg45.relationLc824 Seg45.relationLc824Part0 Seg45.relationLc824Part1 Seg45.relationLc824Part2 Seg45.relationLc824Part3 Seg45.relationLc824Part4 at r5021
  unfold Seg45.relationRow5022 at r5022
  unfold Seg45.relationRow5023 at r5023
  unfold Seg45.relationRow5024 at r5024
  unfold Seg45.relationRow5025 at r5025
  unfold Seg45.relationRow5026 at r5026
  have hrung157 (bit : Bool) (hbit : rho 41105 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX157 rho : Seg45.F), (seg45AccY157 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43239 : Seg45.F), (rho 43240 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX157 rho : Seg45.F), (seg45AccY157 rho : Seg45.F)⟩
        ⟨(rho 43239 : Seg45.F), (rho 43240 : Seg45.F)⟩
        ⟨(seg45AccX158 rho : Seg45.F), (seg45AccY158 rho : Seg45.F)⟩
        ⟨(rho 43253 : Seg45.F), (rho 43254 : Seg45.F)⟩ := by
    have hsum : seg45AccX157 rho + seg45AccY157 rho = rho 43241 := by
      rw [seg45LadderFlatX157_eq, seg45LadderFlatY157_eq]
      unfold seg45LadderFlatX157 seg45LadderFlatY157
      linear_combination r5013
    have ha0 : (rho 43239 + rho 43240) * (seg45AccX157 rho + seg45AccY157 rho) = rho 43242 := by
      rw [hsum]
      linear_combination r5014
    have ha1 : rho 43240 * seg45AccX157 rho = rho 43243 := by
      rw [seg45LadderFlatX157_eq]
      unfold seg45LadderFlatX157
      linear_combination r5015
    have ha2 : rho 43239 * seg45AccY157 rho = rho 43244 := by
      rw [seg45LadderFlatY157_eq]
      unfold seg45LadderFlatY157
      linear_combination r5016
    have ha3 : 3021 * rho 43243 * rho 43244 = rho 43245 := by
      linear_combination r5017
    have ha4 : rho 43246 * (1 + rho 43245) = rho 43243 + rho 43244 := by
      linear_combination r5018
    have ha5 : rho 43247 * (1 - rho 43245) = rho 43242 - rho 43243 - rho 43244 := by
      linear_combination r5019
    have haddx :
        rho 43246 * (1 + 3021 * (rho 43240 * seg45AccX157 rho) * (rho 43239 * seg45AccY157 rho)) =
          rho 43240 * seg45AccX157 rho + rho 43239 * seg45AccY157 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43247 * (1 - 3021 * (rho 43240 * seg45AccX157 rho) * (rho 43239 * seg45AccY157 rho)) =
          (-1) * (rho 43240 * seg45AccX157 rho) - rho 43239 * seg45AccY157 rho +
            (seg45AccY157 rho - seg45AccX157 rho * (-1)) * (rho 43239 + rho 43240) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43247 * (1 - rho 43245) = rho 43242 - rho 43243 - rho 43244 := ha5
        _ = (-1) * rho 43243 - rho 43244 + (seg45AccY157 rho - seg45AccX157 rho * (-1)) * (rho 43239 + rho 43240) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX158 rho = seg45AccX157 rho - Bool.toZMod bit * (seg45AccX157 rho - rho 43246) := by
      have hd : rho 43248 = Bool.toZMod bit * (rho 43246 - seg45AccX157 rho) := by
        rw [← hbit, seg45LadderFlatX157_eq]
        unfold seg45LadderFlatX157
        linear_combination -r5020
      unfold seg45AccX158
      linear_combination hd
    have hsely : seg45AccY158 rho = seg45AccY157 rho - Bool.toZMod bit * (seg45AccY157 rho - rho 43247) := by
      have hd : rho 43249 = Bool.toZMod bit * (rho 43247 - seg45AccY157 rho) := by
        rw [← hbit, seg45LadderFlatY157_eq]
        unfold seg45LadderFlatY157
        linear_combination -r5021
      unfold seg45AccY158
      linear_combination hd
    have hd0 : rho 43239 * rho 43240 = rho 43250 := by linear_combination r5022
    have hd1 : rho 43239 * rho 43239 = rho 43251 := by linear_combination r5023
    have hd2 : rho 43240 * rho 43240 = rho 43252 := by linear_combination r5024
    have hd3 : rho 43253 * (rho 43240 * rho 43240 + rho 43239 * rho 43239 * (-1)) = 2 * (rho 43239 * rho 43240) := by
      rw [hd0, hd1, hd2]
      linear_combination r5025
    have hd4 : rho 43254 * (2 - (rho 43240 * rho 43240 + rho 43239 * rho 43239 * (-1))) = rho 43240 * rho 43240 - rho 43239 * rho 43239 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5026
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX157 rho : Seg45.F), (seg45AccY157 rho : Seg45.F)⟩
      ⟨(rho 43239 : Seg45.F), (rho 43240 : Seg45.F)⟩
      ⟨(rho 43246 : Seg45.F), (rho 43247 : Seg45.F)⟩
      ⟨(seg45AccX158 rho : Seg45.F), (seg45AccY158 rho : Seg45.F)⟩
      ⟨(rho 43253 : Seg45.F), (rho 43254 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung157

theorem seg45_rung158 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41106 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX158 rho : Seg45.F), (seg45AccY158 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43253 : Seg45.F), (rho 43254 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX158 rho : Seg45.F), (seg45AccY158 rho : Seg45.F)⟩
        ⟨(rho 43253 : Seg45.F), (rho 43254 : Seg45.F)⟩
        ⟨(seg45AccX159 rho : Seg45.F), (seg45AccY159 rho : Seg45.F)⟩
        ⟨(rho 43267 : Seg45.F), (rho 43268 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p62, p63, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart62 at p62
  rcases p62 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5027, r5028, r5029, r5030, r5031, r5032, r5033, r5034, r5035, r5036, r5037, r5038, r5039⟩
  unfold Seg45.relationPart63 at p63
  rcases p63 with ⟨r5040, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow5027 Seg45.relationLc825 Seg45.relationLc825Part0 Seg45.relationLc825Part1 Seg45.relationLc825Part2 Seg45.relationLc825Part3 Seg45.relationLc825Part4 Seg45.relationLc825Part5 Seg45.relationLc825Part6 Seg45.relationLc825Part7 Seg45.relationLc825Part8 Seg45.relationLc825Part9 at r5027
  unfold Seg45.relationRow5028 at r5028
  unfold Seg45.relationRow5029 Seg45.relationLc826 Seg45.relationLc826Part0 Seg45.relationLc826Part1 Seg45.relationLc826Part2 Seg45.relationLc826Part3 Seg45.relationLc826Part4 at r5029
  unfold Seg45.relationRow5030 Seg45.relationLc827 Seg45.relationLc827Part0 Seg45.relationLc827Part1 Seg45.relationLc827Part2 Seg45.relationLc827Part3 Seg45.relationLc827Part4 at r5030
  unfold Seg45.relationRow5031 at r5031
  unfold Seg45.relationRow5032 at r5032
  unfold Seg45.relationRow5033 at r5033
  unfold Seg45.relationRow5034 Seg45.relationLc828 Seg45.relationLc828Part0 Seg45.relationLc828Part1 Seg45.relationLc828Part2 Seg45.relationLc828Part3 Seg45.relationLc828Part4 at r5034
  unfold Seg45.relationRow5035 Seg45.relationLc829 Seg45.relationLc829Part0 Seg45.relationLc829Part1 Seg45.relationLc829Part2 Seg45.relationLc829Part3 Seg45.relationLc829Part4 at r5035
  unfold Seg45.relationRow5036 at r5036
  unfold Seg45.relationRow5037 at r5037
  unfold Seg45.relationRow5038 at r5038
  unfold Seg45.relationRow5039 at r5039
  unfold Seg45.relationRow5040 at r5040
  have hrung158 (bit : Bool) (hbit : rho 41106 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX158 rho : Seg45.F), (seg45AccY158 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43253 : Seg45.F), (rho 43254 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX158 rho : Seg45.F), (seg45AccY158 rho : Seg45.F)⟩
        ⟨(rho 43253 : Seg45.F), (rho 43254 : Seg45.F)⟩
        ⟨(seg45AccX159 rho : Seg45.F), (seg45AccY159 rho : Seg45.F)⟩
        ⟨(rho 43267 : Seg45.F), (rho 43268 : Seg45.F)⟩ := by
    have hsum : seg45AccX158 rho + seg45AccY158 rho = rho 43255 := by
      rw [seg45LadderFlatX158_eq, seg45LadderFlatY158_eq]
      unfold seg45LadderFlatX158 seg45LadderFlatY158
      linear_combination r5027
    have ha0 : (rho 43253 + rho 43254) * (seg45AccX158 rho + seg45AccY158 rho) = rho 43256 := by
      rw [hsum]
      linear_combination r5028
    have ha1 : rho 43254 * seg45AccX158 rho = rho 43257 := by
      rw [seg45LadderFlatX158_eq]
      unfold seg45LadderFlatX158
      linear_combination r5029
    have ha2 : rho 43253 * seg45AccY158 rho = rho 43258 := by
      rw [seg45LadderFlatY158_eq]
      unfold seg45LadderFlatY158
      linear_combination r5030
    have ha3 : 3021 * rho 43257 * rho 43258 = rho 43259 := by
      linear_combination r5031
    have ha4 : rho 43260 * (1 + rho 43259) = rho 43257 + rho 43258 := by
      linear_combination r5032
    have ha5 : rho 43261 * (1 - rho 43259) = rho 43256 - rho 43257 - rho 43258 := by
      linear_combination r5033
    have haddx :
        rho 43260 * (1 + 3021 * (rho 43254 * seg45AccX158 rho) * (rho 43253 * seg45AccY158 rho)) =
          rho 43254 * seg45AccX158 rho + rho 43253 * seg45AccY158 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43261 * (1 - 3021 * (rho 43254 * seg45AccX158 rho) * (rho 43253 * seg45AccY158 rho)) =
          (-1) * (rho 43254 * seg45AccX158 rho) - rho 43253 * seg45AccY158 rho +
            (seg45AccY158 rho - seg45AccX158 rho * (-1)) * (rho 43253 + rho 43254) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43261 * (1 - rho 43259) = rho 43256 - rho 43257 - rho 43258 := ha5
        _ = (-1) * rho 43257 - rho 43258 + (seg45AccY158 rho - seg45AccX158 rho * (-1)) * (rho 43253 + rho 43254) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX159 rho = seg45AccX158 rho - Bool.toZMod bit * (seg45AccX158 rho - rho 43260) := by
      have hd : rho 43262 = Bool.toZMod bit * (rho 43260 - seg45AccX158 rho) := by
        rw [← hbit, seg45LadderFlatX158_eq]
        unfold seg45LadderFlatX158
        linear_combination -r5034
      unfold seg45AccX159
      linear_combination hd
    have hsely : seg45AccY159 rho = seg45AccY158 rho - Bool.toZMod bit * (seg45AccY158 rho - rho 43261) := by
      have hd : rho 43263 = Bool.toZMod bit * (rho 43261 - seg45AccY158 rho) := by
        rw [← hbit, seg45LadderFlatY158_eq]
        unfold seg45LadderFlatY158
        linear_combination -r5035
      unfold seg45AccY159
      linear_combination hd
    have hd0 : rho 43253 * rho 43254 = rho 43264 := by linear_combination r5036
    have hd1 : rho 43253 * rho 43253 = rho 43265 := by linear_combination r5037
    have hd2 : rho 43254 * rho 43254 = rho 43266 := by linear_combination r5038
    have hd3 : rho 43267 * (rho 43254 * rho 43254 + rho 43253 * rho 43253 * (-1)) = 2 * (rho 43253 * rho 43254) := by
      rw [hd0, hd1, hd2]
      linear_combination r5039
    have hd4 : rho 43268 * (2 - (rho 43254 * rho 43254 + rho 43253 * rho 43253 * (-1))) = rho 43254 * rho 43254 - rho 43253 * rho 43253 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5040
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX158 rho : Seg45.F), (seg45AccY158 rho : Seg45.F)⟩
      ⟨(rho 43253 : Seg45.F), (rho 43254 : Seg45.F)⟩
      ⟨(rho 43260 : Seg45.F), (rho 43261 : Seg45.F)⟩
      ⟨(seg45AccX159 rho : Seg45.F), (seg45AccY159 rho : Seg45.F)⟩
      ⟨(rho 43267 : Seg45.F), (rho 43268 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung158

theorem seg45_rung159 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41107 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX159 rho : Seg45.F), (seg45AccY159 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43267 : Seg45.F), (rho 43268 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX159 rho : Seg45.F), (seg45AccY159 rho : Seg45.F)⟩
        ⟨(rho 43267 : Seg45.F), (rho 43268 : Seg45.F)⟩
        ⟨(seg45AccX160 rho : Seg45.F), (seg45AccY160 rho : Seg45.F)⟩
        ⟨(rho 43281 : Seg45.F), (rho 43282 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p63, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart63 at p63
  rcases p63 with ⟨_, r5041, r5042, r5043, r5044, r5045, r5046, r5047, r5048, r5049, r5050, r5051, r5052, r5053, r5054, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow5041 Seg45.relationLc830 Seg45.relationLc830Part0 Seg45.relationLc830Part1 Seg45.relationLc830Part2 Seg45.relationLc830Part3 Seg45.relationLc830Part4 Seg45.relationLc830Part5 Seg45.relationLc830Part6 Seg45.relationLc830Part7 Seg45.relationLc830Part8 Seg45.relationLc830Part9 at r5041
  unfold Seg45.relationRow5042 at r5042
  unfold Seg45.relationRow5043 Seg45.relationLc831 Seg45.relationLc831Part0 Seg45.relationLc831Part1 Seg45.relationLc831Part2 Seg45.relationLc831Part3 Seg45.relationLc831Part4 at r5043
  unfold Seg45.relationRow5044 Seg45.relationLc832 Seg45.relationLc832Part0 Seg45.relationLc832Part1 Seg45.relationLc832Part2 Seg45.relationLc832Part3 Seg45.relationLc832Part4 at r5044
  unfold Seg45.relationRow5045 at r5045
  unfold Seg45.relationRow5046 at r5046
  unfold Seg45.relationRow5047 at r5047
  unfold Seg45.relationRow5048 Seg45.relationLc833 Seg45.relationLc833Part0 Seg45.relationLc833Part1 Seg45.relationLc833Part2 Seg45.relationLc833Part3 Seg45.relationLc833Part4 at r5048
  unfold Seg45.relationRow5049 Seg45.relationLc834 Seg45.relationLc834Part0 Seg45.relationLc834Part1 Seg45.relationLc834Part2 Seg45.relationLc834Part3 Seg45.relationLc834Part4 Seg45.relationLc834Part5 at r5049
  unfold Seg45.relationRow5050 at r5050
  unfold Seg45.relationRow5051 at r5051
  unfold Seg45.relationRow5052 at r5052
  unfold Seg45.relationRow5053 at r5053
  unfold Seg45.relationRow5054 at r5054
  have hrung159 (bit : Bool) (hbit : rho 41107 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX159 rho : Seg45.F), (seg45AccY159 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43267 : Seg45.F), (rho 43268 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX159 rho : Seg45.F), (seg45AccY159 rho : Seg45.F)⟩
        ⟨(rho 43267 : Seg45.F), (rho 43268 : Seg45.F)⟩
        ⟨(seg45AccX160 rho : Seg45.F), (seg45AccY160 rho : Seg45.F)⟩
        ⟨(rho 43281 : Seg45.F), (rho 43282 : Seg45.F)⟩ := by
    have hsum : seg45AccX159 rho + seg45AccY159 rho = rho 43269 := by
      rw [seg45LadderFlatX159_eq, seg45LadderFlatY159_eq]
      unfold seg45LadderFlatX159 seg45LadderFlatY159
      linear_combination r5041
    have ha0 : (rho 43267 + rho 43268) * (seg45AccX159 rho + seg45AccY159 rho) = rho 43270 := by
      rw [hsum]
      linear_combination r5042
    have ha1 : rho 43268 * seg45AccX159 rho = rho 43271 := by
      rw [seg45LadderFlatX159_eq]
      unfold seg45LadderFlatX159
      linear_combination r5043
    have ha2 : rho 43267 * seg45AccY159 rho = rho 43272 := by
      rw [seg45LadderFlatY159_eq]
      unfold seg45LadderFlatY159
      linear_combination r5044
    have ha3 : 3021 * rho 43271 * rho 43272 = rho 43273 := by
      linear_combination r5045
    have ha4 : rho 43274 * (1 + rho 43273) = rho 43271 + rho 43272 := by
      linear_combination r5046
    have ha5 : rho 43275 * (1 - rho 43273) = rho 43270 - rho 43271 - rho 43272 := by
      linear_combination r5047
    have haddx :
        rho 43274 * (1 + 3021 * (rho 43268 * seg45AccX159 rho) * (rho 43267 * seg45AccY159 rho)) =
          rho 43268 * seg45AccX159 rho + rho 43267 * seg45AccY159 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43275 * (1 - 3021 * (rho 43268 * seg45AccX159 rho) * (rho 43267 * seg45AccY159 rho)) =
          (-1) * (rho 43268 * seg45AccX159 rho) - rho 43267 * seg45AccY159 rho +
            (seg45AccY159 rho - seg45AccX159 rho * (-1)) * (rho 43267 + rho 43268) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43275 * (1 - rho 43273) = rho 43270 - rho 43271 - rho 43272 := ha5
        _ = (-1) * rho 43271 - rho 43272 + (seg45AccY159 rho - seg45AccX159 rho * (-1)) * (rho 43267 + rho 43268) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX160 rho = seg45AccX159 rho - Bool.toZMod bit * (seg45AccX159 rho - rho 43274) := by
      have hd : rho 43276 = Bool.toZMod bit * (rho 43274 - seg45AccX159 rho) := by
        rw [← hbit, seg45LadderFlatX159_eq]
        unfold seg45LadderFlatX159
        linear_combination -r5048
      unfold seg45AccX160
      linear_combination hd
    have hsely : seg45AccY160 rho = seg45AccY159 rho - Bool.toZMod bit * (seg45AccY159 rho - rho 43275) := by
      have hd : rho 43277 = Bool.toZMod bit * (rho 43275 - seg45AccY159 rho) := by
        rw [← hbit, seg45LadderFlatY159_eq]
        unfold seg45LadderFlatY159
        linear_combination -r5049
      unfold seg45AccY160
      linear_combination hd
    have hd0 : rho 43267 * rho 43268 = rho 43278 := by linear_combination r5050
    have hd1 : rho 43267 * rho 43267 = rho 43279 := by linear_combination r5051
    have hd2 : rho 43268 * rho 43268 = rho 43280 := by linear_combination r5052
    have hd3 : rho 43281 * (rho 43268 * rho 43268 + rho 43267 * rho 43267 * (-1)) = 2 * (rho 43267 * rho 43268) := by
      rw [hd0, hd1, hd2]
      linear_combination r5053
    have hd4 : rho 43282 * (2 - (rho 43268 * rho 43268 + rho 43267 * rho 43267 * (-1))) = rho 43268 * rho 43268 - rho 43267 * rho 43267 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5054
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX159 rho : Seg45.F), (seg45AccY159 rho : Seg45.F)⟩
      ⟨(rho 43267 : Seg45.F), (rho 43268 : Seg45.F)⟩
      ⟨(rho 43274 : Seg45.F), (rho 43275 : Seg45.F)⟩
      ⟨(seg45AccX160 rho : Seg45.F), (seg45AccY160 rho : Seg45.F)⟩
      ⟨(rho 43281 : Seg45.F), (rho 43282 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung159

theorem seg45_hstep_c4 (rho : Nat -> Seg45.F) (h : Seg45.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (40948 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 128 ≤ i → i < 160 →
      EdwardsBridge.onCurve (seg45LadderAccState rho i) →
      EdwardsBridge.onCurve (seg45LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg45LadderAccState rho i) (seg45LadderCurState rho i)
        (seg45LadderAccState rho (i + 1)) (seg45LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg45_rung128 rho h bits[128]! (hbitAt 128 (by omega)) hacc hcur
  · exact seg45_rung129 rho h bits[129]! (hbitAt 129 (by omega)) hacc hcur
  · exact seg45_rung130 rho h bits[130]! (hbitAt 130 (by omega)) hacc hcur
  · exact seg45_rung131 rho h bits[131]! (hbitAt 131 (by omega)) hacc hcur
  · exact seg45_rung132 rho h bits[132]! (hbitAt 132 (by omega)) hacc hcur
  · exact seg45_rung133 rho h bits[133]! (hbitAt 133 (by omega)) hacc hcur
  · exact seg45_rung134 rho h bits[134]! (hbitAt 134 (by omega)) hacc hcur
  · exact seg45_rung135 rho h bits[135]! (hbitAt 135 (by omega)) hacc hcur
  · exact seg45_rung136 rho h bits[136]! (hbitAt 136 (by omega)) hacc hcur
  · exact seg45_rung137 rho h bits[137]! (hbitAt 137 (by omega)) hacc hcur
  · exact seg45_rung138 rho h bits[138]! (hbitAt 138 (by omega)) hacc hcur
  · exact seg45_rung139 rho h bits[139]! (hbitAt 139 (by omega)) hacc hcur
  · exact seg45_rung140 rho h bits[140]! (hbitAt 140 (by omega)) hacc hcur
  · exact seg45_rung141 rho h bits[141]! (hbitAt 141 (by omega)) hacc hcur
  · exact seg45_rung142 rho h bits[142]! (hbitAt 142 (by omega)) hacc hcur
  · exact seg45_rung143 rho h bits[143]! (hbitAt 143 (by omega)) hacc hcur
  · exact seg45_rung144 rho h bits[144]! (hbitAt 144 (by omega)) hacc hcur
  · exact seg45_rung145 rho h bits[145]! (hbitAt 145 (by omega)) hacc hcur
  · exact seg45_rung146 rho h bits[146]! (hbitAt 146 (by omega)) hacc hcur
  · exact seg45_rung147 rho h bits[147]! (hbitAt 147 (by omega)) hacc hcur
  · exact seg45_rung148 rho h bits[148]! (hbitAt 148 (by omega)) hacc hcur
  · exact seg45_rung149 rho h bits[149]! (hbitAt 149 (by omega)) hacc hcur
  · exact seg45_rung150 rho h bits[150]! (hbitAt 150 (by omega)) hacc hcur
  · exact seg45_rung151 rho h bits[151]! (hbitAt 151 (by omega)) hacc hcur
  · exact seg45_rung152 rho h bits[152]! (hbitAt 152 (by omega)) hacc hcur
  · exact seg45_rung153 rho h bits[153]! (hbitAt 153 (by omega)) hacc hcur
  · exact seg45_rung154 rho h bits[154]! (hbitAt 154 (by omega)) hacc hcur
  · exact seg45_rung155 rho h bits[155]! (hbitAt 155 (by omega)) hacc hcur
  · exact seg45_rung156 rho h bits[156]! (hbitAt 156 (by omega)) hacc hcur
  · exact seg45_rung157 rho h bits[157]! (hbitAt 157 (by omega)) hacc hcur
  · exact seg45_rung158 rho h bits[158]! (hbitAt 158 (by omega)) hacc hcur
  · exact seg45_rung159 rho h bits[159]! (hbitAt 159 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
