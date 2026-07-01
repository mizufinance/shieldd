import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg16_rung160 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15452 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX160 rho : Seg16.F), (seg16AccY160 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17625 : Seg16.F), (rho 17626 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX160 rho : Seg16.F), (seg16AccY160 rho : Seg16.F)⟩
        ⟨(rho 17625 : Seg16.F), (rho 17626 : Seg16.F)⟩
        ⟨(seg16AccX161 rho : Seg16.F), (seg16AccY161 rho : Seg16.F)⟩
        ⟨(rho 17639 : Seg16.F), (rho 17640 : Seg16.F)⟩ := by
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
  rcases p63 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5055, r5056, r5057, r5058, r5059, r5060, r5061, r5062, r5063, r5064, r5065, r5066, r5067, r5068, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow5055 Seg16.relationLc835 Seg16.relationLc835Part0 Seg16.relationLc835Part1 Seg16.relationLc835Part2 Seg16.relationLc835Part3 Seg16.relationLc835Part4 Seg16.relationLc835Part5 Seg16.relationLc835Part6 Seg16.relationLc835Part7 Seg16.relationLc835Part8 Seg16.relationLc835Part9 Seg16.relationLc835Part10 at r5055
  unfold Seg16.relationRow5056 at r5056
  unfold Seg16.relationRow5057 Seg16.relationLc836 Seg16.relationLc836Part0 Seg16.relationLc836Part1 Seg16.relationLc836Part2 Seg16.relationLc836Part3 Seg16.relationLc836Part4 at r5057
  unfold Seg16.relationRow5058 Seg16.relationLc837 Seg16.relationLc837Part0 Seg16.relationLc837Part1 Seg16.relationLc837Part2 Seg16.relationLc837Part3 Seg16.relationLc837Part4 Seg16.relationLc837Part5 at r5058
  unfold Seg16.relationRow5059 at r5059
  unfold Seg16.relationRow5060 at r5060
  unfold Seg16.relationRow5061 at r5061
  unfold Seg16.relationRow5062 Seg16.relationLc838 Seg16.relationLc838Part0 Seg16.relationLc838Part1 Seg16.relationLc838Part2 Seg16.relationLc838Part3 Seg16.relationLc838Part4 Seg16.relationLc838Part5 at r5062
  unfold Seg16.relationRow5063 Seg16.relationLc839 Seg16.relationLc839Part0 Seg16.relationLc839Part1 Seg16.relationLc839Part2 Seg16.relationLc839Part3 Seg16.relationLc839Part4 Seg16.relationLc839Part5 at r5063
  unfold Seg16.relationRow5064 at r5064
  unfold Seg16.relationRow5065 at r5065
  unfold Seg16.relationRow5066 at r5066
  unfold Seg16.relationRow5067 at r5067
  unfold Seg16.relationRow5068 at r5068
  have hrung160 (bit : Bool) (hbit : rho 15452 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX160 rho : Seg16.F), (seg16AccY160 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17625 : Seg16.F), (rho 17626 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX160 rho : Seg16.F), (seg16AccY160 rho : Seg16.F)⟩
        ⟨(rho 17625 : Seg16.F), (rho 17626 : Seg16.F)⟩
        ⟨(seg16AccX161 rho : Seg16.F), (seg16AccY161 rho : Seg16.F)⟩
        ⟨(rho 17639 : Seg16.F), (rho 17640 : Seg16.F)⟩ := by
    have hsum : seg16AccX160 rho + seg16AccY160 rho = rho 17627 := by
      rw [seg16LadderFlatX160_eq, seg16LadderFlatY160_eq]
      unfold seg16LadderFlatX160 seg16LadderFlatY160
      linear_combination r5055
    have ha0 : (rho 17625 + rho 17626) * (seg16AccX160 rho + seg16AccY160 rho) = rho 17628 := by
      rw [hsum]
      linear_combination r5056
    have ha1 : rho 17626 * seg16AccX160 rho = rho 17629 := by
      rw [seg16LadderFlatX160_eq]
      unfold seg16LadderFlatX160
      linear_combination r5057
    have ha2 : rho 17625 * seg16AccY160 rho = rho 17630 := by
      rw [seg16LadderFlatY160_eq]
      unfold seg16LadderFlatY160
      linear_combination r5058
    have ha3 : 3021 * rho 17629 * rho 17630 = rho 17631 := by
      linear_combination r5059
    have ha4 : rho 17632 * (1 + rho 17631) = rho 17629 + rho 17630 := by
      linear_combination r5060
    have ha5 : rho 17633 * (1 - rho 17631) = rho 17628 - rho 17629 - rho 17630 := by
      linear_combination r5061
    have haddx :
        rho 17632 * (1 + 3021 * (rho 17626 * seg16AccX160 rho) * (rho 17625 * seg16AccY160 rho)) =
          rho 17626 * seg16AccX160 rho + rho 17625 * seg16AccY160 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17633 * (1 - 3021 * (rho 17626 * seg16AccX160 rho) * (rho 17625 * seg16AccY160 rho)) =
          (-1) * (rho 17626 * seg16AccX160 rho) - rho 17625 * seg16AccY160 rho +
            (seg16AccY160 rho - seg16AccX160 rho * (-1)) * (rho 17625 + rho 17626) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17633 * (1 - rho 17631) = rho 17628 - rho 17629 - rho 17630 := ha5
        _ = (-1) * rho 17629 - rho 17630 + (seg16AccY160 rho - seg16AccX160 rho * (-1)) * (rho 17625 + rho 17626) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX161 rho = seg16AccX160 rho - Bool.toZMod bit * (seg16AccX160 rho - rho 17632) := by
      have hd : rho 17634 = Bool.toZMod bit * (rho 17632 - seg16AccX160 rho) := by
        rw [← hbit, seg16LadderFlatX160_eq]
        unfold seg16LadderFlatX160
        linear_combination -r5062
      unfold seg16AccX161
      linear_combination hd
    have hsely : seg16AccY161 rho = seg16AccY160 rho - Bool.toZMod bit * (seg16AccY160 rho - rho 17633) := by
      have hd : rho 17635 = Bool.toZMod bit * (rho 17633 - seg16AccY160 rho) := by
        rw [← hbit, seg16LadderFlatY160_eq]
        unfold seg16LadderFlatY160
        linear_combination -r5063
      unfold seg16AccY161
      linear_combination hd
    have hd0 : rho 17625 * rho 17626 = rho 17636 := by linear_combination r5064
    have hd1 : rho 17625 * rho 17625 = rho 17637 := by linear_combination r5065
    have hd2 : rho 17626 * rho 17626 = rho 17638 := by linear_combination r5066
    have hd3 : rho 17639 * (rho 17626 * rho 17626 + rho 17625 * rho 17625 * (-1)) = 2 * (rho 17625 * rho 17626) := by
      rw [hd0, hd1, hd2]
      linear_combination r5067
    have hd4 : rho 17640 * (2 - (rho 17626 * rho 17626 + rho 17625 * rho 17625 * (-1))) = rho 17626 * rho 17626 - rho 17625 * rho 17625 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5068
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX160 rho : Seg16.F), (seg16AccY160 rho : Seg16.F)⟩
      ⟨(rho 17625 : Seg16.F), (rho 17626 : Seg16.F)⟩
      ⟨(rho 17632 : Seg16.F), (rho 17633 : Seg16.F)⟩
      ⟨(seg16AccX161 rho : Seg16.F), (seg16AccY161 rho : Seg16.F)⟩
      ⟨(rho 17639 : Seg16.F), (rho 17640 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung160

theorem seg16_rung161 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15453 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX161 rho : Seg16.F), (seg16AccY161 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17639 : Seg16.F), (rho 17640 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX161 rho : Seg16.F), (seg16AccY161 rho : Seg16.F)⟩
        ⟨(rho 17639 : Seg16.F), (rho 17640 : Seg16.F)⟩
        ⟨(seg16AccX162 rho : Seg16.F), (seg16AccY162 rho : Seg16.F)⟩
        ⟨(rho 17653 : Seg16.F), (rho 17654 : Seg16.F)⟩ := by
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
  rcases p63 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5069, r5070, r5071, r5072, r5073, r5074, r5075, r5076, r5077, r5078, r5079, r5080, r5081, r5082, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow5069 Seg16.relationLc840 Seg16.relationLc840Part0 Seg16.relationLc840Part1 Seg16.relationLc840Part2 Seg16.relationLc840Part3 Seg16.relationLc840Part4 Seg16.relationLc840Part5 Seg16.relationLc840Part6 Seg16.relationLc840Part7 Seg16.relationLc840Part8 Seg16.relationLc840Part9 Seg16.relationLc840Part10 at r5069
  unfold Seg16.relationRow5070 at r5070
  unfold Seg16.relationRow5071 Seg16.relationLc841 Seg16.relationLc841Part0 Seg16.relationLc841Part1 Seg16.relationLc841Part2 Seg16.relationLc841Part3 Seg16.relationLc841Part4 Seg16.relationLc841Part5 at r5071
  unfold Seg16.relationRow5072 Seg16.relationLc842 Seg16.relationLc842Part0 Seg16.relationLc842Part1 Seg16.relationLc842Part2 Seg16.relationLc842Part3 Seg16.relationLc842Part4 Seg16.relationLc842Part5 at r5072
  unfold Seg16.relationRow5073 at r5073
  unfold Seg16.relationRow5074 at r5074
  unfold Seg16.relationRow5075 at r5075
  unfold Seg16.relationRow5076 Seg16.relationLc843 Seg16.relationLc843Part0 Seg16.relationLc843Part1 Seg16.relationLc843Part2 Seg16.relationLc843Part3 Seg16.relationLc843Part4 Seg16.relationLc843Part5 at r5076
  unfold Seg16.relationRow5077 Seg16.relationLc844 Seg16.relationLc844Part0 Seg16.relationLc844Part1 Seg16.relationLc844Part2 Seg16.relationLc844Part3 Seg16.relationLc844Part4 Seg16.relationLc844Part5 at r5077
  unfold Seg16.relationRow5078 at r5078
  unfold Seg16.relationRow5079 at r5079
  unfold Seg16.relationRow5080 at r5080
  unfold Seg16.relationRow5081 at r5081
  unfold Seg16.relationRow5082 at r5082
  have hrung161 (bit : Bool) (hbit : rho 15453 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX161 rho : Seg16.F), (seg16AccY161 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17639 : Seg16.F), (rho 17640 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX161 rho : Seg16.F), (seg16AccY161 rho : Seg16.F)⟩
        ⟨(rho 17639 : Seg16.F), (rho 17640 : Seg16.F)⟩
        ⟨(seg16AccX162 rho : Seg16.F), (seg16AccY162 rho : Seg16.F)⟩
        ⟨(rho 17653 : Seg16.F), (rho 17654 : Seg16.F)⟩ := by
    have hsum : seg16AccX161 rho + seg16AccY161 rho = rho 17641 := by
      rw [seg16LadderFlatX161_eq, seg16LadderFlatY161_eq]
      unfold seg16LadderFlatX161 seg16LadderFlatY161
      linear_combination r5069
    have ha0 : (rho 17639 + rho 17640) * (seg16AccX161 rho + seg16AccY161 rho) = rho 17642 := by
      rw [hsum]
      linear_combination r5070
    have ha1 : rho 17640 * seg16AccX161 rho = rho 17643 := by
      rw [seg16LadderFlatX161_eq]
      unfold seg16LadderFlatX161
      linear_combination r5071
    have ha2 : rho 17639 * seg16AccY161 rho = rho 17644 := by
      rw [seg16LadderFlatY161_eq]
      unfold seg16LadderFlatY161
      linear_combination r5072
    have ha3 : 3021 * rho 17643 * rho 17644 = rho 17645 := by
      linear_combination r5073
    have ha4 : rho 17646 * (1 + rho 17645) = rho 17643 + rho 17644 := by
      linear_combination r5074
    have ha5 : rho 17647 * (1 - rho 17645) = rho 17642 - rho 17643 - rho 17644 := by
      linear_combination r5075
    have haddx :
        rho 17646 * (1 + 3021 * (rho 17640 * seg16AccX161 rho) * (rho 17639 * seg16AccY161 rho)) =
          rho 17640 * seg16AccX161 rho + rho 17639 * seg16AccY161 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17647 * (1 - 3021 * (rho 17640 * seg16AccX161 rho) * (rho 17639 * seg16AccY161 rho)) =
          (-1) * (rho 17640 * seg16AccX161 rho) - rho 17639 * seg16AccY161 rho +
            (seg16AccY161 rho - seg16AccX161 rho * (-1)) * (rho 17639 + rho 17640) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17647 * (1 - rho 17645) = rho 17642 - rho 17643 - rho 17644 := ha5
        _ = (-1) * rho 17643 - rho 17644 + (seg16AccY161 rho - seg16AccX161 rho * (-1)) * (rho 17639 + rho 17640) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX162 rho = seg16AccX161 rho - Bool.toZMod bit * (seg16AccX161 rho - rho 17646) := by
      have hd : rho 17648 = Bool.toZMod bit * (rho 17646 - seg16AccX161 rho) := by
        rw [← hbit, seg16LadderFlatX161_eq]
        unfold seg16LadderFlatX161
        linear_combination -r5076
      unfold seg16AccX162
      linear_combination hd
    have hsely : seg16AccY162 rho = seg16AccY161 rho - Bool.toZMod bit * (seg16AccY161 rho - rho 17647) := by
      have hd : rho 17649 = Bool.toZMod bit * (rho 17647 - seg16AccY161 rho) := by
        rw [← hbit, seg16LadderFlatY161_eq]
        unfold seg16LadderFlatY161
        linear_combination -r5077
      unfold seg16AccY162
      linear_combination hd
    have hd0 : rho 17639 * rho 17640 = rho 17650 := by linear_combination r5078
    have hd1 : rho 17639 * rho 17639 = rho 17651 := by linear_combination r5079
    have hd2 : rho 17640 * rho 17640 = rho 17652 := by linear_combination r5080
    have hd3 : rho 17653 * (rho 17640 * rho 17640 + rho 17639 * rho 17639 * (-1)) = 2 * (rho 17639 * rho 17640) := by
      rw [hd0, hd1, hd2]
      linear_combination r5081
    have hd4 : rho 17654 * (2 - (rho 17640 * rho 17640 + rho 17639 * rho 17639 * (-1))) = rho 17640 * rho 17640 - rho 17639 * rho 17639 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5082
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX161 rho : Seg16.F), (seg16AccY161 rho : Seg16.F)⟩
      ⟨(rho 17639 : Seg16.F), (rho 17640 : Seg16.F)⟩
      ⟨(rho 17646 : Seg16.F), (rho 17647 : Seg16.F)⟩
      ⟨(seg16AccX162 rho : Seg16.F), (seg16AccY162 rho : Seg16.F)⟩
      ⟨(rho 17653 : Seg16.F), (rho 17654 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung161

theorem seg16_rung162 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15454 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX162 rho : Seg16.F), (seg16AccY162 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17653 : Seg16.F), (rho 17654 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX162 rho : Seg16.F), (seg16AccY162 rho : Seg16.F)⟩
        ⟨(rho 17653 : Seg16.F), (rho 17654 : Seg16.F)⟩
        ⟨(seg16AccX163 rho : Seg16.F), (seg16AccY163 rho : Seg16.F)⟩
        ⟨(rho 17667 : Seg16.F), (rho 17668 : Seg16.F)⟩ := by
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
  rcases p63 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5083, r5084, r5085, r5086, r5087, r5088, r5089, r5090, r5091, r5092, r5093, r5094, r5095, r5096, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow5083 Seg16.relationLc845 Seg16.relationLc845Part0 Seg16.relationLc845Part1 Seg16.relationLc845Part2 Seg16.relationLc845Part3 Seg16.relationLc845Part4 Seg16.relationLc845Part5 Seg16.relationLc845Part6 Seg16.relationLc845Part7 Seg16.relationLc845Part8 Seg16.relationLc845Part9 Seg16.relationLc845Part10 at r5083
  unfold Seg16.relationRow5084 at r5084
  unfold Seg16.relationRow5085 Seg16.relationLc846 Seg16.relationLc846Part0 Seg16.relationLc846Part1 Seg16.relationLc846Part2 Seg16.relationLc846Part3 Seg16.relationLc846Part4 Seg16.relationLc846Part5 at r5085
  unfold Seg16.relationRow5086 Seg16.relationLc847 Seg16.relationLc847Part0 Seg16.relationLc847Part1 Seg16.relationLc847Part2 Seg16.relationLc847Part3 Seg16.relationLc847Part4 Seg16.relationLc847Part5 at r5086
  unfold Seg16.relationRow5087 at r5087
  unfold Seg16.relationRow5088 at r5088
  unfold Seg16.relationRow5089 at r5089
  unfold Seg16.relationRow5090 Seg16.relationLc848 Seg16.relationLc848Part0 Seg16.relationLc848Part1 Seg16.relationLc848Part2 Seg16.relationLc848Part3 Seg16.relationLc848Part4 Seg16.relationLc848Part5 at r5090
  unfold Seg16.relationRow5091 Seg16.relationLc849 Seg16.relationLc849Part0 Seg16.relationLc849Part1 Seg16.relationLc849Part2 Seg16.relationLc849Part3 Seg16.relationLc849Part4 Seg16.relationLc849Part5 at r5091
  unfold Seg16.relationRow5092 at r5092
  unfold Seg16.relationRow5093 at r5093
  unfold Seg16.relationRow5094 at r5094
  unfold Seg16.relationRow5095 at r5095
  unfold Seg16.relationRow5096 at r5096
  have hrung162 (bit : Bool) (hbit : rho 15454 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX162 rho : Seg16.F), (seg16AccY162 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17653 : Seg16.F), (rho 17654 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX162 rho : Seg16.F), (seg16AccY162 rho : Seg16.F)⟩
        ⟨(rho 17653 : Seg16.F), (rho 17654 : Seg16.F)⟩
        ⟨(seg16AccX163 rho : Seg16.F), (seg16AccY163 rho : Seg16.F)⟩
        ⟨(rho 17667 : Seg16.F), (rho 17668 : Seg16.F)⟩ := by
    have hsum : seg16AccX162 rho + seg16AccY162 rho = rho 17655 := by
      rw [seg16LadderFlatX162_eq, seg16LadderFlatY162_eq]
      unfold seg16LadderFlatX162 seg16LadderFlatY162
      linear_combination r5083
    have ha0 : (rho 17653 + rho 17654) * (seg16AccX162 rho + seg16AccY162 rho) = rho 17656 := by
      rw [hsum]
      linear_combination r5084
    have ha1 : rho 17654 * seg16AccX162 rho = rho 17657 := by
      rw [seg16LadderFlatX162_eq]
      unfold seg16LadderFlatX162
      linear_combination r5085
    have ha2 : rho 17653 * seg16AccY162 rho = rho 17658 := by
      rw [seg16LadderFlatY162_eq]
      unfold seg16LadderFlatY162
      linear_combination r5086
    have ha3 : 3021 * rho 17657 * rho 17658 = rho 17659 := by
      linear_combination r5087
    have ha4 : rho 17660 * (1 + rho 17659) = rho 17657 + rho 17658 := by
      linear_combination r5088
    have ha5 : rho 17661 * (1 - rho 17659) = rho 17656 - rho 17657 - rho 17658 := by
      linear_combination r5089
    have haddx :
        rho 17660 * (1 + 3021 * (rho 17654 * seg16AccX162 rho) * (rho 17653 * seg16AccY162 rho)) =
          rho 17654 * seg16AccX162 rho + rho 17653 * seg16AccY162 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17661 * (1 - 3021 * (rho 17654 * seg16AccX162 rho) * (rho 17653 * seg16AccY162 rho)) =
          (-1) * (rho 17654 * seg16AccX162 rho) - rho 17653 * seg16AccY162 rho +
            (seg16AccY162 rho - seg16AccX162 rho * (-1)) * (rho 17653 + rho 17654) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17661 * (1 - rho 17659) = rho 17656 - rho 17657 - rho 17658 := ha5
        _ = (-1) * rho 17657 - rho 17658 + (seg16AccY162 rho - seg16AccX162 rho * (-1)) * (rho 17653 + rho 17654) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX163 rho = seg16AccX162 rho - Bool.toZMod bit * (seg16AccX162 rho - rho 17660) := by
      have hd : rho 17662 = Bool.toZMod bit * (rho 17660 - seg16AccX162 rho) := by
        rw [← hbit, seg16LadderFlatX162_eq]
        unfold seg16LadderFlatX162
        linear_combination -r5090
      unfold seg16AccX163
      linear_combination hd
    have hsely : seg16AccY163 rho = seg16AccY162 rho - Bool.toZMod bit * (seg16AccY162 rho - rho 17661) := by
      have hd : rho 17663 = Bool.toZMod bit * (rho 17661 - seg16AccY162 rho) := by
        rw [← hbit, seg16LadderFlatY162_eq]
        unfold seg16LadderFlatY162
        linear_combination -r5091
      unfold seg16AccY163
      linear_combination hd
    have hd0 : rho 17653 * rho 17654 = rho 17664 := by linear_combination r5092
    have hd1 : rho 17653 * rho 17653 = rho 17665 := by linear_combination r5093
    have hd2 : rho 17654 * rho 17654 = rho 17666 := by linear_combination r5094
    have hd3 : rho 17667 * (rho 17654 * rho 17654 + rho 17653 * rho 17653 * (-1)) = 2 * (rho 17653 * rho 17654) := by
      rw [hd0, hd1, hd2]
      linear_combination r5095
    have hd4 : rho 17668 * (2 - (rho 17654 * rho 17654 + rho 17653 * rho 17653 * (-1))) = rho 17654 * rho 17654 - rho 17653 * rho 17653 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5096
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX162 rho : Seg16.F), (seg16AccY162 rho : Seg16.F)⟩
      ⟨(rho 17653 : Seg16.F), (rho 17654 : Seg16.F)⟩
      ⟨(rho 17660 : Seg16.F), (rho 17661 : Seg16.F)⟩
      ⟨(seg16AccX163 rho : Seg16.F), (seg16AccY163 rho : Seg16.F)⟩
      ⟨(rho 17667 : Seg16.F), (rho 17668 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung162

theorem seg16_rung163 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15455 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX163 rho : Seg16.F), (seg16AccY163 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17667 : Seg16.F), (rho 17668 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX163 rho : Seg16.F), (seg16AccY163 rho : Seg16.F)⟩
        ⟨(rho 17667 : Seg16.F), (rho 17668 : Seg16.F)⟩
        ⟨(seg16AccX164 rho : Seg16.F), (seg16AccY164 rho : Seg16.F)⟩
        ⟨(rho 17681 : Seg16.F), (rho 17682 : Seg16.F)⟩ := by
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
  rcases p63 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5097, r5098, r5099, r5100, r5101, r5102, r5103, r5104, r5105, r5106, r5107, r5108, r5109, r5110, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow5097 Seg16.relationLc850 Seg16.relationLc850Part0 Seg16.relationLc850Part1 Seg16.relationLc850Part2 Seg16.relationLc850Part3 Seg16.relationLc850Part4 Seg16.relationLc850Part5 Seg16.relationLc850Part6 Seg16.relationLc850Part7 Seg16.relationLc850Part8 Seg16.relationLc850Part9 Seg16.relationLc850Part10 at r5097
  unfold Seg16.relationRow5098 at r5098
  unfold Seg16.relationRow5099 Seg16.relationLc851 Seg16.relationLc851Part0 Seg16.relationLc851Part1 Seg16.relationLc851Part2 Seg16.relationLc851Part3 Seg16.relationLc851Part4 Seg16.relationLc851Part5 at r5099
  unfold Seg16.relationRow5100 Seg16.relationLc852 Seg16.relationLc852Part0 Seg16.relationLc852Part1 Seg16.relationLc852Part2 Seg16.relationLc852Part3 Seg16.relationLc852Part4 Seg16.relationLc852Part5 at r5100
  unfold Seg16.relationRow5101 at r5101
  unfold Seg16.relationRow5102 at r5102
  unfold Seg16.relationRow5103 at r5103
  unfold Seg16.relationRow5104 Seg16.relationLc853 Seg16.relationLc853Part0 Seg16.relationLc853Part1 Seg16.relationLc853Part2 Seg16.relationLc853Part3 Seg16.relationLc853Part4 Seg16.relationLc853Part5 at r5104
  unfold Seg16.relationRow5105 Seg16.relationLc854 Seg16.relationLc854Part0 Seg16.relationLc854Part1 Seg16.relationLc854Part2 Seg16.relationLc854Part3 Seg16.relationLc854Part4 Seg16.relationLc854Part5 at r5105
  unfold Seg16.relationRow5106 at r5106
  unfold Seg16.relationRow5107 at r5107
  unfold Seg16.relationRow5108 at r5108
  unfold Seg16.relationRow5109 at r5109
  unfold Seg16.relationRow5110 at r5110
  have hrung163 (bit : Bool) (hbit : rho 15455 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX163 rho : Seg16.F), (seg16AccY163 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17667 : Seg16.F), (rho 17668 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX163 rho : Seg16.F), (seg16AccY163 rho : Seg16.F)⟩
        ⟨(rho 17667 : Seg16.F), (rho 17668 : Seg16.F)⟩
        ⟨(seg16AccX164 rho : Seg16.F), (seg16AccY164 rho : Seg16.F)⟩
        ⟨(rho 17681 : Seg16.F), (rho 17682 : Seg16.F)⟩ := by
    have hsum : seg16AccX163 rho + seg16AccY163 rho = rho 17669 := by
      rw [seg16LadderFlatX163_eq, seg16LadderFlatY163_eq]
      unfold seg16LadderFlatX163 seg16LadderFlatY163
      linear_combination r5097
    have ha0 : (rho 17667 + rho 17668) * (seg16AccX163 rho + seg16AccY163 rho) = rho 17670 := by
      rw [hsum]
      linear_combination r5098
    have ha1 : rho 17668 * seg16AccX163 rho = rho 17671 := by
      rw [seg16LadderFlatX163_eq]
      unfold seg16LadderFlatX163
      linear_combination r5099
    have ha2 : rho 17667 * seg16AccY163 rho = rho 17672 := by
      rw [seg16LadderFlatY163_eq]
      unfold seg16LadderFlatY163
      linear_combination r5100
    have ha3 : 3021 * rho 17671 * rho 17672 = rho 17673 := by
      linear_combination r5101
    have ha4 : rho 17674 * (1 + rho 17673) = rho 17671 + rho 17672 := by
      linear_combination r5102
    have ha5 : rho 17675 * (1 - rho 17673) = rho 17670 - rho 17671 - rho 17672 := by
      linear_combination r5103
    have haddx :
        rho 17674 * (1 + 3021 * (rho 17668 * seg16AccX163 rho) * (rho 17667 * seg16AccY163 rho)) =
          rho 17668 * seg16AccX163 rho + rho 17667 * seg16AccY163 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17675 * (1 - 3021 * (rho 17668 * seg16AccX163 rho) * (rho 17667 * seg16AccY163 rho)) =
          (-1) * (rho 17668 * seg16AccX163 rho) - rho 17667 * seg16AccY163 rho +
            (seg16AccY163 rho - seg16AccX163 rho * (-1)) * (rho 17667 + rho 17668) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17675 * (1 - rho 17673) = rho 17670 - rho 17671 - rho 17672 := ha5
        _ = (-1) * rho 17671 - rho 17672 + (seg16AccY163 rho - seg16AccX163 rho * (-1)) * (rho 17667 + rho 17668) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX164 rho = seg16AccX163 rho - Bool.toZMod bit * (seg16AccX163 rho - rho 17674) := by
      have hd : rho 17676 = Bool.toZMod bit * (rho 17674 - seg16AccX163 rho) := by
        rw [← hbit, seg16LadderFlatX163_eq]
        unfold seg16LadderFlatX163
        linear_combination -r5104
      unfold seg16AccX164
      linear_combination hd
    have hsely : seg16AccY164 rho = seg16AccY163 rho - Bool.toZMod bit * (seg16AccY163 rho - rho 17675) := by
      have hd : rho 17677 = Bool.toZMod bit * (rho 17675 - seg16AccY163 rho) := by
        rw [← hbit, seg16LadderFlatY163_eq]
        unfold seg16LadderFlatY163
        linear_combination -r5105
      unfold seg16AccY164
      linear_combination hd
    have hd0 : rho 17667 * rho 17668 = rho 17678 := by linear_combination r5106
    have hd1 : rho 17667 * rho 17667 = rho 17679 := by linear_combination r5107
    have hd2 : rho 17668 * rho 17668 = rho 17680 := by linear_combination r5108
    have hd3 : rho 17681 * (rho 17668 * rho 17668 + rho 17667 * rho 17667 * (-1)) = 2 * (rho 17667 * rho 17668) := by
      rw [hd0, hd1, hd2]
      linear_combination r5109
    have hd4 : rho 17682 * (2 - (rho 17668 * rho 17668 + rho 17667 * rho 17667 * (-1))) = rho 17668 * rho 17668 - rho 17667 * rho 17667 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5110
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX163 rho : Seg16.F), (seg16AccY163 rho : Seg16.F)⟩
      ⟨(rho 17667 : Seg16.F), (rho 17668 : Seg16.F)⟩
      ⟨(rho 17674 : Seg16.F), (rho 17675 : Seg16.F)⟩
      ⟨(seg16AccX164 rho : Seg16.F), (seg16AccY164 rho : Seg16.F)⟩
      ⟨(rho 17681 : Seg16.F), (rho 17682 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung163

theorem seg16_rung164 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15456 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX164 rho : Seg16.F), (seg16AccY164 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17681 : Seg16.F), (rho 17682 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX164 rho : Seg16.F), (seg16AccY164 rho : Seg16.F)⟩
        ⟨(rho 17681 : Seg16.F), (rho 17682 : Seg16.F)⟩
        ⟨(seg16AccX165 rho : Seg16.F), (seg16AccY165 rho : Seg16.F)⟩
        ⟨(rho 17695 : Seg16.F), (rho 17696 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p63, p64, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart63 at p63
  rcases p63 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5111, r5112, r5113, r5114, r5115, r5116, r5117, r5118, r5119⟩
  unfold Seg16.relationPart64 at p64
  rcases p64 with ⟨r5120, r5121, r5122, r5123, r5124, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow5111 Seg16.relationLc855 Seg16.relationLc855Part0 Seg16.relationLc855Part1 Seg16.relationLc855Part2 Seg16.relationLc855Part3 Seg16.relationLc855Part4 Seg16.relationLc855Part5 Seg16.relationLc855Part6 Seg16.relationLc855Part7 Seg16.relationLc855Part8 Seg16.relationLc855Part9 Seg16.relationLc855Part10 at r5111
  unfold Seg16.relationRow5112 at r5112
  unfold Seg16.relationRow5113 Seg16.relationLc856 Seg16.relationLc856Part0 Seg16.relationLc856Part1 Seg16.relationLc856Part2 Seg16.relationLc856Part3 Seg16.relationLc856Part4 Seg16.relationLc856Part5 at r5113
  unfold Seg16.relationRow5114 Seg16.relationLc857 Seg16.relationLc857Part0 Seg16.relationLc857Part1 Seg16.relationLc857Part2 Seg16.relationLc857Part3 Seg16.relationLc857Part4 Seg16.relationLc857Part5 at r5114
  unfold Seg16.relationRow5115 at r5115
  unfold Seg16.relationRow5116 at r5116
  unfold Seg16.relationRow5117 at r5117
  unfold Seg16.relationRow5118 Seg16.relationLc858 Seg16.relationLc858Part0 Seg16.relationLc858Part1 Seg16.relationLc858Part2 Seg16.relationLc858Part3 Seg16.relationLc858Part4 Seg16.relationLc858Part5 at r5118
  unfold Seg16.relationRow5119 Seg16.relationLc859 Seg16.relationLc859Part0 Seg16.relationLc859Part1 Seg16.relationLc859Part2 Seg16.relationLc859Part3 Seg16.relationLc859Part4 Seg16.relationLc859Part5 at r5119
  unfold Seg16.relationRow5120 at r5120
  unfold Seg16.relationRow5121 at r5121
  unfold Seg16.relationRow5122 at r5122
  unfold Seg16.relationRow5123 at r5123
  unfold Seg16.relationRow5124 at r5124
  have hrung164 (bit : Bool) (hbit : rho 15456 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX164 rho : Seg16.F), (seg16AccY164 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17681 : Seg16.F), (rho 17682 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX164 rho : Seg16.F), (seg16AccY164 rho : Seg16.F)⟩
        ⟨(rho 17681 : Seg16.F), (rho 17682 : Seg16.F)⟩
        ⟨(seg16AccX165 rho : Seg16.F), (seg16AccY165 rho : Seg16.F)⟩
        ⟨(rho 17695 : Seg16.F), (rho 17696 : Seg16.F)⟩ := by
    have hsum : seg16AccX164 rho + seg16AccY164 rho = rho 17683 := by
      rw [seg16LadderFlatX164_eq, seg16LadderFlatY164_eq]
      unfold seg16LadderFlatX164 seg16LadderFlatY164
      linear_combination r5111
    have ha0 : (rho 17681 + rho 17682) * (seg16AccX164 rho + seg16AccY164 rho) = rho 17684 := by
      rw [hsum]
      linear_combination r5112
    have ha1 : rho 17682 * seg16AccX164 rho = rho 17685 := by
      rw [seg16LadderFlatX164_eq]
      unfold seg16LadderFlatX164
      linear_combination r5113
    have ha2 : rho 17681 * seg16AccY164 rho = rho 17686 := by
      rw [seg16LadderFlatY164_eq]
      unfold seg16LadderFlatY164
      linear_combination r5114
    have ha3 : 3021 * rho 17685 * rho 17686 = rho 17687 := by
      linear_combination r5115
    have ha4 : rho 17688 * (1 + rho 17687) = rho 17685 + rho 17686 := by
      linear_combination r5116
    have ha5 : rho 17689 * (1 - rho 17687) = rho 17684 - rho 17685 - rho 17686 := by
      linear_combination r5117
    have haddx :
        rho 17688 * (1 + 3021 * (rho 17682 * seg16AccX164 rho) * (rho 17681 * seg16AccY164 rho)) =
          rho 17682 * seg16AccX164 rho + rho 17681 * seg16AccY164 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17689 * (1 - 3021 * (rho 17682 * seg16AccX164 rho) * (rho 17681 * seg16AccY164 rho)) =
          (-1) * (rho 17682 * seg16AccX164 rho) - rho 17681 * seg16AccY164 rho +
            (seg16AccY164 rho - seg16AccX164 rho * (-1)) * (rho 17681 + rho 17682) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17689 * (1 - rho 17687) = rho 17684 - rho 17685 - rho 17686 := ha5
        _ = (-1) * rho 17685 - rho 17686 + (seg16AccY164 rho - seg16AccX164 rho * (-1)) * (rho 17681 + rho 17682) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX165 rho = seg16AccX164 rho - Bool.toZMod bit * (seg16AccX164 rho - rho 17688) := by
      have hd : rho 17690 = Bool.toZMod bit * (rho 17688 - seg16AccX164 rho) := by
        rw [← hbit, seg16LadderFlatX164_eq]
        unfold seg16LadderFlatX164
        linear_combination -r5118
      unfold seg16AccX165
      linear_combination hd
    have hsely : seg16AccY165 rho = seg16AccY164 rho - Bool.toZMod bit * (seg16AccY164 rho - rho 17689) := by
      have hd : rho 17691 = Bool.toZMod bit * (rho 17689 - seg16AccY164 rho) := by
        rw [← hbit, seg16LadderFlatY164_eq]
        unfold seg16LadderFlatY164
        linear_combination -r5119
      unfold seg16AccY165
      linear_combination hd
    have hd0 : rho 17681 * rho 17682 = rho 17692 := by linear_combination r5120
    have hd1 : rho 17681 * rho 17681 = rho 17693 := by linear_combination r5121
    have hd2 : rho 17682 * rho 17682 = rho 17694 := by linear_combination r5122
    have hd3 : rho 17695 * (rho 17682 * rho 17682 + rho 17681 * rho 17681 * (-1)) = 2 * (rho 17681 * rho 17682) := by
      rw [hd0, hd1, hd2]
      linear_combination r5123
    have hd4 : rho 17696 * (2 - (rho 17682 * rho 17682 + rho 17681 * rho 17681 * (-1))) = rho 17682 * rho 17682 - rho 17681 * rho 17681 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5124
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX164 rho : Seg16.F), (seg16AccY164 rho : Seg16.F)⟩
      ⟨(rho 17681 : Seg16.F), (rho 17682 : Seg16.F)⟩
      ⟨(rho 17688 : Seg16.F), (rho 17689 : Seg16.F)⟩
      ⟨(seg16AccX165 rho : Seg16.F), (seg16AccY165 rho : Seg16.F)⟩
      ⟨(rho 17695 : Seg16.F), (rho 17696 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung164

theorem seg16_rung165 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15457 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX165 rho : Seg16.F), (seg16AccY165 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17695 : Seg16.F), (rho 17696 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX165 rho : Seg16.F), (seg16AccY165 rho : Seg16.F)⟩
        ⟨(rho 17695 : Seg16.F), (rho 17696 : Seg16.F)⟩
        ⟨(seg16AccX166 rho : Seg16.F), (seg16AccY166 rho : Seg16.F)⟩
        ⟨(rho 17709 : Seg16.F), (rho 17710 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p64, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart64 at p64
  rcases p64 with ⟨_, _, _, _, _, r5125, r5126, r5127, r5128, r5129, r5130, r5131, r5132, r5133, r5134, r5135, r5136, r5137, r5138, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow5125 Seg16.relationLc860 Seg16.relationLc860Part0 Seg16.relationLc860Part1 Seg16.relationLc860Part2 Seg16.relationLc860Part3 Seg16.relationLc860Part4 Seg16.relationLc860Part5 Seg16.relationLc860Part6 Seg16.relationLc860Part7 Seg16.relationLc860Part8 Seg16.relationLc860Part9 Seg16.relationLc860Part10 at r5125
  unfold Seg16.relationRow5126 at r5126
  unfold Seg16.relationRow5127 Seg16.relationLc861 Seg16.relationLc861Part0 Seg16.relationLc861Part1 Seg16.relationLc861Part2 Seg16.relationLc861Part3 Seg16.relationLc861Part4 Seg16.relationLc861Part5 at r5127
  unfold Seg16.relationRow5128 Seg16.relationLc862 Seg16.relationLc862Part0 Seg16.relationLc862Part1 Seg16.relationLc862Part2 Seg16.relationLc862Part3 Seg16.relationLc862Part4 Seg16.relationLc862Part5 at r5128
  unfold Seg16.relationRow5129 at r5129
  unfold Seg16.relationRow5130 at r5130
  unfold Seg16.relationRow5131 at r5131
  unfold Seg16.relationRow5132 Seg16.relationLc863 Seg16.relationLc863Part0 Seg16.relationLc863Part1 Seg16.relationLc863Part2 Seg16.relationLc863Part3 Seg16.relationLc863Part4 Seg16.relationLc863Part5 at r5132
  unfold Seg16.relationRow5133 Seg16.relationLc864 Seg16.relationLc864Part0 Seg16.relationLc864Part1 Seg16.relationLc864Part2 Seg16.relationLc864Part3 Seg16.relationLc864Part4 Seg16.relationLc864Part5 at r5133
  unfold Seg16.relationRow5134 at r5134
  unfold Seg16.relationRow5135 at r5135
  unfold Seg16.relationRow5136 at r5136
  unfold Seg16.relationRow5137 at r5137
  unfold Seg16.relationRow5138 at r5138
  have hrung165 (bit : Bool) (hbit : rho 15457 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX165 rho : Seg16.F), (seg16AccY165 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17695 : Seg16.F), (rho 17696 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX165 rho : Seg16.F), (seg16AccY165 rho : Seg16.F)⟩
        ⟨(rho 17695 : Seg16.F), (rho 17696 : Seg16.F)⟩
        ⟨(seg16AccX166 rho : Seg16.F), (seg16AccY166 rho : Seg16.F)⟩
        ⟨(rho 17709 : Seg16.F), (rho 17710 : Seg16.F)⟩ := by
    have hsum : seg16AccX165 rho + seg16AccY165 rho = rho 17697 := by
      rw [seg16LadderFlatX165_eq, seg16LadderFlatY165_eq]
      unfold seg16LadderFlatX165 seg16LadderFlatY165
      linear_combination r5125
    have ha0 : (rho 17695 + rho 17696) * (seg16AccX165 rho + seg16AccY165 rho) = rho 17698 := by
      rw [hsum]
      linear_combination r5126
    have ha1 : rho 17696 * seg16AccX165 rho = rho 17699 := by
      rw [seg16LadderFlatX165_eq]
      unfold seg16LadderFlatX165
      linear_combination r5127
    have ha2 : rho 17695 * seg16AccY165 rho = rho 17700 := by
      rw [seg16LadderFlatY165_eq]
      unfold seg16LadderFlatY165
      linear_combination r5128
    have ha3 : 3021 * rho 17699 * rho 17700 = rho 17701 := by
      linear_combination r5129
    have ha4 : rho 17702 * (1 + rho 17701) = rho 17699 + rho 17700 := by
      linear_combination r5130
    have ha5 : rho 17703 * (1 - rho 17701) = rho 17698 - rho 17699 - rho 17700 := by
      linear_combination r5131
    have haddx :
        rho 17702 * (1 + 3021 * (rho 17696 * seg16AccX165 rho) * (rho 17695 * seg16AccY165 rho)) =
          rho 17696 * seg16AccX165 rho + rho 17695 * seg16AccY165 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17703 * (1 - 3021 * (rho 17696 * seg16AccX165 rho) * (rho 17695 * seg16AccY165 rho)) =
          (-1) * (rho 17696 * seg16AccX165 rho) - rho 17695 * seg16AccY165 rho +
            (seg16AccY165 rho - seg16AccX165 rho * (-1)) * (rho 17695 + rho 17696) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17703 * (1 - rho 17701) = rho 17698 - rho 17699 - rho 17700 := ha5
        _ = (-1) * rho 17699 - rho 17700 + (seg16AccY165 rho - seg16AccX165 rho * (-1)) * (rho 17695 + rho 17696) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX166 rho = seg16AccX165 rho - Bool.toZMod bit * (seg16AccX165 rho - rho 17702) := by
      have hd : rho 17704 = Bool.toZMod bit * (rho 17702 - seg16AccX165 rho) := by
        rw [← hbit, seg16LadderFlatX165_eq]
        unfold seg16LadderFlatX165
        linear_combination -r5132
      unfold seg16AccX166
      linear_combination hd
    have hsely : seg16AccY166 rho = seg16AccY165 rho - Bool.toZMod bit * (seg16AccY165 rho - rho 17703) := by
      have hd : rho 17705 = Bool.toZMod bit * (rho 17703 - seg16AccY165 rho) := by
        rw [← hbit, seg16LadderFlatY165_eq]
        unfold seg16LadderFlatY165
        linear_combination -r5133
      unfold seg16AccY166
      linear_combination hd
    have hd0 : rho 17695 * rho 17696 = rho 17706 := by linear_combination r5134
    have hd1 : rho 17695 * rho 17695 = rho 17707 := by linear_combination r5135
    have hd2 : rho 17696 * rho 17696 = rho 17708 := by linear_combination r5136
    have hd3 : rho 17709 * (rho 17696 * rho 17696 + rho 17695 * rho 17695 * (-1)) = 2 * (rho 17695 * rho 17696) := by
      rw [hd0, hd1, hd2]
      linear_combination r5137
    have hd4 : rho 17710 * (2 - (rho 17696 * rho 17696 + rho 17695 * rho 17695 * (-1))) = rho 17696 * rho 17696 - rho 17695 * rho 17695 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5138
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX165 rho : Seg16.F), (seg16AccY165 rho : Seg16.F)⟩
      ⟨(rho 17695 : Seg16.F), (rho 17696 : Seg16.F)⟩
      ⟨(rho 17702 : Seg16.F), (rho 17703 : Seg16.F)⟩
      ⟨(seg16AccX166 rho : Seg16.F), (seg16AccY166 rho : Seg16.F)⟩
      ⟨(rho 17709 : Seg16.F), (rho 17710 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung165

theorem seg16_rung166 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15458 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX166 rho : Seg16.F), (seg16AccY166 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17709 : Seg16.F), (rho 17710 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX166 rho : Seg16.F), (seg16AccY166 rho : Seg16.F)⟩
        ⟨(rho 17709 : Seg16.F), (rho 17710 : Seg16.F)⟩
        ⟨(seg16AccX167 rho : Seg16.F), (seg16AccY167 rho : Seg16.F)⟩
        ⟨(rho 17723 : Seg16.F), (rho 17724 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p64, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart64 at p64
  rcases p64 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5139, r5140, r5141, r5142, r5143, r5144, r5145, r5146, r5147, r5148, r5149, r5150, r5151, r5152, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow5139 Seg16.relationLc865 Seg16.relationLc865Part0 Seg16.relationLc865Part1 Seg16.relationLc865Part2 Seg16.relationLc865Part3 Seg16.relationLc865Part4 Seg16.relationLc865Part5 Seg16.relationLc865Part6 Seg16.relationLc865Part7 Seg16.relationLc865Part8 Seg16.relationLc865Part9 Seg16.relationLc865Part10 at r5139
  unfold Seg16.relationRow5140 at r5140
  unfold Seg16.relationRow5141 Seg16.relationLc866 Seg16.relationLc866Part0 Seg16.relationLc866Part1 Seg16.relationLc866Part2 Seg16.relationLc866Part3 Seg16.relationLc866Part4 Seg16.relationLc866Part5 at r5141
  unfold Seg16.relationRow5142 Seg16.relationLc867 Seg16.relationLc867Part0 Seg16.relationLc867Part1 Seg16.relationLc867Part2 Seg16.relationLc867Part3 Seg16.relationLc867Part4 Seg16.relationLc867Part5 at r5142
  unfold Seg16.relationRow5143 at r5143
  unfold Seg16.relationRow5144 at r5144
  unfold Seg16.relationRow5145 at r5145
  unfold Seg16.relationRow5146 Seg16.relationLc868 Seg16.relationLc868Part0 Seg16.relationLc868Part1 Seg16.relationLc868Part2 Seg16.relationLc868Part3 Seg16.relationLc868Part4 Seg16.relationLc868Part5 at r5146
  unfold Seg16.relationRow5147 Seg16.relationLc869 Seg16.relationLc869Part0 Seg16.relationLc869Part1 Seg16.relationLc869Part2 Seg16.relationLc869Part3 Seg16.relationLc869Part4 Seg16.relationLc869Part5 at r5147
  unfold Seg16.relationRow5148 at r5148
  unfold Seg16.relationRow5149 at r5149
  unfold Seg16.relationRow5150 at r5150
  unfold Seg16.relationRow5151 at r5151
  unfold Seg16.relationRow5152 at r5152
  have hrung166 (bit : Bool) (hbit : rho 15458 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX166 rho : Seg16.F), (seg16AccY166 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17709 : Seg16.F), (rho 17710 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX166 rho : Seg16.F), (seg16AccY166 rho : Seg16.F)⟩
        ⟨(rho 17709 : Seg16.F), (rho 17710 : Seg16.F)⟩
        ⟨(seg16AccX167 rho : Seg16.F), (seg16AccY167 rho : Seg16.F)⟩
        ⟨(rho 17723 : Seg16.F), (rho 17724 : Seg16.F)⟩ := by
    have hsum : seg16AccX166 rho + seg16AccY166 rho = rho 17711 := by
      rw [seg16LadderFlatX166_eq, seg16LadderFlatY166_eq]
      unfold seg16LadderFlatX166 seg16LadderFlatY166
      linear_combination r5139
    have ha0 : (rho 17709 + rho 17710) * (seg16AccX166 rho + seg16AccY166 rho) = rho 17712 := by
      rw [hsum]
      linear_combination r5140
    have ha1 : rho 17710 * seg16AccX166 rho = rho 17713 := by
      rw [seg16LadderFlatX166_eq]
      unfold seg16LadderFlatX166
      linear_combination r5141
    have ha2 : rho 17709 * seg16AccY166 rho = rho 17714 := by
      rw [seg16LadderFlatY166_eq]
      unfold seg16LadderFlatY166
      linear_combination r5142
    have ha3 : 3021 * rho 17713 * rho 17714 = rho 17715 := by
      linear_combination r5143
    have ha4 : rho 17716 * (1 + rho 17715) = rho 17713 + rho 17714 := by
      linear_combination r5144
    have ha5 : rho 17717 * (1 - rho 17715) = rho 17712 - rho 17713 - rho 17714 := by
      linear_combination r5145
    have haddx :
        rho 17716 * (1 + 3021 * (rho 17710 * seg16AccX166 rho) * (rho 17709 * seg16AccY166 rho)) =
          rho 17710 * seg16AccX166 rho + rho 17709 * seg16AccY166 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17717 * (1 - 3021 * (rho 17710 * seg16AccX166 rho) * (rho 17709 * seg16AccY166 rho)) =
          (-1) * (rho 17710 * seg16AccX166 rho) - rho 17709 * seg16AccY166 rho +
            (seg16AccY166 rho - seg16AccX166 rho * (-1)) * (rho 17709 + rho 17710) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17717 * (1 - rho 17715) = rho 17712 - rho 17713 - rho 17714 := ha5
        _ = (-1) * rho 17713 - rho 17714 + (seg16AccY166 rho - seg16AccX166 rho * (-1)) * (rho 17709 + rho 17710) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX167 rho = seg16AccX166 rho - Bool.toZMod bit * (seg16AccX166 rho - rho 17716) := by
      have hd : rho 17718 = Bool.toZMod bit * (rho 17716 - seg16AccX166 rho) := by
        rw [← hbit, seg16LadderFlatX166_eq]
        unfold seg16LadderFlatX166
        linear_combination -r5146
      unfold seg16AccX167
      linear_combination hd
    have hsely : seg16AccY167 rho = seg16AccY166 rho - Bool.toZMod bit * (seg16AccY166 rho - rho 17717) := by
      have hd : rho 17719 = Bool.toZMod bit * (rho 17717 - seg16AccY166 rho) := by
        rw [← hbit, seg16LadderFlatY166_eq]
        unfold seg16LadderFlatY166
        linear_combination -r5147
      unfold seg16AccY167
      linear_combination hd
    have hd0 : rho 17709 * rho 17710 = rho 17720 := by linear_combination r5148
    have hd1 : rho 17709 * rho 17709 = rho 17721 := by linear_combination r5149
    have hd2 : rho 17710 * rho 17710 = rho 17722 := by linear_combination r5150
    have hd3 : rho 17723 * (rho 17710 * rho 17710 + rho 17709 * rho 17709 * (-1)) = 2 * (rho 17709 * rho 17710) := by
      rw [hd0, hd1, hd2]
      linear_combination r5151
    have hd4 : rho 17724 * (2 - (rho 17710 * rho 17710 + rho 17709 * rho 17709 * (-1))) = rho 17710 * rho 17710 - rho 17709 * rho 17709 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5152
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX166 rho : Seg16.F), (seg16AccY166 rho : Seg16.F)⟩
      ⟨(rho 17709 : Seg16.F), (rho 17710 : Seg16.F)⟩
      ⟨(rho 17716 : Seg16.F), (rho 17717 : Seg16.F)⟩
      ⟨(seg16AccX167 rho : Seg16.F), (seg16AccY167 rho : Seg16.F)⟩
      ⟨(rho 17723 : Seg16.F), (rho 17724 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung166

theorem seg16_rung167 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15459 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX167 rho : Seg16.F), (seg16AccY167 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17723 : Seg16.F), (rho 17724 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX167 rho : Seg16.F), (seg16AccY167 rho : Seg16.F)⟩
        ⟨(rho 17723 : Seg16.F), (rho 17724 : Seg16.F)⟩
        ⟨(seg16AccX168 rho : Seg16.F), (seg16AccY168 rho : Seg16.F)⟩
        ⟨(rho 17737 : Seg16.F), (rho 17738 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p64, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart64 at p64
  rcases p64 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5153, r5154, r5155, r5156, r5157, r5158, r5159, r5160, r5161, r5162, r5163, r5164, r5165, r5166, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow5153 Seg16.relationLc870 Seg16.relationLc870Part0 Seg16.relationLc870Part1 Seg16.relationLc870Part2 Seg16.relationLc870Part3 Seg16.relationLc870Part4 Seg16.relationLc870Part5 Seg16.relationLc870Part6 Seg16.relationLc870Part7 Seg16.relationLc870Part8 Seg16.relationLc870Part9 Seg16.relationLc870Part10 at r5153
  unfold Seg16.relationRow5154 at r5154
  unfold Seg16.relationRow5155 Seg16.relationLc871 Seg16.relationLc871Part0 Seg16.relationLc871Part1 Seg16.relationLc871Part2 Seg16.relationLc871Part3 Seg16.relationLc871Part4 Seg16.relationLc871Part5 at r5155
  unfold Seg16.relationRow5156 Seg16.relationLc872 Seg16.relationLc872Part0 Seg16.relationLc872Part1 Seg16.relationLc872Part2 Seg16.relationLc872Part3 Seg16.relationLc872Part4 Seg16.relationLc872Part5 at r5156
  unfold Seg16.relationRow5157 at r5157
  unfold Seg16.relationRow5158 at r5158
  unfold Seg16.relationRow5159 at r5159
  unfold Seg16.relationRow5160 Seg16.relationLc873 Seg16.relationLc873Part0 Seg16.relationLc873Part1 Seg16.relationLc873Part2 Seg16.relationLc873Part3 Seg16.relationLc873Part4 Seg16.relationLc873Part5 at r5160
  unfold Seg16.relationRow5161 Seg16.relationLc874 Seg16.relationLc874Part0 Seg16.relationLc874Part1 Seg16.relationLc874Part2 Seg16.relationLc874Part3 Seg16.relationLc874Part4 Seg16.relationLc874Part5 at r5161
  unfold Seg16.relationRow5162 at r5162
  unfold Seg16.relationRow5163 at r5163
  unfold Seg16.relationRow5164 at r5164
  unfold Seg16.relationRow5165 at r5165
  unfold Seg16.relationRow5166 at r5166
  have hrung167 (bit : Bool) (hbit : rho 15459 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX167 rho : Seg16.F), (seg16AccY167 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17723 : Seg16.F), (rho 17724 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX167 rho : Seg16.F), (seg16AccY167 rho : Seg16.F)⟩
        ⟨(rho 17723 : Seg16.F), (rho 17724 : Seg16.F)⟩
        ⟨(seg16AccX168 rho : Seg16.F), (seg16AccY168 rho : Seg16.F)⟩
        ⟨(rho 17737 : Seg16.F), (rho 17738 : Seg16.F)⟩ := by
    have hsum : seg16AccX167 rho + seg16AccY167 rho = rho 17725 := by
      rw [seg16LadderFlatX167_eq, seg16LadderFlatY167_eq]
      unfold seg16LadderFlatX167 seg16LadderFlatY167
      linear_combination r5153
    have ha0 : (rho 17723 + rho 17724) * (seg16AccX167 rho + seg16AccY167 rho) = rho 17726 := by
      rw [hsum]
      linear_combination r5154
    have ha1 : rho 17724 * seg16AccX167 rho = rho 17727 := by
      rw [seg16LadderFlatX167_eq]
      unfold seg16LadderFlatX167
      linear_combination r5155
    have ha2 : rho 17723 * seg16AccY167 rho = rho 17728 := by
      rw [seg16LadderFlatY167_eq]
      unfold seg16LadderFlatY167
      linear_combination r5156
    have ha3 : 3021 * rho 17727 * rho 17728 = rho 17729 := by
      linear_combination r5157
    have ha4 : rho 17730 * (1 + rho 17729) = rho 17727 + rho 17728 := by
      linear_combination r5158
    have ha5 : rho 17731 * (1 - rho 17729) = rho 17726 - rho 17727 - rho 17728 := by
      linear_combination r5159
    have haddx :
        rho 17730 * (1 + 3021 * (rho 17724 * seg16AccX167 rho) * (rho 17723 * seg16AccY167 rho)) =
          rho 17724 * seg16AccX167 rho + rho 17723 * seg16AccY167 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17731 * (1 - 3021 * (rho 17724 * seg16AccX167 rho) * (rho 17723 * seg16AccY167 rho)) =
          (-1) * (rho 17724 * seg16AccX167 rho) - rho 17723 * seg16AccY167 rho +
            (seg16AccY167 rho - seg16AccX167 rho * (-1)) * (rho 17723 + rho 17724) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17731 * (1 - rho 17729) = rho 17726 - rho 17727 - rho 17728 := ha5
        _ = (-1) * rho 17727 - rho 17728 + (seg16AccY167 rho - seg16AccX167 rho * (-1)) * (rho 17723 + rho 17724) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX168 rho = seg16AccX167 rho - Bool.toZMod bit * (seg16AccX167 rho - rho 17730) := by
      have hd : rho 17732 = Bool.toZMod bit * (rho 17730 - seg16AccX167 rho) := by
        rw [← hbit, seg16LadderFlatX167_eq]
        unfold seg16LadderFlatX167
        linear_combination -r5160
      unfold seg16AccX168
      linear_combination hd
    have hsely : seg16AccY168 rho = seg16AccY167 rho - Bool.toZMod bit * (seg16AccY167 rho - rho 17731) := by
      have hd : rho 17733 = Bool.toZMod bit * (rho 17731 - seg16AccY167 rho) := by
        rw [← hbit, seg16LadderFlatY167_eq]
        unfold seg16LadderFlatY167
        linear_combination -r5161
      unfold seg16AccY168
      linear_combination hd
    have hd0 : rho 17723 * rho 17724 = rho 17734 := by linear_combination r5162
    have hd1 : rho 17723 * rho 17723 = rho 17735 := by linear_combination r5163
    have hd2 : rho 17724 * rho 17724 = rho 17736 := by linear_combination r5164
    have hd3 : rho 17737 * (rho 17724 * rho 17724 + rho 17723 * rho 17723 * (-1)) = 2 * (rho 17723 * rho 17724) := by
      rw [hd0, hd1, hd2]
      linear_combination r5165
    have hd4 : rho 17738 * (2 - (rho 17724 * rho 17724 + rho 17723 * rho 17723 * (-1))) = rho 17724 * rho 17724 - rho 17723 * rho 17723 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5166
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX167 rho : Seg16.F), (seg16AccY167 rho : Seg16.F)⟩
      ⟨(rho 17723 : Seg16.F), (rho 17724 : Seg16.F)⟩
      ⟨(rho 17730 : Seg16.F), (rho 17731 : Seg16.F)⟩
      ⟨(seg16AccX168 rho : Seg16.F), (seg16AccY168 rho : Seg16.F)⟩
      ⟨(rho 17737 : Seg16.F), (rho 17738 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung167

theorem seg16_rung168 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15460 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX168 rho : Seg16.F), (seg16AccY168 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17737 : Seg16.F), (rho 17738 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX168 rho : Seg16.F), (seg16AccY168 rho : Seg16.F)⟩
        ⟨(rho 17737 : Seg16.F), (rho 17738 : Seg16.F)⟩
        ⟨(seg16AccX169 rho : Seg16.F), (seg16AccY169 rho : Seg16.F)⟩
        ⟨(rho 17751 : Seg16.F), (rho 17752 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p64, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart64 at p64
  rcases p64 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5167, r5168, r5169, r5170, r5171, r5172, r5173, r5174, r5175, r5176, r5177, r5178, r5179, r5180, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow5167 Seg16.relationLc875 Seg16.relationLc875Part0 Seg16.relationLc875Part1 Seg16.relationLc875Part2 Seg16.relationLc875Part3 Seg16.relationLc875Part4 Seg16.relationLc875Part5 Seg16.relationLc875Part6 Seg16.relationLc875Part7 Seg16.relationLc875Part8 Seg16.relationLc875Part9 Seg16.relationLc875Part10 at r5167
  unfold Seg16.relationRow5168 at r5168
  unfold Seg16.relationRow5169 Seg16.relationLc876 Seg16.relationLc876Part0 Seg16.relationLc876Part1 Seg16.relationLc876Part2 Seg16.relationLc876Part3 Seg16.relationLc876Part4 Seg16.relationLc876Part5 at r5169
  unfold Seg16.relationRow5170 Seg16.relationLc877 Seg16.relationLc877Part0 Seg16.relationLc877Part1 Seg16.relationLc877Part2 Seg16.relationLc877Part3 Seg16.relationLc877Part4 Seg16.relationLc877Part5 at r5170
  unfold Seg16.relationRow5171 at r5171
  unfold Seg16.relationRow5172 at r5172
  unfold Seg16.relationRow5173 at r5173
  unfold Seg16.relationRow5174 Seg16.relationLc878 Seg16.relationLc878Part0 Seg16.relationLc878Part1 Seg16.relationLc878Part2 Seg16.relationLc878Part3 Seg16.relationLc878Part4 Seg16.relationLc878Part5 at r5174
  unfold Seg16.relationRow5175 Seg16.relationLc879 Seg16.relationLc879Part0 Seg16.relationLc879Part1 Seg16.relationLc879Part2 Seg16.relationLc879Part3 Seg16.relationLc879Part4 Seg16.relationLc879Part5 at r5175
  unfold Seg16.relationRow5176 at r5176
  unfold Seg16.relationRow5177 at r5177
  unfold Seg16.relationRow5178 at r5178
  unfold Seg16.relationRow5179 at r5179
  unfold Seg16.relationRow5180 at r5180
  have hrung168 (bit : Bool) (hbit : rho 15460 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX168 rho : Seg16.F), (seg16AccY168 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17737 : Seg16.F), (rho 17738 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX168 rho : Seg16.F), (seg16AccY168 rho : Seg16.F)⟩
        ⟨(rho 17737 : Seg16.F), (rho 17738 : Seg16.F)⟩
        ⟨(seg16AccX169 rho : Seg16.F), (seg16AccY169 rho : Seg16.F)⟩
        ⟨(rho 17751 : Seg16.F), (rho 17752 : Seg16.F)⟩ := by
    have hsum : seg16AccX168 rho + seg16AccY168 rho = rho 17739 := by
      rw [seg16LadderFlatX168_eq, seg16LadderFlatY168_eq]
      unfold seg16LadderFlatX168 seg16LadderFlatY168
      linear_combination r5167
    have ha0 : (rho 17737 + rho 17738) * (seg16AccX168 rho + seg16AccY168 rho) = rho 17740 := by
      rw [hsum]
      linear_combination r5168
    have ha1 : rho 17738 * seg16AccX168 rho = rho 17741 := by
      rw [seg16LadderFlatX168_eq]
      unfold seg16LadderFlatX168
      linear_combination r5169
    have ha2 : rho 17737 * seg16AccY168 rho = rho 17742 := by
      rw [seg16LadderFlatY168_eq]
      unfold seg16LadderFlatY168
      linear_combination r5170
    have ha3 : 3021 * rho 17741 * rho 17742 = rho 17743 := by
      linear_combination r5171
    have ha4 : rho 17744 * (1 + rho 17743) = rho 17741 + rho 17742 := by
      linear_combination r5172
    have ha5 : rho 17745 * (1 - rho 17743) = rho 17740 - rho 17741 - rho 17742 := by
      linear_combination r5173
    have haddx :
        rho 17744 * (1 + 3021 * (rho 17738 * seg16AccX168 rho) * (rho 17737 * seg16AccY168 rho)) =
          rho 17738 * seg16AccX168 rho + rho 17737 * seg16AccY168 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17745 * (1 - 3021 * (rho 17738 * seg16AccX168 rho) * (rho 17737 * seg16AccY168 rho)) =
          (-1) * (rho 17738 * seg16AccX168 rho) - rho 17737 * seg16AccY168 rho +
            (seg16AccY168 rho - seg16AccX168 rho * (-1)) * (rho 17737 + rho 17738) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17745 * (1 - rho 17743) = rho 17740 - rho 17741 - rho 17742 := ha5
        _ = (-1) * rho 17741 - rho 17742 + (seg16AccY168 rho - seg16AccX168 rho * (-1)) * (rho 17737 + rho 17738) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX169 rho = seg16AccX168 rho - Bool.toZMod bit * (seg16AccX168 rho - rho 17744) := by
      have hd : rho 17746 = Bool.toZMod bit * (rho 17744 - seg16AccX168 rho) := by
        rw [← hbit, seg16LadderFlatX168_eq]
        unfold seg16LadderFlatX168
        linear_combination -r5174
      unfold seg16AccX169
      linear_combination hd
    have hsely : seg16AccY169 rho = seg16AccY168 rho - Bool.toZMod bit * (seg16AccY168 rho - rho 17745) := by
      have hd : rho 17747 = Bool.toZMod bit * (rho 17745 - seg16AccY168 rho) := by
        rw [← hbit, seg16LadderFlatY168_eq]
        unfold seg16LadderFlatY168
        linear_combination -r5175
      unfold seg16AccY169
      linear_combination hd
    have hd0 : rho 17737 * rho 17738 = rho 17748 := by linear_combination r5176
    have hd1 : rho 17737 * rho 17737 = rho 17749 := by linear_combination r5177
    have hd2 : rho 17738 * rho 17738 = rho 17750 := by linear_combination r5178
    have hd3 : rho 17751 * (rho 17738 * rho 17738 + rho 17737 * rho 17737 * (-1)) = 2 * (rho 17737 * rho 17738) := by
      rw [hd0, hd1, hd2]
      linear_combination r5179
    have hd4 : rho 17752 * (2 - (rho 17738 * rho 17738 + rho 17737 * rho 17737 * (-1))) = rho 17738 * rho 17738 - rho 17737 * rho 17737 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5180
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX168 rho : Seg16.F), (seg16AccY168 rho : Seg16.F)⟩
      ⟨(rho 17737 : Seg16.F), (rho 17738 : Seg16.F)⟩
      ⟨(rho 17744 : Seg16.F), (rho 17745 : Seg16.F)⟩
      ⟨(seg16AccX169 rho : Seg16.F), (seg16AccY169 rho : Seg16.F)⟩
      ⟨(rho 17751 : Seg16.F), (rho 17752 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung168

theorem seg16_rung169 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15461 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX169 rho : Seg16.F), (seg16AccY169 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17751 : Seg16.F), (rho 17752 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX169 rho : Seg16.F), (seg16AccY169 rho : Seg16.F)⟩
        ⟨(rho 17751 : Seg16.F), (rho 17752 : Seg16.F)⟩
        ⟨(seg16AccX170 rho : Seg16.F), (seg16AccY170 rho : Seg16.F)⟩
        ⟨(rho 17765 : Seg16.F), (rho 17766 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p64, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart64 at p64
  rcases p64 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5181, r5182, r5183, r5184, r5185, r5186, r5187, r5188, r5189, r5190, r5191, r5192, r5193, r5194, _, _, _, _, _⟩
  unfold Seg16.relationRow5181 Seg16.relationLc880 Seg16.relationLc880Part0 Seg16.relationLc880Part1 Seg16.relationLc880Part2 Seg16.relationLc880Part3 Seg16.relationLc880Part4 Seg16.relationLc880Part5 Seg16.relationLc880Part6 Seg16.relationLc880Part7 Seg16.relationLc880Part8 Seg16.relationLc880Part9 Seg16.relationLc880Part10 at r5181
  unfold Seg16.relationRow5182 at r5182
  unfold Seg16.relationRow5183 Seg16.relationLc881 Seg16.relationLc881Part0 Seg16.relationLc881Part1 Seg16.relationLc881Part2 Seg16.relationLc881Part3 Seg16.relationLc881Part4 Seg16.relationLc881Part5 at r5183
  unfold Seg16.relationRow5184 Seg16.relationLc882 Seg16.relationLc882Part0 Seg16.relationLc882Part1 Seg16.relationLc882Part2 Seg16.relationLc882Part3 Seg16.relationLc882Part4 Seg16.relationLc882Part5 at r5184
  unfold Seg16.relationRow5185 at r5185
  unfold Seg16.relationRow5186 at r5186
  unfold Seg16.relationRow5187 at r5187
  unfold Seg16.relationRow5188 Seg16.relationLc883 Seg16.relationLc883Part0 Seg16.relationLc883Part1 Seg16.relationLc883Part2 Seg16.relationLc883Part3 Seg16.relationLc883Part4 Seg16.relationLc883Part5 at r5188
  unfold Seg16.relationRow5189 Seg16.relationLc884 Seg16.relationLc884Part0 Seg16.relationLc884Part1 Seg16.relationLc884Part2 Seg16.relationLc884Part3 Seg16.relationLc884Part4 Seg16.relationLc884Part5 at r5189
  unfold Seg16.relationRow5190 at r5190
  unfold Seg16.relationRow5191 at r5191
  unfold Seg16.relationRow5192 at r5192
  unfold Seg16.relationRow5193 at r5193
  unfold Seg16.relationRow5194 at r5194
  have hrung169 (bit : Bool) (hbit : rho 15461 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX169 rho : Seg16.F), (seg16AccY169 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17751 : Seg16.F), (rho 17752 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX169 rho : Seg16.F), (seg16AccY169 rho : Seg16.F)⟩
        ⟨(rho 17751 : Seg16.F), (rho 17752 : Seg16.F)⟩
        ⟨(seg16AccX170 rho : Seg16.F), (seg16AccY170 rho : Seg16.F)⟩
        ⟨(rho 17765 : Seg16.F), (rho 17766 : Seg16.F)⟩ := by
    have hsum : seg16AccX169 rho + seg16AccY169 rho = rho 17753 := by
      rw [seg16LadderFlatX169_eq, seg16LadderFlatY169_eq]
      unfold seg16LadderFlatX169 seg16LadderFlatY169
      linear_combination r5181
    have ha0 : (rho 17751 + rho 17752) * (seg16AccX169 rho + seg16AccY169 rho) = rho 17754 := by
      rw [hsum]
      linear_combination r5182
    have ha1 : rho 17752 * seg16AccX169 rho = rho 17755 := by
      rw [seg16LadderFlatX169_eq]
      unfold seg16LadderFlatX169
      linear_combination r5183
    have ha2 : rho 17751 * seg16AccY169 rho = rho 17756 := by
      rw [seg16LadderFlatY169_eq]
      unfold seg16LadderFlatY169
      linear_combination r5184
    have ha3 : 3021 * rho 17755 * rho 17756 = rho 17757 := by
      linear_combination r5185
    have ha4 : rho 17758 * (1 + rho 17757) = rho 17755 + rho 17756 := by
      linear_combination r5186
    have ha5 : rho 17759 * (1 - rho 17757) = rho 17754 - rho 17755 - rho 17756 := by
      linear_combination r5187
    have haddx :
        rho 17758 * (1 + 3021 * (rho 17752 * seg16AccX169 rho) * (rho 17751 * seg16AccY169 rho)) =
          rho 17752 * seg16AccX169 rho + rho 17751 * seg16AccY169 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17759 * (1 - 3021 * (rho 17752 * seg16AccX169 rho) * (rho 17751 * seg16AccY169 rho)) =
          (-1) * (rho 17752 * seg16AccX169 rho) - rho 17751 * seg16AccY169 rho +
            (seg16AccY169 rho - seg16AccX169 rho * (-1)) * (rho 17751 + rho 17752) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17759 * (1 - rho 17757) = rho 17754 - rho 17755 - rho 17756 := ha5
        _ = (-1) * rho 17755 - rho 17756 + (seg16AccY169 rho - seg16AccX169 rho * (-1)) * (rho 17751 + rho 17752) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX170 rho = seg16AccX169 rho - Bool.toZMod bit * (seg16AccX169 rho - rho 17758) := by
      have hd : rho 17760 = Bool.toZMod bit * (rho 17758 - seg16AccX169 rho) := by
        rw [← hbit, seg16LadderFlatX169_eq]
        unfold seg16LadderFlatX169
        linear_combination -r5188
      unfold seg16AccX170
      linear_combination hd
    have hsely : seg16AccY170 rho = seg16AccY169 rho - Bool.toZMod bit * (seg16AccY169 rho - rho 17759) := by
      have hd : rho 17761 = Bool.toZMod bit * (rho 17759 - seg16AccY169 rho) := by
        rw [← hbit, seg16LadderFlatY169_eq]
        unfold seg16LadderFlatY169
        linear_combination -r5189
      unfold seg16AccY170
      linear_combination hd
    have hd0 : rho 17751 * rho 17752 = rho 17762 := by linear_combination r5190
    have hd1 : rho 17751 * rho 17751 = rho 17763 := by linear_combination r5191
    have hd2 : rho 17752 * rho 17752 = rho 17764 := by linear_combination r5192
    have hd3 : rho 17765 * (rho 17752 * rho 17752 + rho 17751 * rho 17751 * (-1)) = 2 * (rho 17751 * rho 17752) := by
      rw [hd0, hd1, hd2]
      linear_combination r5193
    have hd4 : rho 17766 * (2 - (rho 17752 * rho 17752 + rho 17751 * rho 17751 * (-1))) = rho 17752 * rho 17752 - rho 17751 * rho 17751 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5194
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX169 rho : Seg16.F), (seg16AccY169 rho : Seg16.F)⟩
      ⟨(rho 17751 : Seg16.F), (rho 17752 : Seg16.F)⟩
      ⟨(rho 17758 : Seg16.F), (rho 17759 : Seg16.F)⟩
      ⟨(seg16AccX170 rho : Seg16.F), (seg16AccY170 rho : Seg16.F)⟩
      ⟨(rho 17765 : Seg16.F), (rho 17766 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung169

theorem seg16_rung170 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15462 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX170 rho : Seg16.F), (seg16AccY170 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17765 : Seg16.F), (rho 17766 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX170 rho : Seg16.F), (seg16AccY170 rho : Seg16.F)⟩
        ⟨(rho 17765 : Seg16.F), (rho 17766 : Seg16.F)⟩
        ⟨(seg16AccX171 rho : Seg16.F), (seg16AccY171 rho : Seg16.F)⟩
        ⟨(rho 17779 : Seg16.F), (rho 17780 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p64, p65, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart64 at p64
  rcases p64 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5195, r5196, r5197, r5198, r5199⟩
  unfold Seg16.relationPart65 at p65
  rcases p65 with ⟨r5200, r5201, r5202, r5203, r5204, r5205, r5206, r5207, r5208, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow5195 Seg16.relationLc885 Seg16.relationLc885Part0 Seg16.relationLc885Part1 Seg16.relationLc885Part2 Seg16.relationLc885Part3 Seg16.relationLc885Part4 Seg16.relationLc885Part5 Seg16.relationLc885Part6 Seg16.relationLc885Part7 Seg16.relationLc885Part8 Seg16.relationLc885Part9 Seg16.relationLc885Part10 at r5195
  unfold Seg16.relationRow5196 at r5196
  unfold Seg16.relationRow5197 Seg16.relationLc886 Seg16.relationLc886Part0 Seg16.relationLc886Part1 Seg16.relationLc886Part2 Seg16.relationLc886Part3 Seg16.relationLc886Part4 Seg16.relationLc886Part5 at r5197
  unfold Seg16.relationRow5198 Seg16.relationLc887 Seg16.relationLc887Part0 Seg16.relationLc887Part1 Seg16.relationLc887Part2 Seg16.relationLc887Part3 Seg16.relationLc887Part4 Seg16.relationLc887Part5 at r5198
  unfold Seg16.relationRow5199 at r5199
  unfold Seg16.relationRow5200 at r5200
  unfold Seg16.relationRow5201 at r5201
  unfold Seg16.relationRow5202 Seg16.relationLc888 Seg16.relationLc888Part0 Seg16.relationLc888Part1 Seg16.relationLc888Part2 Seg16.relationLc888Part3 Seg16.relationLc888Part4 Seg16.relationLc888Part5 at r5202
  unfold Seg16.relationRow5203 Seg16.relationLc889 Seg16.relationLc889Part0 Seg16.relationLc889Part1 Seg16.relationLc889Part2 Seg16.relationLc889Part3 Seg16.relationLc889Part4 Seg16.relationLc889Part5 at r5203
  unfold Seg16.relationRow5204 at r5204
  unfold Seg16.relationRow5205 at r5205
  unfold Seg16.relationRow5206 at r5206
  unfold Seg16.relationRow5207 at r5207
  unfold Seg16.relationRow5208 at r5208
  have hrung170 (bit : Bool) (hbit : rho 15462 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX170 rho : Seg16.F), (seg16AccY170 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17765 : Seg16.F), (rho 17766 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX170 rho : Seg16.F), (seg16AccY170 rho : Seg16.F)⟩
        ⟨(rho 17765 : Seg16.F), (rho 17766 : Seg16.F)⟩
        ⟨(seg16AccX171 rho : Seg16.F), (seg16AccY171 rho : Seg16.F)⟩
        ⟨(rho 17779 : Seg16.F), (rho 17780 : Seg16.F)⟩ := by
    have hsum : seg16AccX170 rho + seg16AccY170 rho = rho 17767 := by
      rw [seg16LadderFlatX170_eq, seg16LadderFlatY170_eq]
      unfold seg16LadderFlatX170 seg16LadderFlatY170
      linear_combination r5195
    have ha0 : (rho 17765 + rho 17766) * (seg16AccX170 rho + seg16AccY170 rho) = rho 17768 := by
      rw [hsum]
      linear_combination r5196
    have ha1 : rho 17766 * seg16AccX170 rho = rho 17769 := by
      rw [seg16LadderFlatX170_eq]
      unfold seg16LadderFlatX170
      linear_combination r5197
    have ha2 : rho 17765 * seg16AccY170 rho = rho 17770 := by
      rw [seg16LadderFlatY170_eq]
      unfold seg16LadderFlatY170
      linear_combination r5198
    have ha3 : 3021 * rho 17769 * rho 17770 = rho 17771 := by
      linear_combination r5199
    have ha4 : rho 17772 * (1 + rho 17771) = rho 17769 + rho 17770 := by
      linear_combination r5200
    have ha5 : rho 17773 * (1 - rho 17771) = rho 17768 - rho 17769 - rho 17770 := by
      linear_combination r5201
    have haddx :
        rho 17772 * (1 + 3021 * (rho 17766 * seg16AccX170 rho) * (rho 17765 * seg16AccY170 rho)) =
          rho 17766 * seg16AccX170 rho + rho 17765 * seg16AccY170 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17773 * (1 - 3021 * (rho 17766 * seg16AccX170 rho) * (rho 17765 * seg16AccY170 rho)) =
          (-1) * (rho 17766 * seg16AccX170 rho) - rho 17765 * seg16AccY170 rho +
            (seg16AccY170 rho - seg16AccX170 rho * (-1)) * (rho 17765 + rho 17766) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17773 * (1 - rho 17771) = rho 17768 - rho 17769 - rho 17770 := ha5
        _ = (-1) * rho 17769 - rho 17770 + (seg16AccY170 rho - seg16AccX170 rho * (-1)) * (rho 17765 + rho 17766) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX171 rho = seg16AccX170 rho - Bool.toZMod bit * (seg16AccX170 rho - rho 17772) := by
      have hd : rho 17774 = Bool.toZMod bit * (rho 17772 - seg16AccX170 rho) := by
        rw [← hbit, seg16LadderFlatX170_eq]
        unfold seg16LadderFlatX170
        linear_combination -r5202
      unfold seg16AccX171
      linear_combination hd
    have hsely : seg16AccY171 rho = seg16AccY170 rho - Bool.toZMod bit * (seg16AccY170 rho - rho 17773) := by
      have hd : rho 17775 = Bool.toZMod bit * (rho 17773 - seg16AccY170 rho) := by
        rw [← hbit, seg16LadderFlatY170_eq]
        unfold seg16LadderFlatY170
        linear_combination -r5203
      unfold seg16AccY171
      linear_combination hd
    have hd0 : rho 17765 * rho 17766 = rho 17776 := by linear_combination r5204
    have hd1 : rho 17765 * rho 17765 = rho 17777 := by linear_combination r5205
    have hd2 : rho 17766 * rho 17766 = rho 17778 := by linear_combination r5206
    have hd3 : rho 17779 * (rho 17766 * rho 17766 + rho 17765 * rho 17765 * (-1)) = 2 * (rho 17765 * rho 17766) := by
      rw [hd0, hd1, hd2]
      linear_combination r5207
    have hd4 : rho 17780 * (2 - (rho 17766 * rho 17766 + rho 17765 * rho 17765 * (-1))) = rho 17766 * rho 17766 - rho 17765 * rho 17765 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5208
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX170 rho : Seg16.F), (seg16AccY170 rho : Seg16.F)⟩
      ⟨(rho 17765 : Seg16.F), (rho 17766 : Seg16.F)⟩
      ⟨(rho 17772 : Seg16.F), (rho 17773 : Seg16.F)⟩
      ⟨(seg16AccX171 rho : Seg16.F), (seg16AccY171 rho : Seg16.F)⟩
      ⟨(rho 17779 : Seg16.F), (rho 17780 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung170

theorem seg16_rung171 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15463 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX171 rho : Seg16.F), (seg16AccY171 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17779 : Seg16.F), (rho 17780 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX171 rho : Seg16.F), (seg16AccY171 rho : Seg16.F)⟩
        ⟨(rho 17779 : Seg16.F), (rho 17780 : Seg16.F)⟩
        ⟨(seg16AccX172 rho : Seg16.F), (seg16AccY172 rho : Seg16.F)⟩
        ⟨(rho 17793 : Seg16.F), (rho 17794 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p65, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart65 at p65
  rcases p65 with ⟨_, _, _, _, _, _, _, _, _, r5209, r5210, r5211, r5212, r5213, r5214, r5215, r5216, r5217, r5218, r5219, r5220, r5221, r5222, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow5209 Seg16.relationLc890 Seg16.relationLc890Part0 Seg16.relationLc890Part1 Seg16.relationLc890Part2 Seg16.relationLc890Part3 Seg16.relationLc890Part4 Seg16.relationLc890Part5 Seg16.relationLc890Part6 Seg16.relationLc890Part7 Seg16.relationLc890Part8 Seg16.relationLc890Part9 Seg16.relationLc890Part10 at r5209
  unfold Seg16.relationRow5210 at r5210
  unfold Seg16.relationRow5211 Seg16.relationLc891 Seg16.relationLc891Part0 Seg16.relationLc891Part1 Seg16.relationLc891Part2 Seg16.relationLc891Part3 Seg16.relationLc891Part4 Seg16.relationLc891Part5 at r5211
  unfold Seg16.relationRow5212 Seg16.relationLc892 Seg16.relationLc892Part0 Seg16.relationLc892Part1 Seg16.relationLc892Part2 Seg16.relationLc892Part3 Seg16.relationLc892Part4 Seg16.relationLc892Part5 at r5212
  unfold Seg16.relationRow5213 at r5213
  unfold Seg16.relationRow5214 at r5214
  unfold Seg16.relationRow5215 at r5215
  unfold Seg16.relationRow5216 Seg16.relationLc893 Seg16.relationLc893Part0 Seg16.relationLc893Part1 Seg16.relationLc893Part2 Seg16.relationLc893Part3 Seg16.relationLc893Part4 Seg16.relationLc893Part5 at r5216
  unfold Seg16.relationRow5217 Seg16.relationLc894 Seg16.relationLc894Part0 Seg16.relationLc894Part1 Seg16.relationLc894Part2 Seg16.relationLc894Part3 Seg16.relationLc894Part4 Seg16.relationLc894Part5 at r5217
  unfold Seg16.relationRow5218 at r5218
  unfold Seg16.relationRow5219 at r5219
  unfold Seg16.relationRow5220 at r5220
  unfold Seg16.relationRow5221 at r5221
  unfold Seg16.relationRow5222 at r5222
  have hrung171 (bit : Bool) (hbit : rho 15463 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX171 rho : Seg16.F), (seg16AccY171 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17779 : Seg16.F), (rho 17780 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX171 rho : Seg16.F), (seg16AccY171 rho : Seg16.F)⟩
        ⟨(rho 17779 : Seg16.F), (rho 17780 : Seg16.F)⟩
        ⟨(seg16AccX172 rho : Seg16.F), (seg16AccY172 rho : Seg16.F)⟩
        ⟨(rho 17793 : Seg16.F), (rho 17794 : Seg16.F)⟩ := by
    have hsum : seg16AccX171 rho + seg16AccY171 rho = rho 17781 := by
      rw [seg16LadderFlatX171_eq, seg16LadderFlatY171_eq]
      unfold seg16LadderFlatX171 seg16LadderFlatY171
      linear_combination r5209
    have ha0 : (rho 17779 + rho 17780) * (seg16AccX171 rho + seg16AccY171 rho) = rho 17782 := by
      rw [hsum]
      linear_combination r5210
    have ha1 : rho 17780 * seg16AccX171 rho = rho 17783 := by
      rw [seg16LadderFlatX171_eq]
      unfold seg16LadderFlatX171
      linear_combination r5211
    have ha2 : rho 17779 * seg16AccY171 rho = rho 17784 := by
      rw [seg16LadderFlatY171_eq]
      unfold seg16LadderFlatY171
      linear_combination r5212
    have ha3 : 3021 * rho 17783 * rho 17784 = rho 17785 := by
      linear_combination r5213
    have ha4 : rho 17786 * (1 + rho 17785) = rho 17783 + rho 17784 := by
      linear_combination r5214
    have ha5 : rho 17787 * (1 - rho 17785) = rho 17782 - rho 17783 - rho 17784 := by
      linear_combination r5215
    have haddx :
        rho 17786 * (1 + 3021 * (rho 17780 * seg16AccX171 rho) * (rho 17779 * seg16AccY171 rho)) =
          rho 17780 * seg16AccX171 rho + rho 17779 * seg16AccY171 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17787 * (1 - 3021 * (rho 17780 * seg16AccX171 rho) * (rho 17779 * seg16AccY171 rho)) =
          (-1) * (rho 17780 * seg16AccX171 rho) - rho 17779 * seg16AccY171 rho +
            (seg16AccY171 rho - seg16AccX171 rho * (-1)) * (rho 17779 + rho 17780) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17787 * (1 - rho 17785) = rho 17782 - rho 17783 - rho 17784 := ha5
        _ = (-1) * rho 17783 - rho 17784 + (seg16AccY171 rho - seg16AccX171 rho * (-1)) * (rho 17779 + rho 17780) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX172 rho = seg16AccX171 rho - Bool.toZMod bit * (seg16AccX171 rho - rho 17786) := by
      have hd : rho 17788 = Bool.toZMod bit * (rho 17786 - seg16AccX171 rho) := by
        rw [← hbit, seg16LadderFlatX171_eq]
        unfold seg16LadderFlatX171
        linear_combination -r5216
      unfold seg16AccX172
      linear_combination hd
    have hsely : seg16AccY172 rho = seg16AccY171 rho - Bool.toZMod bit * (seg16AccY171 rho - rho 17787) := by
      have hd : rho 17789 = Bool.toZMod bit * (rho 17787 - seg16AccY171 rho) := by
        rw [← hbit, seg16LadderFlatY171_eq]
        unfold seg16LadderFlatY171
        linear_combination -r5217
      unfold seg16AccY172
      linear_combination hd
    have hd0 : rho 17779 * rho 17780 = rho 17790 := by linear_combination r5218
    have hd1 : rho 17779 * rho 17779 = rho 17791 := by linear_combination r5219
    have hd2 : rho 17780 * rho 17780 = rho 17792 := by linear_combination r5220
    have hd3 : rho 17793 * (rho 17780 * rho 17780 + rho 17779 * rho 17779 * (-1)) = 2 * (rho 17779 * rho 17780) := by
      rw [hd0, hd1, hd2]
      linear_combination r5221
    have hd4 : rho 17794 * (2 - (rho 17780 * rho 17780 + rho 17779 * rho 17779 * (-1))) = rho 17780 * rho 17780 - rho 17779 * rho 17779 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5222
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX171 rho : Seg16.F), (seg16AccY171 rho : Seg16.F)⟩
      ⟨(rho 17779 : Seg16.F), (rho 17780 : Seg16.F)⟩
      ⟨(rho 17786 : Seg16.F), (rho 17787 : Seg16.F)⟩
      ⟨(seg16AccX172 rho : Seg16.F), (seg16AccY172 rho : Seg16.F)⟩
      ⟨(rho 17793 : Seg16.F), (rho 17794 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung171

theorem seg16_rung172 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15464 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX172 rho : Seg16.F), (seg16AccY172 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17793 : Seg16.F), (rho 17794 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX172 rho : Seg16.F), (seg16AccY172 rho : Seg16.F)⟩
        ⟨(rho 17793 : Seg16.F), (rho 17794 : Seg16.F)⟩
        ⟨(seg16AccX173 rho : Seg16.F), (seg16AccY173 rho : Seg16.F)⟩
        ⟨(rho 17807 : Seg16.F), (rho 17808 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p65, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart65 at p65
  rcases p65 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5223, r5224, r5225, r5226, r5227, r5228, r5229, r5230, r5231, r5232, r5233, r5234, r5235, r5236, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow5223 Seg16.relationLc895 Seg16.relationLc895Part0 Seg16.relationLc895Part1 Seg16.relationLc895Part2 Seg16.relationLc895Part3 Seg16.relationLc895Part4 Seg16.relationLc895Part5 Seg16.relationLc895Part6 Seg16.relationLc895Part7 Seg16.relationLc895Part8 Seg16.relationLc895Part9 Seg16.relationLc895Part10 at r5223
  unfold Seg16.relationRow5224 at r5224
  unfold Seg16.relationRow5225 Seg16.relationLc896 Seg16.relationLc896Part0 Seg16.relationLc896Part1 Seg16.relationLc896Part2 Seg16.relationLc896Part3 Seg16.relationLc896Part4 Seg16.relationLc896Part5 at r5225
  unfold Seg16.relationRow5226 Seg16.relationLc897 Seg16.relationLc897Part0 Seg16.relationLc897Part1 Seg16.relationLc897Part2 Seg16.relationLc897Part3 Seg16.relationLc897Part4 Seg16.relationLc897Part5 at r5226
  unfold Seg16.relationRow5227 at r5227
  unfold Seg16.relationRow5228 at r5228
  unfold Seg16.relationRow5229 at r5229
  unfold Seg16.relationRow5230 Seg16.relationLc898 Seg16.relationLc898Part0 Seg16.relationLc898Part1 Seg16.relationLc898Part2 Seg16.relationLc898Part3 Seg16.relationLc898Part4 Seg16.relationLc898Part5 at r5230
  unfold Seg16.relationRow5231 Seg16.relationLc899 Seg16.relationLc899Part0 Seg16.relationLc899Part1 Seg16.relationLc899Part2 Seg16.relationLc899Part3 Seg16.relationLc899Part4 Seg16.relationLc899Part5 at r5231
  unfold Seg16.relationRow5232 at r5232
  unfold Seg16.relationRow5233 at r5233
  unfold Seg16.relationRow5234 at r5234
  unfold Seg16.relationRow5235 at r5235
  unfold Seg16.relationRow5236 at r5236
  have hrung172 (bit : Bool) (hbit : rho 15464 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX172 rho : Seg16.F), (seg16AccY172 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17793 : Seg16.F), (rho 17794 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX172 rho : Seg16.F), (seg16AccY172 rho : Seg16.F)⟩
        ⟨(rho 17793 : Seg16.F), (rho 17794 : Seg16.F)⟩
        ⟨(seg16AccX173 rho : Seg16.F), (seg16AccY173 rho : Seg16.F)⟩
        ⟨(rho 17807 : Seg16.F), (rho 17808 : Seg16.F)⟩ := by
    have hsum : seg16AccX172 rho + seg16AccY172 rho = rho 17795 := by
      rw [seg16LadderFlatX172_eq, seg16LadderFlatY172_eq]
      unfold seg16LadderFlatX172 seg16LadderFlatY172
      linear_combination r5223
    have ha0 : (rho 17793 + rho 17794) * (seg16AccX172 rho + seg16AccY172 rho) = rho 17796 := by
      rw [hsum]
      linear_combination r5224
    have ha1 : rho 17794 * seg16AccX172 rho = rho 17797 := by
      rw [seg16LadderFlatX172_eq]
      unfold seg16LadderFlatX172
      linear_combination r5225
    have ha2 : rho 17793 * seg16AccY172 rho = rho 17798 := by
      rw [seg16LadderFlatY172_eq]
      unfold seg16LadderFlatY172
      linear_combination r5226
    have ha3 : 3021 * rho 17797 * rho 17798 = rho 17799 := by
      linear_combination r5227
    have ha4 : rho 17800 * (1 + rho 17799) = rho 17797 + rho 17798 := by
      linear_combination r5228
    have ha5 : rho 17801 * (1 - rho 17799) = rho 17796 - rho 17797 - rho 17798 := by
      linear_combination r5229
    have haddx :
        rho 17800 * (1 + 3021 * (rho 17794 * seg16AccX172 rho) * (rho 17793 * seg16AccY172 rho)) =
          rho 17794 * seg16AccX172 rho + rho 17793 * seg16AccY172 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17801 * (1 - 3021 * (rho 17794 * seg16AccX172 rho) * (rho 17793 * seg16AccY172 rho)) =
          (-1) * (rho 17794 * seg16AccX172 rho) - rho 17793 * seg16AccY172 rho +
            (seg16AccY172 rho - seg16AccX172 rho * (-1)) * (rho 17793 + rho 17794) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17801 * (1 - rho 17799) = rho 17796 - rho 17797 - rho 17798 := ha5
        _ = (-1) * rho 17797 - rho 17798 + (seg16AccY172 rho - seg16AccX172 rho * (-1)) * (rho 17793 + rho 17794) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX173 rho = seg16AccX172 rho - Bool.toZMod bit * (seg16AccX172 rho - rho 17800) := by
      have hd : rho 17802 = Bool.toZMod bit * (rho 17800 - seg16AccX172 rho) := by
        rw [← hbit, seg16LadderFlatX172_eq]
        unfold seg16LadderFlatX172
        linear_combination -r5230
      unfold seg16AccX173
      linear_combination hd
    have hsely : seg16AccY173 rho = seg16AccY172 rho - Bool.toZMod bit * (seg16AccY172 rho - rho 17801) := by
      have hd : rho 17803 = Bool.toZMod bit * (rho 17801 - seg16AccY172 rho) := by
        rw [← hbit, seg16LadderFlatY172_eq]
        unfold seg16LadderFlatY172
        linear_combination -r5231
      unfold seg16AccY173
      linear_combination hd
    have hd0 : rho 17793 * rho 17794 = rho 17804 := by linear_combination r5232
    have hd1 : rho 17793 * rho 17793 = rho 17805 := by linear_combination r5233
    have hd2 : rho 17794 * rho 17794 = rho 17806 := by linear_combination r5234
    have hd3 : rho 17807 * (rho 17794 * rho 17794 + rho 17793 * rho 17793 * (-1)) = 2 * (rho 17793 * rho 17794) := by
      rw [hd0, hd1, hd2]
      linear_combination r5235
    have hd4 : rho 17808 * (2 - (rho 17794 * rho 17794 + rho 17793 * rho 17793 * (-1))) = rho 17794 * rho 17794 - rho 17793 * rho 17793 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5236
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX172 rho : Seg16.F), (seg16AccY172 rho : Seg16.F)⟩
      ⟨(rho 17793 : Seg16.F), (rho 17794 : Seg16.F)⟩
      ⟨(rho 17800 : Seg16.F), (rho 17801 : Seg16.F)⟩
      ⟨(seg16AccX173 rho : Seg16.F), (seg16AccY173 rho : Seg16.F)⟩
      ⟨(rho 17807 : Seg16.F), (rho 17808 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung172

theorem seg16_rung173 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15465 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX173 rho : Seg16.F), (seg16AccY173 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17807 : Seg16.F), (rho 17808 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX173 rho : Seg16.F), (seg16AccY173 rho : Seg16.F)⟩
        ⟨(rho 17807 : Seg16.F), (rho 17808 : Seg16.F)⟩
        ⟨(seg16AccX174 rho : Seg16.F), (seg16AccY174 rho : Seg16.F)⟩
        ⟨(rho 17821 : Seg16.F), (rho 17822 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p65, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart65 at p65
  rcases p65 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5237, r5238, r5239, r5240, r5241, r5242, r5243, r5244, r5245, r5246, r5247, r5248, r5249, r5250, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow5237 Seg16.relationLc900 Seg16.relationLc900Part0 Seg16.relationLc900Part1 Seg16.relationLc900Part2 Seg16.relationLc900Part3 Seg16.relationLc900Part4 Seg16.relationLc900Part5 Seg16.relationLc900Part6 Seg16.relationLc900Part7 Seg16.relationLc900Part8 Seg16.relationLc900Part9 Seg16.relationLc900Part10 at r5237
  unfold Seg16.relationRow5238 at r5238
  unfold Seg16.relationRow5239 Seg16.relationLc901 Seg16.relationLc901Part0 Seg16.relationLc901Part1 Seg16.relationLc901Part2 Seg16.relationLc901Part3 Seg16.relationLc901Part4 Seg16.relationLc901Part5 at r5239
  unfold Seg16.relationRow5240 Seg16.relationLc902 Seg16.relationLc902Part0 Seg16.relationLc902Part1 Seg16.relationLc902Part2 Seg16.relationLc902Part3 Seg16.relationLc902Part4 Seg16.relationLc902Part5 at r5240
  unfold Seg16.relationRow5241 at r5241
  unfold Seg16.relationRow5242 at r5242
  unfold Seg16.relationRow5243 at r5243
  unfold Seg16.relationRow5244 Seg16.relationLc903 Seg16.relationLc903Part0 Seg16.relationLc903Part1 Seg16.relationLc903Part2 Seg16.relationLc903Part3 Seg16.relationLc903Part4 Seg16.relationLc903Part5 at r5244
  unfold Seg16.relationRow5245 Seg16.relationLc904 Seg16.relationLc904Part0 Seg16.relationLc904Part1 Seg16.relationLc904Part2 Seg16.relationLc904Part3 Seg16.relationLc904Part4 Seg16.relationLc904Part5 at r5245
  unfold Seg16.relationRow5246 at r5246
  unfold Seg16.relationRow5247 at r5247
  unfold Seg16.relationRow5248 at r5248
  unfold Seg16.relationRow5249 at r5249
  unfold Seg16.relationRow5250 at r5250
  have hrung173 (bit : Bool) (hbit : rho 15465 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX173 rho : Seg16.F), (seg16AccY173 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17807 : Seg16.F), (rho 17808 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX173 rho : Seg16.F), (seg16AccY173 rho : Seg16.F)⟩
        ⟨(rho 17807 : Seg16.F), (rho 17808 : Seg16.F)⟩
        ⟨(seg16AccX174 rho : Seg16.F), (seg16AccY174 rho : Seg16.F)⟩
        ⟨(rho 17821 : Seg16.F), (rho 17822 : Seg16.F)⟩ := by
    have hsum : seg16AccX173 rho + seg16AccY173 rho = rho 17809 := by
      rw [seg16LadderFlatX173_eq, seg16LadderFlatY173_eq]
      unfold seg16LadderFlatX173 seg16LadderFlatY173
      linear_combination r5237
    have ha0 : (rho 17807 + rho 17808) * (seg16AccX173 rho + seg16AccY173 rho) = rho 17810 := by
      rw [hsum]
      linear_combination r5238
    have ha1 : rho 17808 * seg16AccX173 rho = rho 17811 := by
      rw [seg16LadderFlatX173_eq]
      unfold seg16LadderFlatX173
      linear_combination r5239
    have ha2 : rho 17807 * seg16AccY173 rho = rho 17812 := by
      rw [seg16LadderFlatY173_eq]
      unfold seg16LadderFlatY173
      linear_combination r5240
    have ha3 : 3021 * rho 17811 * rho 17812 = rho 17813 := by
      linear_combination r5241
    have ha4 : rho 17814 * (1 + rho 17813) = rho 17811 + rho 17812 := by
      linear_combination r5242
    have ha5 : rho 17815 * (1 - rho 17813) = rho 17810 - rho 17811 - rho 17812 := by
      linear_combination r5243
    have haddx :
        rho 17814 * (1 + 3021 * (rho 17808 * seg16AccX173 rho) * (rho 17807 * seg16AccY173 rho)) =
          rho 17808 * seg16AccX173 rho + rho 17807 * seg16AccY173 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17815 * (1 - 3021 * (rho 17808 * seg16AccX173 rho) * (rho 17807 * seg16AccY173 rho)) =
          (-1) * (rho 17808 * seg16AccX173 rho) - rho 17807 * seg16AccY173 rho +
            (seg16AccY173 rho - seg16AccX173 rho * (-1)) * (rho 17807 + rho 17808) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17815 * (1 - rho 17813) = rho 17810 - rho 17811 - rho 17812 := ha5
        _ = (-1) * rho 17811 - rho 17812 + (seg16AccY173 rho - seg16AccX173 rho * (-1)) * (rho 17807 + rho 17808) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX174 rho = seg16AccX173 rho - Bool.toZMod bit * (seg16AccX173 rho - rho 17814) := by
      have hd : rho 17816 = Bool.toZMod bit * (rho 17814 - seg16AccX173 rho) := by
        rw [← hbit, seg16LadderFlatX173_eq]
        unfold seg16LadderFlatX173
        linear_combination -r5244
      unfold seg16AccX174
      linear_combination hd
    have hsely : seg16AccY174 rho = seg16AccY173 rho - Bool.toZMod bit * (seg16AccY173 rho - rho 17815) := by
      have hd : rho 17817 = Bool.toZMod bit * (rho 17815 - seg16AccY173 rho) := by
        rw [← hbit, seg16LadderFlatY173_eq]
        unfold seg16LadderFlatY173
        linear_combination -r5245
      unfold seg16AccY174
      linear_combination hd
    have hd0 : rho 17807 * rho 17808 = rho 17818 := by linear_combination r5246
    have hd1 : rho 17807 * rho 17807 = rho 17819 := by linear_combination r5247
    have hd2 : rho 17808 * rho 17808 = rho 17820 := by linear_combination r5248
    have hd3 : rho 17821 * (rho 17808 * rho 17808 + rho 17807 * rho 17807 * (-1)) = 2 * (rho 17807 * rho 17808) := by
      rw [hd0, hd1, hd2]
      linear_combination r5249
    have hd4 : rho 17822 * (2 - (rho 17808 * rho 17808 + rho 17807 * rho 17807 * (-1))) = rho 17808 * rho 17808 - rho 17807 * rho 17807 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5250
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX173 rho : Seg16.F), (seg16AccY173 rho : Seg16.F)⟩
      ⟨(rho 17807 : Seg16.F), (rho 17808 : Seg16.F)⟩
      ⟨(rho 17814 : Seg16.F), (rho 17815 : Seg16.F)⟩
      ⟨(seg16AccX174 rho : Seg16.F), (seg16AccY174 rho : Seg16.F)⟩
      ⟨(rho 17821 : Seg16.F), (rho 17822 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung173

theorem seg16_rung174 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15466 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX174 rho : Seg16.F), (seg16AccY174 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17821 : Seg16.F), (rho 17822 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX174 rho : Seg16.F), (seg16AccY174 rho : Seg16.F)⟩
        ⟨(rho 17821 : Seg16.F), (rho 17822 : Seg16.F)⟩
        ⟨(seg16AccX175 rho : Seg16.F), (seg16AccY175 rho : Seg16.F)⟩
        ⟨(rho 17835 : Seg16.F), (rho 17836 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p65, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart65 at p65
  rcases p65 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5251, r5252, r5253, r5254, r5255, r5256, r5257, r5258, r5259, r5260, r5261, r5262, r5263, r5264, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow5251 Seg16.relationLc905 Seg16.relationLc905Part0 Seg16.relationLc905Part1 Seg16.relationLc905Part2 Seg16.relationLc905Part3 Seg16.relationLc905Part4 Seg16.relationLc905Part5 Seg16.relationLc905Part6 Seg16.relationLc905Part7 Seg16.relationLc905Part8 Seg16.relationLc905Part9 Seg16.relationLc905Part10 at r5251
  unfold Seg16.relationRow5252 at r5252
  unfold Seg16.relationRow5253 Seg16.relationLc906 Seg16.relationLc906Part0 Seg16.relationLc906Part1 Seg16.relationLc906Part2 Seg16.relationLc906Part3 Seg16.relationLc906Part4 Seg16.relationLc906Part5 at r5253
  unfold Seg16.relationRow5254 Seg16.relationLc907 Seg16.relationLc907Part0 Seg16.relationLc907Part1 Seg16.relationLc907Part2 Seg16.relationLc907Part3 Seg16.relationLc907Part4 Seg16.relationLc907Part5 at r5254
  unfold Seg16.relationRow5255 at r5255
  unfold Seg16.relationRow5256 at r5256
  unfold Seg16.relationRow5257 at r5257
  unfold Seg16.relationRow5258 Seg16.relationLc908 Seg16.relationLc908Part0 Seg16.relationLc908Part1 Seg16.relationLc908Part2 Seg16.relationLc908Part3 Seg16.relationLc908Part4 Seg16.relationLc908Part5 at r5258
  unfold Seg16.relationRow5259 Seg16.relationLc909 Seg16.relationLc909Part0 Seg16.relationLc909Part1 Seg16.relationLc909Part2 Seg16.relationLc909Part3 Seg16.relationLc909Part4 Seg16.relationLc909Part5 at r5259
  unfold Seg16.relationRow5260 at r5260
  unfold Seg16.relationRow5261 at r5261
  unfold Seg16.relationRow5262 at r5262
  unfold Seg16.relationRow5263 at r5263
  unfold Seg16.relationRow5264 at r5264
  have hrung174 (bit : Bool) (hbit : rho 15466 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX174 rho : Seg16.F), (seg16AccY174 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17821 : Seg16.F), (rho 17822 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX174 rho : Seg16.F), (seg16AccY174 rho : Seg16.F)⟩
        ⟨(rho 17821 : Seg16.F), (rho 17822 : Seg16.F)⟩
        ⟨(seg16AccX175 rho : Seg16.F), (seg16AccY175 rho : Seg16.F)⟩
        ⟨(rho 17835 : Seg16.F), (rho 17836 : Seg16.F)⟩ := by
    have hsum : seg16AccX174 rho + seg16AccY174 rho = rho 17823 := by
      rw [seg16LadderFlatX174_eq, seg16LadderFlatY174_eq]
      unfold seg16LadderFlatX174 seg16LadderFlatY174
      linear_combination r5251
    have ha0 : (rho 17821 + rho 17822) * (seg16AccX174 rho + seg16AccY174 rho) = rho 17824 := by
      rw [hsum]
      linear_combination r5252
    have ha1 : rho 17822 * seg16AccX174 rho = rho 17825 := by
      rw [seg16LadderFlatX174_eq]
      unfold seg16LadderFlatX174
      linear_combination r5253
    have ha2 : rho 17821 * seg16AccY174 rho = rho 17826 := by
      rw [seg16LadderFlatY174_eq]
      unfold seg16LadderFlatY174
      linear_combination r5254
    have ha3 : 3021 * rho 17825 * rho 17826 = rho 17827 := by
      linear_combination r5255
    have ha4 : rho 17828 * (1 + rho 17827) = rho 17825 + rho 17826 := by
      linear_combination r5256
    have ha5 : rho 17829 * (1 - rho 17827) = rho 17824 - rho 17825 - rho 17826 := by
      linear_combination r5257
    have haddx :
        rho 17828 * (1 + 3021 * (rho 17822 * seg16AccX174 rho) * (rho 17821 * seg16AccY174 rho)) =
          rho 17822 * seg16AccX174 rho + rho 17821 * seg16AccY174 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17829 * (1 - 3021 * (rho 17822 * seg16AccX174 rho) * (rho 17821 * seg16AccY174 rho)) =
          (-1) * (rho 17822 * seg16AccX174 rho) - rho 17821 * seg16AccY174 rho +
            (seg16AccY174 rho - seg16AccX174 rho * (-1)) * (rho 17821 + rho 17822) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17829 * (1 - rho 17827) = rho 17824 - rho 17825 - rho 17826 := ha5
        _ = (-1) * rho 17825 - rho 17826 + (seg16AccY174 rho - seg16AccX174 rho * (-1)) * (rho 17821 + rho 17822) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX175 rho = seg16AccX174 rho - Bool.toZMod bit * (seg16AccX174 rho - rho 17828) := by
      have hd : rho 17830 = Bool.toZMod bit * (rho 17828 - seg16AccX174 rho) := by
        rw [← hbit, seg16LadderFlatX174_eq]
        unfold seg16LadderFlatX174
        linear_combination -r5258
      unfold seg16AccX175
      linear_combination hd
    have hsely : seg16AccY175 rho = seg16AccY174 rho - Bool.toZMod bit * (seg16AccY174 rho - rho 17829) := by
      have hd : rho 17831 = Bool.toZMod bit * (rho 17829 - seg16AccY174 rho) := by
        rw [← hbit, seg16LadderFlatY174_eq]
        unfold seg16LadderFlatY174
        linear_combination -r5259
      unfold seg16AccY175
      linear_combination hd
    have hd0 : rho 17821 * rho 17822 = rho 17832 := by linear_combination r5260
    have hd1 : rho 17821 * rho 17821 = rho 17833 := by linear_combination r5261
    have hd2 : rho 17822 * rho 17822 = rho 17834 := by linear_combination r5262
    have hd3 : rho 17835 * (rho 17822 * rho 17822 + rho 17821 * rho 17821 * (-1)) = 2 * (rho 17821 * rho 17822) := by
      rw [hd0, hd1, hd2]
      linear_combination r5263
    have hd4 : rho 17836 * (2 - (rho 17822 * rho 17822 + rho 17821 * rho 17821 * (-1))) = rho 17822 * rho 17822 - rho 17821 * rho 17821 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5264
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX174 rho : Seg16.F), (seg16AccY174 rho : Seg16.F)⟩
      ⟨(rho 17821 : Seg16.F), (rho 17822 : Seg16.F)⟩
      ⟨(rho 17828 : Seg16.F), (rho 17829 : Seg16.F)⟩
      ⟨(seg16AccX175 rho : Seg16.F), (seg16AccY175 rho : Seg16.F)⟩
      ⟨(rho 17835 : Seg16.F), (rho 17836 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung174

theorem seg16_rung175 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15467 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX175 rho : Seg16.F), (seg16AccY175 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17835 : Seg16.F), (rho 17836 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX175 rho : Seg16.F), (seg16AccY175 rho : Seg16.F)⟩
        ⟨(rho 17835 : Seg16.F), (rho 17836 : Seg16.F)⟩
        ⟨(seg16AccX176 rho : Seg16.F), (seg16AccY176 rho : Seg16.F)⟩
        ⟨(rho 17849 : Seg16.F), (rho 17850 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p65, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart65 at p65
  rcases p65 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5265, r5266, r5267, r5268, r5269, r5270, r5271, r5272, r5273, r5274, r5275, r5276, r5277, r5278, _⟩
  unfold Seg16.relationRow5265 Seg16.relationLc910 Seg16.relationLc910Part0 Seg16.relationLc910Part1 Seg16.relationLc910Part2 Seg16.relationLc910Part3 Seg16.relationLc910Part4 Seg16.relationLc910Part5 Seg16.relationLc910Part6 Seg16.relationLc910Part7 Seg16.relationLc910Part8 Seg16.relationLc910Part9 Seg16.relationLc910Part10 at r5265
  unfold Seg16.relationRow5266 at r5266
  unfold Seg16.relationRow5267 Seg16.relationLc911 Seg16.relationLc911Part0 Seg16.relationLc911Part1 Seg16.relationLc911Part2 Seg16.relationLc911Part3 Seg16.relationLc911Part4 Seg16.relationLc911Part5 at r5267
  unfold Seg16.relationRow5268 Seg16.relationLc912 Seg16.relationLc912Part0 Seg16.relationLc912Part1 Seg16.relationLc912Part2 Seg16.relationLc912Part3 Seg16.relationLc912Part4 Seg16.relationLc912Part5 at r5268
  unfold Seg16.relationRow5269 at r5269
  unfold Seg16.relationRow5270 at r5270
  unfold Seg16.relationRow5271 at r5271
  unfold Seg16.relationRow5272 Seg16.relationLc913 Seg16.relationLc913Part0 Seg16.relationLc913Part1 Seg16.relationLc913Part2 Seg16.relationLc913Part3 Seg16.relationLc913Part4 Seg16.relationLc913Part5 at r5272
  unfold Seg16.relationRow5273 Seg16.relationLc914 Seg16.relationLc914Part0 Seg16.relationLc914Part1 Seg16.relationLc914Part2 Seg16.relationLc914Part3 Seg16.relationLc914Part4 Seg16.relationLc914Part5 at r5273
  unfold Seg16.relationRow5274 at r5274
  unfold Seg16.relationRow5275 at r5275
  unfold Seg16.relationRow5276 at r5276
  unfold Seg16.relationRow5277 at r5277
  unfold Seg16.relationRow5278 at r5278
  have hrung175 (bit : Bool) (hbit : rho 15467 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX175 rho : Seg16.F), (seg16AccY175 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17835 : Seg16.F), (rho 17836 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX175 rho : Seg16.F), (seg16AccY175 rho : Seg16.F)⟩
        ⟨(rho 17835 : Seg16.F), (rho 17836 : Seg16.F)⟩
        ⟨(seg16AccX176 rho : Seg16.F), (seg16AccY176 rho : Seg16.F)⟩
        ⟨(rho 17849 : Seg16.F), (rho 17850 : Seg16.F)⟩ := by
    have hsum : seg16AccX175 rho + seg16AccY175 rho = rho 17837 := by
      rw [seg16LadderFlatX175_eq, seg16LadderFlatY175_eq]
      unfold seg16LadderFlatX175 seg16LadderFlatY175
      linear_combination r5265
    have ha0 : (rho 17835 + rho 17836) * (seg16AccX175 rho + seg16AccY175 rho) = rho 17838 := by
      rw [hsum]
      linear_combination r5266
    have ha1 : rho 17836 * seg16AccX175 rho = rho 17839 := by
      rw [seg16LadderFlatX175_eq]
      unfold seg16LadderFlatX175
      linear_combination r5267
    have ha2 : rho 17835 * seg16AccY175 rho = rho 17840 := by
      rw [seg16LadderFlatY175_eq]
      unfold seg16LadderFlatY175
      linear_combination r5268
    have ha3 : 3021 * rho 17839 * rho 17840 = rho 17841 := by
      linear_combination r5269
    have ha4 : rho 17842 * (1 + rho 17841) = rho 17839 + rho 17840 := by
      linear_combination r5270
    have ha5 : rho 17843 * (1 - rho 17841) = rho 17838 - rho 17839 - rho 17840 := by
      linear_combination r5271
    have haddx :
        rho 17842 * (1 + 3021 * (rho 17836 * seg16AccX175 rho) * (rho 17835 * seg16AccY175 rho)) =
          rho 17836 * seg16AccX175 rho + rho 17835 * seg16AccY175 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17843 * (1 - 3021 * (rho 17836 * seg16AccX175 rho) * (rho 17835 * seg16AccY175 rho)) =
          (-1) * (rho 17836 * seg16AccX175 rho) - rho 17835 * seg16AccY175 rho +
            (seg16AccY175 rho - seg16AccX175 rho * (-1)) * (rho 17835 + rho 17836) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17843 * (1 - rho 17841) = rho 17838 - rho 17839 - rho 17840 := ha5
        _ = (-1) * rho 17839 - rho 17840 + (seg16AccY175 rho - seg16AccX175 rho * (-1)) * (rho 17835 + rho 17836) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX176 rho = seg16AccX175 rho - Bool.toZMod bit * (seg16AccX175 rho - rho 17842) := by
      have hd : rho 17844 = Bool.toZMod bit * (rho 17842 - seg16AccX175 rho) := by
        rw [← hbit, seg16LadderFlatX175_eq]
        unfold seg16LadderFlatX175
        linear_combination -r5272
      unfold seg16AccX176
      linear_combination hd
    have hsely : seg16AccY176 rho = seg16AccY175 rho - Bool.toZMod bit * (seg16AccY175 rho - rho 17843) := by
      have hd : rho 17845 = Bool.toZMod bit * (rho 17843 - seg16AccY175 rho) := by
        rw [← hbit, seg16LadderFlatY175_eq]
        unfold seg16LadderFlatY175
        linear_combination -r5273
      unfold seg16AccY176
      linear_combination hd
    have hd0 : rho 17835 * rho 17836 = rho 17846 := by linear_combination r5274
    have hd1 : rho 17835 * rho 17835 = rho 17847 := by linear_combination r5275
    have hd2 : rho 17836 * rho 17836 = rho 17848 := by linear_combination r5276
    have hd3 : rho 17849 * (rho 17836 * rho 17836 + rho 17835 * rho 17835 * (-1)) = 2 * (rho 17835 * rho 17836) := by
      rw [hd0, hd1, hd2]
      linear_combination r5277
    have hd4 : rho 17850 * (2 - (rho 17836 * rho 17836 + rho 17835 * rho 17835 * (-1))) = rho 17836 * rho 17836 - rho 17835 * rho 17835 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5278
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX175 rho : Seg16.F), (seg16AccY175 rho : Seg16.F)⟩
      ⟨(rho 17835 : Seg16.F), (rho 17836 : Seg16.F)⟩
      ⟨(rho 17842 : Seg16.F), (rho 17843 : Seg16.F)⟩
      ⟨(seg16AccX176 rho : Seg16.F), (seg16AccY176 rho : Seg16.F)⟩
      ⟨(rho 17849 : Seg16.F), (rho 17850 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung175

theorem seg16_rung176 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15468 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX176 rho : Seg16.F), (seg16AccY176 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17849 : Seg16.F), (rho 17850 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX176 rho : Seg16.F), (seg16AccY176 rho : Seg16.F)⟩
        ⟨(rho 17849 : Seg16.F), (rho 17850 : Seg16.F)⟩
        ⟨(seg16AccX177 rho : Seg16.F), (seg16AccY177 rho : Seg16.F)⟩
        ⟨(rho 17863 : Seg16.F), (rho 17864 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p65, p66, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart65 at p65
  rcases p65 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5279⟩
  unfold Seg16.relationPart66 at p66
  rcases p66 with ⟨r5280, r5281, r5282, r5283, r5284, r5285, r5286, r5287, r5288, r5289, r5290, r5291, r5292, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow5279 Seg16.relationLc915 Seg16.relationLc915Part0 Seg16.relationLc915Part1 Seg16.relationLc915Part2 Seg16.relationLc915Part3 Seg16.relationLc915Part4 Seg16.relationLc915Part5 Seg16.relationLc915Part6 Seg16.relationLc915Part7 Seg16.relationLc915Part8 Seg16.relationLc915Part9 Seg16.relationLc915Part10 Seg16.relationLc915Part11 at r5279
  unfold Seg16.relationRow5280 at r5280
  unfold Seg16.relationRow5281 Seg16.relationLc916 Seg16.relationLc916Part0 Seg16.relationLc916Part1 Seg16.relationLc916Part2 Seg16.relationLc916Part3 Seg16.relationLc916Part4 Seg16.relationLc916Part5 at r5281
  unfold Seg16.relationRow5282 Seg16.relationLc917 Seg16.relationLc917Part0 Seg16.relationLc917Part1 Seg16.relationLc917Part2 Seg16.relationLc917Part3 Seg16.relationLc917Part4 Seg16.relationLc917Part5 at r5282
  unfold Seg16.relationRow5283 at r5283
  unfold Seg16.relationRow5284 at r5284
  unfold Seg16.relationRow5285 at r5285
  unfold Seg16.relationRow5286 Seg16.relationLc918 Seg16.relationLc918Part0 Seg16.relationLc918Part1 Seg16.relationLc918Part2 Seg16.relationLc918Part3 Seg16.relationLc918Part4 Seg16.relationLc918Part5 at r5286
  unfold Seg16.relationRow5287 Seg16.relationLc919 Seg16.relationLc919Part0 Seg16.relationLc919Part1 Seg16.relationLc919Part2 Seg16.relationLc919Part3 Seg16.relationLc919Part4 Seg16.relationLc919Part5 at r5287
  unfold Seg16.relationRow5288 at r5288
  unfold Seg16.relationRow5289 at r5289
  unfold Seg16.relationRow5290 at r5290
  unfold Seg16.relationRow5291 at r5291
  unfold Seg16.relationRow5292 at r5292
  have hrung176 (bit : Bool) (hbit : rho 15468 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX176 rho : Seg16.F), (seg16AccY176 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17849 : Seg16.F), (rho 17850 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX176 rho : Seg16.F), (seg16AccY176 rho : Seg16.F)⟩
        ⟨(rho 17849 : Seg16.F), (rho 17850 : Seg16.F)⟩
        ⟨(seg16AccX177 rho : Seg16.F), (seg16AccY177 rho : Seg16.F)⟩
        ⟨(rho 17863 : Seg16.F), (rho 17864 : Seg16.F)⟩ := by
    have hsum : seg16AccX176 rho + seg16AccY176 rho = rho 17851 := by
      rw [seg16LadderFlatX176_eq, seg16LadderFlatY176_eq]
      unfold seg16LadderFlatX176 seg16LadderFlatY176
      linear_combination r5279
    have ha0 : (rho 17849 + rho 17850) * (seg16AccX176 rho + seg16AccY176 rho) = rho 17852 := by
      rw [hsum]
      linear_combination r5280
    have ha1 : rho 17850 * seg16AccX176 rho = rho 17853 := by
      rw [seg16LadderFlatX176_eq]
      unfold seg16LadderFlatX176
      linear_combination r5281
    have ha2 : rho 17849 * seg16AccY176 rho = rho 17854 := by
      rw [seg16LadderFlatY176_eq]
      unfold seg16LadderFlatY176
      linear_combination r5282
    have ha3 : 3021 * rho 17853 * rho 17854 = rho 17855 := by
      linear_combination r5283
    have ha4 : rho 17856 * (1 + rho 17855) = rho 17853 + rho 17854 := by
      linear_combination r5284
    have ha5 : rho 17857 * (1 - rho 17855) = rho 17852 - rho 17853 - rho 17854 := by
      linear_combination r5285
    have haddx :
        rho 17856 * (1 + 3021 * (rho 17850 * seg16AccX176 rho) * (rho 17849 * seg16AccY176 rho)) =
          rho 17850 * seg16AccX176 rho + rho 17849 * seg16AccY176 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17857 * (1 - 3021 * (rho 17850 * seg16AccX176 rho) * (rho 17849 * seg16AccY176 rho)) =
          (-1) * (rho 17850 * seg16AccX176 rho) - rho 17849 * seg16AccY176 rho +
            (seg16AccY176 rho - seg16AccX176 rho * (-1)) * (rho 17849 + rho 17850) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17857 * (1 - rho 17855) = rho 17852 - rho 17853 - rho 17854 := ha5
        _ = (-1) * rho 17853 - rho 17854 + (seg16AccY176 rho - seg16AccX176 rho * (-1)) * (rho 17849 + rho 17850) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX177 rho = seg16AccX176 rho - Bool.toZMod bit * (seg16AccX176 rho - rho 17856) := by
      have hd : rho 17858 = Bool.toZMod bit * (rho 17856 - seg16AccX176 rho) := by
        rw [← hbit, seg16LadderFlatX176_eq]
        unfold seg16LadderFlatX176
        linear_combination -r5286
      unfold seg16AccX177
      linear_combination hd
    have hsely : seg16AccY177 rho = seg16AccY176 rho - Bool.toZMod bit * (seg16AccY176 rho - rho 17857) := by
      have hd : rho 17859 = Bool.toZMod bit * (rho 17857 - seg16AccY176 rho) := by
        rw [← hbit, seg16LadderFlatY176_eq]
        unfold seg16LadderFlatY176
        linear_combination -r5287
      unfold seg16AccY177
      linear_combination hd
    have hd0 : rho 17849 * rho 17850 = rho 17860 := by linear_combination r5288
    have hd1 : rho 17849 * rho 17849 = rho 17861 := by linear_combination r5289
    have hd2 : rho 17850 * rho 17850 = rho 17862 := by linear_combination r5290
    have hd3 : rho 17863 * (rho 17850 * rho 17850 + rho 17849 * rho 17849 * (-1)) = 2 * (rho 17849 * rho 17850) := by
      rw [hd0, hd1, hd2]
      linear_combination r5291
    have hd4 : rho 17864 * (2 - (rho 17850 * rho 17850 + rho 17849 * rho 17849 * (-1))) = rho 17850 * rho 17850 - rho 17849 * rho 17849 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5292
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX176 rho : Seg16.F), (seg16AccY176 rho : Seg16.F)⟩
      ⟨(rho 17849 : Seg16.F), (rho 17850 : Seg16.F)⟩
      ⟨(rho 17856 : Seg16.F), (rho 17857 : Seg16.F)⟩
      ⟨(seg16AccX177 rho : Seg16.F), (seg16AccY177 rho : Seg16.F)⟩
      ⟨(rho 17863 : Seg16.F), (rho 17864 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung176

theorem seg16_rung177 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15469 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX177 rho : Seg16.F), (seg16AccY177 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17863 : Seg16.F), (rho 17864 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX177 rho : Seg16.F), (seg16AccY177 rho : Seg16.F)⟩
        ⟨(rho 17863 : Seg16.F), (rho 17864 : Seg16.F)⟩
        ⟨(seg16AccX178 rho : Seg16.F), (seg16AccY178 rho : Seg16.F)⟩
        ⟨(rho 17877 : Seg16.F), (rho 17878 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p66, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart66 at p66
  rcases p66 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, r5293, r5294, r5295, r5296, r5297, r5298, r5299, r5300, r5301, r5302, r5303, r5304, r5305, r5306, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow5293 Seg16.relationLc920 Seg16.relationLc920Part0 Seg16.relationLc920Part1 Seg16.relationLc920Part2 Seg16.relationLc920Part3 Seg16.relationLc920Part4 Seg16.relationLc920Part5 Seg16.relationLc920Part6 Seg16.relationLc920Part7 Seg16.relationLc920Part8 Seg16.relationLc920Part9 Seg16.relationLc920Part10 Seg16.relationLc920Part11 at r5293
  unfold Seg16.relationRow5294 at r5294
  unfold Seg16.relationRow5295 Seg16.relationLc921 Seg16.relationLc921Part0 Seg16.relationLc921Part1 Seg16.relationLc921Part2 Seg16.relationLc921Part3 Seg16.relationLc921Part4 Seg16.relationLc921Part5 at r5295
  unfold Seg16.relationRow5296 Seg16.relationLc922 Seg16.relationLc922Part0 Seg16.relationLc922Part1 Seg16.relationLc922Part2 Seg16.relationLc922Part3 Seg16.relationLc922Part4 Seg16.relationLc922Part5 at r5296
  unfold Seg16.relationRow5297 at r5297
  unfold Seg16.relationRow5298 at r5298
  unfold Seg16.relationRow5299 at r5299
  unfold Seg16.relationRow5300 Seg16.relationLc923 Seg16.relationLc923Part0 Seg16.relationLc923Part1 Seg16.relationLc923Part2 Seg16.relationLc923Part3 Seg16.relationLc923Part4 Seg16.relationLc923Part5 at r5300
  unfold Seg16.relationRow5301 Seg16.relationLc924 Seg16.relationLc924Part0 Seg16.relationLc924Part1 Seg16.relationLc924Part2 Seg16.relationLc924Part3 Seg16.relationLc924Part4 Seg16.relationLc924Part5 at r5301
  unfold Seg16.relationRow5302 at r5302
  unfold Seg16.relationRow5303 at r5303
  unfold Seg16.relationRow5304 at r5304
  unfold Seg16.relationRow5305 at r5305
  unfold Seg16.relationRow5306 at r5306
  have hrung177 (bit : Bool) (hbit : rho 15469 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX177 rho : Seg16.F), (seg16AccY177 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17863 : Seg16.F), (rho 17864 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX177 rho : Seg16.F), (seg16AccY177 rho : Seg16.F)⟩
        ⟨(rho 17863 : Seg16.F), (rho 17864 : Seg16.F)⟩
        ⟨(seg16AccX178 rho : Seg16.F), (seg16AccY178 rho : Seg16.F)⟩
        ⟨(rho 17877 : Seg16.F), (rho 17878 : Seg16.F)⟩ := by
    have hsum : seg16AccX177 rho + seg16AccY177 rho = rho 17865 := by
      rw [seg16LadderFlatX177_eq, seg16LadderFlatY177_eq]
      unfold seg16LadderFlatX177 seg16LadderFlatY177
      linear_combination r5293
    have ha0 : (rho 17863 + rho 17864) * (seg16AccX177 rho + seg16AccY177 rho) = rho 17866 := by
      rw [hsum]
      linear_combination r5294
    have ha1 : rho 17864 * seg16AccX177 rho = rho 17867 := by
      rw [seg16LadderFlatX177_eq]
      unfold seg16LadderFlatX177
      linear_combination r5295
    have ha2 : rho 17863 * seg16AccY177 rho = rho 17868 := by
      rw [seg16LadderFlatY177_eq]
      unfold seg16LadderFlatY177
      linear_combination r5296
    have ha3 : 3021 * rho 17867 * rho 17868 = rho 17869 := by
      linear_combination r5297
    have ha4 : rho 17870 * (1 + rho 17869) = rho 17867 + rho 17868 := by
      linear_combination r5298
    have ha5 : rho 17871 * (1 - rho 17869) = rho 17866 - rho 17867 - rho 17868 := by
      linear_combination r5299
    have haddx :
        rho 17870 * (1 + 3021 * (rho 17864 * seg16AccX177 rho) * (rho 17863 * seg16AccY177 rho)) =
          rho 17864 * seg16AccX177 rho + rho 17863 * seg16AccY177 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17871 * (1 - 3021 * (rho 17864 * seg16AccX177 rho) * (rho 17863 * seg16AccY177 rho)) =
          (-1) * (rho 17864 * seg16AccX177 rho) - rho 17863 * seg16AccY177 rho +
            (seg16AccY177 rho - seg16AccX177 rho * (-1)) * (rho 17863 + rho 17864) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17871 * (1 - rho 17869) = rho 17866 - rho 17867 - rho 17868 := ha5
        _ = (-1) * rho 17867 - rho 17868 + (seg16AccY177 rho - seg16AccX177 rho * (-1)) * (rho 17863 + rho 17864) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX178 rho = seg16AccX177 rho - Bool.toZMod bit * (seg16AccX177 rho - rho 17870) := by
      have hd : rho 17872 = Bool.toZMod bit * (rho 17870 - seg16AccX177 rho) := by
        rw [← hbit, seg16LadderFlatX177_eq]
        unfold seg16LadderFlatX177
        linear_combination -r5300
      unfold seg16AccX178
      linear_combination hd
    have hsely : seg16AccY178 rho = seg16AccY177 rho - Bool.toZMod bit * (seg16AccY177 rho - rho 17871) := by
      have hd : rho 17873 = Bool.toZMod bit * (rho 17871 - seg16AccY177 rho) := by
        rw [← hbit, seg16LadderFlatY177_eq]
        unfold seg16LadderFlatY177
        linear_combination -r5301
      unfold seg16AccY178
      linear_combination hd
    have hd0 : rho 17863 * rho 17864 = rho 17874 := by linear_combination r5302
    have hd1 : rho 17863 * rho 17863 = rho 17875 := by linear_combination r5303
    have hd2 : rho 17864 * rho 17864 = rho 17876 := by linear_combination r5304
    have hd3 : rho 17877 * (rho 17864 * rho 17864 + rho 17863 * rho 17863 * (-1)) = 2 * (rho 17863 * rho 17864) := by
      rw [hd0, hd1, hd2]
      linear_combination r5305
    have hd4 : rho 17878 * (2 - (rho 17864 * rho 17864 + rho 17863 * rho 17863 * (-1))) = rho 17864 * rho 17864 - rho 17863 * rho 17863 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5306
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX177 rho : Seg16.F), (seg16AccY177 rho : Seg16.F)⟩
      ⟨(rho 17863 : Seg16.F), (rho 17864 : Seg16.F)⟩
      ⟨(rho 17870 : Seg16.F), (rho 17871 : Seg16.F)⟩
      ⟨(seg16AccX178 rho : Seg16.F), (seg16AccY178 rho : Seg16.F)⟩
      ⟨(rho 17877 : Seg16.F), (rho 17878 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung177

theorem seg16_rung178 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15470 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX178 rho : Seg16.F), (seg16AccY178 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17877 : Seg16.F), (rho 17878 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX178 rho : Seg16.F), (seg16AccY178 rho : Seg16.F)⟩
        ⟨(rho 17877 : Seg16.F), (rho 17878 : Seg16.F)⟩
        ⟨(seg16AccX179 rho : Seg16.F), (seg16AccY179 rho : Seg16.F)⟩
        ⟨(rho 17891 : Seg16.F), (rho 17892 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p66, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart66 at p66
  rcases p66 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5307, r5308, r5309, r5310, r5311, r5312, r5313, r5314, r5315, r5316, r5317, r5318, r5319, r5320, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow5307 Seg16.relationLc925 Seg16.relationLc925Part0 Seg16.relationLc925Part1 Seg16.relationLc925Part2 Seg16.relationLc925Part3 Seg16.relationLc925Part4 Seg16.relationLc925Part5 Seg16.relationLc925Part6 Seg16.relationLc925Part7 Seg16.relationLc925Part8 Seg16.relationLc925Part9 Seg16.relationLc925Part10 Seg16.relationLc925Part11 at r5307
  unfold Seg16.relationRow5308 at r5308
  unfold Seg16.relationRow5309 Seg16.relationLc926 Seg16.relationLc926Part0 Seg16.relationLc926Part1 Seg16.relationLc926Part2 Seg16.relationLc926Part3 Seg16.relationLc926Part4 Seg16.relationLc926Part5 at r5309
  unfold Seg16.relationRow5310 Seg16.relationLc927 Seg16.relationLc927Part0 Seg16.relationLc927Part1 Seg16.relationLc927Part2 Seg16.relationLc927Part3 Seg16.relationLc927Part4 Seg16.relationLc927Part5 at r5310
  unfold Seg16.relationRow5311 at r5311
  unfold Seg16.relationRow5312 at r5312
  unfold Seg16.relationRow5313 at r5313
  unfold Seg16.relationRow5314 Seg16.relationLc928 Seg16.relationLc928Part0 Seg16.relationLc928Part1 Seg16.relationLc928Part2 Seg16.relationLc928Part3 Seg16.relationLc928Part4 Seg16.relationLc928Part5 at r5314
  unfold Seg16.relationRow5315 Seg16.relationLc929 Seg16.relationLc929Part0 Seg16.relationLc929Part1 Seg16.relationLc929Part2 Seg16.relationLc929Part3 Seg16.relationLc929Part4 Seg16.relationLc929Part5 at r5315
  unfold Seg16.relationRow5316 at r5316
  unfold Seg16.relationRow5317 at r5317
  unfold Seg16.relationRow5318 at r5318
  unfold Seg16.relationRow5319 at r5319
  unfold Seg16.relationRow5320 at r5320
  have hrung178 (bit : Bool) (hbit : rho 15470 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX178 rho : Seg16.F), (seg16AccY178 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17877 : Seg16.F), (rho 17878 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX178 rho : Seg16.F), (seg16AccY178 rho : Seg16.F)⟩
        ⟨(rho 17877 : Seg16.F), (rho 17878 : Seg16.F)⟩
        ⟨(seg16AccX179 rho : Seg16.F), (seg16AccY179 rho : Seg16.F)⟩
        ⟨(rho 17891 : Seg16.F), (rho 17892 : Seg16.F)⟩ := by
    have hsum : seg16AccX178 rho + seg16AccY178 rho = rho 17879 := by
      rw [seg16LadderFlatX178_eq, seg16LadderFlatY178_eq]
      unfold seg16LadderFlatX178 seg16LadderFlatY178
      linear_combination r5307
    have ha0 : (rho 17877 + rho 17878) * (seg16AccX178 rho + seg16AccY178 rho) = rho 17880 := by
      rw [hsum]
      linear_combination r5308
    have ha1 : rho 17878 * seg16AccX178 rho = rho 17881 := by
      rw [seg16LadderFlatX178_eq]
      unfold seg16LadderFlatX178
      linear_combination r5309
    have ha2 : rho 17877 * seg16AccY178 rho = rho 17882 := by
      rw [seg16LadderFlatY178_eq]
      unfold seg16LadderFlatY178
      linear_combination r5310
    have ha3 : 3021 * rho 17881 * rho 17882 = rho 17883 := by
      linear_combination r5311
    have ha4 : rho 17884 * (1 + rho 17883) = rho 17881 + rho 17882 := by
      linear_combination r5312
    have ha5 : rho 17885 * (1 - rho 17883) = rho 17880 - rho 17881 - rho 17882 := by
      linear_combination r5313
    have haddx :
        rho 17884 * (1 + 3021 * (rho 17878 * seg16AccX178 rho) * (rho 17877 * seg16AccY178 rho)) =
          rho 17878 * seg16AccX178 rho + rho 17877 * seg16AccY178 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17885 * (1 - 3021 * (rho 17878 * seg16AccX178 rho) * (rho 17877 * seg16AccY178 rho)) =
          (-1) * (rho 17878 * seg16AccX178 rho) - rho 17877 * seg16AccY178 rho +
            (seg16AccY178 rho - seg16AccX178 rho * (-1)) * (rho 17877 + rho 17878) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17885 * (1 - rho 17883) = rho 17880 - rho 17881 - rho 17882 := ha5
        _ = (-1) * rho 17881 - rho 17882 + (seg16AccY178 rho - seg16AccX178 rho * (-1)) * (rho 17877 + rho 17878) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX179 rho = seg16AccX178 rho - Bool.toZMod bit * (seg16AccX178 rho - rho 17884) := by
      have hd : rho 17886 = Bool.toZMod bit * (rho 17884 - seg16AccX178 rho) := by
        rw [← hbit, seg16LadderFlatX178_eq]
        unfold seg16LadderFlatX178
        linear_combination -r5314
      unfold seg16AccX179
      linear_combination hd
    have hsely : seg16AccY179 rho = seg16AccY178 rho - Bool.toZMod bit * (seg16AccY178 rho - rho 17885) := by
      have hd : rho 17887 = Bool.toZMod bit * (rho 17885 - seg16AccY178 rho) := by
        rw [← hbit, seg16LadderFlatY178_eq]
        unfold seg16LadderFlatY178
        linear_combination -r5315
      unfold seg16AccY179
      linear_combination hd
    have hd0 : rho 17877 * rho 17878 = rho 17888 := by linear_combination r5316
    have hd1 : rho 17877 * rho 17877 = rho 17889 := by linear_combination r5317
    have hd2 : rho 17878 * rho 17878 = rho 17890 := by linear_combination r5318
    have hd3 : rho 17891 * (rho 17878 * rho 17878 + rho 17877 * rho 17877 * (-1)) = 2 * (rho 17877 * rho 17878) := by
      rw [hd0, hd1, hd2]
      linear_combination r5319
    have hd4 : rho 17892 * (2 - (rho 17878 * rho 17878 + rho 17877 * rho 17877 * (-1))) = rho 17878 * rho 17878 - rho 17877 * rho 17877 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5320
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX178 rho : Seg16.F), (seg16AccY178 rho : Seg16.F)⟩
      ⟨(rho 17877 : Seg16.F), (rho 17878 : Seg16.F)⟩
      ⟨(rho 17884 : Seg16.F), (rho 17885 : Seg16.F)⟩
      ⟨(seg16AccX179 rho : Seg16.F), (seg16AccY179 rho : Seg16.F)⟩
      ⟨(rho 17891 : Seg16.F), (rho 17892 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung178

theorem seg16_rung179 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15471 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX179 rho : Seg16.F), (seg16AccY179 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17891 : Seg16.F), (rho 17892 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX179 rho : Seg16.F), (seg16AccY179 rho : Seg16.F)⟩
        ⟨(rho 17891 : Seg16.F), (rho 17892 : Seg16.F)⟩
        ⟨(seg16AccX180 rho : Seg16.F), (seg16AccY180 rho : Seg16.F)⟩
        ⟨(rho 17905 : Seg16.F), (rho 17906 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p66, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart66 at p66
  rcases p66 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5321, r5322, r5323, r5324, r5325, r5326, r5327, r5328, r5329, r5330, r5331, r5332, r5333, r5334, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow5321 Seg16.relationLc930 Seg16.relationLc930Part0 Seg16.relationLc930Part1 Seg16.relationLc930Part2 Seg16.relationLc930Part3 Seg16.relationLc930Part4 Seg16.relationLc930Part5 Seg16.relationLc930Part6 Seg16.relationLc930Part7 Seg16.relationLc930Part8 Seg16.relationLc930Part9 Seg16.relationLc930Part10 Seg16.relationLc930Part11 at r5321
  unfold Seg16.relationRow5322 at r5322
  unfold Seg16.relationRow5323 Seg16.relationLc931 Seg16.relationLc931Part0 Seg16.relationLc931Part1 Seg16.relationLc931Part2 Seg16.relationLc931Part3 Seg16.relationLc931Part4 Seg16.relationLc931Part5 at r5323
  unfold Seg16.relationRow5324 Seg16.relationLc932 Seg16.relationLc932Part0 Seg16.relationLc932Part1 Seg16.relationLc932Part2 Seg16.relationLc932Part3 Seg16.relationLc932Part4 Seg16.relationLc932Part5 at r5324
  unfold Seg16.relationRow5325 at r5325
  unfold Seg16.relationRow5326 at r5326
  unfold Seg16.relationRow5327 at r5327
  unfold Seg16.relationRow5328 Seg16.relationLc933 Seg16.relationLc933Part0 Seg16.relationLc933Part1 Seg16.relationLc933Part2 Seg16.relationLc933Part3 Seg16.relationLc933Part4 Seg16.relationLc933Part5 at r5328
  unfold Seg16.relationRow5329 Seg16.relationLc934 Seg16.relationLc934Part0 Seg16.relationLc934Part1 Seg16.relationLc934Part2 Seg16.relationLc934Part3 Seg16.relationLc934Part4 Seg16.relationLc934Part5 at r5329
  unfold Seg16.relationRow5330 at r5330
  unfold Seg16.relationRow5331 at r5331
  unfold Seg16.relationRow5332 at r5332
  unfold Seg16.relationRow5333 at r5333
  unfold Seg16.relationRow5334 at r5334
  have hrung179 (bit : Bool) (hbit : rho 15471 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX179 rho : Seg16.F), (seg16AccY179 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17891 : Seg16.F), (rho 17892 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX179 rho : Seg16.F), (seg16AccY179 rho : Seg16.F)⟩
        ⟨(rho 17891 : Seg16.F), (rho 17892 : Seg16.F)⟩
        ⟨(seg16AccX180 rho : Seg16.F), (seg16AccY180 rho : Seg16.F)⟩
        ⟨(rho 17905 : Seg16.F), (rho 17906 : Seg16.F)⟩ := by
    have hsum : seg16AccX179 rho + seg16AccY179 rho = rho 17893 := by
      rw [seg16LadderFlatX179_eq, seg16LadderFlatY179_eq]
      unfold seg16LadderFlatX179 seg16LadderFlatY179
      linear_combination r5321
    have ha0 : (rho 17891 + rho 17892) * (seg16AccX179 rho + seg16AccY179 rho) = rho 17894 := by
      rw [hsum]
      linear_combination r5322
    have ha1 : rho 17892 * seg16AccX179 rho = rho 17895 := by
      rw [seg16LadderFlatX179_eq]
      unfold seg16LadderFlatX179
      linear_combination r5323
    have ha2 : rho 17891 * seg16AccY179 rho = rho 17896 := by
      rw [seg16LadderFlatY179_eq]
      unfold seg16LadderFlatY179
      linear_combination r5324
    have ha3 : 3021 * rho 17895 * rho 17896 = rho 17897 := by
      linear_combination r5325
    have ha4 : rho 17898 * (1 + rho 17897) = rho 17895 + rho 17896 := by
      linear_combination r5326
    have ha5 : rho 17899 * (1 - rho 17897) = rho 17894 - rho 17895 - rho 17896 := by
      linear_combination r5327
    have haddx :
        rho 17898 * (1 + 3021 * (rho 17892 * seg16AccX179 rho) * (rho 17891 * seg16AccY179 rho)) =
          rho 17892 * seg16AccX179 rho + rho 17891 * seg16AccY179 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17899 * (1 - 3021 * (rho 17892 * seg16AccX179 rho) * (rho 17891 * seg16AccY179 rho)) =
          (-1) * (rho 17892 * seg16AccX179 rho) - rho 17891 * seg16AccY179 rho +
            (seg16AccY179 rho - seg16AccX179 rho * (-1)) * (rho 17891 + rho 17892) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17899 * (1 - rho 17897) = rho 17894 - rho 17895 - rho 17896 := ha5
        _ = (-1) * rho 17895 - rho 17896 + (seg16AccY179 rho - seg16AccX179 rho * (-1)) * (rho 17891 + rho 17892) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX180 rho = seg16AccX179 rho - Bool.toZMod bit * (seg16AccX179 rho - rho 17898) := by
      have hd : rho 17900 = Bool.toZMod bit * (rho 17898 - seg16AccX179 rho) := by
        rw [← hbit, seg16LadderFlatX179_eq]
        unfold seg16LadderFlatX179
        linear_combination -r5328
      unfold seg16AccX180
      linear_combination hd
    have hsely : seg16AccY180 rho = seg16AccY179 rho - Bool.toZMod bit * (seg16AccY179 rho - rho 17899) := by
      have hd : rho 17901 = Bool.toZMod bit * (rho 17899 - seg16AccY179 rho) := by
        rw [← hbit, seg16LadderFlatY179_eq]
        unfold seg16LadderFlatY179
        linear_combination -r5329
      unfold seg16AccY180
      linear_combination hd
    have hd0 : rho 17891 * rho 17892 = rho 17902 := by linear_combination r5330
    have hd1 : rho 17891 * rho 17891 = rho 17903 := by linear_combination r5331
    have hd2 : rho 17892 * rho 17892 = rho 17904 := by linear_combination r5332
    have hd3 : rho 17905 * (rho 17892 * rho 17892 + rho 17891 * rho 17891 * (-1)) = 2 * (rho 17891 * rho 17892) := by
      rw [hd0, hd1, hd2]
      linear_combination r5333
    have hd4 : rho 17906 * (2 - (rho 17892 * rho 17892 + rho 17891 * rho 17891 * (-1))) = rho 17892 * rho 17892 - rho 17891 * rho 17891 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5334
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX179 rho : Seg16.F), (seg16AccY179 rho : Seg16.F)⟩
      ⟨(rho 17891 : Seg16.F), (rho 17892 : Seg16.F)⟩
      ⟨(rho 17898 : Seg16.F), (rho 17899 : Seg16.F)⟩
      ⟨(seg16AccX180 rho : Seg16.F), (seg16AccY180 rho : Seg16.F)⟩
      ⟨(rho 17905 : Seg16.F), (rho 17906 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung179

theorem seg16_rung180 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15472 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX180 rho : Seg16.F), (seg16AccY180 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17905 : Seg16.F), (rho 17906 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX180 rho : Seg16.F), (seg16AccY180 rho : Seg16.F)⟩
        ⟨(rho 17905 : Seg16.F), (rho 17906 : Seg16.F)⟩
        ⟨(seg16AccX181 rho : Seg16.F), (seg16AccY181 rho : Seg16.F)⟩
        ⟨(rho 17919 : Seg16.F), (rho 17920 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p66, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart66 at p66
  rcases p66 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5335, r5336, r5337, r5338, r5339, r5340, r5341, r5342, r5343, r5344, r5345, r5346, r5347, r5348, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow5335 Seg16.relationLc935 Seg16.relationLc935Part0 Seg16.relationLc935Part1 Seg16.relationLc935Part2 Seg16.relationLc935Part3 Seg16.relationLc935Part4 Seg16.relationLc935Part5 Seg16.relationLc935Part6 Seg16.relationLc935Part7 Seg16.relationLc935Part8 Seg16.relationLc935Part9 Seg16.relationLc935Part10 Seg16.relationLc935Part11 at r5335
  unfold Seg16.relationRow5336 at r5336
  unfold Seg16.relationRow5337 Seg16.relationLc936 Seg16.relationLc936Part0 Seg16.relationLc936Part1 Seg16.relationLc936Part2 Seg16.relationLc936Part3 Seg16.relationLc936Part4 Seg16.relationLc936Part5 at r5337
  unfold Seg16.relationRow5338 Seg16.relationLc937 Seg16.relationLc937Part0 Seg16.relationLc937Part1 Seg16.relationLc937Part2 Seg16.relationLc937Part3 Seg16.relationLc937Part4 Seg16.relationLc937Part5 at r5338
  unfold Seg16.relationRow5339 at r5339
  unfold Seg16.relationRow5340 at r5340
  unfold Seg16.relationRow5341 at r5341
  unfold Seg16.relationRow5342 Seg16.relationLc938 Seg16.relationLc938Part0 Seg16.relationLc938Part1 Seg16.relationLc938Part2 Seg16.relationLc938Part3 Seg16.relationLc938Part4 Seg16.relationLc938Part5 at r5342
  unfold Seg16.relationRow5343 Seg16.relationLc939 Seg16.relationLc939Part0 Seg16.relationLc939Part1 Seg16.relationLc939Part2 Seg16.relationLc939Part3 Seg16.relationLc939Part4 Seg16.relationLc939Part5 at r5343
  unfold Seg16.relationRow5344 at r5344
  unfold Seg16.relationRow5345 at r5345
  unfold Seg16.relationRow5346 at r5346
  unfold Seg16.relationRow5347 at r5347
  unfold Seg16.relationRow5348 at r5348
  have hrung180 (bit : Bool) (hbit : rho 15472 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX180 rho : Seg16.F), (seg16AccY180 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17905 : Seg16.F), (rho 17906 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX180 rho : Seg16.F), (seg16AccY180 rho : Seg16.F)⟩
        ⟨(rho 17905 : Seg16.F), (rho 17906 : Seg16.F)⟩
        ⟨(seg16AccX181 rho : Seg16.F), (seg16AccY181 rho : Seg16.F)⟩
        ⟨(rho 17919 : Seg16.F), (rho 17920 : Seg16.F)⟩ := by
    have hsum : seg16AccX180 rho + seg16AccY180 rho = rho 17907 := by
      rw [seg16LadderFlatX180_eq, seg16LadderFlatY180_eq]
      unfold seg16LadderFlatX180 seg16LadderFlatY180
      linear_combination r5335
    have ha0 : (rho 17905 + rho 17906) * (seg16AccX180 rho + seg16AccY180 rho) = rho 17908 := by
      rw [hsum]
      linear_combination r5336
    have ha1 : rho 17906 * seg16AccX180 rho = rho 17909 := by
      rw [seg16LadderFlatX180_eq]
      unfold seg16LadderFlatX180
      linear_combination r5337
    have ha2 : rho 17905 * seg16AccY180 rho = rho 17910 := by
      rw [seg16LadderFlatY180_eq]
      unfold seg16LadderFlatY180
      linear_combination r5338
    have ha3 : 3021 * rho 17909 * rho 17910 = rho 17911 := by
      linear_combination r5339
    have ha4 : rho 17912 * (1 + rho 17911) = rho 17909 + rho 17910 := by
      linear_combination r5340
    have ha5 : rho 17913 * (1 - rho 17911) = rho 17908 - rho 17909 - rho 17910 := by
      linear_combination r5341
    have haddx :
        rho 17912 * (1 + 3021 * (rho 17906 * seg16AccX180 rho) * (rho 17905 * seg16AccY180 rho)) =
          rho 17906 * seg16AccX180 rho + rho 17905 * seg16AccY180 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17913 * (1 - 3021 * (rho 17906 * seg16AccX180 rho) * (rho 17905 * seg16AccY180 rho)) =
          (-1) * (rho 17906 * seg16AccX180 rho) - rho 17905 * seg16AccY180 rho +
            (seg16AccY180 rho - seg16AccX180 rho * (-1)) * (rho 17905 + rho 17906) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17913 * (1 - rho 17911) = rho 17908 - rho 17909 - rho 17910 := ha5
        _ = (-1) * rho 17909 - rho 17910 + (seg16AccY180 rho - seg16AccX180 rho * (-1)) * (rho 17905 + rho 17906) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX181 rho = seg16AccX180 rho - Bool.toZMod bit * (seg16AccX180 rho - rho 17912) := by
      have hd : rho 17914 = Bool.toZMod bit * (rho 17912 - seg16AccX180 rho) := by
        rw [← hbit, seg16LadderFlatX180_eq]
        unfold seg16LadderFlatX180
        linear_combination -r5342
      unfold seg16AccX181
      linear_combination hd
    have hsely : seg16AccY181 rho = seg16AccY180 rho - Bool.toZMod bit * (seg16AccY180 rho - rho 17913) := by
      have hd : rho 17915 = Bool.toZMod bit * (rho 17913 - seg16AccY180 rho) := by
        rw [← hbit, seg16LadderFlatY180_eq]
        unfold seg16LadderFlatY180
        linear_combination -r5343
      unfold seg16AccY181
      linear_combination hd
    have hd0 : rho 17905 * rho 17906 = rho 17916 := by linear_combination r5344
    have hd1 : rho 17905 * rho 17905 = rho 17917 := by linear_combination r5345
    have hd2 : rho 17906 * rho 17906 = rho 17918 := by linear_combination r5346
    have hd3 : rho 17919 * (rho 17906 * rho 17906 + rho 17905 * rho 17905 * (-1)) = 2 * (rho 17905 * rho 17906) := by
      rw [hd0, hd1, hd2]
      linear_combination r5347
    have hd4 : rho 17920 * (2 - (rho 17906 * rho 17906 + rho 17905 * rho 17905 * (-1))) = rho 17906 * rho 17906 - rho 17905 * rho 17905 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5348
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX180 rho : Seg16.F), (seg16AccY180 rho : Seg16.F)⟩
      ⟨(rho 17905 : Seg16.F), (rho 17906 : Seg16.F)⟩
      ⟨(rho 17912 : Seg16.F), (rho 17913 : Seg16.F)⟩
      ⟨(seg16AccX181 rho : Seg16.F), (seg16AccY181 rho : Seg16.F)⟩
      ⟨(rho 17919 : Seg16.F), (rho 17920 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung180

theorem seg16_rung181 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15473 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX181 rho : Seg16.F), (seg16AccY181 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17919 : Seg16.F), (rho 17920 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX181 rho : Seg16.F), (seg16AccY181 rho : Seg16.F)⟩
        ⟨(rho 17919 : Seg16.F), (rho 17920 : Seg16.F)⟩
        ⟨(seg16AccX182 rho : Seg16.F), (seg16AccY182 rho : Seg16.F)⟩
        ⟨(rho 17933 : Seg16.F), (rho 17934 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p66, p67, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart66 at p66
  rcases p66 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5349, r5350, r5351, r5352, r5353, r5354, r5355, r5356, r5357, r5358, r5359⟩
  unfold Seg16.relationPart67 at p67
  rcases p67 with ⟨r5360, r5361, r5362, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow5349 Seg16.relationLc940 Seg16.relationLc940Part0 Seg16.relationLc940Part1 Seg16.relationLc940Part2 Seg16.relationLc940Part3 Seg16.relationLc940Part4 Seg16.relationLc940Part5 Seg16.relationLc940Part6 Seg16.relationLc940Part7 Seg16.relationLc940Part8 Seg16.relationLc940Part9 Seg16.relationLc940Part10 Seg16.relationLc940Part11 at r5349
  unfold Seg16.relationRow5350 at r5350
  unfold Seg16.relationRow5351 Seg16.relationLc941 Seg16.relationLc941Part0 Seg16.relationLc941Part1 Seg16.relationLc941Part2 Seg16.relationLc941Part3 Seg16.relationLc941Part4 Seg16.relationLc941Part5 at r5351
  unfold Seg16.relationRow5352 Seg16.relationLc942 Seg16.relationLc942Part0 Seg16.relationLc942Part1 Seg16.relationLc942Part2 Seg16.relationLc942Part3 Seg16.relationLc942Part4 Seg16.relationLc942Part5 at r5352
  unfold Seg16.relationRow5353 at r5353
  unfold Seg16.relationRow5354 at r5354
  unfold Seg16.relationRow5355 at r5355
  unfold Seg16.relationRow5356 Seg16.relationLc943 Seg16.relationLc943Part0 Seg16.relationLc943Part1 Seg16.relationLc943Part2 Seg16.relationLc943Part3 Seg16.relationLc943Part4 Seg16.relationLc943Part5 at r5356
  unfold Seg16.relationRow5357 Seg16.relationLc944 Seg16.relationLc944Part0 Seg16.relationLc944Part1 Seg16.relationLc944Part2 Seg16.relationLc944Part3 Seg16.relationLc944Part4 Seg16.relationLc944Part5 at r5357
  unfold Seg16.relationRow5358 at r5358
  unfold Seg16.relationRow5359 at r5359
  unfold Seg16.relationRow5360 at r5360
  unfold Seg16.relationRow5361 at r5361
  unfold Seg16.relationRow5362 at r5362
  have hrung181 (bit : Bool) (hbit : rho 15473 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX181 rho : Seg16.F), (seg16AccY181 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17919 : Seg16.F), (rho 17920 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX181 rho : Seg16.F), (seg16AccY181 rho : Seg16.F)⟩
        ⟨(rho 17919 : Seg16.F), (rho 17920 : Seg16.F)⟩
        ⟨(seg16AccX182 rho : Seg16.F), (seg16AccY182 rho : Seg16.F)⟩
        ⟨(rho 17933 : Seg16.F), (rho 17934 : Seg16.F)⟩ := by
    have hsum : seg16AccX181 rho + seg16AccY181 rho = rho 17921 := by
      rw [seg16LadderFlatX181_eq, seg16LadderFlatY181_eq]
      unfold seg16LadderFlatX181 seg16LadderFlatY181
      linear_combination r5349
    have ha0 : (rho 17919 + rho 17920) * (seg16AccX181 rho + seg16AccY181 rho) = rho 17922 := by
      rw [hsum]
      linear_combination r5350
    have ha1 : rho 17920 * seg16AccX181 rho = rho 17923 := by
      rw [seg16LadderFlatX181_eq]
      unfold seg16LadderFlatX181
      linear_combination r5351
    have ha2 : rho 17919 * seg16AccY181 rho = rho 17924 := by
      rw [seg16LadderFlatY181_eq]
      unfold seg16LadderFlatY181
      linear_combination r5352
    have ha3 : 3021 * rho 17923 * rho 17924 = rho 17925 := by
      linear_combination r5353
    have ha4 : rho 17926 * (1 + rho 17925) = rho 17923 + rho 17924 := by
      linear_combination r5354
    have ha5 : rho 17927 * (1 - rho 17925) = rho 17922 - rho 17923 - rho 17924 := by
      linear_combination r5355
    have haddx :
        rho 17926 * (1 + 3021 * (rho 17920 * seg16AccX181 rho) * (rho 17919 * seg16AccY181 rho)) =
          rho 17920 * seg16AccX181 rho + rho 17919 * seg16AccY181 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17927 * (1 - 3021 * (rho 17920 * seg16AccX181 rho) * (rho 17919 * seg16AccY181 rho)) =
          (-1) * (rho 17920 * seg16AccX181 rho) - rho 17919 * seg16AccY181 rho +
            (seg16AccY181 rho - seg16AccX181 rho * (-1)) * (rho 17919 + rho 17920) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17927 * (1 - rho 17925) = rho 17922 - rho 17923 - rho 17924 := ha5
        _ = (-1) * rho 17923 - rho 17924 + (seg16AccY181 rho - seg16AccX181 rho * (-1)) * (rho 17919 + rho 17920) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX182 rho = seg16AccX181 rho - Bool.toZMod bit * (seg16AccX181 rho - rho 17926) := by
      have hd : rho 17928 = Bool.toZMod bit * (rho 17926 - seg16AccX181 rho) := by
        rw [← hbit, seg16LadderFlatX181_eq]
        unfold seg16LadderFlatX181
        linear_combination -r5356
      unfold seg16AccX182
      linear_combination hd
    have hsely : seg16AccY182 rho = seg16AccY181 rho - Bool.toZMod bit * (seg16AccY181 rho - rho 17927) := by
      have hd : rho 17929 = Bool.toZMod bit * (rho 17927 - seg16AccY181 rho) := by
        rw [← hbit, seg16LadderFlatY181_eq]
        unfold seg16LadderFlatY181
        linear_combination -r5357
      unfold seg16AccY182
      linear_combination hd
    have hd0 : rho 17919 * rho 17920 = rho 17930 := by linear_combination r5358
    have hd1 : rho 17919 * rho 17919 = rho 17931 := by linear_combination r5359
    have hd2 : rho 17920 * rho 17920 = rho 17932 := by linear_combination r5360
    have hd3 : rho 17933 * (rho 17920 * rho 17920 + rho 17919 * rho 17919 * (-1)) = 2 * (rho 17919 * rho 17920) := by
      rw [hd0, hd1, hd2]
      linear_combination r5361
    have hd4 : rho 17934 * (2 - (rho 17920 * rho 17920 + rho 17919 * rho 17919 * (-1))) = rho 17920 * rho 17920 - rho 17919 * rho 17919 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5362
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX181 rho : Seg16.F), (seg16AccY181 rho : Seg16.F)⟩
      ⟨(rho 17919 : Seg16.F), (rho 17920 : Seg16.F)⟩
      ⟨(rho 17926 : Seg16.F), (rho 17927 : Seg16.F)⟩
      ⟨(seg16AccX182 rho : Seg16.F), (seg16AccY182 rho : Seg16.F)⟩
      ⟨(rho 17933 : Seg16.F), (rho 17934 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung181

theorem seg16_rung182 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15474 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX182 rho : Seg16.F), (seg16AccY182 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17933 : Seg16.F), (rho 17934 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX182 rho : Seg16.F), (seg16AccY182 rho : Seg16.F)⟩
        ⟨(rho 17933 : Seg16.F), (rho 17934 : Seg16.F)⟩
        ⟨(seg16AccX183 rho : Seg16.F), (seg16AccY183 rho : Seg16.F)⟩
        ⟨(rho 17947 : Seg16.F), (rho 17948 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p67, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart67 at p67
  rcases p67 with ⟨_, _, _, r5363, r5364, r5365, r5366, r5367, r5368, r5369, r5370, r5371, r5372, r5373, r5374, r5375, r5376, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow5363 Seg16.relationLc945 Seg16.relationLc945Part0 Seg16.relationLc945Part1 Seg16.relationLc945Part2 Seg16.relationLc945Part3 Seg16.relationLc945Part4 Seg16.relationLc945Part5 Seg16.relationLc945Part6 Seg16.relationLc945Part7 Seg16.relationLc945Part8 Seg16.relationLc945Part9 Seg16.relationLc945Part10 Seg16.relationLc945Part11 at r5363
  unfold Seg16.relationRow5364 at r5364
  unfold Seg16.relationRow5365 Seg16.relationLc946 Seg16.relationLc946Part0 Seg16.relationLc946Part1 Seg16.relationLc946Part2 Seg16.relationLc946Part3 Seg16.relationLc946Part4 Seg16.relationLc946Part5 at r5365
  unfold Seg16.relationRow5366 Seg16.relationLc947 Seg16.relationLc947Part0 Seg16.relationLc947Part1 Seg16.relationLc947Part2 Seg16.relationLc947Part3 Seg16.relationLc947Part4 Seg16.relationLc947Part5 at r5366
  unfold Seg16.relationRow5367 at r5367
  unfold Seg16.relationRow5368 at r5368
  unfold Seg16.relationRow5369 at r5369
  unfold Seg16.relationRow5370 Seg16.relationLc948 Seg16.relationLc948Part0 Seg16.relationLc948Part1 Seg16.relationLc948Part2 Seg16.relationLc948Part3 Seg16.relationLc948Part4 Seg16.relationLc948Part5 at r5370
  unfold Seg16.relationRow5371 Seg16.relationLc949 Seg16.relationLc949Part0 Seg16.relationLc949Part1 Seg16.relationLc949Part2 Seg16.relationLc949Part3 Seg16.relationLc949Part4 Seg16.relationLc949Part5 at r5371
  unfold Seg16.relationRow5372 at r5372
  unfold Seg16.relationRow5373 at r5373
  unfold Seg16.relationRow5374 at r5374
  unfold Seg16.relationRow5375 at r5375
  unfold Seg16.relationRow5376 at r5376
  have hrung182 (bit : Bool) (hbit : rho 15474 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX182 rho : Seg16.F), (seg16AccY182 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17933 : Seg16.F), (rho 17934 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX182 rho : Seg16.F), (seg16AccY182 rho : Seg16.F)⟩
        ⟨(rho 17933 : Seg16.F), (rho 17934 : Seg16.F)⟩
        ⟨(seg16AccX183 rho : Seg16.F), (seg16AccY183 rho : Seg16.F)⟩
        ⟨(rho 17947 : Seg16.F), (rho 17948 : Seg16.F)⟩ := by
    have hsum : seg16AccX182 rho + seg16AccY182 rho = rho 17935 := by
      rw [seg16LadderFlatX182_eq, seg16LadderFlatY182_eq]
      unfold seg16LadderFlatX182 seg16LadderFlatY182
      linear_combination r5363
    have ha0 : (rho 17933 + rho 17934) * (seg16AccX182 rho + seg16AccY182 rho) = rho 17936 := by
      rw [hsum]
      linear_combination r5364
    have ha1 : rho 17934 * seg16AccX182 rho = rho 17937 := by
      rw [seg16LadderFlatX182_eq]
      unfold seg16LadderFlatX182
      linear_combination r5365
    have ha2 : rho 17933 * seg16AccY182 rho = rho 17938 := by
      rw [seg16LadderFlatY182_eq]
      unfold seg16LadderFlatY182
      linear_combination r5366
    have ha3 : 3021 * rho 17937 * rho 17938 = rho 17939 := by
      linear_combination r5367
    have ha4 : rho 17940 * (1 + rho 17939) = rho 17937 + rho 17938 := by
      linear_combination r5368
    have ha5 : rho 17941 * (1 - rho 17939) = rho 17936 - rho 17937 - rho 17938 := by
      linear_combination r5369
    have haddx :
        rho 17940 * (1 + 3021 * (rho 17934 * seg16AccX182 rho) * (rho 17933 * seg16AccY182 rho)) =
          rho 17934 * seg16AccX182 rho + rho 17933 * seg16AccY182 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17941 * (1 - 3021 * (rho 17934 * seg16AccX182 rho) * (rho 17933 * seg16AccY182 rho)) =
          (-1) * (rho 17934 * seg16AccX182 rho) - rho 17933 * seg16AccY182 rho +
            (seg16AccY182 rho - seg16AccX182 rho * (-1)) * (rho 17933 + rho 17934) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17941 * (1 - rho 17939) = rho 17936 - rho 17937 - rho 17938 := ha5
        _ = (-1) * rho 17937 - rho 17938 + (seg16AccY182 rho - seg16AccX182 rho * (-1)) * (rho 17933 + rho 17934) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX183 rho = seg16AccX182 rho - Bool.toZMod bit * (seg16AccX182 rho - rho 17940) := by
      have hd : rho 17942 = Bool.toZMod bit * (rho 17940 - seg16AccX182 rho) := by
        rw [← hbit, seg16LadderFlatX182_eq]
        unfold seg16LadderFlatX182
        linear_combination -r5370
      unfold seg16AccX183
      linear_combination hd
    have hsely : seg16AccY183 rho = seg16AccY182 rho - Bool.toZMod bit * (seg16AccY182 rho - rho 17941) := by
      have hd : rho 17943 = Bool.toZMod bit * (rho 17941 - seg16AccY182 rho) := by
        rw [← hbit, seg16LadderFlatY182_eq]
        unfold seg16LadderFlatY182
        linear_combination -r5371
      unfold seg16AccY183
      linear_combination hd
    have hd0 : rho 17933 * rho 17934 = rho 17944 := by linear_combination r5372
    have hd1 : rho 17933 * rho 17933 = rho 17945 := by linear_combination r5373
    have hd2 : rho 17934 * rho 17934 = rho 17946 := by linear_combination r5374
    have hd3 : rho 17947 * (rho 17934 * rho 17934 + rho 17933 * rho 17933 * (-1)) = 2 * (rho 17933 * rho 17934) := by
      rw [hd0, hd1, hd2]
      linear_combination r5375
    have hd4 : rho 17948 * (2 - (rho 17934 * rho 17934 + rho 17933 * rho 17933 * (-1))) = rho 17934 * rho 17934 - rho 17933 * rho 17933 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5376
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX182 rho : Seg16.F), (seg16AccY182 rho : Seg16.F)⟩
      ⟨(rho 17933 : Seg16.F), (rho 17934 : Seg16.F)⟩
      ⟨(rho 17940 : Seg16.F), (rho 17941 : Seg16.F)⟩
      ⟨(seg16AccX183 rho : Seg16.F), (seg16AccY183 rho : Seg16.F)⟩
      ⟨(rho 17947 : Seg16.F), (rho 17948 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung182

theorem seg16_rung183 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15475 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX183 rho : Seg16.F), (seg16AccY183 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17947 : Seg16.F), (rho 17948 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX183 rho : Seg16.F), (seg16AccY183 rho : Seg16.F)⟩
        ⟨(rho 17947 : Seg16.F), (rho 17948 : Seg16.F)⟩
        ⟨(seg16AccX184 rho : Seg16.F), (seg16AccY184 rho : Seg16.F)⟩
        ⟨(rho 17961 : Seg16.F), (rho 17962 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p67, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart67 at p67
  rcases p67 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5377, r5378, r5379, r5380, r5381, r5382, r5383, r5384, r5385, r5386, r5387, r5388, r5389, r5390, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow5377 Seg16.relationLc950 Seg16.relationLc950Part0 Seg16.relationLc950Part1 Seg16.relationLc950Part2 Seg16.relationLc950Part3 Seg16.relationLc950Part4 Seg16.relationLc950Part5 Seg16.relationLc950Part6 Seg16.relationLc950Part7 Seg16.relationLc950Part8 Seg16.relationLc950Part9 Seg16.relationLc950Part10 Seg16.relationLc950Part11 at r5377
  unfold Seg16.relationRow5378 at r5378
  unfold Seg16.relationRow5379 Seg16.relationLc951 Seg16.relationLc951Part0 Seg16.relationLc951Part1 Seg16.relationLc951Part2 Seg16.relationLc951Part3 Seg16.relationLc951Part4 Seg16.relationLc951Part5 at r5379
  unfold Seg16.relationRow5380 Seg16.relationLc952 Seg16.relationLc952Part0 Seg16.relationLc952Part1 Seg16.relationLc952Part2 Seg16.relationLc952Part3 Seg16.relationLc952Part4 Seg16.relationLc952Part5 at r5380
  unfold Seg16.relationRow5381 at r5381
  unfold Seg16.relationRow5382 at r5382
  unfold Seg16.relationRow5383 at r5383
  unfold Seg16.relationRow5384 Seg16.relationLc953 Seg16.relationLc953Part0 Seg16.relationLc953Part1 Seg16.relationLc953Part2 Seg16.relationLc953Part3 Seg16.relationLc953Part4 Seg16.relationLc953Part5 at r5384
  unfold Seg16.relationRow5385 Seg16.relationLc954 Seg16.relationLc954Part0 Seg16.relationLc954Part1 Seg16.relationLc954Part2 Seg16.relationLc954Part3 Seg16.relationLc954Part4 Seg16.relationLc954Part5 at r5385
  unfold Seg16.relationRow5386 at r5386
  unfold Seg16.relationRow5387 at r5387
  unfold Seg16.relationRow5388 at r5388
  unfold Seg16.relationRow5389 at r5389
  unfold Seg16.relationRow5390 at r5390
  have hrung183 (bit : Bool) (hbit : rho 15475 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX183 rho : Seg16.F), (seg16AccY183 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17947 : Seg16.F), (rho 17948 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX183 rho : Seg16.F), (seg16AccY183 rho : Seg16.F)⟩
        ⟨(rho 17947 : Seg16.F), (rho 17948 : Seg16.F)⟩
        ⟨(seg16AccX184 rho : Seg16.F), (seg16AccY184 rho : Seg16.F)⟩
        ⟨(rho 17961 : Seg16.F), (rho 17962 : Seg16.F)⟩ := by
    have hsum : seg16AccX183 rho + seg16AccY183 rho = rho 17949 := by
      rw [seg16LadderFlatX183_eq, seg16LadderFlatY183_eq]
      unfold seg16LadderFlatX183 seg16LadderFlatY183
      linear_combination r5377
    have ha0 : (rho 17947 + rho 17948) * (seg16AccX183 rho + seg16AccY183 rho) = rho 17950 := by
      rw [hsum]
      linear_combination r5378
    have ha1 : rho 17948 * seg16AccX183 rho = rho 17951 := by
      rw [seg16LadderFlatX183_eq]
      unfold seg16LadderFlatX183
      linear_combination r5379
    have ha2 : rho 17947 * seg16AccY183 rho = rho 17952 := by
      rw [seg16LadderFlatY183_eq]
      unfold seg16LadderFlatY183
      linear_combination r5380
    have ha3 : 3021 * rho 17951 * rho 17952 = rho 17953 := by
      linear_combination r5381
    have ha4 : rho 17954 * (1 + rho 17953) = rho 17951 + rho 17952 := by
      linear_combination r5382
    have ha5 : rho 17955 * (1 - rho 17953) = rho 17950 - rho 17951 - rho 17952 := by
      linear_combination r5383
    have haddx :
        rho 17954 * (1 + 3021 * (rho 17948 * seg16AccX183 rho) * (rho 17947 * seg16AccY183 rho)) =
          rho 17948 * seg16AccX183 rho + rho 17947 * seg16AccY183 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17955 * (1 - 3021 * (rho 17948 * seg16AccX183 rho) * (rho 17947 * seg16AccY183 rho)) =
          (-1) * (rho 17948 * seg16AccX183 rho) - rho 17947 * seg16AccY183 rho +
            (seg16AccY183 rho - seg16AccX183 rho * (-1)) * (rho 17947 + rho 17948) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17955 * (1 - rho 17953) = rho 17950 - rho 17951 - rho 17952 := ha5
        _ = (-1) * rho 17951 - rho 17952 + (seg16AccY183 rho - seg16AccX183 rho * (-1)) * (rho 17947 + rho 17948) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX184 rho = seg16AccX183 rho - Bool.toZMod bit * (seg16AccX183 rho - rho 17954) := by
      have hd : rho 17956 = Bool.toZMod bit * (rho 17954 - seg16AccX183 rho) := by
        rw [← hbit, seg16LadderFlatX183_eq]
        unfold seg16LadderFlatX183
        linear_combination -r5384
      unfold seg16AccX184
      linear_combination hd
    have hsely : seg16AccY184 rho = seg16AccY183 rho - Bool.toZMod bit * (seg16AccY183 rho - rho 17955) := by
      have hd : rho 17957 = Bool.toZMod bit * (rho 17955 - seg16AccY183 rho) := by
        rw [← hbit, seg16LadderFlatY183_eq]
        unfold seg16LadderFlatY183
        linear_combination -r5385
      unfold seg16AccY184
      linear_combination hd
    have hd0 : rho 17947 * rho 17948 = rho 17958 := by linear_combination r5386
    have hd1 : rho 17947 * rho 17947 = rho 17959 := by linear_combination r5387
    have hd2 : rho 17948 * rho 17948 = rho 17960 := by linear_combination r5388
    have hd3 : rho 17961 * (rho 17948 * rho 17948 + rho 17947 * rho 17947 * (-1)) = 2 * (rho 17947 * rho 17948) := by
      rw [hd0, hd1, hd2]
      linear_combination r5389
    have hd4 : rho 17962 * (2 - (rho 17948 * rho 17948 + rho 17947 * rho 17947 * (-1))) = rho 17948 * rho 17948 - rho 17947 * rho 17947 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5390
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX183 rho : Seg16.F), (seg16AccY183 rho : Seg16.F)⟩
      ⟨(rho 17947 : Seg16.F), (rho 17948 : Seg16.F)⟩
      ⟨(rho 17954 : Seg16.F), (rho 17955 : Seg16.F)⟩
      ⟨(seg16AccX184 rho : Seg16.F), (seg16AccY184 rho : Seg16.F)⟩
      ⟨(rho 17961 : Seg16.F), (rho 17962 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung183

theorem seg16_rung184 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15476 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX184 rho : Seg16.F), (seg16AccY184 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17961 : Seg16.F), (rho 17962 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX184 rho : Seg16.F), (seg16AccY184 rho : Seg16.F)⟩
        ⟨(rho 17961 : Seg16.F), (rho 17962 : Seg16.F)⟩
        ⟨(seg16AccX185 rho : Seg16.F), (seg16AccY185 rho : Seg16.F)⟩
        ⟨(rho 17975 : Seg16.F), (rho 17976 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p67, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart67 at p67
  rcases p67 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5391, r5392, r5393, r5394, r5395, r5396, r5397, r5398, r5399, r5400, r5401, r5402, r5403, r5404, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow5391 Seg16.relationLc955 Seg16.relationLc955Part0 Seg16.relationLc955Part1 Seg16.relationLc955Part2 Seg16.relationLc955Part3 Seg16.relationLc955Part4 Seg16.relationLc955Part5 Seg16.relationLc955Part6 Seg16.relationLc955Part7 Seg16.relationLc955Part8 Seg16.relationLc955Part9 Seg16.relationLc955Part10 Seg16.relationLc955Part11 at r5391
  unfold Seg16.relationRow5392 at r5392
  unfold Seg16.relationRow5393 Seg16.relationLc956 Seg16.relationLc956Part0 Seg16.relationLc956Part1 Seg16.relationLc956Part2 Seg16.relationLc956Part3 Seg16.relationLc956Part4 Seg16.relationLc956Part5 at r5393
  unfold Seg16.relationRow5394 Seg16.relationLc957 Seg16.relationLc957Part0 Seg16.relationLc957Part1 Seg16.relationLc957Part2 Seg16.relationLc957Part3 Seg16.relationLc957Part4 Seg16.relationLc957Part5 at r5394
  unfold Seg16.relationRow5395 at r5395
  unfold Seg16.relationRow5396 at r5396
  unfold Seg16.relationRow5397 at r5397
  unfold Seg16.relationRow5398 Seg16.relationLc958 Seg16.relationLc958Part0 Seg16.relationLc958Part1 Seg16.relationLc958Part2 Seg16.relationLc958Part3 Seg16.relationLc958Part4 Seg16.relationLc958Part5 at r5398
  unfold Seg16.relationRow5399 Seg16.relationLc959 Seg16.relationLc959Part0 Seg16.relationLc959Part1 Seg16.relationLc959Part2 Seg16.relationLc959Part3 Seg16.relationLc959Part4 Seg16.relationLc959Part5 at r5399
  unfold Seg16.relationRow5400 at r5400
  unfold Seg16.relationRow5401 at r5401
  unfold Seg16.relationRow5402 at r5402
  unfold Seg16.relationRow5403 at r5403
  unfold Seg16.relationRow5404 at r5404
  have hrung184 (bit : Bool) (hbit : rho 15476 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX184 rho : Seg16.F), (seg16AccY184 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17961 : Seg16.F), (rho 17962 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX184 rho : Seg16.F), (seg16AccY184 rho : Seg16.F)⟩
        ⟨(rho 17961 : Seg16.F), (rho 17962 : Seg16.F)⟩
        ⟨(seg16AccX185 rho : Seg16.F), (seg16AccY185 rho : Seg16.F)⟩
        ⟨(rho 17975 : Seg16.F), (rho 17976 : Seg16.F)⟩ := by
    have hsum : seg16AccX184 rho + seg16AccY184 rho = rho 17963 := by
      rw [seg16LadderFlatX184_eq, seg16LadderFlatY184_eq]
      unfold seg16LadderFlatX184 seg16LadderFlatY184
      linear_combination r5391
    have ha0 : (rho 17961 + rho 17962) * (seg16AccX184 rho + seg16AccY184 rho) = rho 17964 := by
      rw [hsum]
      linear_combination r5392
    have ha1 : rho 17962 * seg16AccX184 rho = rho 17965 := by
      rw [seg16LadderFlatX184_eq]
      unfold seg16LadderFlatX184
      linear_combination r5393
    have ha2 : rho 17961 * seg16AccY184 rho = rho 17966 := by
      rw [seg16LadderFlatY184_eq]
      unfold seg16LadderFlatY184
      linear_combination r5394
    have ha3 : 3021 * rho 17965 * rho 17966 = rho 17967 := by
      linear_combination r5395
    have ha4 : rho 17968 * (1 + rho 17967) = rho 17965 + rho 17966 := by
      linear_combination r5396
    have ha5 : rho 17969 * (1 - rho 17967) = rho 17964 - rho 17965 - rho 17966 := by
      linear_combination r5397
    have haddx :
        rho 17968 * (1 + 3021 * (rho 17962 * seg16AccX184 rho) * (rho 17961 * seg16AccY184 rho)) =
          rho 17962 * seg16AccX184 rho + rho 17961 * seg16AccY184 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17969 * (1 - 3021 * (rho 17962 * seg16AccX184 rho) * (rho 17961 * seg16AccY184 rho)) =
          (-1) * (rho 17962 * seg16AccX184 rho) - rho 17961 * seg16AccY184 rho +
            (seg16AccY184 rho - seg16AccX184 rho * (-1)) * (rho 17961 + rho 17962) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17969 * (1 - rho 17967) = rho 17964 - rho 17965 - rho 17966 := ha5
        _ = (-1) * rho 17965 - rho 17966 + (seg16AccY184 rho - seg16AccX184 rho * (-1)) * (rho 17961 + rho 17962) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX185 rho = seg16AccX184 rho - Bool.toZMod bit * (seg16AccX184 rho - rho 17968) := by
      have hd : rho 17970 = Bool.toZMod bit * (rho 17968 - seg16AccX184 rho) := by
        rw [← hbit, seg16LadderFlatX184_eq]
        unfold seg16LadderFlatX184
        linear_combination -r5398
      unfold seg16AccX185
      linear_combination hd
    have hsely : seg16AccY185 rho = seg16AccY184 rho - Bool.toZMod bit * (seg16AccY184 rho - rho 17969) := by
      have hd : rho 17971 = Bool.toZMod bit * (rho 17969 - seg16AccY184 rho) := by
        rw [← hbit, seg16LadderFlatY184_eq]
        unfold seg16LadderFlatY184
        linear_combination -r5399
      unfold seg16AccY185
      linear_combination hd
    have hd0 : rho 17961 * rho 17962 = rho 17972 := by linear_combination r5400
    have hd1 : rho 17961 * rho 17961 = rho 17973 := by linear_combination r5401
    have hd2 : rho 17962 * rho 17962 = rho 17974 := by linear_combination r5402
    have hd3 : rho 17975 * (rho 17962 * rho 17962 + rho 17961 * rho 17961 * (-1)) = 2 * (rho 17961 * rho 17962) := by
      rw [hd0, hd1, hd2]
      linear_combination r5403
    have hd4 : rho 17976 * (2 - (rho 17962 * rho 17962 + rho 17961 * rho 17961 * (-1))) = rho 17962 * rho 17962 - rho 17961 * rho 17961 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5404
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX184 rho : Seg16.F), (seg16AccY184 rho : Seg16.F)⟩
      ⟨(rho 17961 : Seg16.F), (rho 17962 : Seg16.F)⟩
      ⟨(rho 17968 : Seg16.F), (rho 17969 : Seg16.F)⟩
      ⟨(seg16AccX185 rho : Seg16.F), (seg16AccY185 rho : Seg16.F)⟩
      ⟨(rho 17975 : Seg16.F), (rho 17976 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung184

theorem seg16_rung185 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15477 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX185 rho : Seg16.F), (seg16AccY185 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17975 : Seg16.F), (rho 17976 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX185 rho : Seg16.F), (seg16AccY185 rho : Seg16.F)⟩
        ⟨(rho 17975 : Seg16.F), (rho 17976 : Seg16.F)⟩
        ⟨(seg16AccX186 rho : Seg16.F), (seg16AccY186 rho : Seg16.F)⟩
        ⟨(rho 17989 : Seg16.F), (rho 17990 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p67, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart67 at p67
  rcases p67 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5405, r5406, r5407, r5408, r5409, r5410, r5411, r5412, r5413, r5414, r5415, r5416, r5417, r5418, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow5405 Seg16.relationLc960 Seg16.relationLc960Part0 Seg16.relationLc960Part1 Seg16.relationLc960Part2 Seg16.relationLc960Part3 Seg16.relationLc960Part4 Seg16.relationLc960Part5 Seg16.relationLc960Part6 Seg16.relationLc960Part7 Seg16.relationLc960Part8 Seg16.relationLc960Part9 Seg16.relationLc960Part10 Seg16.relationLc960Part11 at r5405
  unfold Seg16.relationRow5406 at r5406
  unfold Seg16.relationRow5407 Seg16.relationLc961 Seg16.relationLc961Part0 Seg16.relationLc961Part1 Seg16.relationLc961Part2 Seg16.relationLc961Part3 Seg16.relationLc961Part4 Seg16.relationLc961Part5 at r5407
  unfold Seg16.relationRow5408 Seg16.relationLc962 Seg16.relationLc962Part0 Seg16.relationLc962Part1 Seg16.relationLc962Part2 Seg16.relationLc962Part3 Seg16.relationLc962Part4 Seg16.relationLc962Part5 at r5408
  unfold Seg16.relationRow5409 at r5409
  unfold Seg16.relationRow5410 at r5410
  unfold Seg16.relationRow5411 at r5411
  unfold Seg16.relationRow5412 Seg16.relationLc963 Seg16.relationLc963Part0 Seg16.relationLc963Part1 Seg16.relationLc963Part2 Seg16.relationLc963Part3 Seg16.relationLc963Part4 Seg16.relationLc963Part5 at r5412
  unfold Seg16.relationRow5413 Seg16.relationLc964 Seg16.relationLc964Part0 Seg16.relationLc964Part1 Seg16.relationLc964Part2 Seg16.relationLc964Part3 Seg16.relationLc964Part4 Seg16.relationLc964Part5 at r5413
  unfold Seg16.relationRow5414 at r5414
  unfold Seg16.relationRow5415 at r5415
  unfold Seg16.relationRow5416 at r5416
  unfold Seg16.relationRow5417 at r5417
  unfold Seg16.relationRow5418 at r5418
  have hrung185 (bit : Bool) (hbit : rho 15477 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX185 rho : Seg16.F), (seg16AccY185 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17975 : Seg16.F), (rho 17976 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX185 rho : Seg16.F), (seg16AccY185 rho : Seg16.F)⟩
        ⟨(rho 17975 : Seg16.F), (rho 17976 : Seg16.F)⟩
        ⟨(seg16AccX186 rho : Seg16.F), (seg16AccY186 rho : Seg16.F)⟩
        ⟨(rho 17989 : Seg16.F), (rho 17990 : Seg16.F)⟩ := by
    have hsum : seg16AccX185 rho + seg16AccY185 rho = rho 17977 := by
      rw [seg16LadderFlatX185_eq, seg16LadderFlatY185_eq]
      unfold seg16LadderFlatX185 seg16LadderFlatY185
      linear_combination r5405
    have ha0 : (rho 17975 + rho 17976) * (seg16AccX185 rho + seg16AccY185 rho) = rho 17978 := by
      rw [hsum]
      linear_combination r5406
    have ha1 : rho 17976 * seg16AccX185 rho = rho 17979 := by
      rw [seg16LadderFlatX185_eq]
      unfold seg16LadderFlatX185
      linear_combination r5407
    have ha2 : rho 17975 * seg16AccY185 rho = rho 17980 := by
      rw [seg16LadderFlatY185_eq]
      unfold seg16LadderFlatY185
      linear_combination r5408
    have ha3 : 3021 * rho 17979 * rho 17980 = rho 17981 := by
      linear_combination r5409
    have ha4 : rho 17982 * (1 + rho 17981) = rho 17979 + rho 17980 := by
      linear_combination r5410
    have ha5 : rho 17983 * (1 - rho 17981) = rho 17978 - rho 17979 - rho 17980 := by
      linear_combination r5411
    have haddx :
        rho 17982 * (1 + 3021 * (rho 17976 * seg16AccX185 rho) * (rho 17975 * seg16AccY185 rho)) =
          rho 17976 * seg16AccX185 rho + rho 17975 * seg16AccY185 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17983 * (1 - 3021 * (rho 17976 * seg16AccX185 rho) * (rho 17975 * seg16AccY185 rho)) =
          (-1) * (rho 17976 * seg16AccX185 rho) - rho 17975 * seg16AccY185 rho +
            (seg16AccY185 rho - seg16AccX185 rho * (-1)) * (rho 17975 + rho 17976) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17983 * (1 - rho 17981) = rho 17978 - rho 17979 - rho 17980 := ha5
        _ = (-1) * rho 17979 - rho 17980 + (seg16AccY185 rho - seg16AccX185 rho * (-1)) * (rho 17975 + rho 17976) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX186 rho = seg16AccX185 rho - Bool.toZMod bit * (seg16AccX185 rho - rho 17982) := by
      have hd : rho 17984 = Bool.toZMod bit * (rho 17982 - seg16AccX185 rho) := by
        rw [← hbit, seg16LadderFlatX185_eq]
        unfold seg16LadderFlatX185
        linear_combination -r5412
      unfold seg16AccX186
      linear_combination hd
    have hsely : seg16AccY186 rho = seg16AccY185 rho - Bool.toZMod bit * (seg16AccY185 rho - rho 17983) := by
      have hd : rho 17985 = Bool.toZMod bit * (rho 17983 - seg16AccY185 rho) := by
        rw [← hbit, seg16LadderFlatY185_eq]
        unfold seg16LadderFlatY185
        linear_combination -r5413
      unfold seg16AccY186
      linear_combination hd
    have hd0 : rho 17975 * rho 17976 = rho 17986 := by linear_combination r5414
    have hd1 : rho 17975 * rho 17975 = rho 17987 := by linear_combination r5415
    have hd2 : rho 17976 * rho 17976 = rho 17988 := by linear_combination r5416
    have hd3 : rho 17989 * (rho 17976 * rho 17976 + rho 17975 * rho 17975 * (-1)) = 2 * (rho 17975 * rho 17976) := by
      rw [hd0, hd1, hd2]
      linear_combination r5417
    have hd4 : rho 17990 * (2 - (rho 17976 * rho 17976 + rho 17975 * rho 17975 * (-1))) = rho 17976 * rho 17976 - rho 17975 * rho 17975 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5418
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX185 rho : Seg16.F), (seg16AccY185 rho : Seg16.F)⟩
      ⟨(rho 17975 : Seg16.F), (rho 17976 : Seg16.F)⟩
      ⟨(rho 17982 : Seg16.F), (rho 17983 : Seg16.F)⟩
      ⟨(seg16AccX186 rho : Seg16.F), (seg16AccY186 rho : Seg16.F)⟩
      ⟨(rho 17989 : Seg16.F), (rho 17990 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung185

theorem seg16_rung186 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15478 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX186 rho : Seg16.F), (seg16AccY186 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17989 : Seg16.F), (rho 17990 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX186 rho : Seg16.F), (seg16AccY186 rho : Seg16.F)⟩
        ⟨(rho 17989 : Seg16.F), (rho 17990 : Seg16.F)⟩
        ⟨(seg16AccX187 rho : Seg16.F), (seg16AccY187 rho : Seg16.F)⟩
        ⟨(rho 18003 : Seg16.F), (rho 18004 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p67, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart67 at p67
  rcases p67 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5419, r5420, r5421, r5422, r5423, r5424, r5425, r5426, r5427, r5428, r5429, r5430, r5431, r5432, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow5419 Seg16.relationLc965 Seg16.relationLc965Part0 Seg16.relationLc965Part1 Seg16.relationLc965Part2 Seg16.relationLc965Part3 Seg16.relationLc965Part4 Seg16.relationLc965Part5 Seg16.relationLc965Part6 Seg16.relationLc965Part7 Seg16.relationLc965Part8 Seg16.relationLc965Part9 Seg16.relationLc965Part10 Seg16.relationLc965Part11 at r5419
  unfold Seg16.relationRow5420 at r5420
  unfold Seg16.relationRow5421 Seg16.relationLc966 Seg16.relationLc966Part0 Seg16.relationLc966Part1 Seg16.relationLc966Part2 Seg16.relationLc966Part3 Seg16.relationLc966Part4 Seg16.relationLc966Part5 at r5421
  unfold Seg16.relationRow5422 Seg16.relationLc967 Seg16.relationLc967Part0 Seg16.relationLc967Part1 Seg16.relationLc967Part2 Seg16.relationLc967Part3 Seg16.relationLc967Part4 Seg16.relationLc967Part5 at r5422
  unfold Seg16.relationRow5423 at r5423
  unfold Seg16.relationRow5424 at r5424
  unfold Seg16.relationRow5425 at r5425
  unfold Seg16.relationRow5426 Seg16.relationLc968 Seg16.relationLc968Part0 Seg16.relationLc968Part1 Seg16.relationLc968Part2 Seg16.relationLc968Part3 Seg16.relationLc968Part4 Seg16.relationLc968Part5 at r5426
  unfold Seg16.relationRow5427 Seg16.relationLc969 Seg16.relationLc969Part0 Seg16.relationLc969Part1 Seg16.relationLc969Part2 Seg16.relationLc969Part3 Seg16.relationLc969Part4 Seg16.relationLc969Part5 at r5427
  unfold Seg16.relationRow5428 at r5428
  unfold Seg16.relationRow5429 at r5429
  unfold Seg16.relationRow5430 at r5430
  unfold Seg16.relationRow5431 at r5431
  unfold Seg16.relationRow5432 at r5432
  have hrung186 (bit : Bool) (hbit : rho 15478 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX186 rho : Seg16.F), (seg16AccY186 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17989 : Seg16.F), (rho 17990 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX186 rho : Seg16.F), (seg16AccY186 rho : Seg16.F)⟩
        ⟨(rho 17989 : Seg16.F), (rho 17990 : Seg16.F)⟩
        ⟨(seg16AccX187 rho : Seg16.F), (seg16AccY187 rho : Seg16.F)⟩
        ⟨(rho 18003 : Seg16.F), (rho 18004 : Seg16.F)⟩ := by
    have hsum : seg16AccX186 rho + seg16AccY186 rho = rho 17991 := by
      rw [seg16LadderFlatX186_eq, seg16LadderFlatY186_eq]
      unfold seg16LadderFlatX186 seg16LadderFlatY186
      linear_combination r5419
    have ha0 : (rho 17989 + rho 17990) * (seg16AccX186 rho + seg16AccY186 rho) = rho 17992 := by
      rw [hsum]
      linear_combination r5420
    have ha1 : rho 17990 * seg16AccX186 rho = rho 17993 := by
      rw [seg16LadderFlatX186_eq]
      unfold seg16LadderFlatX186
      linear_combination r5421
    have ha2 : rho 17989 * seg16AccY186 rho = rho 17994 := by
      rw [seg16LadderFlatY186_eq]
      unfold seg16LadderFlatY186
      linear_combination r5422
    have ha3 : 3021 * rho 17993 * rho 17994 = rho 17995 := by
      linear_combination r5423
    have ha4 : rho 17996 * (1 + rho 17995) = rho 17993 + rho 17994 := by
      linear_combination r5424
    have ha5 : rho 17997 * (1 - rho 17995) = rho 17992 - rho 17993 - rho 17994 := by
      linear_combination r5425
    have haddx :
        rho 17996 * (1 + 3021 * (rho 17990 * seg16AccX186 rho) * (rho 17989 * seg16AccY186 rho)) =
          rho 17990 * seg16AccX186 rho + rho 17989 * seg16AccY186 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17997 * (1 - 3021 * (rho 17990 * seg16AccX186 rho) * (rho 17989 * seg16AccY186 rho)) =
          (-1) * (rho 17990 * seg16AccX186 rho) - rho 17989 * seg16AccY186 rho +
            (seg16AccY186 rho - seg16AccX186 rho * (-1)) * (rho 17989 + rho 17990) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17997 * (1 - rho 17995) = rho 17992 - rho 17993 - rho 17994 := ha5
        _ = (-1) * rho 17993 - rho 17994 + (seg16AccY186 rho - seg16AccX186 rho * (-1)) * (rho 17989 + rho 17990) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX187 rho = seg16AccX186 rho - Bool.toZMod bit * (seg16AccX186 rho - rho 17996) := by
      have hd : rho 17998 = Bool.toZMod bit * (rho 17996 - seg16AccX186 rho) := by
        rw [← hbit, seg16LadderFlatX186_eq]
        unfold seg16LadderFlatX186
        linear_combination -r5426
      unfold seg16AccX187
      linear_combination hd
    have hsely : seg16AccY187 rho = seg16AccY186 rho - Bool.toZMod bit * (seg16AccY186 rho - rho 17997) := by
      have hd : rho 17999 = Bool.toZMod bit * (rho 17997 - seg16AccY186 rho) := by
        rw [← hbit, seg16LadderFlatY186_eq]
        unfold seg16LadderFlatY186
        linear_combination -r5427
      unfold seg16AccY187
      linear_combination hd
    have hd0 : rho 17989 * rho 17990 = rho 18000 := by linear_combination r5428
    have hd1 : rho 17989 * rho 17989 = rho 18001 := by linear_combination r5429
    have hd2 : rho 17990 * rho 17990 = rho 18002 := by linear_combination r5430
    have hd3 : rho 18003 * (rho 17990 * rho 17990 + rho 17989 * rho 17989 * (-1)) = 2 * (rho 17989 * rho 17990) := by
      rw [hd0, hd1, hd2]
      linear_combination r5431
    have hd4 : rho 18004 * (2 - (rho 17990 * rho 17990 + rho 17989 * rho 17989 * (-1))) = rho 17990 * rho 17990 - rho 17989 * rho 17989 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5432
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX186 rho : Seg16.F), (seg16AccY186 rho : Seg16.F)⟩
      ⟨(rho 17989 : Seg16.F), (rho 17990 : Seg16.F)⟩
      ⟨(rho 17996 : Seg16.F), (rho 17997 : Seg16.F)⟩
      ⟨(seg16AccX187 rho : Seg16.F), (seg16AccY187 rho : Seg16.F)⟩
      ⟨(rho 18003 : Seg16.F), (rho 18004 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung186

theorem seg16_rung187 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15479 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX187 rho : Seg16.F), (seg16AccY187 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18003 : Seg16.F), (rho 18004 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX187 rho : Seg16.F), (seg16AccY187 rho : Seg16.F)⟩
        ⟨(rho 18003 : Seg16.F), (rho 18004 : Seg16.F)⟩
        ⟨(seg16AccX188 rho : Seg16.F), (seg16AccY188 rho : Seg16.F)⟩
        ⟨(rho 18017 : Seg16.F), (rho 18018 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p67, p68, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart67 at p67
  rcases p67 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5433, r5434, r5435, r5436, r5437, r5438, r5439⟩
  unfold Seg16.relationPart68 at p68
  rcases p68 with ⟨r5440, r5441, r5442, r5443, r5444, r5445, r5446, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow5433 Seg16.relationLc970 Seg16.relationLc970Part0 Seg16.relationLc970Part1 Seg16.relationLc970Part2 Seg16.relationLc970Part3 Seg16.relationLc970Part4 Seg16.relationLc970Part5 Seg16.relationLc970Part6 Seg16.relationLc970Part7 Seg16.relationLc970Part8 Seg16.relationLc970Part9 Seg16.relationLc970Part10 Seg16.relationLc970Part11 at r5433
  unfold Seg16.relationRow5434 at r5434
  unfold Seg16.relationRow5435 Seg16.relationLc971 Seg16.relationLc971Part0 Seg16.relationLc971Part1 Seg16.relationLc971Part2 Seg16.relationLc971Part3 Seg16.relationLc971Part4 Seg16.relationLc971Part5 at r5435
  unfold Seg16.relationRow5436 Seg16.relationLc972 Seg16.relationLc972Part0 Seg16.relationLc972Part1 Seg16.relationLc972Part2 Seg16.relationLc972Part3 Seg16.relationLc972Part4 Seg16.relationLc972Part5 at r5436
  unfold Seg16.relationRow5437 at r5437
  unfold Seg16.relationRow5438 at r5438
  unfold Seg16.relationRow5439 at r5439
  unfold Seg16.relationRow5440 Seg16.relationLc973 Seg16.relationLc973Part0 Seg16.relationLc973Part1 Seg16.relationLc973Part2 Seg16.relationLc973Part3 Seg16.relationLc973Part4 Seg16.relationLc973Part5 at r5440
  unfold Seg16.relationRow5441 Seg16.relationLc974 Seg16.relationLc974Part0 Seg16.relationLc974Part1 Seg16.relationLc974Part2 Seg16.relationLc974Part3 Seg16.relationLc974Part4 Seg16.relationLc974Part5 at r5441
  unfold Seg16.relationRow5442 at r5442
  unfold Seg16.relationRow5443 at r5443
  unfold Seg16.relationRow5444 at r5444
  unfold Seg16.relationRow5445 at r5445
  unfold Seg16.relationRow5446 at r5446
  have hrung187 (bit : Bool) (hbit : rho 15479 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX187 rho : Seg16.F), (seg16AccY187 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18003 : Seg16.F), (rho 18004 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX187 rho : Seg16.F), (seg16AccY187 rho : Seg16.F)⟩
        ⟨(rho 18003 : Seg16.F), (rho 18004 : Seg16.F)⟩
        ⟨(seg16AccX188 rho : Seg16.F), (seg16AccY188 rho : Seg16.F)⟩
        ⟨(rho 18017 : Seg16.F), (rho 18018 : Seg16.F)⟩ := by
    have hsum : seg16AccX187 rho + seg16AccY187 rho = rho 18005 := by
      rw [seg16LadderFlatX187_eq, seg16LadderFlatY187_eq]
      unfold seg16LadderFlatX187 seg16LadderFlatY187
      linear_combination r5433
    have ha0 : (rho 18003 + rho 18004) * (seg16AccX187 rho + seg16AccY187 rho) = rho 18006 := by
      rw [hsum]
      linear_combination r5434
    have ha1 : rho 18004 * seg16AccX187 rho = rho 18007 := by
      rw [seg16LadderFlatX187_eq]
      unfold seg16LadderFlatX187
      linear_combination r5435
    have ha2 : rho 18003 * seg16AccY187 rho = rho 18008 := by
      rw [seg16LadderFlatY187_eq]
      unfold seg16LadderFlatY187
      linear_combination r5436
    have ha3 : 3021 * rho 18007 * rho 18008 = rho 18009 := by
      linear_combination r5437
    have ha4 : rho 18010 * (1 + rho 18009) = rho 18007 + rho 18008 := by
      linear_combination r5438
    have ha5 : rho 18011 * (1 - rho 18009) = rho 18006 - rho 18007 - rho 18008 := by
      linear_combination r5439
    have haddx :
        rho 18010 * (1 + 3021 * (rho 18004 * seg16AccX187 rho) * (rho 18003 * seg16AccY187 rho)) =
          rho 18004 * seg16AccX187 rho + rho 18003 * seg16AccY187 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18011 * (1 - 3021 * (rho 18004 * seg16AccX187 rho) * (rho 18003 * seg16AccY187 rho)) =
          (-1) * (rho 18004 * seg16AccX187 rho) - rho 18003 * seg16AccY187 rho +
            (seg16AccY187 rho - seg16AccX187 rho * (-1)) * (rho 18003 + rho 18004) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18011 * (1 - rho 18009) = rho 18006 - rho 18007 - rho 18008 := ha5
        _ = (-1) * rho 18007 - rho 18008 + (seg16AccY187 rho - seg16AccX187 rho * (-1)) * (rho 18003 + rho 18004) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX188 rho = seg16AccX187 rho - Bool.toZMod bit * (seg16AccX187 rho - rho 18010) := by
      have hd : rho 18012 = Bool.toZMod bit * (rho 18010 - seg16AccX187 rho) := by
        rw [← hbit, seg16LadderFlatX187_eq]
        unfold seg16LadderFlatX187
        linear_combination -r5440
      unfold seg16AccX188
      linear_combination hd
    have hsely : seg16AccY188 rho = seg16AccY187 rho - Bool.toZMod bit * (seg16AccY187 rho - rho 18011) := by
      have hd : rho 18013 = Bool.toZMod bit * (rho 18011 - seg16AccY187 rho) := by
        rw [← hbit, seg16LadderFlatY187_eq]
        unfold seg16LadderFlatY187
        linear_combination -r5441
      unfold seg16AccY188
      linear_combination hd
    have hd0 : rho 18003 * rho 18004 = rho 18014 := by linear_combination r5442
    have hd1 : rho 18003 * rho 18003 = rho 18015 := by linear_combination r5443
    have hd2 : rho 18004 * rho 18004 = rho 18016 := by linear_combination r5444
    have hd3 : rho 18017 * (rho 18004 * rho 18004 + rho 18003 * rho 18003 * (-1)) = 2 * (rho 18003 * rho 18004) := by
      rw [hd0, hd1, hd2]
      linear_combination r5445
    have hd4 : rho 18018 * (2 - (rho 18004 * rho 18004 + rho 18003 * rho 18003 * (-1))) = rho 18004 * rho 18004 - rho 18003 * rho 18003 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5446
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX187 rho : Seg16.F), (seg16AccY187 rho : Seg16.F)⟩
      ⟨(rho 18003 : Seg16.F), (rho 18004 : Seg16.F)⟩
      ⟨(rho 18010 : Seg16.F), (rho 18011 : Seg16.F)⟩
      ⟨(seg16AccX188 rho : Seg16.F), (seg16AccY188 rho : Seg16.F)⟩
      ⟨(rho 18017 : Seg16.F), (rho 18018 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung187

theorem seg16_rung188 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15480 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX188 rho : Seg16.F), (seg16AccY188 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18017 : Seg16.F), (rho 18018 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX188 rho : Seg16.F), (seg16AccY188 rho : Seg16.F)⟩
        ⟨(rho 18017 : Seg16.F), (rho 18018 : Seg16.F)⟩
        ⟨(seg16AccX189 rho : Seg16.F), (seg16AccY189 rho : Seg16.F)⟩
        ⟨(rho 18031 : Seg16.F), (rho 18032 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p68, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart68 at p68
  rcases p68 with ⟨_, _, _, _, _, _, _, r5447, r5448, r5449, r5450, r5451, r5452, r5453, r5454, r5455, r5456, r5457, r5458, r5459, r5460, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow5447 Seg16.relationLc975 Seg16.relationLc975Part0 Seg16.relationLc975Part1 Seg16.relationLc975Part2 Seg16.relationLc975Part3 Seg16.relationLc975Part4 Seg16.relationLc975Part5 Seg16.relationLc975Part6 Seg16.relationLc975Part7 Seg16.relationLc975Part8 Seg16.relationLc975Part9 Seg16.relationLc975Part10 Seg16.relationLc975Part11 at r5447
  unfold Seg16.relationRow5448 at r5448
  unfold Seg16.relationRow5449 Seg16.relationLc976 Seg16.relationLc976Part0 Seg16.relationLc976Part1 Seg16.relationLc976Part2 Seg16.relationLc976Part3 Seg16.relationLc976Part4 Seg16.relationLc976Part5 at r5449
  unfold Seg16.relationRow5450 Seg16.relationLc977 Seg16.relationLc977Part0 Seg16.relationLc977Part1 Seg16.relationLc977Part2 Seg16.relationLc977Part3 Seg16.relationLc977Part4 Seg16.relationLc977Part5 at r5450
  unfold Seg16.relationRow5451 at r5451
  unfold Seg16.relationRow5452 at r5452
  unfold Seg16.relationRow5453 at r5453
  unfold Seg16.relationRow5454 Seg16.relationLc978 Seg16.relationLc978Part0 Seg16.relationLc978Part1 Seg16.relationLc978Part2 Seg16.relationLc978Part3 Seg16.relationLc978Part4 Seg16.relationLc978Part5 at r5454
  unfold Seg16.relationRow5455 Seg16.relationLc979 Seg16.relationLc979Part0 Seg16.relationLc979Part1 Seg16.relationLc979Part2 Seg16.relationLc979Part3 Seg16.relationLc979Part4 Seg16.relationLc979Part5 at r5455
  unfold Seg16.relationRow5456 at r5456
  unfold Seg16.relationRow5457 at r5457
  unfold Seg16.relationRow5458 at r5458
  unfold Seg16.relationRow5459 at r5459
  unfold Seg16.relationRow5460 at r5460
  have hrung188 (bit : Bool) (hbit : rho 15480 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX188 rho : Seg16.F), (seg16AccY188 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18017 : Seg16.F), (rho 18018 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX188 rho : Seg16.F), (seg16AccY188 rho : Seg16.F)⟩
        ⟨(rho 18017 : Seg16.F), (rho 18018 : Seg16.F)⟩
        ⟨(seg16AccX189 rho : Seg16.F), (seg16AccY189 rho : Seg16.F)⟩
        ⟨(rho 18031 : Seg16.F), (rho 18032 : Seg16.F)⟩ := by
    have hsum : seg16AccX188 rho + seg16AccY188 rho = rho 18019 := by
      rw [seg16LadderFlatX188_eq, seg16LadderFlatY188_eq]
      unfold seg16LadderFlatX188 seg16LadderFlatY188
      linear_combination r5447
    have ha0 : (rho 18017 + rho 18018) * (seg16AccX188 rho + seg16AccY188 rho) = rho 18020 := by
      rw [hsum]
      linear_combination r5448
    have ha1 : rho 18018 * seg16AccX188 rho = rho 18021 := by
      rw [seg16LadderFlatX188_eq]
      unfold seg16LadderFlatX188
      linear_combination r5449
    have ha2 : rho 18017 * seg16AccY188 rho = rho 18022 := by
      rw [seg16LadderFlatY188_eq]
      unfold seg16LadderFlatY188
      linear_combination r5450
    have ha3 : 3021 * rho 18021 * rho 18022 = rho 18023 := by
      linear_combination r5451
    have ha4 : rho 18024 * (1 + rho 18023) = rho 18021 + rho 18022 := by
      linear_combination r5452
    have ha5 : rho 18025 * (1 - rho 18023) = rho 18020 - rho 18021 - rho 18022 := by
      linear_combination r5453
    have haddx :
        rho 18024 * (1 + 3021 * (rho 18018 * seg16AccX188 rho) * (rho 18017 * seg16AccY188 rho)) =
          rho 18018 * seg16AccX188 rho + rho 18017 * seg16AccY188 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18025 * (1 - 3021 * (rho 18018 * seg16AccX188 rho) * (rho 18017 * seg16AccY188 rho)) =
          (-1) * (rho 18018 * seg16AccX188 rho) - rho 18017 * seg16AccY188 rho +
            (seg16AccY188 rho - seg16AccX188 rho * (-1)) * (rho 18017 + rho 18018) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18025 * (1 - rho 18023) = rho 18020 - rho 18021 - rho 18022 := ha5
        _ = (-1) * rho 18021 - rho 18022 + (seg16AccY188 rho - seg16AccX188 rho * (-1)) * (rho 18017 + rho 18018) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX189 rho = seg16AccX188 rho - Bool.toZMod bit * (seg16AccX188 rho - rho 18024) := by
      have hd : rho 18026 = Bool.toZMod bit * (rho 18024 - seg16AccX188 rho) := by
        rw [← hbit, seg16LadderFlatX188_eq]
        unfold seg16LadderFlatX188
        linear_combination -r5454
      unfold seg16AccX189
      linear_combination hd
    have hsely : seg16AccY189 rho = seg16AccY188 rho - Bool.toZMod bit * (seg16AccY188 rho - rho 18025) := by
      have hd : rho 18027 = Bool.toZMod bit * (rho 18025 - seg16AccY188 rho) := by
        rw [← hbit, seg16LadderFlatY188_eq]
        unfold seg16LadderFlatY188
        linear_combination -r5455
      unfold seg16AccY189
      linear_combination hd
    have hd0 : rho 18017 * rho 18018 = rho 18028 := by linear_combination r5456
    have hd1 : rho 18017 * rho 18017 = rho 18029 := by linear_combination r5457
    have hd2 : rho 18018 * rho 18018 = rho 18030 := by linear_combination r5458
    have hd3 : rho 18031 * (rho 18018 * rho 18018 + rho 18017 * rho 18017 * (-1)) = 2 * (rho 18017 * rho 18018) := by
      rw [hd0, hd1, hd2]
      linear_combination r5459
    have hd4 : rho 18032 * (2 - (rho 18018 * rho 18018 + rho 18017 * rho 18017 * (-1))) = rho 18018 * rho 18018 - rho 18017 * rho 18017 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5460
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX188 rho : Seg16.F), (seg16AccY188 rho : Seg16.F)⟩
      ⟨(rho 18017 : Seg16.F), (rho 18018 : Seg16.F)⟩
      ⟨(rho 18024 : Seg16.F), (rho 18025 : Seg16.F)⟩
      ⟨(seg16AccX189 rho : Seg16.F), (seg16AccY189 rho : Seg16.F)⟩
      ⟨(rho 18031 : Seg16.F), (rho 18032 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung188

theorem seg16_rung189 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15481 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX189 rho : Seg16.F), (seg16AccY189 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18031 : Seg16.F), (rho 18032 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX189 rho : Seg16.F), (seg16AccY189 rho : Seg16.F)⟩
        ⟨(rho 18031 : Seg16.F), (rho 18032 : Seg16.F)⟩
        ⟨(seg16AccX190 rho : Seg16.F), (seg16AccY190 rho : Seg16.F)⟩
        ⟨(rho 18045 : Seg16.F), (rho 18046 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p68, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart68 at p68
  rcases p68 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5461, r5462, r5463, r5464, r5465, r5466, r5467, r5468, r5469, r5470, r5471, r5472, r5473, r5474, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow5461 Seg16.relationLc980 Seg16.relationLc980Part0 Seg16.relationLc980Part1 Seg16.relationLc980Part2 Seg16.relationLc980Part3 Seg16.relationLc980Part4 Seg16.relationLc980Part5 Seg16.relationLc980Part6 Seg16.relationLc980Part7 Seg16.relationLc980Part8 Seg16.relationLc980Part9 Seg16.relationLc980Part10 Seg16.relationLc980Part11 at r5461
  unfold Seg16.relationRow5462 at r5462
  unfold Seg16.relationRow5463 Seg16.relationLc981 Seg16.relationLc981Part0 Seg16.relationLc981Part1 Seg16.relationLc981Part2 Seg16.relationLc981Part3 Seg16.relationLc981Part4 Seg16.relationLc981Part5 at r5463
  unfold Seg16.relationRow5464 Seg16.relationLc982 Seg16.relationLc982Part0 Seg16.relationLc982Part1 Seg16.relationLc982Part2 Seg16.relationLc982Part3 Seg16.relationLc982Part4 Seg16.relationLc982Part5 at r5464
  unfold Seg16.relationRow5465 at r5465
  unfold Seg16.relationRow5466 at r5466
  unfold Seg16.relationRow5467 at r5467
  unfold Seg16.relationRow5468 Seg16.relationLc983 Seg16.relationLc983Part0 Seg16.relationLc983Part1 Seg16.relationLc983Part2 Seg16.relationLc983Part3 Seg16.relationLc983Part4 Seg16.relationLc983Part5 at r5468
  unfold Seg16.relationRow5469 Seg16.relationLc984 Seg16.relationLc984Part0 Seg16.relationLc984Part1 Seg16.relationLc984Part2 Seg16.relationLc984Part3 Seg16.relationLc984Part4 Seg16.relationLc984Part5 at r5469
  unfold Seg16.relationRow5470 at r5470
  unfold Seg16.relationRow5471 at r5471
  unfold Seg16.relationRow5472 at r5472
  unfold Seg16.relationRow5473 at r5473
  unfold Seg16.relationRow5474 at r5474
  have hrung189 (bit : Bool) (hbit : rho 15481 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX189 rho : Seg16.F), (seg16AccY189 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18031 : Seg16.F), (rho 18032 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX189 rho : Seg16.F), (seg16AccY189 rho : Seg16.F)⟩
        ⟨(rho 18031 : Seg16.F), (rho 18032 : Seg16.F)⟩
        ⟨(seg16AccX190 rho : Seg16.F), (seg16AccY190 rho : Seg16.F)⟩
        ⟨(rho 18045 : Seg16.F), (rho 18046 : Seg16.F)⟩ := by
    have hsum : seg16AccX189 rho + seg16AccY189 rho = rho 18033 := by
      rw [seg16LadderFlatX189_eq, seg16LadderFlatY189_eq]
      unfold seg16LadderFlatX189 seg16LadderFlatY189
      linear_combination r5461
    have ha0 : (rho 18031 + rho 18032) * (seg16AccX189 rho + seg16AccY189 rho) = rho 18034 := by
      rw [hsum]
      linear_combination r5462
    have ha1 : rho 18032 * seg16AccX189 rho = rho 18035 := by
      rw [seg16LadderFlatX189_eq]
      unfold seg16LadderFlatX189
      linear_combination r5463
    have ha2 : rho 18031 * seg16AccY189 rho = rho 18036 := by
      rw [seg16LadderFlatY189_eq]
      unfold seg16LadderFlatY189
      linear_combination r5464
    have ha3 : 3021 * rho 18035 * rho 18036 = rho 18037 := by
      linear_combination r5465
    have ha4 : rho 18038 * (1 + rho 18037) = rho 18035 + rho 18036 := by
      linear_combination r5466
    have ha5 : rho 18039 * (1 - rho 18037) = rho 18034 - rho 18035 - rho 18036 := by
      linear_combination r5467
    have haddx :
        rho 18038 * (1 + 3021 * (rho 18032 * seg16AccX189 rho) * (rho 18031 * seg16AccY189 rho)) =
          rho 18032 * seg16AccX189 rho + rho 18031 * seg16AccY189 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18039 * (1 - 3021 * (rho 18032 * seg16AccX189 rho) * (rho 18031 * seg16AccY189 rho)) =
          (-1) * (rho 18032 * seg16AccX189 rho) - rho 18031 * seg16AccY189 rho +
            (seg16AccY189 rho - seg16AccX189 rho * (-1)) * (rho 18031 + rho 18032) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18039 * (1 - rho 18037) = rho 18034 - rho 18035 - rho 18036 := ha5
        _ = (-1) * rho 18035 - rho 18036 + (seg16AccY189 rho - seg16AccX189 rho * (-1)) * (rho 18031 + rho 18032) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX190 rho = seg16AccX189 rho - Bool.toZMod bit * (seg16AccX189 rho - rho 18038) := by
      have hd : rho 18040 = Bool.toZMod bit * (rho 18038 - seg16AccX189 rho) := by
        rw [← hbit, seg16LadderFlatX189_eq]
        unfold seg16LadderFlatX189
        linear_combination -r5468
      unfold seg16AccX190
      linear_combination hd
    have hsely : seg16AccY190 rho = seg16AccY189 rho - Bool.toZMod bit * (seg16AccY189 rho - rho 18039) := by
      have hd : rho 18041 = Bool.toZMod bit * (rho 18039 - seg16AccY189 rho) := by
        rw [← hbit, seg16LadderFlatY189_eq]
        unfold seg16LadderFlatY189
        linear_combination -r5469
      unfold seg16AccY190
      linear_combination hd
    have hd0 : rho 18031 * rho 18032 = rho 18042 := by linear_combination r5470
    have hd1 : rho 18031 * rho 18031 = rho 18043 := by linear_combination r5471
    have hd2 : rho 18032 * rho 18032 = rho 18044 := by linear_combination r5472
    have hd3 : rho 18045 * (rho 18032 * rho 18032 + rho 18031 * rho 18031 * (-1)) = 2 * (rho 18031 * rho 18032) := by
      rw [hd0, hd1, hd2]
      linear_combination r5473
    have hd4 : rho 18046 * (2 - (rho 18032 * rho 18032 + rho 18031 * rho 18031 * (-1))) = rho 18032 * rho 18032 - rho 18031 * rho 18031 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5474
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX189 rho : Seg16.F), (seg16AccY189 rho : Seg16.F)⟩
      ⟨(rho 18031 : Seg16.F), (rho 18032 : Seg16.F)⟩
      ⟨(rho 18038 : Seg16.F), (rho 18039 : Seg16.F)⟩
      ⟨(seg16AccX190 rho : Seg16.F), (seg16AccY190 rho : Seg16.F)⟩
      ⟨(rho 18045 : Seg16.F), (rho 18046 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung189

theorem seg16_rung190 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15482 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX190 rho : Seg16.F), (seg16AccY190 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18045 : Seg16.F), (rho 18046 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX190 rho : Seg16.F), (seg16AccY190 rho : Seg16.F)⟩
        ⟨(rho 18045 : Seg16.F), (rho 18046 : Seg16.F)⟩
        ⟨(seg16AccX191 rho : Seg16.F), (seg16AccY191 rho : Seg16.F)⟩
        ⟨(rho 18059 : Seg16.F), (rho 18060 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p68, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart68 at p68
  rcases p68 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5475, r5476, r5477, r5478, r5479, r5480, r5481, r5482, r5483, r5484, r5485, r5486, r5487, r5488, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow5475 Seg16.relationLc985 Seg16.relationLc985Part0 Seg16.relationLc985Part1 Seg16.relationLc985Part2 Seg16.relationLc985Part3 Seg16.relationLc985Part4 Seg16.relationLc985Part5 Seg16.relationLc985Part6 Seg16.relationLc985Part7 Seg16.relationLc985Part8 Seg16.relationLc985Part9 Seg16.relationLc985Part10 Seg16.relationLc985Part11 at r5475
  unfold Seg16.relationRow5476 at r5476
  unfold Seg16.relationRow5477 Seg16.relationLc986 Seg16.relationLc986Part0 Seg16.relationLc986Part1 Seg16.relationLc986Part2 Seg16.relationLc986Part3 Seg16.relationLc986Part4 Seg16.relationLc986Part5 at r5477
  unfold Seg16.relationRow5478 Seg16.relationLc987 Seg16.relationLc987Part0 Seg16.relationLc987Part1 Seg16.relationLc987Part2 Seg16.relationLc987Part3 Seg16.relationLc987Part4 Seg16.relationLc987Part5 at r5478
  unfold Seg16.relationRow5479 at r5479
  unfold Seg16.relationRow5480 at r5480
  unfold Seg16.relationRow5481 at r5481
  unfold Seg16.relationRow5482 Seg16.relationLc988 Seg16.relationLc988Part0 Seg16.relationLc988Part1 Seg16.relationLc988Part2 Seg16.relationLc988Part3 Seg16.relationLc988Part4 Seg16.relationLc988Part5 at r5482
  unfold Seg16.relationRow5483 Seg16.relationLc989 Seg16.relationLc989Part0 Seg16.relationLc989Part1 Seg16.relationLc989Part2 Seg16.relationLc989Part3 Seg16.relationLc989Part4 Seg16.relationLc989Part5 at r5483
  unfold Seg16.relationRow5484 at r5484
  unfold Seg16.relationRow5485 at r5485
  unfold Seg16.relationRow5486 at r5486
  unfold Seg16.relationRow5487 at r5487
  unfold Seg16.relationRow5488 at r5488
  have hrung190 (bit : Bool) (hbit : rho 15482 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX190 rho : Seg16.F), (seg16AccY190 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18045 : Seg16.F), (rho 18046 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX190 rho : Seg16.F), (seg16AccY190 rho : Seg16.F)⟩
        ⟨(rho 18045 : Seg16.F), (rho 18046 : Seg16.F)⟩
        ⟨(seg16AccX191 rho : Seg16.F), (seg16AccY191 rho : Seg16.F)⟩
        ⟨(rho 18059 : Seg16.F), (rho 18060 : Seg16.F)⟩ := by
    have hsum : seg16AccX190 rho + seg16AccY190 rho = rho 18047 := by
      rw [seg16LadderFlatX190_eq, seg16LadderFlatY190_eq]
      unfold seg16LadderFlatX190 seg16LadderFlatY190
      linear_combination r5475
    have ha0 : (rho 18045 + rho 18046) * (seg16AccX190 rho + seg16AccY190 rho) = rho 18048 := by
      rw [hsum]
      linear_combination r5476
    have ha1 : rho 18046 * seg16AccX190 rho = rho 18049 := by
      rw [seg16LadderFlatX190_eq]
      unfold seg16LadderFlatX190
      linear_combination r5477
    have ha2 : rho 18045 * seg16AccY190 rho = rho 18050 := by
      rw [seg16LadderFlatY190_eq]
      unfold seg16LadderFlatY190
      linear_combination r5478
    have ha3 : 3021 * rho 18049 * rho 18050 = rho 18051 := by
      linear_combination r5479
    have ha4 : rho 18052 * (1 + rho 18051) = rho 18049 + rho 18050 := by
      linear_combination r5480
    have ha5 : rho 18053 * (1 - rho 18051) = rho 18048 - rho 18049 - rho 18050 := by
      linear_combination r5481
    have haddx :
        rho 18052 * (1 + 3021 * (rho 18046 * seg16AccX190 rho) * (rho 18045 * seg16AccY190 rho)) =
          rho 18046 * seg16AccX190 rho + rho 18045 * seg16AccY190 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18053 * (1 - 3021 * (rho 18046 * seg16AccX190 rho) * (rho 18045 * seg16AccY190 rho)) =
          (-1) * (rho 18046 * seg16AccX190 rho) - rho 18045 * seg16AccY190 rho +
            (seg16AccY190 rho - seg16AccX190 rho * (-1)) * (rho 18045 + rho 18046) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18053 * (1 - rho 18051) = rho 18048 - rho 18049 - rho 18050 := ha5
        _ = (-1) * rho 18049 - rho 18050 + (seg16AccY190 rho - seg16AccX190 rho * (-1)) * (rho 18045 + rho 18046) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX191 rho = seg16AccX190 rho - Bool.toZMod bit * (seg16AccX190 rho - rho 18052) := by
      have hd : rho 18054 = Bool.toZMod bit * (rho 18052 - seg16AccX190 rho) := by
        rw [← hbit, seg16LadderFlatX190_eq]
        unfold seg16LadderFlatX190
        linear_combination -r5482
      unfold seg16AccX191
      linear_combination hd
    have hsely : seg16AccY191 rho = seg16AccY190 rho - Bool.toZMod bit * (seg16AccY190 rho - rho 18053) := by
      have hd : rho 18055 = Bool.toZMod bit * (rho 18053 - seg16AccY190 rho) := by
        rw [← hbit, seg16LadderFlatY190_eq]
        unfold seg16LadderFlatY190
        linear_combination -r5483
      unfold seg16AccY191
      linear_combination hd
    have hd0 : rho 18045 * rho 18046 = rho 18056 := by linear_combination r5484
    have hd1 : rho 18045 * rho 18045 = rho 18057 := by linear_combination r5485
    have hd2 : rho 18046 * rho 18046 = rho 18058 := by linear_combination r5486
    have hd3 : rho 18059 * (rho 18046 * rho 18046 + rho 18045 * rho 18045 * (-1)) = 2 * (rho 18045 * rho 18046) := by
      rw [hd0, hd1, hd2]
      linear_combination r5487
    have hd4 : rho 18060 * (2 - (rho 18046 * rho 18046 + rho 18045 * rho 18045 * (-1))) = rho 18046 * rho 18046 - rho 18045 * rho 18045 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5488
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX190 rho : Seg16.F), (seg16AccY190 rho : Seg16.F)⟩
      ⟨(rho 18045 : Seg16.F), (rho 18046 : Seg16.F)⟩
      ⟨(rho 18052 : Seg16.F), (rho 18053 : Seg16.F)⟩
      ⟨(seg16AccX191 rho : Seg16.F), (seg16AccY191 rho : Seg16.F)⟩
      ⟨(rho 18059 : Seg16.F), (rho 18060 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung190

theorem seg16_rung191 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15483 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX191 rho : Seg16.F), (seg16AccY191 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18059 : Seg16.F), (rho 18060 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX191 rho : Seg16.F), (seg16AccY191 rho : Seg16.F)⟩
        ⟨(rho 18059 : Seg16.F), (rho 18060 : Seg16.F)⟩
        ⟨(seg16AccX192 rho : Seg16.F), (seg16AccY192 rho : Seg16.F)⟩
        ⟨(rho 18073 : Seg16.F), (rho 18074 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p68, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart68 at p68
  rcases p68 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5489, r5490, r5491, r5492, r5493, r5494, r5495, r5496, r5497, r5498, r5499, r5500, r5501, r5502, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow5489 Seg16.relationLc990 Seg16.relationLc990Part0 Seg16.relationLc990Part1 Seg16.relationLc990Part2 Seg16.relationLc990Part3 Seg16.relationLc990Part4 Seg16.relationLc990Part5 Seg16.relationLc990Part6 Seg16.relationLc990Part7 Seg16.relationLc990Part8 Seg16.relationLc990Part9 Seg16.relationLc990Part10 Seg16.relationLc990Part11 at r5489
  unfold Seg16.relationRow5490 at r5490
  unfold Seg16.relationRow5491 Seg16.relationLc991 Seg16.relationLc991Part0 Seg16.relationLc991Part1 Seg16.relationLc991Part2 Seg16.relationLc991Part3 Seg16.relationLc991Part4 Seg16.relationLc991Part5 at r5491
  unfold Seg16.relationRow5492 Seg16.relationLc992 Seg16.relationLc992Part0 Seg16.relationLc992Part1 Seg16.relationLc992Part2 Seg16.relationLc992Part3 Seg16.relationLc992Part4 Seg16.relationLc992Part5 at r5492
  unfold Seg16.relationRow5493 at r5493
  unfold Seg16.relationRow5494 at r5494
  unfold Seg16.relationRow5495 at r5495
  unfold Seg16.relationRow5496 Seg16.relationLc993 Seg16.relationLc993Part0 Seg16.relationLc993Part1 Seg16.relationLc993Part2 Seg16.relationLc993Part3 Seg16.relationLc993Part4 Seg16.relationLc993Part5 at r5496
  unfold Seg16.relationRow5497 Seg16.relationLc994 Seg16.relationLc994Part0 Seg16.relationLc994Part1 Seg16.relationLc994Part2 Seg16.relationLc994Part3 Seg16.relationLc994Part4 Seg16.relationLc994Part5 Seg16.relationLc994Part6 at r5497
  unfold Seg16.relationRow5498 at r5498
  unfold Seg16.relationRow5499 at r5499
  unfold Seg16.relationRow5500 at r5500
  unfold Seg16.relationRow5501 at r5501
  unfold Seg16.relationRow5502 at r5502
  have hrung191 (bit : Bool) (hbit : rho 15483 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX191 rho : Seg16.F), (seg16AccY191 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18059 : Seg16.F), (rho 18060 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX191 rho : Seg16.F), (seg16AccY191 rho : Seg16.F)⟩
        ⟨(rho 18059 : Seg16.F), (rho 18060 : Seg16.F)⟩
        ⟨(seg16AccX192 rho : Seg16.F), (seg16AccY192 rho : Seg16.F)⟩
        ⟨(rho 18073 : Seg16.F), (rho 18074 : Seg16.F)⟩ := by
    have hsum : seg16AccX191 rho + seg16AccY191 rho = rho 18061 := by
      rw [seg16LadderFlatX191_eq, seg16LadderFlatY191_eq]
      unfold seg16LadderFlatX191 seg16LadderFlatY191
      linear_combination r5489
    have ha0 : (rho 18059 + rho 18060) * (seg16AccX191 rho + seg16AccY191 rho) = rho 18062 := by
      rw [hsum]
      linear_combination r5490
    have ha1 : rho 18060 * seg16AccX191 rho = rho 18063 := by
      rw [seg16LadderFlatX191_eq]
      unfold seg16LadderFlatX191
      linear_combination r5491
    have ha2 : rho 18059 * seg16AccY191 rho = rho 18064 := by
      rw [seg16LadderFlatY191_eq]
      unfold seg16LadderFlatY191
      linear_combination r5492
    have ha3 : 3021 * rho 18063 * rho 18064 = rho 18065 := by
      linear_combination r5493
    have ha4 : rho 18066 * (1 + rho 18065) = rho 18063 + rho 18064 := by
      linear_combination r5494
    have ha5 : rho 18067 * (1 - rho 18065) = rho 18062 - rho 18063 - rho 18064 := by
      linear_combination r5495
    have haddx :
        rho 18066 * (1 + 3021 * (rho 18060 * seg16AccX191 rho) * (rho 18059 * seg16AccY191 rho)) =
          rho 18060 * seg16AccX191 rho + rho 18059 * seg16AccY191 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18067 * (1 - 3021 * (rho 18060 * seg16AccX191 rho) * (rho 18059 * seg16AccY191 rho)) =
          (-1) * (rho 18060 * seg16AccX191 rho) - rho 18059 * seg16AccY191 rho +
            (seg16AccY191 rho - seg16AccX191 rho * (-1)) * (rho 18059 + rho 18060) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18067 * (1 - rho 18065) = rho 18062 - rho 18063 - rho 18064 := ha5
        _ = (-1) * rho 18063 - rho 18064 + (seg16AccY191 rho - seg16AccX191 rho * (-1)) * (rho 18059 + rho 18060) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX192 rho = seg16AccX191 rho - Bool.toZMod bit * (seg16AccX191 rho - rho 18066) := by
      have hd : rho 18068 = Bool.toZMod bit * (rho 18066 - seg16AccX191 rho) := by
        rw [← hbit, seg16LadderFlatX191_eq]
        unfold seg16LadderFlatX191
        linear_combination -r5496
      unfold seg16AccX192
      linear_combination hd
    have hsely : seg16AccY192 rho = seg16AccY191 rho - Bool.toZMod bit * (seg16AccY191 rho - rho 18067) := by
      have hd : rho 18069 = Bool.toZMod bit * (rho 18067 - seg16AccY191 rho) := by
        rw [← hbit, seg16LadderFlatY191_eq]
        unfold seg16LadderFlatY191
        linear_combination -r5497
      unfold seg16AccY192
      linear_combination hd
    have hd0 : rho 18059 * rho 18060 = rho 18070 := by linear_combination r5498
    have hd1 : rho 18059 * rho 18059 = rho 18071 := by linear_combination r5499
    have hd2 : rho 18060 * rho 18060 = rho 18072 := by linear_combination r5500
    have hd3 : rho 18073 * (rho 18060 * rho 18060 + rho 18059 * rho 18059 * (-1)) = 2 * (rho 18059 * rho 18060) := by
      rw [hd0, hd1, hd2]
      linear_combination r5501
    have hd4 : rho 18074 * (2 - (rho 18060 * rho 18060 + rho 18059 * rho 18059 * (-1))) = rho 18060 * rho 18060 - rho 18059 * rho 18059 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5502
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX191 rho : Seg16.F), (seg16AccY191 rho : Seg16.F)⟩
      ⟨(rho 18059 : Seg16.F), (rho 18060 : Seg16.F)⟩
      ⟨(rho 18066 : Seg16.F), (rho 18067 : Seg16.F)⟩
      ⟨(seg16AccX192 rho : Seg16.F), (seg16AccY192 rho : Seg16.F)⟩
      ⟨(rho 18073 : Seg16.F), (rho 18074 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung191

theorem seg16_hstep_c5 (rho : Nat -> Seg16.F) (h : Seg16.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (15292 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 160 ≤ i → i < 192 →
      EdwardsBridge.onCurve (seg16LadderAccState rho i) →
      EdwardsBridge.onCurve (seg16LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg16LadderAccState rho i) (seg16LadderCurState rho i)
        (seg16LadderAccState rho (i + 1)) (seg16LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg16_rung160 rho h bits[160]! (hbitAt 160 (by omega)) hacc hcur
  · exact seg16_rung161 rho h bits[161]! (hbitAt 161 (by omega)) hacc hcur
  · exact seg16_rung162 rho h bits[162]! (hbitAt 162 (by omega)) hacc hcur
  · exact seg16_rung163 rho h bits[163]! (hbitAt 163 (by omega)) hacc hcur
  · exact seg16_rung164 rho h bits[164]! (hbitAt 164 (by omega)) hacc hcur
  · exact seg16_rung165 rho h bits[165]! (hbitAt 165 (by omega)) hacc hcur
  · exact seg16_rung166 rho h bits[166]! (hbitAt 166 (by omega)) hacc hcur
  · exact seg16_rung167 rho h bits[167]! (hbitAt 167 (by omega)) hacc hcur
  · exact seg16_rung168 rho h bits[168]! (hbitAt 168 (by omega)) hacc hcur
  · exact seg16_rung169 rho h bits[169]! (hbitAt 169 (by omega)) hacc hcur
  · exact seg16_rung170 rho h bits[170]! (hbitAt 170 (by omega)) hacc hcur
  · exact seg16_rung171 rho h bits[171]! (hbitAt 171 (by omega)) hacc hcur
  · exact seg16_rung172 rho h bits[172]! (hbitAt 172 (by omega)) hacc hcur
  · exact seg16_rung173 rho h bits[173]! (hbitAt 173 (by omega)) hacc hcur
  · exact seg16_rung174 rho h bits[174]! (hbitAt 174 (by omega)) hacc hcur
  · exact seg16_rung175 rho h bits[175]! (hbitAt 175 (by omega)) hacc hcur
  · exact seg16_rung176 rho h bits[176]! (hbitAt 176 (by omega)) hacc hcur
  · exact seg16_rung177 rho h bits[177]! (hbitAt 177 (by omega)) hacc hcur
  · exact seg16_rung178 rho h bits[178]! (hbitAt 178 (by omega)) hacc hcur
  · exact seg16_rung179 rho h bits[179]! (hbitAt 179 (by omega)) hacc hcur
  · exact seg16_rung180 rho h bits[180]! (hbitAt 180 (by omega)) hacc hcur
  · exact seg16_rung181 rho h bits[181]! (hbitAt 181 (by omega)) hacc hcur
  · exact seg16_rung182 rho h bits[182]! (hbitAt 182 (by omega)) hacc hcur
  · exact seg16_rung183 rho h bits[183]! (hbitAt 183 (by omega)) hacc hcur
  · exact seg16_rung184 rho h bits[184]! (hbitAt 184 (by omega)) hacc hcur
  · exact seg16_rung185 rho h bits[185]! (hbitAt 185 (by omega)) hacc hcur
  · exact seg16_rung186 rho h bits[186]! (hbitAt 186 (by omega)) hacc hcur
  · exact seg16_rung187 rho h bits[187]! (hbitAt 187 (by omega)) hacc hcur
  · exact seg16_rung188 rho h bits[188]! (hbitAt 188 (by omega)) hacc hcur
  · exact seg16_rung189 rho h bits[189]! (hbitAt 189 (by omega)) hacc hcur
  · exact seg16_rung190 rho h bits[190]! (hbitAt 190 (by omega)) hacc hcur
  · exact seg16_rung191 rho h bits[191]! (hbitAt 191 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
