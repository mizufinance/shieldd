import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg16_rung128 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15420 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX128 rho : Seg16.F), (seg16AccY128 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17199 : Seg16.F), (rho 17200 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX128 rho : Seg16.F), (seg16AccY128 rho : Seg16.F)⟩
        ⟨(rho 17199 : Seg16.F), (rho 17200 : Seg16.F)⟩
        ⟨(seg16AccX129 rho : Seg16.F), (seg16AccY129 rho : Seg16.F)⟩
        ⟨(rho 17212 : Seg16.F), (rho 17213 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart57 at p57
  rcases p57 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4629, r4630, r4631, r4632, r4633, r4634, r4635, r4636, r4637, r4638, r4639⟩
  unfold Seg16.relationPart58 at p58
  rcases p58 with ⟨r4640, r4641, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow4629 Seg16.relationLc675 Seg16.relationLc675Part0 Seg16.relationLc675Part1 Seg16.relationLc675Part2 Seg16.relationLc675Part3 Seg16.relationLc675Part4 Seg16.relationLc675Part5 Seg16.relationLc675Part6 Seg16.relationLc675Part7 Seg16.relationLc675Part8 at r4629
  unfold Seg16.relationRow4630 Seg16.relationLc676 Seg16.relationLc676Part0 Seg16.relationLc676Part1 Seg16.relationLc676Part2 Seg16.relationLc676Part3 at r4630
  unfold Seg16.relationRow4631 Seg16.relationLc677 Seg16.relationLc677Part0 Seg16.relationLc677Part1 Seg16.relationLc677Part2 Seg16.relationLc677Part3 Seg16.relationLc677Part4 at r4631
  unfold Seg16.relationRow4632 at r4632
  unfold Seg16.relationRow4633 at r4633
  unfold Seg16.relationRow4634 at r4634
  unfold Seg16.relationRow4635 Seg16.relationLc678 Seg16.relationLc678Part0 Seg16.relationLc678Part1 Seg16.relationLc678Part2 Seg16.relationLc678Part3 Seg16.relationLc678Part4 at r4635
  unfold Seg16.relationRow4636 Seg16.relationLc679 Seg16.relationLc679Part0 Seg16.relationLc679Part1 Seg16.relationLc679Part2 Seg16.relationLc679Part3 Seg16.relationLc679Part4 at r4636
  unfold Seg16.relationRow4637 at r4637
  unfold Seg16.relationRow4638 at r4638
  unfold Seg16.relationRow4639 at r4639
  unfold Seg16.relationRow4640 at r4640
  unfold Seg16.relationRow4641 at r4641
  have hrung128 (bit : Bool) (hbit : rho 15420 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX128 rho : Seg16.F), (seg16AccY128 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17199 : Seg16.F), (rho 17200 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX128 rho : Seg16.F), (seg16AccY128 rho : Seg16.F)⟩
        ⟨(rho 17199 : Seg16.F), (rho 17200 : Seg16.F)⟩
        ⟨(seg16AccX129 rho : Seg16.F), (seg16AccY129 rho : Seg16.F)⟩
        ⟨(rho 17212 : Seg16.F), (rho 17213 : Seg16.F)⟩ := by
    have ha0 : (rho 17199 + rho 17200) * (seg16AccX128 rho + seg16AccY128 rho) = rho 17201 := by
      rw [seg16LadderFlatX128_eq, seg16LadderFlatY128_eq]
      unfold seg16LadderFlatX128 seg16LadderFlatY128
      linear_combination r4629
    have ha1 : rho 17200 * seg16AccX128 rho = rho 17202 := by
      rw [seg16LadderFlatX128_eq]
      unfold seg16LadderFlatX128
      linear_combination r4630
    have ha2 : rho 17199 * seg16AccY128 rho = rho 17203 := by
      rw [seg16LadderFlatY128_eq]
      unfold seg16LadderFlatY128
      linear_combination r4631
    have ha3 : 3021 * rho 17202 * rho 17203 = rho 17204 := by
      linear_combination r4632
    have ha4 : rho 17205 * (1 + rho 17204) = rho 17202 + rho 17203 := by
      linear_combination r4633
    have ha5 : rho 17206 * (1 - rho 17204) = rho 17201 - rho 17202 - rho 17203 := by
      linear_combination r4634
    have haddx :
        rho 17205 * (1 + 3021 * (rho 17200 * seg16AccX128 rho) * (rho 17199 * seg16AccY128 rho)) =
          rho 17200 * seg16AccX128 rho + rho 17199 * seg16AccY128 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17206 * (1 - 3021 * (rho 17200 * seg16AccX128 rho) * (rho 17199 * seg16AccY128 rho)) =
          (-1) * (rho 17200 * seg16AccX128 rho) - rho 17199 * seg16AccY128 rho +
            (seg16AccY128 rho - seg16AccX128 rho * (-1)) * (rho 17199 + rho 17200) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17206 * (1 - rho 17204) = rho 17201 - rho 17202 - rho 17203 := ha5
        _ = (-1) * rho 17202 - rho 17203 + (seg16AccY128 rho - seg16AccX128 rho * (-1)) * (rho 17199 + rho 17200) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX129 rho = seg16AccX128 rho - Bool.toZMod bit * (seg16AccX128 rho - rho 17205) := by
      have hd : rho 17207 = Bool.toZMod bit * (rho 17205 - seg16AccX128 rho) := by
        rw [← hbit, seg16LadderFlatX128_eq]
        unfold seg16LadderFlatX128
        linear_combination -r4635
      unfold seg16AccX129
      linear_combination hd
    have hsely : seg16AccY129 rho = seg16AccY128 rho - Bool.toZMod bit * (seg16AccY128 rho - rho 17206) := by
      have hd : rho 17208 = Bool.toZMod bit * (rho 17206 - seg16AccY128 rho) := by
        rw [← hbit, seg16LadderFlatY128_eq]
        unfold seg16LadderFlatY128
        linear_combination -r4636
      unfold seg16AccY129
      linear_combination hd
    have hd0 : rho 17199 * rho 17200 = rho 17209 := by linear_combination r4637
    have hd1 : rho 17199 * rho 17199 = rho 17210 := by linear_combination r4638
    have hd2 : rho 17200 * rho 17200 = rho 17211 := by linear_combination r4639
    have hd3 : rho 17212 * (rho 17200 * rho 17200 + rho 17199 * rho 17199 * (-1)) = 2 * (rho 17199 * rho 17200) := by
      rw [hd0, hd1, hd2]
      linear_combination r4640
    have hd4 : rho 17213 * (2 - (rho 17200 * rho 17200 + rho 17199 * rho 17199 * (-1))) = rho 17200 * rho 17200 - rho 17199 * rho 17199 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4641
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX128 rho : Seg16.F), (seg16AccY128 rho : Seg16.F)⟩
      ⟨(rho 17199 : Seg16.F), (rho 17200 : Seg16.F)⟩
      ⟨(rho 17205 : Seg16.F), (rho 17206 : Seg16.F)⟩
      ⟨(seg16AccX129 rho : Seg16.F), (seg16AccY129 rho : Seg16.F)⟩
      ⟨(rho 17212 : Seg16.F), (rho 17213 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung128

theorem seg16_rung129 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15421 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX129 rho : Seg16.F), (seg16AccY129 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17212 : Seg16.F), (rho 17213 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX129 rho : Seg16.F), (seg16AccY129 rho : Seg16.F)⟩
        ⟨(rho 17212 : Seg16.F), (rho 17213 : Seg16.F)⟩
        ⟨(seg16AccX130 rho : Seg16.F), (seg16AccY130 rho : Seg16.F)⟩
        ⟨(rho 17225 : Seg16.F), (rho 17226 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart58 at p58
  rcases p58 with ⟨_, _, r4642, r4643, r4644, r4645, r4646, r4647, r4648, r4649, r4650, r4651, r4652, r4653, r4654, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow4642 Seg16.relationLc680 Seg16.relationLc680Part0 Seg16.relationLc680Part1 Seg16.relationLc680Part2 Seg16.relationLc680Part3 Seg16.relationLc680Part4 Seg16.relationLc680Part5 Seg16.relationLc680Part6 Seg16.relationLc680Part7 Seg16.relationLc680Part8 at r4642
  unfold Seg16.relationRow4643 Seg16.relationLc681 Seg16.relationLc681Part0 Seg16.relationLc681Part1 Seg16.relationLc681Part2 Seg16.relationLc681Part3 Seg16.relationLc681Part4 at r4643
  unfold Seg16.relationRow4644 Seg16.relationLc682 Seg16.relationLc682Part0 Seg16.relationLc682Part1 Seg16.relationLc682Part2 Seg16.relationLc682Part3 Seg16.relationLc682Part4 at r4644
  unfold Seg16.relationRow4645 at r4645
  unfold Seg16.relationRow4646 at r4646
  unfold Seg16.relationRow4647 at r4647
  unfold Seg16.relationRow4648 Seg16.relationLc683 Seg16.relationLc683Part0 Seg16.relationLc683Part1 Seg16.relationLc683Part2 Seg16.relationLc683Part3 Seg16.relationLc683Part4 at r4648
  unfold Seg16.relationRow4649 Seg16.relationLc684 Seg16.relationLc684Part0 Seg16.relationLc684Part1 Seg16.relationLc684Part2 Seg16.relationLc684Part3 Seg16.relationLc684Part4 at r4649
  unfold Seg16.relationRow4650 at r4650
  unfold Seg16.relationRow4651 at r4651
  unfold Seg16.relationRow4652 at r4652
  unfold Seg16.relationRow4653 at r4653
  unfold Seg16.relationRow4654 at r4654
  have hrung129 (bit : Bool) (hbit : rho 15421 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX129 rho : Seg16.F), (seg16AccY129 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17212 : Seg16.F), (rho 17213 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX129 rho : Seg16.F), (seg16AccY129 rho : Seg16.F)⟩
        ⟨(rho 17212 : Seg16.F), (rho 17213 : Seg16.F)⟩
        ⟨(seg16AccX130 rho : Seg16.F), (seg16AccY130 rho : Seg16.F)⟩
        ⟨(rho 17225 : Seg16.F), (rho 17226 : Seg16.F)⟩ := by
    have ha0 : (rho 17212 + rho 17213) * (seg16AccX129 rho + seg16AccY129 rho) = rho 17214 := by
      rw [seg16LadderFlatX129_eq, seg16LadderFlatY129_eq]
      unfold seg16LadderFlatX129 seg16LadderFlatY129
      linear_combination r4642
    have ha1 : rho 17213 * seg16AccX129 rho = rho 17215 := by
      rw [seg16LadderFlatX129_eq]
      unfold seg16LadderFlatX129
      linear_combination r4643
    have ha2 : rho 17212 * seg16AccY129 rho = rho 17216 := by
      rw [seg16LadderFlatY129_eq]
      unfold seg16LadderFlatY129
      linear_combination r4644
    have ha3 : 3021 * rho 17215 * rho 17216 = rho 17217 := by
      linear_combination r4645
    have ha4 : rho 17218 * (1 + rho 17217) = rho 17215 + rho 17216 := by
      linear_combination r4646
    have ha5 : rho 17219 * (1 - rho 17217) = rho 17214 - rho 17215 - rho 17216 := by
      linear_combination r4647
    have haddx :
        rho 17218 * (1 + 3021 * (rho 17213 * seg16AccX129 rho) * (rho 17212 * seg16AccY129 rho)) =
          rho 17213 * seg16AccX129 rho + rho 17212 * seg16AccY129 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17219 * (1 - 3021 * (rho 17213 * seg16AccX129 rho) * (rho 17212 * seg16AccY129 rho)) =
          (-1) * (rho 17213 * seg16AccX129 rho) - rho 17212 * seg16AccY129 rho +
            (seg16AccY129 rho - seg16AccX129 rho * (-1)) * (rho 17212 + rho 17213) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17219 * (1 - rho 17217) = rho 17214 - rho 17215 - rho 17216 := ha5
        _ = (-1) * rho 17215 - rho 17216 + (seg16AccY129 rho - seg16AccX129 rho * (-1)) * (rho 17212 + rho 17213) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX130 rho = seg16AccX129 rho - Bool.toZMod bit * (seg16AccX129 rho - rho 17218) := by
      have hd : rho 17220 = Bool.toZMod bit * (rho 17218 - seg16AccX129 rho) := by
        rw [← hbit, seg16LadderFlatX129_eq]
        unfold seg16LadderFlatX129
        linear_combination -r4648
      unfold seg16AccX130
      linear_combination hd
    have hsely : seg16AccY130 rho = seg16AccY129 rho - Bool.toZMod bit * (seg16AccY129 rho - rho 17219) := by
      have hd : rho 17221 = Bool.toZMod bit * (rho 17219 - seg16AccY129 rho) := by
        rw [← hbit, seg16LadderFlatY129_eq]
        unfold seg16LadderFlatY129
        linear_combination -r4649
      unfold seg16AccY130
      linear_combination hd
    have hd0 : rho 17212 * rho 17213 = rho 17222 := by linear_combination r4650
    have hd1 : rho 17212 * rho 17212 = rho 17223 := by linear_combination r4651
    have hd2 : rho 17213 * rho 17213 = rho 17224 := by linear_combination r4652
    have hd3 : rho 17225 * (rho 17213 * rho 17213 + rho 17212 * rho 17212 * (-1)) = 2 * (rho 17212 * rho 17213) := by
      rw [hd0, hd1, hd2]
      linear_combination r4653
    have hd4 : rho 17226 * (2 - (rho 17213 * rho 17213 + rho 17212 * rho 17212 * (-1))) = rho 17213 * rho 17213 - rho 17212 * rho 17212 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4654
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX129 rho : Seg16.F), (seg16AccY129 rho : Seg16.F)⟩
      ⟨(rho 17212 : Seg16.F), (rho 17213 : Seg16.F)⟩
      ⟨(rho 17218 : Seg16.F), (rho 17219 : Seg16.F)⟩
      ⟨(seg16AccX130 rho : Seg16.F), (seg16AccY130 rho : Seg16.F)⟩
      ⟨(rho 17225 : Seg16.F), (rho 17226 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung129

theorem seg16_rung130 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15422 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX130 rho : Seg16.F), (seg16AccY130 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17225 : Seg16.F), (rho 17226 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX130 rho : Seg16.F), (seg16AccY130 rho : Seg16.F)⟩
        ⟨(rho 17225 : Seg16.F), (rho 17226 : Seg16.F)⟩
        ⟨(seg16AccX131 rho : Seg16.F), (seg16AccY131 rho : Seg16.F)⟩
        ⟨(rho 17238 : Seg16.F), (rho 17239 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart58 at p58
  rcases p58 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4655, r4656, r4657, r4658, r4659, r4660, r4661, r4662, r4663, r4664, r4665, r4666, r4667, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow4655 Seg16.relationLc685 Seg16.relationLc685Part0 Seg16.relationLc685Part1 Seg16.relationLc685Part2 Seg16.relationLc685Part3 Seg16.relationLc685Part4 Seg16.relationLc685Part5 Seg16.relationLc685Part6 Seg16.relationLc685Part7 Seg16.relationLc685Part8 at r4655
  unfold Seg16.relationRow4656 Seg16.relationLc686 Seg16.relationLc686Part0 Seg16.relationLc686Part1 Seg16.relationLc686Part2 Seg16.relationLc686Part3 Seg16.relationLc686Part4 at r4656
  unfold Seg16.relationRow4657 Seg16.relationLc687 Seg16.relationLc687Part0 Seg16.relationLc687Part1 Seg16.relationLc687Part2 Seg16.relationLc687Part3 Seg16.relationLc687Part4 at r4657
  unfold Seg16.relationRow4658 at r4658
  unfold Seg16.relationRow4659 at r4659
  unfold Seg16.relationRow4660 at r4660
  unfold Seg16.relationRow4661 Seg16.relationLc688 Seg16.relationLc688Part0 Seg16.relationLc688Part1 Seg16.relationLc688Part2 Seg16.relationLc688Part3 Seg16.relationLc688Part4 at r4661
  unfold Seg16.relationRow4662 Seg16.relationLc689 Seg16.relationLc689Part0 Seg16.relationLc689Part1 Seg16.relationLc689Part2 Seg16.relationLc689Part3 Seg16.relationLc689Part4 at r4662
  unfold Seg16.relationRow4663 at r4663
  unfold Seg16.relationRow4664 at r4664
  unfold Seg16.relationRow4665 at r4665
  unfold Seg16.relationRow4666 at r4666
  unfold Seg16.relationRow4667 at r4667
  have hrung130 (bit : Bool) (hbit : rho 15422 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX130 rho : Seg16.F), (seg16AccY130 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17225 : Seg16.F), (rho 17226 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX130 rho : Seg16.F), (seg16AccY130 rho : Seg16.F)⟩
        ⟨(rho 17225 : Seg16.F), (rho 17226 : Seg16.F)⟩
        ⟨(seg16AccX131 rho : Seg16.F), (seg16AccY131 rho : Seg16.F)⟩
        ⟨(rho 17238 : Seg16.F), (rho 17239 : Seg16.F)⟩ := by
    have ha0 : (rho 17225 + rho 17226) * (seg16AccX130 rho + seg16AccY130 rho) = rho 17227 := by
      rw [seg16LadderFlatX130_eq, seg16LadderFlatY130_eq]
      unfold seg16LadderFlatX130 seg16LadderFlatY130
      linear_combination r4655
    have ha1 : rho 17226 * seg16AccX130 rho = rho 17228 := by
      rw [seg16LadderFlatX130_eq]
      unfold seg16LadderFlatX130
      linear_combination r4656
    have ha2 : rho 17225 * seg16AccY130 rho = rho 17229 := by
      rw [seg16LadderFlatY130_eq]
      unfold seg16LadderFlatY130
      linear_combination r4657
    have ha3 : 3021 * rho 17228 * rho 17229 = rho 17230 := by
      linear_combination r4658
    have ha4 : rho 17231 * (1 + rho 17230) = rho 17228 + rho 17229 := by
      linear_combination r4659
    have ha5 : rho 17232 * (1 - rho 17230) = rho 17227 - rho 17228 - rho 17229 := by
      linear_combination r4660
    have haddx :
        rho 17231 * (1 + 3021 * (rho 17226 * seg16AccX130 rho) * (rho 17225 * seg16AccY130 rho)) =
          rho 17226 * seg16AccX130 rho + rho 17225 * seg16AccY130 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17232 * (1 - 3021 * (rho 17226 * seg16AccX130 rho) * (rho 17225 * seg16AccY130 rho)) =
          (-1) * (rho 17226 * seg16AccX130 rho) - rho 17225 * seg16AccY130 rho +
            (seg16AccY130 rho - seg16AccX130 rho * (-1)) * (rho 17225 + rho 17226) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17232 * (1 - rho 17230) = rho 17227 - rho 17228 - rho 17229 := ha5
        _ = (-1) * rho 17228 - rho 17229 + (seg16AccY130 rho - seg16AccX130 rho * (-1)) * (rho 17225 + rho 17226) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX131 rho = seg16AccX130 rho - Bool.toZMod bit * (seg16AccX130 rho - rho 17231) := by
      have hd : rho 17233 = Bool.toZMod bit * (rho 17231 - seg16AccX130 rho) := by
        rw [← hbit, seg16LadderFlatX130_eq]
        unfold seg16LadderFlatX130
        linear_combination -r4661
      unfold seg16AccX131
      linear_combination hd
    have hsely : seg16AccY131 rho = seg16AccY130 rho - Bool.toZMod bit * (seg16AccY130 rho - rho 17232) := by
      have hd : rho 17234 = Bool.toZMod bit * (rho 17232 - seg16AccY130 rho) := by
        rw [← hbit, seg16LadderFlatY130_eq]
        unfold seg16LadderFlatY130
        linear_combination -r4662
      unfold seg16AccY131
      linear_combination hd
    have hd0 : rho 17225 * rho 17226 = rho 17235 := by linear_combination r4663
    have hd1 : rho 17225 * rho 17225 = rho 17236 := by linear_combination r4664
    have hd2 : rho 17226 * rho 17226 = rho 17237 := by linear_combination r4665
    have hd3 : rho 17238 * (rho 17226 * rho 17226 + rho 17225 * rho 17225 * (-1)) = 2 * (rho 17225 * rho 17226) := by
      rw [hd0, hd1, hd2]
      linear_combination r4666
    have hd4 : rho 17239 * (2 - (rho 17226 * rho 17226 + rho 17225 * rho 17225 * (-1))) = rho 17226 * rho 17226 - rho 17225 * rho 17225 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4667
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX130 rho : Seg16.F), (seg16AccY130 rho : Seg16.F)⟩
      ⟨(rho 17225 : Seg16.F), (rho 17226 : Seg16.F)⟩
      ⟨(rho 17231 : Seg16.F), (rho 17232 : Seg16.F)⟩
      ⟨(seg16AccX131 rho : Seg16.F), (seg16AccY131 rho : Seg16.F)⟩
      ⟨(rho 17238 : Seg16.F), (rho 17239 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung130

theorem seg16_rung131 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15423 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX131 rho : Seg16.F), (seg16AccY131 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17238 : Seg16.F), (rho 17239 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX131 rho : Seg16.F), (seg16AccY131 rho : Seg16.F)⟩
        ⟨(rho 17238 : Seg16.F), (rho 17239 : Seg16.F)⟩
        ⟨(seg16AccX132 rho : Seg16.F), (seg16AccY132 rho : Seg16.F)⟩
        ⟨(rho 17251 : Seg16.F), (rho 17252 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart58 at p58
  rcases p58 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4668, r4669, r4670, r4671, r4672, r4673, r4674, r4675, r4676, r4677, r4678, r4679, r4680, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow4668 Seg16.relationLc690 Seg16.relationLc690Part0 Seg16.relationLc690Part1 Seg16.relationLc690Part2 Seg16.relationLc690Part3 Seg16.relationLc690Part4 Seg16.relationLc690Part5 Seg16.relationLc690Part6 Seg16.relationLc690Part7 Seg16.relationLc690Part8 at r4668
  unfold Seg16.relationRow4669 Seg16.relationLc691 Seg16.relationLc691Part0 Seg16.relationLc691Part1 Seg16.relationLc691Part2 Seg16.relationLc691Part3 Seg16.relationLc691Part4 at r4669
  unfold Seg16.relationRow4670 Seg16.relationLc692 Seg16.relationLc692Part0 Seg16.relationLc692Part1 Seg16.relationLc692Part2 Seg16.relationLc692Part3 Seg16.relationLc692Part4 at r4670
  unfold Seg16.relationRow4671 at r4671
  unfold Seg16.relationRow4672 at r4672
  unfold Seg16.relationRow4673 at r4673
  unfold Seg16.relationRow4674 Seg16.relationLc693 Seg16.relationLc693Part0 Seg16.relationLc693Part1 Seg16.relationLc693Part2 Seg16.relationLc693Part3 Seg16.relationLc693Part4 at r4674
  unfold Seg16.relationRow4675 Seg16.relationLc694 Seg16.relationLc694Part0 Seg16.relationLc694Part1 Seg16.relationLc694Part2 Seg16.relationLc694Part3 Seg16.relationLc694Part4 at r4675
  unfold Seg16.relationRow4676 at r4676
  unfold Seg16.relationRow4677 at r4677
  unfold Seg16.relationRow4678 at r4678
  unfold Seg16.relationRow4679 at r4679
  unfold Seg16.relationRow4680 at r4680
  have hrung131 (bit : Bool) (hbit : rho 15423 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX131 rho : Seg16.F), (seg16AccY131 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17238 : Seg16.F), (rho 17239 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX131 rho : Seg16.F), (seg16AccY131 rho : Seg16.F)⟩
        ⟨(rho 17238 : Seg16.F), (rho 17239 : Seg16.F)⟩
        ⟨(seg16AccX132 rho : Seg16.F), (seg16AccY132 rho : Seg16.F)⟩
        ⟨(rho 17251 : Seg16.F), (rho 17252 : Seg16.F)⟩ := by
    have ha0 : (rho 17238 + rho 17239) * (seg16AccX131 rho + seg16AccY131 rho) = rho 17240 := by
      rw [seg16LadderFlatX131_eq, seg16LadderFlatY131_eq]
      unfold seg16LadderFlatX131 seg16LadderFlatY131
      linear_combination r4668
    have ha1 : rho 17239 * seg16AccX131 rho = rho 17241 := by
      rw [seg16LadderFlatX131_eq]
      unfold seg16LadderFlatX131
      linear_combination r4669
    have ha2 : rho 17238 * seg16AccY131 rho = rho 17242 := by
      rw [seg16LadderFlatY131_eq]
      unfold seg16LadderFlatY131
      linear_combination r4670
    have ha3 : 3021 * rho 17241 * rho 17242 = rho 17243 := by
      linear_combination r4671
    have ha4 : rho 17244 * (1 + rho 17243) = rho 17241 + rho 17242 := by
      linear_combination r4672
    have ha5 : rho 17245 * (1 - rho 17243) = rho 17240 - rho 17241 - rho 17242 := by
      linear_combination r4673
    have haddx :
        rho 17244 * (1 + 3021 * (rho 17239 * seg16AccX131 rho) * (rho 17238 * seg16AccY131 rho)) =
          rho 17239 * seg16AccX131 rho + rho 17238 * seg16AccY131 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17245 * (1 - 3021 * (rho 17239 * seg16AccX131 rho) * (rho 17238 * seg16AccY131 rho)) =
          (-1) * (rho 17239 * seg16AccX131 rho) - rho 17238 * seg16AccY131 rho +
            (seg16AccY131 rho - seg16AccX131 rho * (-1)) * (rho 17238 + rho 17239) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17245 * (1 - rho 17243) = rho 17240 - rho 17241 - rho 17242 := ha5
        _ = (-1) * rho 17241 - rho 17242 + (seg16AccY131 rho - seg16AccX131 rho * (-1)) * (rho 17238 + rho 17239) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX132 rho = seg16AccX131 rho - Bool.toZMod bit * (seg16AccX131 rho - rho 17244) := by
      have hd : rho 17246 = Bool.toZMod bit * (rho 17244 - seg16AccX131 rho) := by
        rw [← hbit, seg16LadderFlatX131_eq]
        unfold seg16LadderFlatX131
        linear_combination -r4674
      unfold seg16AccX132
      linear_combination hd
    have hsely : seg16AccY132 rho = seg16AccY131 rho - Bool.toZMod bit * (seg16AccY131 rho - rho 17245) := by
      have hd : rho 17247 = Bool.toZMod bit * (rho 17245 - seg16AccY131 rho) := by
        rw [← hbit, seg16LadderFlatY131_eq]
        unfold seg16LadderFlatY131
        linear_combination -r4675
      unfold seg16AccY132
      linear_combination hd
    have hd0 : rho 17238 * rho 17239 = rho 17248 := by linear_combination r4676
    have hd1 : rho 17238 * rho 17238 = rho 17249 := by linear_combination r4677
    have hd2 : rho 17239 * rho 17239 = rho 17250 := by linear_combination r4678
    have hd3 : rho 17251 * (rho 17239 * rho 17239 + rho 17238 * rho 17238 * (-1)) = 2 * (rho 17238 * rho 17239) := by
      rw [hd0, hd1, hd2]
      linear_combination r4679
    have hd4 : rho 17252 * (2 - (rho 17239 * rho 17239 + rho 17238 * rho 17238 * (-1))) = rho 17239 * rho 17239 - rho 17238 * rho 17238 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4680
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX131 rho : Seg16.F), (seg16AccY131 rho : Seg16.F)⟩
      ⟨(rho 17238 : Seg16.F), (rho 17239 : Seg16.F)⟩
      ⟨(rho 17244 : Seg16.F), (rho 17245 : Seg16.F)⟩
      ⟨(seg16AccX132 rho : Seg16.F), (seg16AccY132 rho : Seg16.F)⟩
      ⟨(rho 17251 : Seg16.F), (rho 17252 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung131

theorem seg16_rung132 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15424 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX132 rho : Seg16.F), (seg16AccY132 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17251 : Seg16.F), (rho 17252 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX132 rho : Seg16.F), (seg16AccY132 rho : Seg16.F)⟩
        ⟨(rho 17251 : Seg16.F), (rho 17252 : Seg16.F)⟩
        ⟨(seg16AccX133 rho : Seg16.F), (seg16AccY133 rho : Seg16.F)⟩
        ⟨(rho 17264 : Seg16.F), (rho 17265 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart58 at p58
  rcases p58 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4681, r4682, r4683, r4684, r4685, r4686, r4687, r4688, r4689, r4690, r4691, r4692, r4693, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow4681 Seg16.relationLc695 Seg16.relationLc695Part0 Seg16.relationLc695Part1 Seg16.relationLc695Part2 Seg16.relationLc695Part3 Seg16.relationLc695Part4 Seg16.relationLc695Part5 Seg16.relationLc695Part6 Seg16.relationLc695Part7 Seg16.relationLc695Part8 at r4681
  unfold Seg16.relationRow4682 Seg16.relationLc696 Seg16.relationLc696Part0 Seg16.relationLc696Part1 Seg16.relationLc696Part2 Seg16.relationLc696Part3 Seg16.relationLc696Part4 at r4682
  unfold Seg16.relationRow4683 Seg16.relationLc697 Seg16.relationLc697Part0 Seg16.relationLc697Part1 Seg16.relationLc697Part2 Seg16.relationLc697Part3 Seg16.relationLc697Part4 at r4683
  unfold Seg16.relationRow4684 at r4684
  unfold Seg16.relationRow4685 at r4685
  unfold Seg16.relationRow4686 at r4686
  unfold Seg16.relationRow4687 Seg16.relationLc698 Seg16.relationLc698Part0 Seg16.relationLc698Part1 Seg16.relationLc698Part2 Seg16.relationLc698Part3 Seg16.relationLc698Part4 at r4687
  unfold Seg16.relationRow4688 Seg16.relationLc699 Seg16.relationLc699Part0 Seg16.relationLc699Part1 Seg16.relationLc699Part2 Seg16.relationLc699Part3 Seg16.relationLc699Part4 at r4688
  unfold Seg16.relationRow4689 at r4689
  unfold Seg16.relationRow4690 at r4690
  unfold Seg16.relationRow4691 at r4691
  unfold Seg16.relationRow4692 at r4692
  unfold Seg16.relationRow4693 at r4693
  have hrung132 (bit : Bool) (hbit : rho 15424 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX132 rho : Seg16.F), (seg16AccY132 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17251 : Seg16.F), (rho 17252 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX132 rho : Seg16.F), (seg16AccY132 rho : Seg16.F)⟩
        ⟨(rho 17251 : Seg16.F), (rho 17252 : Seg16.F)⟩
        ⟨(seg16AccX133 rho : Seg16.F), (seg16AccY133 rho : Seg16.F)⟩
        ⟨(rho 17264 : Seg16.F), (rho 17265 : Seg16.F)⟩ := by
    have ha0 : (rho 17251 + rho 17252) * (seg16AccX132 rho + seg16AccY132 rho) = rho 17253 := by
      rw [seg16LadderFlatX132_eq, seg16LadderFlatY132_eq]
      unfold seg16LadderFlatX132 seg16LadderFlatY132
      linear_combination r4681
    have ha1 : rho 17252 * seg16AccX132 rho = rho 17254 := by
      rw [seg16LadderFlatX132_eq]
      unfold seg16LadderFlatX132
      linear_combination r4682
    have ha2 : rho 17251 * seg16AccY132 rho = rho 17255 := by
      rw [seg16LadderFlatY132_eq]
      unfold seg16LadderFlatY132
      linear_combination r4683
    have ha3 : 3021 * rho 17254 * rho 17255 = rho 17256 := by
      linear_combination r4684
    have ha4 : rho 17257 * (1 + rho 17256) = rho 17254 + rho 17255 := by
      linear_combination r4685
    have ha5 : rho 17258 * (1 - rho 17256) = rho 17253 - rho 17254 - rho 17255 := by
      linear_combination r4686
    have haddx :
        rho 17257 * (1 + 3021 * (rho 17252 * seg16AccX132 rho) * (rho 17251 * seg16AccY132 rho)) =
          rho 17252 * seg16AccX132 rho + rho 17251 * seg16AccY132 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17258 * (1 - 3021 * (rho 17252 * seg16AccX132 rho) * (rho 17251 * seg16AccY132 rho)) =
          (-1) * (rho 17252 * seg16AccX132 rho) - rho 17251 * seg16AccY132 rho +
            (seg16AccY132 rho - seg16AccX132 rho * (-1)) * (rho 17251 + rho 17252) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17258 * (1 - rho 17256) = rho 17253 - rho 17254 - rho 17255 := ha5
        _ = (-1) * rho 17254 - rho 17255 + (seg16AccY132 rho - seg16AccX132 rho * (-1)) * (rho 17251 + rho 17252) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX133 rho = seg16AccX132 rho - Bool.toZMod bit * (seg16AccX132 rho - rho 17257) := by
      have hd : rho 17259 = Bool.toZMod bit * (rho 17257 - seg16AccX132 rho) := by
        rw [← hbit, seg16LadderFlatX132_eq]
        unfold seg16LadderFlatX132
        linear_combination -r4687
      unfold seg16AccX133
      linear_combination hd
    have hsely : seg16AccY133 rho = seg16AccY132 rho - Bool.toZMod bit * (seg16AccY132 rho - rho 17258) := by
      have hd : rho 17260 = Bool.toZMod bit * (rho 17258 - seg16AccY132 rho) := by
        rw [← hbit, seg16LadderFlatY132_eq]
        unfold seg16LadderFlatY132
        linear_combination -r4688
      unfold seg16AccY133
      linear_combination hd
    have hd0 : rho 17251 * rho 17252 = rho 17261 := by linear_combination r4689
    have hd1 : rho 17251 * rho 17251 = rho 17262 := by linear_combination r4690
    have hd2 : rho 17252 * rho 17252 = rho 17263 := by linear_combination r4691
    have hd3 : rho 17264 * (rho 17252 * rho 17252 + rho 17251 * rho 17251 * (-1)) = 2 * (rho 17251 * rho 17252) := by
      rw [hd0, hd1, hd2]
      linear_combination r4692
    have hd4 : rho 17265 * (2 - (rho 17252 * rho 17252 + rho 17251 * rho 17251 * (-1))) = rho 17252 * rho 17252 - rho 17251 * rho 17251 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4693
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX132 rho : Seg16.F), (seg16AccY132 rho : Seg16.F)⟩
      ⟨(rho 17251 : Seg16.F), (rho 17252 : Seg16.F)⟩
      ⟨(rho 17257 : Seg16.F), (rho 17258 : Seg16.F)⟩
      ⟨(seg16AccX133 rho : Seg16.F), (seg16AccY133 rho : Seg16.F)⟩
      ⟨(rho 17264 : Seg16.F), (rho 17265 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung132

theorem seg16_rung133 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15425 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX133 rho : Seg16.F), (seg16AccY133 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17264 : Seg16.F), (rho 17265 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX133 rho : Seg16.F), (seg16AccY133 rho : Seg16.F)⟩
        ⟨(rho 17264 : Seg16.F), (rho 17265 : Seg16.F)⟩
        ⟨(seg16AccX134 rho : Seg16.F), (seg16AccY134 rho : Seg16.F)⟩
        ⟨(rho 17277 : Seg16.F), (rho 17278 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart58 at p58
  rcases p58 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4694, r4695, r4696, r4697, r4698, r4699, r4700, r4701, r4702, r4703, r4704, r4705, r4706, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow4694 Seg16.relationLc700 Seg16.relationLc700Part0 Seg16.relationLc700Part1 Seg16.relationLc700Part2 Seg16.relationLc700Part3 Seg16.relationLc700Part4 Seg16.relationLc700Part5 Seg16.relationLc700Part6 Seg16.relationLc700Part7 Seg16.relationLc700Part8 at r4694
  unfold Seg16.relationRow4695 Seg16.relationLc701 Seg16.relationLc701Part0 Seg16.relationLc701Part1 Seg16.relationLc701Part2 Seg16.relationLc701Part3 Seg16.relationLc701Part4 at r4695
  unfold Seg16.relationRow4696 Seg16.relationLc702 Seg16.relationLc702Part0 Seg16.relationLc702Part1 Seg16.relationLc702Part2 Seg16.relationLc702Part3 Seg16.relationLc702Part4 at r4696
  unfold Seg16.relationRow4697 at r4697
  unfold Seg16.relationRow4698 at r4698
  unfold Seg16.relationRow4699 at r4699
  unfold Seg16.relationRow4700 Seg16.relationLc703 Seg16.relationLc703Part0 Seg16.relationLc703Part1 Seg16.relationLc703Part2 Seg16.relationLc703Part3 Seg16.relationLc703Part4 at r4700
  unfold Seg16.relationRow4701 Seg16.relationLc704 Seg16.relationLc704Part0 Seg16.relationLc704Part1 Seg16.relationLc704Part2 Seg16.relationLc704Part3 Seg16.relationLc704Part4 at r4701
  unfold Seg16.relationRow4702 at r4702
  unfold Seg16.relationRow4703 at r4703
  unfold Seg16.relationRow4704 at r4704
  unfold Seg16.relationRow4705 at r4705
  unfold Seg16.relationRow4706 at r4706
  have hrung133 (bit : Bool) (hbit : rho 15425 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX133 rho : Seg16.F), (seg16AccY133 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17264 : Seg16.F), (rho 17265 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX133 rho : Seg16.F), (seg16AccY133 rho : Seg16.F)⟩
        ⟨(rho 17264 : Seg16.F), (rho 17265 : Seg16.F)⟩
        ⟨(seg16AccX134 rho : Seg16.F), (seg16AccY134 rho : Seg16.F)⟩
        ⟨(rho 17277 : Seg16.F), (rho 17278 : Seg16.F)⟩ := by
    have ha0 : (rho 17264 + rho 17265) * (seg16AccX133 rho + seg16AccY133 rho) = rho 17266 := by
      rw [seg16LadderFlatX133_eq, seg16LadderFlatY133_eq]
      unfold seg16LadderFlatX133 seg16LadderFlatY133
      linear_combination r4694
    have ha1 : rho 17265 * seg16AccX133 rho = rho 17267 := by
      rw [seg16LadderFlatX133_eq]
      unfold seg16LadderFlatX133
      linear_combination r4695
    have ha2 : rho 17264 * seg16AccY133 rho = rho 17268 := by
      rw [seg16LadderFlatY133_eq]
      unfold seg16LadderFlatY133
      linear_combination r4696
    have ha3 : 3021 * rho 17267 * rho 17268 = rho 17269 := by
      linear_combination r4697
    have ha4 : rho 17270 * (1 + rho 17269) = rho 17267 + rho 17268 := by
      linear_combination r4698
    have ha5 : rho 17271 * (1 - rho 17269) = rho 17266 - rho 17267 - rho 17268 := by
      linear_combination r4699
    have haddx :
        rho 17270 * (1 + 3021 * (rho 17265 * seg16AccX133 rho) * (rho 17264 * seg16AccY133 rho)) =
          rho 17265 * seg16AccX133 rho + rho 17264 * seg16AccY133 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17271 * (1 - 3021 * (rho 17265 * seg16AccX133 rho) * (rho 17264 * seg16AccY133 rho)) =
          (-1) * (rho 17265 * seg16AccX133 rho) - rho 17264 * seg16AccY133 rho +
            (seg16AccY133 rho - seg16AccX133 rho * (-1)) * (rho 17264 + rho 17265) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17271 * (1 - rho 17269) = rho 17266 - rho 17267 - rho 17268 := ha5
        _ = (-1) * rho 17267 - rho 17268 + (seg16AccY133 rho - seg16AccX133 rho * (-1)) * (rho 17264 + rho 17265) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX134 rho = seg16AccX133 rho - Bool.toZMod bit * (seg16AccX133 rho - rho 17270) := by
      have hd : rho 17272 = Bool.toZMod bit * (rho 17270 - seg16AccX133 rho) := by
        rw [← hbit, seg16LadderFlatX133_eq]
        unfold seg16LadderFlatX133
        linear_combination -r4700
      unfold seg16AccX134
      linear_combination hd
    have hsely : seg16AccY134 rho = seg16AccY133 rho - Bool.toZMod bit * (seg16AccY133 rho - rho 17271) := by
      have hd : rho 17273 = Bool.toZMod bit * (rho 17271 - seg16AccY133 rho) := by
        rw [← hbit, seg16LadderFlatY133_eq]
        unfold seg16LadderFlatY133
        linear_combination -r4701
      unfold seg16AccY134
      linear_combination hd
    have hd0 : rho 17264 * rho 17265 = rho 17274 := by linear_combination r4702
    have hd1 : rho 17264 * rho 17264 = rho 17275 := by linear_combination r4703
    have hd2 : rho 17265 * rho 17265 = rho 17276 := by linear_combination r4704
    have hd3 : rho 17277 * (rho 17265 * rho 17265 + rho 17264 * rho 17264 * (-1)) = 2 * (rho 17264 * rho 17265) := by
      rw [hd0, hd1, hd2]
      linear_combination r4705
    have hd4 : rho 17278 * (2 - (rho 17265 * rho 17265 + rho 17264 * rho 17264 * (-1))) = rho 17265 * rho 17265 - rho 17264 * rho 17264 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4706
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX133 rho : Seg16.F), (seg16AccY133 rho : Seg16.F)⟩
      ⟨(rho 17264 : Seg16.F), (rho 17265 : Seg16.F)⟩
      ⟨(rho 17270 : Seg16.F), (rho 17271 : Seg16.F)⟩
      ⟨(seg16AccX134 rho : Seg16.F), (seg16AccY134 rho : Seg16.F)⟩
      ⟨(rho 17277 : Seg16.F), (rho 17278 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung133

theorem seg16_rung134 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15426 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX134 rho : Seg16.F), (seg16AccY134 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17277 : Seg16.F), (rho 17278 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX134 rho : Seg16.F), (seg16AccY134 rho : Seg16.F)⟩
        ⟨(rho 17277 : Seg16.F), (rho 17278 : Seg16.F)⟩
        ⟨(seg16AccX135 rho : Seg16.F), (seg16AccY135 rho : Seg16.F)⟩
        ⟨(rho 17290 : Seg16.F), (rho 17291 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart58 at p58
  rcases p58 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4707, r4708, r4709, r4710, r4711, r4712, r4713, r4714, r4715, r4716, r4717, r4718, r4719⟩
  unfold Seg16.relationRow4707 Seg16.relationLc705 Seg16.relationLc705Part0 Seg16.relationLc705Part1 Seg16.relationLc705Part2 Seg16.relationLc705Part3 Seg16.relationLc705Part4 Seg16.relationLc705Part5 Seg16.relationLc705Part6 Seg16.relationLc705Part7 Seg16.relationLc705Part8 at r4707
  unfold Seg16.relationRow4708 Seg16.relationLc706 Seg16.relationLc706Part0 Seg16.relationLc706Part1 Seg16.relationLc706Part2 Seg16.relationLc706Part3 Seg16.relationLc706Part4 at r4708
  unfold Seg16.relationRow4709 Seg16.relationLc707 Seg16.relationLc707Part0 Seg16.relationLc707Part1 Seg16.relationLc707Part2 Seg16.relationLc707Part3 Seg16.relationLc707Part4 at r4709
  unfold Seg16.relationRow4710 at r4710
  unfold Seg16.relationRow4711 at r4711
  unfold Seg16.relationRow4712 at r4712
  unfold Seg16.relationRow4713 Seg16.relationLc708 Seg16.relationLc708Part0 Seg16.relationLc708Part1 Seg16.relationLc708Part2 Seg16.relationLc708Part3 Seg16.relationLc708Part4 at r4713
  unfold Seg16.relationRow4714 Seg16.relationLc709 Seg16.relationLc709Part0 Seg16.relationLc709Part1 Seg16.relationLc709Part2 Seg16.relationLc709Part3 Seg16.relationLc709Part4 at r4714
  unfold Seg16.relationRow4715 at r4715
  unfold Seg16.relationRow4716 at r4716
  unfold Seg16.relationRow4717 at r4717
  unfold Seg16.relationRow4718 at r4718
  unfold Seg16.relationRow4719 at r4719
  have hrung134 (bit : Bool) (hbit : rho 15426 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX134 rho : Seg16.F), (seg16AccY134 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17277 : Seg16.F), (rho 17278 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX134 rho : Seg16.F), (seg16AccY134 rho : Seg16.F)⟩
        ⟨(rho 17277 : Seg16.F), (rho 17278 : Seg16.F)⟩
        ⟨(seg16AccX135 rho : Seg16.F), (seg16AccY135 rho : Seg16.F)⟩
        ⟨(rho 17290 : Seg16.F), (rho 17291 : Seg16.F)⟩ := by
    have ha0 : (rho 17277 + rho 17278) * (seg16AccX134 rho + seg16AccY134 rho) = rho 17279 := by
      rw [seg16LadderFlatX134_eq, seg16LadderFlatY134_eq]
      unfold seg16LadderFlatX134 seg16LadderFlatY134
      linear_combination r4707
    have ha1 : rho 17278 * seg16AccX134 rho = rho 17280 := by
      rw [seg16LadderFlatX134_eq]
      unfold seg16LadderFlatX134
      linear_combination r4708
    have ha2 : rho 17277 * seg16AccY134 rho = rho 17281 := by
      rw [seg16LadderFlatY134_eq]
      unfold seg16LadderFlatY134
      linear_combination r4709
    have ha3 : 3021 * rho 17280 * rho 17281 = rho 17282 := by
      linear_combination r4710
    have ha4 : rho 17283 * (1 + rho 17282) = rho 17280 + rho 17281 := by
      linear_combination r4711
    have ha5 : rho 17284 * (1 - rho 17282) = rho 17279 - rho 17280 - rho 17281 := by
      linear_combination r4712
    have haddx :
        rho 17283 * (1 + 3021 * (rho 17278 * seg16AccX134 rho) * (rho 17277 * seg16AccY134 rho)) =
          rho 17278 * seg16AccX134 rho + rho 17277 * seg16AccY134 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17284 * (1 - 3021 * (rho 17278 * seg16AccX134 rho) * (rho 17277 * seg16AccY134 rho)) =
          (-1) * (rho 17278 * seg16AccX134 rho) - rho 17277 * seg16AccY134 rho +
            (seg16AccY134 rho - seg16AccX134 rho * (-1)) * (rho 17277 + rho 17278) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17284 * (1 - rho 17282) = rho 17279 - rho 17280 - rho 17281 := ha5
        _ = (-1) * rho 17280 - rho 17281 + (seg16AccY134 rho - seg16AccX134 rho * (-1)) * (rho 17277 + rho 17278) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX135 rho = seg16AccX134 rho - Bool.toZMod bit * (seg16AccX134 rho - rho 17283) := by
      have hd : rho 17285 = Bool.toZMod bit * (rho 17283 - seg16AccX134 rho) := by
        rw [← hbit, seg16LadderFlatX134_eq]
        unfold seg16LadderFlatX134
        linear_combination -r4713
      unfold seg16AccX135
      linear_combination hd
    have hsely : seg16AccY135 rho = seg16AccY134 rho - Bool.toZMod bit * (seg16AccY134 rho - rho 17284) := by
      have hd : rho 17286 = Bool.toZMod bit * (rho 17284 - seg16AccY134 rho) := by
        rw [← hbit, seg16LadderFlatY134_eq]
        unfold seg16LadderFlatY134
        linear_combination -r4714
      unfold seg16AccY135
      linear_combination hd
    have hd0 : rho 17277 * rho 17278 = rho 17287 := by linear_combination r4715
    have hd1 : rho 17277 * rho 17277 = rho 17288 := by linear_combination r4716
    have hd2 : rho 17278 * rho 17278 = rho 17289 := by linear_combination r4717
    have hd3 : rho 17290 * (rho 17278 * rho 17278 + rho 17277 * rho 17277 * (-1)) = 2 * (rho 17277 * rho 17278) := by
      rw [hd0, hd1, hd2]
      linear_combination r4718
    have hd4 : rho 17291 * (2 - (rho 17278 * rho 17278 + rho 17277 * rho 17277 * (-1))) = rho 17278 * rho 17278 - rho 17277 * rho 17277 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4719
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX134 rho : Seg16.F), (seg16AccY134 rho : Seg16.F)⟩
      ⟨(rho 17277 : Seg16.F), (rho 17278 : Seg16.F)⟩
      ⟨(rho 17283 : Seg16.F), (rho 17284 : Seg16.F)⟩
      ⟨(seg16AccX135 rho : Seg16.F), (seg16AccY135 rho : Seg16.F)⟩
      ⟨(rho 17290 : Seg16.F), (rho 17291 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung134

theorem seg16_rung135 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15427 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX135 rho : Seg16.F), (seg16AccY135 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17290 : Seg16.F), (rho 17291 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX135 rho : Seg16.F), (seg16AccY135 rho : Seg16.F)⟩
        ⟨(rho 17290 : Seg16.F), (rho 17291 : Seg16.F)⟩
        ⟨(seg16AccX136 rho : Seg16.F), (seg16AccY136 rho : Seg16.F)⟩
        ⟨(rho 17303 : Seg16.F), (rho 17304 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart59 at p59
  rcases p59 with ⟨r4720, r4721, r4722, r4723, r4724, r4725, r4726, r4727, r4728, r4729, r4730, r4731, r4732, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow4720 Seg16.relationLc710 Seg16.relationLc710Part0 Seg16.relationLc710Part1 Seg16.relationLc710Part2 Seg16.relationLc710Part3 Seg16.relationLc710Part4 Seg16.relationLc710Part5 Seg16.relationLc710Part6 Seg16.relationLc710Part7 Seg16.relationLc710Part8 at r4720
  unfold Seg16.relationRow4721 Seg16.relationLc711 Seg16.relationLc711Part0 Seg16.relationLc711Part1 Seg16.relationLc711Part2 Seg16.relationLc711Part3 Seg16.relationLc711Part4 at r4721
  unfold Seg16.relationRow4722 Seg16.relationLc712 Seg16.relationLc712Part0 Seg16.relationLc712Part1 Seg16.relationLc712Part2 Seg16.relationLc712Part3 Seg16.relationLc712Part4 at r4722
  unfold Seg16.relationRow4723 at r4723
  unfold Seg16.relationRow4724 at r4724
  unfold Seg16.relationRow4725 at r4725
  unfold Seg16.relationRow4726 Seg16.relationLc713 Seg16.relationLc713Part0 Seg16.relationLc713Part1 Seg16.relationLc713Part2 Seg16.relationLc713Part3 Seg16.relationLc713Part4 at r4726
  unfold Seg16.relationRow4727 Seg16.relationLc714 Seg16.relationLc714Part0 Seg16.relationLc714Part1 Seg16.relationLc714Part2 Seg16.relationLc714Part3 Seg16.relationLc714Part4 at r4727
  unfold Seg16.relationRow4728 at r4728
  unfold Seg16.relationRow4729 at r4729
  unfold Seg16.relationRow4730 at r4730
  unfold Seg16.relationRow4731 at r4731
  unfold Seg16.relationRow4732 at r4732
  have hrung135 (bit : Bool) (hbit : rho 15427 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX135 rho : Seg16.F), (seg16AccY135 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17290 : Seg16.F), (rho 17291 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX135 rho : Seg16.F), (seg16AccY135 rho : Seg16.F)⟩
        ⟨(rho 17290 : Seg16.F), (rho 17291 : Seg16.F)⟩
        ⟨(seg16AccX136 rho : Seg16.F), (seg16AccY136 rho : Seg16.F)⟩
        ⟨(rho 17303 : Seg16.F), (rho 17304 : Seg16.F)⟩ := by
    have ha0 : (rho 17290 + rho 17291) * (seg16AccX135 rho + seg16AccY135 rho) = rho 17292 := by
      rw [seg16LadderFlatX135_eq, seg16LadderFlatY135_eq]
      unfold seg16LadderFlatX135 seg16LadderFlatY135
      linear_combination r4720
    have ha1 : rho 17291 * seg16AccX135 rho = rho 17293 := by
      rw [seg16LadderFlatX135_eq]
      unfold seg16LadderFlatX135
      linear_combination r4721
    have ha2 : rho 17290 * seg16AccY135 rho = rho 17294 := by
      rw [seg16LadderFlatY135_eq]
      unfold seg16LadderFlatY135
      linear_combination r4722
    have ha3 : 3021 * rho 17293 * rho 17294 = rho 17295 := by
      linear_combination r4723
    have ha4 : rho 17296 * (1 + rho 17295) = rho 17293 + rho 17294 := by
      linear_combination r4724
    have ha5 : rho 17297 * (1 - rho 17295) = rho 17292 - rho 17293 - rho 17294 := by
      linear_combination r4725
    have haddx :
        rho 17296 * (1 + 3021 * (rho 17291 * seg16AccX135 rho) * (rho 17290 * seg16AccY135 rho)) =
          rho 17291 * seg16AccX135 rho + rho 17290 * seg16AccY135 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17297 * (1 - 3021 * (rho 17291 * seg16AccX135 rho) * (rho 17290 * seg16AccY135 rho)) =
          (-1) * (rho 17291 * seg16AccX135 rho) - rho 17290 * seg16AccY135 rho +
            (seg16AccY135 rho - seg16AccX135 rho * (-1)) * (rho 17290 + rho 17291) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17297 * (1 - rho 17295) = rho 17292 - rho 17293 - rho 17294 := ha5
        _ = (-1) * rho 17293 - rho 17294 + (seg16AccY135 rho - seg16AccX135 rho * (-1)) * (rho 17290 + rho 17291) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX136 rho = seg16AccX135 rho - Bool.toZMod bit * (seg16AccX135 rho - rho 17296) := by
      have hd : rho 17298 = Bool.toZMod bit * (rho 17296 - seg16AccX135 rho) := by
        rw [← hbit, seg16LadderFlatX135_eq]
        unfold seg16LadderFlatX135
        linear_combination -r4726
      unfold seg16AccX136
      linear_combination hd
    have hsely : seg16AccY136 rho = seg16AccY135 rho - Bool.toZMod bit * (seg16AccY135 rho - rho 17297) := by
      have hd : rho 17299 = Bool.toZMod bit * (rho 17297 - seg16AccY135 rho) := by
        rw [← hbit, seg16LadderFlatY135_eq]
        unfold seg16LadderFlatY135
        linear_combination -r4727
      unfold seg16AccY136
      linear_combination hd
    have hd0 : rho 17290 * rho 17291 = rho 17300 := by linear_combination r4728
    have hd1 : rho 17290 * rho 17290 = rho 17301 := by linear_combination r4729
    have hd2 : rho 17291 * rho 17291 = rho 17302 := by linear_combination r4730
    have hd3 : rho 17303 * (rho 17291 * rho 17291 + rho 17290 * rho 17290 * (-1)) = 2 * (rho 17290 * rho 17291) := by
      rw [hd0, hd1, hd2]
      linear_combination r4731
    have hd4 : rho 17304 * (2 - (rho 17291 * rho 17291 + rho 17290 * rho 17290 * (-1))) = rho 17291 * rho 17291 - rho 17290 * rho 17290 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4732
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX135 rho : Seg16.F), (seg16AccY135 rho : Seg16.F)⟩
      ⟨(rho 17290 : Seg16.F), (rho 17291 : Seg16.F)⟩
      ⟨(rho 17296 : Seg16.F), (rho 17297 : Seg16.F)⟩
      ⟨(seg16AccX136 rho : Seg16.F), (seg16AccY136 rho : Seg16.F)⟩
      ⟨(rho 17303 : Seg16.F), (rho 17304 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung135

theorem seg16_rung136 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15428 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX136 rho : Seg16.F), (seg16AccY136 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17303 : Seg16.F), (rho 17304 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX136 rho : Seg16.F), (seg16AccY136 rho : Seg16.F)⟩
        ⟨(rho 17303 : Seg16.F), (rho 17304 : Seg16.F)⟩
        ⟨(seg16AccX137 rho : Seg16.F), (seg16AccY137 rho : Seg16.F)⟩
        ⟨(rho 17316 : Seg16.F), (rho 17317 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart59 at p59
  rcases p59 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, r4733, r4734, r4735, r4736, r4737, r4738, r4739, r4740, r4741, r4742, r4743, r4744, r4745, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow4733 Seg16.relationLc715 Seg16.relationLc715Part0 Seg16.relationLc715Part1 Seg16.relationLc715Part2 Seg16.relationLc715Part3 Seg16.relationLc715Part4 Seg16.relationLc715Part5 Seg16.relationLc715Part6 Seg16.relationLc715Part7 Seg16.relationLc715Part8 at r4733
  unfold Seg16.relationRow4734 Seg16.relationLc716 Seg16.relationLc716Part0 Seg16.relationLc716Part1 Seg16.relationLc716Part2 Seg16.relationLc716Part3 Seg16.relationLc716Part4 at r4734
  unfold Seg16.relationRow4735 Seg16.relationLc717 Seg16.relationLc717Part0 Seg16.relationLc717Part1 Seg16.relationLc717Part2 Seg16.relationLc717Part3 Seg16.relationLc717Part4 at r4735
  unfold Seg16.relationRow4736 at r4736
  unfold Seg16.relationRow4737 at r4737
  unfold Seg16.relationRow4738 at r4738
  unfold Seg16.relationRow4739 Seg16.relationLc718 Seg16.relationLc718Part0 Seg16.relationLc718Part1 Seg16.relationLc718Part2 Seg16.relationLc718Part3 Seg16.relationLc718Part4 at r4739
  unfold Seg16.relationRow4740 Seg16.relationLc719 Seg16.relationLc719Part0 Seg16.relationLc719Part1 Seg16.relationLc719Part2 Seg16.relationLc719Part3 Seg16.relationLc719Part4 at r4740
  unfold Seg16.relationRow4741 at r4741
  unfold Seg16.relationRow4742 at r4742
  unfold Seg16.relationRow4743 at r4743
  unfold Seg16.relationRow4744 at r4744
  unfold Seg16.relationRow4745 at r4745
  have hrung136 (bit : Bool) (hbit : rho 15428 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX136 rho : Seg16.F), (seg16AccY136 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17303 : Seg16.F), (rho 17304 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX136 rho : Seg16.F), (seg16AccY136 rho : Seg16.F)⟩
        ⟨(rho 17303 : Seg16.F), (rho 17304 : Seg16.F)⟩
        ⟨(seg16AccX137 rho : Seg16.F), (seg16AccY137 rho : Seg16.F)⟩
        ⟨(rho 17316 : Seg16.F), (rho 17317 : Seg16.F)⟩ := by
    have ha0 : (rho 17303 + rho 17304) * (seg16AccX136 rho + seg16AccY136 rho) = rho 17305 := by
      rw [seg16LadderFlatX136_eq, seg16LadderFlatY136_eq]
      unfold seg16LadderFlatX136 seg16LadderFlatY136
      linear_combination r4733
    have ha1 : rho 17304 * seg16AccX136 rho = rho 17306 := by
      rw [seg16LadderFlatX136_eq]
      unfold seg16LadderFlatX136
      linear_combination r4734
    have ha2 : rho 17303 * seg16AccY136 rho = rho 17307 := by
      rw [seg16LadderFlatY136_eq]
      unfold seg16LadderFlatY136
      linear_combination r4735
    have ha3 : 3021 * rho 17306 * rho 17307 = rho 17308 := by
      linear_combination r4736
    have ha4 : rho 17309 * (1 + rho 17308) = rho 17306 + rho 17307 := by
      linear_combination r4737
    have ha5 : rho 17310 * (1 - rho 17308) = rho 17305 - rho 17306 - rho 17307 := by
      linear_combination r4738
    have haddx :
        rho 17309 * (1 + 3021 * (rho 17304 * seg16AccX136 rho) * (rho 17303 * seg16AccY136 rho)) =
          rho 17304 * seg16AccX136 rho + rho 17303 * seg16AccY136 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17310 * (1 - 3021 * (rho 17304 * seg16AccX136 rho) * (rho 17303 * seg16AccY136 rho)) =
          (-1) * (rho 17304 * seg16AccX136 rho) - rho 17303 * seg16AccY136 rho +
            (seg16AccY136 rho - seg16AccX136 rho * (-1)) * (rho 17303 + rho 17304) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17310 * (1 - rho 17308) = rho 17305 - rho 17306 - rho 17307 := ha5
        _ = (-1) * rho 17306 - rho 17307 + (seg16AccY136 rho - seg16AccX136 rho * (-1)) * (rho 17303 + rho 17304) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX137 rho = seg16AccX136 rho - Bool.toZMod bit * (seg16AccX136 rho - rho 17309) := by
      have hd : rho 17311 = Bool.toZMod bit * (rho 17309 - seg16AccX136 rho) := by
        rw [← hbit, seg16LadderFlatX136_eq]
        unfold seg16LadderFlatX136
        linear_combination -r4739
      unfold seg16AccX137
      linear_combination hd
    have hsely : seg16AccY137 rho = seg16AccY136 rho - Bool.toZMod bit * (seg16AccY136 rho - rho 17310) := by
      have hd : rho 17312 = Bool.toZMod bit * (rho 17310 - seg16AccY136 rho) := by
        rw [← hbit, seg16LadderFlatY136_eq]
        unfold seg16LadderFlatY136
        linear_combination -r4740
      unfold seg16AccY137
      linear_combination hd
    have hd0 : rho 17303 * rho 17304 = rho 17313 := by linear_combination r4741
    have hd1 : rho 17303 * rho 17303 = rho 17314 := by linear_combination r4742
    have hd2 : rho 17304 * rho 17304 = rho 17315 := by linear_combination r4743
    have hd3 : rho 17316 * (rho 17304 * rho 17304 + rho 17303 * rho 17303 * (-1)) = 2 * (rho 17303 * rho 17304) := by
      rw [hd0, hd1, hd2]
      linear_combination r4744
    have hd4 : rho 17317 * (2 - (rho 17304 * rho 17304 + rho 17303 * rho 17303 * (-1))) = rho 17304 * rho 17304 - rho 17303 * rho 17303 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4745
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX136 rho : Seg16.F), (seg16AccY136 rho : Seg16.F)⟩
      ⟨(rho 17303 : Seg16.F), (rho 17304 : Seg16.F)⟩
      ⟨(rho 17309 : Seg16.F), (rho 17310 : Seg16.F)⟩
      ⟨(seg16AccX137 rho : Seg16.F), (seg16AccY137 rho : Seg16.F)⟩
      ⟨(rho 17316 : Seg16.F), (rho 17317 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung136

theorem seg16_rung137 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15429 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX137 rho : Seg16.F), (seg16AccY137 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17316 : Seg16.F), (rho 17317 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX137 rho : Seg16.F), (seg16AccY137 rho : Seg16.F)⟩
        ⟨(rho 17316 : Seg16.F), (rho 17317 : Seg16.F)⟩
        ⟨(seg16AccX138 rho : Seg16.F), (seg16AccY138 rho : Seg16.F)⟩
        ⟨(rho 17329 : Seg16.F), (rho 17330 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart59 at p59
  rcases p59 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4746, r4747, r4748, r4749, r4750, r4751, r4752, r4753, r4754, r4755, r4756, r4757, r4758, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow4746 Seg16.relationLc720 Seg16.relationLc720Part0 Seg16.relationLc720Part1 Seg16.relationLc720Part2 Seg16.relationLc720Part3 Seg16.relationLc720Part4 Seg16.relationLc720Part5 Seg16.relationLc720Part6 Seg16.relationLc720Part7 Seg16.relationLc720Part8 at r4746
  unfold Seg16.relationRow4747 Seg16.relationLc721 Seg16.relationLc721Part0 Seg16.relationLc721Part1 Seg16.relationLc721Part2 Seg16.relationLc721Part3 Seg16.relationLc721Part4 at r4747
  unfold Seg16.relationRow4748 Seg16.relationLc722 Seg16.relationLc722Part0 Seg16.relationLc722Part1 Seg16.relationLc722Part2 Seg16.relationLc722Part3 Seg16.relationLc722Part4 at r4748
  unfold Seg16.relationRow4749 at r4749
  unfold Seg16.relationRow4750 at r4750
  unfold Seg16.relationRow4751 at r4751
  unfold Seg16.relationRow4752 Seg16.relationLc723 Seg16.relationLc723Part0 Seg16.relationLc723Part1 Seg16.relationLc723Part2 Seg16.relationLc723Part3 Seg16.relationLc723Part4 at r4752
  unfold Seg16.relationRow4753 Seg16.relationLc724 Seg16.relationLc724Part0 Seg16.relationLc724Part1 Seg16.relationLc724Part2 Seg16.relationLc724Part3 Seg16.relationLc724Part4 at r4753
  unfold Seg16.relationRow4754 at r4754
  unfold Seg16.relationRow4755 at r4755
  unfold Seg16.relationRow4756 at r4756
  unfold Seg16.relationRow4757 at r4757
  unfold Seg16.relationRow4758 at r4758
  have hrung137 (bit : Bool) (hbit : rho 15429 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX137 rho : Seg16.F), (seg16AccY137 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17316 : Seg16.F), (rho 17317 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX137 rho : Seg16.F), (seg16AccY137 rho : Seg16.F)⟩
        ⟨(rho 17316 : Seg16.F), (rho 17317 : Seg16.F)⟩
        ⟨(seg16AccX138 rho : Seg16.F), (seg16AccY138 rho : Seg16.F)⟩
        ⟨(rho 17329 : Seg16.F), (rho 17330 : Seg16.F)⟩ := by
    have ha0 : (rho 17316 + rho 17317) * (seg16AccX137 rho + seg16AccY137 rho) = rho 17318 := by
      rw [seg16LadderFlatX137_eq, seg16LadderFlatY137_eq]
      unfold seg16LadderFlatX137 seg16LadderFlatY137
      linear_combination r4746
    have ha1 : rho 17317 * seg16AccX137 rho = rho 17319 := by
      rw [seg16LadderFlatX137_eq]
      unfold seg16LadderFlatX137
      linear_combination r4747
    have ha2 : rho 17316 * seg16AccY137 rho = rho 17320 := by
      rw [seg16LadderFlatY137_eq]
      unfold seg16LadderFlatY137
      linear_combination r4748
    have ha3 : 3021 * rho 17319 * rho 17320 = rho 17321 := by
      linear_combination r4749
    have ha4 : rho 17322 * (1 + rho 17321) = rho 17319 + rho 17320 := by
      linear_combination r4750
    have ha5 : rho 17323 * (1 - rho 17321) = rho 17318 - rho 17319 - rho 17320 := by
      linear_combination r4751
    have haddx :
        rho 17322 * (1 + 3021 * (rho 17317 * seg16AccX137 rho) * (rho 17316 * seg16AccY137 rho)) =
          rho 17317 * seg16AccX137 rho + rho 17316 * seg16AccY137 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17323 * (1 - 3021 * (rho 17317 * seg16AccX137 rho) * (rho 17316 * seg16AccY137 rho)) =
          (-1) * (rho 17317 * seg16AccX137 rho) - rho 17316 * seg16AccY137 rho +
            (seg16AccY137 rho - seg16AccX137 rho * (-1)) * (rho 17316 + rho 17317) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17323 * (1 - rho 17321) = rho 17318 - rho 17319 - rho 17320 := ha5
        _ = (-1) * rho 17319 - rho 17320 + (seg16AccY137 rho - seg16AccX137 rho * (-1)) * (rho 17316 + rho 17317) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX138 rho = seg16AccX137 rho - Bool.toZMod bit * (seg16AccX137 rho - rho 17322) := by
      have hd : rho 17324 = Bool.toZMod bit * (rho 17322 - seg16AccX137 rho) := by
        rw [← hbit, seg16LadderFlatX137_eq]
        unfold seg16LadderFlatX137
        linear_combination -r4752
      unfold seg16AccX138
      linear_combination hd
    have hsely : seg16AccY138 rho = seg16AccY137 rho - Bool.toZMod bit * (seg16AccY137 rho - rho 17323) := by
      have hd : rho 17325 = Bool.toZMod bit * (rho 17323 - seg16AccY137 rho) := by
        rw [← hbit, seg16LadderFlatY137_eq]
        unfold seg16LadderFlatY137
        linear_combination -r4753
      unfold seg16AccY138
      linear_combination hd
    have hd0 : rho 17316 * rho 17317 = rho 17326 := by linear_combination r4754
    have hd1 : rho 17316 * rho 17316 = rho 17327 := by linear_combination r4755
    have hd2 : rho 17317 * rho 17317 = rho 17328 := by linear_combination r4756
    have hd3 : rho 17329 * (rho 17317 * rho 17317 + rho 17316 * rho 17316 * (-1)) = 2 * (rho 17316 * rho 17317) := by
      rw [hd0, hd1, hd2]
      linear_combination r4757
    have hd4 : rho 17330 * (2 - (rho 17317 * rho 17317 + rho 17316 * rho 17316 * (-1))) = rho 17317 * rho 17317 - rho 17316 * rho 17316 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4758
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX137 rho : Seg16.F), (seg16AccY137 rho : Seg16.F)⟩
      ⟨(rho 17316 : Seg16.F), (rho 17317 : Seg16.F)⟩
      ⟨(rho 17322 : Seg16.F), (rho 17323 : Seg16.F)⟩
      ⟨(seg16AccX138 rho : Seg16.F), (seg16AccY138 rho : Seg16.F)⟩
      ⟨(rho 17329 : Seg16.F), (rho 17330 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung137

theorem seg16_rung138 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15430 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX138 rho : Seg16.F), (seg16AccY138 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17329 : Seg16.F), (rho 17330 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX138 rho : Seg16.F), (seg16AccY138 rho : Seg16.F)⟩
        ⟨(rho 17329 : Seg16.F), (rho 17330 : Seg16.F)⟩
        ⟨(seg16AccX139 rho : Seg16.F), (seg16AccY139 rho : Seg16.F)⟩
        ⟨(rho 17342 : Seg16.F), (rho 17343 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart59 at p59
  rcases p59 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4759, r4760, r4761, r4762, r4763, r4764, r4765, r4766, r4767, r4768, r4769, r4770, r4771, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow4759 Seg16.relationLc725 Seg16.relationLc725Part0 Seg16.relationLc725Part1 Seg16.relationLc725Part2 Seg16.relationLc725Part3 Seg16.relationLc725Part4 Seg16.relationLc725Part5 Seg16.relationLc725Part6 Seg16.relationLc725Part7 Seg16.relationLc725Part8 at r4759
  unfold Seg16.relationRow4760 Seg16.relationLc726 Seg16.relationLc726Part0 Seg16.relationLc726Part1 Seg16.relationLc726Part2 Seg16.relationLc726Part3 Seg16.relationLc726Part4 at r4760
  unfold Seg16.relationRow4761 Seg16.relationLc727 Seg16.relationLc727Part0 Seg16.relationLc727Part1 Seg16.relationLc727Part2 Seg16.relationLc727Part3 Seg16.relationLc727Part4 at r4761
  unfold Seg16.relationRow4762 at r4762
  unfold Seg16.relationRow4763 at r4763
  unfold Seg16.relationRow4764 at r4764
  unfold Seg16.relationRow4765 Seg16.relationLc728 Seg16.relationLc728Part0 Seg16.relationLc728Part1 Seg16.relationLc728Part2 Seg16.relationLc728Part3 Seg16.relationLc728Part4 at r4765
  unfold Seg16.relationRow4766 Seg16.relationLc729 Seg16.relationLc729Part0 Seg16.relationLc729Part1 Seg16.relationLc729Part2 Seg16.relationLc729Part3 Seg16.relationLc729Part4 at r4766
  unfold Seg16.relationRow4767 at r4767
  unfold Seg16.relationRow4768 at r4768
  unfold Seg16.relationRow4769 at r4769
  unfold Seg16.relationRow4770 at r4770
  unfold Seg16.relationRow4771 at r4771
  have hrung138 (bit : Bool) (hbit : rho 15430 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX138 rho : Seg16.F), (seg16AccY138 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17329 : Seg16.F), (rho 17330 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX138 rho : Seg16.F), (seg16AccY138 rho : Seg16.F)⟩
        ⟨(rho 17329 : Seg16.F), (rho 17330 : Seg16.F)⟩
        ⟨(seg16AccX139 rho : Seg16.F), (seg16AccY139 rho : Seg16.F)⟩
        ⟨(rho 17342 : Seg16.F), (rho 17343 : Seg16.F)⟩ := by
    have ha0 : (rho 17329 + rho 17330) * (seg16AccX138 rho + seg16AccY138 rho) = rho 17331 := by
      rw [seg16LadderFlatX138_eq, seg16LadderFlatY138_eq]
      unfold seg16LadderFlatX138 seg16LadderFlatY138
      linear_combination r4759
    have ha1 : rho 17330 * seg16AccX138 rho = rho 17332 := by
      rw [seg16LadderFlatX138_eq]
      unfold seg16LadderFlatX138
      linear_combination r4760
    have ha2 : rho 17329 * seg16AccY138 rho = rho 17333 := by
      rw [seg16LadderFlatY138_eq]
      unfold seg16LadderFlatY138
      linear_combination r4761
    have ha3 : 3021 * rho 17332 * rho 17333 = rho 17334 := by
      linear_combination r4762
    have ha4 : rho 17335 * (1 + rho 17334) = rho 17332 + rho 17333 := by
      linear_combination r4763
    have ha5 : rho 17336 * (1 - rho 17334) = rho 17331 - rho 17332 - rho 17333 := by
      linear_combination r4764
    have haddx :
        rho 17335 * (1 + 3021 * (rho 17330 * seg16AccX138 rho) * (rho 17329 * seg16AccY138 rho)) =
          rho 17330 * seg16AccX138 rho + rho 17329 * seg16AccY138 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17336 * (1 - 3021 * (rho 17330 * seg16AccX138 rho) * (rho 17329 * seg16AccY138 rho)) =
          (-1) * (rho 17330 * seg16AccX138 rho) - rho 17329 * seg16AccY138 rho +
            (seg16AccY138 rho - seg16AccX138 rho * (-1)) * (rho 17329 + rho 17330) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17336 * (1 - rho 17334) = rho 17331 - rho 17332 - rho 17333 := ha5
        _ = (-1) * rho 17332 - rho 17333 + (seg16AccY138 rho - seg16AccX138 rho * (-1)) * (rho 17329 + rho 17330) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX139 rho = seg16AccX138 rho - Bool.toZMod bit * (seg16AccX138 rho - rho 17335) := by
      have hd : rho 17337 = Bool.toZMod bit * (rho 17335 - seg16AccX138 rho) := by
        rw [← hbit, seg16LadderFlatX138_eq]
        unfold seg16LadderFlatX138
        linear_combination -r4765
      unfold seg16AccX139
      linear_combination hd
    have hsely : seg16AccY139 rho = seg16AccY138 rho - Bool.toZMod bit * (seg16AccY138 rho - rho 17336) := by
      have hd : rho 17338 = Bool.toZMod bit * (rho 17336 - seg16AccY138 rho) := by
        rw [← hbit, seg16LadderFlatY138_eq]
        unfold seg16LadderFlatY138
        linear_combination -r4766
      unfold seg16AccY139
      linear_combination hd
    have hd0 : rho 17329 * rho 17330 = rho 17339 := by linear_combination r4767
    have hd1 : rho 17329 * rho 17329 = rho 17340 := by linear_combination r4768
    have hd2 : rho 17330 * rho 17330 = rho 17341 := by linear_combination r4769
    have hd3 : rho 17342 * (rho 17330 * rho 17330 + rho 17329 * rho 17329 * (-1)) = 2 * (rho 17329 * rho 17330) := by
      rw [hd0, hd1, hd2]
      linear_combination r4770
    have hd4 : rho 17343 * (2 - (rho 17330 * rho 17330 + rho 17329 * rho 17329 * (-1))) = rho 17330 * rho 17330 - rho 17329 * rho 17329 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4771
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX138 rho : Seg16.F), (seg16AccY138 rho : Seg16.F)⟩
      ⟨(rho 17329 : Seg16.F), (rho 17330 : Seg16.F)⟩
      ⟨(rho 17335 : Seg16.F), (rho 17336 : Seg16.F)⟩
      ⟨(seg16AccX139 rho : Seg16.F), (seg16AccY139 rho : Seg16.F)⟩
      ⟨(rho 17342 : Seg16.F), (rho 17343 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung138

theorem seg16_rung139 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15431 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX139 rho : Seg16.F), (seg16AccY139 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17342 : Seg16.F), (rho 17343 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX139 rho : Seg16.F), (seg16AccY139 rho : Seg16.F)⟩
        ⟨(rho 17342 : Seg16.F), (rho 17343 : Seg16.F)⟩
        ⟨(seg16AccX140 rho : Seg16.F), (seg16AccY140 rho : Seg16.F)⟩
        ⟨(rho 17355 : Seg16.F), (rho 17356 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart59 at p59
  rcases p59 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4772, r4773, r4774, r4775, r4776, r4777, r4778, r4779, r4780, r4781, r4782, r4783, r4784, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow4772 Seg16.relationLc730 Seg16.relationLc730Part0 Seg16.relationLc730Part1 Seg16.relationLc730Part2 Seg16.relationLc730Part3 Seg16.relationLc730Part4 Seg16.relationLc730Part5 Seg16.relationLc730Part6 Seg16.relationLc730Part7 Seg16.relationLc730Part8 at r4772
  unfold Seg16.relationRow4773 Seg16.relationLc731 Seg16.relationLc731Part0 Seg16.relationLc731Part1 Seg16.relationLc731Part2 Seg16.relationLc731Part3 Seg16.relationLc731Part4 at r4773
  unfold Seg16.relationRow4774 Seg16.relationLc732 Seg16.relationLc732Part0 Seg16.relationLc732Part1 Seg16.relationLc732Part2 Seg16.relationLc732Part3 Seg16.relationLc732Part4 at r4774
  unfold Seg16.relationRow4775 at r4775
  unfold Seg16.relationRow4776 at r4776
  unfold Seg16.relationRow4777 at r4777
  unfold Seg16.relationRow4778 Seg16.relationLc733 Seg16.relationLc733Part0 Seg16.relationLc733Part1 Seg16.relationLc733Part2 Seg16.relationLc733Part3 Seg16.relationLc733Part4 at r4778
  unfold Seg16.relationRow4779 Seg16.relationLc734 Seg16.relationLc734Part0 Seg16.relationLc734Part1 Seg16.relationLc734Part2 Seg16.relationLc734Part3 Seg16.relationLc734Part4 at r4779
  unfold Seg16.relationRow4780 at r4780
  unfold Seg16.relationRow4781 at r4781
  unfold Seg16.relationRow4782 at r4782
  unfold Seg16.relationRow4783 at r4783
  unfold Seg16.relationRow4784 at r4784
  have hrung139 (bit : Bool) (hbit : rho 15431 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX139 rho : Seg16.F), (seg16AccY139 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17342 : Seg16.F), (rho 17343 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX139 rho : Seg16.F), (seg16AccY139 rho : Seg16.F)⟩
        ⟨(rho 17342 : Seg16.F), (rho 17343 : Seg16.F)⟩
        ⟨(seg16AccX140 rho : Seg16.F), (seg16AccY140 rho : Seg16.F)⟩
        ⟨(rho 17355 : Seg16.F), (rho 17356 : Seg16.F)⟩ := by
    have ha0 : (rho 17342 + rho 17343) * (seg16AccX139 rho + seg16AccY139 rho) = rho 17344 := by
      rw [seg16LadderFlatX139_eq, seg16LadderFlatY139_eq]
      unfold seg16LadderFlatX139 seg16LadderFlatY139
      linear_combination r4772
    have ha1 : rho 17343 * seg16AccX139 rho = rho 17345 := by
      rw [seg16LadderFlatX139_eq]
      unfold seg16LadderFlatX139
      linear_combination r4773
    have ha2 : rho 17342 * seg16AccY139 rho = rho 17346 := by
      rw [seg16LadderFlatY139_eq]
      unfold seg16LadderFlatY139
      linear_combination r4774
    have ha3 : 3021 * rho 17345 * rho 17346 = rho 17347 := by
      linear_combination r4775
    have ha4 : rho 17348 * (1 + rho 17347) = rho 17345 + rho 17346 := by
      linear_combination r4776
    have ha5 : rho 17349 * (1 - rho 17347) = rho 17344 - rho 17345 - rho 17346 := by
      linear_combination r4777
    have haddx :
        rho 17348 * (1 + 3021 * (rho 17343 * seg16AccX139 rho) * (rho 17342 * seg16AccY139 rho)) =
          rho 17343 * seg16AccX139 rho + rho 17342 * seg16AccY139 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17349 * (1 - 3021 * (rho 17343 * seg16AccX139 rho) * (rho 17342 * seg16AccY139 rho)) =
          (-1) * (rho 17343 * seg16AccX139 rho) - rho 17342 * seg16AccY139 rho +
            (seg16AccY139 rho - seg16AccX139 rho * (-1)) * (rho 17342 + rho 17343) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17349 * (1 - rho 17347) = rho 17344 - rho 17345 - rho 17346 := ha5
        _ = (-1) * rho 17345 - rho 17346 + (seg16AccY139 rho - seg16AccX139 rho * (-1)) * (rho 17342 + rho 17343) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX140 rho = seg16AccX139 rho - Bool.toZMod bit * (seg16AccX139 rho - rho 17348) := by
      have hd : rho 17350 = Bool.toZMod bit * (rho 17348 - seg16AccX139 rho) := by
        rw [← hbit, seg16LadderFlatX139_eq]
        unfold seg16LadderFlatX139
        linear_combination -r4778
      unfold seg16AccX140
      linear_combination hd
    have hsely : seg16AccY140 rho = seg16AccY139 rho - Bool.toZMod bit * (seg16AccY139 rho - rho 17349) := by
      have hd : rho 17351 = Bool.toZMod bit * (rho 17349 - seg16AccY139 rho) := by
        rw [← hbit, seg16LadderFlatY139_eq]
        unfold seg16LadderFlatY139
        linear_combination -r4779
      unfold seg16AccY140
      linear_combination hd
    have hd0 : rho 17342 * rho 17343 = rho 17352 := by linear_combination r4780
    have hd1 : rho 17342 * rho 17342 = rho 17353 := by linear_combination r4781
    have hd2 : rho 17343 * rho 17343 = rho 17354 := by linear_combination r4782
    have hd3 : rho 17355 * (rho 17343 * rho 17343 + rho 17342 * rho 17342 * (-1)) = 2 * (rho 17342 * rho 17343) := by
      rw [hd0, hd1, hd2]
      linear_combination r4783
    have hd4 : rho 17356 * (2 - (rho 17343 * rho 17343 + rho 17342 * rho 17342 * (-1))) = rho 17343 * rho 17343 - rho 17342 * rho 17342 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4784
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX139 rho : Seg16.F), (seg16AccY139 rho : Seg16.F)⟩
      ⟨(rho 17342 : Seg16.F), (rho 17343 : Seg16.F)⟩
      ⟨(rho 17348 : Seg16.F), (rho 17349 : Seg16.F)⟩
      ⟨(seg16AccX140 rho : Seg16.F), (seg16AccY140 rho : Seg16.F)⟩
      ⟨(rho 17355 : Seg16.F), (rho 17356 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung139

theorem seg16_rung140 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15432 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX140 rho : Seg16.F), (seg16AccY140 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17355 : Seg16.F), (rho 17356 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX140 rho : Seg16.F), (seg16AccY140 rho : Seg16.F)⟩
        ⟨(rho 17355 : Seg16.F), (rho 17356 : Seg16.F)⟩
        ⟨(seg16AccX141 rho : Seg16.F), (seg16AccY141 rho : Seg16.F)⟩
        ⟨(rho 17368 : Seg16.F), (rho 17369 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart59 at p59
  rcases p59 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4785, r4786, r4787, r4788, r4789, r4790, r4791, r4792, r4793, r4794, r4795, r4796, r4797, _, _⟩
  unfold Seg16.relationRow4785 Seg16.relationLc735 Seg16.relationLc735Part0 Seg16.relationLc735Part1 Seg16.relationLc735Part2 Seg16.relationLc735Part3 Seg16.relationLc735Part4 Seg16.relationLc735Part5 Seg16.relationLc735Part6 Seg16.relationLc735Part7 Seg16.relationLc735Part8 at r4785
  unfold Seg16.relationRow4786 Seg16.relationLc736 Seg16.relationLc736Part0 Seg16.relationLc736Part1 Seg16.relationLc736Part2 Seg16.relationLc736Part3 Seg16.relationLc736Part4 at r4786
  unfold Seg16.relationRow4787 Seg16.relationLc737 Seg16.relationLc737Part0 Seg16.relationLc737Part1 Seg16.relationLc737Part2 Seg16.relationLc737Part3 Seg16.relationLc737Part4 at r4787
  unfold Seg16.relationRow4788 at r4788
  unfold Seg16.relationRow4789 at r4789
  unfold Seg16.relationRow4790 at r4790
  unfold Seg16.relationRow4791 Seg16.relationLc738 Seg16.relationLc738Part0 Seg16.relationLc738Part1 Seg16.relationLc738Part2 Seg16.relationLc738Part3 Seg16.relationLc738Part4 at r4791
  unfold Seg16.relationRow4792 Seg16.relationLc739 Seg16.relationLc739Part0 Seg16.relationLc739Part1 Seg16.relationLc739Part2 Seg16.relationLc739Part3 Seg16.relationLc739Part4 at r4792
  unfold Seg16.relationRow4793 at r4793
  unfold Seg16.relationRow4794 at r4794
  unfold Seg16.relationRow4795 at r4795
  unfold Seg16.relationRow4796 at r4796
  unfold Seg16.relationRow4797 at r4797
  have hrung140 (bit : Bool) (hbit : rho 15432 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX140 rho : Seg16.F), (seg16AccY140 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17355 : Seg16.F), (rho 17356 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX140 rho : Seg16.F), (seg16AccY140 rho : Seg16.F)⟩
        ⟨(rho 17355 : Seg16.F), (rho 17356 : Seg16.F)⟩
        ⟨(seg16AccX141 rho : Seg16.F), (seg16AccY141 rho : Seg16.F)⟩
        ⟨(rho 17368 : Seg16.F), (rho 17369 : Seg16.F)⟩ := by
    have ha0 : (rho 17355 + rho 17356) * (seg16AccX140 rho + seg16AccY140 rho) = rho 17357 := by
      rw [seg16LadderFlatX140_eq, seg16LadderFlatY140_eq]
      unfold seg16LadderFlatX140 seg16LadderFlatY140
      linear_combination r4785
    have ha1 : rho 17356 * seg16AccX140 rho = rho 17358 := by
      rw [seg16LadderFlatX140_eq]
      unfold seg16LadderFlatX140
      linear_combination r4786
    have ha2 : rho 17355 * seg16AccY140 rho = rho 17359 := by
      rw [seg16LadderFlatY140_eq]
      unfold seg16LadderFlatY140
      linear_combination r4787
    have ha3 : 3021 * rho 17358 * rho 17359 = rho 17360 := by
      linear_combination r4788
    have ha4 : rho 17361 * (1 + rho 17360) = rho 17358 + rho 17359 := by
      linear_combination r4789
    have ha5 : rho 17362 * (1 - rho 17360) = rho 17357 - rho 17358 - rho 17359 := by
      linear_combination r4790
    have haddx :
        rho 17361 * (1 + 3021 * (rho 17356 * seg16AccX140 rho) * (rho 17355 * seg16AccY140 rho)) =
          rho 17356 * seg16AccX140 rho + rho 17355 * seg16AccY140 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17362 * (1 - 3021 * (rho 17356 * seg16AccX140 rho) * (rho 17355 * seg16AccY140 rho)) =
          (-1) * (rho 17356 * seg16AccX140 rho) - rho 17355 * seg16AccY140 rho +
            (seg16AccY140 rho - seg16AccX140 rho * (-1)) * (rho 17355 + rho 17356) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17362 * (1 - rho 17360) = rho 17357 - rho 17358 - rho 17359 := ha5
        _ = (-1) * rho 17358 - rho 17359 + (seg16AccY140 rho - seg16AccX140 rho * (-1)) * (rho 17355 + rho 17356) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX141 rho = seg16AccX140 rho - Bool.toZMod bit * (seg16AccX140 rho - rho 17361) := by
      have hd : rho 17363 = Bool.toZMod bit * (rho 17361 - seg16AccX140 rho) := by
        rw [← hbit, seg16LadderFlatX140_eq]
        unfold seg16LadderFlatX140
        linear_combination -r4791
      unfold seg16AccX141
      linear_combination hd
    have hsely : seg16AccY141 rho = seg16AccY140 rho - Bool.toZMod bit * (seg16AccY140 rho - rho 17362) := by
      have hd : rho 17364 = Bool.toZMod bit * (rho 17362 - seg16AccY140 rho) := by
        rw [← hbit, seg16LadderFlatY140_eq]
        unfold seg16LadderFlatY140
        linear_combination -r4792
      unfold seg16AccY141
      linear_combination hd
    have hd0 : rho 17355 * rho 17356 = rho 17365 := by linear_combination r4793
    have hd1 : rho 17355 * rho 17355 = rho 17366 := by linear_combination r4794
    have hd2 : rho 17356 * rho 17356 = rho 17367 := by linear_combination r4795
    have hd3 : rho 17368 * (rho 17356 * rho 17356 + rho 17355 * rho 17355 * (-1)) = 2 * (rho 17355 * rho 17356) := by
      rw [hd0, hd1, hd2]
      linear_combination r4796
    have hd4 : rho 17369 * (2 - (rho 17356 * rho 17356 + rho 17355 * rho 17355 * (-1))) = rho 17356 * rho 17356 - rho 17355 * rho 17355 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4797
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX140 rho : Seg16.F), (seg16AccY140 rho : Seg16.F)⟩
      ⟨(rho 17355 : Seg16.F), (rho 17356 : Seg16.F)⟩
      ⟨(rho 17361 : Seg16.F), (rho 17362 : Seg16.F)⟩
      ⟨(seg16AccX141 rho : Seg16.F), (seg16AccY141 rho : Seg16.F)⟩
      ⟨(rho 17368 : Seg16.F), (rho 17369 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung140

theorem seg16_rung141 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15433 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX141 rho : Seg16.F), (seg16AccY141 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17368 : Seg16.F), (rho 17369 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX141 rho : Seg16.F), (seg16AccY141 rho : Seg16.F)⟩
        ⟨(rho 17368 : Seg16.F), (rho 17369 : Seg16.F)⟩
        ⟨(seg16AccX142 rho : Seg16.F), (seg16AccY142 rho : Seg16.F)⟩
        ⟨(rho 17381 : Seg16.F), (rho 17382 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart59 at p59
  rcases p59 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4798, r4799⟩
  unfold Seg16.relationPart60 at p60
  rcases p60 with ⟨r4800, r4801, r4802, r4803, r4804, r4805, r4806, r4807, r4808, r4809, r4810, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow4798 Seg16.relationLc740 Seg16.relationLc740Part0 Seg16.relationLc740Part1 Seg16.relationLc740Part2 Seg16.relationLc740Part3 Seg16.relationLc740Part4 Seg16.relationLc740Part5 Seg16.relationLc740Part6 Seg16.relationLc740Part7 Seg16.relationLc740Part8 at r4798
  unfold Seg16.relationRow4799 Seg16.relationLc741 Seg16.relationLc741Part0 Seg16.relationLc741Part1 Seg16.relationLc741Part2 Seg16.relationLc741Part3 Seg16.relationLc741Part4 at r4799
  unfold Seg16.relationRow4800 Seg16.relationLc742 Seg16.relationLc742Part0 Seg16.relationLc742Part1 Seg16.relationLc742Part2 Seg16.relationLc742Part3 Seg16.relationLc742Part4 at r4800
  unfold Seg16.relationRow4801 at r4801
  unfold Seg16.relationRow4802 at r4802
  unfold Seg16.relationRow4803 at r4803
  unfold Seg16.relationRow4804 Seg16.relationLc743 Seg16.relationLc743Part0 Seg16.relationLc743Part1 Seg16.relationLc743Part2 Seg16.relationLc743Part3 Seg16.relationLc743Part4 at r4804
  unfold Seg16.relationRow4805 Seg16.relationLc744 Seg16.relationLc744Part0 Seg16.relationLc744Part1 Seg16.relationLc744Part2 Seg16.relationLc744Part3 Seg16.relationLc744Part4 at r4805
  unfold Seg16.relationRow4806 at r4806
  unfold Seg16.relationRow4807 at r4807
  unfold Seg16.relationRow4808 at r4808
  unfold Seg16.relationRow4809 at r4809
  unfold Seg16.relationRow4810 at r4810
  have hrung141 (bit : Bool) (hbit : rho 15433 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX141 rho : Seg16.F), (seg16AccY141 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17368 : Seg16.F), (rho 17369 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX141 rho : Seg16.F), (seg16AccY141 rho : Seg16.F)⟩
        ⟨(rho 17368 : Seg16.F), (rho 17369 : Seg16.F)⟩
        ⟨(seg16AccX142 rho : Seg16.F), (seg16AccY142 rho : Seg16.F)⟩
        ⟨(rho 17381 : Seg16.F), (rho 17382 : Seg16.F)⟩ := by
    have ha0 : (rho 17368 + rho 17369) * (seg16AccX141 rho + seg16AccY141 rho) = rho 17370 := by
      rw [seg16LadderFlatX141_eq, seg16LadderFlatY141_eq]
      unfold seg16LadderFlatX141 seg16LadderFlatY141
      linear_combination r4798
    have ha1 : rho 17369 * seg16AccX141 rho = rho 17371 := by
      rw [seg16LadderFlatX141_eq]
      unfold seg16LadderFlatX141
      linear_combination r4799
    have ha2 : rho 17368 * seg16AccY141 rho = rho 17372 := by
      rw [seg16LadderFlatY141_eq]
      unfold seg16LadderFlatY141
      linear_combination r4800
    have ha3 : 3021 * rho 17371 * rho 17372 = rho 17373 := by
      linear_combination r4801
    have ha4 : rho 17374 * (1 + rho 17373) = rho 17371 + rho 17372 := by
      linear_combination r4802
    have ha5 : rho 17375 * (1 - rho 17373) = rho 17370 - rho 17371 - rho 17372 := by
      linear_combination r4803
    have haddx :
        rho 17374 * (1 + 3021 * (rho 17369 * seg16AccX141 rho) * (rho 17368 * seg16AccY141 rho)) =
          rho 17369 * seg16AccX141 rho + rho 17368 * seg16AccY141 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17375 * (1 - 3021 * (rho 17369 * seg16AccX141 rho) * (rho 17368 * seg16AccY141 rho)) =
          (-1) * (rho 17369 * seg16AccX141 rho) - rho 17368 * seg16AccY141 rho +
            (seg16AccY141 rho - seg16AccX141 rho * (-1)) * (rho 17368 + rho 17369) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17375 * (1 - rho 17373) = rho 17370 - rho 17371 - rho 17372 := ha5
        _ = (-1) * rho 17371 - rho 17372 + (seg16AccY141 rho - seg16AccX141 rho * (-1)) * (rho 17368 + rho 17369) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX142 rho = seg16AccX141 rho - Bool.toZMod bit * (seg16AccX141 rho - rho 17374) := by
      have hd : rho 17376 = Bool.toZMod bit * (rho 17374 - seg16AccX141 rho) := by
        rw [← hbit, seg16LadderFlatX141_eq]
        unfold seg16LadderFlatX141
        linear_combination -r4804
      unfold seg16AccX142
      linear_combination hd
    have hsely : seg16AccY142 rho = seg16AccY141 rho - Bool.toZMod bit * (seg16AccY141 rho - rho 17375) := by
      have hd : rho 17377 = Bool.toZMod bit * (rho 17375 - seg16AccY141 rho) := by
        rw [← hbit, seg16LadderFlatY141_eq]
        unfold seg16LadderFlatY141
        linear_combination -r4805
      unfold seg16AccY142
      linear_combination hd
    have hd0 : rho 17368 * rho 17369 = rho 17378 := by linear_combination r4806
    have hd1 : rho 17368 * rho 17368 = rho 17379 := by linear_combination r4807
    have hd2 : rho 17369 * rho 17369 = rho 17380 := by linear_combination r4808
    have hd3 : rho 17381 * (rho 17369 * rho 17369 + rho 17368 * rho 17368 * (-1)) = 2 * (rho 17368 * rho 17369) := by
      rw [hd0, hd1, hd2]
      linear_combination r4809
    have hd4 : rho 17382 * (2 - (rho 17369 * rho 17369 + rho 17368 * rho 17368 * (-1))) = rho 17369 * rho 17369 - rho 17368 * rho 17368 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4810
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX141 rho : Seg16.F), (seg16AccY141 rho : Seg16.F)⟩
      ⟨(rho 17368 : Seg16.F), (rho 17369 : Seg16.F)⟩
      ⟨(rho 17374 : Seg16.F), (rho 17375 : Seg16.F)⟩
      ⟨(seg16AccX142 rho : Seg16.F), (seg16AccY142 rho : Seg16.F)⟩
      ⟨(rho 17381 : Seg16.F), (rho 17382 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung141

theorem seg16_rung142 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15434 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX142 rho : Seg16.F), (seg16AccY142 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17381 : Seg16.F), (rho 17382 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX142 rho : Seg16.F), (seg16AccY142 rho : Seg16.F)⟩
        ⟨(rho 17381 : Seg16.F), (rho 17382 : Seg16.F)⟩
        ⟨(seg16AccX143 rho : Seg16.F), (seg16AccY143 rho : Seg16.F)⟩
        ⟨(rho 17394 : Seg16.F), (rho 17395 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart60 at p60
  rcases p60 with ⟨_, _, _, _, _, _, _, _, _, _, _, r4811, r4812, r4813, r4814, r4815, r4816, r4817, r4818, r4819, r4820, r4821, r4822, r4823, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow4811 Seg16.relationLc745 Seg16.relationLc745Part0 Seg16.relationLc745Part1 Seg16.relationLc745Part2 Seg16.relationLc745Part3 Seg16.relationLc745Part4 Seg16.relationLc745Part5 Seg16.relationLc745Part6 Seg16.relationLc745Part7 Seg16.relationLc745Part8 at r4811
  unfold Seg16.relationRow4812 Seg16.relationLc746 Seg16.relationLc746Part0 Seg16.relationLc746Part1 Seg16.relationLc746Part2 Seg16.relationLc746Part3 Seg16.relationLc746Part4 at r4812
  unfold Seg16.relationRow4813 Seg16.relationLc747 Seg16.relationLc747Part0 Seg16.relationLc747Part1 Seg16.relationLc747Part2 Seg16.relationLc747Part3 Seg16.relationLc747Part4 at r4813
  unfold Seg16.relationRow4814 at r4814
  unfold Seg16.relationRow4815 at r4815
  unfold Seg16.relationRow4816 at r4816
  unfold Seg16.relationRow4817 Seg16.relationLc748 Seg16.relationLc748Part0 Seg16.relationLc748Part1 Seg16.relationLc748Part2 Seg16.relationLc748Part3 Seg16.relationLc748Part4 at r4817
  unfold Seg16.relationRow4818 Seg16.relationLc749 Seg16.relationLc749Part0 Seg16.relationLc749Part1 Seg16.relationLc749Part2 Seg16.relationLc749Part3 Seg16.relationLc749Part4 at r4818
  unfold Seg16.relationRow4819 at r4819
  unfold Seg16.relationRow4820 at r4820
  unfold Seg16.relationRow4821 at r4821
  unfold Seg16.relationRow4822 at r4822
  unfold Seg16.relationRow4823 at r4823
  have hrung142 (bit : Bool) (hbit : rho 15434 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX142 rho : Seg16.F), (seg16AccY142 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17381 : Seg16.F), (rho 17382 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX142 rho : Seg16.F), (seg16AccY142 rho : Seg16.F)⟩
        ⟨(rho 17381 : Seg16.F), (rho 17382 : Seg16.F)⟩
        ⟨(seg16AccX143 rho : Seg16.F), (seg16AccY143 rho : Seg16.F)⟩
        ⟨(rho 17394 : Seg16.F), (rho 17395 : Seg16.F)⟩ := by
    have ha0 : (rho 17381 + rho 17382) * (seg16AccX142 rho + seg16AccY142 rho) = rho 17383 := by
      rw [seg16LadderFlatX142_eq, seg16LadderFlatY142_eq]
      unfold seg16LadderFlatX142 seg16LadderFlatY142
      linear_combination r4811
    have ha1 : rho 17382 * seg16AccX142 rho = rho 17384 := by
      rw [seg16LadderFlatX142_eq]
      unfold seg16LadderFlatX142
      linear_combination r4812
    have ha2 : rho 17381 * seg16AccY142 rho = rho 17385 := by
      rw [seg16LadderFlatY142_eq]
      unfold seg16LadderFlatY142
      linear_combination r4813
    have ha3 : 3021 * rho 17384 * rho 17385 = rho 17386 := by
      linear_combination r4814
    have ha4 : rho 17387 * (1 + rho 17386) = rho 17384 + rho 17385 := by
      linear_combination r4815
    have ha5 : rho 17388 * (1 - rho 17386) = rho 17383 - rho 17384 - rho 17385 := by
      linear_combination r4816
    have haddx :
        rho 17387 * (1 + 3021 * (rho 17382 * seg16AccX142 rho) * (rho 17381 * seg16AccY142 rho)) =
          rho 17382 * seg16AccX142 rho + rho 17381 * seg16AccY142 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17388 * (1 - 3021 * (rho 17382 * seg16AccX142 rho) * (rho 17381 * seg16AccY142 rho)) =
          (-1) * (rho 17382 * seg16AccX142 rho) - rho 17381 * seg16AccY142 rho +
            (seg16AccY142 rho - seg16AccX142 rho * (-1)) * (rho 17381 + rho 17382) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17388 * (1 - rho 17386) = rho 17383 - rho 17384 - rho 17385 := ha5
        _ = (-1) * rho 17384 - rho 17385 + (seg16AccY142 rho - seg16AccX142 rho * (-1)) * (rho 17381 + rho 17382) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX143 rho = seg16AccX142 rho - Bool.toZMod bit * (seg16AccX142 rho - rho 17387) := by
      have hd : rho 17389 = Bool.toZMod bit * (rho 17387 - seg16AccX142 rho) := by
        rw [← hbit, seg16LadderFlatX142_eq]
        unfold seg16LadderFlatX142
        linear_combination -r4817
      unfold seg16AccX143
      linear_combination hd
    have hsely : seg16AccY143 rho = seg16AccY142 rho - Bool.toZMod bit * (seg16AccY142 rho - rho 17388) := by
      have hd : rho 17390 = Bool.toZMod bit * (rho 17388 - seg16AccY142 rho) := by
        rw [← hbit, seg16LadderFlatY142_eq]
        unfold seg16LadderFlatY142
        linear_combination -r4818
      unfold seg16AccY143
      linear_combination hd
    have hd0 : rho 17381 * rho 17382 = rho 17391 := by linear_combination r4819
    have hd1 : rho 17381 * rho 17381 = rho 17392 := by linear_combination r4820
    have hd2 : rho 17382 * rho 17382 = rho 17393 := by linear_combination r4821
    have hd3 : rho 17394 * (rho 17382 * rho 17382 + rho 17381 * rho 17381 * (-1)) = 2 * (rho 17381 * rho 17382) := by
      rw [hd0, hd1, hd2]
      linear_combination r4822
    have hd4 : rho 17395 * (2 - (rho 17382 * rho 17382 + rho 17381 * rho 17381 * (-1))) = rho 17382 * rho 17382 - rho 17381 * rho 17381 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4823
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX142 rho : Seg16.F), (seg16AccY142 rho : Seg16.F)⟩
      ⟨(rho 17381 : Seg16.F), (rho 17382 : Seg16.F)⟩
      ⟨(rho 17387 : Seg16.F), (rho 17388 : Seg16.F)⟩
      ⟨(seg16AccX143 rho : Seg16.F), (seg16AccY143 rho : Seg16.F)⟩
      ⟨(rho 17394 : Seg16.F), (rho 17395 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung142

theorem seg16_rung143 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15435 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX143 rho : Seg16.F), (seg16AccY143 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17394 : Seg16.F), (rho 17395 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX143 rho : Seg16.F), (seg16AccY143 rho : Seg16.F)⟩
        ⟨(rho 17394 : Seg16.F), (rho 17395 : Seg16.F)⟩
        ⟨(seg16AccX144 rho : Seg16.F), (seg16AccY144 rho : Seg16.F)⟩
        ⟨(rho 17407 : Seg16.F), (rho 17408 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart60 at p60
  rcases p60 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4824, r4825, r4826, r4827, r4828, r4829, r4830, r4831, r4832, r4833, r4834, r4835, r4836, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow4824 Seg16.relationLc750 Seg16.relationLc750Part0 Seg16.relationLc750Part1 Seg16.relationLc750Part2 Seg16.relationLc750Part3 Seg16.relationLc750Part4 Seg16.relationLc750Part5 Seg16.relationLc750Part6 Seg16.relationLc750Part7 Seg16.relationLc750Part8 at r4824
  unfold Seg16.relationRow4825 Seg16.relationLc751 Seg16.relationLc751Part0 Seg16.relationLc751Part1 Seg16.relationLc751Part2 Seg16.relationLc751Part3 Seg16.relationLc751Part4 at r4825
  unfold Seg16.relationRow4826 Seg16.relationLc752 Seg16.relationLc752Part0 Seg16.relationLc752Part1 Seg16.relationLc752Part2 Seg16.relationLc752Part3 Seg16.relationLc752Part4 at r4826
  unfold Seg16.relationRow4827 at r4827
  unfold Seg16.relationRow4828 at r4828
  unfold Seg16.relationRow4829 at r4829
  unfold Seg16.relationRow4830 Seg16.relationLc753 Seg16.relationLc753Part0 Seg16.relationLc753Part1 Seg16.relationLc753Part2 Seg16.relationLc753Part3 Seg16.relationLc753Part4 at r4830
  unfold Seg16.relationRow4831 Seg16.relationLc754 Seg16.relationLc754Part0 Seg16.relationLc754Part1 Seg16.relationLc754Part2 Seg16.relationLc754Part3 Seg16.relationLc754Part4 at r4831
  unfold Seg16.relationRow4832 at r4832
  unfold Seg16.relationRow4833 at r4833
  unfold Seg16.relationRow4834 at r4834
  unfold Seg16.relationRow4835 at r4835
  unfold Seg16.relationRow4836 at r4836
  have hrung143 (bit : Bool) (hbit : rho 15435 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX143 rho : Seg16.F), (seg16AccY143 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17394 : Seg16.F), (rho 17395 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX143 rho : Seg16.F), (seg16AccY143 rho : Seg16.F)⟩
        ⟨(rho 17394 : Seg16.F), (rho 17395 : Seg16.F)⟩
        ⟨(seg16AccX144 rho : Seg16.F), (seg16AccY144 rho : Seg16.F)⟩
        ⟨(rho 17407 : Seg16.F), (rho 17408 : Seg16.F)⟩ := by
    have ha0 : (rho 17394 + rho 17395) * (seg16AccX143 rho + seg16AccY143 rho) = rho 17396 := by
      rw [seg16LadderFlatX143_eq, seg16LadderFlatY143_eq]
      unfold seg16LadderFlatX143 seg16LadderFlatY143
      linear_combination r4824
    have ha1 : rho 17395 * seg16AccX143 rho = rho 17397 := by
      rw [seg16LadderFlatX143_eq]
      unfold seg16LadderFlatX143
      linear_combination r4825
    have ha2 : rho 17394 * seg16AccY143 rho = rho 17398 := by
      rw [seg16LadderFlatY143_eq]
      unfold seg16LadderFlatY143
      linear_combination r4826
    have ha3 : 3021 * rho 17397 * rho 17398 = rho 17399 := by
      linear_combination r4827
    have ha4 : rho 17400 * (1 + rho 17399) = rho 17397 + rho 17398 := by
      linear_combination r4828
    have ha5 : rho 17401 * (1 - rho 17399) = rho 17396 - rho 17397 - rho 17398 := by
      linear_combination r4829
    have haddx :
        rho 17400 * (1 + 3021 * (rho 17395 * seg16AccX143 rho) * (rho 17394 * seg16AccY143 rho)) =
          rho 17395 * seg16AccX143 rho + rho 17394 * seg16AccY143 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17401 * (1 - 3021 * (rho 17395 * seg16AccX143 rho) * (rho 17394 * seg16AccY143 rho)) =
          (-1) * (rho 17395 * seg16AccX143 rho) - rho 17394 * seg16AccY143 rho +
            (seg16AccY143 rho - seg16AccX143 rho * (-1)) * (rho 17394 + rho 17395) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17401 * (1 - rho 17399) = rho 17396 - rho 17397 - rho 17398 := ha5
        _ = (-1) * rho 17397 - rho 17398 + (seg16AccY143 rho - seg16AccX143 rho * (-1)) * (rho 17394 + rho 17395) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX144 rho = seg16AccX143 rho - Bool.toZMod bit * (seg16AccX143 rho - rho 17400) := by
      have hd : rho 17402 = Bool.toZMod bit * (rho 17400 - seg16AccX143 rho) := by
        rw [← hbit, seg16LadderFlatX143_eq]
        unfold seg16LadderFlatX143
        linear_combination -r4830
      unfold seg16AccX144
      linear_combination hd
    have hsely : seg16AccY144 rho = seg16AccY143 rho - Bool.toZMod bit * (seg16AccY143 rho - rho 17401) := by
      have hd : rho 17403 = Bool.toZMod bit * (rho 17401 - seg16AccY143 rho) := by
        rw [← hbit, seg16LadderFlatY143_eq]
        unfold seg16LadderFlatY143
        linear_combination -r4831
      unfold seg16AccY144
      linear_combination hd
    have hd0 : rho 17394 * rho 17395 = rho 17404 := by linear_combination r4832
    have hd1 : rho 17394 * rho 17394 = rho 17405 := by linear_combination r4833
    have hd2 : rho 17395 * rho 17395 = rho 17406 := by linear_combination r4834
    have hd3 : rho 17407 * (rho 17395 * rho 17395 + rho 17394 * rho 17394 * (-1)) = 2 * (rho 17394 * rho 17395) := by
      rw [hd0, hd1, hd2]
      linear_combination r4835
    have hd4 : rho 17408 * (2 - (rho 17395 * rho 17395 + rho 17394 * rho 17394 * (-1))) = rho 17395 * rho 17395 - rho 17394 * rho 17394 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4836
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX143 rho : Seg16.F), (seg16AccY143 rho : Seg16.F)⟩
      ⟨(rho 17394 : Seg16.F), (rho 17395 : Seg16.F)⟩
      ⟨(rho 17400 : Seg16.F), (rho 17401 : Seg16.F)⟩
      ⟨(seg16AccX144 rho : Seg16.F), (seg16AccY144 rho : Seg16.F)⟩
      ⟨(rho 17407 : Seg16.F), (rho 17408 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung143

theorem seg16_rung144 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15436 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX144 rho : Seg16.F), (seg16AccY144 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17407 : Seg16.F), (rho 17408 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX144 rho : Seg16.F), (seg16AccY144 rho : Seg16.F)⟩
        ⟨(rho 17407 : Seg16.F), (rho 17408 : Seg16.F)⟩
        ⟨(seg16AccX145 rho : Seg16.F), (seg16AccY145 rho : Seg16.F)⟩
        ⟨(rho 17420 : Seg16.F), (rho 17421 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart60 at p60
  rcases p60 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4837, r4838, r4839, r4840, r4841, r4842, r4843, r4844, r4845, r4846, r4847, r4848, r4849, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow4837 Seg16.relationLc755 Seg16.relationLc755Part0 Seg16.relationLc755Part1 Seg16.relationLc755Part2 Seg16.relationLc755Part3 Seg16.relationLc755Part4 Seg16.relationLc755Part5 Seg16.relationLc755Part6 Seg16.relationLc755Part7 Seg16.relationLc755Part8 Seg16.relationLc755Part9 at r4837
  unfold Seg16.relationRow4838 Seg16.relationLc756 Seg16.relationLc756Part0 Seg16.relationLc756Part1 Seg16.relationLc756Part2 Seg16.relationLc756Part3 Seg16.relationLc756Part4 at r4838
  unfold Seg16.relationRow4839 Seg16.relationLc757 Seg16.relationLc757Part0 Seg16.relationLc757Part1 Seg16.relationLc757Part2 Seg16.relationLc757Part3 Seg16.relationLc757Part4 at r4839
  unfold Seg16.relationRow4840 at r4840
  unfold Seg16.relationRow4841 at r4841
  unfold Seg16.relationRow4842 at r4842
  unfold Seg16.relationRow4843 Seg16.relationLc758 Seg16.relationLc758Part0 Seg16.relationLc758Part1 Seg16.relationLc758Part2 Seg16.relationLc758Part3 Seg16.relationLc758Part4 at r4843
  unfold Seg16.relationRow4844 Seg16.relationLc759 Seg16.relationLc759Part0 Seg16.relationLc759Part1 Seg16.relationLc759Part2 Seg16.relationLc759Part3 Seg16.relationLc759Part4 at r4844
  unfold Seg16.relationRow4845 at r4845
  unfold Seg16.relationRow4846 at r4846
  unfold Seg16.relationRow4847 at r4847
  unfold Seg16.relationRow4848 at r4848
  unfold Seg16.relationRow4849 at r4849
  have hrung144 (bit : Bool) (hbit : rho 15436 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX144 rho : Seg16.F), (seg16AccY144 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17407 : Seg16.F), (rho 17408 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX144 rho : Seg16.F), (seg16AccY144 rho : Seg16.F)⟩
        ⟨(rho 17407 : Seg16.F), (rho 17408 : Seg16.F)⟩
        ⟨(seg16AccX145 rho : Seg16.F), (seg16AccY145 rho : Seg16.F)⟩
        ⟨(rho 17420 : Seg16.F), (rho 17421 : Seg16.F)⟩ := by
    have ha0 : (rho 17407 + rho 17408) * (seg16AccX144 rho + seg16AccY144 rho) = rho 17409 := by
      rw [seg16LadderFlatX144_eq, seg16LadderFlatY144_eq]
      unfold seg16LadderFlatX144 seg16LadderFlatY144
      linear_combination r4837
    have ha1 : rho 17408 * seg16AccX144 rho = rho 17410 := by
      rw [seg16LadderFlatX144_eq]
      unfold seg16LadderFlatX144
      linear_combination r4838
    have ha2 : rho 17407 * seg16AccY144 rho = rho 17411 := by
      rw [seg16LadderFlatY144_eq]
      unfold seg16LadderFlatY144
      linear_combination r4839
    have ha3 : 3021 * rho 17410 * rho 17411 = rho 17412 := by
      linear_combination r4840
    have ha4 : rho 17413 * (1 + rho 17412) = rho 17410 + rho 17411 := by
      linear_combination r4841
    have ha5 : rho 17414 * (1 - rho 17412) = rho 17409 - rho 17410 - rho 17411 := by
      linear_combination r4842
    have haddx :
        rho 17413 * (1 + 3021 * (rho 17408 * seg16AccX144 rho) * (rho 17407 * seg16AccY144 rho)) =
          rho 17408 * seg16AccX144 rho + rho 17407 * seg16AccY144 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17414 * (1 - 3021 * (rho 17408 * seg16AccX144 rho) * (rho 17407 * seg16AccY144 rho)) =
          (-1) * (rho 17408 * seg16AccX144 rho) - rho 17407 * seg16AccY144 rho +
            (seg16AccY144 rho - seg16AccX144 rho * (-1)) * (rho 17407 + rho 17408) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17414 * (1 - rho 17412) = rho 17409 - rho 17410 - rho 17411 := ha5
        _ = (-1) * rho 17410 - rho 17411 + (seg16AccY144 rho - seg16AccX144 rho * (-1)) * (rho 17407 + rho 17408) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX145 rho = seg16AccX144 rho - Bool.toZMod bit * (seg16AccX144 rho - rho 17413) := by
      have hd : rho 17415 = Bool.toZMod bit * (rho 17413 - seg16AccX144 rho) := by
        rw [← hbit, seg16LadderFlatX144_eq]
        unfold seg16LadderFlatX144
        linear_combination -r4843
      unfold seg16AccX145
      linear_combination hd
    have hsely : seg16AccY145 rho = seg16AccY144 rho - Bool.toZMod bit * (seg16AccY144 rho - rho 17414) := by
      have hd : rho 17416 = Bool.toZMod bit * (rho 17414 - seg16AccY144 rho) := by
        rw [← hbit, seg16LadderFlatY144_eq]
        unfold seg16LadderFlatY144
        linear_combination -r4844
      unfold seg16AccY145
      linear_combination hd
    have hd0 : rho 17407 * rho 17408 = rho 17417 := by linear_combination r4845
    have hd1 : rho 17407 * rho 17407 = rho 17418 := by linear_combination r4846
    have hd2 : rho 17408 * rho 17408 = rho 17419 := by linear_combination r4847
    have hd3 : rho 17420 * (rho 17408 * rho 17408 + rho 17407 * rho 17407 * (-1)) = 2 * (rho 17407 * rho 17408) := by
      rw [hd0, hd1, hd2]
      linear_combination r4848
    have hd4 : rho 17421 * (2 - (rho 17408 * rho 17408 + rho 17407 * rho 17407 * (-1))) = rho 17408 * rho 17408 - rho 17407 * rho 17407 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4849
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX144 rho : Seg16.F), (seg16AccY144 rho : Seg16.F)⟩
      ⟨(rho 17407 : Seg16.F), (rho 17408 : Seg16.F)⟩
      ⟨(rho 17413 : Seg16.F), (rho 17414 : Seg16.F)⟩
      ⟨(seg16AccX145 rho : Seg16.F), (seg16AccY145 rho : Seg16.F)⟩
      ⟨(rho 17420 : Seg16.F), (rho 17421 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung144

theorem seg16_rung145 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15437 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX145 rho : Seg16.F), (seg16AccY145 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17420 : Seg16.F), (rho 17421 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX145 rho : Seg16.F), (seg16AccY145 rho : Seg16.F)⟩
        ⟨(rho 17420 : Seg16.F), (rho 17421 : Seg16.F)⟩
        ⟨(seg16AccX146 rho : Seg16.F), (seg16AccY146 rho : Seg16.F)⟩
        ⟨(rho 17433 : Seg16.F), (rho 17434 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart60 at p60
  rcases p60 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4850, r4851, r4852, r4853, r4854, r4855, r4856, r4857, r4858, r4859, r4860, r4861, r4862, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow4850 Seg16.relationLc760 Seg16.relationLc760Part0 Seg16.relationLc760Part1 Seg16.relationLc760Part2 Seg16.relationLc760Part3 Seg16.relationLc760Part4 Seg16.relationLc760Part5 Seg16.relationLc760Part6 Seg16.relationLc760Part7 Seg16.relationLc760Part8 Seg16.relationLc760Part9 at r4850
  unfold Seg16.relationRow4851 Seg16.relationLc761 Seg16.relationLc761Part0 Seg16.relationLc761Part1 Seg16.relationLc761Part2 Seg16.relationLc761Part3 Seg16.relationLc761Part4 at r4851
  unfold Seg16.relationRow4852 Seg16.relationLc762 Seg16.relationLc762Part0 Seg16.relationLc762Part1 Seg16.relationLc762Part2 Seg16.relationLc762Part3 Seg16.relationLc762Part4 at r4852
  unfold Seg16.relationRow4853 at r4853
  unfold Seg16.relationRow4854 at r4854
  unfold Seg16.relationRow4855 at r4855
  unfold Seg16.relationRow4856 Seg16.relationLc763 Seg16.relationLc763Part0 Seg16.relationLc763Part1 Seg16.relationLc763Part2 Seg16.relationLc763Part3 Seg16.relationLc763Part4 at r4856
  unfold Seg16.relationRow4857 Seg16.relationLc764 Seg16.relationLc764Part0 Seg16.relationLc764Part1 Seg16.relationLc764Part2 Seg16.relationLc764Part3 Seg16.relationLc764Part4 at r4857
  unfold Seg16.relationRow4858 at r4858
  unfold Seg16.relationRow4859 at r4859
  unfold Seg16.relationRow4860 at r4860
  unfold Seg16.relationRow4861 at r4861
  unfold Seg16.relationRow4862 at r4862
  have hrung145 (bit : Bool) (hbit : rho 15437 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX145 rho : Seg16.F), (seg16AccY145 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17420 : Seg16.F), (rho 17421 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX145 rho : Seg16.F), (seg16AccY145 rho : Seg16.F)⟩
        ⟨(rho 17420 : Seg16.F), (rho 17421 : Seg16.F)⟩
        ⟨(seg16AccX146 rho : Seg16.F), (seg16AccY146 rho : Seg16.F)⟩
        ⟨(rho 17433 : Seg16.F), (rho 17434 : Seg16.F)⟩ := by
    have ha0 : (rho 17420 + rho 17421) * (seg16AccX145 rho + seg16AccY145 rho) = rho 17422 := by
      rw [seg16LadderFlatX145_eq, seg16LadderFlatY145_eq]
      unfold seg16LadderFlatX145 seg16LadderFlatY145
      linear_combination r4850
    have ha1 : rho 17421 * seg16AccX145 rho = rho 17423 := by
      rw [seg16LadderFlatX145_eq]
      unfold seg16LadderFlatX145
      linear_combination r4851
    have ha2 : rho 17420 * seg16AccY145 rho = rho 17424 := by
      rw [seg16LadderFlatY145_eq]
      unfold seg16LadderFlatY145
      linear_combination r4852
    have ha3 : 3021 * rho 17423 * rho 17424 = rho 17425 := by
      linear_combination r4853
    have ha4 : rho 17426 * (1 + rho 17425) = rho 17423 + rho 17424 := by
      linear_combination r4854
    have ha5 : rho 17427 * (1 - rho 17425) = rho 17422 - rho 17423 - rho 17424 := by
      linear_combination r4855
    have haddx :
        rho 17426 * (1 + 3021 * (rho 17421 * seg16AccX145 rho) * (rho 17420 * seg16AccY145 rho)) =
          rho 17421 * seg16AccX145 rho + rho 17420 * seg16AccY145 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17427 * (1 - 3021 * (rho 17421 * seg16AccX145 rho) * (rho 17420 * seg16AccY145 rho)) =
          (-1) * (rho 17421 * seg16AccX145 rho) - rho 17420 * seg16AccY145 rho +
            (seg16AccY145 rho - seg16AccX145 rho * (-1)) * (rho 17420 + rho 17421) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17427 * (1 - rho 17425) = rho 17422 - rho 17423 - rho 17424 := ha5
        _ = (-1) * rho 17423 - rho 17424 + (seg16AccY145 rho - seg16AccX145 rho * (-1)) * (rho 17420 + rho 17421) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX146 rho = seg16AccX145 rho - Bool.toZMod bit * (seg16AccX145 rho - rho 17426) := by
      have hd : rho 17428 = Bool.toZMod bit * (rho 17426 - seg16AccX145 rho) := by
        rw [← hbit, seg16LadderFlatX145_eq]
        unfold seg16LadderFlatX145
        linear_combination -r4856
      unfold seg16AccX146
      linear_combination hd
    have hsely : seg16AccY146 rho = seg16AccY145 rho - Bool.toZMod bit * (seg16AccY145 rho - rho 17427) := by
      have hd : rho 17429 = Bool.toZMod bit * (rho 17427 - seg16AccY145 rho) := by
        rw [← hbit, seg16LadderFlatY145_eq]
        unfold seg16LadderFlatY145
        linear_combination -r4857
      unfold seg16AccY146
      linear_combination hd
    have hd0 : rho 17420 * rho 17421 = rho 17430 := by linear_combination r4858
    have hd1 : rho 17420 * rho 17420 = rho 17431 := by linear_combination r4859
    have hd2 : rho 17421 * rho 17421 = rho 17432 := by linear_combination r4860
    have hd3 : rho 17433 * (rho 17421 * rho 17421 + rho 17420 * rho 17420 * (-1)) = 2 * (rho 17420 * rho 17421) := by
      rw [hd0, hd1, hd2]
      linear_combination r4861
    have hd4 : rho 17434 * (2 - (rho 17421 * rho 17421 + rho 17420 * rho 17420 * (-1))) = rho 17421 * rho 17421 - rho 17420 * rho 17420 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4862
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX145 rho : Seg16.F), (seg16AccY145 rho : Seg16.F)⟩
      ⟨(rho 17420 : Seg16.F), (rho 17421 : Seg16.F)⟩
      ⟨(rho 17426 : Seg16.F), (rho 17427 : Seg16.F)⟩
      ⟨(seg16AccX146 rho : Seg16.F), (seg16AccY146 rho : Seg16.F)⟩
      ⟨(rho 17433 : Seg16.F), (rho 17434 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung145

theorem seg16_rung146 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15438 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX146 rho : Seg16.F), (seg16AccY146 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17433 : Seg16.F), (rho 17434 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX146 rho : Seg16.F), (seg16AccY146 rho : Seg16.F)⟩
        ⟨(rho 17433 : Seg16.F), (rho 17434 : Seg16.F)⟩
        ⟨(seg16AccX147 rho : Seg16.F), (seg16AccY147 rho : Seg16.F)⟩
        ⟨(rho 17446 : Seg16.F), (rho 17447 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart60 at p60
  rcases p60 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4863, r4864, r4865, r4866, r4867, r4868, r4869, r4870, r4871, r4872, r4873, r4874, r4875, _, _, _, _⟩
  unfold Seg16.relationRow4863 Seg16.relationLc765 Seg16.relationLc765Part0 Seg16.relationLc765Part1 Seg16.relationLc765Part2 Seg16.relationLc765Part3 Seg16.relationLc765Part4 Seg16.relationLc765Part5 Seg16.relationLc765Part6 Seg16.relationLc765Part7 Seg16.relationLc765Part8 Seg16.relationLc765Part9 at r4863
  unfold Seg16.relationRow4864 Seg16.relationLc766 Seg16.relationLc766Part0 Seg16.relationLc766Part1 Seg16.relationLc766Part2 Seg16.relationLc766Part3 Seg16.relationLc766Part4 at r4864
  unfold Seg16.relationRow4865 Seg16.relationLc767 Seg16.relationLc767Part0 Seg16.relationLc767Part1 Seg16.relationLc767Part2 Seg16.relationLc767Part3 Seg16.relationLc767Part4 at r4865
  unfold Seg16.relationRow4866 at r4866
  unfold Seg16.relationRow4867 at r4867
  unfold Seg16.relationRow4868 at r4868
  unfold Seg16.relationRow4869 Seg16.relationLc768 Seg16.relationLc768Part0 Seg16.relationLc768Part1 Seg16.relationLc768Part2 Seg16.relationLc768Part3 Seg16.relationLc768Part4 at r4869
  unfold Seg16.relationRow4870 Seg16.relationLc769 Seg16.relationLc769Part0 Seg16.relationLc769Part1 Seg16.relationLc769Part2 Seg16.relationLc769Part3 Seg16.relationLc769Part4 at r4870
  unfold Seg16.relationRow4871 at r4871
  unfold Seg16.relationRow4872 at r4872
  unfold Seg16.relationRow4873 at r4873
  unfold Seg16.relationRow4874 at r4874
  unfold Seg16.relationRow4875 at r4875
  have hrung146 (bit : Bool) (hbit : rho 15438 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX146 rho : Seg16.F), (seg16AccY146 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17433 : Seg16.F), (rho 17434 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX146 rho : Seg16.F), (seg16AccY146 rho : Seg16.F)⟩
        ⟨(rho 17433 : Seg16.F), (rho 17434 : Seg16.F)⟩
        ⟨(seg16AccX147 rho : Seg16.F), (seg16AccY147 rho : Seg16.F)⟩
        ⟨(rho 17446 : Seg16.F), (rho 17447 : Seg16.F)⟩ := by
    have ha0 : (rho 17433 + rho 17434) * (seg16AccX146 rho + seg16AccY146 rho) = rho 17435 := by
      rw [seg16LadderFlatX146_eq, seg16LadderFlatY146_eq]
      unfold seg16LadderFlatX146 seg16LadderFlatY146
      linear_combination r4863
    have ha1 : rho 17434 * seg16AccX146 rho = rho 17436 := by
      rw [seg16LadderFlatX146_eq]
      unfold seg16LadderFlatX146
      linear_combination r4864
    have ha2 : rho 17433 * seg16AccY146 rho = rho 17437 := by
      rw [seg16LadderFlatY146_eq]
      unfold seg16LadderFlatY146
      linear_combination r4865
    have ha3 : 3021 * rho 17436 * rho 17437 = rho 17438 := by
      linear_combination r4866
    have ha4 : rho 17439 * (1 + rho 17438) = rho 17436 + rho 17437 := by
      linear_combination r4867
    have ha5 : rho 17440 * (1 - rho 17438) = rho 17435 - rho 17436 - rho 17437 := by
      linear_combination r4868
    have haddx :
        rho 17439 * (1 + 3021 * (rho 17434 * seg16AccX146 rho) * (rho 17433 * seg16AccY146 rho)) =
          rho 17434 * seg16AccX146 rho + rho 17433 * seg16AccY146 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17440 * (1 - 3021 * (rho 17434 * seg16AccX146 rho) * (rho 17433 * seg16AccY146 rho)) =
          (-1) * (rho 17434 * seg16AccX146 rho) - rho 17433 * seg16AccY146 rho +
            (seg16AccY146 rho - seg16AccX146 rho * (-1)) * (rho 17433 + rho 17434) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17440 * (1 - rho 17438) = rho 17435 - rho 17436 - rho 17437 := ha5
        _ = (-1) * rho 17436 - rho 17437 + (seg16AccY146 rho - seg16AccX146 rho * (-1)) * (rho 17433 + rho 17434) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX147 rho = seg16AccX146 rho - Bool.toZMod bit * (seg16AccX146 rho - rho 17439) := by
      have hd : rho 17441 = Bool.toZMod bit * (rho 17439 - seg16AccX146 rho) := by
        rw [← hbit, seg16LadderFlatX146_eq]
        unfold seg16LadderFlatX146
        linear_combination -r4869
      unfold seg16AccX147
      linear_combination hd
    have hsely : seg16AccY147 rho = seg16AccY146 rho - Bool.toZMod bit * (seg16AccY146 rho - rho 17440) := by
      have hd : rho 17442 = Bool.toZMod bit * (rho 17440 - seg16AccY146 rho) := by
        rw [← hbit, seg16LadderFlatY146_eq]
        unfold seg16LadderFlatY146
        linear_combination -r4870
      unfold seg16AccY147
      linear_combination hd
    have hd0 : rho 17433 * rho 17434 = rho 17443 := by linear_combination r4871
    have hd1 : rho 17433 * rho 17433 = rho 17444 := by linear_combination r4872
    have hd2 : rho 17434 * rho 17434 = rho 17445 := by linear_combination r4873
    have hd3 : rho 17446 * (rho 17434 * rho 17434 + rho 17433 * rho 17433 * (-1)) = 2 * (rho 17433 * rho 17434) := by
      rw [hd0, hd1, hd2]
      linear_combination r4874
    have hd4 : rho 17447 * (2 - (rho 17434 * rho 17434 + rho 17433 * rho 17433 * (-1))) = rho 17434 * rho 17434 - rho 17433 * rho 17433 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4875
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX146 rho : Seg16.F), (seg16AccY146 rho : Seg16.F)⟩
      ⟨(rho 17433 : Seg16.F), (rho 17434 : Seg16.F)⟩
      ⟨(rho 17439 : Seg16.F), (rho 17440 : Seg16.F)⟩
      ⟨(seg16AccX147 rho : Seg16.F), (seg16AccY147 rho : Seg16.F)⟩
      ⟨(rho 17446 : Seg16.F), (rho 17447 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung146

theorem seg16_rung147 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15439 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX147 rho : Seg16.F), (seg16AccY147 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17446 : Seg16.F), (rho 17447 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX147 rho : Seg16.F), (seg16AccY147 rho : Seg16.F)⟩
        ⟨(rho 17446 : Seg16.F), (rho 17447 : Seg16.F)⟩
        ⟨(seg16AccX148 rho : Seg16.F), (seg16AccY148 rho : Seg16.F)⟩
        ⟨(rho 17459 : Seg16.F), (rho 17460 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart60 at p60
  rcases p60 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4876, r4877, r4878, r4879⟩
  unfold Seg16.relationPart61 at p61
  rcases p61 with ⟨r4880, r4881, r4882, r4883, r4884, r4885, r4886, r4887, r4888, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow4876 Seg16.relationLc770 Seg16.relationLc770Part0 Seg16.relationLc770Part1 Seg16.relationLc770Part2 Seg16.relationLc770Part3 Seg16.relationLc770Part4 Seg16.relationLc770Part5 Seg16.relationLc770Part6 Seg16.relationLc770Part7 Seg16.relationLc770Part8 Seg16.relationLc770Part9 at r4876
  unfold Seg16.relationRow4877 Seg16.relationLc771 Seg16.relationLc771Part0 Seg16.relationLc771Part1 Seg16.relationLc771Part2 Seg16.relationLc771Part3 Seg16.relationLc771Part4 at r4877
  unfold Seg16.relationRow4878 Seg16.relationLc772 Seg16.relationLc772Part0 Seg16.relationLc772Part1 Seg16.relationLc772Part2 Seg16.relationLc772Part3 Seg16.relationLc772Part4 at r4878
  unfold Seg16.relationRow4879 at r4879
  unfold Seg16.relationRow4880 at r4880
  unfold Seg16.relationRow4881 at r4881
  unfold Seg16.relationRow4882 Seg16.relationLc773 Seg16.relationLc773Part0 Seg16.relationLc773Part1 Seg16.relationLc773Part2 Seg16.relationLc773Part3 Seg16.relationLc773Part4 at r4882
  unfold Seg16.relationRow4883 Seg16.relationLc774 Seg16.relationLc774Part0 Seg16.relationLc774Part1 Seg16.relationLc774Part2 Seg16.relationLc774Part3 Seg16.relationLc774Part4 at r4883
  unfold Seg16.relationRow4884 at r4884
  unfold Seg16.relationRow4885 at r4885
  unfold Seg16.relationRow4886 at r4886
  unfold Seg16.relationRow4887 at r4887
  unfold Seg16.relationRow4888 at r4888
  have hrung147 (bit : Bool) (hbit : rho 15439 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX147 rho : Seg16.F), (seg16AccY147 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17446 : Seg16.F), (rho 17447 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX147 rho : Seg16.F), (seg16AccY147 rho : Seg16.F)⟩
        ⟨(rho 17446 : Seg16.F), (rho 17447 : Seg16.F)⟩
        ⟨(seg16AccX148 rho : Seg16.F), (seg16AccY148 rho : Seg16.F)⟩
        ⟨(rho 17459 : Seg16.F), (rho 17460 : Seg16.F)⟩ := by
    have ha0 : (rho 17446 + rho 17447) * (seg16AccX147 rho + seg16AccY147 rho) = rho 17448 := by
      rw [seg16LadderFlatX147_eq, seg16LadderFlatY147_eq]
      unfold seg16LadderFlatX147 seg16LadderFlatY147
      linear_combination r4876
    have ha1 : rho 17447 * seg16AccX147 rho = rho 17449 := by
      rw [seg16LadderFlatX147_eq]
      unfold seg16LadderFlatX147
      linear_combination r4877
    have ha2 : rho 17446 * seg16AccY147 rho = rho 17450 := by
      rw [seg16LadderFlatY147_eq]
      unfold seg16LadderFlatY147
      linear_combination r4878
    have ha3 : 3021 * rho 17449 * rho 17450 = rho 17451 := by
      linear_combination r4879
    have ha4 : rho 17452 * (1 + rho 17451) = rho 17449 + rho 17450 := by
      linear_combination r4880
    have ha5 : rho 17453 * (1 - rho 17451) = rho 17448 - rho 17449 - rho 17450 := by
      linear_combination r4881
    have haddx :
        rho 17452 * (1 + 3021 * (rho 17447 * seg16AccX147 rho) * (rho 17446 * seg16AccY147 rho)) =
          rho 17447 * seg16AccX147 rho + rho 17446 * seg16AccY147 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17453 * (1 - 3021 * (rho 17447 * seg16AccX147 rho) * (rho 17446 * seg16AccY147 rho)) =
          (-1) * (rho 17447 * seg16AccX147 rho) - rho 17446 * seg16AccY147 rho +
            (seg16AccY147 rho - seg16AccX147 rho * (-1)) * (rho 17446 + rho 17447) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17453 * (1 - rho 17451) = rho 17448 - rho 17449 - rho 17450 := ha5
        _ = (-1) * rho 17449 - rho 17450 + (seg16AccY147 rho - seg16AccX147 rho * (-1)) * (rho 17446 + rho 17447) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX148 rho = seg16AccX147 rho - Bool.toZMod bit * (seg16AccX147 rho - rho 17452) := by
      have hd : rho 17454 = Bool.toZMod bit * (rho 17452 - seg16AccX147 rho) := by
        rw [← hbit, seg16LadderFlatX147_eq]
        unfold seg16LadderFlatX147
        linear_combination -r4882
      unfold seg16AccX148
      linear_combination hd
    have hsely : seg16AccY148 rho = seg16AccY147 rho - Bool.toZMod bit * (seg16AccY147 rho - rho 17453) := by
      have hd : rho 17455 = Bool.toZMod bit * (rho 17453 - seg16AccY147 rho) := by
        rw [← hbit, seg16LadderFlatY147_eq]
        unfold seg16LadderFlatY147
        linear_combination -r4883
      unfold seg16AccY148
      linear_combination hd
    have hd0 : rho 17446 * rho 17447 = rho 17456 := by linear_combination r4884
    have hd1 : rho 17446 * rho 17446 = rho 17457 := by linear_combination r4885
    have hd2 : rho 17447 * rho 17447 = rho 17458 := by linear_combination r4886
    have hd3 : rho 17459 * (rho 17447 * rho 17447 + rho 17446 * rho 17446 * (-1)) = 2 * (rho 17446 * rho 17447) := by
      rw [hd0, hd1, hd2]
      linear_combination r4887
    have hd4 : rho 17460 * (2 - (rho 17447 * rho 17447 + rho 17446 * rho 17446 * (-1))) = rho 17447 * rho 17447 - rho 17446 * rho 17446 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4888
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX147 rho : Seg16.F), (seg16AccY147 rho : Seg16.F)⟩
      ⟨(rho 17446 : Seg16.F), (rho 17447 : Seg16.F)⟩
      ⟨(rho 17452 : Seg16.F), (rho 17453 : Seg16.F)⟩
      ⟨(seg16AccX148 rho : Seg16.F), (seg16AccY148 rho : Seg16.F)⟩
      ⟨(rho 17459 : Seg16.F), (rho 17460 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung147

theorem seg16_rung148 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15440 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX148 rho : Seg16.F), (seg16AccY148 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17459 : Seg16.F), (rho 17460 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX148 rho : Seg16.F), (seg16AccY148 rho : Seg16.F)⟩
        ⟨(rho 17459 : Seg16.F), (rho 17460 : Seg16.F)⟩
        ⟨(seg16AccX149 rho : Seg16.F), (seg16AccY149 rho : Seg16.F)⟩
        ⟨(rho 17472 : Seg16.F), (rho 17473 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart61 at p61
  rcases p61 with ⟨_, _, _, _, _, _, _, _, _, r4889, r4890, r4891, r4892, r4893, r4894, r4895, r4896, r4897, r4898, r4899, r4900, r4901, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow4889 Seg16.relationLc775 Seg16.relationLc775Part0 Seg16.relationLc775Part1 Seg16.relationLc775Part2 Seg16.relationLc775Part3 Seg16.relationLc775Part4 Seg16.relationLc775Part5 Seg16.relationLc775Part6 Seg16.relationLc775Part7 Seg16.relationLc775Part8 Seg16.relationLc775Part9 at r4889
  unfold Seg16.relationRow4890 Seg16.relationLc776 Seg16.relationLc776Part0 Seg16.relationLc776Part1 Seg16.relationLc776Part2 Seg16.relationLc776Part3 Seg16.relationLc776Part4 at r4890
  unfold Seg16.relationRow4891 Seg16.relationLc777 Seg16.relationLc777Part0 Seg16.relationLc777Part1 Seg16.relationLc777Part2 Seg16.relationLc777Part3 Seg16.relationLc777Part4 at r4891
  unfold Seg16.relationRow4892 at r4892
  unfold Seg16.relationRow4893 at r4893
  unfold Seg16.relationRow4894 at r4894
  unfold Seg16.relationRow4895 Seg16.relationLc778 Seg16.relationLc778Part0 Seg16.relationLc778Part1 Seg16.relationLc778Part2 Seg16.relationLc778Part3 Seg16.relationLc778Part4 at r4895
  unfold Seg16.relationRow4896 Seg16.relationLc779 Seg16.relationLc779Part0 Seg16.relationLc779Part1 Seg16.relationLc779Part2 Seg16.relationLc779Part3 Seg16.relationLc779Part4 at r4896
  unfold Seg16.relationRow4897 at r4897
  unfold Seg16.relationRow4898 at r4898
  unfold Seg16.relationRow4899 at r4899
  unfold Seg16.relationRow4900 at r4900
  unfold Seg16.relationRow4901 at r4901
  have hrung148 (bit : Bool) (hbit : rho 15440 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX148 rho : Seg16.F), (seg16AccY148 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17459 : Seg16.F), (rho 17460 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX148 rho : Seg16.F), (seg16AccY148 rho : Seg16.F)⟩
        ⟨(rho 17459 : Seg16.F), (rho 17460 : Seg16.F)⟩
        ⟨(seg16AccX149 rho : Seg16.F), (seg16AccY149 rho : Seg16.F)⟩
        ⟨(rho 17472 : Seg16.F), (rho 17473 : Seg16.F)⟩ := by
    have ha0 : (rho 17459 + rho 17460) * (seg16AccX148 rho + seg16AccY148 rho) = rho 17461 := by
      rw [seg16LadderFlatX148_eq, seg16LadderFlatY148_eq]
      unfold seg16LadderFlatX148 seg16LadderFlatY148
      linear_combination r4889
    have ha1 : rho 17460 * seg16AccX148 rho = rho 17462 := by
      rw [seg16LadderFlatX148_eq]
      unfold seg16LadderFlatX148
      linear_combination r4890
    have ha2 : rho 17459 * seg16AccY148 rho = rho 17463 := by
      rw [seg16LadderFlatY148_eq]
      unfold seg16LadderFlatY148
      linear_combination r4891
    have ha3 : 3021 * rho 17462 * rho 17463 = rho 17464 := by
      linear_combination r4892
    have ha4 : rho 17465 * (1 + rho 17464) = rho 17462 + rho 17463 := by
      linear_combination r4893
    have ha5 : rho 17466 * (1 - rho 17464) = rho 17461 - rho 17462 - rho 17463 := by
      linear_combination r4894
    have haddx :
        rho 17465 * (1 + 3021 * (rho 17460 * seg16AccX148 rho) * (rho 17459 * seg16AccY148 rho)) =
          rho 17460 * seg16AccX148 rho + rho 17459 * seg16AccY148 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17466 * (1 - 3021 * (rho 17460 * seg16AccX148 rho) * (rho 17459 * seg16AccY148 rho)) =
          (-1) * (rho 17460 * seg16AccX148 rho) - rho 17459 * seg16AccY148 rho +
            (seg16AccY148 rho - seg16AccX148 rho * (-1)) * (rho 17459 + rho 17460) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17466 * (1 - rho 17464) = rho 17461 - rho 17462 - rho 17463 := ha5
        _ = (-1) * rho 17462 - rho 17463 + (seg16AccY148 rho - seg16AccX148 rho * (-1)) * (rho 17459 + rho 17460) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX149 rho = seg16AccX148 rho - Bool.toZMod bit * (seg16AccX148 rho - rho 17465) := by
      have hd : rho 17467 = Bool.toZMod bit * (rho 17465 - seg16AccX148 rho) := by
        rw [← hbit, seg16LadderFlatX148_eq]
        unfold seg16LadderFlatX148
        linear_combination -r4895
      unfold seg16AccX149
      linear_combination hd
    have hsely : seg16AccY149 rho = seg16AccY148 rho - Bool.toZMod bit * (seg16AccY148 rho - rho 17466) := by
      have hd : rho 17468 = Bool.toZMod bit * (rho 17466 - seg16AccY148 rho) := by
        rw [← hbit, seg16LadderFlatY148_eq]
        unfold seg16LadderFlatY148
        linear_combination -r4896
      unfold seg16AccY149
      linear_combination hd
    have hd0 : rho 17459 * rho 17460 = rho 17469 := by linear_combination r4897
    have hd1 : rho 17459 * rho 17459 = rho 17470 := by linear_combination r4898
    have hd2 : rho 17460 * rho 17460 = rho 17471 := by linear_combination r4899
    have hd3 : rho 17472 * (rho 17460 * rho 17460 + rho 17459 * rho 17459 * (-1)) = 2 * (rho 17459 * rho 17460) := by
      rw [hd0, hd1, hd2]
      linear_combination r4900
    have hd4 : rho 17473 * (2 - (rho 17460 * rho 17460 + rho 17459 * rho 17459 * (-1))) = rho 17460 * rho 17460 - rho 17459 * rho 17459 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4901
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX148 rho : Seg16.F), (seg16AccY148 rho : Seg16.F)⟩
      ⟨(rho 17459 : Seg16.F), (rho 17460 : Seg16.F)⟩
      ⟨(rho 17465 : Seg16.F), (rho 17466 : Seg16.F)⟩
      ⟨(seg16AccX149 rho : Seg16.F), (seg16AccY149 rho : Seg16.F)⟩
      ⟨(rho 17472 : Seg16.F), (rho 17473 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung148

theorem seg16_rung149 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15441 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX149 rho : Seg16.F), (seg16AccY149 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17472 : Seg16.F), (rho 17473 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX149 rho : Seg16.F), (seg16AccY149 rho : Seg16.F)⟩
        ⟨(rho 17472 : Seg16.F), (rho 17473 : Seg16.F)⟩
        ⟨(seg16AccX150 rho : Seg16.F), (seg16AccY150 rho : Seg16.F)⟩
        ⟨(rho 17485 : Seg16.F), (rho 17486 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart61 at p61
  rcases p61 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4902, r4903, r4904, r4905, r4906, r4907, r4908, r4909, r4910, r4911, r4912, r4913, r4914, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow4902 Seg16.relationLc780 Seg16.relationLc780Part0 Seg16.relationLc780Part1 Seg16.relationLc780Part2 Seg16.relationLc780Part3 Seg16.relationLc780Part4 Seg16.relationLc780Part5 Seg16.relationLc780Part6 Seg16.relationLc780Part7 Seg16.relationLc780Part8 Seg16.relationLc780Part9 at r4902
  unfold Seg16.relationRow4903 Seg16.relationLc781 Seg16.relationLc781Part0 Seg16.relationLc781Part1 Seg16.relationLc781Part2 Seg16.relationLc781Part3 Seg16.relationLc781Part4 at r4903
  unfold Seg16.relationRow4904 Seg16.relationLc782 Seg16.relationLc782Part0 Seg16.relationLc782Part1 Seg16.relationLc782Part2 Seg16.relationLc782Part3 Seg16.relationLc782Part4 at r4904
  unfold Seg16.relationRow4905 at r4905
  unfold Seg16.relationRow4906 at r4906
  unfold Seg16.relationRow4907 at r4907
  unfold Seg16.relationRow4908 Seg16.relationLc783 Seg16.relationLc783Part0 Seg16.relationLc783Part1 Seg16.relationLc783Part2 Seg16.relationLc783Part3 Seg16.relationLc783Part4 at r4908
  unfold Seg16.relationRow4909 Seg16.relationLc784 Seg16.relationLc784Part0 Seg16.relationLc784Part1 Seg16.relationLc784Part2 Seg16.relationLc784Part3 Seg16.relationLc784Part4 at r4909
  unfold Seg16.relationRow4910 at r4910
  unfold Seg16.relationRow4911 at r4911
  unfold Seg16.relationRow4912 at r4912
  unfold Seg16.relationRow4913 at r4913
  unfold Seg16.relationRow4914 at r4914
  have hrung149 (bit : Bool) (hbit : rho 15441 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX149 rho : Seg16.F), (seg16AccY149 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17472 : Seg16.F), (rho 17473 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX149 rho : Seg16.F), (seg16AccY149 rho : Seg16.F)⟩
        ⟨(rho 17472 : Seg16.F), (rho 17473 : Seg16.F)⟩
        ⟨(seg16AccX150 rho : Seg16.F), (seg16AccY150 rho : Seg16.F)⟩
        ⟨(rho 17485 : Seg16.F), (rho 17486 : Seg16.F)⟩ := by
    have ha0 : (rho 17472 + rho 17473) * (seg16AccX149 rho + seg16AccY149 rho) = rho 17474 := by
      rw [seg16LadderFlatX149_eq, seg16LadderFlatY149_eq]
      unfold seg16LadderFlatX149 seg16LadderFlatY149
      linear_combination r4902
    have ha1 : rho 17473 * seg16AccX149 rho = rho 17475 := by
      rw [seg16LadderFlatX149_eq]
      unfold seg16LadderFlatX149
      linear_combination r4903
    have ha2 : rho 17472 * seg16AccY149 rho = rho 17476 := by
      rw [seg16LadderFlatY149_eq]
      unfold seg16LadderFlatY149
      linear_combination r4904
    have ha3 : 3021 * rho 17475 * rho 17476 = rho 17477 := by
      linear_combination r4905
    have ha4 : rho 17478 * (1 + rho 17477) = rho 17475 + rho 17476 := by
      linear_combination r4906
    have ha5 : rho 17479 * (1 - rho 17477) = rho 17474 - rho 17475 - rho 17476 := by
      linear_combination r4907
    have haddx :
        rho 17478 * (1 + 3021 * (rho 17473 * seg16AccX149 rho) * (rho 17472 * seg16AccY149 rho)) =
          rho 17473 * seg16AccX149 rho + rho 17472 * seg16AccY149 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17479 * (1 - 3021 * (rho 17473 * seg16AccX149 rho) * (rho 17472 * seg16AccY149 rho)) =
          (-1) * (rho 17473 * seg16AccX149 rho) - rho 17472 * seg16AccY149 rho +
            (seg16AccY149 rho - seg16AccX149 rho * (-1)) * (rho 17472 + rho 17473) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17479 * (1 - rho 17477) = rho 17474 - rho 17475 - rho 17476 := ha5
        _ = (-1) * rho 17475 - rho 17476 + (seg16AccY149 rho - seg16AccX149 rho * (-1)) * (rho 17472 + rho 17473) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX150 rho = seg16AccX149 rho - Bool.toZMod bit * (seg16AccX149 rho - rho 17478) := by
      have hd : rho 17480 = Bool.toZMod bit * (rho 17478 - seg16AccX149 rho) := by
        rw [← hbit, seg16LadderFlatX149_eq]
        unfold seg16LadderFlatX149
        linear_combination -r4908
      unfold seg16AccX150
      linear_combination hd
    have hsely : seg16AccY150 rho = seg16AccY149 rho - Bool.toZMod bit * (seg16AccY149 rho - rho 17479) := by
      have hd : rho 17481 = Bool.toZMod bit * (rho 17479 - seg16AccY149 rho) := by
        rw [← hbit, seg16LadderFlatY149_eq]
        unfold seg16LadderFlatY149
        linear_combination -r4909
      unfold seg16AccY150
      linear_combination hd
    have hd0 : rho 17472 * rho 17473 = rho 17482 := by linear_combination r4910
    have hd1 : rho 17472 * rho 17472 = rho 17483 := by linear_combination r4911
    have hd2 : rho 17473 * rho 17473 = rho 17484 := by linear_combination r4912
    have hd3 : rho 17485 * (rho 17473 * rho 17473 + rho 17472 * rho 17472 * (-1)) = 2 * (rho 17472 * rho 17473) := by
      rw [hd0, hd1, hd2]
      linear_combination r4913
    have hd4 : rho 17486 * (2 - (rho 17473 * rho 17473 + rho 17472 * rho 17472 * (-1))) = rho 17473 * rho 17473 - rho 17472 * rho 17472 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4914
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX149 rho : Seg16.F), (seg16AccY149 rho : Seg16.F)⟩
      ⟨(rho 17472 : Seg16.F), (rho 17473 : Seg16.F)⟩
      ⟨(rho 17478 : Seg16.F), (rho 17479 : Seg16.F)⟩
      ⟨(seg16AccX150 rho : Seg16.F), (seg16AccY150 rho : Seg16.F)⟩
      ⟨(rho 17485 : Seg16.F), (rho 17486 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung149

theorem seg16_rung150 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15442 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX150 rho : Seg16.F), (seg16AccY150 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17485 : Seg16.F), (rho 17486 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX150 rho : Seg16.F), (seg16AccY150 rho : Seg16.F)⟩
        ⟨(rho 17485 : Seg16.F), (rho 17486 : Seg16.F)⟩
        ⟨(seg16AccX151 rho : Seg16.F), (seg16AccY151 rho : Seg16.F)⟩
        ⟨(rho 17499 : Seg16.F), (rho 17500 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart61 at p61
  rcases p61 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4915, r4916, r4917, r4918, r4919, r4920, r4921, r4922, r4923, r4924, r4925, r4926, r4927, r4928, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow4915 Seg16.relationLc785 Seg16.relationLc785Part0 Seg16.relationLc785Part1 Seg16.relationLc785Part2 Seg16.relationLc785Part3 Seg16.relationLc785Part4 Seg16.relationLc785Part5 Seg16.relationLc785Part6 Seg16.relationLc785Part7 Seg16.relationLc785Part8 Seg16.relationLc785Part9 at r4915
  unfold Seg16.relationRow4916 at r4916
  unfold Seg16.relationRow4917 Seg16.relationLc786 Seg16.relationLc786Part0 Seg16.relationLc786Part1 Seg16.relationLc786Part2 Seg16.relationLc786Part3 Seg16.relationLc786Part4 at r4917
  unfold Seg16.relationRow4918 Seg16.relationLc787 Seg16.relationLc787Part0 Seg16.relationLc787Part1 Seg16.relationLc787Part2 Seg16.relationLc787Part3 Seg16.relationLc787Part4 at r4918
  unfold Seg16.relationRow4919 at r4919
  unfold Seg16.relationRow4920 at r4920
  unfold Seg16.relationRow4921 at r4921
  unfold Seg16.relationRow4922 Seg16.relationLc788 Seg16.relationLc788Part0 Seg16.relationLc788Part1 Seg16.relationLc788Part2 Seg16.relationLc788Part3 Seg16.relationLc788Part4 at r4922
  unfold Seg16.relationRow4923 Seg16.relationLc789 Seg16.relationLc789Part0 Seg16.relationLc789Part1 Seg16.relationLc789Part2 Seg16.relationLc789Part3 Seg16.relationLc789Part4 at r4923
  unfold Seg16.relationRow4924 at r4924
  unfold Seg16.relationRow4925 at r4925
  unfold Seg16.relationRow4926 at r4926
  unfold Seg16.relationRow4927 at r4927
  unfold Seg16.relationRow4928 at r4928
  have hrung150 (bit : Bool) (hbit : rho 15442 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX150 rho : Seg16.F), (seg16AccY150 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17485 : Seg16.F), (rho 17486 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX150 rho : Seg16.F), (seg16AccY150 rho : Seg16.F)⟩
        ⟨(rho 17485 : Seg16.F), (rho 17486 : Seg16.F)⟩
        ⟨(seg16AccX151 rho : Seg16.F), (seg16AccY151 rho : Seg16.F)⟩
        ⟨(rho 17499 : Seg16.F), (rho 17500 : Seg16.F)⟩ := by
    have hsum : seg16AccX150 rho + seg16AccY150 rho = rho 17487 := by
      rw [seg16LadderFlatX150_eq, seg16LadderFlatY150_eq]
      unfold seg16LadderFlatX150 seg16LadderFlatY150
      linear_combination r4915
    have ha0 : (rho 17485 + rho 17486) * (seg16AccX150 rho + seg16AccY150 rho) = rho 17488 := by
      rw [hsum]
      linear_combination r4916
    have ha1 : rho 17486 * seg16AccX150 rho = rho 17489 := by
      rw [seg16LadderFlatX150_eq]
      unfold seg16LadderFlatX150
      linear_combination r4917
    have ha2 : rho 17485 * seg16AccY150 rho = rho 17490 := by
      rw [seg16LadderFlatY150_eq]
      unfold seg16LadderFlatY150
      linear_combination r4918
    have ha3 : 3021 * rho 17489 * rho 17490 = rho 17491 := by
      linear_combination r4919
    have ha4 : rho 17492 * (1 + rho 17491) = rho 17489 + rho 17490 := by
      linear_combination r4920
    have ha5 : rho 17493 * (1 - rho 17491) = rho 17488 - rho 17489 - rho 17490 := by
      linear_combination r4921
    have haddx :
        rho 17492 * (1 + 3021 * (rho 17486 * seg16AccX150 rho) * (rho 17485 * seg16AccY150 rho)) =
          rho 17486 * seg16AccX150 rho + rho 17485 * seg16AccY150 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17493 * (1 - 3021 * (rho 17486 * seg16AccX150 rho) * (rho 17485 * seg16AccY150 rho)) =
          (-1) * (rho 17486 * seg16AccX150 rho) - rho 17485 * seg16AccY150 rho +
            (seg16AccY150 rho - seg16AccX150 rho * (-1)) * (rho 17485 + rho 17486) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17493 * (1 - rho 17491) = rho 17488 - rho 17489 - rho 17490 := ha5
        _ = (-1) * rho 17489 - rho 17490 + (seg16AccY150 rho - seg16AccX150 rho * (-1)) * (rho 17485 + rho 17486) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX151 rho = seg16AccX150 rho - Bool.toZMod bit * (seg16AccX150 rho - rho 17492) := by
      have hd : rho 17494 = Bool.toZMod bit * (rho 17492 - seg16AccX150 rho) := by
        rw [← hbit, seg16LadderFlatX150_eq]
        unfold seg16LadderFlatX150
        linear_combination -r4922
      unfold seg16AccX151
      linear_combination hd
    have hsely : seg16AccY151 rho = seg16AccY150 rho - Bool.toZMod bit * (seg16AccY150 rho - rho 17493) := by
      have hd : rho 17495 = Bool.toZMod bit * (rho 17493 - seg16AccY150 rho) := by
        rw [← hbit, seg16LadderFlatY150_eq]
        unfold seg16LadderFlatY150
        linear_combination -r4923
      unfold seg16AccY151
      linear_combination hd
    have hd0 : rho 17485 * rho 17486 = rho 17496 := by linear_combination r4924
    have hd1 : rho 17485 * rho 17485 = rho 17497 := by linear_combination r4925
    have hd2 : rho 17486 * rho 17486 = rho 17498 := by linear_combination r4926
    have hd3 : rho 17499 * (rho 17486 * rho 17486 + rho 17485 * rho 17485 * (-1)) = 2 * (rho 17485 * rho 17486) := by
      rw [hd0, hd1, hd2]
      linear_combination r4927
    have hd4 : rho 17500 * (2 - (rho 17486 * rho 17486 + rho 17485 * rho 17485 * (-1))) = rho 17486 * rho 17486 - rho 17485 * rho 17485 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4928
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX150 rho : Seg16.F), (seg16AccY150 rho : Seg16.F)⟩
      ⟨(rho 17485 : Seg16.F), (rho 17486 : Seg16.F)⟩
      ⟨(rho 17492 : Seg16.F), (rho 17493 : Seg16.F)⟩
      ⟨(seg16AccX151 rho : Seg16.F), (seg16AccY151 rho : Seg16.F)⟩
      ⟨(rho 17499 : Seg16.F), (rho 17500 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung150

theorem seg16_rung151 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15443 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX151 rho : Seg16.F), (seg16AccY151 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17499 : Seg16.F), (rho 17500 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX151 rho : Seg16.F), (seg16AccY151 rho : Seg16.F)⟩
        ⟨(rho 17499 : Seg16.F), (rho 17500 : Seg16.F)⟩
        ⟨(seg16AccX152 rho : Seg16.F), (seg16AccY152 rho : Seg16.F)⟩
        ⟨(rho 17513 : Seg16.F), (rho 17514 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart61 at p61
  rcases p61 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4929, r4930, r4931, r4932, r4933, r4934, r4935, r4936, r4937, r4938, r4939, r4940, r4941, r4942, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow4929 Seg16.relationLc790 Seg16.relationLc790Part0 Seg16.relationLc790Part1 Seg16.relationLc790Part2 Seg16.relationLc790Part3 Seg16.relationLc790Part4 Seg16.relationLc790Part5 Seg16.relationLc790Part6 Seg16.relationLc790Part7 Seg16.relationLc790Part8 Seg16.relationLc790Part9 at r4929
  unfold Seg16.relationRow4930 at r4930
  unfold Seg16.relationRow4931 Seg16.relationLc791 Seg16.relationLc791Part0 Seg16.relationLc791Part1 Seg16.relationLc791Part2 Seg16.relationLc791Part3 Seg16.relationLc791Part4 at r4931
  unfold Seg16.relationRow4932 Seg16.relationLc792 Seg16.relationLc792Part0 Seg16.relationLc792Part1 Seg16.relationLc792Part2 Seg16.relationLc792Part3 Seg16.relationLc792Part4 at r4932
  unfold Seg16.relationRow4933 at r4933
  unfold Seg16.relationRow4934 at r4934
  unfold Seg16.relationRow4935 at r4935
  unfold Seg16.relationRow4936 Seg16.relationLc793 Seg16.relationLc793Part0 Seg16.relationLc793Part1 Seg16.relationLc793Part2 Seg16.relationLc793Part3 Seg16.relationLc793Part4 at r4936
  unfold Seg16.relationRow4937 Seg16.relationLc794 Seg16.relationLc794Part0 Seg16.relationLc794Part1 Seg16.relationLc794Part2 Seg16.relationLc794Part3 Seg16.relationLc794Part4 at r4937
  unfold Seg16.relationRow4938 at r4938
  unfold Seg16.relationRow4939 at r4939
  unfold Seg16.relationRow4940 at r4940
  unfold Seg16.relationRow4941 at r4941
  unfold Seg16.relationRow4942 at r4942
  have hrung151 (bit : Bool) (hbit : rho 15443 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX151 rho : Seg16.F), (seg16AccY151 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17499 : Seg16.F), (rho 17500 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX151 rho : Seg16.F), (seg16AccY151 rho : Seg16.F)⟩
        ⟨(rho 17499 : Seg16.F), (rho 17500 : Seg16.F)⟩
        ⟨(seg16AccX152 rho : Seg16.F), (seg16AccY152 rho : Seg16.F)⟩
        ⟨(rho 17513 : Seg16.F), (rho 17514 : Seg16.F)⟩ := by
    have hsum : seg16AccX151 rho + seg16AccY151 rho = rho 17501 := by
      rw [seg16LadderFlatX151_eq, seg16LadderFlatY151_eq]
      unfold seg16LadderFlatX151 seg16LadderFlatY151
      linear_combination r4929
    have ha0 : (rho 17499 + rho 17500) * (seg16AccX151 rho + seg16AccY151 rho) = rho 17502 := by
      rw [hsum]
      linear_combination r4930
    have ha1 : rho 17500 * seg16AccX151 rho = rho 17503 := by
      rw [seg16LadderFlatX151_eq]
      unfold seg16LadderFlatX151
      linear_combination r4931
    have ha2 : rho 17499 * seg16AccY151 rho = rho 17504 := by
      rw [seg16LadderFlatY151_eq]
      unfold seg16LadderFlatY151
      linear_combination r4932
    have ha3 : 3021 * rho 17503 * rho 17504 = rho 17505 := by
      linear_combination r4933
    have ha4 : rho 17506 * (1 + rho 17505) = rho 17503 + rho 17504 := by
      linear_combination r4934
    have ha5 : rho 17507 * (1 - rho 17505) = rho 17502 - rho 17503 - rho 17504 := by
      linear_combination r4935
    have haddx :
        rho 17506 * (1 + 3021 * (rho 17500 * seg16AccX151 rho) * (rho 17499 * seg16AccY151 rho)) =
          rho 17500 * seg16AccX151 rho + rho 17499 * seg16AccY151 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17507 * (1 - 3021 * (rho 17500 * seg16AccX151 rho) * (rho 17499 * seg16AccY151 rho)) =
          (-1) * (rho 17500 * seg16AccX151 rho) - rho 17499 * seg16AccY151 rho +
            (seg16AccY151 rho - seg16AccX151 rho * (-1)) * (rho 17499 + rho 17500) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17507 * (1 - rho 17505) = rho 17502 - rho 17503 - rho 17504 := ha5
        _ = (-1) * rho 17503 - rho 17504 + (seg16AccY151 rho - seg16AccX151 rho * (-1)) * (rho 17499 + rho 17500) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX152 rho = seg16AccX151 rho - Bool.toZMod bit * (seg16AccX151 rho - rho 17506) := by
      have hd : rho 17508 = Bool.toZMod bit * (rho 17506 - seg16AccX151 rho) := by
        rw [← hbit, seg16LadderFlatX151_eq]
        unfold seg16LadderFlatX151
        linear_combination -r4936
      unfold seg16AccX152
      linear_combination hd
    have hsely : seg16AccY152 rho = seg16AccY151 rho - Bool.toZMod bit * (seg16AccY151 rho - rho 17507) := by
      have hd : rho 17509 = Bool.toZMod bit * (rho 17507 - seg16AccY151 rho) := by
        rw [← hbit, seg16LadderFlatY151_eq]
        unfold seg16LadderFlatY151
        linear_combination -r4937
      unfold seg16AccY152
      linear_combination hd
    have hd0 : rho 17499 * rho 17500 = rho 17510 := by linear_combination r4938
    have hd1 : rho 17499 * rho 17499 = rho 17511 := by linear_combination r4939
    have hd2 : rho 17500 * rho 17500 = rho 17512 := by linear_combination r4940
    have hd3 : rho 17513 * (rho 17500 * rho 17500 + rho 17499 * rho 17499 * (-1)) = 2 * (rho 17499 * rho 17500) := by
      rw [hd0, hd1, hd2]
      linear_combination r4941
    have hd4 : rho 17514 * (2 - (rho 17500 * rho 17500 + rho 17499 * rho 17499 * (-1))) = rho 17500 * rho 17500 - rho 17499 * rho 17499 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4942
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX151 rho : Seg16.F), (seg16AccY151 rho : Seg16.F)⟩
      ⟨(rho 17499 : Seg16.F), (rho 17500 : Seg16.F)⟩
      ⟨(rho 17506 : Seg16.F), (rho 17507 : Seg16.F)⟩
      ⟨(seg16AccX152 rho : Seg16.F), (seg16AccY152 rho : Seg16.F)⟩
      ⟨(rho 17513 : Seg16.F), (rho 17514 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung151

theorem seg16_rung152 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15444 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX152 rho : Seg16.F), (seg16AccY152 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17513 : Seg16.F), (rho 17514 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX152 rho : Seg16.F), (seg16AccY152 rho : Seg16.F)⟩
        ⟨(rho 17513 : Seg16.F), (rho 17514 : Seg16.F)⟩
        ⟨(seg16AccX153 rho : Seg16.F), (seg16AccY153 rho : Seg16.F)⟩
        ⟨(rho 17527 : Seg16.F), (rho 17528 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart61 at p61
  rcases p61 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4943, r4944, r4945, r4946, r4947, r4948, r4949, r4950, r4951, r4952, r4953, r4954, r4955, r4956, _, _, _⟩
  unfold Seg16.relationRow4943 Seg16.relationLc795 Seg16.relationLc795Part0 Seg16.relationLc795Part1 Seg16.relationLc795Part2 Seg16.relationLc795Part3 Seg16.relationLc795Part4 Seg16.relationLc795Part5 Seg16.relationLc795Part6 Seg16.relationLc795Part7 Seg16.relationLc795Part8 Seg16.relationLc795Part9 at r4943
  unfold Seg16.relationRow4944 at r4944
  unfold Seg16.relationRow4945 Seg16.relationLc796 Seg16.relationLc796Part0 Seg16.relationLc796Part1 Seg16.relationLc796Part2 Seg16.relationLc796Part3 Seg16.relationLc796Part4 at r4945
  unfold Seg16.relationRow4946 Seg16.relationLc797 Seg16.relationLc797Part0 Seg16.relationLc797Part1 Seg16.relationLc797Part2 Seg16.relationLc797Part3 Seg16.relationLc797Part4 at r4946
  unfold Seg16.relationRow4947 at r4947
  unfold Seg16.relationRow4948 at r4948
  unfold Seg16.relationRow4949 at r4949
  unfold Seg16.relationRow4950 Seg16.relationLc798 Seg16.relationLc798Part0 Seg16.relationLc798Part1 Seg16.relationLc798Part2 Seg16.relationLc798Part3 Seg16.relationLc798Part4 at r4950
  unfold Seg16.relationRow4951 Seg16.relationLc799 Seg16.relationLc799Part0 Seg16.relationLc799Part1 Seg16.relationLc799Part2 Seg16.relationLc799Part3 Seg16.relationLc799Part4 at r4951
  unfold Seg16.relationRow4952 at r4952
  unfold Seg16.relationRow4953 at r4953
  unfold Seg16.relationRow4954 at r4954
  unfold Seg16.relationRow4955 at r4955
  unfold Seg16.relationRow4956 at r4956
  have hrung152 (bit : Bool) (hbit : rho 15444 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX152 rho : Seg16.F), (seg16AccY152 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17513 : Seg16.F), (rho 17514 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX152 rho : Seg16.F), (seg16AccY152 rho : Seg16.F)⟩
        ⟨(rho 17513 : Seg16.F), (rho 17514 : Seg16.F)⟩
        ⟨(seg16AccX153 rho : Seg16.F), (seg16AccY153 rho : Seg16.F)⟩
        ⟨(rho 17527 : Seg16.F), (rho 17528 : Seg16.F)⟩ := by
    have hsum : seg16AccX152 rho + seg16AccY152 rho = rho 17515 := by
      rw [seg16LadderFlatX152_eq, seg16LadderFlatY152_eq]
      unfold seg16LadderFlatX152 seg16LadderFlatY152
      linear_combination r4943
    have ha0 : (rho 17513 + rho 17514) * (seg16AccX152 rho + seg16AccY152 rho) = rho 17516 := by
      rw [hsum]
      linear_combination r4944
    have ha1 : rho 17514 * seg16AccX152 rho = rho 17517 := by
      rw [seg16LadderFlatX152_eq]
      unfold seg16LadderFlatX152
      linear_combination r4945
    have ha2 : rho 17513 * seg16AccY152 rho = rho 17518 := by
      rw [seg16LadderFlatY152_eq]
      unfold seg16LadderFlatY152
      linear_combination r4946
    have ha3 : 3021 * rho 17517 * rho 17518 = rho 17519 := by
      linear_combination r4947
    have ha4 : rho 17520 * (1 + rho 17519) = rho 17517 + rho 17518 := by
      linear_combination r4948
    have ha5 : rho 17521 * (1 - rho 17519) = rho 17516 - rho 17517 - rho 17518 := by
      linear_combination r4949
    have haddx :
        rho 17520 * (1 + 3021 * (rho 17514 * seg16AccX152 rho) * (rho 17513 * seg16AccY152 rho)) =
          rho 17514 * seg16AccX152 rho + rho 17513 * seg16AccY152 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17521 * (1 - 3021 * (rho 17514 * seg16AccX152 rho) * (rho 17513 * seg16AccY152 rho)) =
          (-1) * (rho 17514 * seg16AccX152 rho) - rho 17513 * seg16AccY152 rho +
            (seg16AccY152 rho - seg16AccX152 rho * (-1)) * (rho 17513 + rho 17514) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17521 * (1 - rho 17519) = rho 17516 - rho 17517 - rho 17518 := ha5
        _ = (-1) * rho 17517 - rho 17518 + (seg16AccY152 rho - seg16AccX152 rho * (-1)) * (rho 17513 + rho 17514) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX153 rho = seg16AccX152 rho - Bool.toZMod bit * (seg16AccX152 rho - rho 17520) := by
      have hd : rho 17522 = Bool.toZMod bit * (rho 17520 - seg16AccX152 rho) := by
        rw [← hbit, seg16LadderFlatX152_eq]
        unfold seg16LadderFlatX152
        linear_combination -r4950
      unfold seg16AccX153
      linear_combination hd
    have hsely : seg16AccY153 rho = seg16AccY152 rho - Bool.toZMod bit * (seg16AccY152 rho - rho 17521) := by
      have hd : rho 17523 = Bool.toZMod bit * (rho 17521 - seg16AccY152 rho) := by
        rw [← hbit, seg16LadderFlatY152_eq]
        unfold seg16LadderFlatY152
        linear_combination -r4951
      unfold seg16AccY153
      linear_combination hd
    have hd0 : rho 17513 * rho 17514 = rho 17524 := by linear_combination r4952
    have hd1 : rho 17513 * rho 17513 = rho 17525 := by linear_combination r4953
    have hd2 : rho 17514 * rho 17514 = rho 17526 := by linear_combination r4954
    have hd3 : rho 17527 * (rho 17514 * rho 17514 + rho 17513 * rho 17513 * (-1)) = 2 * (rho 17513 * rho 17514) := by
      rw [hd0, hd1, hd2]
      linear_combination r4955
    have hd4 : rho 17528 * (2 - (rho 17514 * rho 17514 + rho 17513 * rho 17513 * (-1))) = rho 17514 * rho 17514 - rho 17513 * rho 17513 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4956
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX152 rho : Seg16.F), (seg16AccY152 rho : Seg16.F)⟩
      ⟨(rho 17513 : Seg16.F), (rho 17514 : Seg16.F)⟩
      ⟨(rho 17520 : Seg16.F), (rho 17521 : Seg16.F)⟩
      ⟨(seg16AccX153 rho : Seg16.F), (seg16AccY153 rho : Seg16.F)⟩
      ⟨(rho 17527 : Seg16.F), (rho 17528 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung152

theorem seg16_rung153 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15445 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX153 rho : Seg16.F), (seg16AccY153 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17527 : Seg16.F), (rho 17528 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX153 rho : Seg16.F), (seg16AccY153 rho : Seg16.F)⟩
        ⟨(rho 17527 : Seg16.F), (rho 17528 : Seg16.F)⟩
        ⟨(seg16AccX154 rho : Seg16.F), (seg16AccY154 rho : Seg16.F)⟩
        ⟨(rho 17541 : Seg16.F), (rho 17542 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart61 at p61
  rcases p61 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4957, r4958, r4959⟩
  unfold Seg16.relationPart62 at p62
  rcases p62 with ⟨r4960, r4961, r4962, r4963, r4964, r4965, r4966, r4967, r4968, r4969, r4970, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow4957 Seg16.relationLc800 Seg16.relationLc800Part0 Seg16.relationLc800Part1 Seg16.relationLc800Part2 Seg16.relationLc800Part3 Seg16.relationLc800Part4 Seg16.relationLc800Part5 Seg16.relationLc800Part6 Seg16.relationLc800Part7 Seg16.relationLc800Part8 Seg16.relationLc800Part9 at r4957
  unfold Seg16.relationRow4958 at r4958
  unfold Seg16.relationRow4959 Seg16.relationLc801 Seg16.relationLc801Part0 Seg16.relationLc801Part1 Seg16.relationLc801Part2 Seg16.relationLc801Part3 Seg16.relationLc801Part4 at r4959
  unfold Seg16.relationRow4960 Seg16.relationLc802 Seg16.relationLc802Part0 Seg16.relationLc802Part1 Seg16.relationLc802Part2 Seg16.relationLc802Part3 Seg16.relationLc802Part4 at r4960
  unfold Seg16.relationRow4961 at r4961
  unfold Seg16.relationRow4962 at r4962
  unfold Seg16.relationRow4963 at r4963
  unfold Seg16.relationRow4964 Seg16.relationLc803 Seg16.relationLc803Part0 Seg16.relationLc803Part1 Seg16.relationLc803Part2 Seg16.relationLc803Part3 Seg16.relationLc803Part4 at r4964
  unfold Seg16.relationRow4965 Seg16.relationLc804 Seg16.relationLc804Part0 Seg16.relationLc804Part1 Seg16.relationLc804Part2 Seg16.relationLc804Part3 Seg16.relationLc804Part4 at r4965
  unfold Seg16.relationRow4966 at r4966
  unfold Seg16.relationRow4967 at r4967
  unfold Seg16.relationRow4968 at r4968
  unfold Seg16.relationRow4969 at r4969
  unfold Seg16.relationRow4970 at r4970
  have hrung153 (bit : Bool) (hbit : rho 15445 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX153 rho : Seg16.F), (seg16AccY153 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17527 : Seg16.F), (rho 17528 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX153 rho : Seg16.F), (seg16AccY153 rho : Seg16.F)⟩
        ⟨(rho 17527 : Seg16.F), (rho 17528 : Seg16.F)⟩
        ⟨(seg16AccX154 rho : Seg16.F), (seg16AccY154 rho : Seg16.F)⟩
        ⟨(rho 17541 : Seg16.F), (rho 17542 : Seg16.F)⟩ := by
    have hsum : seg16AccX153 rho + seg16AccY153 rho = rho 17529 := by
      rw [seg16LadderFlatX153_eq, seg16LadderFlatY153_eq]
      unfold seg16LadderFlatX153 seg16LadderFlatY153
      linear_combination r4957
    have ha0 : (rho 17527 + rho 17528) * (seg16AccX153 rho + seg16AccY153 rho) = rho 17530 := by
      rw [hsum]
      linear_combination r4958
    have ha1 : rho 17528 * seg16AccX153 rho = rho 17531 := by
      rw [seg16LadderFlatX153_eq]
      unfold seg16LadderFlatX153
      linear_combination r4959
    have ha2 : rho 17527 * seg16AccY153 rho = rho 17532 := by
      rw [seg16LadderFlatY153_eq]
      unfold seg16LadderFlatY153
      linear_combination r4960
    have ha3 : 3021 * rho 17531 * rho 17532 = rho 17533 := by
      linear_combination r4961
    have ha4 : rho 17534 * (1 + rho 17533) = rho 17531 + rho 17532 := by
      linear_combination r4962
    have ha5 : rho 17535 * (1 - rho 17533) = rho 17530 - rho 17531 - rho 17532 := by
      linear_combination r4963
    have haddx :
        rho 17534 * (1 + 3021 * (rho 17528 * seg16AccX153 rho) * (rho 17527 * seg16AccY153 rho)) =
          rho 17528 * seg16AccX153 rho + rho 17527 * seg16AccY153 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17535 * (1 - 3021 * (rho 17528 * seg16AccX153 rho) * (rho 17527 * seg16AccY153 rho)) =
          (-1) * (rho 17528 * seg16AccX153 rho) - rho 17527 * seg16AccY153 rho +
            (seg16AccY153 rho - seg16AccX153 rho * (-1)) * (rho 17527 + rho 17528) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17535 * (1 - rho 17533) = rho 17530 - rho 17531 - rho 17532 := ha5
        _ = (-1) * rho 17531 - rho 17532 + (seg16AccY153 rho - seg16AccX153 rho * (-1)) * (rho 17527 + rho 17528) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX154 rho = seg16AccX153 rho - Bool.toZMod bit * (seg16AccX153 rho - rho 17534) := by
      have hd : rho 17536 = Bool.toZMod bit * (rho 17534 - seg16AccX153 rho) := by
        rw [← hbit, seg16LadderFlatX153_eq]
        unfold seg16LadderFlatX153
        linear_combination -r4964
      unfold seg16AccX154
      linear_combination hd
    have hsely : seg16AccY154 rho = seg16AccY153 rho - Bool.toZMod bit * (seg16AccY153 rho - rho 17535) := by
      have hd : rho 17537 = Bool.toZMod bit * (rho 17535 - seg16AccY153 rho) := by
        rw [← hbit, seg16LadderFlatY153_eq]
        unfold seg16LadderFlatY153
        linear_combination -r4965
      unfold seg16AccY154
      linear_combination hd
    have hd0 : rho 17527 * rho 17528 = rho 17538 := by linear_combination r4966
    have hd1 : rho 17527 * rho 17527 = rho 17539 := by linear_combination r4967
    have hd2 : rho 17528 * rho 17528 = rho 17540 := by linear_combination r4968
    have hd3 : rho 17541 * (rho 17528 * rho 17528 + rho 17527 * rho 17527 * (-1)) = 2 * (rho 17527 * rho 17528) := by
      rw [hd0, hd1, hd2]
      linear_combination r4969
    have hd4 : rho 17542 * (2 - (rho 17528 * rho 17528 + rho 17527 * rho 17527 * (-1))) = rho 17528 * rho 17528 - rho 17527 * rho 17527 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4970
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX153 rho : Seg16.F), (seg16AccY153 rho : Seg16.F)⟩
      ⟨(rho 17527 : Seg16.F), (rho 17528 : Seg16.F)⟩
      ⟨(rho 17534 : Seg16.F), (rho 17535 : Seg16.F)⟩
      ⟨(seg16AccX154 rho : Seg16.F), (seg16AccY154 rho : Seg16.F)⟩
      ⟨(rho 17541 : Seg16.F), (rho 17542 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung153

theorem seg16_rung154 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15446 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX154 rho : Seg16.F), (seg16AccY154 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17541 : Seg16.F), (rho 17542 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX154 rho : Seg16.F), (seg16AccY154 rho : Seg16.F)⟩
        ⟨(rho 17541 : Seg16.F), (rho 17542 : Seg16.F)⟩
        ⟨(seg16AccX155 rho : Seg16.F), (seg16AccY155 rho : Seg16.F)⟩
        ⟨(rho 17555 : Seg16.F), (rho 17556 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart62 at p62
  rcases p62 with ⟨_, _, _, _, _, _, _, _, _, _, _, r4971, r4972, r4973, r4974, r4975, r4976, r4977, r4978, r4979, r4980, r4981, r4982, r4983, r4984, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow4971 Seg16.relationLc805 Seg16.relationLc805Part0 Seg16.relationLc805Part1 Seg16.relationLc805Part2 Seg16.relationLc805Part3 Seg16.relationLc805Part4 Seg16.relationLc805Part5 Seg16.relationLc805Part6 Seg16.relationLc805Part7 Seg16.relationLc805Part8 Seg16.relationLc805Part9 at r4971
  unfold Seg16.relationRow4972 at r4972
  unfold Seg16.relationRow4973 Seg16.relationLc806 Seg16.relationLc806Part0 Seg16.relationLc806Part1 Seg16.relationLc806Part2 Seg16.relationLc806Part3 Seg16.relationLc806Part4 at r4973
  unfold Seg16.relationRow4974 Seg16.relationLc807 Seg16.relationLc807Part0 Seg16.relationLc807Part1 Seg16.relationLc807Part2 Seg16.relationLc807Part3 Seg16.relationLc807Part4 at r4974
  unfold Seg16.relationRow4975 at r4975
  unfold Seg16.relationRow4976 at r4976
  unfold Seg16.relationRow4977 at r4977
  unfold Seg16.relationRow4978 Seg16.relationLc808 Seg16.relationLc808Part0 Seg16.relationLc808Part1 Seg16.relationLc808Part2 Seg16.relationLc808Part3 Seg16.relationLc808Part4 at r4978
  unfold Seg16.relationRow4979 Seg16.relationLc809 Seg16.relationLc809Part0 Seg16.relationLc809Part1 Seg16.relationLc809Part2 Seg16.relationLc809Part3 Seg16.relationLc809Part4 at r4979
  unfold Seg16.relationRow4980 at r4980
  unfold Seg16.relationRow4981 at r4981
  unfold Seg16.relationRow4982 at r4982
  unfold Seg16.relationRow4983 at r4983
  unfold Seg16.relationRow4984 at r4984
  have hrung154 (bit : Bool) (hbit : rho 15446 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX154 rho : Seg16.F), (seg16AccY154 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17541 : Seg16.F), (rho 17542 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX154 rho : Seg16.F), (seg16AccY154 rho : Seg16.F)⟩
        ⟨(rho 17541 : Seg16.F), (rho 17542 : Seg16.F)⟩
        ⟨(seg16AccX155 rho : Seg16.F), (seg16AccY155 rho : Seg16.F)⟩
        ⟨(rho 17555 : Seg16.F), (rho 17556 : Seg16.F)⟩ := by
    have hsum : seg16AccX154 rho + seg16AccY154 rho = rho 17543 := by
      rw [seg16LadderFlatX154_eq, seg16LadderFlatY154_eq]
      unfold seg16LadderFlatX154 seg16LadderFlatY154
      linear_combination r4971
    have ha0 : (rho 17541 + rho 17542) * (seg16AccX154 rho + seg16AccY154 rho) = rho 17544 := by
      rw [hsum]
      linear_combination r4972
    have ha1 : rho 17542 * seg16AccX154 rho = rho 17545 := by
      rw [seg16LadderFlatX154_eq]
      unfold seg16LadderFlatX154
      linear_combination r4973
    have ha2 : rho 17541 * seg16AccY154 rho = rho 17546 := by
      rw [seg16LadderFlatY154_eq]
      unfold seg16LadderFlatY154
      linear_combination r4974
    have ha3 : 3021 * rho 17545 * rho 17546 = rho 17547 := by
      linear_combination r4975
    have ha4 : rho 17548 * (1 + rho 17547) = rho 17545 + rho 17546 := by
      linear_combination r4976
    have ha5 : rho 17549 * (1 - rho 17547) = rho 17544 - rho 17545 - rho 17546 := by
      linear_combination r4977
    have haddx :
        rho 17548 * (1 + 3021 * (rho 17542 * seg16AccX154 rho) * (rho 17541 * seg16AccY154 rho)) =
          rho 17542 * seg16AccX154 rho + rho 17541 * seg16AccY154 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17549 * (1 - 3021 * (rho 17542 * seg16AccX154 rho) * (rho 17541 * seg16AccY154 rho)) =
          (-1) * (rho 17542 * seg16AccX154 rho) - rho 17541 * seg16AccY154 rho +
            (seg16AccY154 rho - seg16AccX154 rho * (-1)) * (rho 17541 + rho 17542) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17549 * (1 - rho 17547) = rho 17544 - rho 17545 - rho 17546 := ha5
        _ = (-1) * rho 17545 - rho 17546 + (seg16AccY154 rho - seg16AccX154 rho * (-1)) * (rho 17541 + rho 17542) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX155 rho = seg16AccX154 rho - Bool.toZMod bit * (seg16AccX154 rho - rho 17548) := by
      have hd : rho 17550 = Bool.toZMod bit * (rho 17548 - seg16AccX154 rho) := by
        rw [← hbit, seg16LadderFlatX154_eq]
        unfold seg16LadderFlatX154
        linear_combination -r4978
      unfold seg16AccX155
      linear_combination hd
    have hsely : seg16AccY155 rho = seg16AccY154 rho - Bool.toZMod bit * (seg16AccY154 rho - rho 17549) := by
      have hd : rho 17551 = Bool.toZMod bit * (rho 17549 - seg16AccY154 rho) := by
        rw [← hbit, seg16LadderFlatY154_eq]
        unfold seg16LadderFlatY154
        linear_combination -r4979
      unfold seg16AccY155
      linear_combination hd
    have hd0 : rho 17541 * rho 17542 = rho 17552 := by linear_combination r4980
    have hd1 : rho 17541 * rho 17541 = rho 17553 := by linear_combination r4981
    have hd2 : rho 17542 * rho 17542 = rho 17554 := by linear_combination r4982
    have hd3 : rho 17555 * (rho 17542 * rho 17542 + rho 17541 * rho 17541 * (-1)) = 2 * (rho 17541 * rho 17542) := by
      rw [hd0, hd1, hd2]
      linear_combination r4983
    have hd4 : rho 17556 * (2 - (rho 17542 * rho 17542 + rho 17541 * rho 17541 * (-1))) = rho 17542 * rho 17542 - rho 17541 * rho 17541 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4984
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX154 rho : Seg16.F), (seg16AccY154 rho : Seg16.F)⟩
      ⟨(rho 17541 : Seg16.F), (rho 17542 : Seg16.F)⟩
      ⟨(rho 17548 : Seg16.F), (rho 17549 : Seg16.F)⟩
      ⟨(seg16AccX155 rho : Seg16.F), (seg16AccY155 rho : Seg16.F)⟩
      ⟨(rho 17555 : Seg16.F), (rho 17556 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung154

theorem seg16_rung155 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15447 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX155 rho : Seg16.F), (seg16AccY155 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17555 : Seg16.F), (rho 17556 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX155 rho : Seg16.F), (seg16AccY155 rho : Seg16.F)⟩
        ⟨(rho 17555 : Seg16.F), (rho 17556 : Seg16.F)⟩
        ⟨(seg16AccX156 rho : Seg16.F), (seg16AccY156 rho : Seg16.F)⟩
        ⟨(rho 17569 : Seg16.F), (rho 17570 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart62 at p62
  rcases p62 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4985, r4986, r4987, r4988, r4989, r4990, r4991, r4992, r4993, r4994, r4995, r4996, r4997, r4998, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow4985 Seg16.relationLc810 Seg16.relationLc810Part0 Seg16.relationLc810Part1 Seg16.relationLc810Part2 Seg16.relationLc810Part3 Seg16.relationLc810Part4 Seg16.relationLc810Part5 Seg16.relationLc810Part6 Seg16.relationLc810Part7 Seg16.relationLc810Part8 Seg16.relationLc810Part9 at r4985
  unfold Seg16.relationRow4986 at r4986
  unfold Seg16.relationRow4987 Seg16.relationLc811 Seg16.relationLc811Part0 Seg16.relationLc811Part1 Seg16.relationLc811Part2 Seg16.relationLc811Part3 Seg16.relationLc811Part4 at r4987
  unfold Seg16.relationRow4988 Seg16.relationLc812 Seg16.relationLc812Part0 Seg16.relationLc812Part1 Seg16.relationLc812Part2 Seg16.relationLc812Part3 Seg16.relationLc812Part4 at r4988
  unfold Seg16.relationRow4989 at r4989
  unfold Seg16.relationRow4990 at r4990
  unfold Seg16.relationRow4991 at r4991
  unfold Seg16.relationRow4992 Seg16.relationLc813 Seg16.relationLc813Part0 Seg16.relationLc813Part1 Seg16.relationLc813Part2 Seg16.relationLc813Part3 Seg16.relationLc813Part4 at r4992
  unfold Seg16.relationRow4993 Seg16.relationLc814 Seg16.relationLc814Part0 Seg16.relationLc814Part1 Seg16.relationLc814Part2 Seg16.relationLc814Part3 Seg16.relationLc814Part4 at r4993
  unfold Seg16.relationRow4994 at r4994
  unfold Seg16.relationRow4995 at r4995
  unfold Seg16.relationRow4996 at r4996
  unfold Seg16.relationRow4997 at r4997
  unfold Seg16.relationRow4998 at r4998
  have hrung155 (bit : Bool) (hbit : rho 15447 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX155 rho : Seg16.F), (seg16AccY155 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17555 : Seg16.F), (rho 17556 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX155 rho : Seg16.F), (seg16AccY155 rho : Seg16.F)⟩
        ⟨(rho 17555 : Seg16.F), (rho 17556 : Seg16.F)⟩
        ⟨(seg16AccX156 rho : Seg16.F), (seg16AccY156 rho : Seg16.F)⟩
        ⟨(rho 17569 : Seg16.F), (rho 17570 : Seg16.F)⟩ := by
    have hsum : seg16AccX155 rho + seg16AccY155 rho = rho 17557 := by
      rw [seg16LadderFlatX155_eq, seg16LadderFlatY155_eq]
      unfold seg16LadderFlatX155 seg16LadderFlatY155
      linear_combination r4985
    have ha0 : (rho 17555 + rho 17556) * (seg16AccX155 rho + seg16AccY155 rho) = rho 17558 := by
      rw [hsum]
      linear_combination r4986
    have ha1 : rho 17556 * seg16AccX155 rho = rho 17559 := by
      rw [seg16LadderFlatX155_eq]
      unfold seg16LadderFlatX155
      linear_combination r4987
    have ha2 : rho 17555 * seg16AccY155 rho = rho 17560 := by
      rw [seg16LadderFlatY155_eq]
      unfold seg16LadderFlatY155
      linear_combination r4988
    have ha3 : 3021 * rho 17559 * rho 17560 = rho 17561 := by
      linear_combination r4989
    have ha4 : rho 17562 * (1 + rho 17561) = rho 17559 + rho 17560 := by
      linear_combination r4990
    have ha5 : rho 17563 * (1 - rho 17561) = rho 17558 - rho 17559 - rho 17560 := by
      linear_combination r4991
    have haddx :
        rho 17562 * (1 + 3021 * (rho 17556 * seg16AccX155 rho) * (rho 17555 * seg16AccY155 rho)) =
          rho 17556 * seg16AccX155 rho + rho 17555 * seg16AccY155 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17563 * (1 - 3021 * (rho 17556 * seg16AccX155 rho) * (rho 17555 * seg16AccY155 rho)) =
          (-1) * (rho 17556 * seg16AccX155 rho) - rho 17555 * seg16AccY155 rho +
            (seg16AccY155 rho - seg16AccX155 rho * (-1)) * (rho 17555 + rho 17556) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17563 * (1 - rho 17561) = rho 17558 - rho 17559 - rho 17560 := ha5
        _ = (-1) * rho 17559 - rho 17560 + (seg16AccY155 rho - seg16AccX155 rho * (-1)) * (rho 17555 + rho 17556) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX156 rho = seg16AccX155 rho - Bool.toZMod bit * (seg16AccX155 rho - rho 17562) := by
      have hd : rho 17564 = Bool.toZMod bit * (rho 17562 - seg16AccX155 rho) := by
        rw [← hbit, seg16LadderFlatX155_eq]
        unfold seg16LadderFlatX155
        linear_combination -r4992
      unfold seg16AccX156
      linear_combination hd
    have hsely : seg16AccY156 rho = seg16AccY155 rho - Bool.toZMod bit * (seg16AccY155 rho - rho 17563) := by
      have hd : rho 17565 = Bool.toZMod bit * (rho 17563 - seg16AccY155 rho) := by
        rw [← hbit, seg16LadderFlatY155_eq]
        unfold seg16LadderFlatY155
        linear_combination -r4993
      unfold seg16AccY156
      linear_combination hd
    have hd0 : rho 17555 * rho 17556 = rho 17566 := by linear_combination r4994
    have hd1 : rho 17555 * rho 17555 = rho 17567 := by linear_combination r4995
    have hd2 : rho 17556 * rho 17556 = rho 17568 := by linear_combination r4996
    have hd3 : rho 17569 * (rho 17556 * rho 17556 + rho 17555 * rho 17555 * (-1)) = 2 * (rho 17555 * rho 17556) := by
      rw [hd0, hd1, hd2]
      linear_combination r4997
    have hd4 : rho 17570 * (2 - (rho 17556 * rho 17556 + rho 17555 * rho 17555 * (-1))) = rho 17556 * rho 17556 - rho 17555 * rho 17555 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4998
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX155 rho : Seg16.F), (seg16AccY155 rho : Seg16.F)⟩
      ⟨(rho 17555 : Seg16.F), (rho 17556 : Seg16.F)⟩
      ⟨(rho 17562 : Seg16.F), (rho 17563 : Seg16.F)⟩
      ⟨(seg16AccX156 rho : Seg16.F), (seg16AccY156 rho : Seg16.F)⟩
      ⟨(rho 17569 : Seg16.F), (rho 17570 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung155

theorem seg16_rung156 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15448 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX156 rho : Seg16.F), (seg16AccY156 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17569 : Seg16.F), (rho 17570 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX156 rho : Seg16.F), (seg16AccY156 rho : Seg16.F)⟩
        ⟨(rho 17569 : Seg16.F), (rho 17570 : Seg16.F)⟩
        ⟨(seg16AccX157 rho : Seg16.F), (seg16AccY157 rho : Seg16.F)⟩
        ⟨(rho 17583 : Seg16.F), (rho 17584 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart62 at p62
  rcases p62 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4999, r5000, r5001, r5002, r5003, r5004, r5005, r5006, r5007, r5008, r5009, r5010, r5011, r5012, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow4999 Seg16.relationLc815 Seg16.relationLc815Part0 Seg16.relationLc815Part1 Seg16.relationLc815Part2 Seg16.relationLc815Part3 Seg16.relationLc815Part4 Seg16.relationLc815Part5 Seg16.relationLc815Part6 Seg16.relationLc815Part7 Seg16.relationLc815Part8 Seg16.relationLc815Part9 at r4999
  unfold Seg16.relationRow5000 at r5000
  unfold Seg16.relationRow5001 Seg16.relationLc816 Seg16.relationLc816Part0 Seg16.relationLc816Part1 Seg16.relationLc816Part2 Seg16.relationLc816Part3 Seg16.relationLc816Part4 at r5001
  unfold Seg16.relationRow5002 Seg16.relationLc817 Seg16.relationLc817Part0 Seg16.relationLc817Part1 Seg16.relationLc817Part2 Seg16.relationLc817Part3 Seg16.relationLc817Part4 at r5002
  unfold Seg16.relationRow5003 at r5003
  unfold Seg16.relationRow5004 at r5004
  unfold Seg16.relationRow5005 at r5005
  unfold Seg16.relationRow5006 Seg16.relationLc818 Seg16.relationLc818Part0 Seg16.relationLc818Part1 Seg16.relationLc818Part2 Seg16.relationLc818Part3 Seg16.relationLc818Part4 at r5006
  unfold Seg16.relationRow5007 Seg16.relationLc819 Seg16.relationLc819Part0 Seg16.relationLc819Part1 Seg16.relationLc819Part2 Seg16.relationLc819Part3 Seg16.relationLc819Part4 at r5007
  unfold Seg16.relationRow5008 at r5008
  unfold Seg16.relationRow5009 at r5009
  unfold Seg16.relationRow5010 at r5010
  unfold Seg16.relationRow5011 at r5011
  unfold Seg16.relationRow5012 at r5012
  have hrung156 (bit : Bool) (hbit : rho 15448 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX156 rho : Seg16.F), (seg16AccY156 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17569 : Seg16.F), (rho 17570 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX156 rho : Seg16.F), (seg16AccY156 rho : Seg16.F)⟩
        ⟨(rho 17569 : Seg16.F), (rho 17570 : Seg16.F)⟩
        ⟨(seg16AccX157 rho : Seg16.F), (seg16AccY157 rho : Seg16.F)⟩
        ⟨(rho 17583 : Seg16.F), (rho 17584 : Seg16.F)⟩ := by
    have hsum : seg16AccX156 rho + seg16AccY156 rho = rho 17571 := by
      rw [seg16LadderFlatX156_eq, seg16LadderFlatY156_eq]
      unfold seg16LadderFlatX156 seg16LadderFlatY156
      linear_combination r4999
    have ha0 : (rho 17569 + rho 17570) * (seg16AccX156 rho + seg16AccY156 rho) = rho 17572 := by
      rw [hsum]
      linear_combination r5000
    have ha1 : rho 17570 * seg16AccX156 rho = rho 17573 := by
      rw [seg16LadderFlatX156_eq]
      unfold seg16LadderFlatX156
      linear_combination r5001
    have ha2 : rho 17569 * seg16AccY156 rho = rho 17574 := by
      rw [seg16LadderFlatY156_eq]
      unfold seg16LadderFlatY156
      linear_combination r5002
    have ha3 : 3021 * rho 17573 * rho 17574 = rho 17575 := by
      linear_combination r5003
    have ha4 : rho 17576 * (1 + rho 17575) = rho 17573 + rho 17574 := by
      linear_combination r5004
    have ha5 : rho 17577 * (1 - rho 17575) = rho 17572 - rho 17573 - rho 17574 := by
      linear_combination r5005
    have haddx :
        rho 17576 * (1 + 3021 * (rho 17570 * seg16AccX156 rho) * (rho 17569 * seg16AccY156 rho)) =
          rho 17570 * seg16AccX156 rho + rho 17569 * seg16AccY156 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17577 * (1 - 3021 * (rho 17570 * seg16AccX156 rho) * (rho 17569 * seg16AccY156 rho)) =
          (-1) * (rho 17570 * seg16AccX156 rho) - rho 17569 * seg16AccY156 rho +
            (seg16AccY156 rho - seg16AccX156 rho * (-1)) * (rho 17569 + rho 17570) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17577 * (1 - rho 17575) = rho 17572 - rho 17573 - rho 17574 := ha5
        _ = (-1) * rho 17573 - rho 17574 + (seg16AccY156 rho - seg16AccX156 rho * (-1)) * (rho 17569 + rho 17570) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX157 rho = seg16AccX156 rho - Bool.toZMod bit * (seg16AccX156 rho - rho 17576) := by
      have hd : rho 17578 = Bool.toZMod bit * (rho 17576 - seg16AccX156 rho) := by
        rw [← hbit, seg16LadderFlatX156_eq]
        unfold seg16LadderFlatX156
        linear_combination -r5006
      unfold seg16AccX157
      linear_combination hd
    have hsely : seg16AccY157 rho = seg16AccY156 rho - Bool.toZMod bit * (seg16AccY156 rho - rho 17577) := by
      have hd : rho 17579 = Bool.toZMod bit * (rho 17577 - seg16AccY156 rho) := by
        rw [← hbit, seg16LadderFlatY156_eq]
        unfold seg16LadderFlatY156
        linear_combination -r5007
      unfold seg16AccY157
      linear_combination hd
    have hd0 : rho 17569 * rho 17570 = rho 17580 := by linear_combination r5008
    have hd1 : rho 17569 * rho 17569 = rho 17581 := by linear_combination r5009
    have hd2 : rho 17570 * rho 17570 = rho 17582 := by linear_combination r5010
    have hd3 : rho 17583 * (rho 17570 * rho 17570 + rho 17569 * rho 17569 * (-1)) = 2 * (rho 17569 * rho 17570) := by
      rw [hd0, hd1, hd2]
      linear_combination r5011
    have hd4 : rho 17584 * (2 - (rho 17570 * rho 17570 + rho 17569 * rho 17569 * (-1))) = rho 17570 * rho 17570 - rho 17569 * rho 17569 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5012
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX156 rho : Seg16.F), (seg16AccY156 rho : Seg16.F)⟩
      ⟨(rho 17569 : Seg16.F), (rho 17570 : Seg16.F)⟩
      ⟨(rho 17576 : Seg16.F), (rho 17577 : Seg16.F)⟩
      ⟨(seg16AccX157 rho : Seg16.F), (seg16AccY157 rho : Seg16.F)⟩
      ⟨(rho 17583 : Seg16.F), (rho 17584 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung156

theorem seg16_rung157 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15449 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX157 rho : Seg16.F), (seg16AccY157 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17583 : Seg16.F), (rho 17584 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX157 rho : Seg16.F), (seg16AccY157 rho : Seg16.F)⟩
        ⟨(rho 17583 : Seg16.F), (rho 17584 : Seg16.F)⟩
        ⟨(seg16AccX158 rho : Seg16.F), (seg16AccY158 rho : Seg16.F)⟩
        ⟨(rho 17597 : Seg16.F), (rho 17598 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart62 at p62
  rcases p62 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5013, r5014, r5015, r5016, r5017, r5018, r5019, r5020, r5021, r5022, r5023, r5024, r5025, r5026, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow5013 Seg16.relationLc820 Seg16.relationLc820Part0 Seg16.relationLc820Part1 Seg16.relationLc820Part2 Seg16.relationLc820Part3 Seg16.relationLc820Part4 Seg16.relationLc820Part5 Seg16.relationLc820Part6 Seg16.relationLc820Part7 Seg16.relationLc820Part8 Seg16.relationLc820Part9 at r5013
  unfold Seg16.relationRow5014 at r5014
  unfold Seg16.relationRow5015 Seg16.relationLc821 Seg16.relationLc821Part0 Seg16.relationLc821Part1 Seg16.relationLc821Part2 Seg16.relationLc821Part3 Seg16.relationLc821Part4 at r5015
  unfold Seg16.relationRow5016 Seg16.relationLc822 Seg16.relationLc822Part0 Seg16.relationLc822Part1 Seg16.relationLc822Part2 Seg16.relationLc822Part3 Seg16.relationLc822Part4 at r5016
  unfold Seg16.relationRow5017 at r5017
  unfold Seg16.relationRow5018 at r5018
  unfold Seg16.relationRow5019 at r5019
  unfold Seg16.relationRow5020 Seg16.relationLc823 Seg16.relationLc823Part0 Seg16.relationLc823Part1 Seg16.relationLc823Part2 Seg16.relationLc823Part3 Seg16.relationLc823Part4 at r5020
  unfold Seg16.relationRow5021 Seg16.relationLc824 Seg16.relationLc824Part0 Seg16.relationLc824Part1 Seg16.relationLc824Part2 Seg16.relationLc824Part3 Seg16.relationLc824Part4 at r5021
  unfold Seg16.relationRow5022 at r5022
  unfold Seg16.relationRow5023 at r5023
  unfold Seg16.relationRow5024 at r5024
  unfold Seg16.relationRow5025 at r5025
  unfold Seg16.relationRow5026 at r5026
  have hrung157 (bit : Bool) (hbit : rho 15449 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX157 rho : Seg16.F), (seg16AccY157 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17583 : Seg16.F), (rho 17584 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX157 rho : Seg16.F), (seg16AccY157 rho : Seg16.F)⟩
        ⟨(rho 17583 : Seg16.F), (rho 17584 : Seg16.F)⟩
        ⟨(seg16AccX158 rho : Seg16.F), (seg16AccY158 rho : Seg16.F)⟩
        ⟨(rho 17597 : Seg16.F), (rho 17598 : Seg16.F)⟩ := by
    have hsum : seg16AccX157 rho + seg16AccY157 rho = rho 17585 := by
      rw [seg16LadderFlatX157_eq, seg16LadderFlatY157_eq]
      unfold seg16LadderFlatX157 seg16LadderFlatY157
      linear_combination r5013
    have ha0 : (rho 17583 + rho 17584) * (seg16AccX157 rho + seg16AccY157 rho) = rho 17586 := by
      rw [hsum]
      linear_combination r5014
    have ha1 : rho 17584 * seg16AccX157 rho = rho 17587 := by
      rw [seg16LadderFlatX157_eq]
      unfold seg16LadderFlatX157
      linear_combination r5015
    have ha2 : rho 17583 * seg16AccY157 rho = rho 17588 := by
      rw [seg16LadderFlatY157_eq]
      unfold seg16LadderFlatY157
      linear_combination r5016
    have ha3 : 3021 * rho 17587 * rho 17588 = rho 17589 := by
      linear_combination r5017
    have ha4 : rho 17590 * (1 + rho 17589) = rho 17587 + rho 17588 := by
      linear_combination r5018
    have ha5 : rho 17591 * (1 - rho 17589) = rho 17586 - rho 17587 - rho 17588 := by
      linear_combination r5019
    have haddx :
        rho 17590 * (1 + 3021 * (rho 17584 * seg16AccX157 rho) * (rho 17583 * seg16AccY157 rho)) =
          rho 17584 * seg16AccX157 rho + rho 17583 * seg16AccY157 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17591 * (1 - 3021 * (rho 17584 * seg16AccX157 rho) * (rho 17583 * seg16AccY157 rho)) =
          (-1) * (rho 17584 * seg16AccX157 rho) - rho 17583 * seg16AccY157 rho +
            (seg16AccY157 rho - seg16AccX157 rho * (-1)) * (rho 17583 + rho 17584) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17591 * (1 - rho 17589) = rho 17586 - rho 17587 - rho 17588 := ha5
        _ = (-1) * rho 17587 - rho 17588 + (seg16AccY157 rho - seg16AccX157 rho * (-1)) * (rho 17583 + rho 17584) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX158 rho = seg16AccX157 rho - Bool.toZMod bit * (seg16AccX157 rho - rho 17590) := by
      have hd : rho 17592 = Bool.toZMod bit * (rho 17590 - seg16AccX157 rho) := by
        rw [← hbit, seg16LadderFlatX157_eq]
        unfold seg16LadderFlatX157
        linear_combination -r5020
      unfold seg16AccX158
      linear_combination hd
    have hsely : seg16AccY158 rho = seg16AccY157 rho - Bool.toZMod bit * (seg16AccY157 rho - rho 17591) := by
      have hd : rho 17593 = Bool.toZMod bit * (rho 17591 - seg16AccY157 rho) := by
        rw [← hbit, seg16LadderFlatY157_eq]
        unfold seg16LadderFlatY157
        linear_combination -r5021
      unfold seg16AccY158
      linear_combination hd
    have hd0 : rho 17583 * rho 17584 = rho 17594 := by linear_combination r5022
    have hd1 : rho 17583 * rho 17583 = rho 17595 := by linear_combination r5023
    have hd2 : rho 17584 * rho 17584 = rho 17596 := by linear_combination r5024
    have hd3 : rho 17597 * (rho 17584 * rho 17584 + rho 17583 * rho 17583 * (-1)) = 2 * (rho 17583 * rho 17584) := by
      rw [hd0, hd1, hd2]
      linear_combination r5025
    have hd4 : rho 17598 * (2 - (rho 17584 * rho 17584 + rho 17583 * rho 17583 * (-1))) = rho 17584 * rho 17584 - rho 17583 * rho 17583 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5026
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX157 rho : Seg16.F), (seg16AccY157 rho : Seg16.F)⟩
      ⟨(rho 17583 : Seg16.F), (rho 17584 : Seg16.F)⟩
      ⟨(rho 17590 : Seg16.F), (rho 17591 : Seg16.F)⟩
      ⟨(seg16AccX158 rho : Seg16.F), (seg16AccY158 rho : Seg16.F)⟩
      ⟨(rho 17597 : Seg16.F), (rho 17598 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung157

theorem seg16_rung158 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15450 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX158 rho : Seg16.F), (seg16AccY158 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17597 : Seg16.F), (rho 17598 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX158 rho : Seg16.F), (seg16AccY158 rho : Seg16.F)⟩
        ⟨(rho 17597 : Seg16.F), (rho 17598 : Seg16.F)⟩
        ⟨(seg16AccX159 rho : Seg16.F), (seg16AccY159 rho : Seg16.F)⟩
        ⟨(rho 17611 : Seg16.F), (rho 17612 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart62 at p62
  rcases p62 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5027, r5028, r5029, r5030, r5031, r5032, r5033, r5034, r5035, r5036, r5037, r5038, r5039⟩
  unfold Seg16.relationPart63 at p63
  rcases p63 with ⟨r5040, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow5027 Seg16.relationLc825 Seg16.relationLc825Part0 Seg16.relationLc825Part1 Seg16.relationLc825Part2 Seg16.relationLc825Part3 Seg16.relationLc825Part4 Seg16.relationLc825Part5 Seg16.relationLc825Part6 Seg16.relationLc825Part7 Seg16.relationLc825Part8 Seg16.relationLc825Part9 at r5027
  unfold Seg16.relationRow5028 at r5028
  unfold Seg16.relationRow5029 Seg16.relationLc826 Seg16.relationLc826Part0 Seg16.relationLc826Part1 Seg16.relationLc826Part2 Seg16.relationLc826Part3 Seg16.relationLc826Part4 at r5029
  unfold Seg16.relationRow5030 Seg16.relationLc827 Seg16.relationLc827Part0 Seg16.relationLc827Part1 Seg16.relationLc827Part2 Seg16.relationLc827Part3 Seg16.relationLc827Part4 at r5030
  unfold Seg16.relationRow5031 at r5031
  unfold Seg16.relationRow5032 at r5032
  unfold Seg16.relationRow5033 at r5033
  unfold Seg16.relationRow5034 Seg16.relationLc828 Seg16.relationLc828Part0 Seg16.relationLc828Part1 Seg16.relationLc828Part2 Seg16.relationLc828Part3 Seg16.relationLc828Part4 at r5034
  unfold Seg16.relationRow5035 Seg16.relationLc829 Seg16.relationLc829Part0 Seg16.relationLc829Part1 Seg16.relationLc829Part2 Seg16.relationLc829Part3 Seg16.relationLc829Part4 at r5035
  unfold Seg16.relationRow5036 at r5036
  unfold Seg16.relationRow5037 at r5037
  unfold Seg16.relationRow5038 at r5038
  unfold Seg16.relationRow5039 at r5039
  unfold Seg16.relationRow5040 at r5040
  have hrung158 (bit : Bool) (hbit : rho 15450 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX158 rho : Seg16.F), (seg16AccY158 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17597 : Seg16.F), (rho 17598 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX158 rho : Seg16.F), (seg16AccY158 rho : Seg16.F)⟩
        ⟨(rho 17597 : Seg16.F), (rho 17598 : Seg16.F)⟩
        ⟨(seg16AccX159 rho : Seg16.F), (seg16AccY159 rho : Seg16.F)⟩
        ⟨(rho 17611 : Seg16.F), (rho 17612 : Seg16.F)⟩ := by
    have hsum : seg16AccX158 rho + seg16AccY158 rho = rho 17599 := by
      rw [seg16LadderFlatX158_eq, seg16LadderFlatY158_eq]
      unfold seg16LadderFlatX158 seg16LadderFlatY158
      linear_combination r5027
    have ha0 : (rho 17597 + rho 17598) * (seg16AccX158 rho + seg16AccY158 rho) = rho 17600 := by
      rw [hsum]
      linear_combination r5028
    have ha1 : rho 17598 * seg16AccX158 rho = rho 17601 := by
      rw [seg16LadderFlatX158_eq]
      unfold seg16LadderFlatX158
      linear_combination r5029
    have ha2 : rho 17597 * seg16AccY158 rho = rho 17602 := by
      rw [seg16LadderFlatY158_eq]
      unfold seg16LadderFlatY158
      linear_combination r5030
    have ha3 : 3021 * rho 17601 * rho 17602 = rho 17603 := by
      linear_combination r5031
    have ha4 : rho 17604 * (1 + rho 17603) = rho 17601 + rho 17602 := by
      linear_combination r5032
    have ha5 : rho 17605 * (1 - rho 17603) = rho 17600 - rho 17601 - rho 17602 := by
      linear_combination r5033
    have haddx :
        rho 17604 * (1 + 3021 * (rho 17598 * seg16AccX158 rho) * (rho 17597 * seg16AccY158 rho)) =
          rho 17598 * seg16AccX158 rho + rho 17597 * seg16AccY158 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17605 * (1 - 3021 * (rho 17598 * seg16AccX158 rho) * (rho 17597 * seg16AccY158 rho)) =
          (-1) * (rho 17598 * seg16AccX158 rho) - rho 17597 * seg16AccY158 rho +
            (seg16AccY158 rho - seg16AccX158 rho * (-1)) * (rho 17597 + rho 17598) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17605 * (1 - rho 17603) = rho 17600 - rho 17601 - rho 17602 := ha5
        _ = (-1) * rho 17601 - rho 17602 + (seg16AccY158 rho - seg16AccX158 rho * (-1)) * (rho 17597 + rho 17598) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX159 rho = seg16AccX158 rho - Bool.toZMod bit * (seg16AccX158 rho - rho 17604) := by
      have hd : rho 17606 = Bool.toZMod bit * (rho 17604 - seg16AccX158 rho) := by
        rw [← hbit, seg16LadderFlatX158_eq]
        unfold seg16LadderFlatX158
        linear_combination -r5034
      unfold seg16AccX159
      linear_combination hd
    have hsely : seg16AccY159 rho = seg16AccY158 rho - Bool.toZMod bit * (seg16AccY158 rho - rho 17605) := by
      have hd : rho 17607 = Bool.toZMod bit * (rho 17605 - seg16AccY158 rho) := by
        rw [← hbit, seg16LadderFlatY158_eq]
        unfold seg16LadderFlatY158
        linear_combination -r5035
      unfold seg16AccY159
      linear_combination hd
    have hd0 : rho 17597 * rho 17598 = rho 17608 := by linear_combination r5036
    have hd1 : rho 17597 * rho 17597 = rho 17609 := by linear_combination r5037
    have hd2 : rho 17598 * rho 17598 = rho 17610 := by linear_combination r5038
    have hd3 : rho 17611 * (rho 17598 * rho 17598 + rho 17597 * rho 17597 * (-1)) = 2 * (rho 17597 * rho 17598) := by
      rw [hd0, hd1, hd2]
      linear_combination r5039
    have hd4 : rho 17612 * (2 - (rho 17598 * rho 17598 + rho 17597 * rho 17597 * (-1))) = rho 17598 * rho 17598 - rho 17597 * rho 17597 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5040
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX158 rho : Seg16.F), (seg16AccY158 rho : Seg16.F)⟩
      ⟨(rho 17597 : Seg16.F), (rho 17598 : Seg16.F)⟩
      ⟨(rho 17604 : Seg16.F), (rho 17605 : Seg16.F)⟩
      ⟨(seg16AccX159 rho : Seg16.F), (seg16AccY159 rho : Seg16.F)⟩
      ⟨(rho 17611 : Seg16.F), (rho 17612 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung158

theorem seg16_rung159 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15451 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX159 rho : Seg16.F), (seg16AccY159 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17611 : Seg16.F), (rho 17612 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX159 rho : Seg16.F), (seg16AccY159 rho : Seg16.F)⟩
        ⟨(rho 17611 : Seg16.F), (rho 17612 : Seg16.F)⟩
        ⟨(seg16AccX160 rho : Seg16.F), (seg16AccY160 rho : Seg16.F)⟩
        ⟨(rho 17625 : Seg16.F), (rho 17626 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart63 at p63
  rcases p63 with ⟨_, r5041, r5042, r5043, r5044, r5045, r5046, r5047, r5048, r5049, r5050, r5051, r5052, r5053, r5054, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow5041 Seg16.relationLc830 Seg16.relationLc830Part0 Seg16.relationLc830Part1 Seg16.relationLc830Part2 Seg16.relationLc830Part3 Seg16.relationLc830Part4 Seg16.relationLc830Part5 Seg16.relationLc830Part6 Seg16.relationLc830Part7 Seg16.relationLc830Part8 Seg16.relationLc830Part9 at r5041
  unfold Seg16.relationRow5042 at r5042
  unfold Seg16.relationRow5043 Seg16.relationLc831 Seg16.relationLc831Part0 Seg16.relationLc831Part1 Seg16.relationLc831Part2 Seg16.relationLc831Part3 Seg16.relationLc831Part4 at r5043
  unfold Seg16.relationRow5044 Seg16.relationLc832 Seg16.relationLc832Part0 Seg16.relationLc832Part1 Seg16.relationLc832Part2 Seg16.relationLc832Part3 Seg16.relationLc832Part4 at r5044
  unfold Seg16.relationRow5045 at r5045
  unfold Seg16.relationRow5046 at r5046
  unfold Seg16.relationRow5047 at r5047
  unfold Seg16.relationRow5048 Seg16.relationLc833 Seg16.relationLc833Part0 Seg16.relationLc833Part1 Seg16.relationLc833Part2 Seg16.relationLc833Part3 Seg16.relationLc833Part4 at r5048
  unfold Seg16.relationRow5049 Seg16.relationLc834 Seg16.relationLc834Part0 Seg16.relationLc834Part1 Seg16.relationLc834Part2 Seg16.relationLc834Part3 Seg16.relationLc834Part4 Seg16.relationLc834Part5 at r5049
  unfold Seg16.relationRow5050 at r5050
  unfold Seg16.relationRow5051 at r5051
  unfold Seg16.relationRow5052 at r5052
  unfold Seg16.relationRow5053 at r5053
  unfold Seg16.relationRow5054 at r5054
  have hrung159 (bit : Bool) (hbit : rho 15451 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX159 rho : Seg16.F), (seg16AccY159 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17611 : Seg16.F), (rho 17612 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX159 rho : Seg16.F), (seg16AccY159 rho : Seg16.F)⟩
        ⟨(rho 17611 : Seg16.F), (rho 17612 : Seg16.F)⟩
        ⟨(seg16AccX160 rho : Seg16.F), (seg16AccY160 rho : Seg16.F)⟩
        ⟨(rho 17625 : Seg16.F), (rho 17626 : Seg16.F)⟩ := by
    have hsum : seg16AccX159 rho + seg16AccY159 rho = rho 17613 := by
      rw [seg16LadderFlatX159_eq, seg16LadderFlatY159_eq]
      unfold seg16LadderFlatX159 seg16LadderFlatY159
      linear_combination r5041
    have ha0 : (rho 17611 + rho 17612) * (seg16AccX159 rho + seg16AccY159 rho) = rho 17614 := by
      rw [hsum]
      linear_combination r5042
    have ha1 : rho 17612 * seg16AccX159 rho = rho 17615 := by
      rw [seg16LadderFlatX159_eq]
      unfold seg16LadderFlatX159
      linear_combination r5043
    have ha2 : rho 17611 * seg16AccY159 rho = rho 17616 := by
      rw [seg16LadderFlatY159_eq]
      unfold seg16LadderFlatY159
      linear_combination r5044
    have ha3 : 3021 * rho 17615 * rho 17616 = rho 17617 := by
      linear_combination r5045
    have ha4 : rho 17618 * (1 + rho 17617) = rho 17615 + rho 17616 := by
      linear_combination r5046
    have ha5 : rho 17619 * (1 - rho 17617) = rho 17614 - rho 17615 - rho 17616 := by
      linear_combination r5047
    have haddx :
        rho 17618 * (1 + 3021 * (rho 17612 * seg16AccX159 rho) * (rho 17611 * seg16AccY159 rho)) =
          rho 17612 * seg16AccX159 rho + rho 17611 * seg16AccY159 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17619 * (1 - 3021 * (rho 17612 * seg16AccX159 rho) * (rho 17611 * seg16AccY159 rho)) =
          (-1) * (rho 17612 * seg16AccX159 rho) - rho 17611 * seg16AccY159 rho +
            (seg16AccY159 rho - seg16AccX159 rho * (-1)) * (rho 17611 + rho 17612) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17619 * (1 - rho 17617) = rho 17614 - rho 17615 - rho 17616 := ha5
        _ = (-1) * rho 17615 - rho 17616 + (seg16AccY159 rho - seg16AccX159 rho * (-1)) * (rho 17611 + rho 17612) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX160 rho = seg16AccX159 rho - Bool.toZMod bit * (seg16AccX159 rho - rho 17618) := by
      have hd : rho 17620 = Bool.toZMod bit * (rho 17618 - seg16AccX159 rho) := by
        rw [← hbit, seg16LadderFlatX159_eq]
        unfold seg16LadderFlatX159
        linear_combination -r5048
      unfold seg16AccX160
      linear_combination hd
    have hsely : seg16AccY160 rho = seg16AccY159 rho - Bool.toZMod bit * (seg16AccY159 rho - rho 17619) := by
      have hd : rho 17621 = Bool.toZMod bit * (rho 17619 - seg16AccY159 rho) := by
        rw [← hbit, seg16LadderFlatY159_eq]
        unfold seg16LadderFlatY159
        linear_combination -r5049
      unfold seg16AccY160
      linear_combination hd
    have hd0 : rho 17611 * rho 17612 = rho 17622 := by linear_combination r5050
    have hd1 : rho 17611 * rho 17611 = rho 17623 := by linear_combination r5051
    have hd2 : rho 17612 * rho 17612 = rho 17624 := by linear_combination r5052
    have hd3 : rho 17625 * (rho 17612 * rho 17612 + rho 17611 * rho 17611 * (-1)) = 2 * (rho 17611 * rho 17612) := by
      rw [hd0, hd1, hd2]
      linear_combination r5053
    have hd4 : rho 17626 * (2 - (rho 17612 * rho 17612 + rho 17611 * rho 17611 * (-1))) = rho 17612 * rho 17612 - rho 17611 * rho 17611 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5054
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX159 rho : Seg16.F), (seg16AccY159 rho : Seg16.F)⟩
      ⟨(rho 17611 : Seg16.F), (rho 17612 : Seg16.F)⟩
      ⟨(rho 17618 : Seg16.F), (rho 17619 : Seg16.F)⟩
      ⟨(seg16AccX160 rho : Seg16.F), (seg16AccY160 rho : Seg16.F)⟩
      ⟨(rho 17625 : Seg16.F), (rho 17626 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung159

theorem seg16_hstep_c4 (rho : Nat -> Seg16.F) (h : Seg16.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (15292 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 128 ≤ i → i < 160 →
      EdwardsBridge.onCurve (seg16LadderAccState rho i) →
      EdwardsBridge.onCurve (seg16LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg16LadderAccState rho i) (seg16LadderCurState rho i)
        (seg16LadderAccState rho (i + 1)) (seg16LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg16_rung128 rho h bits[128]! (hbitAt 128 (by omega)) hacc hcur
  · exact seg16_rung129 rho h bits[129]! (hbitAt 129 (by omega)) hacc hcur
  · exact seg16_rung130 rho h bits[130]! (hbitAt 130 (by omega)) hacc hcur
  · exact seg16_rung131 rho h bits[131]! (hbitAt 131 (by omega)) hacc hcur
  · exact seg16_rung132 rho h bits[132]! (hbitAt 132 (by omega)) hacc hcur
  · exact seg16_rung133 rho h bits[133]! (hbitAt 133 (by omega)) hacc hcur
  · exact seg16_rung134 rho h bits[134]! (hbitAt 134 (by omega)) hacc hcur
  · exact seg16_rung135 rho h bits[135]! (hbitAt 135 (by omega)) hacc hcur
  · exact seg16_rung136 rho h bits[136]! (hbitAt 136 (by omega)) hacc hcur
  · exact seg16_rung137 rho h bits[137]! (hbitAt 137 (by omega)) hacc hcur
  · exact seg16_rung138 rho h bits[138]! (hbitAt 138 (by omega)) hacc hcur
  · exact seg16_rung139 rho h bits[139]! (hbitAt 139 (by omega)) hacc hcur
  · exact seg16_rung140 rho h bits[140]! (hbitAt 140 (by omega)) hacc hcur
  · exact seg16_rung141 rho h bits[141]! (hbitAt 141 (by omega)) hacc hcur
  · exact seg16_rung142 rho h bits[142]! (hbitAt 142 (by omega)) hacc hcur
  · exact seg16_rung143 rho h bits[143]! (hbitAt 143 (by omega)) hacc hcur
  · exact seg16_rung144 rho h bits[144]! (hbitAt 144 (by omega)) hacc hcur
  · exact seg16_rung145 rho h bits[145]! (hbitAt 145 (by omega)) hacc hcur
  · exact seg16_rung146 rho h bits[146]! (hbitAt 146 (by omega)) hacc hcur
  · exact seg16_rung147 rho h bits[147]! (hbitAt 147 (by omega)) hacc hcur
  · exact seg16_rung148 rho h bits[148]! (hbitAt 148 (by omega)) hacc hcur
  · exact seg16_rung149 rho h bits[149]! (hbitAt 149 (by omega)) hacc hcur
  · exact seg16_rung150 rho h bits[150]! (hbitAt 150 (by omega)) hacc hcur
  · exact seg16_rung151 rho h bits[151]! (hbitAt 151 (by omega)) hacc hcur
  · exact seg16_rung152 rho h bits[152]! (hbitAt 152 (by omega)) hacc hcur
  · exact seg16_rung153 rho h bits[153]! (hbitAt 153 (by omega)) hacc hcur
  · exact seg16_rung154 rho h bits[154]! (hbitAt 154 (by omega)) hacc hcur
  · exact seg16_rung155 rho h bits[155]! (hbitAt 155 (by omega)) hacc hcur
  · exact seg16_rung156 rho h bits[156]! (hbitAt 156 (by omega)) hacc hcur
  · exact seg16_rung157 rho h bits[157]! (hbitAt 157 (by omega)) hacc hcur
  · exact seg16_rung158 rho h bits[158]! (hbitAt 158 (by omega)) hacc hcur
  · exact seg16_rung159 rho h bits[159]! (hbitAt 159 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
