import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg34_rung128 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34120 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX128 rho : Seg34.F), (seg34AccY128 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35899 : Seg34.F), (rho 35900 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX128 rho : Seg34.F), (seg34AccY128 rho : Seg34.F)⟩
        ⟨(rho 35899 : Seg34.F), (rho 35900 : Seg34.F)⟩
        ⟨(seg34AccX129 rho : Seg34.F), (seg34AccY129 rho : Seg34.F)⟩
        ⟨(rho 35912 : Seg34.F), (rho 35913 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart57 at p57
  rcases p57 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4629, r4630, r4631, r4632, r4633, r4634, r4635, r4636, r4637, r4638, r4639⟩
  unfold Seg34.relationPart58 at p58
  rcases p58 with ⟨r4640, r4641, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow4629 Seg34.relationLc675 Seg34.relationLc675Part0 Seg34.relationLc675Part1 Seg34.relationLc675Part2 Seg34.relationLc675Part3 Seg34.relationLc675Part4 Seg34.relationLc675Part5 Seg34.relationLc675Part6 Seg34.relationLc675Part7 Seg34.relationLc675Part8 at r4629
  unfold Seg34.relationRow4630 Seg34.relationLc676 Seg34.relationLc676Part0 Seg34.relationLc676Part1 Seg34.relationLc676Part2 Seg34.relationLc676Part3 at r4630
  unfold Seg34.relationRow4631 Seg34.relationLc677 Seg34.relationLc677Part0 Seg34.relationLc677Part1 Seg34.relationLc677Part2 Seg34.relationLc677Part3 Seg34.relationLc677Part4 at r4631
  unfold Seg34.relationRow4632 at r4632
  unfold Seg34.relationRow4633 at r4633
  unfold Seg34.relationRow4634 at r4634
  unfold Seg34.relationRow4635 Seg34.relationLc678 Seg34.relationLc678Part0 Seg34.relationLc678Part1 Seg34.relationLc678Part2 Seg34.relationLc678Part3 Seg34.relationLc678Part4 at r4635
  unfold Seg34.relationRow4636 Seg34.relationLc679 Seg34.relationLc679Part0 Seg34.relationLc679Part1 Seg34.relationLc679Part2 Seg34.relationLc679Part3 Seg34.relationLc679Part4 at r4636
  unfold Seg34.relationRow4637 at r4637
  unfold Seg34.relationRow4638 at r4638
  unfold Seg34.relationRow4639 at r4639
  unfold Seg34.relationRow4640 at r4640
  unfold Seg34.relationRow4641 at r4641
  have hrung128 (bit : Bool) (hbit : rho 34120 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX128 rho : Seg34.F), (seg34AccY128 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35899 : Seg34.F), (rho 35900 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX128 rho : Seg34.F), (seg34AccY128 rho : Seg34.F)⟩
        ⟨(rho 35899 : Seg34.F), (rho 35900 : Seg34.F)⟩
        ⟨(seg34AccX129 rho : Seg34.F), (seg34AccY129 rho : Seg34.F)⟩
        ⟨(rho 35912 : Seg34.F), (rho 35913 : Seg34.F)⟩ := by
    have ha0 : (rho 35899 + rho 35900) * (seg34AccX128 rho + seg34AccY128 rho) = rho 35901 := by
      rw [seg34LadderFlatX128_eq, seg34LadderFlatY128_eq]
      unfold seg34LadderFlatX128 seg34LadderFlatY128
      linear_combination r4629
    have ha1 : rho 35900 * seg34AccX128 rho = rho 35902 := by
      rw [seg34LadderFlatX128_eq]
      unfold seg34LadderFlatX128
      linear_combination r4630
    have ha2 : rho 35899 * seg34AccY128 rho = rho 35903 := by
      rw [seg34LadderFlatY128_eq]
      unfold seg34LadderFlatY128
      linear_combination r4631
    have ha3 : 3021 * rho 35902 * rho 35903 = rho 35904 := by
      linear_combination r4632
    have ha4 : rho 35905 * (1 + rho 35904) = rho 35902 + rho 35903 := by
      linear_combination r4633
    have ha5 : rho 35906 * (1 - rho 35904) = rho 35901 - rho 35902 - rho 35903 := by
      linear_combination r4634
    have haddx :
        rho 35905 * (1 + 3021 * (rho 35900 * seg34AccX128 rho) * (rho 35899 * seg34AccY128 rho)) =
          rho 35900 * seg34AccX128 rho + rho 35899 * seg34AccY128 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35906 * (1 - 3021 * (rho 35900 * seg34AccX128 rho) * (rho 35899 * seg34AccY128 rho)) =
          (-1) * (rho 35900 * seg34AccX128 rho) - rho 35899 * seg34AccY128 rho +
            (seg34AccY128 rho - seg34AccX128 rho * (-1)) * (rho 35899 + rho 35900) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35906 * (1 - rho 35904) = rho 35901 - rho 35902 - rho 35903 := ha5
        _ = (-1) * rho 35902 - rho 35903 + (seg34AccY128 rho - seg34AccX128 rho * (-1)) * (rho 35899 + rho 35900) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX129 rho = seg34AccX128 rho - Bool.toZMod bit * (seg34AccX128 rho - rho 35905) := by
      have hd : rho 35907 = Bool.toZMod bit * (rho 35905 - seg34AccX128 rho) := by
        rw [← hbit, seg34LadderFlatX128_eq]
        unfold seg34LadderFlatX128
        linear_combination -r4635
      unfold seg34AccX129
      linear_combination hd
    have hsely : seg34AccY129 rho = seg34AccY128 rho - Bool.toZMod bit * (seg34AccY128 rho - rho 35906) := by
      have hd : rho 35908 = Bool.toZMod bit * (rho 35906 - seg34AccY128 rho) := by
        rw [← hbit, seg34LadderFlatY128_eq]
        unfold seg34LadderFlatY128
        linear_combination -r4636
      unfold seg34AccY129
      linear_combination hd
    have hd0 : rho 35899 * rho 35900 = rho 35909 := by linear_combination r4637
    have hd1 : rho 35899 * rho 35899 = rho 35910 := by linear_combination r4638
    have hd2 : rho 35900 * rho 35900 = rho 35911 := by linear_combination r4639
    have hd3 : rho 35912 * (rho 35900 * rho 35900 + rho 35899 * rho 35899 * (-1)) = 2 * (rho 35899 * rho 35900) := by
      rw [hd0, hd1, hd2]
      linear_combination r4640
    have hd4 : rho 35913 * (2 - (rho 35900 * rho 35900 + rho 35899 * rho 35899 * (-1))) = rho 35900 * rho 35900 - rho 35899 * rho 35899 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4641
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX128 rho : Seg34.F), (seg34AccY128 rho : Seg34.F)⟩
      ⟨(rho 35899 : Seg34.F), (rho 35900 : Seg34.F)⟩
      ⟨(rho 35905 : Seg34.F), (rho 35906 : Seg34.F)⟩
      ⟨(seg34AccX129 rho : Seg34.F), (seg34AccY129 rho : Seg34.F)⟩
      ⟨(rho 35912 : Seg34.F), (rho 35913 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung128

theorem seg34_rung129 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34121 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX129 rho : Seg34.F), (seg34AccY129 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35912 : Seg34.F), (rho 35913 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX129 rho : Seg34.F), (seg34AccY129 rho : Seg34.F)⟩
        ⟨(rho 35912 : Seg34.F), (rho 35913 : Seg34.F)⟩
        ⟨(seg34AccX130 rho : Seg34.F), (seg34AccY130 rho : Seg34.F)⟩
        ⟨(rho 35925 : Seg34.F), (rho 35926 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart58 at p58
  rcases p58 with ⟨_, _, r4642, r4643, r4644, r4645, r4646, r4647, r4648, r4649, r4650, r4651, r4652, r4653, r4654, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow4642 Seg34.relationLc680 Seg34.relationLc680Part0 Seg34.relationLc680Part1 Seg34.relationLc680Part2 Seg34.relationLc680Part3 Seg34.relationLc680Part4 Seg34.relationLc680Part5 Seg34.relationLc680Part6 Seg34.relationLc680Part7 Seg34.relationLc680Part8 at r4642
  unfold Seg34.relationRow4643 Seg34.relationLc681 Seg34.relationLc681Part0 Seg34.relationLc681Part1 Seg34.relationLc681Part2 Seg34.relationLc681Part3 Seg34.relationLc681Part4 at r4643
  unfold Seg34.relationRow4644 Seg34.relationLc682 Seg34.relationLc682Part0 Seg34.relationLc682Part1 Seg34.relationLc682Part2 Seg34.relationLc682Part3 Seg34.relationLc682Part4 at r4644
  unfold Seg34.relationRow4645 at r4645
  unfold Seg34.relationRow4646 at r4646
  unfold Seg34.relationRow4647 at r4647
  unfold Seg34.relationRow4648 Seg34.relationLc683 Seg34.relationLc683Part0 Seg34.relationLc683Part1 Seg34.relationLc683Part2 Seg34.relationLc683Part3 Seg34.relationLc683Part4 at r4648
  unfold Seg34.relationRow4649 Seg34.relationLc684 Seg34.relationLc684Part0 Seg34.relationLc684Part1 Seg34.relationLc684Part2 Seg34.relationLc684Part3 Seg34.relationLc684Part4 at r4649
  unfold Seg34.relationRow4650 at r4650
  unfold Seg34.relationRow4651 at r4651
  unfold Seg34.relationRow4652 at r4652
  unfold Seg34.relationRow4653 at r4653
  unfold Seg34.relationRow4654 at r4654
  have hrung129 (bit : Bool) (hbit : rho 34121 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX129 rho : Seg34.F), (seg34AccY129 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35912 : Seg34.F), (rho 35913 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX129 rho : Seg34.F), (seg34AccY129 rho : Seg34.F)⟩
        ⟨(rho 35912 : Seg34.F), (rho 35913 : Seg34.F)⟩
        ⟨(seg34AccX130 rho : Seg34.F), (seg34AccY130 rho : Seg34.F)⟩
        ⟨(rho 35925 : Seg34.F), (rho 35926 : Seg34.F)⟩ := by
    have ha0 : (rho 35912 + rho 35913) * (seg34AccX129 rho + seg34AccY129 rho) = rho 35914 := by
      rw [seg34LadderFlatX129_eq, seg34LadderFlatY129_eq]
      unfold seg34LadderFlatX129 seg34LadderFlatY129
      linear_combination r4642
    have ha1 : rho 35913 * seg34AccX129 rho = rho 35915 := by
      rw [seg34LadderFlatX129_eq]
      unfold seg34LadderFlatX129
      linear_combination r4643
    have ha2 : rho 35912 * seg34AccY129 rho = rho 35916 := by
      rw [seg34LadderFlatY129_eq]
      unfold seg34LadderFlatY129
      linear_combination r4644
    have ha3 : 3021 * rho 35915 * rho 35916 = rho 35917 := by
      linear_combination r4645
    have ha4 : rho 35918 * (1 + rho 35917) = rho 35915 + rho 35916 := by
      linear_combination r4646
    have ha5 : rho 35919 * (1 - rho 35917) = rho 35914 - rho 35915 - rho 35916 := by
      linear_combination r4647
    have haddx :
        rho 35918 * (1 + 3021 * (rho 35913 * seg34AccX129 rho) * (rho 35912 * seg34AccY129 rho)) =
          rho 35913 * seg34AccX129 rho + rho 35912 * seg34AccY129 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35919 * (1 - 3021 * (rho 35913 * seg34AccX129 rho) * (rho 35912 * seg34AccY129 rho)) =
          (-1) * (rho 35913 * seg34AccX129 rho) - rho 35912 * seg34AccY129 rho +
            (seg34AccY129 rho - seg34AccX129 rho * (-1)) * (rho 35912 + rho 35913) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35919 * (1 - rho 35917) = rho 35914 - rho 35915 - rho 35916 := ha5
        _ = (-1) * rho 35915 - rho 35916 + (seg34AccY129 rho - seg34AccX129 rho * (-1)) * (rho 35912 + rho 35913) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX130 rho = seg34AccX129 rho - Bool.toZMod bit * (seg34AccX129 rho - rho 35918) := by
      have hd : rho 35920 = Bool.toZMod bit * (rho 35918 - seg34AccX129 rho) := by
        rw [← hbit, seg34LadderFlatX129_eq]
        unfold seg34LadderFlatX129
        linear_combination -r4648
      unfold seg34AccX130
      linear_combination hd
    have hsely : seg34AccY130 rho = seg34AccY129 rho - Bool.toZMod bit * (seg34AccY129 rho - rho 35919) := by
      have hd : rho 35921 = Bool.toZMod bit * (rho 35919 - seg34AccY129 rho) := by
        rw [← hbit, seg34LadderFlatY129_eq]
        unfold seg34LadderFlatY129
        linear_combination -r4649
      unfold seg34AccY130
      linear_combination hd
    have hd0 : rho 35912 * rho 35913 = rho 35922 := by linear_combination r4650
    have hd1 : rho 35912 * rho 35912 = rho 35923 := by linear_combination r4651
    have hd2 : rho 35913 * rho 35913 = rho 35924 := by linear_combination r4652
    have hd3 : rho 35925 * (rho 35913 * rho 35913 + rho 35912 * rho 35912 * (-1)) = 2 * (rho 35912 * rho 35913) := by
      rw [hd0, hd1, hd2]
      linear_combination r4653
    have hd4 : rho 35926 * (2 - (rho 35913 * rho 35913 + rho 35912 * rho 35912 * (-1))) = rho 35913 * rho 35913 - rho 35912 * rho 35912 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4654
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX129 rho : Seg34.F), (seg34AccY129 rho : Seg34.F)⟩
      ⟨(rho 35912 : Seg34.F), (rho 35913 : Seg34.F)⟩
      ⟨(rho 35918 : Seg34.F), (rho 35919 : Seg34.F)⟩
      ⟨(seg34AccX130 rho : Seg34.F), (seg34AccY130 rho : Seg34.F)⟩
      ⟨(rho 35925 : Seg34.F), (rho 35926 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung129

theorem seg34_rung130 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34122 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX130 rho : Seg34.F), (seg34AccY130 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35925 : Seg34.F), (rho 35926 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX130 rho : Seg34.F), (seg34AccY130 rho : Seg34.F)⟩
        ⟨(rho 35925 : Seg34.F), (rho 35926 : Seg34.F)⟩
        ⟨(seg34AccX131 rho : Seg34.F), (seg34AccY131 rho : Seg34.F)⟩
        ⟨(rho 35938 : Seg34.F), (rho 35939 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart58 at p58
  rcases p58 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4655, r4656, r4657, r4658, r4659, r4660, r4661, r4662, r4663, r4664, r4665, r4666, r4667, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow4655 Seg34.relationLc685 Seg34.relationLc685Part0 Seg34.relationLc685Part1 Seg34.relationLc685Part2 Seg34.relationLc685Part3 Seg34.relationLc685Part4 Seg34.relationLc685Part5 Seg34.relationLc685Part6 Seg34.relationLc685Part7 Seg34.relationLc685Part8 at r4655
  unfold Seg34.relationRow4656 Seg34.relationLc686 Seg34.relationLc686Part0 Seg34.relationLc686Part1 Seg34.relationLc686Part2 Seg34.relationLc686Part3 Seg34.relationLc686Part4 at r4656
  unfold Seg34.relationRow4657 Seg34.relationLc687 Seg34.relationLc687Part0 Seg34.relationLc687Part1 Seg34.relationLc687Part2 Seg34.relationLc687Part3 Seg34.relationLc687Part4 at r4657
  unfold Seg34.relationRow4658 at r4658
  unfold Seg34.relationRow4659 at r4659
  unfold Seg34.relationRow4660 at r4660
  unfold Seg34.relationRow4661 Seg34.relationLc688 Seg34.relationLc688Part0 Seg34.relationLc688Part1 Seg34.relationLc688Part2 Seg34.relationLc688Part3 Seg34.relationLc688Part4 at r4661
  unfold Seg34.relationRow4662 Seg34.relationLc689 Seg34.relationLc689Part0 Seg34.relationLc689Part1 Seg34.relationLc689Part2 Seg34.relationLc689Part3 Seg34.relationLc689Part4 at r4662
  unfold Seg34.relationRow4663 at r4663
  unfold Seg34.relationRow4664 at r4664
  unfold Seg34.relationRow4665 at r4665
  unfold Seg34.relationRow4666 at r4666
  unfold Seg34.relationRow4667 at r4667
  have hrung130 (bit : Bool) (hbit : rho 34122 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX130 rho : Seg34.F), (seg34AccY130 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35925 : Seg34.F), (rho 35926 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX130 rho : Seg34.F), (seg34AccY130 rho : Seg34.F)⟩
        ⟨(rho 35925 : Seg34.F), (rho 35926 : Seg34.F)⟩
        ⟨(seg34AccX131 rho : Seg34.F), (seg34AccY131 rho : Seg34.F)⟩
        ⟨(rho 35938 : Seg34.F), (rho 35939 : Seg34.F)⟩ := by
    have ha0 : (rho 35925 + rho 35926) * (seg34AccX130 rho + seg34AccY130 rho) = rho 35927 := by
      rw [seg34LadderFlatX130_eq, seg34LadderFlatY130_eq]
      unfold seg34LadderFlatX130 seg34LadderFlatY130
      linear_combination r4655
    have ha1 : rho 35926 * seg34AccX130 rho = rho 35928 := by
      rw [seg34LadderFlatX130_eq]
      unfold seg34LadderFlatX130
      linear_combination r4656
    have ha2 : rho 35925 * seg34AccY130 rho = rho 35929 := by
      rw [seg34LadderFlatY130_eq]
      unfold seg34LadderFlatY130
      linear_combination r4657
    have ha3 : 3021 * rho 35928 * rho 35929 = rho 35930 := by
      linear_combination r4658
    have ha4 : rho 35931 * (1 + rho 35930) = rho 35928 + rho 35929 := by
      linear_combination r4659
    have ha5 : rho 35932 * (1 - rho 35930) = rho 35927 - rho 35928 - rho 35929 := by
      linear_combination r4660
    have haddx :
        rho 35931 * (1 + 3021 * (rho 35926 * seg34AccX130 rho) * (rho 35925 * seg34AccY130 rho)) =
          rho 35926 * seg34AccX130 rho + rho 35925 * seg34AccY130 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35932 * (1 - 3021 * (rho 35926 * seg34AccX130 rho) * (rho 35925 * seg34AccY130 rho)) =
          (-1) * (rho 35926 * seg34AccX130 rho) - rho 35925 * seg34AccY130 rho +
            (seg34AccY130 rho - seg34AccX130 rho * (-1)) * (rho 35925 + rho 35926) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35932 * (1 - rho 35930) = rho 35927 - rho 35928 - rho 35929 := ha5
        _ = (-1) * rho 35928 - rho 35929 + (seg34AccY130 rho - seg34AccX130 rho * (-1)) * (rho 35925 + rho 35926) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX131 rho = seg34AccX130 rho - Bool.toZMod bit * (seg34AccX130 rho - rho 35931) := by
      have hd : rho 35933 = Bool.toZMod bit * (rho 35931 - seg34AccX130 rho) := by
        rw [← hbit, seg34LadderFlatX130_eq]
        unfold seg34LadderFlatX130
        linear_combination -r4661
      unfold seg34AccX131
      linear_combination hd
    have hsely : seg34AccY131 rho = seg34AccY130 rho - Bool.toZMod bit * (seg34AccY130 rho - rho 35932) := by
      have hd : rho 35934 = Bool.toZMod bit * (rho 35932 - seg34AccY130 rho) := by
        rw [← hbit, seg34LadderFlatY130_eq]
        unfold seg34LadderFlatY130
        linear_combination -r4662
      unfold seg34AccY131
      linear_combination hd
    have hd0 : rho 35925 * rho 35926 = rho 35935 := by linear_combination r4663
    have hd1 : rho 35925 * rho 35925 = rho 35936 := by linear_combination r4664
    have hd2 : rho 35926 * rho 35926 = rho 35937 := by linear_combination r4665
    have hd3 : rho 35938 * (rho 35926 * rho 35926 + rho 35925 * rho 35925 * (-1)) = 2 * (rho 35925 * rho 35926) := by
      rw [hd0, hd1, hd2]
      linear_combination r4666
    have hd4 : rho 35939 * (2 - (rho 35926 * rho 35926 + rho 35925 * rho 35925 * (-1))) = rho 35926 * rho 35926 - rho 35925 * rho 35925 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4667
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX130 rho : Seg34.F), (seg34AccY130 rho : Seg34.F)⟩
      ⟨(rho 35925 : Seg34.F), (rho 35926 : Seg34.F)⟩
      ⟨(rho 35931 : Seg34.F), (rho 35932 : Seg34.F)⟩
      ⟨(seg34AccX131 rho : Seg34.F), (seg34AccY131 rho : Seg34.F)⟩
      ⟨(rho 35938 : Seg34.F), (rho 35939 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung130

theorem seg34_rung131 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34123 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX131 rho : Seg34.F), (seg34AccY131 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35938 : Seg34.F), (rho 35939 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX131 rho : Seg34.F), (seg34AccY131 rho : Seg34.F)⟩
        ⟨(rho 35938 : Seg34.F), (rho 35939 : Seg34.F)⟩
        ⟨(seg34AccX132 rho : Seg34.F), (seg34AccY132 rho : Seg34.F)⟩
        ⟨(rho 35951 : Seg34.F), (rho 35952 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart58 at p58
  rcases p58 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4668, r4669, r4670, r4671, r4672, r4673, r4674, r4675, r4676, r4677, r4678, r4679, r4680, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow4668 Seg34.relationLc690 Seg34.relationLc690Part0 Seg34.relationLc690Part1 Seg34.relationLc690Part2 Seg34.relationLc690Part3 Seg34.relationLc690Part4 Seg34.relationLc690Part5 Seg34.relationLc690Part6 Seg34.relationLc690Part7 Seg34.relationLc690Part8 at r4668
  unfold Seg34.relationRow4669 Seg34.relationLc691 Seg34.relationLc691Part0 Seg34.relationLc691Part1 Seg34.relationLc691Part2 Seg34.relationLc691Part3 Seg34.relationLc691Part4 at r4669
  unfold Seg34.relationRow4670 Seg34.relationLc692 Seg34.relationLc692Part0 Seg34.relationLc692Part1 Seg34.relationLc692Part2 Seg34.relationLc692Part3 Seg34.relationLc692Part4 at r4670
  unfold Seg34.relationRow4671 at r4671
  unfold Seg34.relationRow4672 at r4672
  unfold Seg34.relationRow4673 at r4673
  unfold Seg34.relationRow4674 Seg34.relationLc693 Seg34.relationLc693Part0 Seg34.relationLc693Part1 Seg34.relationLc693Part2 Seg34.relationLc693Part3 Seg34.relationLc693Part4 at r4674
  unfold Seg34.relationRow4675 Seg34.relationLc694 Seg34.relationLc694Part0 Seg34.relationLc694Part1 Seg34.relationLc694Part2 Seg34.relationLc694Part3 Seg34.relationLc694Part4 at r4675
  unfold Seg34.relationRow4676 at r4676
  unfold Seg34.relationRow4677 at r4677
  unfold Seg34.relationRow4678 at r4678
  unfold Seg34.relationRow4679 at r4679
  unfold Seg34.relationRow4680 at r4680
  have hrung131 (bit : Bool) (hbit : rho 34123 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX131 rho : Seg34.F), (seg34AccY131 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35938 : Seg34.F), (rho 35939 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX131 rho : Seg34.F), (seg34AccY131 rho : Seg34.F)⟩
        ⟨(rho 35938 : Seg34.F), (rho 35939 : Seg34.F)⟩
        ⟨(seg34AccX132 rho : Seg34.F), (seg34AccY132 rho : Seg34.F)⟩
        ⟨(rho 35951 : Seg34.F), (rho 35952 : Seg34.F)⟩ := by
    have ha0 : (rho 35938 + rho 35939) * (seg34AccX131 rho + seg34AccY131 rho) = rho 35940 := by
      rw [seg34LadderFlatX131_eq, seg34LadderFlatY131_eq]
      unfold seg34LadderFlatX131 seg34LadderFlatY131
      linear_combination r4668
    have ha1 : rho 35939 * seg34AccX131 rho = rho 35941 := by
      rw [seg34LadderFlatX131_eq]
      unfold seg34LadderFlatX131
      linear_combination r4669
    have ha2 : rho 35938 * seg34AccY131 rho = rho 35942 := by
      rw [seg34LadderFlatY131_eq]
      unfold seg34LadderFlatY131
      linear_combination r4670
    have ha3 : 3021 * rho 35941 * rho 35942 = rho 35943 := by
      linear_combination r4671
    have ha4 : rho 35944 * (1 + rho 35943) = rho 35941 + rho 35942 := by
      linear_combination r4672
    have ha5 : rho 35945 * (1 - rho 35943) = rho 35940 - rho 35941 - rho 35942 := by
      linear_combination r4673
    have haddx :
        rho 35944 * (1 + 3021 * (rho 35939 * seg34AccX131 rho) * (rho 35938 * seg34AccY131 rho)) =
          rho 35939 * seg34AccX131 rho + rho 35938 * seg34AccY131 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35945 * (1 - 3021 * (rho 35939 * seg34AccX131 rho) * (rho 35938 * seg34AccY131 rho)) =
          (-1) * (rho 35939 * seg34AccX131 rho) - rho 35938 * seg34AccY131 rho +
            (seg34AccY131 rho - seg34AccX131 rho * (-1)) * (rho 35938 + rho 35939) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35945 * (1 - rho 35943) = rho 35940 - rho 35941 - rho 35942 := ha5
        _ = (-1) * rho 35941 - rho 35942 + (seg34AccY131 rho - seg34AccX131 rho * (-1)) * (rho 35938 + rho 35939) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX132 rho = seg34AccX131 rho - Bool.toZMod bit * (seg34AccX131 rho - rho 35944) := by
      have hd : rho 35946 = Bool.toZMod bit * (rho 35944 - seg34AccX131 rho) := by
        rw [← hbit, seg34LadderFlatX131_eq]
        unfold seg34LadderFlatX131
        linear_combination -r4674
      unfold seg34AccX132
      linear_combination hd
    have hsely : seg34AccY132 rho = seg34AccY131 rho - Bool.toZMod bit * (seg34AccY131 rho - rho 35945) := by
      have hd : rho 35947 = Bool.toZMod bit * (rho 35945 - seg34AccY131 rho) := by
        rw [← hbit, seg34LadderFlatY131_eq]
        unfold seg34LadderFlatY131
        linear_combination -r4675
      unfold seg34AccY132
      linear_combination hd
    have hd0 : rho 35938 * rho 35939 = rho 35948 := by linear_combination r4676
    have hd1 : rho 35938 * rho 35938 = rho 35949 := by linear_combination r4677
    have hd2 : rho 35939 * rho 35939 = rho 35950 := by linear_combination r4678
    have hd3 : rho 35951 * (rho 35939 * rho 35939 + rho 35938 * rho 35938 * (-1)) = 2 * (rho 35938 * rho 35939) := by
      rw [hd0, hd1, hd2]
      linear_combination r4679
    have hd4 : rho 35952 * (2 - (rho 35939 * rho 35939 + rho 35938 * rho 35938 * (-1))) = rho 35939 * rho 35939 - rho 35938 * rho 35938 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4680
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX131 rho : Seg34.F), (seg34AccY131 rho : Seg34.F)⟩
      ⟨(rho 35938 : Seg34.F), (rho 35939 : Seg34.F)⟩
      ⟨(rho 35944 : Seg34.F), (rho 35945 : Seg34.F)⟩
      ⟨(seg34AccX132 rho : Seg34.F), (seg34AccY132 rho : Seg34.F)⟩
      ⟨(rho 35951 : Seg34.F), (rho 35952 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung131

theorem seg34_rung132 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34124 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX132 rho : Seg34.F), (seg34AccY132 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35951 : Seg34.F), (rho 35952 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX132 rho : Seg34.F), (seg34AccY132 rho : Seg34.F)⟩
        ⟨(rho 35951 : Seg34.F), (rho 35952 : Seg34.F)⟩
        ⟨(seg34AccX133 rho : Seg34.F), (seg34AccY133 rho : Seg34.F)⟩
        ⟨(rho 35964 : Seg34.F), (rho 35965 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart58 at p58
  rcases p58 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4681, r4682, r4683, r4684, r4685, r4686, r4687, r4688, r4689, r4690, r4691, r4692, r4693, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow4681 Seg34.relationLc695 Seg34.relationLc695Part0 Seg34.relationLc695Part1 Seg34.relationLc695Part2 Seg34.relationLc695Part3 Seg34.relationLc695Part4 Seg34.relationLc695Part5 Seg34.relationLc695Part6 Seg34.relationLc695Part7 Seg34.relationLc695Part8 at r4681
  unfold Seg34.relationRow4682 Seg34.relationLc696 Seg34.relationLc696Part0 Seg34.relationLc696Part1 Seg34.relationLc696Part2 Seg34.relationLc696Part3 Seg34.relationLc696Part4 at r4682
  unfold Seg34.relationRow4683 Seg34.relationLc697 Seg34.relationLc697Part0 Seg34.relationLc697Part1 Seg34.relationLc697Part2 Seg34.relationLc697Part3 Seg34.relationLc697Part4 at r4683
  unfold Seg34.relationRow4684 at r4684
  unfold Seg34.relationRow4685 at r4685
  unfold Seg34.relationRow4686 at r4686
  unfold Seg34.relationRow4687 Seg34.relationLc698 Seg34.relationLc698Part0 Seg34.relationLc698Part1 Seg34.relationLc698Part2 Seg34.relationLc698Part3 Seg34.relationLc698Part4 at r4687
  unfold Seg34.relationRow4688 Seg34.relationLc699 Seg34.relationLc699Part0 Seg34.relationLc699Part1 Seg34.relationLc699Part2 Seg34.relationLc699Part3 Seg34.relationLc699Part4 at r4688
  unfold Seg34.relationRow4689 at r4689
  unfold Seg34.relationRow4690 at r4690
  unfold Seg34.relationRow4691 at r4691
  unfold Seg34.relationRow4692 at r4692
  unfold Seg34.relationRow4693 at r4693
  have hrung132 (bit : Bool) (hbit : rho 34124 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX132 rho : Seg34.F), (seg34AccY132 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35951 : Seg34.F), (rho 35952 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX132 rho : Seg34.F), (seg34AccY132 rho : Seg34.F)⟩
        ⟨(rho 35951 : Seg34.F), (rho 35952 : Seg34.F)⟩
        ⟨(seg34AccX133 rho : Seg34.F), (seg34AccY133 rho : Seg34.F)⟩
        ⟨(rho 35964 : Seg34.F), (rho 35965 : Seg34.F)⟩ := by
    have ha0 : (rho 35951 + rho 35952) * (seg34AccX132 rho + seg34AccY132 rho) = rho 35953 := by
      rw [seg34LadderFlatX132_eq, seg34LadderFlatY132_eq]
      unfold seg34LadderFlatX132 seg34LadderFlatY132
      linear_combination r4681
    have ha1 : rho 35952 * seg34AccX132 rho = rho 35954 := by
      rw [seg34LadderFlatX132_eq]
      unfold seg34LadderFlatX132
      linear_combination r4682
    have ha2 : rho 35951 * seg34AccY132 rho = rho 35955 := by
      rw [seg34LadderFlatY132_eq]
      unfold seg34LadderFlatY132
      linear_combination r4683
    have ha3 : 3021 * rho 35954 * rho 35955 = rho 35956 := by
      linear_combination r4684
    have ha4 : rho 35957 * (1 + rho 35956) = rho 35954 + rho 35955 := by
      linear_combination r4685
    have ha5 : rho 35958 * (1 - rho 35956) = rho 35953 - rho 35954 - rho 35955 := by
      linear_combination r4686
    have haddx :
        rho 35957 * (1 + 3021 * (rho 35952 * seg34AccX132 rho) * (rho 35951 * seg34AccY132 rho)) =
          rho 35952 * seg34AccX132 rho + rho 35951 * seg34AccY132 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35958 * (1 - 3021 * (rho 35952 * seg34AccX132 rho) * (rho 35951 * seg34AccY132 rho)) =
          (-1) * (rho 35952 * seg34AccX132 rho) - rho 35951 * seg34AccY132 rho +
            (seg34AccY132 rho - seg34AccX132 rho * (-1)) * (rho 35951 + rho 35952) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35958 * (1 - rho 35956) = rho 35953 - rho 35954 - rho 35955 := ha5
        _ = (-1) * rho 35954 - rho 35955 + (seg34AccY132 rho - seg34AccX132 rho * (-1)) * (rho 35951 + rho 35952) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX133 rho = seg34AccX132 rho - Bool.toZMod bit * (seg34AccX132 rho - rho 35957) := by
      have hd : rho 35959 = Bool.toZMod bit * (rho 35957 - seg34AccX132 rho) := by
        rw [← hbit, seg34LadderFlatX132_eq]
        unfold seg34LadderFlatX132
        linear_combination -r4687
      unfold seg34AccX133
      linear_combination hd
    have hsely : seg34AccY133 rho = seg34AccY132 rho - Bool.toZMod bit * (seg34AccY132 rho - rho 35958) := by
      have hd : rho 35960 = Bool.toZMod bit * (rho 35958 - seg34AccY132 rho) := by
        rw [← hbit, seg34LadderFlatY132_eq]
        unfold seg34LadderFlatY132
        linear_combination -r4688
      unfold seg34AccY133
      linear_combination hd
    have hd0 : rho 35951 * rho 35952 = rho 35961 := by linear_combination r4689
    have hd1 : rho 35951 * rho 35951 = rho 35962 := by linear_combination r4690
    have hd2 : rho 35952 * rho 35952 = rho 35963 := by linear_combination r4691
    have hd3 : rho 35964 * (rho 35952 * rho 35952 + rho 35951 * rho 35951 * (-1)) = 2 * (rho 35951 * rho 35952) := by
      rw [hd0, hd1, hd2]
      linear_combination r4692
    have hd4 : rho 35965 * (2 - (rho 35952 * rho 35952 + rho 35951 * rho 35951 * (-1))) = rho 35952 * rho 35952 - rho 35951 * rho 35951 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4693
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX132 rho : Seg34.F), (seg34AccY132 rho : Seg34.F)⟩
      ⟨(rho 35951 : Seg34.F), (rho 35952 : Seg34.F)⟩
      ⟨(rho 35957 : Seg34.F), (rho 35958 : Seg34.F)⟩
      ⟨(seg34AccX133 rho : Seg34.F), (seg34AccY133 rho : Seg34.F)⟩
      ⟨(rho 35964 : Seg34.F), (rho 35965 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung132

theorem seg34_rung133 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34125 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX133 rho : Seg34.F), (seg34AccY133 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35964 : Seg34.F), (rho 35965 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX133 rho : Seg34.F), (seg34AccY133 rho : Seg34.F)⟩
        ⟨(rho 35964 : Seg34.F), (rho 35965 : Seg34.F)⟩
        ⟨(seg34AccX134 rho : Seg34.F), (seg34AccY134 rho : Seg34.F)⟩
        ⟨(rho 35977 : Seg34.F), (rho 35978 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart58 at p58
  rcases p58 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4694, r4695, r4696, r4697, r4698, r4699, r4700, r4701, r4702, r4703, r4704, r4705, r4706, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow4694 Seg34.relationLc700 Seg34.relationLc700Part0 Seg34.relationLc700Part1 Seg34.relationLc700Part2 Seg34.relationLc700Part3 Seg34.relationLc700Part4 Seg34.relationLc700Part5 Seg34.relationLc700Part6 Seg34.relationLc700Part7 Seg34.relationLc700Part8 at r4694
  unfold Seg34.relationRow4695 Seg34.relationLc701 Seg34.relationLc701Part0 Seg34.relationLc701Part1 Seg34.relationLc701Part2 Seg34.relationLc701Part3 Seg34.relationLc701Part4 at r4695
  unfold Seg34.relationRow4696 Seg34.relationLc702 Seg34.relationLc702Part0 Seg34.relationLc702Part1 Seg34.relationLc702Part2 Seg34.relationLc702Part3 Seg34.relationLc702Part4 at r4696
  unfold Seg34.relationRow4697 at r4697
  unfold Seg34.relationRow4698 at r4698
  unfold Seg34.relationRow4699 at r4699
  unfold Seg34.relationRow4700 Seg34.relationLc703 Seg34.relationLc703Part0 Seg34.relationLc703Part1 Seg34.relationLc703Part2 Seg34.relationLc703Part3 Seg34.relationLc703Part4 at r4700
  unfold Seg34.relationRow4701 Seg34.relationLc704 Seg34.relationLc704Part0 Seg34.relationLc704Part1 Seg34.relationLc704Part2 Seg34.relationLc704Part3 Seg34.relationLc704Part4 at r4701
  unfold Seg34.relationRow4702 at r4702
  unfold Seg34.relationRow4703 at r4703
  unfold Seg34.relationRow4704 at r4704
  unfold Seg34.relationRow4705 at r4705
  unfold Seg34.relationRow4706 at r4706
  have hrung133 (bit : Bool) (hbit : rho 34125 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX133 rho : Seg34.F), (seg34AccY133 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35964 : Seg34.F), (rho 35965 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX133 rho : Seg34.F), (seg34AccY133 rho : Seg34.F)⟩
        ⟨(rho 35964 : Seg34.F), (rho 35965 : Seg34.F)⟩
        ⟨(seg34AccX134 rho : Seg34.F), (seg34AccY134 rho : Seg34.F)⟩
        ⟨(rho 35977 : Seg34.F), (rho 35978 : Seg34.F)⟩ := by
    have ha0 : (rho 35964 + rho 35965) * (seg34AccX133 rho + seg34AccY133 rho) = rho 35966 := by
      rw [seg34LadderFlatX133_eq, seg34LadderFlatY133_eq]
      unfold seg34LadderFlatX133 seg34LadderFlatY133
      linear_combination r4694
    have ha1 : rho 35965 * seg34AccX133 rho = rho 35967 := by
      rw [seg34LadderFlatX133_eq]
      unfold seg34LadderFlatX133
      linear_combination r4695
    have ha2 : rho 35964 * seg34AccY133 rho = rho 35968 := by
      rw [seg34LadderFlatY133_eq]
      unfold seg34LadderFlatY133
      linear_combination r4696
    have ha3 : 3021 * rho 35967 * rho 35968 = rho 35969 := by
      linear_combination r4697
    have ha4 : rho 35970 * (1 + rho 35969) = rho 35967 + rho 35968 := by
      linear_combination r4698
    have ha5 : rho 35971 * (1 - rho 35969) = rho 35966 - rho 35967 - rho 35968 := by
      linear_combination r4699
    have haddx :
        rho 35970 * (1 + 3021 * (rho 35965 * seg34AccX133 rho) * (rho 35964 * seg34AccY133 rho)) =
          rho 35965 * seg34AccX133 rho + rho 35964 * seg34AccY133 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35971 * (1 - 3021 * (rho 35965 * seg34AccX133 rho) * (rho 35964 * seg34AccY133 rho)) =
          (-1) * (rho 35965 * seg34AccX133 rho) - rho 35964 * seg34AccY133 rho +
            (seg34AccY133 rho - seg34AccX133 rho * (-1)) * (rho 35964 + rho 35965) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35971 * (1 - rho 35969) = rho 35966 - rho 35967 - rho 35968 := ha5
        _ = (-1) * rho 35967 - rho 35968 + (seg34AccY133 rho - seg34AccX133 rho * (-1)) * (rho 35964 + rho 35965) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX134 rho = seg34AccX133 rho - Bool.toZMod bit * (seg34AccX133 rho - rho 35970) := by
      have hd : rho 35972 = Bool.toZMod bit * (rho 35970 - seg34AccX133 rho) := by
        rw [← hbit, seg34LadderFlatX133_eq]
        unfold seg34LadderFlatX133
        linear_combination -r4700
      unfold seg34AccX134
      linear_combination hd
    have hsely : seg34AccY134 rho = seg34AccY133 rho - Bool.toZMod bit * (seg34AccY133 rho - rho 35971) := by
      have hd : rho 35973 = Bool.toZMod bit * (rho 35971 - seg34AccY133 rho) := by
        rw [← hbit, seg34LadderFlatY133_eq]
        unfold seg34LadderFlatY133
        linear_combination -r4701
      unfold seg34AccY134
      linear_combination hd
    have hd0 : rho 35964 * rho 35965 = rho 35974 := by linear_combination r4702
    have hd1 : rho 35964 * rho 35964 = rho 35975 := by linear_combination r4703
    have hd2 : rho 35965 * rho 35965 = rho 35976 := by linear_combination r4704
    have hd3 : rho 35977 * (rho 35965 * rho 35965 + rho 35964 * rho 35964 * (-1)) = 2 * (rho 35964 * rho 35965) := by
      rw [hd0, hd1, hd2]
      linear_combination r4705
    have hd4 : rho 35978 * (2 - (rho 35965 * rho 35965 + rho 35964 * rho 35964 * (-1))) = rho 35965 * rho 35965 - rho 35964 * rho 35964 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4706
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX133 rho : Seg34.F), (seg34AccY133 rho : Seg34.F)⟩
      ⟨(rho 35964 : Seg34.F), (rho 35965 : Seg34.F)⟩
      ⟨(rho 35970 : Seg34.F), (rho 35971 : Seg34.F)⟩
      ⟨(seg34AccX134 rho : Seg34.F), (seg34AccY134 rho : Seg34.F)⟩
      ⟨(rho 35977 : Seg34.F), (rho 35978 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung133

theorem seg34_rung134 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34126 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX134 rho : Seg34.F), (seg34AccY134 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35977 : Seg34.F), (rho 35978 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX134 rho : Seg34.F), (seg34AccY134 rho : Seg34.F)⟩
        ⟨(rho 35977 : Seg34.F), (rho 35978 : Seg34.F)⟩
        ⟨(seg34AccX135 rho : Seg34.F), (seg34AccY135 rho : Seg34.F)⟩
        ⟨(rho 35990 : Seg34.F), (rho 35991 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart58 at p58
  rcases p58 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4707, r4708, r4709, r4710, r4711, r4712, r4713, r4714, r4715, r4716, r4717, r4718, r4719⟩
  unfold Seg34.relationRow4707 Seg34.relationLc705 Seg34.relationLc705Part0 Seg34.relationLc705Part1 Seg34.relationLc705Part2 Seg34.relationLc705Part3 Seg34.relationLc705Part4 Seg34.relationLc705Part5 Seg34.relationLc705Part6 Seg34.relationLc705Part7 Seg34.relationLc705Part8 at r4707
  unfold Seg34.relationRow4708 Seg34.relationLc706 Seg34.relationLc706Part0 Seg34.relationLc706Part1 Seg34.relationLc706Part2 Seg34.relationLc706Part3 Seg34.relationLc706Part4 at r4708
  unfold Seg34.relationRow4709 Seg34.relationLc707 Seg34.relationLc707Part0 Seg34.relationLc707Part1 Seg34.relationLc707Part2 Seg34.relationLc707Part3 Seg34.relationLc707Part4 at r4709
  unfold Seg34.relationRow4710 at r4710
  unfold Seg34.relationRow4711 at r4711
  unfold Seg34.relationRow4712 at r4712
  unfold Seg34.relationRow4713 Seg34.relationLc708 Seg34.relationLc708Part0 Seg34.relationLc708Part1 Seg34.relationLc708Part2 Seg34.relationLc708Part3 Seg34.relationLc708Part4 at r4713
  unfold Seg34.relationRow4714 Seg34.relationLc709 Seg34.relationLc709Part0 Seg34.relationLc709Part1 Seg34.relationLc709Part2 Seg34.relationLc709Part3 Seg34.relationLc709Part4 at r4714
  unfold Seg34.relationRow4715 at r4715
  unfold Seg34.relationRow4716 at r4716
  unfold Seg34.relationRow4717 at r4717
  unfold Seg34.relationRow4718 at r4718
  unfold Seg34.relationRow4719 at r4719
  have hrung134 (bit : Bool) (hbit : rho 34126 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX134 rho : Seg34.F), (seg34AccY134 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35977 : Seg34.F), (rho 35978 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX134 rho : Seg34.F), (seg34AccY134 rho : Seg34.F)⟩
        ⟨(rho 35977 : Seg34.F), (rho 35978 : Seg34.F)⟩
        ⟨(seg34AccX135 rho : Seg34.F), (seg34AccY135 rho : Seg34.F)⟩
        ⟨(rho 35990 : Seg34.F), (rho 35991 : Seg34.F)⟩ := by
    have ha0 : (rho 35977 + rho 35978) * (seg34AccX134 rho + seg34AccY134 rho) = rho 35979 := by
      rw [seg34LadderFlatX134_eq, seg34LadderFlatY134_eq]
      unfold seg34LadderFlatX134 seg34LadderFlatY134
      linear_combination r4707
    have ha1 : rho 35978 * seg34AccX134 rho = rho 35980 := by
      rw [seg34LadderFlatX134_eq]
      unfold seg34LadderFlatX134
      linear_combination r4708
    have ha2 : rho 35977 * seg34AccY134 rho = rho 35981 := by
      rw [seg34LadderFlatY134_eq]
      unfold seg34LadderFlatY134
      linear_combination r4709
    have ha3 : 3021 * rho 35980 * rho 35981 = rho 35982 := by
      linear_combination r4710
    have ha4 : rho 35983 * (1 + rho 35982) = rho 35980 + rho 35981 := by
      linear_combination r4711
    have ha5 : rho 35984 * (1 - rho 35982) = rho 35979 - rho 35980 - rho 35981 := by
      linear_combination r4712
    have haddx :
        rho 35983 * (1 + 3021 * (rho 35978 * seg34AccX134 rho) * (rho 35977 * seg34AccY134 rho)) =
          rho 35978 * seg34AccX134 rho + rho 35977 * seg34AccY134 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35984 * (1 - 3021 * (rho 35978 * seg34AccX134 rho) * (rho 35977 * seg34AccY134 rho)) =
          (-1) * (rho 35978 * seg34AccX134 rho) - rho 35977 * seg34AccY134 rho +
            (seg34AccY134 rho - seg34AccX134 rho * (-1)) * (rho 35977 + rho 35978) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35984 * (1 - rho 35982) = rho 35979 - rho 35980 - rho 35981 := ha5
        _ = (-1) * rho 35980 - rho 35981 + (seg34AccY134 rho - seg34AccX134 rho * (-1)) * (rho 35977 + rho 35978) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX135 rho = seg34AccX134 rho - Bool.toZMod bit * (seg34AccX134 rho - rho 35983) := by
      have hd : rho 35985 = Bool.toZMod bit * (rho 35983 - seg34AccX134 rho) := by
        rw [← hbit, seg34LadderFlatX134_eq]
        unfold seg34LadderFlatX134
        linear_combination -r4713
      unfold seg34AccX135
      linear_combination hd
    have hsely : seg34AccY135 rho = seg34AccY134 rho - Bool.toZMod bit * (seg34AccY134 rho - rho 35984) := by
      have hd : rho 35986 = Bool.toZMod bit * (rho 35984 - seg34AccY134 rho) := by
        rw [← hbit, seg34LadderFlatY134_eq]
        unfold seg34LadderFlatY134
        linear_combination -r4714
      unfold seg34AccY135
      linear_combination hd
    have hd0 : rho 35977 * rho 35978 = rho 35987 := by linear_combination r4715
    have hd1 : rho 35977 * rho 35977 = rho 35988 := by linear_combination r4716
    have hd2 : rho 35978 * rho 35978 = rho 35989 := by linear_combination r4717
    have hd3 : rho 35990 * (rho 35978 * rho 35978 + rho 35977 * rho 35977 * (-1)) = 2 * (rho 35977 * rho 35978) := by
      rw [hd0, hd1, hd2]
      linear_combination r4718
    have hd4 : rho 35991 * (2 - (rho 35978 * rho 35978 + rho 35977 * rho 35977 * (-1))) = rho 35978 * rho 35978 - rho 35977 * rho 35977 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4719
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX134 rho : Seg34.F), (seg34AccY134 rho : Seg34.F)⟩
      ⟨(rho 35977 : Seg34.F), (rho 35978 : Seg34.F)⟩
      ⟨(rho 35983 : Seg34.F), (rho 35984 : Seg34.F)⟩
      ⟨(seg34AccX135 rho : Seg34.F), (seg34AccY135 rho : Seg34.F)⟩
      ⟨(rho 35990 : Seg34.F), (rho 35991 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung134

theorem seg34_rung135 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34127 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX135 rho : Seg34.F), (seg34AccY135 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35990 : Seg34.F), (rho 35991 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX135 rho : Seg34.F), (seg34AccY135 rho : Seg34.F)⟩
        ⟨(rho 35990 : Seg34.F), (rho 35991 : Seg34.F)⟩
        ⟨(seg34AccX136 rho : Seg34.F), (seg34AccY136 rho : Seg34.F)⟩
        ⟨(rho 36003 : Seg34.F), (rho 36004 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart59 at p59
  rcases p59 with ⟨r4720, r4721, r4722, r4723, r4724, r4725, r4726, r4727, r4728, r4729, r4730, r4731, r4732, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow4720 Seg34.relationLc710 Seg34.relationLc710Part0 Seg34.relationLc710Part1 Seg34.relationLc710Part2 Seg34.relationLc710Part3 Seg34.relationLc710Part4 Seg34.relationLc710Part5 Seg34.relationLc710Part6 Seg34.relationLc710Part7 Seg34.relationLc710Part8 at r4720
  unfold Seg34.relationRow4721 Seg34.relationLc711 Seg34.relationLc711Part0 Seg34.relationLc711Part1 Seg34.relationLc711Part2 Seg34.relationLc711Part3 Seg34.relationLc711Part4 at r4721
  unfold Seg34.relationRow4722 Seg34.relationLc712 Seg34.relationLc712Part0 Seg34.relationLc712Part1 Seg34.relationLc712Part2 Seg34.relationLc712Part3 Seg34.relationLc712Part4 at r4722
  unfold Seg34.relationRow4723 at r4723
  unfold Seg34.relationRow4724 at r4724
  unfold Seg34.relationRow4725 at r4725
  unfold Seg34.relationRow4726 Seg34.relationLc713 Seg34.relationLc713Part0 Seg34.relationLc713Part1 Seg34.relationLc713Part2 Seg34.relationLc713Part3 Seg34.relationLc713Part4 at r4726
  unfold Seg34.relationRow4727 Seg34.relationLc714 Seg34.relationLc714Part0 Seg34.relationLc714Part1 Seg34.relationLc714Part2 Seg34.relationLc714Part3 Seg34.relationLc714Part4 at r4727
  unfold Seg34.relationRow4728 at r4728
  unfold Seg34.relationRow4729 at r4729
  unfold Seg34.relationRow4730 at r4730
  unfold Seg34.relationRow4731 at r4731
  unfold Seg34.relationRow4732 at r4732
  have hrung135 (bit : Bool) (hbit : rho 34127 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX135 rho : Seg34.F), (seg34AccY135 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35990 : Seg34.F), (rho 35991 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX135 rho : Seg34.F), (seg34AccY135 rho : Seg34.F)⟩
        ⟨(rho 35990 : Seg34.F), (rho 35991 : Seg34.F)⟩
        ⟨(seg34AccX136 rho : Seg34.F), (seg34AccY136 rho : Seg34.F)⟩
        ⟨(rho 36003 : Seg34.F), (rho 36004 : Seg34.F)⟩ := by
    have ha0 : (rho 35990 + rho 35991) * (seg34AccX135 rho + seg34AccY135 rho) = rho 35992 := by
      rw [seg34LadderFlatX135_eq, seg34LadderFlatY135_eq]
      unfold seg34LadderFlatX135 seg34LadderFlatY135
      linear_combination r4720
    have ha1 : rho 35991 * seg34AccX135 rho = rho 35993 := by
      rw [seg34LadderFlatX135_eq]
      unfold seg34LadderFlatX135
      linear_combination r4721
    have ha2 : rho 35990 * seg34AccY135 rho = rho 35994 := by
      rw [seg34LadderFlatY135_eq]
      unfold seg34LadderFlatY135
      linear_combination r4722
    have ha3 : 3021 * rho 35993 * rho 35994 = rho 35995 := by
      linear_combination r4723
    have ha4 : rho 35996 * (1 + rho 35995) = rho 35993 + rho 35994 := by
      linear_combination r4724
    have ha5 : rho 35997 * (1 - rho 35995) = rho 35992 - rho 35993 - rho 35994 := by
      linear_combination r4725
    have haddx :
        rho 35996 * (1 + 3021 * (rho 35991 * seg34AccX135 rho) * (rho 35990 * seg34AccY135 rho)) =
          rho 35991 * seg34AccX135 rho + rho 35990 * seg34AccY135 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35997 * (1 - 3021 * (rho 35991 * seg34AccX135 rho) * (rho 35990 * seg34AccY135 rho)) =
          (-1) * (rho 35991 * seg34AccX135 rho) - rho 35990 * seg34AccY135 rho +
            (seg34AccY135 rho - seg34AccX135 rho * (-1)) * (rho 35990 + rho 35991) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35997 * (1 - rho 35995) = rho 35992 - rho 35993 - rho 35994 := ha5
        _ = (-1) * rho 35993 - rho 35994 + (seg34AccY135 rho - seg34AccX135 rho * (-1)) * (rho 35990 + rho 35991) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX136 rho = seg34AccX135 rho - Bool.toZMod bit * (seg34AccX135 rho - rho 35996) := by
      have hd : rho 35998 = Bool.toZMod bit * (rho 35996 - seg34AccX135 rho) := by
        rw [← hbit, seg34LadderFlatX135_eq]
        unfold seg34LadderFlatX135
        linear_combination -r4726
      unfold seg34AccX136
      linear_combination hd
    have hsely : seg34AccY136 rho = seg34AccY135 rho - Bool.toZMod bit * (seg34AccY135 rho - rho 35997) := by
      have hd : rho 35999 = Bool.toZMod bit * (rho 35997 - seg34AccY135 rho) := by
        rw [← hbit, seg34LadderFlatY135_eq]
        unfold seg34LadderFlatY135
        linear_combination -r4727
      unfold seg34AccY136
      linear_combination hd
    have hd0 : rho 35990 * rho 35991 = rho 36000 := by linear_combination r4728
    have hd1 : rho 35990 * rho 35990 = rho 36001 := by linear_combination r4729
    have hd2 : rho 35991 * rho 35991 = rho 36002 := by linear_combination r4730
    have hd3 : rho 36003 * (rho 35991 * rho 35991 + rho 35990 * rho 35990 * (-1)) = 2 * (rho 35990 * rho 35991) := by
      rw [hd0, hd1, hd2]
      linear_combination r4731
    have hd4 : rho 36004 * (2 - (rho 35991 * rho 35991 + rho 35990 * rho 35990 * (-1))) = rho 35991 * rho 35991 - rho 35990 * rho 35990 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4732
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX135 rho : Seg34.F), (seg34AccY135 rho : Seg34.F)⟩
      ⟨(rho 35990 : Seg34.F), (rho 35991 : Seg34.F)⟩
      ⟨(rho 35996 : Seg34.F), (rho 35997 : Seg34.F)⟩
      ⟨(seg34AccX136 rho : Seg34.F), (seg34AccY136 rho : Seg34.F)⟩
      ⟨(rho 36003 : Seg34.F), (rho 36004 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung135

theorem seg34_rung136 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34128 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX136 rho : Seg34.F), (seg34AccY136 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36003 : Seg34.F), (rho 36004 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX136 rho : Seg34.F), (seg34AccY136 rho : Seg34.F)⟩
        ⟨(rho 36003 : Seg34.F), (rho 36004 : Seg34.F)⟩
        ⟨(seg34AccX137 rho : Seg34.F), (seg34AccY137 rho : Seg34.F)⟩
        ⟨(rho 36016 : Seg34.F), (rho 36017 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart59 at p59
  rcases p59 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, r4733, r4734, r4735, r4736, r4737, r4738, r4739, r4740, r4741, r4742, r4743, r4744, r4745, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow4733 Seg34.relationLc715 Seg34.relationLc715Part0 Seg34.relationLc715Part1 Seg34.relationLc715Part2 Seg34.relationLc715Part3 Seg34.relationLc715Part4 Seg34.relationLc715Part5 Seg34.relationLc715Part6 Seg34.relationLc715Part7 Seg34.relationLc715Part8 at r4733
  unfold Seg34.relationRow4734 Seg34.relationLc716 Seg34.relationLc716Part0 Seg34.relationLc716Part1 Seg34.relationLc716Part2 Seg34.relationLc716Part3 Seg34.relationLc716Part4 at r4734
  unfold Seg34.relationRow4735 Seg34.relationLc717 Seg34.relationLc717Part0 Seg34.relationLc717Part1 Seg34.relationLc717Part2 Seg34.relationLc717Part3 Seg34.relationLc717Part4 at r4735
  unfold Seg34.relationRow4736 at r4736
  unfold Seg34.relationRow4737 at r4737
  unfold Seg34.relationRow4738 at r4738
  unfold Seg34.relationRow4739 Seg34.relationLc718 Seg34.relationLc718Part0 Seg34.relationLc718Part1 Seg34.relationLc718Part2 Seg34.relationLc718Part3 Seg34.relationLc718Part4 at r4739
  unfold Seg34.relationRow4740 Seg34.relationLc719 Seg34.relationLc719Part0 Seg34.relationLc719Part1 Seg34.relationLc719Part2 Seg34.relationLc719Part3 Seg34.relationLc719Part4 at r4740
  unfold Seg34.relationRow4741 at r4741
  unfold Seg34.relationRow4742 at r4742
  unfold Seg34.relationRow4743 at r4743
  unfold Seg34.relationRow4744 at r4744
  unfold Seg34.relationRow4745 at r4745
  have hrung136 (bit : Bool) (hbit : rho 34128 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX136 rho : Seg34.F), (seg34AccY136 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36003 : Seg34.F), (rho 36004 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX136 rho : Seg34.F), (seg34AccY136 rho : Seg34.F)⟩
        ⟨(rho 36003 : Seg34.F), (rho 36004 : Seg34.F)⟩
        ⟨(seg34AccX137 rho : Seg34.F), (seg34AccY137 rho : Seg34.F)⟩
        ⟨(rho 36016 : Seg34.F), (rho 36017 : Seg34.F)⟩ := by
    have ha0 : (rho 36003 + rho 36004) * (seg34AccX136 rho + seg34AccY136 rho) = rho 36005 := by
      rw [seg34LadderFlatX136_eq, seg34LadderFlatY136_eq]
      unfold seg34LadderFlatX136 seg34LadderFlatY136
      linear_combination r4733
    have ha1 : rho 36004 * seg34AccX136 rho = rho 36006 := by
      rw [seg34LadderFlatX136_eq]
      unfold seg34LadderFlatX136
      linear_combination r4734
    have ha2 : rho 36003 * seg34AccY136 rho = rho 36007 := by
      rw [seg34LadderFlatY136_eq]
      unfold seg34LadderFlatY136
      linear_combination r4735
    have ha3 : 3021 * rho 36006 * rho 36007 = rho 36008 := by
      linear_combination r4736
    have ha4 : rho 36009 * (1 + rho 36008) = rho 36006 + rho 36007 := by
      linear_combination r4737
    have ha5 : rho 36010 * (1 - rho 36008) = rho 36005 - rho 36006 - rho 36007 := by
      linear_combination r4738
    have haddx :
        rho 36009 * (1 + 3021 * (rho 36004 * seg34AccX136 rho) * (rho 36003 * seg34AccY136 rho)) =
          rho 36004 * seg34AccX136 rho + rho 36003 * seg34AccY136 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36010 * (1 - 3021 * (rho 36004 * seg34AccX136 rho) * (rho 36003 * seg34AccY136 rho)) =
          (-1) * (rho 36004 * seg34AccX136 rho) - rho 36003 * seg34AccY136 rho +
            (seg34AccY136 rho - seg34AccX136 rho * (-1)) * (rho 36003 + rho 36004) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36010 * (1 - rho 36008) = rho 36005 - rho 36006 - rho 36007 := ha5
        _ = (-1) * rho 36006 - rho 36007 + (seg34AccY136 rho - seg34AccX136 rho * (-1)) * (rho 36003 + rho 36004) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX137 rho = seg34AccX136 rho - Bool.toZMod bit * (seg34AccX136 rho - rho 36009) := by
      have hd : rho 36011 = Bool.toZMod bit * (rho 36009 - seg34AccX136 rho) := by
        rw [← hbit, seg34LadderFlatX136_eq]
        unfold seg34LadderFlatX136
        linear_combination -r4739
      unfold seg34AccX137
      linear_combination hd
    have hsely : seg34AccY137 rho = seg34AccY136 rho - Bool.toZMod bit * (seg34AccY136 rho - rho 36010) := by
      have hd : rho 36012 = Bool.toZMod bit * (rho 36010 - seg34AccY136 rho) := by
        rw [← hbit, seg34LadderFlatY136_eq]
        unfold seg34LadderFlatY136
        linear_combination -r4740
      unfold seg34AccY137
      linear_combination hd
    have hd0 : rho 36003 * rho 36004 = rho 36013 := by linear_combination r4741
    have hd1 : rho 36003 * rho 36003 = rho 36014 := by linear_combination r4742
    have hd2 : rho 36004 * rho 36004 = rho 36015 := by linear_combination r4743
    have hd3 : rho 36016 * (rho 36004 * rho 36004 + rho 36003 * rho 36003 * (-1)) = 2 * (rho 36003 * rho 36004) := by
      rw [hd0, hd1, hd2]
      linear_combination r4744
    have hd4 : rho 36017 * (2 - (rho 36004 * rho 36004 + rho 36003 * rho 36003 * (-1))) = rho 36004 * rho 36004 - rho 36003 * rho 36003 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4745
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX136 rho : Seg34.F), (seg34AccY136 rho : Seg34.F)⟩
      ⟨(rho 36003 : Seg34.F), (rho 36004 : Seg34.F)⟩
      ⟨(rho 36009 : Seg34.F), (rho 36010 : Seg34.F)⟩
      ⟨(seg34AccX137 rho : Seg34.F), (seg34AccY137 rho : Seg34.F)⟩
      ⟨(rho 36016 : Seg34.F), (rho 36017 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung136

theorem seg34_rung137 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34129 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX137 rho : Seg34.F), (seg34AccY137 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36016 : Seg34.F), (rho 36017 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX137 rho : Seg34.F), (seg34AccY137 rho : Seg34.F)⟩
        ⟨(rho 36016 : Seg34.F), (rho 36017 : Seg34.F)⟩
        ⟨(seg34AccX138 rho : Seg34.F), (seg34AccY138 rho : Seg34.F)⟩
        ⟨(rho 36029 : Seg34.F), (rho 36030 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart59 at p59
  rcases p59 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4746, r4747, r4748, r4749, r4750, r4751, r4752, r4753, r4754, r4755, r4756, r4757, r4758, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow4746 Seg34.relationLc720 Seg34.relationLc720Part0 Seg34.relationLc720Part1 Seg34.relationLc720Part2 Seg34.relationLc720Part3 Seg34.relationLc720Part4 Seg34.relationLc720Part5 Seg34.relationLc720Part6 Seg34.relationLc720Part7 Seg34.relationLc720Part8 at r4746
  unfold Seg34.relationRow4747 Seg34.relationLc721 Seg34.relationLc721Part0 Seg34.relationLc721Part1 Seg34.relationLc721Part2 Seg34.relationLc721Part3 Seg34.relationLc721Part4 at r4747
  unfold Seg34.relationRow4748 Seg34.relationLc722 Seg34.relationLc722Part0 Seg34.relationLc722Part1 Seg34.relationLc722Part2 Seg34.relationLc722Part3 Seg34.relationLc722Part4 at r4748
  unfold Seg34.relationRow4749 at r4749
  unfold Seg34.relationRow4750 at r4750
  unfold Seg34.relationRow4751 at r4751
  unfold Seg34.relationRow4752 Seg34.relationLc723 Seg34.relationLc723Part0 Seg34.relationLc723Part1 Seg34.relationLc723Part2 Seg34.relationLc723Part3 Seg34.relationLc723Part4 at r4752
  unfold Seg34.relationRow4753 Seg34.relationLc724 Seg34.relationLc724Part0 Seg34.relationLc724Part1 Seg34.relationLc724Part2 Seg34.relationLc724Part3 Seg34.relationLc724Part4 at r4753
  unfold Seg34.relationRow4754 at r4754
  unfold Seg34.relationRow4755 at r4755
  unfold Seg34.relationRow4756 at r4756
  unfold Seg34.relationRow4757 at r4757
  unfold Seg34.relationRow4758 at r4758
  have hrung137 (bit : Bool) (hbit : rho 34129 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX137 rho : Seg34.F), (seg34AccY137 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36016 : Seg34.F), (rho 36017 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX137 rho : Seg34.F), (seg34AccY137 rho : Seg34.F)⟩
        ⟨(rho 36016 : Seg34.F), (rho 36017 : Seg34.F)⟩
        ⟨(seg34AccX138 rho : Seg34.F), (seg34AccY138 rho : Seg34.F)⟩
        ⟨(rho 36029 : Seg34.F), (rho 36030 : Seg34.F)⟩ := by
    have ha0 : (rho 36016 + rho 36017) * (seg34AccX137 rho + seg34AccY137 rho) = rho 36018 := by
      rw [seg34LadderFlatX137_eq, seg34LadderFlatY137_eq]
      unfold seg34LadderFlatX137 seg34LadderFlatY137
      linear_combination r4746
    have ha1 : rho 36017 * seg34AccX137 rho = rho 36019 := by
      rw [seg34LadderFlatX137_eq]
      unfold seg34LadderFlatX137
      linear_combination r4747
    have ha2 : rho 36016 * seg34AccY137 rho = rho 36020 := by
      rw [seg34LadderFlatY137_eq]
      unfold seg34LadderFlatY137
      linear_combination r4748
    have ha3 : 3021 * rho 36019 * rho 36020 = rho 36021 := by
      linear_combination r4749
    have ha4 : rho 36022 * (1 + rho 36021) = rho 36019 + rho 36020 := by
      linear_combination r4750
    have ha5 : rho 36023 * (1 - rho 36021) = rho 36018 - rho 36019 - rho 36020 := by
      linear_combination r4751
    have haddx :
        rho 36022 * (1 + 3021 * (rho 36017 * seg34AccX137 rho) * (rho 36016 * seg34AccY137 rho)) =
          rho 36017 * seg34AccX137 rho + rho 36016 * seg34AccY137 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36023 * (1 - 3021 * (rho 36017 * seg34AccX137 rho) * (rho 36016 * seg34AccY137 rho)) =
          (-1) * (rho 36017 * seg34AccX137 rho) - rho 36016 * seg34AccY137 rho +
            (seg34AccY137 rho - seg34AccX137 rho * (-1)) * (rho 36016 + rho 36017) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36023 * (1 - rho 36021) = rho 36018 - rho 36019 - rho 36020 := ha5
        _ = (-1) * rho 36019 - rho 36020 + (seg34AccY137 rho - seg34AccX137 rho * (-1)) * (rho 36016 + rho 36017) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX138 rho = seg34AccX137 rho - Bool.toZMod bit * (seg34AccX137 rho - rho 36022) := by
      have hd : rho 36024 = Bool.toZMod bit * (rho 36022 - seg34AccX137 rho) := by
        rw [← hbit, seg34LadderFlatX137_eq]
        unfold seg34LadderFlatX137
        linear_combination -r4752
      unfold seg34AccX138
      linear_combination hd
    have hsely : seg34AccY138 rho = seg34AccY137 rho - Bool.toZMod bit * (seg34AccY137 rho - rho 36023) := by
      have hd : rho 36025 = Bool.toZMod bit * (rho 36023 - seg34AccY137 rho) := by
        rw [← hbit, seg34LadderFlatY137_eq]
        unfold seg34LadderFlatY137
        linear_combination -r4753
      unfold seg34AccY138
      linear_combination hd
    have hd0 : rho 36016 * rho 36017 = rho 36026 := by linear_combination r4754
    have hd1 : rho 36016 * rho 36016 = rho 36027 := by linear_combination r4755
    have hd2 : rho 36017 * rho 36017 = rho 36028 := by linear_combination r4756
    have hd3 : rho 36029 * (rho 36017 * rho 36017 + rho 36016 * rho 36016 * (-1)) = 2 * (rho 36016 * rho 36017) := by
      rw [hd0, hd1, hd2]
      linear_combination r4757
    have hd4 : rho 36030 * (2 - (rho 36017 * rho 36017 + rho 36016 * rho 36016 * (-1))) = rho 36017 * rho 36017 - rho 36016 * rho 36016 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4758
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX137 rho : Seg34.F), (seg34AccY137 rho : Seg34.F)⟩
      ⟨(rho 36016 : Seg34.F), (rho 36017 : Seg34.F)⟩
      ⟨(rho 36022 : Seg34.F), (rho 36023 : Seg34.F)⟩
      ⟨(seg34AccX138 rho : Seg34.F), (seg34AccY138 rho : Seg34.F)⟩
      ⟨(rho 36029 : Seg34.F), (rho 36030 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung137

theorem seg34_rung138 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34130 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX138 rho : Seg34.F), (seg34AccY138 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36029 : Seg34.F), (rho 36030 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX138 rho : Seg34.F), (seg34AccY138 rho : Seg34.F)⟩
        ⟨(rho 36029 : Seg34.F), (rho 36030 : Seg34.F)⟩
        ⟨(seg34AccX139 rho : Seg34.F), (seg34AccY139 rho : Seg34.F)⟩
        ⟨(rho 36042 : Seg34.F), (rho 36043 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart59 at p59
  rcases p59 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4759, r4760, r4761, r4762, r4763, r4764, r4765, r4766, r4767, r4768, r4769, r4770, r4771, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow4759 Seg34.relationLc725 Seg34.relationLc725Part0 Seg34.relationLc725Part1 Seg34.relationLc725Part2 Seg34.relationLc725Part3 Seg34.relationLc725Part4 Seg34.relationLc725Part5 Seg34.relationLc725Part6 Seg34.relationLc725Part7 Seg34.relationLc725Part8 at r4759
  unfold Seg34.relationRow4760 Seg34.relationLc726 Seg34.relationLc726Part0 Seg34.relationLc726Part1 Seg34.relationLc726Part2 Seg34.relationLc726Part3 Seg34.relationLc726Part4 at r4760
  unfold Seg34.relationRow4761 Seg34.relationLc727 Seg34.relationLc727Part0 Seg34.relationLc727Part1 Seg34.relationLc727Part2 Seg34.relationLc727Part3 Seg34.relationLc727Part4 at r4761
  unfold Seg34.relationRow4762 at r4762
  unfold Seg34.relationRow4763 at r4763
  unfold Seg34.relationRow4764 at r4764
  unfold Seg34.relationRow4765 Seg34.relationLc728 Seg34.relationLc728Part0 Seg34.relationLc728Part1 Seg34.relationLc728Part2 Seg34.relationLc728Part3 Seg34.relationLc728Part4 at r4765
  unfold Seg34.relationRow4766 Seg34.relationLc729 Seg34.relationLc729Part0 Seg34.relationLc729Part1 Seg34.relationLc729Part2 Seg34.relationLc729Part3 Seg34.relationLc729Part4 at r4766
  unfold Seg34.relationRow4767 at r4767
  unfold Seg34.relationRow4768 at r4768
  unfold Seg34.relationRow4769 at r4769
  unfold Seg34.relationRow4770 at r4770
  unfold Seg34.relationRow4771 at r4771
  have hrung138 (bit : Bool) (hbit : rho 34130 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX138 rho : Seg34.F), (seg34AccY138 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36029 : Seg34.F), (rho 36030 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX138 rho : Seg34.F), (seg34AccY138 rho : Seg34.F)⟩
        ⟨(rho 36029 : Seg34.F), (rho 36030 : Seg34.F)⟩
        ⟨(seg34AccX139 rho : Seg34.F), (seg34AccY139 rho : Seg34.F)⟩
        ⟨(rho 36042 : Seg34.F), (rho 36043 : Seg34.F)⟩ := by
    have ha0 : (rho 36029 + rho 36030) * (seg34AccX138 rho + seg34AccY138 rho) = rho 36031 := by
      rw [seg34LadderFlatX138_eq, seg34LadderFlatY138_eq]
      unfold seg34LadderFlatX138 seg34LadderFlatY138
      linear_combination r4759
    have ha1 : rho 36030 * seg34AccX138 rho = rho 36032 := by
      rw [seg34LadderFlatX138_eq]
      unfold seg34LadderFlatX138
      linear_combination r4760
    have ha2 : rho 36029 * seg34AccY138 rho = rho 36033 := by
      rw [seg34LadderFlatY138_eq]
      unfold seg34LadderFlatY138
      linear_combination r4761
    have ha3 : 3021 * rho 36032 * rho 36033 = rho 36034 := by
      linear_combination r4762
    have ha4 : rho 36035 * (1 + rho 36034) = rho 36032 + rho 36033 := by
      linear_combination r4763
    have ha5 : rho 36036 * (1 - rho 36034) = rho 36031 - rho 36032 - rho 36033 := by
      linear_combination r4764
    have haddx :
        rho 36035 * (1 + 3021 * (rho 36030 * seg34AccX138 rho) * (rho 36029 * seg34AccY138 rho)) =
          rho 36030 * seg34AccX138 rho + rho 36029 * seg34AccY138 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36036 * (1 - 3021 * (rho 36030 * seg34AccX138 rho) * (rho 36029 * seg34AccY138 rho)) =
          (-1) * (rho 36030 * seg34AccX138 rho) - rho 36029 * seg34AccY138 rho +
            (seg34AccY138 rho - seg34AccX138 rho * (-1)) * (rho 36029 + rho 36030) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36036 * (1 - rho 36034) = rho 36031 - rho 36032 - rho 36033 := ha5
        _ = (-1) * rho 36032 - rho 36033 + (seg34AccY138 rho - seg34AccX138 rho * (-1)) * (rho 36029 + rho 36030) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX139 rho = seg34AccX138 rho - Bool.toZMod bit * (seg34AccX138 rho - rho 36035) := by
      have hd : rho 36037 = Bool.toZMod bit * (rho 36035 - seg34AccX138 rho) := by
        rw [← hbit, seg34LadderFlatX138_eq]
        unfold seg34LadderFlatX138
        linear_combination -r4765
      unfold seg34AccX139
      linear_combination hd
    have hsely : seg34AccY139 rho = seg34AccY138 rho - Bool.toZMod bit * (seg34AccY138 rho - rho 36036) := by
      have hd : rho 36038 = Bool.toZMod bit * (rho 36036 - seg34AccY138 rho) := by
        rw [← hbit, seg34LadderFlatY138_eq]
        unfold seg34LadderFlatY138
        linear_combination -r4766
      unfold seg34AccY139
      linear_combination hd
    have hd0 : rho 36029 * rho 36030 = rho 36039 := by linear_combination r4767
    have hd1 : rho 36029 * rho 36029 = rho 36040 := by linear_combination r4768
    have hd2 : rho 36030 * rho 36030 = rho 36041 := by linear_combination r4769
    have hd3 : rho 36042 * (rho 36030 * rho 36030 + rho 36029 * rho 36029 * (-1)) = 2 * (rho 36029 * rho 36030) := by
      rw [hd0, hd1, hd2]
      linear_combination r4770
    have hd4 : rho 36043 * (2 - (rho 36030 * rho 36030 + rho 36029 * rho 36029 * (-1))) = rho 36030 * rho 36030 - rho 36029 * rho 36029 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4771
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX138 rho : Seg34.F), (seg34AccY138 rho : Seg34.F)⟩
      ⟨(rho 36029 : Seg34.F), (rho 36030 : Seg34.F)⟩
      ⟨(rho 36035 : Seg34.F), (rho 36036 : Seg34.F)⟩
      ⟨(seg34AccX139 rho : Seg34.F), (seg34AccY139 rho : Seg34.F)⟩
      ⟨(rho 36042 : Seg34.F), (rho 36043 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung138

theorem seg34_rung139 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34131 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX139 rho : Seg34.F), (seg34AccY139 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36042 : Seg34.F), (rho 36043 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX139 rho : Seg34.F), (seg34AccY139 rho : Seg34.F)⟩
        ⟨(rho 36042 : Seg34.F), (rho 36043 : Seg34.F)⟩
        ⟨(seg34AccX140 rho : Seg34.F), (seg34AccY140 rho : Seg34.F)⟩
        ⟨(rho 36055 : Seg34.F), (rho 36056 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart59 at p59
  rcases p59 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4772, r4773, r4774, r4775, r4776, r4777, r4778, r4779, r4780, r4781, r4782, r4783, r4784, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow4772 Seg34.relationLc730 Seg34.relationLc730Part0 Seg34.relationLc730Part1 Seg34.relationLc730Part2 Seg34.relationLc730Part3 Seg34.relationLc730Part4 Seg34.relationLc730Part5 Seg34.relationLc730Part6 Seg34.relationLc730Part7 Seg34.relationLc730Part8 at r4772
  unfold Seg34.relationRow4773 Seg34.relationLc731 Seg34.relationLc731Part0 Seg34.relationLc731Part1 Seg34.relationLc731Part2 Seg34.relationLc731Part3 Seg34.relationLc731Part4 at r4773
  unfold Seg34.relationRow4774 Seg34.relationLc732 Seg34.relationLc732Part0 Seg34.relationLc732Part1 Seg34.relationLc732Part2 Seg34.relationLc732Part3 Seg34.relationLc732Part4 at r4774
  unfold Seg34.relationRow4775 at r4775
  unfold Seg34.relationRow4776 at r4776
  unfold Seg34.relationRow4777 at r4777
  unfold Seg34.relationRow4778 Seg34.relationLc733 Seg34.relationLc733Part0 Seg34.relationLc733Part1 Seg34.relationLc733Part2 Seg34.relationLc733Part3 Seg34.relationLc733Part4 at r4778
  unfold Seg34.relationRow4779 Seg34.relationLc734 Seg34.relationLc734Part0 Seg34.relationLc734Part1 Seg34.relationLc734Part2 Seg34.relationLc734Part3 Seg34.relationLc734Part4 at r4779
  unfold Seg34.relationRow4780 at r4780
  unfold Seg34.relationRow4781 at r4781
  unfold Seg34.relationRow4782 at r4782
  unfold Seg34.relationRow4783 at r4783
  unfold Seg34.relationRow4784 at r4784
  have hrung139 (bit : Bool) (hbit : rho 34131 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX139 rho : Seg34.F), (seg34AccY139 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36042 : Seg34.F), (rho 36043 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX139 rho : Seg34.F), (seg34AccY139 rho : Seg34.F)⟩
        ⟨(rho 36042 : Seg34.F), (rho 36043 : Seg34.F)⟩
        ⟨(seg34AccX140 rho : Seg34.F), (seg34AccY140 rho : Seg34.F)⟩
        ⟨(rho 36055 : Seg34.F), (rho 36056 : Seg34.F)⟩ := by
    have ha0 : (rho 36042 + rho 36043) * (seg34AccX139 rho + seg34AccY139 rho) = rho 36044 := by
      rw [seg34LadderFlatX139_eq, seg34LadderFlatY139_eq]
      unfold seg34LadderFlatX139 seg34LadderFlatY139
      linear_combination r4772
    have ha1 : rho 36043 * seg34AccX139 rho = rho 36045 := by
      rw [seg34LadderFlatX139_eq]
      unfold seg34LadderFlatX139
      linear_combination r4773
    have ha2 : rho 36042 * seg34AccY139 rho = rho 36046 := by
      rw [seg34LadderFlatY139_eq]
      unfold seg34LadderFlatY139
      linear_combination r4774
    have ha3 : 3021 * rho 36045 * rho 36046 = rho 36047 := by
      linear_combination r4775
    have ha4 : rho 36048 * (1 + rho 36047) = rho 36045 + rho 36046 := by
      linear_combination r4776
    have ha5 : rho 36049 * (1 - rho 36047) = rho 36044 - rho 36045 - rho 36046 := by
      linear_combination r4777
    have haddx :
        rho 36048 * (1 + 3021 * (rho 36043 * seg34AccX139 rho) * (rho 36042 * seg34AccY139 rho)) =
          rho 36043 * seg34AccX139 rho + rho 36042 * seg34AccY139 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36049 * (1 - 3021 * (rho 36043 * seg34AccX139 rho) * (rho 36042 * seg34AccY139 rho)) =
          (-1) * (rho 36043 * seg34AccX139 rho) - rho 36042 * seg34AccY139 rho +
            (seg34AccY139 rho - seg34AccX139 rho * (-1)) * (rho 36042 + rho 36043) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36049 * (1 - rho 36047) = rho 36044 - rho 36045 - rho 36046 := ha5
        _ = (-1) * rho 36045 - rho 36046 + (seg34AccY139 rho - seg34AccX139 rho * (-1)) * (rho 36042 + rho 36043) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX140 rho = seg34AccX139 rho - Bool.toZMod bit * (seg34AccX139 rho - rho 36048) := by
      have hd : rho 36050 = Bool.toZMod bit * (rho 36048 - seg34AccX139 rho) := by
        rw [← hbit, seg34LadderFlatX139_eq]
        unfold seg34LadderFlatX139
        linear_combination -r4778
      unfold seg34AccX140
      linear_combination hd
    have hsely : seg34AccY140 rho = seg34AccY139 rho - Bool.toZMod bit * (seg34AccY139 rho - rho 36049) := by
      have hd : rho 36051 = Bool.toZMod bit * (rho 36049 - seg34AccY139 rho) := by
        rw [← hbit, seg34LadderFlatY139_eq]
        unfold seg34LadderFlatY139
        linear_combination -r4779
      unfold seg34AccY140
      linear_combination hd
    have hd0 : rho 36042 * rho 36043 = rho 36052 := by linear_combination r4780
    have hd1 : rho 36042 * rho 36042 = rho 36053 := by linear_combination r4781
    have hd2 : rho 36043 * rho 36043 = rho 36054 := by linear_combination r4782
    have hd3 : rho 36055 * (rho 36043 * rho 36043 + rho 36042 * rho 36042 * (-1)) = 2 * (rho 36042 * rho 36043) := by
      rw [hd0, hd1, hd2]
      linear_combination r4783
    have hd4 : rho 36056 * (2 - (rho 36043 * rho 36043 + rho 36042 * rho 36042 * (-1))) = rho 36043 * rho 36043 - rho 36042 * rho 36042 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4784
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX139 rho : Seg34.F), (seg34AccY139 rho : Seg34.F)⟩
      ⟨(rho 36042 : Seg34.F), (rho 36043 : Seg34.F)⟩
      ⟨(rho 36048 : Seg34.F), (rho 36049 : Seg34.F)⟩
      ⟨(seg34AccX140 rho : Seg34.F), (seg34AccY140 rho : Seg34.F)⟩
      ⟨(rho 36055 : Seg34.F), (rho 36056 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung139

theorem seg34_rung140 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34132 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX140 rho : Seg34.F), (seg34AccY140 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36055 : Seg34.F), (rho 36056 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX140 rho : Seg34.F), (seg34AccY140 rho : Seg34.F)⟩
        ⟨(rho 36055 : Seg34.F), (rho 36056 : Seg34.F)⟩
        ⟨(seg34AccX141 rho : Seg34.F), (seg34AccY141 rho : Seg34.F)⟩
        ⟨(rho 36068 : Seg34.F), (rho 36069 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart59 at p59
  rcases p59 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4785, r4786, r4787, r4788, r4789, r4790, r4791, r4792, r4793, r4794, r4795, r4796, r4797, _, _⟩
  unfold Seg34.relationRow4785 Seg34.relationLc735 Seg34.relationLc735Part0 Seg34.relationLc735Part1 Seg34.relationLc735Part2 Seg34.relationLc735Part3 Seg34.relationLc735Part4 Seg34.relationLc735Part5 Seg34.relationLc735Part6 Seg34.relationLc735Part7 Seg34.relationLc735Part8 at r4785
  unfold Seg34.relationRow4786 Seg34.relationLc736 Seg34.relationLc736Part0 Seg34.relationLc736Part1 Seg34.relationLc736Part2 Seg34.relationLc736Part3 Seg34.relationLc736Part4 at r4786
  unfold Seg34.relationRow4787 Seg34.relationLc737 Seg34.relationLc737Part0 Seg34.relationLc737Part1 Seg34.relationLc737Part2 Seg34.relationLc737Part3 Seg34.relationLc737Part4 at r4787
  unfold Seg34.relationRow4788 at r4788
  unfold Seg34.relationRow4789 at r4789
  unfold Seg34.relationRow4790 at r4790
  unfold Seg34.relationRow4791 Seg34.relationLc738 Seg34.relationLc738Part0 Seg34.relationLc738Part1 Seg34.relationLc738Part2 Seg34.relationLc738Part3 Seg34.relationLc738Part4 at r4791
  unfold Seg34.relationRow4792 Seg34.relationLc739 Seg34.relationLc739Part0 Seg34.relationLc739Part1 Seg34.relationLc739Part2 Seg34.relationLc739Part3 Seg34.relationLc739Part4 at r4792
  unfold Seg34.relationRow4793 at r4793
  unfold Seg34.relationRow4794 at r4794
  unfold Seg34.relationRow4795 at r4795
  unfold Seg34.relationRow4796 at r4796
  unfold Seg34.relationRow4797 at r4797
  have hrung140 (bit : Bool) (hbit : rho 34132 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX140 rho : Seg34.F), (seg34AccY140 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36055 : Seg34.F), (rho 36056 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX140 rho : Seg34.F), (seg34AccY140 rho : Seg34.F)⟩
        ⟨(rho 36055 : Seg34.F), (rho 36056 : Seg34.F)⟩
        ⟨(seg34AccX141 rho : Seg34.F), (seg34AccY141 rho : Seg34.F)⟩
        ⟨(rho 36068 : Seg34.F), (rho 36069 : Seg34.F)⟩ := by
    have ha0 : (rho 36055 + rho 36056) * (seg34AccX140 rho + seg34AccY140 rho) = rho 36057 := by
      rw [seg34LadderFlatX140_eq, seg34LadderFlatY140_eq]
      unfold seg34LadderFlatX140 seg34LadderFlatY140
      linear_combination r4785
    have ha1 : rho 36056 * seg34AccX140 rho = rho 36058 := by
      rw [seg34LadderFlatX140_eq]
      unfold seg34LadderFlatX140
      linear_combination r4786
    have ha2 : rho 36055 * seg34AccY140 rho = rho 36059 := by
      rw [seg34LadderFlatY140_eq]
      unfold seg34LadderFlatY140
      linear_combination r4787
    have ha3 : 3021 * rho 36058 * rho 36059 = rho 36060 := by
      linear_combination r4788
    have ha4 : rho 36061 * (1 + rho 36060) = rho 36058 + rho 36059 := by
      linear_combination r4789
    have ha5 : rho 36062 * (1 - rho 36060) = rho 36057 - rho 36058 - rho 36059 := by
      linear_combination r4790
    have haddx :
        rho 36061 * (1 + 3021 * (rho 36056 * seg34AccX140 rho) * (rho 36055 * seg34AccY140 rho)) =
          rho 36056 * seg34AccX140 rho + rho 36055 * seg34AccY140 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36062 * (1 - 3021 * (rho 36056 * seg34AccX140 rho) * (rho 36055 * seg34AccY140 rho)) =
          (-1) * (rho 36056 * seg34AccX140 rho) - rho 36055 * seg34AccY140 rho +
            (seg34AccY140 rho - seg34AccX140 rho * (-1)) * (rho 36055 + rho 36056) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36062 * (1 - rho 36060) = rho 36057 - rho 36058 - rho 36059 := ha5
        _ = (-1) * rho 36058 - rho 36059 + (seg34AccY140 rho - seg34AccX140 rho * (-1)) * (rho 36055 + rho 36056) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX141 rho = seg34AccX140 rho - Bool.toZMod bit * (seg34AccX140 rho - rho 36061) := by
      have hd : rho 36063 = Bool.toZMod bit * (rho 36061 - seg34AccX140 rho) := by
        rw [← hbit, seg34LadderFlatX140_eq]
        unfold seg34LadderFlatX140
        linear_combination -r4791
      unfold seg34AccX141
      linear_combination hd
    have hsely : seg34AccY141 rho = seg34AccY140 rho - Bool.toZMod bit * (seg34AccY140 rho - rho 36062) := by
      have hd : rho 36064 = Bool.toZMod bit * (rho 36062 - seg34AccY140 rho) := by
        rw [← hbit, seg34LadderFlatY140_eq]
        unfold seg34LadderFlatY140
        linear_combination -r4792
      unfold seg34AccY141
      linear_combination hd
    have hd0 : rho 36055 * rho 36056 = rho 36065 := by linear_combination r4793
    have hd1 : rho 36055 * rho 36055 = rho 36066 := by linear_combination r4794
    have hd2 : rho 36056 * rho 36056 = rho 36067 := by linear_combination r4795
    have hd3 : rho 36068 * (rho 36056 * rho 36056 + rho 36055 * rho 36055 * (-1)) = 2 * (rho 36055 * rho 36056) := by
      rw [hd0, hd1, hd2]
      linear_combination r4796
    have hd4 : rho 36069 * (2 - (rho 36056 * rho 36056 + rho 36055 * rho 36055 * (-1))) = rho 36056 * rho 36056 - rho 36055 * rho 36055 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4797
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX140 rho : Seg34.F), (seg34AccY140 rho : Seg34.F)⟩
      ⟨(rho 36055 : Seg34.F), (rho 36056 : Seg34.F)⟩
      ⟨(rho 36061 : Seg34.F), (rho 36062 : Seg34.F)⟩
      ⟨(seg34AccX141 rho : Seg34.F), (seg34AccY141 rho : Seg34.F)⟩
      ⟨(rho 36068 : Seg34.F), (rho 36069 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung140

theorem seg34_rung141 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34133 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX141 rho : Seg34.F), (seg34AccY141 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36068 : Seg34.F), (rho 36069 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX141 rho : Seg34.F), (seg34AccY141 rho : Seg34.F)⟩
        ⟨(rho 36068 : Seg34.F), (rho 36069 : Seg34.F)⟩
        ⟨(seg34AccX142 rho : Seg34.F), (seg34AccY142 rho : Seg34.F)⟩
        ⟨(rho 36081 : Seg34.F), (rho 36082 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart59 at p59
  rcases p59 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4798, r4799⟩
  unfold Seg34.relationPart60 at p60
  rcases p60 with ⟨r4800, r4801, r4802, r4803, r4804, r4805, r4806, r4807, r4808, r4809, r4810, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow4798 Seg34.relationLc740 Seg34.relationLc740Part0 Seg34.relationLc740Part1 Seg34.relationLc740Part2 Seg34.relationLc740Part3 Seg34.relationLc740Part4 Seg34.relationLc740Part5 Seg34.relationLc740Part6 Seg34.relationLc740Part7 Seg34.relationLc740Part8 at r4798
  unfold Seg34.relationRow4799 Seg34.relationLc741 Seg34.relationLc741Part0 Seg34.relationLc741Part1 Seg34.relationLc741Part2 Seg34.relationLc741Part3 Seg34.relationLc741Part4 at r4799
  unfold Seg34.relationRow4800 Seg34.relationLc742 Seg34.relationLc742Part0 Seg34.relationLc742Part1 Seg34.relationLc742Part2 Seg34.relationLc742Part3 Seg34.relationLc742Part4 at r4800
  unfold Seg34.relationRow4801 at r4801
  unfold Seg34.relationRow4802 at r4802
  unfold Seg34.relationRow4803 at r4803
  unfold Seg34.relationRow4804 Seg34.relationLc743 Seg34.relationLc743Part0 Seg34.relationLc743Part1 Seg34.relationLc743Part2 Seg34.relationLc743Part3 Seg34.relationLc743Part4 at r4804
  unfold Seg34.relationRow4805 Seg34.relationLc744 Seg34.relationLc744Part0 Seg34.relationLc744Part1 Seg34.relationLc744Part2 Seg34.relationLc744Part3 Seg34.relationLc744Part4 at r4805
  unfold Seg34.relationRow4806 at r4806
  unfold Seg34.relationRow4807 at r4807
  unfold Seg34.relationRow4808 at r4808
  unfold Seg34.relationRow4809 at r4809
  unfold Seg34.relationRow4810 at r4810
  have hrung141 (bit : Bool) (hbit : rho 34133 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX141 rho : Seg34.F), (seg34AccY141 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36068 : Seg34.F), (rho 36069 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX141 rho : Seg34.F), (seg34AccY141 rho : Seg34.F)⟩
        ⟨(rho 36068 : Seg34.F), (rho 36069 : Seg34.F)⟩
        ⟨(seg34AccX142 rho : Seg34.F), (seg34AccY142 rho : Seg34.F)⟩
        ⟨(rho 36081 : Seg34.F), (rho 36082 : Seg34.F)⟩ := by
    have ha0 : (rho 36068 + rho 36069) * (seg34AccX141 rho + seg34AccY141 rho) = rho 36070 := by
      rw [seg34LadderFlatX141_eq, seg34LadderFlatY141_eq]
      unfold seg34LadderFlatX141 seg34LadderFlatY141
      linear_combination r4798
    have ha1 : rho 36069 * seg34AccX141 rho = rho 36071 := by
      rw [seg34LadderFlatX141_eq]
      unfold seg34LadderFlatX141
      linear_combination r4799
    have ha2 : rho 36068 * seg34AccY141 rho = rho 36072 := by
      rw [seg34LadderFlatY141_eq]
      unfold seg34LadderFlatY141
      linear_combination r4800
    have ha3 : 3021 * rho 36071 * rho 36072 = rho 36073 := by
      linear_combination r4801
    have ha4 : rho 36074 * (1 + rho 36073) = rho 36071 + rho 36072 := by
      linear_combination r4802
    have ha5 : rho 36075 * (1 - rho 36073) = rho 36070 - rho 36071 - rho 36072 := by
      linear_combination r4803
    have haddx :
        rho 36074 * (1 + 3021 * (rho 36069 * seg34AccX141 rho) * (rho 36068 * seg34AccY141 rho)) =
          rho 36069 * seg34AccX141 rho + rho 36068 * seg34AccY141 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36075 * (1 - 3021 * (rho 36069 * seg34AccX141 rho) * (rho 36068 * seg34AccY141 rho)) =
          (-1) * (rho 36069 * seg34AccX141 rho) - rho 36068 * seg34AccY141 rho +
            (seg34AccY141 rho - seg34AccX141 rho * (-1)) * (rho 36068 + rho 36069) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36075 * (1 - rho 36073) = rho 36070 - rho 36071 - rho 36072 := ha5
        _ = (-1) * rho 36071 - rho 36072 + (seg34AccY141 rho - seg34AccX141 rho * (-1)) * (rho 36068 + rho 36069) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX142 rho = seg34AccX141 rho - Bool.toZMod bit * (seg34AccX141 rho - rho 36074) := by
      have hd : rho 36076 = Bool.toZMod bit * (rho 36074 - seg34AccX141 rho) := by
        rw [← hbit, seg34LadderFlatX141_eq]
        unfold seg34LadderFlatX141
        linear_combination -r4804
      unfold seg34AccX142
      linear_combination hd
    have hsely : seg34AccY142 rho = seg34AccY141 rho - Bool.toZMod bit * (seg34AccY141 rho - rho 36075) := by
      have hd : rho 36077 = Bool.toZMod bit * (rho 36075 - seg34AccY141 rho) := by
        rw [← hbit, seg34LadderFlatY141_eq]
        unfold seg34LadderFlatY141
        linear_combination -r4805
      unfold seg34AccY142
      linear_combination hd
    have hd0 : rho 36068 * rho 36069 = rho 36078 := by linear_combination r4806
    have hd1 : rho 36068 * rho 36068 = rho 36079 := by linear_combination r4807
    have hd2 : rho 36069 * rho 36069 = rho 36080 := by linear_combination r4808
    have hd3 : rho 36081 * (rho 36069 * rho 36069 + rho 36068 * rho 36068 * (-1)) = 2 * (rho 36068 * rho 36069) := by
      rw [hd0, hd1, hd2]
      linear_combination r4809
    have hd4 : rho 36082 * (2 - (rho 36069 * rho 36069 + rho 36068 * rho 36068 * (-1))) = rho 36069 * rho 36069 - rho 36068 * rho 36068 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4810
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX141 rho : Seg34.F), (seg34AccY141 rho : Seg34.F)⟩
      ⟨(rho 36068 : Seg34.F), (rho 36069 : Seg34.F)⟩
      ⟨(rho 36074 : Seg34.F), (rho 36075 : Seg34.F)⟩
      ⟨(seg34AccX142 rho : Seg34.F), (seg34AccY142 rho : Seg34.F)⟩
      ⟨(rho 36081 : Seg34.F), (rho 36082 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung141

theorem seg34_rung142 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34134 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX142 rho : Seg34.F), (seg34AccY142 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36081 : Seg34.F), (rho 36082 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX142 rho : Seg34.F), (seg34AccY142 rho : Seg34.F)⟩
        ⟨(rho 36081 : Seg34.F), (rho 36082 : Seg34.F)⟩
        ⟨(seg34AccX143 rho : Seg34.F), (seg34AccY143 rho : Seg34.F)⟩
        ⟨(rho 36094 : Seg34.F), (rho 36095 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart60 at p60
  rcases p60 with ⟨_, _, _, _, _, _, _, _, _, _, _, r4811, r4812, r4813, r4814, r4815, r4816, r4817, r4818, r4819, r4820, r4821, r4822, r4823, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow4811 Seg34.relationLc745 Seg34.relationLc745Part0 Seg34.relationLc745Part1 Seg34.relationLc745Part2 Seg34.relationLc745Part3 Seg34.relationLc745Part4 Seg34.relationLc745Part5 Seg34.relationLc745Part6 Seg34.relationLc745Part7 Seg34.relationLc745Part8 at r4811
  unfold Seg34.relationRow4812 Seg34.relationLc746 Seg34.relationLc746Part0 Seg34.relationLc746Part1 Seg34.relationLc746Part2 Seg34.relationLc746Part3 Seg34.relationLc746Part4 at r4812
  unfold Seg34.relationRow4813 Seg34.relationLc747 Seg34.relationLc747Part0 Seg34.relationLc747Part1 Seg34.relationLc747Part2 Seg34.relationLc747Part3 Seg34.relationLc747Part4 at r4813
  unfold Seg34.relationRow4814 at r4814
  unfold Seg34.relationRow4815 at r4815
  unfold Seg34.relationRow4816 at r4816
  unfold Seg34.relationRow4817 Seg34.relationLc748 Seg34.relationLc748Part0 Seg34.relationLc748Part1 Seg34.relationLc748Part2 Seg34.relationLc748Part3 Seg34.relationLc748Part4 at r4817
  unfold Seg34.relationRow4818 Seg34.relationLc749 Seg34.relationLc749Part0 Seg34.relationLc749Part1 Seg34.relationLc749Part2 Seg34.relationLc749Part3 Seg34.relationLc749Part4 at r4818
  unfold Seg34.relationRow4819 at r4819
  unfold Seg34.relationRow4820 at r4820
  unfold Seg34.relationRow4821 at r4821
  unfold Seg34.relationRow4822 at r4822
  unfold Seg34.relationRow4823 at r4823
  have hrung142 (bit : Bool) (hbit : rho 34134 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX142 rho : Seg34.F), (seg34AccY142 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36081 : Seg34.F), (rho 36082 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX142 rho : Seg34.F), (seg34AccY142 rho : Seg34.F)⟩
        ⟨(rho 36081 : Seg34.F), (rho 36082 : Seg34.F)⟩
        ⟨(seg34AccX143 rho : Seg34.F), (seg34AccY143 rho : Seg34.F)⟩
        ⟨(rho 36094 : Seg34.F), (rho 36095 : Seg34.F)⟩ := by
    have ha0 : (rho 36081 + rho 36082) * (seg34AccX142 rho + seg34AccY142 rho) = rho 36083 := by
      rw [seg34LadderFlatX142_eq, seg34LadderFlatY142_eq]
      unfold seg34LadderFlatX142 seg34LadderFlatY142
      linear_combination r4811
    have ha1 : rho 36082 * seg34AccX142 rho = rho 36084 := by
      rw [seg34LadderFlatX142_eq]
      unfold seg34LadderFlatX142
      linear_combination r4812
    have ha2 : rho 36081 * seg34AccY142 rho = rho 36085 := by
      rw [seg34LadderFlatY142_eq]
      unfold seg34LadderFlatY142
      linear_combination r4813
    have ha3 : 3021 * rho 36084 * rho 36085 = rho 36086 := by
      linear_combination r4814
    have ha4 : rho 36087 * (1 + rho 36086) = rho 36084 + rho 36085 := by
      linear_combination r4815
    have ha5 : rho 36088 * (1 - rho 36086) = rho 36083 - rho 36084 - rho 36085 := by
      linear_combination r4816
    have haddx :
        rho 36087 * (1 + 3021 * (rho 36082 * seg34AccX142 rho) * (rho 36081 * seg34AccY142 rho)) =
          rho 36082 * seg34AccX142 rho + rho 36081 * seg34AccY142 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36088 * (1 - 3021 * (rho 36082 * seg34AccX142 rho) * (rho 36081 * seg34AccY142 rho)) =
          (-1) * (rho 36082 * seg34AccX142 rho) - rho 36081 * seg34AccY142 rho +
            (seg34AccY142 rho - seg34AccX142 rho * (-1)) * (rho 36081 + rho 36082) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36088 * (1 - rho 36086) = rho 36083 - rho 36084 - rho 36085 := ha5
        _ = (-1) * rho 36084 - rho 36085 + (seg34AccY142 rho - seg34AccX142 rho * (-1)) * (rho 36081 + rho 36082) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX143 rho = seg34AccX142 rho - Bool.toZMod bit * (seg34AccX142 rho - rho 36087) := by
      have hd : rho 36089 = Bool.toZMod bit * (rho 36087 - seg34AccX142 rho) := by
        rw [← hbit, seg34LadderFlatX142_eq]
        unfold seg34LadderFlatX142
        linear_combination -r4817
      unfold seg34AccX143
      linear_combination hd
    have hsely : seg34AccY143 rho = seg34AccY142 rho - Bool.toZMod bit * (seg34AccY142 rho - rho 36088) := by
      have hd : rho 36090 = Bool.toZMod bit * (rho 36088 - seg34AccY142 rho) := by
        rw [← hbit, seg34LadderFlatY142_eq]
        unfold seg34LadderFlatY142
        linear_combination -r4818
      unfold seg34AccY143
      linear_combination hd
    have hd0 : rho 36081 * rho 36082 = rho 36091 := by linear_combination r4819
    have hd1 : rho 36081 * rho 36081 = rho 36092 := by linear_combination r4820
    have hd2 : rho 36082 * rho 36082 = rho 36093 := by linear_combination r4821
    have hd3 : rho 36094 * (rho 36082 * rho 36082 + rho 36081 * rho 36081 * (-1)) = 2 * (rho 36081 * rho 36082) := by
      rw [hd0, hd1, hd2]
      linear_combination r4822
    have hd4 : rho 36095 * (2 - (rho 36082 * rho 36082 + rho 36081 * rho 36081 * (-1))) = rho 36082 * rho 36082 - rho 36081 * rho 36081 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4823
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX142 rho : Seg34.F), (seg34AccY142 rho : Seg34.F)⟩
      ⟨(rho 36081 : Seg34.F), (rho 36082 : Seg34.F)⟩
      ⟨(rho 36087 : Seg34.F), (rho 36088 : Seg34.F)⟩
      ⟨(seg34AccX143 rho : Seg34.F), (seg34AccY143 rho : Seg34.F)⟩
      ⟨(rho 36094 : Seg34.F), (rho 36095 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung142

theorem seg34_rung143 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34135 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX143 rho : Seg34.F), (seg34AccY143 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36094 : Seg34.F), (rho 36095 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX143 rho : Seg34.F), (seg34AccY143 rho : Seg34.F)⟩
        ⟨(rho 36094 : Seg34.F), (rho 36095 : Seg34.F)⟩
        ⟨(seg34AccX144 rho : Seg34.F), (seg34AccY144 rho : Seg34.F)⟩
        ⟨(rho 36107 : Seg34.F), (rho 36108 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart60 at p60
  rcases p60 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4824, r4825, r4826, r4827, r4828, r4829, r4830, r4831, r4832, r4833, r4834, r4835, r4836, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow4824 Seg34.relationLc750 Seg34.relationLc750Part0 Seg34.relationLc750Part1 Seg34.relationLc750Part2 Seg34.relationLc750Part3 Seg34.relationLc750Part4 Seg34.relationLc750Part5 Seg34.relationLc750Part6 Seg34.relationLc750Part7 Seg34.relationLc750Part8 at r4824
  unfold Seg34.relationRow4825 Seg34.relationLc751 Seg34.relationLc751Part0 Seg34.relationLc751Part1 Seg34.relationLc751Part2 Seg34.relationLc751Part3 Seg34.relationLc751Part4 at r4825
  unfold Seg34.relationRow4826 Seg34.relationLc752 Seg34.relationLc752Part0 Seg34.relationLc752Part1 Seg34.relationLc752Part2 Seg34.relationLc752Part3 Seg34.relationLc752Part4 at r4826
  unfold Seg34.relationRow4827 at r4827
  unfold Seg34.relationRow4828 at r4828
  unfold Seg34.relationRow4829 at r4829
  unfold Seg34.relationRow4830 Seg34.relationLc753 Seg34.relationLc753Part0 Seg34.relationLc753Part1 Seg34.relationLc753Part2 Seg34.relationLc753Part3 Seg34.relationLc753Part4 at r4830
  unfold Seg34.relationRow4831 Seg34.relationLc754 Seg34.relationLc754Part0 Seg34.relationLc754Part1 Seg34.relationLc754Part2 Seg34.relationLc754Part3 Seg34.relationLc754Part4 at r4831
  unfold Seg34.relationRow4832 at r4832
  unfold Seg34.relationRow4833 at r4833
  unfold Seg34.relationRow4834 at r4834
  unfold Seg34.relationRow4835 at r4835
  unfold Seg34.relationRow4836 at r4836
  have hrung143 (bit : Bool) (hbit : rho 34135 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX143 rho : Seg34.F), (seg34AccY143 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36094 : Seg34.F), (rho 36095 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX143 rho : Seg34.F), (seg34AccY143 rho : Seg34.F)⟩
        ⟨(rho 36094 : Seg34.F), (rho 36095 : Seg34.F)⟩
        ⟨(seg34AccX144 rho : Seg34.F), (seg34AccY144 rho : Seg34.F)⟩
        ⟨(rho 36107 : Seg34.F), (rho 36108 : Seg34.F)⟩ := by
    have ha0 : (rho 36094 + rho 36095) * (seg34AccX143 rho + seg34AccY143 rho) = rho 36096 := by
      rw [seg34LadderFlatX143_eq, seg34LadderFlatY143_eq]
      unfold seg34LadderFlatX143 seg34LadderFlatY143
      linear_combination r4824
    have ha1 : rho 36095 * seg34AccX143 rho = rho 36097 := by
      rw [seg34LadderFlatX143_eq]
      unfold seg34LadderFlatX143
      linear_combination r4825
    have ha2 : rho 36094 * seg34AccY143 rho = rho 36098 := by
      rw [seg34LadderFlatY143_eq]
      unfold seg34LadderFlatY143
      linear_combination r4826
    have ha3 : 3021 * rho 36097 * rho 36098 = rho 36099 := by
      linear_combination r4827
    have ha4 : rho 36100 * (1 + rho 36099) = rho 36097 + rho 36098 := by
      linear_combination r4828
    have ha5 : rho 36101 * (1 - rho 36099) = rho 36096 - rho 36097 - rho 36098 := by
      linear_combination r4829
    have haddx :
        rho 36100 * (1 + 3021 * (rho 36095 * seg34AccX143 rho) * (rho 36094 * seg34AccY143 rho)) =
          rho 36095 * seg34AccX143 rho + rho 36094 * seg34AccY143 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36101 * (1 - 3021 * (rho 36095 * seg34AccX143 rho) * (rho 36094 * seg34AccY143 rho)) =
          (-1) * (rho 36095 * seg34AccX143 rho) - rho 36094 * seg34AccY143 rho +
            (seg34AccY143 rho - seg34AccX143 rho * (-1)) * (rho 36094 + rho 36095) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36101 * (1 - rho 36099) = rho 36096 - rho 36097 - rho 36098 := ha5
        _ = (-1) * rho 36097 - rho 36098 + (seg34AccY143 rho - seg34AccX143 rho * (-1)) * (rho 36094 + rho 36095) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX144 rho = seg34AccX143 rho - Bool.toZMod bit * (seg34AccX143 rho - rho 36100) := by
      have hd : rho 36102 = Bool.toZMod bit * (rho 36100 - seg34AccX143 rho) := by
        rw [← hbit, seg34LadderFlatX143_eq]
        unfold seg34LadderFlatX143
        linear_combination -r4830
      unfold seg34AccX144
      linear_combination hd
    have hsely : seg34AccY144 rho = seg34AccY143 rho - Bool.toZMod bit * (seg34AccY143 rho - rho 36101) := by
      have hd : rho 36103 = Bool.toZMod bit * (rho 36101 - seg34AccY143 rho) := by
        rw [← hbit, seg34LadderFlatY143_eq]
        unfold seg34LadderFlatY143
        linear_combination -r4831
      unfold seg34AccY144
      linear_combination hd
    have hd0 : rho 36094 * rho 36095 = rho 36104 := by linear_combination r4832
    have hd1 : rho 36094 * rho 36094 = rho 36105 := by linear_combination r4833
    have hd2 : rho 36095 * rho 36095 = rho 36106 := by linear_combination r4834
    have hd3 : rho 36107 * (rho 36095 * rho 36095 + rho 36094 * rho 36094 * (-1)) = 2 * (rho 36094 * rho 36095) := by
      rw [hd0, hd1, hd2]
      linear_combination r4835
    have hd4 : rho 36108 * (2 - (rho 36095 * rho 36095 + rho 36094 * rho 36094 * (-1))) = rho 36095 * rho 36095 - rho 36094 * rho 36094 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4836
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX143 rho : Seg34.F), (seg34AccY143 rho : Seg34.F)⟩
      ⟨(rho 36094 : Seg34.F), (rho 36095 : Seg34.F)⟩
      ⟨(rho 36100 : Seg34.F), (rho 36101 : Seg34.F)⟩
      ⟨(seg34AccX144 rho : Seg34.F), (seg34AccY144 rho : Seg34.F)⟩
      ⟨(rho 36107 : Seg34.F), (rho 36108 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung143

theorem seg34_rung144 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34136 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX144 rho : Seg34.F), (seg34AccY144 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36107 : Seg34.F), (rho 36108 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX144 rho : Seg34.F), (seg34AccY144 rho : Seg34.F)⟩
        ⟨(rho 36107 : Seg34.F), (rho 36108 : Seg34.F)⟩
        ⟨(seg34AccX145 rho : Seg34.F), (seg34AccY145 rho : Seg34.F)⟩
        ⟨(rho 36120 : Seg34.F), (rho 36121 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart60 at p60
  rcases p60 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4837, r4838, r4839, r4840, r4841, r4842, r4843, r4844, r4845, r4846, r4847, r4848, r4849, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow4837 Seg34.relationLc755 Seg34.relationLc755Part0 Seg34.relationLc755Part1 Seg34.relationLc755Part2 Seg34.relationLc755Part3 Seg34.relationLc755Part4 Seg34.relationLc755Part5 Seg34.relationLc755Part6 Seg34.relationLc755Part7 Seg34.relationLc755Part8 Seg34.relationLc755Part9 at r4837
  unfold Seg34.relationRow4838 Seg34.relationLc756 Seg34.relationLc756Part0 Seg34.relationLc756Part1 Seg34.relationLc756Part2 Seg34.relationLc756Part3 Seg34.relationLc756Part4 at r4838
  unfold Seg34.relationRow4839 Seg34.relationLc757 Seg34.relationLc757Part0 Seg34.relationLc757Part1 Seg34.relationLc757Part2 Seg34.relationLc757Part3 Seg34.relationLc757Part4 at r4839
  unfold Seg34.relationRow4840 at r4840
  unfold Seg34.relationRow4841 at r4841
  unfold Seg34.relationRow4842 at r4842
  unfold Seg34.relationRow4843 Seg34.relationLc758 Seg34.relationLc758Part0 Seg34.relationLc758Part1 Seg34.relationLc758Part2 Seg34.relationLc758Part3 Seg34.relationLc758Part4 at r4843
  unfold Seg34.relationRow4844 Seg34.relationLc759 Seg34.relationLc759Part0 Seg34.relationLc759Part1 Seg34.relationLc759Part2 Seg34.relationLc759Part3 Seg34.relationLc759Part4 at r4844
  unfold Seg34.relationRow4845 at r4845
  unfold Seg34.relationRow4846 at r4846
  unfold Seg34.relationRow4847 at r4847
  unfold Seg34.relationRow4848 at r4848
  unfold Seg34.relationRow4849 at r4849
  have hrung144 (bit : Bool) (hbit : rho 34136 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX144 rho : Seg34.F), (seg34AccY144 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36107 : Seg34.F), (rho 36108 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX144 rho : Seg34.F), (seg34AccY144 rho : Seg34.F)⟩
        ⟨(rho 36107 : Seg34.F), (rho 36108 : Seg34.F)⟩
        ⟨(seg34AccX145 rho : Seg34.F), (seg34AccY145 rho : Seg34.F)⟩
        ⟨(rho 36120 : Seg34.F), (rho 36121 : Seg34.F)⟩ := by
    have ha0 : (rho 36107 + rho 36108) * (seg34AccX144 rho + seg34AccY144 rho) = rho 36109 := by
      rw [seg34LadderFlatX144_eq, seg34LadderFlatY144_eq]
      unfold seg34LadderFlatX144 seg34LadderFlatY144
      linear_combination r4837
    have ha1 : rho 36108 * seg34AccX144 rho = rho 36110 := by
      rw [seg34LadderFlatX144_eq]
      unfold seg34LadderFlatX144
      linear_combination r4838
    have ha2 : rho 36107 * seg34AccY144 rho = rho 36111 := by
      rw [seg34LadderFlatY144_eq]
      unfold seg34LadderFlatY144
      linear_combination r4839
    have ha3 : 3021 * rho 36110 * rho 36111 = rho 36112 := by
      linear_combination r4840
    have ha4 : rho 36113 * (1 + rho 36112) = rho 36110 + rho 36111 := by
      linear_combination r4841
    have ha5 : rho 36114 * (1 - rho 36112) = rho 36109 - rho 36110 - rho 36111 := by
      linear_combination r4842
    have haddx :
        rho 36113 * (1 + 3021 * (rho 36108 * seg34AccX144 rho) * (rho 36107 * seg34AccY144 rho)) =
          rho 36108 * seg34AccX144 rho + rho 36107 * seg34AccY144 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36114 * (1 - 3021 * (rho 36108 * seg34AccX144 rho) * (rho 36107 * seg34AccY144 rho)) =
          (-1) * (rho 36108 * seg34AccX144 rho) - rho 36107 * seg34AccY144 rho +
            (seg34AccY144 rho - seg34AccX144 rho * (-1)) * (rho 36107 + rho 36108) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36114 * (1 - rho 36112) = rho 36109 - rho 36110 - rho 36111 := ha5
        _ = (-1) * rho 36110 - rho 36111 + (seg34AccY144 rho - seg34AccX144 rho * (-1)) * (rho 36107 + rho 36108) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX145 rho = seg34AccX144 rho - Bool.toZMod bit * (seg34AccX144 rho - rho 36113) := by
      have hd : rho 36115 = Bool.toZMod bit * (rho 36113 - seg34AccX144 rho) := by
        rw [← hbit, seg34LadderFlatX144_eq]
        unfold seg34LadderFlatX144
        linear_combination -r4843
      unfold seg34AccX145
      linear_combination hd
    have hsely : seg34AccY145 rho = seg34AccY144 rho - Bool.toZMod bit * (seg34AccY144 rho - rho 36114) := by
      have hd : rho 36116 = Bool.toZMod bit * (rho 36114 - seg34AccY144 rho) := by
        rw [← hbit, seg34LadderFlatY144_eq]
        unfold seg34LadderFlatY144
        linear_combination -r4844
      unfold seg34AccY145
      linear_combination hd
    have hd0 : rho 36107 * rho 36108 = rho 36117 := by linear_combination r4845
    have hd1 : rho 36107 * rho 36107 = rho 36118 := by linear_combination r4846
    have hd2 : rho 36108 * rho 36108 = rho 36119 := by linear_combination r4847
    have hd3 : rho 36120 * (rho 36108 * rho 36108 + rho 36107 * rho 36107 * (-1)) = 2 * (rho 36107 * rho 36108) := by
      rw [hd0, hd1, hd2]
      linear_combination r4848
    have hd4 : rho 36121 * (2 - (rho 36108 * rho 36108 + rho 36107 * rho 36107 * (-1))) = rho 36108 * rho 36108 - rho 36107 * rho 36107 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4849
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX144 rho : Seg34.F), (seg34AccY144 rho : Seg34.F)⟩
      ⟨(rho 36107 : Seg34.F), (rho 36108 : Seg34.F)⟩
      ⟨(rho 36113 : Seg34.F), (rho 36114 : Seg34.F)⟩
      ⟨(seg34AccX145 rho : Seg34.F), (seg34AccY145 rho : Seg34.F)⟩
      ⟨(rho 36120 : Seg34.F), (rho 36121 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung144

theorem seg34_rung145 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34137 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX145 rho : Seg34.F), (seg34AccY145 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36120 : Seg34.F), (rho 36121 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX145 rho : Seg34.F), (seg34AccY145 rho : Seg34.F)⟩
        ⟨(rho 36120 : Seg34.F), (rho 36121 : Seg34.F)⟩
        ⟨(seg34AccX146 rho : Seg34.F), (seg34AccY146 rho : Seg34.F)⟩
        ⟨(rho 36133 : Seg34.F), (rho 36134 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart60 at p60
  rcases p60 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4850, r4851, r4852, r4853, r4854, r4855, r4856, r4857, r4858, r4859, r4860, r4861, r4862, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow4850 Seg34.relationLc760 Seg34.relationLc760Part0 Seg34.relationLc760Part1 Seg34.relationLc760Part2 Seg34.relationLc760Part3 Seg34.relationLc760Part4 Seg34.relationLc760Part5 Seg34.relationLc760Part6 Seg34.relationLc760Part7 Seg34.relationLc760Part8 Seg34.relationLc760Part9 at r4850
  unfold Seg34.relationRow4851 Seg34.relationLc761 Seg34.relationLc761Part0 Seg34.relationLc761Part1 Seg34.relationLc761Part2 Seg34.relationLc761Part3 Seg34.relationLc761Part4 at r4851
  unfold Seg34.relationRow4852 Seg34.relationLc762 Seg34.relationLc762Part0 Seg34.relationLc762Part1 Seg34.relationLc762Part2 Seg34.relationLc762Part3 Seg34.relationLc762Part4 at r4852
  unfold Seg34.relationRow4853 at r4853
  unfold Seg34.relationRow4854 at r4854
  unfold Seg34.relationRow4855 at r4855
  unfold Seg34.relationRow4856 Seg34.relationLc763 Seg34.relationLc763Part0 Seg34.relationLc763Part1 Seg34.relationLc763Part2 Seg34.relationLc763Part3 Seg34.relationLc763Part4 at r4856
  unfold Seg34.relationRow4857 Seg34.relationLc764 Seg34.relationLc764Part0 Seg34.relationLc764Part1 Seg34.relationLc764Part2 Seg34.relationLc764Part3 Seg34.relationLc764Part4 at r4857
  unfold Seg34.relationRow4858 at r4858
  unfold Seg34.relationRow4859 at r4859
  unfold Seg34.relationRow4860 at r4860
  unfold Seg34.relationRow4861 at r4861
  unfold Seg34.relationRow4862 at r4862
  have hrung145 (bit : Bool) (hbit : rho 34137 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX145 rho : Seg34.F), (seg34AccY145 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36120 : Seg34.F), (rho 36121 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX145 rho : Seg34.F), (seg34AccY145 rho : Seg34.F)⟩
        ⟨(rho 36120 : Seg34.F), (rho 36121 : Seg34.F)⟩
        ⟨(seg34AccX146 rho : Seg34.F), (seg34AccY146 rho : Seg34.F)⟩
        ⟨(rho 36133 : Seg34.F), (rho 36134 : Seg34.F)⟩ := by
    have ha0 : (rho 36120 + rho 36121) * (seg34AccX145 rho + seg34AccY145 rho) = rho 36122 := by
      rw [seg34LadderFlatX145_eq, seg34LadderFlatY145_eq]
      unfold seg34LadderFlatX145 seg34LadderFlatY145
      linear_combination r4850
    have ha1 : rho 36121 * seg34AccX145 rho = rho 36123 := by
      rw [seg34LadderFlatX145_eq]
      unfold seg34LadderFlatX145
      linear_combination r4851
    have ha2 : rho 36120 * seg34AccY145 rho = rho 36124 := by
      rw [seg34LadderFlatY145_eq]
      unfold seg34LadderFlatY145
      linear_combination r4852
    have ha3 : 3021 * rho 36123 * rho 36124 = rho 36125 := by
      linear_combination r4853
    have ha4 : rho 36126 * (1 + rho 36125) = rho 36123 + rho 36124 := by
      linear_combination r4854
    have ha5 : rho 36127 * (1 - rho 36125) = rho 36122 - rho 36123 - rho 36124 := by
      linear_combination r4855
    have haddx :
        rho 36126 * (1 + 3021 * (rho 36121 * seg34AccX145 rho) * (rho 36120 * seg34AccY145 rho)) =
          rho 36121 * seg34AccX145 rho + rho 36120 * seg34AccY145 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36127 * (1 - 3021 * (rho 36121 * seg34AccX145 rho) * (rho 36120 * seg34AccY145 rho)) =
          (-1) * (rho 36121 * seg34AccX145 rho) - rho 36120 * seg34AccY145 rho +
            (seg34AccY145 rho - seg34AccX145 rho * (-1)) * (rho 36120 + rho 36121) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36127 * (1 - rho 36125) = rho 36122 - rho 36123 - rho 36124 := ha5
        _ = (-1) * rho 36123 - rho 36124 + (seg34AccY145 rho - seg34AccX145 rho * (-1)) * (rho 36120 + rho 36121) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX146 rho = seg34AccX145 rho - Bool.toZMod bit * (seg34AccX145 rho - rho 36126) := by
      have hd : rho 36128 = Bool.toZMod bit * (rho 36126 - seg34AccX145 rho) := by
        rw [← hbit, seg34LadderFlatX145_eq]
        unfold seg34LadderFlatX145
        linear_combination -r4856
      unfold seg34AccX146
      linear_combination hd
    have hsely : seg34AccY146 rho = seg34AccY145 rho - Bool.toZMod bit * (seg34AccY145 rho - rho 36127) := by
      have hd : rho 36129 = Bool.toZMod bit * (rho 36127 - seg34AccY145 rho) := by
        rw [← hbit, seg34LadderFlatY145_eq]
        unfold seg34LadderFlatY145
        linear_combination -r4857
      unfold seg34AccY146
      linear_combination hd
    have hd0 : rho 36120 * rho 36121 = rho 36130 := by linear_combination r4858
    have hd1 : rho 36120 * rho 36120 = rho 36131 := by linear_combination r4859
    have hd2 : rho 36121 * rho 36121 = rho 36132 := by linear_combination r4860
    have hd3 : rho 36133 * (rho 36121 * rho 36121 + rho 36120 * rho 36120 * (-1)) = 2 * (rho 36120 * rho 36121) := by
      rw [hd0, hd1, hd2]
      linear_combination r4861
    have hd4 : rho 36134 * (2 - (rho 36121 * rho 36121 + rho 36120 * rho 36120 * (-1))) = rho 36121 * rho 36121 - rho 36120 * rho 36120 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4862
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX145 rho : Seg34.F), (seg34AccY145 rho : Seg34.F)⟩
      ⟨(rho 36120 : Seg34.F), (rho 36121 : Seg34.F)⟩
      ⟨(rho 36126 : Seg34.F), (rho 36127 : Seg34.F)⟩
      ⟨(seg34AccX146 rho : Seg34.F), (seg34AccY146 rho : Seg34.F)⟩
      ⟨(rho 36133 : Seg34.F), (rho 36134 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung145

theorem seg34_rung146 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34138 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX146 rho : Seg34.F), (seg34AccY146 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36133 : Seg34.F), (rho 36134 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX146 rho : Seg34.F), (seg34AccY146 rho : Seg34.F)⟩
        ⟨(rho 36133 : Seg34.F), (rho 36134 : Seg34.F)⟩
        ⟨(seg34AccX147 rho : Seg34.F), (seg34AccY147 rho : Seg34.F)⟩
        ⟨(rho 36146 : Seg34.F), (rho 36147 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart60 at p60
  rcases p60 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4863, r4864, r4865, r4866, r4867, r4868, r4869, r4870, r4871, r4872, r4873, r4874, r4875, _, _, _, _⟩
  unfold Seg34.relationRow4863 Seg34.relationLc765 Seg34.relationLc765Part0 Seg34.relationLc765Part1 Seg34.relationLc765Part2 Seg34.relationLc765Part3 Seg34.relationLc765Part4 Seg34.relationLc765Part5 Seg34.relationLc765Part6 Seg34.relationLc765Part7 Seg34.relationLc765Part8 Seg34.relationLc765Part9 at r4863
  unfold Seg34.relationRow4864 Seg34.relationLc766 Seg34.relationLc766Part0 Seg34.relationLc766Part1 Seg34.relationLc766Part2 Seg34.relationLc766Part3 Seg34.relationLc766Part4 at r4864
  unfold Seg34.relationRow4865 Seg34.relationLc767 Seg34.relationLc767Part0 Seg34.relationLc767Part1 Seg34.relationLc767Part2 Seg34.relationLc767Part3 Seg34.relationLc767Part4 at r4865
  unfold Seg34.relationRow4866 at r4866
  unfold Seg34.relationRow4867 at r4867
  unfold Seg34.relationRow4868 at r4868
  unfold Seg34.relationRow4869 Seg34.relationLc768 Seg34.relationLc768Part0 Seg34.relationLc768Part1 Seg34.relationLc768Part2 Seg34.relationLc768Part3 Seg34.relationLc768Part4 at r4869
  unfold Seg34.relationRow4870 Seg34.relationLc769 Seg34.relationLc769Part0 Seg34.relationLc769Part1 Seg34.relationLc769Part2 Seg34.relationLc769Part3 Seg34.relationLc769Part4 at r4870
  unfold Seg34.relationRow4871 at r4871
  unfold Seg34.relationRow4872 at r4872
  unfold Seg34.relationRow4873 at r4873
  unfold Seg34.relationRow4874 at r4874
  unfold Seg34.relationRow4875 at r4875
  have hrung146 (bit : Bool) (hbit : rho 34138 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX146 rho : Seg34.F), (seg34AccY146 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36133 : Seg34.F), (rho 36134 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX146 rho : Seg34.F), (seg34AccY146 rho : Seg34.F)⟩
        ⟨(rho 36133 : Seg34.F), (rho 36134 : Seg34.F)⟩
        ⟨(seg34AccX147 rho : Seg34.F), (seg34AccY147 rho : Seg34.F)⟩
        ⟨(rho 36146 : Seg34.F), (rho 36147 : Seg34.F)⟩ := by
    have ha0 : (rho 36133 + rho 36134) * (seg34AccX146 rho + seg34AccY146 rho) = rho 36135 := by
      rw [seg34LadderFlatX146_eq, seg34LadderFlatY146_eq]
      unfold seg34LadderFlatX146 seg34LadderFlatY146
      linear_combination r4863
    have ha1 : rho 36134 * seg34AccX146 rho = rho 36136 := by
      rw [seg34LadderFlatX146_eq]
      unfold seg34LadderFlatX146
      linear_combination r4864
    have ha2 : rho 36133 * seg34AccY146 rho = rho 36137 := by
      rw [seg34LadderFlatY146_eq]
      unfold seg34LadderFlatY146
      linear_combination r4865
    have ha3 : 3021 * rho 36136 * rho 36137 = rho 36138 := by
      linear_combination r4866
    have ha4 : rho 36139 * (1 + rho 36138) = rho 36136 + rho 36137 := by
      linear_combination r4867
    have ha5 : rho 36140 * (1 - rho 36138) = rho 36135 - rho 36136 - rho 36137 := by
      linear_combination r4868
    have haddx :
        rho 36139 * (1 + 3021 * (rho 36134 * seg34AccX146 rho) * (rho 36133 * seg34AccY146 rho)) =
          rho 36134 * seg34AccX146 rho + rho 36133 * seg34AccY146 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36140 * (1 - 3021 * (rho 36134 * seg34AccX146 rho) * (rho 36133 * seg34AccY146 rho)) =
          (-1) * (rho 36134 * seg34AccX146 rho) - rho 36133 * seg34AccY146 rho +
            (seg34AccY146 rho - seg34AccX146 rho * (-1)) * (rho 36133 + rho 36134) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36140 * (1 - rho 36138) = rho 36135 - rho 36136 - rho 36137 := ha5
        _ = (-1) * rho 36136 - rho 36137 + (seg34AccY146 rho - seg34AccX146 rho * (-1)) * (rho 36133 + rho 36134) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX147 rho = seg34AccX146 rho - Bool.toZMod bit * (seg34AccX146 rho - rho 36139) := by
      have hd : rho 36141 = Bool.toZMod bit * (rho 36139 - seg34AccX146 rho) := by
        rw [← hbit, seg34LadderFlatX146_eq]
        unfold seg34LadderFlatX146
        linear_combination -r4869
      unfold seg34AccX147
      linear_combination hd
    have hsely : seg34AccY147 rho = seg34AccY146 rho - Bool.toZMod bit * (seg34AccY146 rho - rho 36140) := by
      have hd : rho 36142 = Bool.toZMod bit * (rho 36140 - seg34AccY146 rho) := by
        rw [← hbit, seg34LadderFlatY146_eq]
        unfold seg34LadderFlatY146
        linear_combination -r4870
      unfold seg34AccY147
      linear_combination hd
    have hd0 : rho 36133 * rho 36134 = rho 36143 := by linear_combination r4871
    have hd1 : rho 36133 * rho 36133 = rho 36144 := by linear_combination r4872
    have hd2 : rho 36134 * rho 36134 = rho 36145 := by linear_combination r4873
    have hd3 : rho 36146 * (rho 36134 * rho 36134 + rho 36133 * rho 36133 * (-1)) = 2 * (rho 36133 * rho 36134) := by
      rw [hd0, hd1, hd2]
      linear_combination r4874
    have hd4 : rho 36147 * (2 - (rho 36134 * rho 36134 + rho 36133 * rho 36133 * (-1))) = rho 36134 * rho 36134 - rho 36133 * rho 36133 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4875
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX146 rho : Seg34.F), (seg34AccY146 rho : Seg34.F)⟩
      ⟨(rho 36133 : Seg34.F), (rho 36134 : Seg34.F)⟩
      ⟨(rho 36139 : Seg34.F), (rho 36140 : Seg34.F)⟩
      ⟨(seg34AccX147 rho : Seg34.F), (seg34AccY147 rho : Seg34.F)⟩
      ⟨(rho 36146 : Seg34.F), (rho 36147 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung146

theorem seg34_rung147 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34139 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX147 rho : Seg34.F), (seg34AccY147 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36146 : Seg34.F), (rho 36147 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX147 rho : Seg34.F), (seg34AccY147 rho : Seg34.F)⟩
        ⟨(rho 36146 : Seg34.F), (rho 36147 : Seg34.F)⟩
        ⟨(seg34AccX148 rho : Seg34.F), (seg34AccY148 rho : Seg34.F)⟩
        ⟨(rho 36159 : Seg34.F), (rho 36160 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart60 at p60
  rcases p60 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4876, r4877, r4878, r4879⟩
  unfold Seg34.relationPart61 at p61
  rcases p61 with ⟨r4880, r4881, r4882, r4883, r4884, r4885, r4886, r4887, r4888, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow4876 Seg34.relationLc770 Seg34.relationLc770Part0 Seg34.relationLc770Part1 Seg34.relationLc770Part2 Seg34.relationLc770Part3 Seg34.relationLc770Part4 Seg34.relationLc770Part5 Seg34.relationLc770Part6 Seg34.relationLc770Part7 Seg34.relationLc770Part8 Seg34.relationLc770Part9 at r4876
  unfold Seg34.relationRow4877 Seg34.relationLc771 Seg34.relationLc771Part0 Seg34.relationLc771Part1 Seg34.relationLc771Part2 Seg34.relationLc771Part3 Seg34.relationLc771Part4 at r4877
  unfold Seg34.relationRow4878 Seg34.relationLc772 Seg34.relationLc772Part0 Seg34.relationLc772Part1 Seg34.relationLc772Part2 Seg34.relationLc772Part3 Seg34.relationLc772Part4 at r4878
  unfold Seg34.relationRow4879 at r4879
  unfold Seg34.relationRow4880 at r4880
  unfold Seg34.relationRow4881 at r4881
  unfold Seg34.relationRow4882 Seg34.relationLc773 Seg34.relationLc773Part0 Seg34.relationLc773Part1 Seg34.relationLc773Part2 Seg34.relationLc773Part3 Seg34.relationLc773Part4 at r4882
  unfold Seg34.relationRow4883 Seg34.relationLc774 Seg34.relationLc774Part0 Seg34.relationLc774Part1 Seg34.relationLc774Part2 Seg34.relationLc774Part3 Seg34.relationLc774Part4 at r4883
  unfold Seg34.relationRow4884 at r4884
  unfold Seg34.relationRow4885 at r4885
  unfold Seg34.relationRow4886 at r4886
  unfold Seg34.relationRow4887 at r4887
  unfold Seg34.relationRow4888 at r4888
  have hrung147 (bit : Bool) (hbit : rho 34139 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX147 rho : Seg34.F), (seg34AccY147 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36146 : Seg34.F), (rho 36147 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX147 rho : Seg34.F), (seg34AccY147 rho : Seg34.F)⟩
        ⟨(rho 36146 : Seg34.F), (rho 36147 : Seg34.F)⟩
        ⟨(seg34AccX148 rho : Seg34.F), (seg34AccY148 rho : Seg34.F)⟩
        ⟨(rho 36159 : Seg34.F), (rho 36160 : Seg34.F)⟩ := by
    have ha0 : (rho 36146 + rho 36147) * (seg34AccX147 rho + seg34AccY147 rho) = rho 36148 := by
      rw [seg34LadderFlatX147_eq, seg34LadderFlatY147_eq]
      unfold seg34LadderFlatX147 seg34LadderFlatY147
      linear_combination r4876
    have ha1 : rho 36147 * seg34AccX147 rho = rho 36149 := by
      rw [seg34LadderFlatX147_eq]
      unfold seg34LadderFlatX147
      linear_combination r4877
    have ha2 : rho 36146 * seg34AccY147 rho = rho 36150 := by
      rw [seg34LadderFlatY147_eq]
      unfold seg34LadderFlatY147
      linear_combination r4878
    have ha3 : 3021 * rho 36149 * rho 36150 = rho 36151 := by
      linear_combination r4879
    have ha4 : rho 36152 * (1 + rho 36151) = rho 36149 + rho 36150 := by
      linear_combination r4880
    have ha5 : rho 36153 * (1 - rho 36151) = rho 36148 - rho 36149 - rho 36150 := by
      linear_combination r4881
    have haddx :
        rho 36152 * (1 + 3021 * (rho 36147 * seg34AccX147 rho) * (rho 36146 * seg34AccY147 rho)) =
          rho 36147 * seg34AccX147 rho + rho 36146 * seg34AccY147 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36153 * (1 - 3021 * (rho 36147 * seg34AccX147 rho) * (rho 36146 * seg34AccY147 rho)) =
          (-1) * (rho 36147 * seg34AccX147 rho) - rho 36146 * seg34AccY147 rho +
            (seg34AccY147 rho - seg34AccX147 rho * (-1)) * (rho 36146 + rho 36147) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36153 * (1 - rho 36151) = rho 36148 - rho 36149 - rho 36150 := ha5
        _ = (-1) * rho 36149 - rho 36150 + (seg34AccY147 rho - seg34AccX147 rho * (-1)) * (rho 36146 + rho 36147) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX148 rho = seg34AccX147 rho - Bool.toZMod bit * (seg34AccX147 rho - rho 36152) := by
      have hd : rho 36154 = Bool.toZMod bit * (rho 36152 - seg34AccX147 rho) := by
        rw [← hbit, seg34LadderFlatX147_eq]
        unfold seg34LadderFlatX147
        linear_combination -r4882
      unfold seg34AccX148
      linear_combination hd
    have hsely : seg34AccY148 rho = seg34AccY147 rho - Bool.toZMod bit * (seg34AccY147 rho - rho 36153) := by
      have hd : rho 36155 = Bool.toZMod bit * (rho 36153 - seg34AccY147 rho) := by
        rw [← hbit, seg34LadderFlatY147_eq]
        unfold seg34LadderFlatY147
        linear_combination -r4883
      unfold seg34AccY148
      linear_combination hd
    have hd0 : rho 36146 * rho 36147 = rho 36156 := by linear_combination r4884
    have hd1 : rho 36146 * rho 36146 = rho 36157 := by linear_combination r4885
    have hd2 : rho 36147 * rho 36147 = rho 36158 := by linear_combination r4886
    have hd3 : rho 36159 * (rho 36147 * rho 36147 + rho 36146 * rho 36146 * (-1)) = 2 * (rho 36146 * rho 36147) := by
      rw [hd0, hd1, hd2]
      linear_combination r4887
    have hd4 : rho 36160 * (2 - (rho 36147 * rho 36147 + rho 36146 * rho 36146 * (-1))) = rho 36147 * rho 36147 - rho 36146 * rho 36146 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4888
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX147 rho : Seg34.F), (seg34AccY147 rho : Seg34.F)⟩
      ⟨(rho 36146 : Seg34.F), (rho 36147 : Seg34.F)⟩
      ⟨(rho 36152 : Seg34.F), (rho 36153 : Seg34.F)⟩
      ⟨(seg34AccX148 rho : Seg34.F), (seg34AccY148 rho : Seg34.F)⟩
      ⟨(rho 36159 : Seg34.F), (rho 36160 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung147

theorem seg34_rung148 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34140 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX148 rho : Seg34.F), (seg34AccY148 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36159 : Seg34.F), (rho 36160 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX148 rho : Seg34.F), (seg34AccY148 rho : Seg34.F)⟩
        ⟨(rho 36159 : Seg34.F), (rho 36160 : Seg34.F)⟩
        ⟨(seg34AccX149 rho : Seg34.F), (seg34AccY149 rho : Seg34.F)⟩
        ⟨(rho 36172 : Seg34.F), (rho 36173 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart61 at p61
  rcases p61 with ⟨_, _, _, _, _, _, _, _, _, r4889, r4890, r4891, r4892, r4893, r4894, r4895, r4896, r4897, r4898, r4899, r4900, r4901, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow4889 Seg34.relationLc775 Seg34.relationLc775Part0 Seg34.relationLc775Part1 Seg34.relationLc775Part2 Seg34.relationLc775Part3 Seg34.relationLc775Part4 Seg34.relationLc775Part5 Seg34.relationLc775Part6 Seg34.relationLc775Part7 Seg34.relationLc775Part8 Seg34.relationLc775Part9 at r4889
  unfold Seg34.relationRow4890 Seg34.relationLc776 Seg34.relationLc776Part0 Seg34.relationLc776Part1 Seg34.relationLc776Part2 Seg34.relationLc776Part3 Seg34.relationLc776Part4 at r4890
  unfold Seg34.relationRow4891 Seg34.relationLc777 Seg34.relationLc777Part0 Seg34.relationLc777Part1 Seg34.relationLc777Part2 Seg34.relationLc777Part3 Seg34.relationLc777Part4 at r4891
  unfold Seg34.relationRow4892 at r4892
  unfold Seg34.relationRow4893 at r4893
  unfold Seg34.relationRow4894 at r4894
  unfold Seg34.relationRow4895 Seg34.relationLc778 Seg34.relationLc778Part0 Seg34.relationLc778Part1 Seg34.relationLc778Part2 Seg34.relationLc778Part3 Seg34.relationLc778Part4 at r4895
  unfold Seg34.relationRow4896 Seg34.relationLc779 Seg34.relationLc779Part0 Seg34.relationLc779Part1 Seg34.relationLc779Part2 Seg34.relationLc779Part3 Seg34.relationLc779Part4 at r4896
  unfold Seg34.relationRow4897 at r4897
  unfold Seg34.relationRow4898 at r4898
  unfold Seg34.relationRow4899 at r4899
  unfold Seg34.relationRow4900 at r4900
  unfold Seg34.relationRow4901 at r4901
  have hrung148 (bit : Bool) (hbit : rho 34140 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX148 rho : Seg34.F), (seg34AccY148 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36159 : Seg34.F), (rho 36160 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX148 rho : Seg34.F), (seg34AccY148 rho : Seg34.F)⟩
        ⟨(rho 36159 : Seg34.F), (rho 36160 : Seg34.F)⟩
        ⟨(seg34AccX149 rho : Seg34.F), (seg34AccY149 rho : Seg34.F)⟩
        ⟨(rho 36172 : Seg34.F), (rho 36173 : Seg34.F)⟩ := by
    have ha0 : (rho 36159 + rho 36160) * (seg34AccX148 rho + seg34AccY148 rho) = rho 36161 := by
      rw [seg34LadderFlatX148_eq, seg34LadderFlatY148_eq]
      unfold seg34LadderFlatX148 seg34LadderFlatY148
      linear_combination r4889
    have ha1 : rho 36160 * seg34AccX148 rho = rho 36162 := by
      rw [seg34LadderFlatX148_eq]
      unfold seg34LadderFlatX148
      linear_combination r4890
    have ha2 : rho 36159 * seg34AccY148 rho = rho 36163 := by
      rw [seg34LadderFlatY148_eq]
      unfold seg34LadderFlatY148
      linear_combination r4891
    have ha3 : 3021 * rho 36162 * rho 36163 = rho 36164 := by
      linear_combination r4892
    have ha4 : rho 36165 * (1 + rho 36164) = rho 36162 + rho 36163 := by
      linear_combination r4893
    have ha5 : rho 36166 * (1 - rho 36164) = rho 36161 - rho 36162 - rho 36163 := by
      linear_combination r4894
    have haddx :
        rho 36165 * (1 + 3021 * (rho 36160 * seg34AccX148 rho) * (rho 36159 * seg34AccY148 rho)) =
          rho 36160 * seg34AccX148 rho + rho 36159 * seg34AccY148 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36166 * (1 - 3021 * (rho 36160 * seg34AccX148 rho) * (rho 36159 * seg34AccY148 rho)) =
          (-1) * (rho 36160 * seg34AccX148 rho) - rho 36159 * seg34AccY148 rho +
            (seg34AccY148 rho - seg34AccX148 rho * (-1)) * (rho 36159 + rho 36160) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36166 * (1 - rho 36164) = rho 36161 - rho 36162 - rho 36163 := ha5
        _ = (-1) * rho 36162 - rho 36163 + (seg34AccY148 rho - seg34AccX148 rho * (-1)) * (rho 36159 + rho 36160) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX149 rho = seg34AccX148 rho - Bool.toZMod bit * (seg34AccX148 rho - rho 36165) := by
      have hd : rho 36167 = Bool.toZMod bit * (rho 36165 - seg34AccX148 rho) := by
        rw [← hbit, seg34LadderFlatX148_eq]
        unfold seg34LadderFlatX148
        linear_combination -r4895
      unfold seg34AccX149
      linear_combination hd
    have hsely : seg34AccY149 rho = seg34AccY148 rho - Bool.toZMod bit * (seg34AccY148 rho - rho 36166) := by
      have hd : rho 36168 = Bool.toZMod bit * (rho 36166 - seg34AccY148 rho) := by
        rw [← hbit, seg34LadderFlatY148_eq]
        unfold seg34LadderFlatY148
        linear_combination -r4896
      unfold seg34AccY149
      linear_combination hd
    have hd0 : rho 36159 * rho 36160 = rho 36169 := by linear_combination r4897
    have hd1 : rho 36159 * rho 36159 = rho 36170 := by linear_combination r4898
    have hd2 : rho 36160 * rho 36160 = rho 36171 := by linear_combination r4899
    have hd3 : rho 36172 * (rho 36160 * rho 36160 + rho 36159 * rho 36159 * (-1)) = 2 * (rho 36159 * rho 36160) := by
      rw [hd0, hd1, hd2]
      linear_combination r4900
    have hd4 : rho 36173 * (2 - (rho 36160 * rho 36160 + rho 36159 * rho 36159 * (-1))) = rho 36160 * rho 36160 - rho 36159 * rho 36159 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4901
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX148 rho : Seg34.F), (seg34AccY148 rho : Seg34.F)⟩
      ⟨(rho 36159 : Seg34.F), (rho 36160 : Seg34.F)⟩
      ⟨(rho 36165 : Seg34.F), (rho 36166 : Seg34.F)⟩
      ⟨(seg34AccX149 rho : Seg34.F), (seg34AccY149 rho : Seg34.F)⟩
      ⟨(rho 36172 : Seg34.F), (rho 36173 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung148

theorem seg34_rung149 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34141 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX149 rho : Seg34.F), (seg34AccY149 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36172 : Seg34.F), (rho 36173 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX149 rho : Seg34.F), (seg34AccY149 rho : Seg34.F)⟩
        ⟨(rho 36172 : Seg34.F), (rho 36173 : Seg34.F)⟩
        ⟨(seg34AccX150 rho : Seg34.F), (seg34AccY150 rho : Seg34.F)⟩
        ⟨(rho 36185 : Seg34.F), (rho 36186 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart61 at p61
  rcases p61 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4902, r4903, r4904, r4905, r4906, r4907, r4908, r4909, r4910, r4911, r4912, r4913, r4914, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow4902 Seg34.relationLc780 Seg34.relationLc780Part0 Seg34.relationLc780Part1 Seg34.relationLc780Part2 Seg34.relationLc780Part3 Seg34.relationLc780Part4 Seg34.relationLc780Part5 Seg34.relationLc780Part6 Seg34.relationLc780Part7 Seg34.relationLc780Part8 Seg34.relationLc780Part9 at r4902
  unfold Seg34.relationRow4903 Seg34.relationLc781 Seg34.relationLc781Part0 Seg34.relationLc781Part1 Seg34.relationLc781Part2 Seg34.relationLc781Part3 Seg34.relationLc781Part4 at r4903
  unfold Seg34.relationRow4904 Seg34.relationLc782 Seg34.relationLc782Part0 Seg34.relationLc782Part1 Seg34.relationLc782Part2 Seg34.relationLc782Part3 Seg34.relationLc782Part4 at r4904
  unfold Seg34.relationRow4905 at r4905
  unfold Seg34.relationRow4906 at r4906
  unfold Seg34.relationRow4907 at r4907
  unfold Seg34.relationRow4908 Seg34.relationLc783 Seg34.relationLc783Part0 Seg34.relationLc783Part1 Seg34.relationLc783Part2 Seg34.relationLc783Part3 Seg34.relationLc783Part4 at r4908
  unfold Seg34.relationRow4909 Seg34.relationLc784 Seg34.relationLc784Part0 Seg34.relationLc784Part1 Seg34.relationLc784Part2 Seg34.relationLc784Part3 Seg34.relationLc784Part4 at r4909
  unfold Seg34.relationRow4910 at r4910
  unfold Seg34.relationRow4911 at r4911
  unfold Seg34.relationRow4912 at r4912
  unfold Seg34.relationRow4913 at r4913
  unfold Seg34.relationRow4914 at r4914
  have hrung149 (bit : Bool) (hbit : rho 34141 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX149 rho : Seg34.F), (seg34AccY149 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36172 : Seg34.F), (rho 36173 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX149 rho : Seg34.F), (seg34AccY149 rho : Seg34.F)⟩
        ⟨(rho 36172 : Seg34.F), (rho 36173 : Seg34.F)⟩
        ⟨(seg34AccX150 rho : Seg34.F), (seg34AccY150 rho : Seg34.F)⟩
        ⟨(rho 36185 : Seg34.F), (rho 36186 : Seg34.F)⟩ := by
    have ha0 : (rho 36172 + rho 36173) * (seg34AccX149 rho + seg34AccY149 rho) = rho 36174 := by
      rw [seg34LadderFlatX149_eq, seg34LadderFlatY149_eq]
      unfold seg34LadderFlatX149 seg34LadderFlatY149
      linear_combination r4902
    have ha1 : rho 36173 * seg34AccX149 rho = rho 36175 := by
      rw [seg34LadderFlatX149_eq]
      unfold seg34LadderFlatX149
      linear_combination r4903
    have ha2 : rho 36172 * seg34AccY149 rho = rho 36176 := by
      rw [seg34LadderFlatY149_eq]
      unfold seg34LadderFlatY149
      linear_combination r4904
    have ha3 : 3021 * rho 36175 * rho 36176 = rho 36177 := by
      linear_combination r4905
    have ha4 : rho 36178 * (1 + rho 36177) = rho 36175 + rho 36176 := by
      linear_combination r4906
    have ha5 : rho 36179 * (1 - rho 36177) = rho 36174 - rho 36175 - rho 36176 := by
      linear_combination r4907
    have haddx :
        rho 36178 * (1 + 3021 * (rho 36173 * seg34AccX149 rho) * (rho 36172 * seg34AccY149 rho)) =
          rho 36173 * seg34AccX149 rho + rho 36172 * seg34AccY149 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36179 * (1 - 3021 * (rho 36173 * seg34AccX149 rho) * (rho 36172 * seg34AccY149 rho)) =
          (-1) * (rho 36173 * seg34AccX149 rho) - rho 36172 * seg34AccY149 rho +
            (seg34AccY149 rho - seg34AccX149 rho * (-1)) * (rho 36172 + rho 36173) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36179 * (1 - rho 36177) = rho 36174 - rho 36175 - rho 36176 := ha5
        _ = (-1) * rho 36175 - rho 36176 + (seg34AccY149 rho - seg34AccX149 rho * (-1)) * (rho 36172 + rho 36173) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX150 rho = seg34AccX149 rho - Bool.toZMod bit * (seg34AccX149 rho - rho 36178) := by
      have hd : rho 36180 = Bool.toZMod bit * (rho 36178 - seg34AccX149 rho) := by
        rw [← hbit, seg34LadderFlatX149_eq]
        unfold seg34LadderFlatX149
        linear_combination -r4908
      unfold seg34AccX150
      linear_combination hd
    have hsely : seg34AccY150 rho = seg34AccY149 rho - Bool.toZMod bit * (seg34AccY149 rho - rho 36179) := by
      have hd : rho 36181 = Bool.toZMod bit * (rho 36179 - seg34AccY149 rho) := by
        rw [← hbit, seg34LadderFlatY149_eq]
        unfold seg34LadderFlatY149
        linear_combination -r4909
      unfold seg34AccY150
      linear_combination hd
    have hd0 : rho 36172 * rho 36173 = rho 36182 := by linear_combination r4910
    have hd1 : rho 36172 * rho 36172 = rho 36183 := by linear_combination r4911
    have hd2 : rho 36173 * rho 36173 = rho 36184 := by linear_combination r4912
    have hd3 : rho 36185 * (rho 36173 * rho 36173 + rho 36172 * rho 36172 * (-1)) = 2 * (rho 36172 * rho 36173) := by
      rw [hd0, hd1, hd2]
      linear_combination r4913
    have hd4 : rho 36186 * (2 - (rho 36173 * rho 36173 + rho 36172 * rho 36172 * (-1))) = rho 36173 * rho 36173 - rho 36172 * rho 36172 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4914
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX149 rho : Seg34.F), (seg34AccY149 rho : Seg34.F)⟩
      ⟨(rho 36172 : Seg34.F), (rho 36173 : Seg34.F)⟩
      ⟨(rho 36178 : Seg34.F), (rho 36179 : Seg34.F)⟩
      ⟨(seg34AccX150 rho : Seg34.F), (seg34AccY150 rho : Seg34.F)⟩
      ⟨(rho 36185 : Seg34.F), (rho 36186 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung149

theorem seg34_rung150 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34142 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX150 rho : Seg34.F), (seg34AccY150 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36185 : Seg34.F), (rho 36186 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX150 rho : Seg34.F), (seg34AccY150 rho : Seg34.F)⟩
        ⟨(rho 36185 : Seg34.F), (rho 36186 : Seg34.F)⟩
        ⟨(seg34AccX151 rho : Seg34.F), (seg34AccY151 rho : Seg34.F)⟩
        ⟨(rho 36199 : Seg34.F), (rho 36200 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart61 at p61
  rcases p61 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4915, r4916, r4917, r4918, r4919, r4920, r4921, r4922, r4923, r4924, r4925, r4926, r4927, r4928, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow4915 Seg34.relationLc785 Seg34.relationLc785Part0 Seg34.relationLc785Part1 Seg34.relationLc785Part2 Seg34.relationLc785Part3 Seg34.relationLc785Part4 Seg34.relationLc785Part5 Seg34.relationLc785Part6 Seg34.relationLc785Part7 Seg34.relationLc785Part8 Seg34.relationLc785Part9 at r4915
  unfold Seg34.relationRow4916 at r4916
  unfold Seg34.relationRow4917 Seg34.relationLc786 Seg34.relationLc786Part0 Seg34.relationLc786Part1 Seg34.relationLc786Part2 Seg34.relationLc786Part3 Seg34.relationLc786Part4 at r4917
  unfold Seg34.relationRow4918 Seg34.relationLc787 Seg34.relationLc787Part0 Seg34.relationLc787Part1 Seg34.relationLc787Part2 Seg34.relationLc787Part3 Seg34.relationLc787Part4 at r4918
  unfold Seg34.relationRow4919 at r4919
  unfold Seg34.relationRow4920 at r4920
  unfold Seg34.relationRow4921 at r4921
  unfold Seg34.relationRow4922 Seg34.relationLc788 Seg34.relationLc788Part0 Seg34.relationLc788Part1 Seg34.relationLc788Part2 Seg34.relationLc788Part3 Seg34.relationLc788Part4 at r4922
  unfold Seg34.relationRow4923 Seg34.relationLc789 Seg34.relationLc789Part0 Seg34.relationLc789Part1 Seg34.relationLc789Part2 Seg34.relationLc789Part3 Seg34.relationLc789Part4 at r4923
  unfold Seg34.relationRow4924 at r4924
  unfold Seg34.relationRow4925 at r4925
  unfold Seg34.relationRow4926 at r4926
  unfold Seg34.relationRow4927 at r4927
  unfold Seg34.relationRow4928 at r4928
  have hrung150 (bit : Bool) (hbit : rho 34142 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX150 rho : Seg34.F), (seg34AccY150 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36185 : Seg34.F), (rho 36186 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX150 rho : Seg34.F), (seg34AccY150 rho : Seg34.F)⟩
        ⟨(rho 36185 : Seg34.F), (rho 36186 : Seg34.F)⟩
        ⟨(seg34AccX151 rho : Seg34.F), (seg34AccY151 rho : Seg34.F)⟩
        ⟨(rho 36199 : Seg34.F), (rho 36200 : Seg34.F)⟩ := by
    have hsum : seg34AccX150 rho + seg34AccY150 rho = rho 36187 := by
      rw [seg34LadderFlatX150_eq, seg34LadderFlatY150_eq]
      unfold seg34LadderFlatX150 seg34LadderFlatY150
      linear_combination r4915
    have ha0 : (rho 36185 + rho 36186) * (seg34AccX150 rho + seg34AccY150 rho) = rho 36188 := by
      rw [hsum]
      linear_combination r4916
    have ha1 : rho 36186 * seg34AccX150 rho = rho 36189 := by
      rw [seg34LadderFlatX150_eq]
      unfold seg34LadderFlatX150
      linear_combination r4917
    have ha2 : rho 36185 * seg34AccY150 rho = rho 36190 := by
      rw [seg34LadderFlatY150_eq]
      unfold seg34LadderFlatY150
      linear_combination r4918
    have ha3 : 3021 * rho 36189 * rho 36190 = rho 36191 := by
      linear_combination r4919
    have ha4 : rho 36192 * (1 + rho 36191) = rho 36189 + rho 36190 := by
      linear_combination r4920
    have ha5 : rho 36193 * (1 - rho 36191) = rho 36188 - rho 36189 - rho 36190 := by
      linear_combination r4921
    have haddx :
        rho 36192 * (1 + 3021 * (rho 36186 * seg34AccX150 rho) * (rho 36185 * seg34AccY150 rho)) =
          rho 36186 * seg34AccX150 rho + rho 36185 * seg34AccY150 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36193 * (1 - 3021 * (rho 36186 * seg34AccX150 rho) * (rho 36185 * seg34AccY150 rho)) =
          (-1) * (rho 36186 * seg34AccX150 rho) - rho 36185 * seg34AccY150 rho +
            (seg34AccY150 rho - seg34AccX150 rho * (-1)) * (rho 36185 + rho 36186) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36193 * (1 - rho 36191) = rho 36188 - rho 36189 - rho 36190 := ha5
        _ = (-1) * rho 36189 - rho 36190 + (seg34AccY150 rho - seg34AccX150 rho * (-1)) * (rho 36185 + rho 36186) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX151 rho = seg34AccX150 rho - Bool.toZMod bit * (seg34AccX150 rho - rho 36192) := by
      have hd : rho 36194 = Bool.toZMod bit * (rho 36192 - seg34AccX150 rho) := by
        rw [← hbit, seg34LadderFlatX150_eq]
        unfold seg34LadderFlatX150
        linear_combination -r4922
      unfold seg34AccX151
      linear_combination hd
    have hsely : seg34AccY151 rho = seg34AccY150 rho - Bool.toZMod bit * (seg34AccY150 rho - rho 36193) := by
      have hd : rho 36195 = Bool.toZMod bit * (rho 36193 - seg34AccY150 rho) := by
        rw [← hbit, seg34LadderFlatY150_eq]
        unfold seg34LadderFlatY150
        linear_combination -r4923
      unfold seg34AccY151
      linear_combination hd
    have hd0 : rho 36185 * rho 36186 = rho 36196 := by linear_combination r4924
    have hd1 : rho 36185 * rho 36185 = rho 36197 := by linear_combination r4925
    have hd2 : rho 36186 * rho 36186 = rho 36198 := by linear_combination r4926
    have hd3 : rho 36199 * (rho 36186 * rho 36186 + rho 36185 * rho 36185 * (-1)) = 2 * (rho 36185 * rho 36186) := by
      rw [hd0, hd1, hd2]
      linear_combination r4927
    have hd4 : rho 36200 * (2 - (rho 36186 * rho 36186 + rho 36185 * rho 36185 * (-1))) = rho 36186 * rho 36186 - rho 36185 * rho 36185 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4928
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX150 rho : Seg34.F), (seg34AccY150 rho : Seg34.F)⟩
      ⟨(rho 36185 : Seg34.F), (rho 36186 : Seg34.F)⟩
      ⟨(rho 36192 : Seg34.F), (rho 36193 : Seg34.F)⟩
      ⟨(seg34AccX151 rho : Seg34.F), (seg34AccY151 rho : Seg34.F)⟩
      ⟨(rho 36199 : Seg34.F), (rho 36200 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung150

theorem seg34_rung151 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34143 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX151 rho : Seg34.F), (seg34AccY151 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36199 : Seg34.F), (rho 36200 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX151 rho : Seg34.F), (seg34AccY151 rho : Seg34.F)⟩
        ⟨(rho 36199 : Seg34.F), (rho 36200 : Seg34.F)⟩
        ⟨(seg34AccX152 rho : Seg34.F), (seg34AccY152 rho : Seg34.F)⟩
        ⟨(rho 36213 : Seg34.F), (rho 36214 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart61 at p61
  rcases p61 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4929, r4930, r4931, r4932, r4933, r4934, r4935, r4936, r4937, r4938, r4939, r4940, r4941, r4942, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow4929 Seg34.relationLc790 Seg34.relationLc790Part0 Seg34.relationLc790Part1 Seg34.relationLc790Part2 Seg34.relationLc790Part3 Seg34.relationLc790Part4 Seg34.relationLc790Part5 Seg34.relationLc790Part6 Seg34.relationLc790Part7 Seg34.relationLc790Part8 Seg34.relationLc790Part9 at r4929
  unfold Seg34.relationRow4930 at r4930
  unfold Seg34.relationRow4931 Seg34.relationLc791 Seg34.relationLc791Part0 Seg34.relationLc791Part1 Seg34.relationLc791Part2 Seg34.relationLc791Part3 Seg34.relationLc791Part4 at r4931
  unfold Seg34.relationRow4932 Seg34.relationLc792 Seg34.relationLc792Part0 Seg34.relationLc792Part1 Seg34.relationLc792Part2 Seg34.relationLc792Part3 Seg34.relationLc792Part4 at r4932
  unfold Seg34.relationRow4933 at r4933
  unfold Seg34.relationRow4934 at r4934
  unfold Seg34.relationRow4935 at r4935
  unfold Seg34.relationRow4936 Seg34.relationLc793 Seg34.relationLc793Part0 Seg34.relationLc793Part1 Seg34.relationLc793Part2 Seg34.relationLc793Part3 Seg34.relationLc793Part4 at r4936
  unfold Seg34.relationRow4937 Seg34.relationLc794 Seg34.relationLc794Part0 Seg34.relationLc794Part1 Seg34.relationLc794Part2 Seg34.relationLc794Part3 Seg34.relationLc794Part4 at r4937
  unfold Seg34.relationRow4938 at r4938
  unfold Seg34.relationRow4939 at r4939
  unfold Seg34.relationRow4940 at r4940
  unfold Seg34.relationRow4941 at r4941
  unfold Seg34.relationRow4942 at r4942
  have hrung151 (bit : Bool) (hbit : rho 34143 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX151 rho : Seg34.F), (seg34AccY151 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36199 : Seg34.F), (rho 36200 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX151 rho : Seg34.F), (seg34AccY151 rho : Seg34.F)⟩
        ⟨(rho 36199 : Seg34.F), (rho 36200 : Seg34.F)⟩
        ⟨(seg34AccX152 rho : Seg34.F), (seg34AccY152 rho : Seg34.F)⟩
        ⟨(rho 36213 : Seg34.F), (rho 36214 : Seg34.F)⟩ := by
    have hsum : seg34AccX151 rho + seg34AccY151 rho = rho 36201 := by
      rw [seg34LadderFlatX151_eq, seg34LadderFlatY151_eq]
      unfold seg34LadderFlatX151 seg34LadderFlatY151
      linear_combination r4929
    have ha0 : (rho 36199 + rho 36200) * (seg34AccX151 rho + seg34AccY151 rho) = rho 36202 := by
      rw [hsum]
      linear_combination r4930
    have ha1 : rho 36200 * seg34AccX151 rho = rho 36203 := by
      rw [seg34LadderFlatX151_eq]
      unfold seg34LadderFlatX151
      linear_combination r4931
    have ha2 : rho 36199 * seg34AccY151 rho = rho 36204 := by
      rw [seg34LadderFlatY151_eq]
      unfold seg34LadderFlatY151
      linear_combination r4932
    have ha3 : 3021 * rho 36203 * rho 36204 = rho 36205 := by
      linear_combination r4933
    have ha4 : rho 36206 * (1 + rho 36205) = rho 36203 + rho 36204 := by
      linear_combination r4934
    have ha5 : rho 36207 * (1 - rho 36205) = rho 36202 - rho 36203 - rho 36204 := by
      linear_combination r4935
    have haddx :
        rho 36206 * (1 + 3021 * (rho 36200 * seg34AccX151 rho) * (rho 36199 * seg34AccY151 rho)) =
          rho 36200 * seg34AccX151 rho + rho 36199 * seg34AccY151 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36207 * (1 - 3021 * (rho 36200 * seg34AccX151 rho) * (rho 36199 * seg34AccY151 rho)) =
          (-1) * (rho 36200 * seg34AccX151 rho) - rho 36199 * seg34AccY151 rho +
            (seg34AccY151 rho - seg34AccX151 rho * (-1)) * (rho 36199 + rho 36200) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36207 * (1 - rho 36205) = rho 36202 - rho 36203 - rho 36204 := ha5
        _ = (-1) * rho 36203 - rho 36204 + (seg34AccY151 rho - seg34AccX151 rho * (-1)) * (rho 36199 + rho 36200) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX152 rho = seg34AccX151 rho - Bool.toZMod bit * (seg34AccX151 rho - rho 36206) := by
      have hd : rho 36208 = Bool.toZMod bit * (rho 36206 - seg34AccX151 rho) := by
        rw [← hbit, seg34LadderFlatX151_eq]
        unfold seg34LadderFlatX151
        linear_combination -r4936
      unfold seg34AccX152
      linear_combination hd
    have hsely : seg34AccY152 rho = seg34AccY151 rho - Bool.toZMod bit * (seg34AccY151 rho - rho 36207) := by
      have hd : rho 36209 = Bool.toZMod bit * (rho 36207 - seg34AccY151 rho) := by
        rw [← hbit, seg34LadderFlatY151_eq]
        unfold seg34LadderFlatY151
        linear_combination -r4937
      unfold seg34AccY152
      linear_combination hd
    have hd0 : rho 36199 * rho 36200 = rho 36210 := by linear_combination r4938
    have hd1 : rho 36199 * rho 36199 = rho 36211 := by linear_combination r4939
    have hd2 : rho 36200 * rho 36200 = rho 36212 := by linear_combination r4940
    have hd3 : rho 36213 * (rho 36200 * rho 36200 + rho 36199 * rho 36199 * (-1)) = 2 * (rho 36199 * rho 36200) := by
      rw [hd0, hd1, hd2]
      linear_combination r4941
    have hd4 : rho 36214 * (2 - (rho 36200 * rho 36200 + rho 36199 * rho 36199 * (-1))) = rho 36200 * rho 36200 - rho 36199 * rho 36199 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4942
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX151 rho : Seg34.F), (seg34AccY151 rho : Seg34.F)⟩
      ⟨(rho 36199 : Seg34.F), (rho 36200 : Seg34.F)⟩
      ⟨(rho 36206 : Seg34.F), (rho 36207 : Seg34.F)⟩
      ⟨(seg34AccX152 rho : Seg34.F), (seg34AccY152 rho : Seg34.F)⟩
      ⟨(rho 36213 : Seg34.F), (rho 36214 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung151

theorem seg34_rung152 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34144 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX152 rho : Seg34.F), (seg34AccY152 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36213 : Seg34.F), (rho 36214 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX152 rho : Seg34.F), (seg34AccY152 rho : Seg34.F)⟩
        ⟨(rho 36213 : Seg34.F), (rho 36214 : Seg34.F)⟩
        ⟨(seg34AccX153 rho : Seg34.F), (seg34AccY153 rho : Seg34.F)⟩
        ⟨(rho 36227 : Seg34.F), (rho 36228 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart61 at p61
  rcases p61 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4943, r4944, r4945, r4946, r4947, r4948, r4949, r4950, r4951, r4952, r4953, r4954, r4955, r4956, _, _, _⟩
  unfold Seg34.relationRow4943 Seg34.relationLc795 Seg34.relationLc795Part0 Seg34.relationLc795Part1 Seg34.relationLc795Part2 Seg34.relationLc795Part3 Seg34.relationLc795Part4 Seg34.relationLc795Part5 Seg34.relationLc795Part6 Seg34.relationLc795Part7 Seg34.relationLc795Part8 Seg34.relationLc795Part9 at r4943
  unfold Seg34.relationRow4944 at r4944
  unfold Seg34.relationRow4945 Seg34.relationLc796 Seg34.relationLc796Part0 Seg34.relationLc796Part1 Seg34.relationLc796Part2 Seg34.relationLc796Part3 Seg34.relationLc796Part4 at r4945
  unfold Seg34.relationRow4946 Seg34.relationLc797 Seg34.relationLc797Part0 Seg34.relationLc797Part1 Seg34.relationLc797Part2 Seg34.relationLc797Part3 Seg34.relationLc797Part4 at r4946
  unfold Seg34.relationRow4947 at r4947
  unfold Seg34.relationRow4948 at r4948
  unfold Seg34.relationRow4949 at r4949
  unfold Seg34.relationRow4950 Seg34.relationLc798 Seg34.relationLc798Part0 Seg34.relationLc798Part1 Seg34.relationLc798Part2 Seg34.relationLc798Part3 Seg34.relationLc798Part4 at r4950
  unfold Seg34.relationRow4951 Seg34.relationLc799 Seg34.relationLc799Part0 Seg34.relationLc799Part1 Seg34.relationLc799Part2 Seg34.relationLc799Part3 Seg34.relationLc799Part4 at r4951
  unfold Seg34.relationRow4952 at r4952
  unfold Seg34.relationRow4953 at r4953
  unfold Seg34.relationRow4954 at r4954
  unfold Seg34.relationRow4955 at r4955
  unfold Seg34.relationRow4956 at r4956
  have hrung152 (bit : Bool) (hbit : rho 34144 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX152 rho : Seg34.F), (seg34AccY152 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36213 : Seg34.F), (rho 36214 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX152 rho : Seg34.F), (seg34AccY152 rho : Seg34.F)⟩
        ⟨(rho 36213 : Seg34.F), (rho 36214 : Seg34.F)⟩
        ⟨(seg34AccX153 rho : Seg34.F), (seg34AccY153 rho : Seg34.F)⟩
        ⟨(rho 36227 : Seg34.F), (rho 36228 : Seg34.F)⟩ := by
    have hsum : seg34AccX152 rho + seg34AccY152 rho = rho 36215 := by
      rw [seg34LadderFlatX152_eq, seg34LadderFlatY152_eq]
      unfold seg34LadderFlatX152 seg34LadderFlatY152
      linear_combination r4943
    have ha0 : (rho 36213 + rho 36214) * (seg34AccX152 rho + seg34AccY152 rho) = rho 36216 := by
      rw [hsum]
      linear_combination r4944
    have ha1 : rho 36214 * seg34AccX152 rho = rho 36217 := by
      rw [seg34LadderFlatX152_eq]
      unfold seg34LadderFlatX152
      linear_combination r4945
    have ha2 : rho 36213 * seg34AccY152 rho = rho 36218 := by
      rw [seg34LadderFlatY152_eq]
      unfold seg34LadderFlatY152
      linear_combination r4946
    have ha3 : 3021 * rho 36217 * rho 36218 = rho 36219 := by
      linear_combination r4947
    have ha4 : rho 36220 * (1 + rho 36219) = rho 36217 + rho 36218 := by
      linear_combination r4948
    have ha5 : rho 36221 * (1 - rho 36219) = rho 36216 - rho 36217 - rho 36218 := by
      linear_combination r4949
    have haddx :
        rho 36220 * (1 + 3021 * (rho 36214 * seg34AccX152 rho) * (rho 36213 * seg34AccY152 rho)) =
          rho 36214 * seg34AccX152 rho + rho 36213 * seg34AccY152 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36221 * (1 - 3021 * (rho 36214 * seg34AccX152 rho) * (rho 36213 * seg34AccY152 rho)) =
          (-1) * (rho 36214 * seg34AccX152 rho) - rho 36213 * seg34AccY152 rho +
            (seg34AccY152 rho - seg34AccX152 rho * (-1)) * (rho 36213 + rho 36214) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36221 * (1 - rho 36219) = rho 36216 - rho 36217 - rho 36218 := ha5
        _ = (-1) * rho 36217 - rho 36218 + (seg34AccY152 rho - seg34AccX152 rho * (-1)) * (rho 36213 + rho 36214) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX153 rho = seg34AccX152 rho - Bool.toZMod bit * (seg34AccX152 rho - rho 36220) := by
      have hd : rho 36222 = Bool.toZMod bit * (rho 36220 - seg34AccX152 rho) := by
        rw [← hbit, seg34LadderFlatX152_eq]
        unfold seg34LadderFlatX152
        linear_combination -r4950
      unfold seg34AccX153
      linear_combination hd
    have hsely : seg34AccY153 rho = seg34AccY152 rho - Bool.toZMod bit * (seg34AccY152 rho - rho 36221) := by
      have hd : rho 36223 = Bool.toZMod bit * (rho 36221 - seg34AccY152 rho) := by
        rw [← hbit, seg34LadderFlatY152_eq]
        unfold seg34LadderFlatY152
        linear_combination -r4951
      unfold seg34AccY153
      linear_combination hd
    have hd0 : rho 36213 * rho 36214 = rho 36224 := by linear_combination r4952
    have hd1 : rho 36213 * rho 36213 = rho 36225 := by linear_combination r4953
    have hd2 : rho 36214 * rho 36214 = rho 36226 := by linear_combination r4954
    have hd3 : rho 36227 * (rho 36214 * rho 36214 + rho 36213 * rho 36213 * (-1)) = 2 * (rho 36213 * rho 36214) := by
      rw [hd0, hd1, hd2]
      linear_combination r4955
    have hd4 : rho 36228 * (2 - (rho 36214 * rho 36214 + rho 36213 * rho 36213 * (-1))) = rho 36214 * rho 36214 - rho 36213 * rho 36213 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4956
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX152 rho : Seg34.F), (seg34AccY152 rho : Seg34.F)⟩
      ⟨(rho 36213 : Seg34.F), (rho 36214 : Seg34.F)⟩
      ⟨(rho 36220 : Seg34.F), (rho 36221 : Seg34.F)⟩
      ⟨(seg34AccX153 rho : Seg34.F), (seg34AccY153 rho : Seg34.F)⟩
      ⟨(rho 36227 : Seg34.F), (rho 36228 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung152

theorem seg34_rung153 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34145 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX153 rho : Seg34.F), (seg34AccY153 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36227 : Seg34.F), (rho 36228 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX153 rho : Seg34.F), (seg34AccY153 rho : Seg34.F)⟩
        ⟨(rho 36227 : Seg34.F), (rho 36228 : Seg34.F)⟩
        ⟨(seg34AccX154 rho : Seg34.F), (seg34AccY154 rho : Seg34.F)⟩
        ⟨(rho 36241 : Seg34.F), (rho 36242 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart61 at p61
  rcases p61 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4957, r4958, r4959⟩
  unfold Seg34.relationPart62 at p62
  rcases p62 with ⟨r4960, r4961, r4962, r4963, r4964, r4965, r4966, r4967, r4968, r4969, r4970, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow4957 Seg34.relationLc800 Seg34.relationLc800Part0 Seg34.relationLc800Part1 Seg34.relationLc800Part2 Seg34.relationLc800Part3 Seg34.relationLc800Part4 Seg34.relationLc800Part5 Seg34.relationLc800Part6 Seg34.relationLc800Part7 Seg34.relationLc800Part8 Seg34.relationLc800Part9 at r4957
  unfold Seg34.relationRow4958 at r4958
  unfold Seg34.relationRow4959 Seg34.relationLc801 Seg34.relationLc801Part0 Seg34.relationLc801Part1 Seg34.relationLc801Part2 Seg34.relationLc801Part3 Seg34.relationLc801Part4 at r4959
  unfold Seg34.relationRow4960 Seg34.relationLc802 Seg34.relationLc802Part0 Seg34.relationLc802Part1 Seg34.relationLc802Part2 Seg34.relationLc802Part3 Seg34.relationLc802Part4 at r4960
  unfold Seg34.relationRow4961 at r4961
  unfold Seg34.relationRow4962 at r4962
  unfold Seg34.relationRow4963 at r4963
  unfold Seg34.relationRow4964 Seg34.relationLc803 Seg34.relationLc803Part0 Seg34.relationLc803Part1 Seg34.relationLc803Part2 Seg34.relationLc803Part3 Seg34.relationLc803Part4 at r4964
  unfold Seg34.relationRow4965 Seg34.relationLc804 Seg34.relationLc804Part0 Seg34.relationLc804Part1 Seg34.relationLc804Part2 Seg34.relationLc804Part3 Seg34.relationLc804Part4 at r4965
  unfold Seg34.relationRow4966 at r4966
  unfold Seg34.relationRow4967 at r4967
  unfold Seg34.relationRow4968 at r4968
  unfold Seg34.relationRow4969 at r4969
  unfold Seg34.relationRow4970 at r4970
  have hrung153 (bit : Bool) (hbit : rho 34145 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX153 rho : Seg34.F), (seg34AccY153 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36227 : Seg34.F), (rho 36228 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX153 rho : Seg34.F), (seg34AccY153 rho : Seg34.F)⟩
        ⟨(rho 36227 : Seg34.F), (rho 36228 : Seg34.F)⟩
        ⟨(seg34AccX154 rho : Seg34.F), (seg34AccY154 rho : Seg34.F)⟩
        ⟨(rho 36241 : Seg34.F), (rho 36242 : Seg34.F)⟩ := by
    have hsum : seg34AccX153 rho + seg34AccY153 rho = rho 36229 := by
      rw [seg34LadderFlatX153_eq, seg34LadderFlatY153_eq]
      unfold seg34LadderFlatX153 seg34LadderFlatY153
      linear_combination r4957
    have ha0 : (rho 36227 + rho 36228) * (seg34AccX153 rho + seg34AccY153 rho) = rho 36230 := by
      rw [hsum]
      linear_combination r4958
    have ha1 : rho 36228 * seg34AccX153 rho = rho 36231 := by
      rw [seg34LadderFlatX153_eq]
      unfold seg34LadderFlatX153
      linear_combination r4959
    have ha2 : rho 36227 * seg34AccY153 rho = rho 36232 := by
      rw [seg34LadderFlatY153_eq]
      unfold seg34LadderFlatY153
      linear_combination r4960
    have ha3 : 3021 * rho 36231 * rho 36232 = rho 36233 := by
      linear_combination r4961
    have ha4 : rho 36234 * (1 + rho 36233) = rho 36231 + rho 36232 := by
      linear_combination r4962
    have ha5 : rho 36235 * (1 - rho 36233) = rho 36230 - rho 36231 - rho 36232 := by
      linear_combination r4963
    have haddx :
        rho 36234 * (1 + 3021 * (rho 36228 * seg34AccX153 rho) * (rho 36227 * seg34AccY153 rho)) =
          rho 36228 * seg34AccX153 rho + rho 36227 * seg34AccY153 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36235 * (1 - 3021 * (rho 36228 * seg34AccX153 rho) * (rho 36227 * seg34AccY153 rho)) =
          (-1) * (rho 36228 * seg34AccX153 rho) - rho 36227 * seg34AccY153 rho +
            (seg34AccY153 rho - seg34AccX153 rho * (-1)) * (rho 36227 + rho 36228) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36235 * (1 - rho 36233) = rho 36230 - rho 36231 - rho 36232 := ha5
        _ = (-1) * rho 36231 - rho 36232 + (seg34AccY153 rho - seg34AccX153 rho * (-1)) * (rho 36227 + rho 36228) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX154 rho = seg34AccX153 rho - Bool.toZMod bit * (seg34AccX153 rho - rho 36234) := by
      have hd : rho 36236 = Bool.toZMod bit * (rho 36234 - seg34AccX153 rho) := by
        rw [← hbit, seg34LadderFlatX153_eq]
        unfold seg34LadderFlatX153
        linear_combination -r4964
      unfold seg34AccX154
      linear_combination hd
    have hsely : seg34AccY154 rho = seg34AccY153 rho - Bool.toZMod bit * (seg34AccY153 rho - rho 36235) := by
      have hd : rho 36237 = Bool.toZMod bit * (rho 36235 - seg34AccY153 rho) := by
        rw [← hbit, seg34LadderFlatY153_eq]
        unfold seg34LadderFlatY153
        linear_combination -r4965
      unfold seg34AccY154
      linear_combination hd
    have hd0 : rho 36227 * rho 36228 = rho 36238 := by linear_combination r4966
    have hd1 : rho 36227 * rho 36227 = rho 36239 := by linear_combination r4967
    have hd2 : rho 36228 * rho 36228 = rho 36240 := by linear_combination r4968
    have hd3 : rho 36241 * (rho 36228 * rho 36228 + rho 36227 * rho 36227 * (-1)) = 2 * (rho 36227 * rho 36228) := by
      rw [hd0, hd1, hd2]
      linear_combination r4969
    have hd4 : rho 36242 * (2 - (rho 36228 * rho 36228 + rho 36227 * rho 36227 * (-1))) = rho 36228 * rho 36228 - rho 36227 * rho 36227 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4970
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX153 rho : Seg34.F), (seg34AccY153 rho : Seg34.F)⟩
      ⟨(rho 36227 : Seg34.F), (rho 36228 : Seg34.F)⟩
      ⟨(rho 36234 : Seg34.F), (rho 36235 : Seg34.F)⟩
      ⟨(seg34AccX154 rho : Seg34.F), (seg34AccY154 rho : Seg34.F)⟩
      ⟨(rho 36241 : Seg34.F), (rho 36242 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung153

theorem seg34_rung154 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34146 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX154 rho : Seg34.F), (seg34AccY154 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36241 : Seg34.F), (rho 36242 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX154 rho : Seg34.F), (seg34AccY154 rho : Seg34.F)⟩
        ⟨(rho 36241 : Seg34.F), (rho 36242 : Seg34.F)⟩
        ⟨(seg34AccX155 rho : Seg34.F), (seg34AccY155 rho : Seg34.F)⟩
        ⟨(rho 36255 : Seg34.F), (rho 36256 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart62 at p62
  rcases p62 with ⟨_, _, _, _, _, _, _, _, _, _, _, r4971, r4972, r4973, r4974, r4975, r4976, r4977, r4978, r4979, r4980, r4981, r4982, r4983, r4984, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow4971 Seg34.relationLc805 Seg34.relationLc805Part0 Seg34.relationLc805Part1 Seg34.relationLc805Part2 Seg34.relationLc805Part3 Seg34.relationLc805Part4 Seg34.relationLc805Part5 Seg34.relationLc805Part6 Seg34.relationLc805Part7 Seg34.relationLc805Part8 Seg34.relationLc805Part9 at r4971
  unfold Seg34.relationRow4972 at r4972
  unfold Seg34.relationRow4973 Seg34.relationLc806 Seg34.relationLc806Part0 Seg34.relationLc806Part1 Seg34.relationLc806Part2 Seg34.relationLc806Part3 Seg34.relationLc806Part4 at r4973
  unfold Seg34.relationRow4974 Seg34.relationLc807 Seg34.relationLc807Part0 Seg34.relationLc807Part1 Seg34.relationLc807Part2 Seg34.relationLc807Part3 Seg34.relationLc807Part4 at r4974
  unfold Seg34.relationRow4975 at r4975
  unfold Seg34.relationRow4976 at r4976
  unfold Seg34.relationRow4977 at r4977
  unfold Seg34.relationRow4978 Seg34.relationLc808 Seg34.relationLc808Part0 Seg34.relationLc808Part1 Seg34.relationLc808Part2 Seg34.relationLc808Part3 Seg34.relationLc808Part4 at r4978
  unfold Seg34.relationRow4979 Seg34.relationLc809 Seg34.relationLc809Part0 Seg34.relationLc809Part1 Seg34.relationLc809Part2 Seg34.relationLc809Part3 Seg34.relationLc809Part4 at r4979
  unfold Seg34.relationRow4980 at r4980
  unfold Seg34.relationRow4981 at r4981
  unfold Seg34.relationRow4982 at r4982
  unfold Seg34.relationRow4983 at r4983
  unfold Seg34.relationRow4984 at r4984
  have hrung154 (bit : Bool) (hbit : rho 34146 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX154 rho : Seg34.F), (seg34AccY154 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36241 : Seg34.F), (rho 36242 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX154 rho : Seg34.F), (seg34AccY154 rho : Seg34.F)⟩
        ⟨(rho 36241 : Seg34.F), (rho 36242 : Seg34.F)⟩
        ⟨(seg34AccX155 rho : Seg34.F), (seg34AccY155 rho : Seg34.F)⟩
        ⟨(rho 36255 : Seg34.F), (rho 36256 : Seg34.F)⟩ := by
    have hsum : seg34AccX154 rho + seg34AccY154 rho = rho 36243 := by
      rw [seg34LadderFlatX154_eq, seg34LadderFlatY154_eq]
      unfold seg34LadderFlatX154 seg34LadderFlatY154
      linear_combination r4971
    have ha0 : (rho 36241 + rho 36242) * (seg34AccX154 rho + seg34AccY154 rho) = rho 36244 := by
      rw [hsum]
      linear_combination r4972
    have ha1 : rho 36242 * seg34AccX154 rho = rho 36245 := by
      rw [seg34LadderFlatX154_eq]
      unfold seg34LadderFlatX154
      linear_combination r4973
    have ha2 : rho 36241 * seg34AccY154 rho = rho 36246 := by
      rw [seg34LadderFlatY154_eq]
      unfold seg34LadderFlatY154
      linear_combination r4974
    have ha3 : 3021 * rho 36245 * rho 36246 = rho 36247 := by
      linear_combination r4975
    have ha4 : rho 36248 * (1 + rho 36247) = rho 36245 + rho 36246 := by
      linear_combination r4976
    have ha5 : rho 36249 * (1 - rho 36247) = rho 36244 - rho 36245 - rho 36246 := by
      linear_combination r4977
    have haddx :
        rho 36248 * (1 + 3021 * (rho 36242 * seg34AccX154 rho) * (rho 36241 * seg34AccY154 rho)) =
          rho 36242 * seg34AccX154 rho + rho 36241 * seg34AccY154 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36249 * (1 - 3021 * (rho 36242 * seg34AccX154 rho) * (rho 36241 * seg34AccY154 rho)) =
          (-1) * (rho 36242 * seg34AccX154 rho) - rho 36241 * seg34AccY154 rho +
            (seg34AccY154 rho - seg34AccX154 rho * (-1)) * (rho 36241 + rho 36242) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36249 * (1 - rho 36247) = rho 36244 - rho 36245 - rho 36246 := ha5
        _ = (-1) * rho 36245 - rho 36246 + (seg34AccY154 rho - seg34AccX154 rho * (-1)) * (rho 36241 + rho 36242) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX155 rho = seg34AccX154 rho - Bool.toZMod bit * (seg34AccX154 rho - rho 36248) := by
      have hd : rho 36250 = Bool.toZMod bit * (rho 36248 - seg34AccX154 rho) := by
        rw [← hbit, seg34LadderFlatX154_eq]
        unfold seg34LadderFlatX154
        linear_combination -r4978
      unfold seg34AccX155
      linear_combination hd
    have hsely : seg34AccY155 rho = seg34AccY154 rho - Bool.toZMod bit * (seg34AccY154 rho - rho 36249) := by
      have hd : rho 36251 = Bool.toZMod bit * (rho 36249 - seg34AccY154 rho) := by
        rw [← hbit, seg34LadderFlatY154_eq]
        unfold seg34LadderFlatY154
        linear_combination -r4979
      unfold seg34AccY155
      linear_combination hd
    have hd0 : rho 36241 * rho 36242 = rho 36252 := by linear_combination r4980
    have hd1 : rho 36241 * rho 36241 = rho 36253 := by linear_combination r4981
    have hd2 : rho 36242 * rho 36242 = rho 36254 := by linear_combination r4982
    have hd3 : rho 36255 * (rho 36242 * rho 36242 + rho 36241 * rho 36241 * (-1)) = 2 * (rho 36241 * rho 36242) := by
      rw [hd0, hd1, hd2]
      linear_combination r4983
    have hd4 : rho 36256 * (2 - (rho 36242 * rho 36242 + rho 36241 * rho 36241 * (-1))) = rho 36242 * rho 36242 - rho 36241 * rho 36241 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4984
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX154 rho : Seg34.F), (seg34AccY154 rho : Seg34.F)⟩
      ⟨(rho 36241 : Seg34.F), (rho 36242 : Seg34.F)⟩
      ⟨(rho 36248 : Seg34.F), (rho 36249 : Seg34.F)⟩
      ⟨(seg34AccX155 rho : Seg34.F), (seg34AccY155 rho : Seg34.F)⟩
      ⟨(rho 36255 : Seg34.F), (rho 36256 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung154

theorem seg34_rung155 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34147 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX155 rho : Seg34.F), (seg34AccY155 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36255 : Seg34.F), (rho 36256 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX155 rho : Seg34.F), (seg34AccY155 rho : Seg34.F)⟩
        ⟨(rho 36255 : Seg34.F), (rho 36256 : Seg34.F)⟩
        ⟨(seg34AccX156 rho : Seg34.F), (seg34AccY156 rho : Seg34.F)⟩
        ⟨(rho 36269 : Seg34.F), (rho 36270 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart62 at p62
  rcases p62 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4985, r4986, r4987, r4988, r4989, r4990, r4991, r4992, r4993, r4994, r4995, r4996, r4997, r4998, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow4985 Seg34.relationLc810 Seg34.relationLc810Part0 Seg34.relationLc810Part1 Seg34.relationLc810Part2 Seg34.relationLc810Part3 Seg34.relationLc810Part4 Seg34.relationLc810Part5 Seg34.relationLc810Part6 Seg34.relationLc810Part7 Seg34.relationLc810Part8 Seg34.relationLc810Part9 at r4985
  unfold Seg34.relationRow4986 at r4986
  unfold Seg34.relationRow4987 Seg34.relationLc811 Seg34.relationLc811Part0 Seg34.relationLc811Part1 Seg34.relationLc811Part2 Seg34.relationLc811Part3 Seg34.relationLc811Part4 at r4987
  unfold Seg34.relationRow4988 Seg34.relationLc812 Seg34.relationLc812Part0 Seg34.relationLc812Part1 Seg34.relationLc812Part2 Seg34.relationLc812Part3 Seg34.relationLc812Part4 at r4988
  unfold Seg34.relationRow4989 at r4989
  unfold Seg34.relationRow4990 at r4990
  unfold Seg34.relationRow4991 at r4991
  unfold Seg34.relationRow4992 Seg34.relationLc813 Seg34.relationLc813Part0 Seg34.relationLc813Part1 Seg34.relationLc813Part2 Seg34.relationLc813Part3 Seg34.relationLc813Part4 at r4992
  unfold Seg34.relationRow4993 Seg34.relationLc814 Seg34.relationLc814Part0 Seg34.relationLc814Part1 Seg34.relationLc814Part2 Seg34.relationLc814Part3 Seg34.relationLc814Part4 at r4993
  unfold Seg34.relationRow4994 at r4994
  unfold Seg34.relationRow4995 at r4995
  unfold Seg34.relationRow4996 at r4996
  unfold Seg34.relationRow4997 at r4997
  unfold Seg34.relationRow4998 at r4998
  have hrung155 (bit : Bool) (hbit : rho 34147 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX155 rho : Seg34.F), (seg34AccY155 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36255 : Seg34.F), (rho 36256 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX155 rho : Seg34.F), (seg34AccY155 rho : Seg34.F)⟩
        ⟨(rho 36255 : Seg34.F), (rho 36256 : Seg34.F)⟩
        ⟨(seg34AccX156 rho : Seg34.F), (seg34AccY156 rho : Seg34.F)⟩
        ⟨(rho 36269 : Seg34.F), (rho 36270 : Seg34.F)⟩ := by
    have hsum : seg34AccX155 rho + seg34AccY155 rho = rho 36257 := by
      rw [seg34LadderFlatX155_eq, seg34LadderFlatY155_eq]
      unfold seg34LadderFlatX155 seg34LadderFlatY155
      linear_combination r4985
    have ha0 : (rho 36255 + rho 36256) * (seg34AccX155 rho + seg34AccY155 rho) = rho 36258 := by
      rw [hsum]
      linear_combination r4986
    have ha1 : rho 36256 * seg34AccX155 rho = rho 36259 := by
      rw [seg34LadderFlatX155_eq]
      unfold seg34LadderFlatX155
      linear_combination r4987
    have ha2 : rho 36255 * seg34AccY155 rho = rho 36260 := by
      rw [seg34LadderFlatY155_eq]
      unfold seg34LadderFlatY155
      linear_combination r4988
    have ha3 : 3021 * rho 36259 * rho 36260 = rho 36261 := by
      linear_combination r4989
    have ha4 : rho 36262 * (1 + rho 36261) = rho 36259 + rho 36260 := by
      linear_combination r4990
    have ha5 : rho 36263 * (1 - rho 36261) = rho 36258 - rho 36259 - rho 36260 := by
      linear_combination r4991
    have haddx :
        rho 36262 * (1 + 3021 * (rho 36256 * seg34AccX155 rho) * (rho 36255 * seg34AccY155 rho)) =
          rho 36256 * seg34AccX155 rho + rho 36255 * seg34AccY155 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36263 * (1 - 3021 * (rho 36256 * seg34AccX155 rho) * (rho 36255 * seg34AccY155 rho)) =
          (-1) * (rho 36256 * seg34AccX155 rho) - rho 36255 * seg34AccY155 rho +
            (seg34AccY155 rho - seg34AccX155 rho * (-1)) * (rho 36255 + rho 36256) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36263 * (1 - rho 36261) = rho 36258 - rho 36259 - rho 36260 := ha5
        _ = (-1) * rho 36259 - rho 36260 + (seg34AccY155 rho - seg34AccX155 rho * (-1)) * (rho 36255 + rho 36256) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX156 rho = seg34AccX155 rho - Bool.toZMod bit * (seg34AccX155 rho - rho 36262) := by
      have hd : rho 36264 = Bool.toZMod bit * (rho 36262 - seg34AccX155 rho) := by
        rw [← hbit, seg34LadderFlatX155_eq]
        unfold seg34LadderFlatX155
        linear_combination -r4992
      unfold seg34AccX156
      linear_combination hd
    have hsely : seg34AccY156 rho = seg34AccY155 rho - Bool.toZMod bit * (seg34AccY155 rho - rho 36263) := by
      have hd : rho 36265 = Bool.toZMod bit * (rho 36263 - seg34AccY155 rho) := by
        rw [← hbit, seg34LadderFlatY155_eq]
        unfold seg34LadderFlatY155
        linear_combination -r4993
      unfold seg34AccY156
      linear_combination hd
    have hd0 : rho 36255 * rho 36256 = rho 36266 := by linear_combination r4994
    have hd1 : rho 36255 * rho 36255 = rho 36267 := by linear_combination r4995
    have hd2 : rho 36256 * rho 36256 = rho 36268 := by linear_combination r4996
    have hd3 : rho 36269 * (rho 36256 * rho 36256 + rho 36255 * rho 36255 * (-1)) = 2 * (rho 36255 * rho 36256) := by
      rw [hd0, hd1, hd2]
      linear_combination r4997
    have hd4 : rho 36270 * (2 - (rho 36256 * rho 36256 + rho 36255 * rho 36255 * (-1))) = rho 36256 * rho 36256 - rho 36255 * rho 36255 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4998
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX155 rho : Seg34.F), (seg34AccY155 rho : Seg34.F)⟩
      ⟨(rho 36255 : Seg34.F), (rho 36256 : Seg34.F)⟩
      ⟨(rho 36262 : Seg34.F), (rho 36263 : Seg34.F)⟩
      ⟨(seg34AccX156 rho : Seg34.F), (seg34AccY156 rho : Seg34.F)⟩
      ⟨(rho 36269 : Seg34.F), (rho 36270 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung155

theorem seg34_rung156 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34148 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX156 rho : Seg34.F), (seg34AccY156 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36269 : Seg34.F), (rho 36270 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX156 rho : Seg34.F), (seg34AccY156 rho : Seg34.F)⟩
        ⟨(rho 36269 : Seg34.F), (rho 36270 : Seg34.F)⟩
        ⟨(seg34AccX157 rho : Seg34.F), (seg34AccY157 rho : Seg34.F)⟩
        ⟨(rho 36283 : Seg34.F), (rho 36284 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart62 at p62
  rcases p62 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4999, r5000, r5001, r5002, r5003, r5004, r5005, r5006, r5007, r5008, r5009, r5010, r5011, r5012, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow4999 Seg34.relationLc815 Seg34.relationLc815Part0 Seg34.relationLc815Part1 Seg34.relationLc815Part2 Seg34.relationLc815Part3 Seg34.relationLc815Part4 Seg34.relationLc815Part5 Seg34.relationLc815Part6 Seg34.relationLc815Part7 Seg34.relationLc815Part8 Seg34.relationLc815Part9 at r4999
  unfold Seg34.relationRow5000 at r5000
  unfold Seg34.relationRow5001 Seg34.relationLc816 Seg34.relationLc816Part0 Seg34.relationLc816Part1 Seg34.relationLc816Part2 Seg34.relationLc816Part3 Seg34.relationLc816Part4 at r5001
  unfold Seg34.relationRow5002 Seg34.relationLc817 Seg34.relationLc817Part0 Seg34.relationLc817Part1 Seg34.relationLc817Part2 Seg34.relationLc817Part3 Seg34.relationLc817Part4 at r5002
  unfold Seg34.relationRow5003 at r5003
  unfold Seg34.relationRow5004 at r5004
  unfold Seg34.relationRow5005 at r5005
  unfold Seg34.relationRow5006 Seg34.relationLc818 Seg34.relationLc818Part0 Seg34.relationLc818Part1 Seg34.relationLc818Part2 Seg34.relationLc818Part3 Seg34.relationLc818Part4 at r5006
  unfold Seg34.relationRow5007 Seg34.relationLc819 Seg34.relationLc819Part0 Seg34.relationLc819Part1 Seg34.relationLc819Part2 Seg34.relationLc819Part3 Seg34.relationLc819Part4 at r5007
  unfold Seg34.relationRow5008 at r5008
  unfold Seg34.relationRow5009 at r5009
  unfold Seg34.relationRow5010 at r5010
  unfold Seg34.relationRow5011 at r5011
  unfold Seg34.relationRow5012 at r5012
  have hrung156 (bit : Bool) (hbit : rho 34148 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX156 rho : Seg34.F), (seg34AccY156 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36269 : Seg34.F), (rho 36270 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX156 rho : Seg34.F), (seg34AccY156 rho : Seg34.F)⟩
        ⟨(rho 36269 : Seg34.F), (rho 36270 : Seg34.F)⟩
        ⟨(seg34AccX157 rho : Seg34.F), (seg34AccY157 rho : Seg34.F)⟩
        ⟨(rho 36283 : Seg34.F), (rho 36284 : Seg34.F)⟩ := by
    have hsum : seg34AccX156 rho + seg34AccY156 rho = rho 36271 := by
      rw [seg34LadderFlatX156_eq, seg34LadderFlatY156_eq]
      unfold seg34LadderFlatX156 seg34LadderFlatY156
      linear_combination r4999
    have ha0 : (rho 36269 + rho 36270) * (seg34AccX156 rho + seg34AccY156 rho) = rho 36272 := by
      rw [hsum]
      linear_combination r5000
    have ha1 : rho 36270 * seg34AccX156 rho = rho 36273 := by
      rw [seg34LadderFlatX156_eq]
      unfold seg34LadderFlatX156
      linear_combination r5001
    have ha2 : rho 36269 * seg34AccY156 rho = rho 36274 := by
      rw [seg34LadderFlatY156_eq]
      unfold seg34LadderFlatY156
      linear_combination r5002
    have ha3 : 3021 * rho 36273 * rho 36274 = rho 36275 := by
      linear_combination r5003
    have ha4 : rho 36276 * (1 + rho 36275) = rho 36273 + rho 36274 := by
      linear_combination r5004
    have ha5 : rho 36277 * (1 - rho 36275) = rho 36272 - rho 36273 - rho 36274 := by
      linear_combination r5005
    have haddx :
        rho 36276 * (1 + 3021 * (rho 36270 * seg34AccX156 rho) * (rho 36269 * seg34AccY156 rho)) =
          rho 36270 * seg34AccX156 rho + rho 36269 * seg34AccY156 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36277 * (1 - 3021 * (rho 36270 * seg34AccX156 rho) * (rho 36269 * seg34AccY156 rho)) =
          (-1) * (rho 36270 * seg34AccX156 rho) - rho 36269 * seg34AccY156 rho +
            (seg34AccY156 rho - seg34AccX156 rho * (-1)) * (rho 36269 + rho 36270) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36277 * (1 - rho 36275) = rho 36272 - rho 36273 - rho 36274 := ha5
        _ = (-1) * rho 36273 - rho 36274 + (seg34AccY156 rho - seg34AccX156 rho * (-1)) * (rho 36269 + rho 36270) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX157 rho = seg34AccX156 rho - Bool.toZMod bit * (seg34AccX156 rho - rho 36276) := by
      have hd : rho 36278 = Bool.toZMod bit * (rho 36276 - seg34AccX156 rho) := by
        rw [← hbit, seg34LadderFlatX156_eq]
        unfold seg34LadderFlatX156
        linear_combination -r5006
      unfold seg34AccX157
      linear_combination hd
    have hsely : seg34AccY157 rho = seg34AccY156 rho - Bool.toZMod bit * (seg34AccY156 rho - rho 36277) := by
      have hd : rho 36279 = Bool.toZMod bit * (rho 36277 - seg34AccY156 rho) := by
        rw [← hbit, seg34LadderFlatY156_eq]
        unfold seg34LadderFlatY156
        linear_combination -r5007
      unfold seg34AccY157
      linear_combination hd
    have hd0 : rho 36269 * rho 36270 = rho 36280 := by linear_combination r5008
    have hd1 : rho 36269 * rho 36269 = rho 36281 := by linear_combination r5009
    have hd2 : rho 36270 * rho 36270 = rho 36282 := by linear_combination r5010
    have hd3 : rho 36283 * (rho 36270 * rho 36270 + rho 36269 * rho 36269 * (-1)) = 2 * (rho 36269 * rho 36270) := by
      rw [hd0, hd1, hd2]
      linear_combination r5011
    have hd4 : rho 36284 * (2 - (rho 36270 * rho 36270 + rho 36269 * rho 36269 * (-1))) = rho 36270 * rho 36270 - rho 36269 * rho 36269 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5012
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX156 rho : Seg34.F), (seg34AccY156 rho : Seg34.F)⟩
      ⟨(rho 36269 : Seg34.F), (rho 36270 : Seg34.F)⟩
      ⟨(rho 36276 : Seg34.F), (rho 36277 : Seg34.F)⟩
      ⟨(seg34AccX157 rho : Seg34.F), (seg34AccY157 rho : Seg34.F)⟩
      ⟨(rho 36283 : Seg34.F), (rho 36284 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung156

theorem seg34_rung157 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34149 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX157 rho : Seg34.F), (seg34AccY157 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36283 : Seg34.F), (rho 36284 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX157 rho : Seg34.F), (seg34AccY157 rho : Seg34.F)⟩
        ⟨(rho 36283 : Seg34.F), (rho 36284 : Seg34.F)⟩
        ⟨(seg34AccX158 rho : Seg34.F), (seg34AccY158 rho : Seg34.F)⟩
        ⟨(rho 36297 : Seg34.F), (rho 36298 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart62 at p62
  rcases p62 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5013, r5014, r5015, r5016, r5017, r5018, r5019, r5020, r5021, r5022, r5023, r5024, r5025, r5026, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow5013 Seg34.relationLc820 Seg34.relationLc820Part0 Seg34.relationLc820Part1 Seg34.relationLc820Part2 Seg34.relationLc820Part3 Seg34.relationLc820Part4 Seg34.relationLc820Part5 Seg34.relationLc820Part6 Seg34.relationLc820Part7 Seg34.relationLc820Part8 Seg34.relationLc820Part9 at r5013
  unfold Seg34.relationRow5014 at r5014
  unfold Seg34.relationRow5015 Seg34.relationLc821 Seg34.relationLc821Part0 Seg34.relationLc821Part1 Seg34.relationLc821Part2 Seg34.relationLc821Part3 Seg34.relationLc821Part4 at r5015
  unfold Seg34.relationRow5016 Seg34.relationLc822 Seg34.relationLc822Part0 Seg34.relationLc822Part1 Seg34.relationLc822Part2 Seg34.relationLc822Part3 Seg34.relationLc822Part4 at r5016
  unfold Seg34.relationRow5017 at r5017
  unfold Seg34.relationRow5018 at r5018
  unfold Seg34.relationRow5019 at r5019
  unfold Seg34.relationRow5020 Seg34.relationLc823 Seg34.relationLc823Part0 Seg34.relationLc823Part1 Seg34.relationLc823Part2 Seg34.relationLc823Part3 Seg34.relationLc823Part4 at r5020
  unfold Seg34.relationRow5021 Seg34.relationLc824 Seg34.relationLc824Part0 Seg34.relationLc824Part1 Seg34.relationLc824Part2 Seg34.relationLc824Part3 Seg34.relationLc824Part4 at r5021
  unfold Seg34.relationRow5022 at r5022
  unfold Seg34.relationRow5023 at r5023
  unfold Seg34.relationRow5024 at r5024
  unfold Seg34.relationRow5025 at r5025
  unfold Seg34.relationRow5026 at r5026
  have hrung157 (bit : Bool) (hbit : rho 34149 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX157 rho : Seg34.F), (seg34AccY157 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36283 : Seg34.F), (rho 36284 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX157 rho : Seg34.F), (seg34AccY157 rho : Seg34.F)⟩
        ⟨(rho 36283 : Seg34.F), (rho 36284 : Seg34.F)⟩
        ⟨(seg34AccX158 rho : Seg34.F), (seg34AccY158 rho : Seg34.F)⟩
        ⟨(rho 36297 : Seg34.F), (rho 36298 : Seg34.F)⟩ := by
    have hsum : seg34AccX157 rho + seg34AccY157 rho = rho 36285 := by
      rw [seg34LadderFlatX157_eq, seg34LadderFlatY157_eq]
      unfold seg34LadderFlatX157 seg34LadderFlatY157
      linear_combination r5013
    have ha0 : (rho 36283 + rho 36284) * (seg34AccX157 rho + seg34AccY157 rho) = rho 36286 := by
      rw [hsum]
      linear_combination r5014
    have ha1 : rho 36284 * seg34AccX157 rho = rho 36287 := by
      rw [seg34LadderFlatX157_eq]
      unfold seg34LadderFlatX157
      linear_combination r5015
    have ha2 : rho 36283 * seg34AccY157 rho = rho 36288 := by
      rw [seg34LadderFlatY157_eq]
      unfold seg34LadderFlatY157
      linear_combination r5016
    have ha3 : 3021 * rho 36287 * rho 36288 = rho 36289 := by
      linear_combination r5017
    have ha4 : rho 36290 * (1 + rho 36289) = rho 36287 + rho 36288 := by
      linear_combination r5018
    have ha5 : rho 36291 * (1 - rho 36289) = rho 36286 - rho 36287 - rho 36288 := by
      linear_combination r5019
    have haddx :
        rho 36290 * (1 + 3021 * (rho 36284 * seg34AccX157 rho) * (rho 36283 * seg34AccY157 rho)) =
          rho 36284 * seg34AccX157 rho + rho 36283 * seg34AccY157 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36291 * (1 - 3021 * (rho 36284 * seg34AccX157 rho) * (rho 36283 * seg34AccY157 rho)) =
          (-1) * (rho 36284 * seg34AccX157 rho) - rho 36283 * seg34AccY157 rho +
            (seg34AccY157 rho - seg34AccX157 rho * (-1)) * (rho 36283 + rho 36284) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36291 * (1 - rho 36289) = rho 36286 - rho 36287 - rho 36288 := ha5
        _ = (-1) * rho 36287 - rho 36288 + (seg34AccY157 rho - seg34AccX157 rho * (-1)) * (rho 36283 + rho 36284) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX158 rho = seg34AccX157 rho - Bool.toZMod bit * (seg34AccX157 rho - rho 36290) := by
      have hd : rho 36292 = Bool.toZMod bit * (rho 36290 - seg34AccX157 rho) := by
        rw [← hbit, seg34LadderFlatX157_eq]
        unfold seg34LadderFlatX157
        linear_combination -r5020
      unfold seg34AccX158
      linear_combination hd
    have hsely : seg34AccY158 rho = seg34AccY157 rho - Bool.toZMod bit * (seg34AccY157 rho - rho 36291) := by
      have hd : rho 36293 = Bool.toZMod bit * (rho 36291 - seg34AccY157 rho) := by
        rw [← hbit, seg34LadderFlatY157_eq]
        unfold seg34LadderFlatY157
        linear_combination -r5021
      unfold seg34AccY158
      linear_combination hd
    have hd0 : rho 36283 * rho 36284 = rho 36294 := by linear_combination r5022
    have hd1 : rho 36283 * rho 36283 = rho 36295 := by linear_combination r5023
    have hd2 : rho 36284 * rho 36284 = rho 36296 := by linear_combination r5024
    have hd3 : rho 36297 * (rho 36284 * rho 36284 + rho 36283 * rho 36283 * (-1)) = 2 * (rho 36283 * rho 36284) := by
      rw [hd0, hd1, hd2]
      linear_combination r5025
    have hd4 : rho 36298 * (2 - (rho 36284 * rho 36284 + rho 36283 * rho 36283 * (-1))) = rho 36284 * rho 36284 - rho 36283 * rho 36283 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5026
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX157 rho : Seg34.F), (seg34AccY157 rho : Seg34.F)⟩
      ⟨(rho 36283 : Seg34.F), (rho 36284 : Seg34.F)⟩
      ⟨(rho 36290 : Seg34.F), (rho 36291 : Seg34.F)⟩
      ⟨(seg34AccX158 rho : Seg34.F), (seg34AccY158 rho : Seg34.F)⟩
      ⟨(rho 36297 : Seg34.F), (rho 36298 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung157

theorem seg34_rung158 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34150 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX158 rho : Seg34.F), (seg34AccY158 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36297 : Seg34.F), (rho 36298 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX158 rho : Seg34.F), (seg34AccY158 rho : Seg34.F)⟩
        ⟨(rho 36297 : Seg34.F), (rho 36298 : Seg34.F)⟩
        ⟨(seg34AccX159 rho : Seg34.F), (seg34AccY159 rho : Seg34.F)⟩
        ⟨(rho 36311 : Seg34.F), (rho 36312 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart62 at p62
  rcases p62 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5027, r5028, r5029, r5030, r5031, r5032, r5033, r5034, r5035, r5036, r5037, r5038, r5039⟩
  unfold Seg34.relationPart63 at p63
  rcases p63 with ⟨r5040, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow5027 Seg34.relationLc825 Seg34.relationLc825Part0 Seg34.relationLc825Part1 Seg34.relationLc825Part2 Seg34.relationLc825Part3 Seg34.relationLc825Part4 Seg34.relationLc825Part5 Seg34.relationLc825Part6 Seg34.relationLc825Part7 Seg34.relationLc825Part8 Seg34.relationLc825Part9 at r5027
  unfold Seg34.relationRow5028 at r5028
  unfold Seg34.relationRow5029 Seg34.relationLc826 Seg34.relationLc826Part0 Seg34.relationLc826Part1 Seg34.relationLc826Part2 Seg34.relationLc826Part3 Seg34.relationLc826Part4 at r5029
  unfold Seg34.relationRow5030 Seg34.relationLc827 Seg34.relationLc827Part0 Seg34.relationLc827Part1 Seg34.relationLc827Part2 Seg34.relationLc827Part3 Seg34.relationLc827Part4 at r5030
  unfold Seg34.relationRow5031 at r5031
  unfold Seg34.relationRow5032 at r5032
  unfold Seg34.relationRow5033 at r5033
  unfold Seg34.relationRow5034 Seg34.relationLc828 Seg34.relationLc828Part0 Seg34.relationLc828Part1 Seg34.relationLc828Part2 Seg34.relationLc828Part3 Seg34.relationLc828Part4 at r5034
  unfold Seg34.relationRow5035 Seg34.relationLc829 Seg34.relationLc829Part0 Seg34.relationLc829Part1 Seg34.relationLc829Part2 Seg34.relationLc829Part3 Seg34.relationLc829Part4 at r5035
  unfold Seg34.relationRow5036 at r5036
  unfold Seg34.relationRow5037 at r5037
  unfold Seg34.relationRow5038 at r5038
  unfold Seg34.relationRow5039 at r5039
  unfold Seg34.relationRow5040 at r5040
  have hrung158 (bit : Bool) (hbit : rho 34150 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX158 rho : Seg34.F), (seg34AccY158 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36297 : Seg34.F), (rho 36298 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX158 rho : Seg34.F), (seg34AccY158 rho : Seg34.F)⟩
        ⟨(rho 36297 : Seg34.F), (rho 36298 : Seg34.F)⟩
        ⟨(seg34AccX159 rho : Seg34.F), (seg34AccY159 rho : Seg34.F)⟩
        ⟨(rho 36311 : Seg34.F), (rho 36312 : Seg34.F)⟩ := by
    have hsum : seg34AccX158 rho + seg34AccY158 rho = rho 36299 := by
      rw [seg34LadderFlatX158_eq, seg34LadderFlatY158_eq]
      unfold seg34LadderFlatX158 seg34LadderFlatY158
      linear_combination r5027
    have ha0 : (rho 36297 + rho 36298) * (seg34AccX158 rho + seg34AccY158 rho) = rho 36300 := by
      rw [hsum]
      linear_combination r5028
    have ha1 : rho 36298 * seg34AccX158 rho = rho 36301 := by
      rw [seg34LadderFlatX158_eq]
      unfold seg34LadderFlatX158
      linear_combination r5029
    have ha2 : rho 36297 * seg34AccY158 rho = rho 36302 := by
      rw [seg34LadderFlatY158_eq]
      unfold seg34LadderFlatY158
      linear_combination r5030
    have ha3 : 3021 * rho 36301 * rho 36302 = rho 36303 := by
      linear_combination r5031
    have ha4 : rho 36304 * (1 + rho 36303) = rho 36301 + rho 36302 := by
      linear_combination r5032
    have ha5 : rho 36305 * (1 - rho 36303) = rho 36300 - rho 36301 - rho 36302 := by
      linear_combination r5033
    have haddx :
        rho 36304 * (1 + 3021 * (rho 36298 * seg34AccX158 rho) * (rho 36297 * seg34AccY158 rho)) =
          rho 36298 * seg34AccX158 rho + rho 36297 * seg34AccY158 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36305 * (1 - 3021 * (rho 36298 * seg34AccX158 rho) * (rho 36297 * seg34AccY158 rho)) =
          (-1) * (rho 36298 * seg34AccX158 rho) - rho 36297 * seg34AccY158 rho +
            (seg34AccY158 rho - seg34AccX158 rho * (-1)) * (rho 36297 + rho 36298) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36305 * (1 - rho 36303) = rho 36300 - rho 36301 - rho 36302 := ha5
        _ = (-1) * rho 36301 - rho 36302 + (seg34AccY158 rho - seg34AccX158 rho * (-1)) * (rho 36297 + rho 36298) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX159 rho = seg34AccX158 rho - Bool.toZMod bit * (seg34AccX158 rho - rho 36304) := by
      have hd : rho 36306 = Bool.toZMod bit * (rho 36304 - seg34AccX158 rho) := by
        rw [← hbit, seg34LadderFlatX158_eq]
        unfold seg34LadderFlatX158
        linear_combination -r5034
      unfold seg34AccX159
      linear_combination hd
    have hsely : seg34AccY159 rho = seg34AccY158 rho - Bool.toZMod bit * (seg34AccY158 rho - rho 36305) := by
      have hd : rho 36307 = Bool.toZMod bit * (rho 36305 - seg34AccY158 rho) := by
        rw [← hbit, seg34LadderFlatY158_eq]
        unfold seg34LadderFlatY158
        linear_combination -r5035
      unfold seg34AccY159
      linear_combination hd
    have hd0 : rho 36297 * rho 36298 = rho 36308 := by linear_combination r5036
    have hd1 : rho 36297 * rho 36297 = rho 36309 := by linear_combination r5037
    have hd2 : rho 36298 * rho 36298 = rho 36310 := by linear_combination r5038
    have hd3 : rho 36311 * (rho 36298 * rho 36298 + rho 36297 * rho 36297 * (-1)) = 2 * (rho 36297 * rho 36298) := by
      rw [hd0, hd1, hd2]
      linear_combination r5039
    have hd4 : rho 36312 * (2 - (rho 36298 * rho 36298 + rho 36297 * rho 36297 * (-1))) = rho 36298 * rho 36298 - rho 36297 * rho 36297 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5040
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX158 rho : Seg34.F), (seg34AccY158 rho : Seg34.F)⟩
      ⟨(rho 36297 : Seg34.F), (rho 36298 : Seg34.F)⟩
      ⟨(rho 36304 : Seg34.F), (rho 36305 : Seg34.F)⟩
      ⟨(seg34AccX159 rho : Seg34.F), (seg34AccY159 rho : Seg34.F)⟩
      ⟨(rho 36311 : Seg34.F), (rho 36312 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung158

theorem seg34_rung159 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34151 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX159 rho : Seg34.F), (seg34AccY159 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36311 : Seg34.F), (rho 36312 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX159 rho : Seg34.F), (seg34AccY159 rho : Seg34.F)⟩
        ⟨(rho 36311 : Seg34.F), (rho 36312 : Seg34.F)⟩
        ⟨(seg34AccX160 rho : Seg34.F), (seg34AccY160 rho : Seg34.F)⟩
        ⟨(rho 36325 : Seg34.F), (rho 36326 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart63 at p63
  rcases p63 with ⟨_, r5041, r5042, r5043, r5044, r5045, r5046, r5047, r5048, r5049, r5050, r5051, r5052, r5053, r5054, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow5041 Seg34.relationLc830 Seg34.relationLc830Part0 Seg34.relationLc830Part1 Seg34.relationLc830Part2 Seg34.relationLc830Part3 Seg34.relationLc830Part4 Seg34.relationLc830Part5 Seg34.relationLc830Part6 Seg34.relationLc830Part7 Seg34.relationLc830Part8 Seg34.relationLc830Part9 at r5041
  unfold Seg34.relationRow5042 at r5042
  unfold Seg34.relationRow5043 Seg34.relationLc831 Seg34.relationLc831Part0 Seg34.relationLc831Part1 Seg34.relationLc831Part2 Seg34.relationLc831Part3 Seg34.relationLc831Part4 at r5043
  unfold Seg34.relationRow5044 Seg34.relationLc832 Seg34.relationLc832Part0 Seg34.relationLc832Part1 Seg34.relationLc832Part2 Seg34.relationLc832Part3 Seg34.relationLc832Part4 at r5044
  unfold Seg34.relationRow5045 at r5045
  unfold Seg34.relationRow5046 at r5046
  unfold Seg34.relationRow5047 at r5047
  unfold Seg34.relationRow5048 Seg34.relationLc833 Seg34.relationLc833Part0 Seg34.relationLc833Part1 Seg34.relationLc833Part2 Seg34.relationLc833Part3 Seg34.relationLc833Part4 at r5048
  unfold Seg34.relationRow5049 Seg34.relationLc834 Seg34.relationLc834Part0 Seg34.relationLc834Part1 Seg34.relationLc834Part2 Seg34.relationLc834Part3 Seg34.relationLc834Part4 Seg34.relationLc834Part5 at r5049
  unfold Seg34.relationRow5050 at r5050
  unfold Seg34.relationRow5051 at r5051
  unfold Seg34.relationRow5052 at r5052
  unfold Seg34.relationRow5053 at r5053
  unfold Seg34.relationRow5054 at r5054
  have hrung159 (bit : Bool) (hbit : rho 34151 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX159 rho : Seg34.F), (seg34AccY159 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36311 : Seg34.F), (rho 36312 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX159 rho : Seg34.F), (seg34AccY159 rho : Seg34.F)⟩
        ⟨(rho 36311 : Seg34.F), (rho 36312 : Seg34.F)⟩
        ⟨(seg34AccX160 rho : Seg34.F), (seg34AccY160 rho : Seg34.F)⟩
        ⟨(rho 36325 : Seg34.F), (rho 36326 : Seg34.F)⟩ := by
    have hsum : seg34AccX159 rho + seg34AccY159 rho = rho 36313 := by
      rw [seg34LadderFlatX159_eq, seg34LadderFlatY159_eq]
      unfold seg34LadderFlatX159 seg34LadderFlatY159
      linear_combination r5041
    have ha0 : (rho 36311 + rho 36312) * (seg34AccX159 rho + seg34AccY159 rho) = rho 36314 := by
      rw [hsum]
      linear_combination r5042
    have ha1 : rho 36312 * seg34AccX159 rho = rho 36315 := by
      rw [seg34LadderFlatX159_eq]
      unfold seg34LadderFlatX159
      linear_combination r5043
    have ha2 : rho 36311 * seg34AccY159 rho = rho 36316 := by
      rw [seg34LadderFlatY159_eq]
      unfold seg34LadderFlatY159
      linear_combination r5044
    have ha3 : 3021 * rho 36315 * rho 36316 = rho 36317 := by
      linear_combination r5045
    have ha4 : rho 36318 * (1 + rho 36317) = rho 36315 + rho 36316 := by
      linear_combination r5046
    have ha5 : rho 36319 * (1 - rho 36317) = rho 36314 - rho 36315 - rho 36316 := by
      linear_combination r5047
    have haddx :
        rho 36318 * (1 + 3021 * (rho 36312 * seg34AccX159 rho) * (rho 36311 * seg34AccY159 rho)) =
          rho 36312 * seg34AccX159 rho + rho 36311 * seg34AccY159 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36319 * (1 - 3021 * (rho 36312 * seg34AccX159 rho) * (rho 36311 * seg34AccY159 rho)) =
          (-1) * (rho 36312 * seg34AccX159 rho) - rho 36311 * seg34AccY159 rho +
            (seg34AccY159 rho - seg34AccX159 rho * (-1)) * (rho 36311 + rho 36312) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36319 * (1 - rho 36317) = rho 36314 - rho 36315 - rho 36316 := ha5
        _ = (-1) * rho 36315 - rho 36316 + (seg34AccY159 rho - seg34AccX159 rho * (-1)) * (rho 36311 + rho 36312) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX160 rho = seg34AccX159 rho - Bool.toZMod bit * (seg34AccX159 rho - rho 36318) := by
      have hd : rho 36320 = Bool.toZMod bit * (rho 36318 - seg34AccX159 rho) := by
        rw [← hbit, seg34LadderFlatX159_eq]
        unfold seg34LadderFlatX159
        linear_combination -r5048
      unfold seg34AccX160
      linear_combination hd
    have hsely : seg34AccY160 rho = seg34AccY159 rho - Bool.toZMod bit * (seg34AccY159 rho - rho 36319) := by
      have hd : rho 36321 = Bool.toZMod bit * (rho 36319 - seg34AccY159 rho) := by
        rw [← hbit, seg34LadderFlatY159_eq]
        unfold seg34LadderFlatY159
        linear_combination -r5049
      unfold seg34AccY160
      linear_combination hd
    have hd0 : rho 36311 * rho 36312 = rho 36322 := by linear_combination r5050
    have hd1 : rho 36311 * rho 36311 = rho 36323 := by linear_combination r5051
    have hd2 : rho 36312 * rho 36312 = rho 36324 := by linear_combination r5052
    have hd3 : rho 36325 * (rho 36312 * rho 36312 + rho 36311 * rho 36311 * (-1)) = 2 * (rho 36311 * rho 36312) := by
      rw [hd0, hd1, hd2]
      linear_combination r5053
    have hd4 : rho 36326 * (2 - (rho 36312 * rho 36312 + rho 36311 * rho 36311 * (-1))) = rho 36312 * rho 36312 - rho 36311 * rho 36311 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5054
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX159 rho : Seg34.F), (seg34AccY159 rho : Seg34.F)⟩
      ⟨(rho 36311 : Seg34.F), (rho 36312 : Seg34.F)⟩
      ⟨(rho 36318 : Seg34.F), (rho 36319 : Seg34.F)⟩
      ⟨(seg34AccX160 rho : Seg34.F), (seg34AccY160 rho : Seg34.F)⟩
      ⟨(rho 36325 : Seg34.F), (rho 36326 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung159

theorem seg34_hstep_c4 (rho : Nat -> Seg34.F) (h : Seg34.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (33992 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 128 ≤ i → i < 160 →
      EdwardsBridge.onCurve (seg34LadderAccState rho i) →
      EdwardsBridge.onCurve (seg34LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg34LadderAccState rho i) (seg34LadderCurState rho i)
        (seg34LadderAccState rho (i + 1)) (seg34LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg34_rung128 rho h bits[128]! (hbitAt 128 (by omega)) hacc hcur
  · exact seg34_rung129 rho h bits[129]! (hbitAt 129 (by omega)) hacc hcur
  · exact seg34_rung130 rho h bits[130]! (hbitAt 130 (by omega)) hacc hcur
  · exact seg34_rung131 rho h bits[131]! (hbitAt 131 (by omega)) hacc hcur
  · exact seg34_rung132 rho h bits[132]! (hbitAt 132 (by omega)) hacc hcur
  · exact seg34_rung133 rho h bits[133]! (hbitAt 133 (by omega)) hacc hcur
  · exact seg34_rung134 rho h bits[134]! (hbitAt 134 (by omega)) hacc hcur
  · exact seg34_rung135 rho h bits[135]! (hbitAt 135 (by omega)) hacc hcur
  · exact seg34_rung136 rho h bits[136]! (hbitAt 136 (by omega)) hacc hcur
  · exact seg34_rung137 rho h bits[137]! (hbitAt 137 (by omega)) hacc hcur
  · exact seg34_rung138 rho h bits[138]! (hbitAt 138 (by omega)) hacc hcur
  · exact seg34_rung139 rho h bits[139]! (hbitAt 139 (by omega)) hacc hcur
  · exact seg34_rung140 rho h bits[140]! (hbitAt 140 (by omega)) hacc hcur
  · exact seg34_rung141 rho h bits[141]! (hbitAt 141 (by omega)) hacc hcur
  · exact seg34_rung142 rho h bits[142]! (hbitAt 142 (by omega)) hacc hcur
  · exact seg34_rung143 rho h bits[143]! (hbitAt 143 (by omega)) hacc hcur
  · exact seg34_rung144 rho h bits[144]! (hbitAt 144 (by omega)) hacc hcur
  · exact seg34_rung145 rho h bits[145]! (hbitAt 145 (by omega)) hacc hcur
  · exact seg34_rung146 rho h bits[146]! (hbitAt 146 (by omega)) hacc hcur
  · exact seg34_rung147 rho h bits[147]! (hbitAt 147 (by omega)) hacc hcur
  · exact seg34_rung148 rho h bits[148]! (hbitAt 148 (by omega)) hacc hcur
  · exact seg34_rung149 rho h bits[149]! (hbitAt 149 (by omega)) hacc hcur
  · exact seg34_rung150 rho h bits[150]! (hbitAt 150 (by omega)) hacc hcur
  · exact seg34_rung151 rho h bits[151]! (hbitAt 151 (by omega)) hacc hcur
  · exact seg34_rung152 rho h bits[152]! (hbitAt 152 (by omega)) hacc hcur
  · exact seg34_rung153 rho h bits[153]! (hbitAt 153 (by omega)) hacc hcur
  · exact seg34_rung154 rho h bits[154]! (hbitAt 154 (by omega)) hacc hcur
  · exact seg34_rung155 rho h bits[155]! (hbitAt 155 (by omega)) hacc hcur
  · exact seg34_rung156 rho h bits[156]! (hbitAt 156 (by omega)) hacc hcur
  · exact seg34_rung157 rho h bits[157]! (hbitAt 157 (by omega)) hacc hcur
  · exact seg34_rung158 rho h bits[158]! (hbitAt 158 (by omega)) hacc hcur
  · exact seg34_rung159 rho h bits[159]! (hbitAt 159 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
