import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg45_rung192 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41140 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX192 rho : Seg45.F), (seg45AccY192 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43729 : Seg45.F), (rho 43730 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX192 rho : Seg45.F), (seg45AccY192 rho : Seg45.F)⟩
        ⟨(rho 43729 : Seg45.F), (rho 43730 : Seg45.F)⟩
        ⟨(seg45AccX193 rho : Seg45.F), (seg45AccY193 rho : Seg45.F)⟩
        ⟨(rho 43743 : Seg45.F), (rho 43744 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart68 at p68
  rcases p68 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5503, r5504, r5505, r5506, r5507, r5508, r5509, r5510, r5511, r5512, r5513, r5514, r5515, r5516, _, _, _⟩
  unfold Seg45.relationRow5503 Seg45.relationLc995 Seg45.relationLc995Part0 Seg45.relationLc995Part1 Seg45.relationLc995Part2 Seg45.relationLc995Part3 Seg45.relationLc995Part4 Seg45.relationLc995Part5 Seg45.relationLc995Part6 Seg45.relationLc995Part7 Seg45.relationLc995Part8 Seg45.relationLc995Part9 Seg45.relationLc995Part10 Seg45.relationLc995Part11 Seg45.relationLc995Part12 at r5503
  unfold Seg45.relationRow5504 at r5504
  unfold Seg45.relationRow5505 Seg45.relationLc996 Seg45.relationLc996Part0 Seg45.relationLc996Part1 Seg45.relationLc996Part2 Seg45.relationLc996Part3 Seg45.relationLc996Part4 Seg45.relationLc996Part5 at r5505
  unfold Seg45.relationRow5506 Seg45.relationLc997 Seg45.relationLc997Part0 Seg45.relationLc997Part1 Seg45.relationLc997Part2 Seg45.relationLc997Part3 Seg45.relationLc997Part4 Seg45.relationLc997Part5 Seg45.relationLc997Part6 at r5506
  unfold Seg45.relationRow5507 at r5507
  unfold Seg45.relationRow5508 at r5508
  unfold Seg45.relationRow5509 at r5509
  unfold Seg45.relationRow5510 Seg45.relationLc998 Seg45.relationLc998Part0 Seg45.relationLc998Part1 Seg45.relationLc998Part2 Seg45.relationLc998Part3 Seg45.relationLc998Part4 Seg45.relationLc998Part5 Seg45.relationLc998Part6 at r5510
  unfold Seg45.relationRow5511 Seg45.relationLc999 Seg45.relationLc999Part0 Seg45.relationLc999Part1 Seg45.relationLc999Part2 Seg45.relationLc999Part3 Seg45.relationLc999Part4 Seg45.relationLc999Part5 Seg45.relationLc999Part6 at r5511
  unfold Seg45.relationRow5512 at r5512
  unfold Seg45.relationRow5513 at r5513
  unfold Seg45.relationRow5514 at r5514
  unfold Seg45.relationRow5515 at r5515
  unfold Seg45.relationRow5516 at r5516
  have hrung192 (bit : Bool) (hbit : rho 41140 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX192 rho : Seg45.F), (seg45AccY192 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43729 : Seg45.F), (rho 43730 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX192 rho : Seg45.F), (seg45AccY192 rho : Seg45.F)⟩
        ⟨(rho 43729 : Seg45.F), (rho 43730 : Seg45.F)⟩
        ⟨(seg45AccX193 rho : Seg45.F), (seg45AccY193 rho : Seg45.F)⟩
        ⟨(rho 43743 : Seg45.F), (rho 43744 : Seg45.F)⟩ := by
    have hsum : seg45AccX192 rho + seg45AccY192 rho = rho 43731 := by
      rw [seg45LadderFlatX192_eq, seg45LadderFlatY192_eq]
      unfold seg45LadderFlatX192 seg45LadderFlatY192
      linear_combination r5503
    have ha0 : (rho 43729 + rho 43730) * (seg45AccX192 rho + seg45AccY192 rho) = rho 43732 := by
      rw [hsum]
      linear_combination r5504
    have ha1 : rho 43730 * seg45AccX192 rho = rho 43733 := by
      rw [seg45LadderFlatX192_eq]
      unfold seg45LadderFlatX192
      linear_combination r5505
    have ha2 : rho 43729 * seg45AccY192 rho = rho 43734 := by
      rw [seg45LadderFlatY192_eq]
      unfold seg45LadderFlatY192
      linear_combination r5506
    have ha3 : 3021 * rho 43733 * rho 43734 = rho 43735 := by
      linear_combination r5507
    have ha4 : rho 43736 * (1 + rho 43735) = rho 43733 + rho 43734 := by
      linear_combination r5508
    have ha5 : rho 43737 * (1 - rho 43735) = rho 43732 - rho 43733 - rho 43734 := by
      linear_combination r5509
    have haddx :
        rho 43736 * (1 + 3021 * (rho 43730 * seg45AccX192 rho) * (rho 43729 * seg45AccY192 rho)) =
          rho 43730 * seg45AccX192 rho + rho 43729 * seg45AccY192 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43737 * (1 - 3021 * (rho 43730 * seg45AccX192 rho) * (rho 43729 * seg45AccY192 rho)) =
          (-1) * (rho 43730 * seg45AccX192 rho) - rho 43729 * seg45AccY192 rho +
            (seg45AccY192 rho - seg45AccX192 rho * (-1)) * (rho 43729 + rho 43730) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43737 * (1 - rho 43735) = rho 43732 - rho 43733 - rho 43734 := ha5
        _ = (-1) * rho 43733 - rho 43734 + (seg45AccY192 rho - seg45AccX192 rho * (-1)) * (rho 43729 + rho 43730) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX193 rho = seg45AccX192 rho - Bool.toZMod bit * (seg45AccX192 rho - rho 43736) := by
      have hd : rho 43738 = Bool.toZMod bit * (rho 43736 - seg45AccX192 rho) := by
        rw [← hbit, seg45LadderFlatX192_eq]
        unfold seg45LadderFlatX192
        linear_combination -r5510
      unfold seg45AccX193
      linear_combination hd
    have hsely : seg45AccY193 rho = seg45AccY192 rho - Bool.toZMod bit * (seg45AccY192 rho - rho 43737) := by
      have hd : rho 43739 = Bool.toZMod bit * (rho 43737 - seg45AccY192 rho) := by
        rw [← hbit, seg45LadderFlatY192_eq]
        unfold seg45LadderFlatY192
        linear_combination -r5511
      unfold seg45AccY193
      linear_combination hd
    have hd0 : rho 43729 * rho 43730 = rho 43740 := by linear_combination r5512
    have hd1 : rho 43729 * rho 43729 = rho 43741 := by linear_combination r5513
    have hd2 : rho 43730 * rho 43730 = rho 43742 := by linear_combination r5514
    have hd3 : rho 43743 * (rho 43730 * rho 43730 + rho 43729 * rho 43729 * (-1)) = 2 * (rho 43729 * rho 43730) := by
      rw [hd0, hd1, hd2]
      linear_combination r5515
    have hd4 : rho 43744 * (2 - (rho 43730 * rho 43730 + rho 43729 * rho 43729 * (-1))) = rho 43730 * rho 43730 - rho 43729 * rho 43729 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5516
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX192 rho : Seg45.F), (seg45AccY192 rho : Seg45.F)⟩
      ⟨(rho 43729 : Seg45.F), (rho 43730 : Seg45.F)⟩
      ⟨(rho 43736 : Seg45.F), (rho 43737 : Seg45.F)⟩
      ⟨(seg45AccX193 rho : Seg45.F), (seg45AccY193 rho : Seg45.F)⟩
      ⟨(rho 43743 : Seg45.F), (rho 43744 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung192

theorem seg45_rung193 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41141 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX193 rho : Seg45.F), (seg45AccY193 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43743 : Seg45.F), (rho 43744 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX193 rho : Seg45.F), (seg45AccY193 rho : Seg45.F)⟩
        ⟨(rho 43743 : Seg45.F), (rho 43744 : Seg45.F)⟩
        ⟨(seg45AccX194 rho : Seg45.F), (seg45AccY194 rho : Seg45.F)⟩
        ⟨(rho 43757 : Seg45.F), (rho 43758 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p68, p69,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart68 at p68
  rcases p68 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5517, r5518, r5519⟩
  unfold Seg45.relationPart69 at p69
  rcases p69 with ⟨r5520, r5521, r5522, r5523, r5524, r5525, r5526, r5527, r5528, r5529, r5530, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow5517 Seg45.relationLc1000 Seg45.relationLc1000Part0 Seg45.relationLc1000Part1 Seg45.relationLc1000Part2 Seg45.relationLc1000Part3 Seg45.relationLc1000Part4 Seg45.relationLc1000Part5 Seg45.relationLc1000Part6 Seg45.relationLc1000Part7 Seg45.relationLc1000Part8 Seg45.relationLc1000Part9 Seg45.relationLc1000Part10 Seg45.relationLc1000Part11 Seg45.relationLc1000Part12 at r5517
  unfold Seg45.relationRow5518 at r5518
  unfold Seg45.relationRow5519 Seg45.relationLc1001 Seg45.relationLc1001Part0 Seg45.relationLc1001Part1 Seg45.relationLc1001Part2 Seg45.relationLc1001Part3 Seg45.relationLc1001Part4 Seg45.relationLc1001Part5 Seg45.relationLc1001Part6 at r5519
  unfold Seg45.relationRow5520 Seg45.relationLc1002 Seg45.relationLc1002Part0 Seg45.relationLc1002Part1 Seg45.relationLc1002Part2 Seg45.relationLc1002Part3 Seg45.relationLc1002Part4 Seg45.relationLc1002Part5 Seg45.relationLc1002Part6 at r5520
  unfold Seg45.relationRow5521 at r5521
  unfold Seg45.relationRow5522 at r5522
  unfold Seg45.relationRow5523 at r5523
  unfold Seg45.relationRow5524 Seg45.relationLc1003 Seg45.relationLc1003Part0 Seg45.relationLc1003Part1 Seg45.relationLc1003Part2 Seg45.relationLc1003Part3 Seg45.relationLc1003Part4 Seg45.relationLc1003Part5 Seg45.relationLc1003Part6 at r5524
  unfold Seg45.relationRow5525 Seg45.relationLc1004 Seg45.relationLc1004Part0 Seg45.relationLc1004Part1 Seg45.relationLc1004Part2 Seg45.relationLc1004Part3 Seg45.relationLc1004Part4 Seg45.relationLc1004Part5 Seg45.relationLc1004Part6 at r5525
  unfold Seg45.relationRow5526 at r5526
  unfold Seg45.relationRow5527 at r5527
  unfold Seg45.relationRow5528 at r5528
  unfold Seg45.relationRow5529 at r5529
  unfold Seg45.relationRow5530 at r5530
  have hrung193 (bit : Bool) (hbit : rho 41141 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX193 rho : Seg45.F), (seg45AccY193 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43743 : Seg45.F), (rho 43744 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX193 rho : Seg45.F), (seg45AccY193 rho : Seg45.F)⟩
        ⟨(rho 43743 : Seg45.F), (rho 43744 : Seg45.F)⟩
        ⟨(seg45AccX194 rho : Seg45.F), (seg45AccY194 rho : Seg45.F)⟩
        ⟨(rho 43757 : Seg45.F), (rho 43758 : Seg45.F)⟩ := by
    have hsum : seg45AccX193 rho + seg45AccY193 rho = rho 43745 := by
      rw [seg45LadderFlatX193_eq, seg45LadderFlatY193_eq]
      unfold seg45LadderFlatX193 seg45LadderFlatY193
      linear_combination r5517
    have ha0 : (rho 43743 + rho 43744) * (seg45AccX193 rho + seg45AccY193 rho) = rho 43746 := by
      rw [hsum]
      linear_combination r5518
    have ha1 : rho 43744 * seg45AccX193 rho = rho 43747 := by
      rw [seg45LadderFlatX193_eq]
      unfold seg45LadderFlatX193
      linear_combination r5519
    have ha2 : rho 43743 * seg45AccY193 rho = rho 43748 := by
      rw [seg45LadderFlatY193_eq]
      unfold seg45LadderFlatY193
      linear_combination r5520
    have ha3 : 3021 * rho 43747 * rho 43748 = rho 43749 := by
      linear_combination r5521
    have ha4 : rho 43750 * (1 + rho 43749) = rho 43747 + rho 43748 := by
      linear_combination r5522
    have ha5 : rho 43751 * (1 - rho 43749) = rho 43746 - rho 43747 - rho 43748 := by
      linear_combination r5523
    have haddx :
        rho 43750 * (1 + 3021 * (rho 43744 * seg45AccX193 rho) * (rho 43743 * seg45AccY193 rho)) =
          rho 43744 * seg45AccX193 rho + rho 43743 * seg45AccY193 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43751 * (1 - 3021 * (rho 43744 * seg45AccX193 rho) * (rho 43743 * seg45AccY193 rho)) =
          (-1) * (rho 43744 * seg45AccX193 rho) - rho 43743 * seg45AccY193 rho +
            (seg45AccY193 rho - seg45AccX193 rho * (-1)) * (rho 43743 + rho 43744) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43751 * (1 - rho 43749) = rho 43746 - rho 43747 - rho 43748 := ha5
        _ = (-1) * rho 43747 - rho 43748 + (seg45AccY193 rho - seg45AccX193 rho * (-1)) * (rho 43743 + rho 43744) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX194 rho = seg45AccX193 rho - Bool.toZMod bit * (seg45AccX193 rho - rho 43750) := by
      have hd : rho 43752 = Bool.toZMod bit * (rho 43750 - seg45AccX193 rho) := by
        rw [← hbit, seg45LadderFlatX193_eq]
        unfold seg45LadderFlatX193
        linear_combination -r5524
      unfold seg45AccX194
      linear_combination hd
    have hsely : seg45AccY194 rho = seg45AccY193 rho - Bool.toZMod bit * (seg45AccY193 rho - rho 43751) := by
      have hd : rho 43753 = Bool.toZMod bit * (rho 43751 - seg45AccY193 rho) := by
        rw [← hbit, seg45LadderFlatY193_eq]
        unfold seg45LadderFlatY193
        linear_combination -r5525
      unfold seg45AccY194
      linear_combination hd
    have hd0 : rho 43743 * rho 43744 = rho 43754 := by linear_combination r5526
    have hd1 : rho 43743 * rho 43743 = rho 43755 := by linear_combination r5527
    have hd2 : rho 43744 * rho 43744 = rho 43756 := by linear_combination r5528
    have hd3 : rho 43757 * (rho 43744 * rho 43744 + rho 43743 * rho 43743 * (-1)) = 2 * (rho 43743 * rho 43744) := by
      rw [hd0, hd1, hd2]
      linear_combination r5529
    have hd4 : rho 43758 * (2 - (rho 43744 * rho 43744 + rho 43743 * rho 43743 * (-1))) = rho 43744 * rho 43744 - rho 43743 * rho 43743 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5530
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX193 rho : Seg45.F), (seg45AccY193 rho : Seg45.F)⟩
      ⟨(rho 43743 : Seg45.F), (rho 43744 : Seg45.F)⟩
      ⟨(rho 43750 : Seg45.F), (rho 43751 : Seg45.F)⟩
      ⟨(seg45AccX194 rho : Seg45.F), (seg45AccY194 rho : Seg45.F)⟩
      ⟨(rho 43757 : Seg45.F), (rho 43758 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung193

theorem seg45_rung194 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41142 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX194 rho : Seg45.F), (seg45AccY194 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43757 : Seg45.F), (rho 43758 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX194 rho : Seg45.F), (seg45AccY194 rho : Seg45.F)⟩
        ⟨(rho 43757 : Seg45.F), (rho 43758 : Seg45.F)⟩
        ⟨(seg45AccX195 rho : Seg45.F), (seg45AccY195 rho : Seg45.F)⟩
        ⟨(rho 43771 : Seg45.F), (rho 43772 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p69,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart69 at p69
  rcases p69 with ⟨_, _, _, _, _, _, _, _, _, _, _, r5531, r5532, r5533, r5534, r5535, r5536, r5537, r5538, r5539, r5540, r5541, r5542, r5543, r5544, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow5531 Seg45.relationLc1005 Seg45.relationLc1005Part0 Seg45.relationLc1005Part1 Seg45.relationLc1005Part2 Seg45.relationLc1005Part3 Seg45.relationLc1005Part4 Seg45.relationLc1005Part5 Seg45.relationLc1005Part6 Seg45.relationLc1005Part7 Seg45.relationLc1005Part8 Seg45.relationLc1005Part9 Seg45.relationLc1005Part10 Seg45.relationLc1005Part11 Seg45.relationLc1005Part12 at r5531
  unfold Seg45.relationRow5532 at r5532
  unfold Seg45.relationRow5533 Seg45.relationLc1006 Seg45.relationLc1006Part0 Seg45.relationLc1006Part1 Seg45.relationLc1006Part2 Seg45.relationLc1006Part3 Seg45.relationLc1006Part4 Seg45.relationLc1006Part5 Seg45.relationLc1006Part6 at r5533
  unfold Seg45.relationRow5534 Seg45.relationLc1007 Seg45.relationLc1007Part0 Seg45.relationLc1007Part1 Seg45.relationLc1007Part2 Seg45.relationLc1007Part3 Seg45.relationLc1007Part4 Seg45.relationLc1007Part5 Seg45.relationLc1007Part6 at r5534
  unfold Seg45.relationRow5535 at r5535
  unfold Seg45.relationRow5536 at r5536
  unfold Seg45.relationRow5537 at r5537
  unfold Seg45.relationRow5538 Seg45.relationLc1008 Seg45.relationLc1008Part0 Seg45.relationLc1008Part1 Seg45.relationLc1008Part2 Seg45.relationLc1008Part3 Seg45.relationLc1008Part4 Seg45.relationLc1008Part5 Seg45.relationLc1008Part6 at r5538
  unfold Seg45.relationRow5539 Seg45.relationLc1009 Seg45.relationLc1009Part0 Seg45.relationLc1009Part1 Seg45.relationLc1009Part2 Seg45.relationLc1009Part3 Seg45.relationLc1009Part4 Seg45.relationLc1009Part5 Seg45.relationLc1009Part6 at r5539
  unfold Seg45.relationRow5540 at r5540
  unfold Seg45.relationRow5541 at r5541
  unfold Seg45.relationRow5542 at r5542
  unfold Seg45.relationRow5543 at r5543
  unfold Seg45.relationRow5544 at r5544
  have hrung194 (bit : Bool) (hbit : rho 41142 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX194 rho : Seg45.F), (seg45AccY194 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43757 : Seg45.F), (rho 43758 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX194 rho : Seg45.F), (seg45AccY194 rho : Seg45.F)⟩
        ⟨(rho 43757 : Seg45.F), (rho 43758 : Seg45.F)⟩
        ⟨(seg45AccX195 rho : Seg45.F), (seg45AccY195 rho : Seg45.F)⟩
        ⟨(rho 43771 : Seg45.F), (rho 43772 : Seg45.F)⟩ := by
    have hsum : seg45AccX194 rho + seg45AccY194 rho = rho 43759 := by
      rw [seg45LadderFlatX194_eq, seg45LadderFlatY194_eq]
      unfold seg45LadderFlatX194 seg45LadderFlatY194
      linear_combination r5531
    have ha0 : (rho 43757 + rho 43758) * (seg45AccX194 rho + seg45AccY194 rho) = rho 43760 := by
      rw [hsum]
      linear_combination r5532
    have ha1 : rho 43758 * seg45AccX194 rho = rho 43761 := by
      rw [seg45LadderFlatX194_eq]
      unfold seg45LadderFlatX194
      linear_combination r5533
    have ha2 : rho 43757 * seg45AccY194 rho = rho 43762 := by
      rw [seg45LadderFlatY194_eq]
      unfold seg45LadderFlatY194
      linear_combination r5534
    have ha3 : 3021 * rho 43761 * rho 43762 = rho 43763 := by
      linear_combination r5535
    have ha4 : rho 43764 * (1 + rho 43763) = rho 43761 + rho 43762 := by
      linear_combination r5536
    have ha5 : rho 43765 * (1 - rho 43763) = rho 43760 - rho 43761 - rho 43762 := by
      linear_combination r5537
    have haddx :
        rho 43764 * (1 + 3021 * (rho 43758 * seg45AccX194 rho) * (rho 43757 * seg45AccY194 rho)) =
          rho 43758 * seg45AccX194 rho + rho 43757 * seg45AccY194 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43765 * (1 - 3021 * (rho 43758 * seg45AccX194 rho) * (rho 43757 * seg45AccY194 rho)) =
          (-1) * (rho 43758 * seg45AccX194 rho) - rho 43757 * seg45AccY194 rho +
            (seg45AccY194 rho - seg45AccX194 rho * (-1)) * (rho 43757 + rho 43758) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43765 * (1 - rho 43763) = rho 43760 - rho 43761 - rho 43762 := ha5
        _ = (-1) * rho 43761 - rho 43762 + (seg45AccY194 rho - seg45AccX194 rho * (-1)) * (rho 43757 + rho 43758) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX195 rho = seg45AccX194 rho - Bool.toZMod bit * (seg45AccX194 rho - rho 43764) := by
      have hd : rho 43766 = Bool.toZMod bit * (rho 43764 - seg45AccX194 rho) := by
        rw [← hbit, seg45LadderFlatX194_eq]
        unfold seg45LadderFlatX194
        linear_combination -r5538
      unfold seg45AccX195
      linear_combination hd
    have hsely : seg45AccY195 rho = seg45AccY194 rho - Bool.toZMod bit * (seg45AccY194 rho - rho 43765) := by
      have hd : rho 43767 = Bool.toZMod bit * (rho 43765 - seg45AccY194 rho) := by
        rw [← hbit, seg45LadderFlatY194_eq]
        unfold seg45LadderFlatY194
        linear_combination -r5539
      unfold seg45AccY195
      linear_combination hd
    have hd0 : rho 43757 * rho 43758 = rho 43768 := by linear_combination r5540
    have hd1 : rho 43757 * rho 43757 = rho 43769 := by linear_combination r5541
    have hd2 : rho 43758 * rho 43758 = rho 43770 := by linear_combination r5542
    have hd3 : rho 43771 * (rho 43758 * rho 43758 + rho 43757 * rho 43757 * (-1)) = 2 * (rho 43757 * rho 43758) := by
      rw [hd0, hd1, hd2]
      linear_combination r5543
    have hd4 : rho 43772 * (2 - (rho 43758 * rho 43758 + rho 43757 * rho 43757 * (-1))) = rho 43758 * rho 43758 - rho 43757 * rho 43757 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5544
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX194 rho : Seg45.F), (seg45AccY194 rho : Seg45.F)⟩
      ⟨(rho 43757 : Seg45.F), (rho 43758 : Seg45.F)⟩
      ⟨(rho 43764 : Seg45.F), (rho 43765 : Seg45.F)⟩
      ⟨(seg45AccX195 rho : Seg45.F), (seg45AccY195 rho : Seg45.F)⟩
      ⟨(rho 43771 : Seg45.F), (rho 43772 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung194

theorem seg45_rung195 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41143 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX195 rho : Seg45.F), (seg45AccY195 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43771 : Seg45.F), (rho 43772 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX195 rho : Seg45.F), (seg45AccY195 rho : Seg45.F)⟩
        ⟨(rho 43771 : Seg45.F), (rho 43772 : Seg45.F)⟩
        ⟨(seg45AccX196 rho : Seg45.F), (seg45AccY196 rho : Seg45.F)⟩
        ⟨(rho 43785 : Seg45.F), (rho 43786 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p69,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart69 at p69
  rcases p69 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5545, r5546, r5547, r5548, r5549, r5550, r5551, r5552, r5553, r5554, r5555, r5556, r5557, r5558, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow5545 Seg45.relationLc1010 Seg45.relationLc1010Part0 Seg45.relationLc1010Part1 Seg45.relationLc1010Part2 Seg45.relationLc1010Part3 Seg45.relationLc1010Part4 Seg45.relationLc1010Part5 Seg45.relationLc1010Part6 Seg45.relationLc1010Part7 Seg45.relationLc1010Part8 Seg45.relationLc1010Part9 Seg45.relationLc1010Part10 Seg45.relationLc1010Part11 Seg45.relationLc1010Part12 at r5545
  unfold Seg45.relationRow5546 at r5546
  unfold Seg45.relationRow5547 Seg45.relationLc1011 Seg45.relationLc1011Part0 Seg45.relationLc1011Part1 Seg45.relationLc1011Part2 Seg45.relationLc1011Part3 Seg45.relationLc1011Part4 Seg45.relationLc1011Part5 Seg45.relationLc1011Part6 at r5547
  unfold Seg45.relationRow5548 Seg45.relationLc1012 Seg45.relationLc1012Part0 Seg45.relationLc1012Part1 Seg45.relationLc1012Part2 Seg45.relationLc1012Part3 Seg45.relationLc1012Part4 Seg45.relationLc1012Part5 Seg45.relationLc1012Part6 at r5548
  unfold Seg45.relationRow5549 at r5549
  unfold Seg45.relationRow5550 at r5550
  unfold Seg45.relationRow5551 at r5551
  unfold Seg45.relationRow5552 Seg45.relationLc1013 Seg45.relationLc1013Part0 Seg45.relationLc1013Part1 Seg45.relationLc1013Part2 Seg45.relationLc1013Part3 Seg45.relationLc1013Part4 Seg45.relationLc1013Part5 Seg45.relationLc1013Part6 at r5552
  unfold Seg45.relationRow5553 Seg45.relationLc1014 Seg45.relationLc1014Part0 Seg45.relationLc1014Part1 Seg45.relationLc1014Part2 Seg45.relationLc1014Part3 Seg45.relationLc1014Part4 Seg45.relationLc1014Part5 Seg45.relationLc1014Part6 at r5553
  unfold Seg45.relationRow5554 at r5554
  unfold Seg45.relationRow5555 at r5555
  unfold Seg45.relationRow5556 at r5556
  unfold Seg45.relationRow5557 at r5557
  unfold Seg45.relationRow5558 at r5558
  have hrung195 (bit : Bool) (hbit : rho 41143 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX195 rho : Seg45.F), (seg45AccY195 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43771 : Seg45.F), (rho 43772 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX195 rho : Seg45.F), (seg45AccY195 rho : Seg45.F)⟩
        ⟨(rho 43771 : Seg45.F), (rho 43772 : Seg45.F)⟩
        ⟨(seg45AccX196 rho : Seg45.F), (seg45AccY196 rho : Seg45.F)⟩
        ⟨(rho 43785 : Seg45.F), (rho 43786 : Seg45.F)⟩ := by
    have hsum : seg45AccX195 rho + seg45AccY195 rho = rho 43773 := by
      rw [seg45LadderFlatX195_eq, seg45LadderFlatY195_eq]
      unfold seg45LadderFlatX195 seg45LadderFlatY195
      linear_combination r5545
    have ha0 : (rho 43771 + rho 43772) * (seg45AccX195 rho + seg45AccY195 rho) = rho 43774 := by
      rw [hsum]
      linear_combination r5546
    have ha1 : rho 43772 * seg45AccX195 rho = rho 43775 := by
      rw [seg45LadderFlatX195_eq]
      unfold seg45LadderFlatX195
      linear_combination r5547
    have ha2 : rho 43771 * seg45AccY195 rho = rho 43776 := by
      rw [seg45LadderFlatY195_eq]
      unfold seg45LadderFlatY195
      linear_combination r5548
    have ha3 : 3021 * rho 43775 * rho 43776 = rho 43777 := by
      linear_combination r5549
    have ha4 : rho 43778 * (1 + rho 43777) = rho 43775 + rho 43776 := by
      linear_combination r5550
    have ha5 : rho 43779 * (1 - rho 43777) = rho 43774 - rho 43775 - rho 43776 := by
      linear_combination r5551
    have haddx :
        rho 43778 * (1 + 3021 * (rho 43772 * seg45AccX195 rho) * (rho 43771 * seg45AccY195 rho)) =
          rho 43772 * seg45AccX195 rho + rho 43771 * seg45AccY195 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43779 * (1 - 3021 * (rho 43772 * seg45AccX195 rho) * (rho 43771 * seg45AccY195 rho)) =
          (-1) * (rho 43772 * seg45AccX195 rho) - rho 43771 * seg45AccY195 rho +
            (seg45AccY195 rho - seg45AccX195 rho * (-1)) * (rho 43771 + rho 43772) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43779 * (1 - rho 43777) = rho 43774 - rho 43775 - rho 43776 := ha5
        _ = (-1) * rho 43775 - rho 43776 + (seg45AccY195 rho - seg45AccX195 rho * (-1)) * (rho 43771 + rho 43772) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX196 rho = seg45AccX195 rho - Bool.toZMod bit * (seg45AccX195 rho - rho 43778) := by
      have hd : rho 43780 = Bool.toZMod bit * (rho 43778 - seg45AccX195 rho) := by
        rw [← hbit, seg45LadderFlatX195_eq]
        unfold seg45LadderFlatX195
        linear_combination -r5552
      unfold seg45AccX196
      linear_combination hd
    have hsely : seg45AccY196 rho = seg45AccY195 rho - Bool.toZMod bit * (seg45AccY195 rho - rho 43779) := by
      have hd : rho 43781 = Bool.toZMod bit * (rho 43779 - seg45AccY195 rho) := by
        rw [← hbit, seg45LadderFlatY195_eq]
        unfold seg45LadderFlatY195
        linear_combination -r5553
      unfold seg45AccY196
      linear_combination hd
    have hd0 : rho 43771 * rho 43772 = rho 43782 := by linear_combination r5554
    have hd1 : rho 43771 * rho 43771 = rho 43783 := by linear_combination r5555
    have hd2 : rho 43772 * rho 43772 = rho 43784 := by linear_combination r5556
    have hd3 : rho 43785 * (rho 43772 * rho 43772 + rho 43771 * rho 43771 * (-1)) = 2 * (rho 43771 * rho 43772) := by
      rw [hd0, hd1, hd2]
      linear_combination r5557
    have hd4 : rho 43786 * (2 - (rho 43772 * rho 43772 + rho 43771 * rho 43771 * (-1))) = rho 43772 * rho 43772 - rho 43771 * rho 43771 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5558
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX195 rho : Seg45.F), (seg45AccY195 rho : Seg45.F)⟩
      ⟨(rho 43771 : Seg45.F), (rho 43772 : Seg45.F)⟩
      ⟨(rho 43778 : Seg45.F), (rho 43779 : Seg45.F)⟩
      ⟨(seg45AccX196 rho : Seg45.F), (seg45AccY196 rho : Seg45.F)⟩
      ⟨(rho 43785 : Seg45.F), (rho 43786 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung195

theorem seg45_rung196 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41144 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX196 rho : Seg45.F), (seg45AccY196 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43785 : Seg45.F), (rho 43786 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX196 rho : Seg45.F), (seg45AccY196 rho : Seg45.F)⟩
        ⟨(rho 43785 : Seg45.F), (rho 43786 : Seg45.F)⟩
        ⟨(seg45AccX197 rho : Seg45.F), (seg45AccY197 rho : Seg45.F)⟩
        ⟨(rho 43799 : Seg45.F), (rho 43800 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p69,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart69 at p69
  rcases p69 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5559, r5560, r5561, r5562, r5563, r5564, r5565, r5566, r5567, r5568, r5569, r5570, r5571, r5572, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow5559 Seg45.relationLc1015 Seg45.relationLc1015Part0 Seg45.relationLc1015Part1 Seg45.relationLc1015Part2 Seg45.relationLc1015Part3 Seg45.relationLc1015Part4 Seg45.relationLc1015Part5 Seg45.relationLc1015Part6 Seg45.relationLc1015Part7 Seg45.relationLc1015Part8 Seg45.relationLc1015Part9 Seg45.relationLc1015Part10 Seg45.relationLc1015Part11 Seg45.relationLc1015Part12 at r5559
  unfold Seg45.relationRow5560 at r5560
  unfold Seg45.relationRow5561 Seg45.relationLc1016 Seg45.relationLc1016Part0 Seg45.relationLc1016Part1 Seg45.relationLc1016Part2 Seg45.relationLc1016Part3 Seg45.relationLc1016Part4 Seg45.relationLc1016Part5 Seg45.relationLc1016Part6 at r5561
  unfold Seg45.relationRow5562 Seg45.relationLc1017 Seg45.relationLc1017Part0 Seg45.relationLc1017Part1 Seg45.relationLc1017Part2 Seg45.relationLc1017Part3 Seg45.relationLc1017Part4 Seg45.relationLc1017Part5 Seg45.relationLc1017Part6 at r5562
  unfold Seg45.relationRow5563 at r5563
  unfold Seg45.relationRow5564 at r5564
  unfold Seg45.relationRow5565 at r5565
  unfold Seg45.relationRow5566 Seg45.relationLc1018 Seg45.relationLc1018Part0 Seg45.relationLc1018Part1 Seg45.relationLc1018Part2 Seg45.relationLc1018Part3 Seg45.relationLc1018Part4 Seg45.relationLc1018Part5 Seg45.relationLc1018Part6 at r5566
  unfold Seg45.relationRow5567 Seg45.relationLc1019 Seg45.relationLc1019Part0 Seg45.relationLc1019Part1 Seg45.relationLc1019Part2 Seg45.relationLc1019Part3 Seg45.relationLc1019Part4 Seg45.relationLc1019Part5 Seg45.relationLc1019Part6 at r5567
  unfold Seg45.relationRow5568 at r5568
  unfold Seg45.relationRow5569 at r5569
  unfold Seg45.relationRow5570 at r5570
  unfold Seg45.relationRow5571 at r5571
  unfold Seg45.relationRow5572 at r5572
  have hrung196 (bit : Bool) (hbit : rho 41144 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX196 rho : Seg45.F), (seg45AccY196 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43785 : Seg45.F), (rho 43786 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX196 rho : Seg45.F), (seg45AccY196 rho : Seg45.F)⟩
        ⟨(rho 43785 : Seg45.F), (rho 43786 : Seg45.F)⟩
        ⟨(seg45AccX197 rho : Seg45.F), (seg45AccY197 rho : Seg45.F)⟩
        ⟨(rho 43799 : Seg45.F), (rho 43800 : Seg45.F)⟩ := by
    have hsum : seg45AccX196 rho + seg45AccY196 rho = rho 43787 := by
      rw [seg45LadderFlatX196_eq, seg45LadderFlatY196_eq]
      unfold seg45LadderFlatX196 seg45LadderFlatY196
      linear_combination r5559
    have ha0 : (rho 43785 + rho 43786) * (seg45AccX196 rho + seg45AccY196 rho) = rho 43788 := by
      rw [hsum]
      linear_combination r5560
    have ha1 : rho 43786 * seg45AccX196 rho = rho 43789 := by
      rw [seg45LadderFlatX196_eq]
      unfold seg45LadderFlatX196
      linear_combination r5561
    have ha2 : rho 43785 * seg45AccY196 rho = rho 43790 := by
      rw [seg45LadderFlatY196_eq]
      unfold seg45LadderFlatY196
      linear_combination r5562
    have ha3 : 3021 * rho 43789 * rho 43790 = rho 43791 := by
      linear_combination r5563
    have ha4 : rho 43792 * (1 + rho 43791) = rho 43789 + rho 43790 := by
      linear_combination r5564
    have ha5 : rho 43793 * (1 - rho 43791) = rho 43788 - rho 43789 - rho 43790 := by
      linear_combination r5565
    have haddx :
        rho 43792 * (1 + 3021 * (rho 43786 * seg45AccX196 rho) * (rho 43785 * seg45AccY196 rho)) =
          rho 43786 * seg45AccX196 rho + rho 43785 * seg45AccY196 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43793 * (1 - 3021 * (rho 43786 * seg45AccX196 rho) * (rho 43785 * seg45AccY196 rho)) =
          (-1) * (rho 43786 * seg45AccX196 rho) - rho 43785 * seg45AccY196 rho +
            (seg45AccY196 rho - seg45AccX196 rho * (-1)) * (rho 43785 + rho 43786) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43793 * (1 - rho 43791) = rho 43788 - rho 43789 - rho 43790 := ha5
        _ = (-1) * rho 43789 - rho 43790 + (seg45AccY196 rho - seg45AccX196 rho * (-1)) * (rho 43785 + rho 43786) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX197 rho = seg45AccX196 rho - Bool.toZMod bit * (seg45AccX196 rho - rho 43792) := by
      have hd : rho 43794 = Bool.toZMod bit * (rho 43792 - seg45AccX196 rho) := by
        rw [← hbit, seg45LadderFlatX196_eq]
        unfold seg45LadderFlatX196
        linear_combination -r5566
      unfold seg45AccX197
      linear_combination hd
    have hsely : seg45AccY197 rho = seg45AccY196 rho - Bool.toZMod bit * (seg45AccY196 rho - rho 43793) := by
      have hd : rho 43795 = Bool.toZMod bit * (rho 43793 - seg45AccY196 rho) := by
        rw [← hbit, seg45LadderFlatY196_eq]
        unfold seg45LadderFlatY196
        linear_combination -r5567
      unfold seg45AccY197
      linear_combination hd
    have hd0 : rho 43785 * rho 43786 = rho 43796 := by linear_combination r5568
    have hd1 : rho 43785 * rho 43785 = rho 43797 := by linear_combination r5569
    have hd2 : rho 43786 * rho 43786 = rho 43798 := by linear_combination r5570
    have hd3 : rho 43799 * (rho 43786 * rho 43786 + rho 43785 * rho 43785 * (-1)) = 2 * (rho 43785 * rho 43786) := by
      rw [hd0, hd1, hd2]
      linear_combination r5571
    have hd4 : rho 43800 * (2 - (rho 43786 * rho 43786 + rho 43785 * rho 43785 * (-1))) = rho 43786 * rho 43786 - rho 43785 * rho 43785 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5572
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX196 rho : Seg45.F), (seg45AccY196 rho : Seg45.F)⟩
      ⟨(rho 43785 : Seg45.F), (rho 43786 : Seg45.F)⟩
      ⟨(rho 43792 : Seg45.F), (rho 43793 : Seg45.F)⟩
      ⟨(seg45AccX197 rho : Seg45.F), (seg45AccY197 rho : Seg45.F)⟩
      ⟨(rho 43799 : Seg45.F), (rho 43800 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung196

theorem seg45_rung197 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41145 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX197 rho : Seg45.F), (seg45AccY197 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43799 : Seg45.F), (rho 43800 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX197 rho : Seg45.F), (seg45AccY197 rho : Seg45.F)⟩
        ⟨(rho 43799 : Seg45.F), (rho 43800 : Seg45.F)⟩
        ⟨(seg45AccX198 rho : Seg45.F), (seg45AccY198 rho : Seg45.F)⟩
        ⟨(rho 43813 : Seg45.F), (rho 43814 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p69,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart69 at p69
  rcases p69 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5573, r5574, r5575, r5576, r5577, r5578, r5579, r5580, r5581, r5582, r5583, r5584, r5585, r5586, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow5573 Seg45.relationLc1020 Seg45.relationLc1020Part0 Seg45.relationLc1020Part1 Seg45.relationLc1020Part2 Seg45.relationLc1020Part3 Seg45.relationLc1020Part4 Seg45.relationLc1020Part5 Seg45.relationLc1020Part6 Seg45.relationLc1020Part7 Seg45.relationLc1020Part8 Seg45.relationLc1020Part9 Seg45.relationLc1020Part10 Seg45.relationLc1020Part11 Seg45.relationLc1020Part12 at r5573
  unfold Seg45.relationRow5574 at r5574
  unfold Seg45.relationRow5575 Seg45.relationLc1021 Seg45.relationLc1021Part0 Seg45.relationLc1021Part1 Seg45.relationLc1021Part2 Seg45.relationLc1021Part3 Seg45.relationLc1021Part4 Seg45.relationLc1021Part5 Seg45.relationLc1021Part6 at r5575
  unfold Seg45.relationRow5576 Seg45.relationLc1022 Seg45.relationLc1022Part0 Seg45.relationLc1022Part1 Seg45.relationLc1022Part2 Seg45.relationLc1022Part3 Seg45.relationLc1022Part4 Seg45.relationLc1022Part5 Seg45.relationLc1022Part6 at r5576
  unfold Seg45.relationRow5577 at r5577
  unfold Seg45.relationRow5578 at r5578
  unfold Seg45.relationRow5579 at r5579
  unfold Seg45.relationRow5580 Seg45.relationLc1023 Seg45.relationLc1023Part0 Seg45.relationLc1023Part1 Seg45.relationLc1023Part2 Seg45.relationLc1023Part3 Seg45.relationLc1023Part4 Seg45.relationLc1023Part5 Seg45.relationLc1023Part6 at r5580
  unfold Seg45.relationRow5581 Seg45.relationLc1024 Seg45.relationLc1024Part0 Seg45.relationLc1024Part1 Seg45.relationLc1024Part2 Seg45.relationLc1024Part3 Seg45.relationLc1024Part4 Seg45.relationLc1024Part5 Seg45.relationLc1024Part6 at r5581
  unfold Seg45.relationRow5582 at r5582
  unfold Seg45.relationRow5583 at r5583
  unfold Seg45.relationRow5584 at r5584
  unfold Seg45.relationRow5585 at r5585
  unfold Seg45.relationRow5586 at r5586
  have hrung197 (bit : Bool) (hbit : rho 41145 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX197 rho : Seg45.F), (seg45AccY197 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43799 : Seg45.F), (rho 43800 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX197 rho : Seg45.F), (seg45AccY197 rho : Seg45.F)⟩
        ⟨(rho 43799 : Seg45.F), (rho 43800 : Seg45.F)⟩
        ⟨(seg45AccX198 rho : Seg45.F), (seg45AccY198 rho : Seg45.F)⟩
        ⟨(rho 43813 : Seg45.F), (rho 43814 : Seg45.F)⟩ := by
    have hsum : seg45AccX197 rho + seg45AccY197 rho = rho 43801 := by
      rw [seg45LadderFlatX197_eq, seg45LadderFlatY197_eq]
      unfold seg45LadderFlatX197 seg45LadderFlatY197
      linear_combination r5573
    have ha0 : (rho 43799 + rho 43800) * (seg45AccX197 rho + seg45AccY197 rho) = rho 43802 := by
      rw [hsum]
      linear_combination r5574
    have ha1 : rho 43800 * seg45AccX197 rho = rho 43803 := by
      rw [seg45LadderFlatX197_eq]
      unfold seg45LadderFlatX197
      linear_combination r5575
    have ha2 : rho 43799 * seg45AccY197 rho = rho 43804 := by
      rw [seg45LadderFlatY197_eq]
      unfold seg45LadderFlatY197
      linear_combination r5576
    have ha3 : 3021 * rho 43803 * rho 43804 = rho 43805 := by
      linear_combination r5577
    have ha4 : rho 43806 * (1 + rho 43805) = rho 43803 + rho 43804 := by
      linear_combination r5578
    have ha5 : rho 43807 * (1 - rho 43805) = rho 43802 - rho 43803 - rho 43804 := by
      linear_combination r5579
    have haddx :
        rho 43806 * (1 + 3021 * (rho 43800 * seg45AccX197 rho) * (rho 43799 * seg45AccY197 rho)) =
          rho 43800 * seg45AccX197 rho + rho 43799 * seg45AccY197 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43807 * (1 - 3021 * (rho 43800 * seg45AccX197 rho) * (rho 43799 * seg45AccY197 rho)) =
          (-1) * (rho 43800 * seg45AccX197 rho) - rho 43799 * seg45AccY197 rho +
            (seg45AccY197 rho - seg45AccX197 rho * (-1)) * (rho 43799 + rho 43800) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43807 * (1 - rho 43805) = rho 43802 - rho 43803 - rho 43804 := ha5
        _ = (-1) * rho 43803 - rho 43804 + (seg45AccY197 rho - seg45AccX197 rho * (-1)) * (rho 43799 + rho 43800) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX198 rho = seg45AccX197 rho - Bool.toZMod bit * (seg45AccX197 rho - rho 43806) := by
      have hd : rho 43808 = Bool.toZMod bit * (rho 43806 - seg45AccX197 rho) := by
        rw [← hbit, seg45LadderFlatX197_eq]
        unfold seg45LadderFlatX197
        linear_combination -r5580
      unfold seg45AccX198
      linear_combination hd
    have hsely : seg45AccY198 rho = seg45AccY197 rho - Bool.toZMod bit * (seg45AccY197 rho - rho 43807) := by
      have hd : rho 43809 = Bool.toZMod bit * (rho 43807 - seg45AccY197 rho) := by
        rw [← hbit, seg45LadderFlatY197_eq]
        unfold seg45LadderFlatY197
        linear_combination -r5581
      unfold seg45AccY198
      linear_combination hd
    have hd0 : rho 43799 * rho 43800 = rho 43810 := by linear_combination r5582
    have hd1 : rho 43799 * rho 43799 = rho 43811 := by linear_combination r5583
    have hd2 : rho 43800 * rho 43800 = rho 43812 := by linear_combination r5584
    have hd3 : rho 43813 * (rho 43800 * rho 43800 + rho 43799 * rho 43799 * (-1)) = 2 * (rho 43799 * rho 43800) := by
      rw [hd0, hd1, hd2]
      linear_combination r5585
    have hd4 : rho 43814 * (2 - (rho 43800 * rho 43800 + rho 43799 * rho 43799 * (-1))) = rho 43800 * rho 43800 - rho 43799 * rho 43799 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5586
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX197 rho : Seg45.F), (seg45AccY197 rho : Seg45.F)⟩
      ⟨(rho 43799 : Seg45.F), (rho 43800 : Seg45.F)⟩
      ⟨(rho 43806 : Seg45.F), (rho 43807 : Seg45.F)⟩
      ⟨(seg45AccX198 rho : Seg45.F), (seg45AccY198 rho : Seg45.F)⟩
      ⟨(rho 43813 : Seg45.F), (rho 43814 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung197

theorem seg45_rung198 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41146 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX198 rho : Seg45.F), (seg45AccY198 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43813 : Seg45.F), (rho 43814 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX198 rho : Seg45.F), (seg45AccY198 rho : Seg45.F)⟩
        ⟨(rho 43813 : Seg45.F), (rho 43814 : Seg45.F)⟩
        ⟨(seg45AccX199 rho : Seg45.F), (seg45AccY199 rho : Seg45.F)⟩
        ⟨(rho 43827 : Seg45.F), (rho 43828 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p69,
    p70, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart69 at p69
  rcases p69 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5587, r5588, r5589, r5590, r5591, r5592, r5593, r5594, r5595, r5596, r5597, r5598, r5599⟩
  unfold Seg45.relationPart70 at p70
  rcases p70 with ⟨r5600, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow5587 Seg45.relationLc1025 Seg45.relationLc1025Part0 Seg45.relationLc1025Part1 Seg45.relationLc1025Part2 Seg45.relationLc1025Part3 Seg45.relationLc1025Part4 Seg45.relationLc1025Part5 Seg45.relationLc1025Part6 Seg45.relationLc1025Part7 Seg45.relationLc1025Part8 Seg45.relationLc1025Part9 Seg45.relationLc1025Part10 Seg45.relationLc1025Part11 Seg45.relationLc1025Part12 at r5587
  unfold Seg45.relationRow5588 at r5588
  unfold Seg45.relationRow5589 Seg45.relationLc1026 Seg45.relationLc1026Part0 Seg45.relationLc1026Part1 Seg45.relationLc1026Part2 Seg45.relationLc1026Part3 Seg45.relationLc1026Part4 Seg45.relationLc1026Part5 Seg45.relationLc1026Part6 at r5589
  unfold Seg45.relationRow5590 Seg45.relationLc1027 Seg45.relationLc1027Part0 Seg45.relationLc1027Part1 Seg45.relationLc1027Part2 Seg45.relationLc1027Part3 Seg45.relationLc1027Part4 Seg45.relationLc1027Part5 Seg45.relationLc1027Part6 at r5590
  unfold Seg45.relationRow5591 at r5591
  unfold Seg45.relationRow5592 at r5592
  unfold Seg45.relationRow5593 at r5593
  unfold Seg45.relationRow5594 Seg45.relationLc1028 Seg45.relationLc1028Part0 Seg45.relationLc1028Part1 Seg45.relationLc1028Part2 Seg45.relationLc1028Part3 Seg45.relationLc1028Part4 Seg45.relationLc1028Part5 Seg45.relationLc1028Part6 at r5594
  unfold Seg45.relationRow5595 Seg45.relationLc1029 Seg45.relationLc1029Part0 Seg45.relationLc1029Part1 Seg45.relationLc1029Part2 Seg45.relationLc1029Part3 Seg45.relationLc1029Part4 Seg45.relationLc1029Part5 Seg45.relationLc1029Part6 at r5595
  unfold Seg45.relationRow5596 at r5596
  unfold Seg45.relationRow5597 at r5597
  unfold Seg45.relationRow5598 at r5598
  unfold Seg45.relationRow5599 at r5599
  unfold Seg45.relationRow5600 at r5600
  have hrung198 (bit : Bool) (hbit : rho 41146 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX198 rho : Seg45.F), (seg45AccY198 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43813 : Seg45.F), (rho 43814 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX198 rho : Seg45.F), (seg45AccY198 rho : Seg45.F)⟩
        ⟨(rho 43813 : Seg45.F), (rho 43814 : Seg45.F)⟩
        ⟨(seg45AccX199 rho : Seg45.F), (seg45AccY199 rho : Seg45.F)⟩
        ⟨(rho 43827 : Seg45.F), (rho 43828 : Seg45.F)⟩ := by
    have hsum : seg45AccX198 rho + seg45AccY198 rho = rho 43815 := by
      rw [seg45LadderFlatX198_eq, seg45LadderFlatY198_eq]
      unfold seg45LadderFlatX198 seg45LadderFlatY198
      linear_combination r5587
    have ha0 : (rho 43813 + rho 43814) * (seg45AccX198 rho + seg45AccY198 rho) = rho 43816 := by
      rw [hsum]
      linear_combination r5588
    have ha1 : rho 43814 * seg45AccX198 rho = rho 43817 := by
      rw [seg45LadderFlatX198_eq]
      unfold seg45LadderFlatX198
      linear_combination r5589
    have ha2 : rho 43813 * seg45AccY198 rho = rho 43818 := by
      rw [seg45LadderFlatY198_eq]
      unfold seg45LadderFlatY198
      linear_combination r5590
    have ha3 : 3021 * rho 43817 * rho 43818 = rho 43819 := by
      linear_combination r5591
    have ha4 : rho 43820 * (1 + rho 43819) = rho 43817 + rho 43818 := by
      linear_combination r5592
    have ha5 : rho 43821 * (1 - rho 43819) = rho 43816 - rho 43817 - rho 43818 := by
      linear_combination r5593
    have haddx :
        rho 43820 * (1 + 3021 * (rho 43814 * seg45AccX198 rho) * (rho 43813 * seg45AccY198 rho)) =
          rho 43814 * seg45AccX198 rho + rho 43813 * seg45AccY198 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43821 * (1 - 3021 * (rho 43814 * seg45AccX198 rho) * (rho 43813 * seg45AccY198 rho)) =
          (-1) * (rho 43814 * seg45AccX198 rho) - rho 43813 * seg45AccY198 rho +
            (seg45AccY198 rho - seg45AccX198 rho * (-1)) * (rho 43813 + rho 43814) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43821 * (1 - rho 43819) = rho 43816 - rho 43817 - rho 43818 := ha5
        _ = (-1) * rho 43817 - rho 43818 + (seg45AccY198 rho - seg45AccX198 rho * (-1)) * (rho 43813 + rho 43814) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX199 rho = seg45AccX198 rho - Bool.toZMod bit * (seg45AccX198 rho - rho 43820) := by
      have hd : rho 43822 = Bool.toZMod bit * (rho 43820 - seg45AccX198 rho) := by
        rw [← hbit, seg45LadderFlatX198_eq]
        unfold seg45LadderFlatX198
        linear_combination -r5594
      unfold seg45AccX199
      linear_combination hd
    have hsely : seg45AccY199 rho = seg45AccY198 rho - Bool.toZMod bit * (seg45AccY198 rho - rho 43821) := by
      have hd : rho 43823 = Bool.toZMod bit * (rho 43821 - seg45AccY198 rho) := by
        rw [← hbit, seg45LadderFlatY198_eq]
        unfold seg45LadderFlatY198
        linear_combination -r5595
      unfold seg45AccY199
      linear_combination hd
    have hd0 : rho 43813 * rho 43814 = rho 43824 := by linear_combination r5596
    have hd1 : rho 43813 * rho 43813 = rho 43825 := by linear_combination r5597
    have hd2 : rho 43814 * rho 43814 = rho 43826 := by linear_combination r5598
    have hd3 : rho 43827 * (rho 43814 * rho 43814 + rho 43813 * rho 43813 * (-1)) = 2 * (rho 43813 * rho 43814) := by
      rw [hd0, hd1, hd2]
      linear_combination r5599
    have hd4 : rho 43828 * (2 - (rho 43814 * rho 43814 + rho 43813 * rho 43813 * (-1))) = rho 43814 * rho 43814 - rho 43813 * rho 43813 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5600
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX198 rho : Seg45.F), (seg45AccY198 rho : Seg45.F)⟩
      ⟨(rho 43813 : Seg45.F), (rho 43814 : Seg45.F)⟩
      ⟨(rho 43820 : Seg45.F), (rho 43821 : Seg45.F)⟩
      ⟨(seg45AccX199 rho : Seg45.F), (seg45AccY199 rho : Seg45.F)⟩
      ⟨(rho 43827 : Seg45.F), (rho 43828 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung198

theorem seg45_rung199 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41147 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX199 rho : Seg45.F), (seg45AccY199 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43827 : Seg45.F), (rho 43828 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX199 rho : Seg45.F), (seg45AccY199 rho : Seg45.F)⟩
        ⟨(rho 43827 : Seg45.F), (rho 43828 : Seg45.F)⟩
        ⟨(seg45AccX200 rho : Seg45.F), (seg45AccY200 rho : Seg45.F)⟩
        ⟨(rho 43841 : Seg45.F), (rho 43842 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p70, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart70 at p70
  rcases p70 with ⟨_, r5601, r5602, r5603, r5604, r5605, r5606, r5607, r5608, r5609, r5610, r5611, r5612, r5613, r5614, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow5601 Seg45.relationLc1030 Seg45.relationLc1030Part0 Seg45.relationLc1030Part1 Seg45.relationLc1030Part2 Seg45.relationLc1030Part3 Seg45.relationLc1030Part4 Seg45.relationLc1030Part5 Seg45.relationLc1030Part6 Seg45.relationLc1030Part7 Seg45.relationLc1030Part8 Seg45.relationLc1030Part9 Seg45.relationLc1030Part10 Seg45.relationLc1030Part11 Seg45.relationLc1030Part12 at r5601
  unfold Seg45.relationRow5602 at r5602
  unfold Seg45.relationRow5603 Seg45.relationLc1031 Seg45.relationLc1031Part0 Seg45.relationLc1031Part1 Seg45.relationLc1031Part2 Seg45.relationLc1031Part3 Seg45.relationLc1031Part4 Seg45.relationLc1031Part5 Seg45.relationLc1031Part6 at r5603
  unfold Seg45.relationRow5604 Seg45.relationLc1032 Seg45.relationLc1032Part0 Seg45.relationLc1032Part1 Seg45.relationLc1032Part2 Seg45.relationLc1032Part3 Seg45.relationLc1032Part4 Seg45.relationLc1032Part5 Seg45.relationLc1032Part6 at r5604
  unfold Seg45.relationRow5605 at r5605
  unfold Seg45.relationRow5606 at r5606
  unfold Seg45.relationRow5607 at r5607
  unfold Seg45.relationRow5608 Seg45.relationLc1033 Seg45.relationLc1033Part0 Seg45.relationLc1033Part1 Seg45.relationLc1033Part2 Seg45.relationLc1033Part3 Seg45.relationLc1033Part4 Seg45.relationLc1033Part5 Seg45.relationLc1033Part6 at r5608
  unfold Seg45.relationRow5609 Seg45.relationLc1034 Seg45.relationLc1034Part0 Seg45.relationLc1034Part1 Seg45.relationLc1034Part2 Seg45.relationLc1034Part3 Seg45.relationLc1034Part4 Seg45.relationLc1034Part5 Seg45.relationLc1034Part6 at r5609
  unfold Seg45.relationRow5610 at r5610
  unfold Seg45.relationRow5611 at r5611
  unfold Seg45.relationRow5612 at r5612
  unfold Seg45.relationRow5613 at r5613
  unfold Seg45.relationRow5614 at r5614
  have hrung199 (bit : Bool) (hbit : rho 41147 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX199 rho : Seg45.F), (seg45AccY199 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43827 : Seg45.F), (rho 43828 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX199 rho : Seg45.F), (seg45AccY199 rho : Seg45.F)⟩
        ⟨(rho 43827 : Seg45.F), (rho 43828 : Seg45.F)⟩
        ⟨(seg45AccX200 rho : Seg45.F), (seg45AccY200 rho : Seg45.F)⟩
        ⟨(rho 43841 : Seg45.F), (rho 43842 : Seg45.F)⟩ := by
    have hsum : seg45AccX199 rho + seg45AccY199 rho = rho 43829 := by
      rw [seg45LadderFlatX199_eq, seg45LadderFlatY199_eq]
      unfold seg45LadderFlatX199 seg45LadderFlatY199
      linear_combination r5601
    have ha0 : (rho 43827 + rho 43828) * (seg45AccX199 rho + seg45AccY199 rho) = rho 43830 := by
      rw [hsum]
      linear_combination r5602
    have ha1 : rho 43828 * seg45AccX199 rho = rho 43831 := by
      rw [seg45LadderFlatX199_eq]
      unfold seg45LadderFlatX199
      linear_combination r5603
    have ha2 : rho 43827 * seg45AccY199 rho = rho 43832 := by
      rw [seg45LadderFlatY199_eq]
      unfold seg45LadderFlatY199
      linear_combination r5604
    have ha3 : 3021 * rho 43831 * rho 43832 = rho 43833 := by
      linear_combination r5605
    have ha4 : rho 43834 * (1 + rho 43833) = rho 43831 + rho 43832 := by
      linear_combination r5606
    have ha5 : rho 43835 * (1 - rho 43833) = rho 43830 - rho 43831 - rho 43832 := by
      linear_combination r5607
    have haddx :
        rho 43834 * (1 + 3021 * (rho 43828 * seg45AccX199 rho) * (rho 43827 * seg45AccY199 rho)) =
          rho 43828 * seg45AccX199 rho + rho 43827 * seg45AccY199 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43835 * (1 - 3021 * (rho 43828 * seg45AccX199 rho) * (rho 43827 * seg45AccY199 rho)) =
          (-1) * (rho 43828 * seg45AccX199 rho) - rho 43827 * seg45AccY199 rho +
            (seg45AccY199 rho - seg45AccX199 rho * (-1)) * (rho 43827 + rho 43828) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43835 * (1 - rho 43833) = rho 43830 - rho 43831 - rho 43832 := ha5
        _ = (-1) * rho 43831 - rho 43832 + (seg45AccY199 rho - seg45AccX199 rho * (-1)) * (rho 43827 + rho 43828) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX200 rho = seg45AccX199 rho - Bool.toZMod bit * (seg45AccX199 rho - rho 43834) := by
      have hd : rho 43836 = Bool.toZMod bit * (rho 43834 - seg45AccX199 rho) := by
        rw [← hbit, seg45LadderFlatX199_eq]
        unfold seg45LadderFlatX199
        linear_combination -r5608
      unfold seg45AccX200
      linear_combination hd
    have hsely : seg45AccY200 rho = seg45AccY199 rho - Bool.toZMod bit * (seg45AccY199 rho - rho 43835) := by
      have hd : rho 43837 = Bool.toZMod bit * (rho 43835 - seg45AccY199 rho) := by
        rw [← hbit, seg45LadderFlatY199_eq]
        unfold seg45LadderFlatY199
        linear_combination -r5609
      unfold seg45AccY200
      linear_combination hd
    have hd0 : rho 43827 * rho 43828 = rho 43838 := by linear_combination r5610
    have hd1 : rho 43827 * rho 43827 = rho 43839 := by linear_combination r5611
    have hd2 : rho 43828 * rho 43828 = rho 43840 := by linear_combination r5612
    have hd3 : rho 43841 * (rho 43828 * rho 43828 + rho 43827 * rho 43827 * (-1)) = 2 * (rho 43827 * rho 43828) := by
      rw [hd0, hd1, hd2]
      linear_combination r5613
    have hd4 : rho 43842 * (2 - (rho 43828 * rho 43828 + rho 43827 * rho 43827 * (-1))) = rho 43828 * rho 43828 - rho 43827 * rho 43827 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5614
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX199 rho : Seg45.F), (seg45AccY199 rho : Seg45.F)⟩
      ⟨(rho 43827 : Seg45.F), (rho 43828 : Seg45.F)⟩
      ⟨(rho 43834 : Seg45.F), (rho 43835 : Seg45.F)⟩
      ⟨(seg45AccX200 rho : Seg45.F), (seg45AccY200 rho : Seg45.F)⟩
      ⟨(rho 43841 : Seg45.F), (rho 43842 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung199

theorem seg45_rung200 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41148 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX200 rho : Seg45.F), (seg45AccY200 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43841 : Seg45.F), (rho 43842 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX200 rho : Seg45.F), (seg45AccY200 rho : Seg45.F)⟩
        ⟨(rho 43841 : Seg45.F), (rho 43842 : Seg45.F)⟩
        ⟨(seg45AccX201 rho : Seg45.F), (seg45AccY201 rho : Seg45.F)⟩
        ⟨(rho 43855 : Seg45.F), (rho 43856 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p70, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart70 at p70
  rcases p70 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5615, r5616, r5617, r5618, r5619, r5620, r5621, r5622, r5623, r5624, r5625, r5626, r5627, r5628, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow5615 Seg45.relationLc1035 Seg45.relationLc1035Part0 Seg45.relationLc1035Part1 Seg45.relationLc1035Part2 Seg45.relationLc1035Part3 Seg45.relationLc1035Part4 Seg45.relationLc1035Part5 Seg45.relationLc1035Part6 Seg45.relationLc1035Part7 Seg45.relationLc1035Part8 Seg45.relationLc1035Part9 Seg45.relationLc1035Part10 Seg45.relationLc1035Part11 Seg45.relationLc1035Part12 at r5615
  unfold Seg45.relationRow5616 at r5616
  unfold Seg45.relationRow5617 Seg45.relationLc1036 Seg45.relationLc1036Part0 Seg45.relationLc1036Part1 Seg45.relationLc1036Part2 Seg45.relationLc1036Part3 Seg45.relationLc1036Part4 Seg45.relationLc1036Part5 Seg45.relationLc1036Part6 at r5617
  unfold Seg45.relationRow5618 Seg45.relationLc1037 Seg45.relationLc1037Part0 Seg45.relationLc1037Part1 Seg45.relationLc1037Part2 Seg45.relationLc1037Part3 Seg45.relationLc1037Part4 Seg45.relationLc1037Part5 Seg45.relationLc1037Part6 at r5618
  unfold Seg45.relationRow5619 at r5619
  unfold Seg45.relationRow5620 at r5620
  unfold Seg45.relationRow5621 at r5621
  unfold Seg45.relationRow5622 Seg45.relationLc1038 Seg45.relationLc1038Part0 Seg45.relationLc1038Part1 Seg45.relationLc1038Part2 Seg45.relationLc1038Part3 Seg45.relationLc1038Part4 Seg45.relationLc1038Part5 Seg45.relationLc1038Part6 at r5622
  unfold Seg45.relationRow5623 Seg45.relationLc1039 Seg45.relationLc1039Part0 Seg45.relationLc1039Part1 Seg45.relationLc1039Part2 Seg45.relationLc1039Part3 Seg45.relationLc1039Part4 Seg45.relationLc1039Part5 Seg45.relationLc1039Part6 at r5623
  unfold Seg45.relationRow5624 at r5624
  unfold Seg45.relationRow5625 at r5625
  unfold Seg45.relationRow5626 at r5626
  unfold Seg45.relationRow5627 at r5627
  unfold Seg45.relationRow5628 at r5628
  have hrung200 (bit : Bool) (hbit : rho 41148 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX200 rho : Seg45.F), (seg45AccY200 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43841 : Seg45.F), (rho 43842 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX200 rho : Seg45.F), (seg45AccY200 rho : Seg45.F)⟩
        ⟨(rho 43841 : Seg45.F), (rho 43842 : Seg45.F)⟩
        ⟨(seg45AccX201 rho : Seg45.F), (seg45AccY201 rho : Seg45.F)⟩
        ⟨(rho 43855 : Seg45.F), (rho 43856 : Seg45.F)⟩ := by
    have hsum : seg45AccX200 rho + seg45AccY200 rho = rho 43843 := by
      rw [seg45LadderFlatX200_eq, seg45LadderFlatY200_eq]
      unfold seg45LadderFlatX200 seg45LadderFlatY200
      linear_combination r5615
    have ha0 : (rho 43841 + rho 43842) * (seg45AccX200 rho + seg45AccY200 rho) = rho 43844 := by
      rw [hsum]
      linear_combination r5616
    have ha1 : rho 43842 * seg45AccX200 rho = rho 43845 := by
      rw [seg45LadderFlatX200_eq]
      unfold seg45LadderFlatX200
      linear_combination r5617
    have ha2 : rho 43841 * seg45AccY200 rho = rho 43846 := by
      rw [seg45LadderFlatY200_eq]
      unfold seg45LadderFlatY200
      linear_combination r5618
    have ha3 : 3021 * rho 43845 * rho 43846 = rho 43847 := by
      linear_combination r5619
    have ha4 : rho 43848 * (1 + rho 43847) = rho 43845 + rho 43846 := by
      linear_combination r5620
    have ha5 : rho 43849 * (1 - rho 43847) = rho 43844 - rho 43845 - rho 43846 := by
      linear_combination r5621
    have haddx :
        rho 43848 * (1 + 3021 * (rho 43842 * seg45AccX200 rho) * (rho 43841 * seg45AccY200 rho)) =
          rho 43842 * seg45AccX200 rho + rho 43841 * seg45AccY200 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43849 * (1 - 3021 * (rho 43842 * seg45AccX200 rho) * (rho 43841 * seg45AccY200 rho)) =
          (-1) * (rho 43842 * seg45AccX200 rho) - rho 43841 * seg45AccY200 rho +
            (seg45AccY200 rho - seg45AccX200 rho * (-1)) * (rho 43841 + rho 43842) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43849 * (1 - rho 43847) = rho 43844 - rho 43845 - rho 43846 := ha5
        _ = (-1) * rho 43845 - rho 43846 + (seg45AccY200 rho - seg45AccX200 rho * (-1)) * (rho 43841 + rho 43842) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX201 rho = seg45AccX200 rho - Bool.toZMod bit * (seg45AccX200 rho - rho 43848) := by
      have hd : rho 43850 = Bool.toZMod bit * (rho 43848 - seg45AccX200 rho) := by
        rw [← hbit, seg45LadderFlatX200_eq]
        unfold seg45LadderFlatX200
        linear_combination -r5622
      unfold seg45AccX201
      linear_combination hd
    have hsely : seg45AccY201 rho = seg45AccY200 rho - Bool.toZMod bit * (seg45AccY200 rho - rho 43849) := by
      have hd : rho 43851 = Bool.toZMod bit * (rho 43849 - seg45AccY200 rho) := by
        rw [← hbit, seg45LadderFlatY200_eq]
        unfold seg45LadderFlatY200
        linear_combination -r5623
      unfold seg45AccY201
      linear_combination hd
    have hd0 : rho 43841 * rho 43842 = rho 43852 := by linear_combination r5624
    have hd1 : rho 43841 * rho 43841 = rho 43853 := by linear_combination r5625
    have hd2 : rho 43842 * rho 43842 = rho 43854 := by linear_combination r5626
    have hd3 : rho 43855 * (rho 43842 * rho 43842 + rho 43841 * rho 43841 * (-1)) = 2 * (rho 43841 * rho 43842) := by
      rw [hd0, hd1, hd2]
      linear_combination r5627
    have hd4 : rho 43856 * (2 - (rho 43842 * rho 43842 + rho 43841 * rho 43841 * (-1))) = rho 43842 * rho 43842 - rho 43841 * rho 43841 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5628
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX200 rho : Seg45.F), (seg45AccY200 rho : Seg45.F)⟩
      ⟨(rho 43841 : Seg45.F), (rho 43842 : Seg45.F)⟩
      ⟨(rho 43848 : Seg45.F), (rho 43849 : Seg45.F)⟩
      ⟨(seg45AccX201 rho : Seg45.F), (seg45AccY201 rho : Seg45.F)⟩
      ⟨(rho 43855 : Seg45.F), (rho 43856 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung200

theorem seg45_rung201 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41149 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX201 rho : Seg45.F), (seg45AccY201 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43855 : Seg45.F), (rho 43856 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX201 rho : Seg45.F), (seg45AccY201 rho : Seg45.F)⟩
        ⟨(rho 43855 : Seg45.F), (rho 43856 : Seg45.F)⟩
        ⟨(seg45AccX202 rho : Seg45.F), (seg45AccY202 rho : Seg45.F)⟩
        ⟨(rho 43869 : Seg45.F), (rho 43870 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p70, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart70 at p70
  rcases p70 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5629, r5630, r5631, r5632, r5633, r5634, r5635, r5636, r5637, r5638, r5639, r5640, r5641, r5642, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow5629 Seg45.relationLc1040 Seg45.relationLc1040Part0 Seg45.relationLc1040Part1 Seg45.relationLc1040Part2 Seg45.relationLc1040Part3 Seg45.relationLc1040Part4 Seg45.relationLc1040Part5 Seg45.relationLc1040Part6 Seg45.relationLc1040Part7 Seg45.relationLc1040Part8 Seg45.relationLc1040Part9 Seg45.relationLc1040Part10 Seg45.relationLc1040Part11 Seg45.relationLc1040Part12 at r5629
  unfold Seg45.relationRow5630 at r5630
  unfold Seg45.relationRow5631 Seg45.relationLc1041 Seg45.relationLc1041Part0 Seg45.relationLc1041Part1 Seg45.relationLc1041Part2 Seg45.relationLc1041Part3 Seg45.relationLc1041Part4 Seg45.relationLc1041Part5 Seg45.relationLc1041Part6 at r5631
  unfold Seg45.relationRow5632 Seg45.relationLc1042 Seg45.relationLc1042Part0 Seg45.relationLc1042Part1 Seg45.relationLc1042Part2 Seg45.relationLc1042Part3 Seg45.relationLc1042Part4 Seg45.relationLc1042Part5 Seg45.relationLc1042Part6 at r5632
  unfold Seg45.relationRow5633 at r5633
  unfold Seg45.relationRow5634 at r5634
  unfold Seg45.relationRow5635 at r5635
  unfold Seg45.relationRow5636 Seg45.relationLc1043 Seg45.relationLc1043Part0 Seg45.relationLc1043Part1 Seg45.relationLc1043Part2 Seg45.relationLc1043Part3 Seg45.relationLc1043Part4 Seg45.relationLc1043Part5 Seg45.relationLc1043Part6 at r5636
  unfold Seg45.relationRow5637 Seg45.relationLc1044 Seg45.relationLc1044Part0 Seg45.relationLc1044Part1 Seg45.relationLc1044Part2 Seg45.relationLc1044Part3 Seg45.relationLc1044Part4 Seg45.relationLc1044Part5 Seg45.relationLc1044Part6 at r5637
  unfold Seg45.relationRow5638 at r5638
  unfold Seg45.relationRow5639 at r5639
  unfold Seg45.relationRow5640 at r5640
  unfold Seg45.relationRow5641 at r5641
  unfold Seg45.relationRow5642 at r5642
  have hrung201 (bit : Bool) (hbit : rho 41149 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX201 rho : Seg45.F), (seg45AccY201 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43855 : Seg45.F), (rho 43856 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX201 rho : Seg45.F), (seg45AccY201 rho : Seg45.F)⟩
        ⟨(rho 43855 : Seg45.F), (rho 43856 : Seg45.F)⟩
        ⟨(seg45AccX202 rho : Seg45.F), (seg45AccY202 rho : Seg45.F)⟩
        ⟨(rho 43869 : Seg45.F), (rho 43870 : Seg45.F)⟩ := by
    have hsum : seg45AccX201 rho + seg45AccY201 rho = rho 43857 := by
      rw [seg45LadderFlatX201_eq, seg45LadderFlatY201_eq]
      unfold seg45LadderFlatX201 seg45LadderFlatY201
      linear_combination r5629
    have ha0 : (rho 43855 + rho 43856) * (seg45AccX201 rho + seg45AccY201 rho) = rho 43858 := by
      rw [hsum]
      linear_combination r5630
    have ha1 : rho 43856 * seg45AccX201 rho = rho 43859 := by
      rw [seg45LadderFlatX201_eq]
      unfold seg45LadderFlatX201
      linear_combination r5631
    have ha2 : rho 43855 * seg45AccY201 rho = rho 43860 := by
      rw [seg45LadderFlatY201_eq]
      unfold seg45LadderFlatY201
      linear_combination r5632
    have ha3 : 3021 * rho 43859 * rho 43860 = rho 43861 := by
      linear_combination r5633
    have ha4 : rho 43862 * (1 + rho 43861) = rho 43859 + rho 43860 := by
      linear_combination r5634
    have ha5 : rho 43863 * (1 - rho 43861) = rho 43858 - rho 43859 - rho 43860 := by
      linear_combination r5635
    have haddx :
        rho 43862 * (1 + 3021 * (rho 43856 * seg45AccX201 rho) * (rho 43855 * seg45AccY201 rho)) =
          rho 43856 * seg45AccX201 rho + rho 43855 * seg45AccY201 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43863 * (1 - 3021 * (rho 43856 * seg45AccX201 rho) * (rho 43855 * seg45AccY201 rho)) =
          (-1) * (rho 43856 * seg45AccX201 rho) - rho 43855 * seg45AccY201 rho +
            (seg45AccY201 rho - seg45AccX201 rho * (-1)) * (rho 43855 + rho 43856) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43863 * (1 - rho 43861) = rho 43858 - rho 43859 - rho 43860 := ha5
        _ = (-1) * rho 43859 - rho 43860 + (seg45AccY201 rho - seg45AccX201 rho * (-1)) * (rho 43855 + rho 43856) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX202 rho = seg45AccX201 rho - Bool.toZMod bit * (seg45AccX201 rho - rho 43862) := by
      have hd : rho 43864 = Bool.toZMod bit * (rho 43862 - seg45AccX201 rho) := by
        rw [← hbit, seg45LadderFlatX201_eq]
        unfold seg45LadderFlatX201
        linear_combination -r5636
      unfold seg45AccX202
      linear_combination hd
    have hsely : seg45AccY202 rho = seg45AccY201 rho - Bool.toZMod bit * (seg45AccY201 rho - rho 43863) := by
      have hd : rho 43865 = Bool.toZMod bit * (rho 43863 - seg45AccY201 rho) := by
        rw [← hbit, seg45LadderFlatY201_eq]
        unfold seg45LadderFlatY201
        linear_combination -r5637
      unfold seg45AccY202
      linear_combination hd
    have hd0 : rho 43855 * rho 43856 = rho 43866 := by linear_combination r5638
    have hd1 : rho 43855 * rho 43855 = rho 43867 := by linear_combination r5639
    have hd2 : rho 43856 * rho 43856 = rho 43868 := by linear_combination r5640
    have hd3 : rho 43869 * (rho 43856 * rho 43856 + rho 43855 * rho 43855 * (-1)) = 2 * (rho 43855 * rho 43856) := by
      rw [hd0, hd1, hd2]
      linear_combination r5641
    have hd4 : rho 43870 * (2 - (rho 43856 * rho 43856 + rho 43855 * rho 43855 * (-1))) = rho 43856 * rho 43856 - rho 43855 * rho 43855 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5642
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX201 rho : Seg45.F), (seg45AccY201 rho : Seg45.F)⟩
      ⟨(rho 43855 : Seg45.F), (rho 43856 : Seg45.F)⟩
      ⟨(rho 43862 : Seg45.F), (rho 43863 : Seg45.F)⟩
      ⟨(seg45AccX202 rho : Seg45.F), (seg45AccY202 rho : Seg45.F)⟩
      ⟨(rho 43869 : Seg45.F), (rho 43870 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung201

theorem seg45_rung202 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41150 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX202 rho : Seg45.F), (seg45AccY202 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43869 : Seg45.F), (rho 43870 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX202 rho : Seg45.F), (seg45AccY202 rho : Seg45.F)⟩
        ⟨(rho 43869 : Seg45.F), (rho 43870 : Seg45.F)⟩
        ⟨(seg45AccX203 rho : Seg45.F), (seg45AccY203 rho : Seg45.F)⟩
        ⟨(rho 43883 : Seg45.F), (rho 43884 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p70, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart70 at p70
  rcases p70 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5643, r5644, r5645, r5646, r5647, r5648, r5649, r5650, r5651, r5652, r5653, r5654, r5655, r5656, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow5643 Seg45.relationLc1045 Seg45.relationLc1045Part0 Seg45.relationLc1045Part1 Seg45.relationLc1045Part2 Seg45.relationLc1045Part3 Seg45.relationLc1045Part4 Seg45.relationLc1045Part5 Seg45.relationLc1045Part6 Seg45.relationLc1045Part7 Seg45.relationLc1045Part8 Seg45.relationLc1045Part9 Seg45.relationLc1045Part10 Seg45.relationLc1045Part11 Seg45.relationLc1045Part12 at r5643
  unfold Seg45.relationRow5644 at r5644
  unfold Seg45.relationRow5645 Seg45.relationLc1046 Seg45.relationLc1046Part0 Seg45.relationLc1046Part1 Seg45.relationLc1046Part2 Seg45.relationLc1046Part3 Seg45.relationLc1046Part4 Seg45.relationLc1046Part5 Seg45.relationLc1046Part6 at r5645
  unfold Seg45.relationRow5646 Seg45.relationLc1047 Seg45.relationLc1047Part0 Seg45.relationLc1047Part1 Seg45.relationLc1047Part2 Seg45.relationLc1047Part3 Seg45.relationLc1047Part4 Seg45.relationLc1047Part5 Seg45.relationLc1047Part6 at r5646
  unfold Seg45.relationRow5647 at r5647
  unfold Seg45.relationRow5648 at r5648
  unfold Seg45.relationRow5649 at r5649
  unfold Seg45.relationRow5650 Seg45.relationLc1048 Seg45.relationLc1048Part0 Seg45.relationLc1048Part1 Seg45.relationLc1048Part2 Seg45.relationLc1048Part3 Seg45.relationLc1048Part4 Seg45.relationLc1048Part5 Seg45.relationLc1048Part6 at r5650
  unfold Seg45.relationRow5651 Seg45.relationLc1049 Seg45.relationLc1049Part0 Seg45.relationLc1049Part1 Seg45.relationLc1049Part2 Seg45.relationLc1049Part3 Seg45.relationLc1049Part4 Seg45.relationLc1049Part5 Seg45.relationLc1049Part6 at r5651
  unfold Seg45.relationRow5652 at r5652
  unfold Seg45.relationRow5653 at r5653
  unfold Seg45.relationRow5654 at r5654
  unfold Seg45.relationRow5655 at r5655
  unfold Seg45.relationRow5656 at r5656
  have hrung202 (bit : Bool) (hbit : rho 41150 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX202 rho : Seg45.F), (seg45AccY202 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43869 : Seg45.F), (rho 43870 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX202 rho : Seg45.F), (seg45AccY202 rho : Seg45.F)⟩
        ⟨(rho 43869 : Seg45.F), (rho 43870 : Seg45.F)⟩
        ⟨(seg45AccX203 rho : Seg45.F), (seg45AccY203 rho : Seg45.F)⟩
        ⟨(rho 43883 : Seg45.F), (rho 43884 : Seg45.F)⟩ := by
    have hsum : seg45AccX202 rho + seg45AccY202 rho = rho 43871 := by
      rw [seg45LadderFlatX202_eq, seg45LadderFlatY202_eq]
      unfold seg45LadderFlatX202 seg45LadderFlatY202
      linear_combination r5643
    have ha0 : (rho 43869 + rho 43870) * (seg45AccX202 rho + seg45AccY202 rho) = rho 43872 := by
      rw [hsum]
      linear_combination r5644
    have ha1 : rho 43870 * seg45AccX202 rho = rho 43873 := by
      rw [seg45LadderFlatX202_eq]
      unfold seg45LadderFlatX202
      linear_combination r5645
    have ha2 : rho 43869 * seg45AccY202 rho = rho 43874 := by
      rw [seg45LadderFlatY202_eq]
      unfold seg45LadderFlatY202
      linear_combination r5646
    have ha3 : 3021 * rho 43873 * rho 43874 = rho 43875 := by
      linear_combination r5647
    have ha4 : rho 43876 * (1 + rho 43875) = rho 43873 + rho 43874 := by
      linear_combination r5648
    have ha5 : rho 43877 * (1 - rho 43875) = rho 43872 - rho 43873 - rho 43874 := by
      linear_combination r5649
    have haddx :
        rho 43876 * (1 + 3021 * (rho 43870 * seg45AccX202 rho) * (rho 43869 * seg45AccY202 rho)) =
          rho 43870 * seg45AccX202 rho + rho 43869 * seg45AccY202 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43877 * (1 - 3021 * (rho 43870 * seg45AccX202 rho) * (rho 43869 * seg45AccY202 rho)) =
          (-1) * (rho 43870 * seg45AccX202 rho) - rho 43869 * seg45AccY202 rho +
            (seg45AccY202 rho - seg45AccX202 rho * (-1)) * (rho 43869 + rho 43870) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43877 * (1 - rho 43875) = rho 43872 - rho 43873 - rho 43874 := ha5
        _ = (-1) * rho 43873 - rho 43874 + (seg45AccY202 rho - seg45AccX202 rho * (-1)) * (rho 43869 + rho 43870) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX203 rho = seg45AccX202 rho - Bool.toZMod bit * (seg45AccX202 rho - rho 43876) := by
      have hd : rho 43878 = Bool.toZMod bit * (rho 43876 - seg45AccX202 rho) := by
        rw [← hbit, seg45LadderFlatX202_eq]
        unfold seg45LadderFlatX202
        linear_combination -r5650
      unfold seg45AccX203
      linear_combination hd
    have hsely : seg45AccY203 rho = seg45AccY202 rho - Bool.toZMod bit * (seg45AccY202 rho - rho 43877) := by
      have hd : rho 43879 = Bool.toZMod bit * (rho 43877 - seg45AccY202 rho) := by
        rw [← hbit, seg45LadderFlatY202_eq]
        unfold seg45LadderFlatY202
        linear_combination -r5651
      unfold seg45AccY203
      linear_combination hd
    have hd0 : rho 43869 * rho 43870 = rho 43880 := by linear_combination r5652
    have hd1 : rho 43869 * rho 43869 = rho 43881 := by linear_combination r5653
    have hd2 : rho 43870 * rho 43870 = rho 43882 := by linear_combination r5654
    have hd3 : rho 43883 * (rho 43870 * rho 43870 + rho 43869 * rho 43869 * (-1)) = 2 * (rho 43869 * rho 43870) := by
      rw [hd0, hd1, hd2]
      linear_combination r5655
    have hd4 : rho 43884 * (2 - (rho 43870 * rho 43870 + rho 43869 * rho 43869 * (-1))) = rho 43870 * rho 43870 - rho 43869 * rho 43869 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5656
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX202 rho : Seg45.F), (seg45AccY202 rho : Seg45.F)⟩
      ⟨(rho 43869 : Seg45.F), (rho 43870 : Seg45.F)⟩
      ⟨(rho 43876 : Seg45.F), (rho 43877 : Seg45.F)⟩
      ⟨(seg45AccX203 rho : Seg45.F), (seg45AccY203 rho : Seg45.F)⟩
      ⟨(rho 43883 : Seg45.F), (rho 43884 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung202

theorem seg45_rung203 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41151 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX203 rho : Seg45.F), (seg45AccY203 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43883 : Seg45.F), (rho 43884 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX203 rho : Seg45.F), (seg45AccY203 rho : Seg45.F)⟩
        ⟨(rho 43883 : Seg45.F), (rho 43884 : Seg45.F)⟩
        ⟨(seg45AccX204 rho : Seg45.F), (seg45AccY204 rho : Seg45.F)⟩
        ⟨(rho 43897 : Seg45.F), (rho 43898 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p70, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart70 at p70
  rcases p70 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5657, r5658, r5659, r5660, r5661, r5662, r5663, r5664, r5665, r5666, r5667, r5668, r5669, r5670, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow5657 Seg45.relationLc1050 Seg45.relationLc1050Part0 Seg45.relationLc1050Part1 Seg45.relationLc1050Part2 Seg45.relationLc1050Part3 Seg45.relationLc1050Part4 Seg45.relationLc1050Part5 Seg45.relationLc1050Part6 Seg45.relationLc1050Part7 Seg45.relationLc1050Part8 Seg45.relationLc1050Part9 Seg45.relationLc1050Part10 Seg45.relationLc1050Part11 Seg45.relationLc1050Part12 at r5657
  unfold Seg45.relationRow5658 at r5658
  unfold Seg45.relationRow5659 Seg45.relationLc1051 Seg45.relationLc1051Part0 Seg45.relationLc1051Part1 Seg45.relationLc1051Part2 Seg45.relationLc1051Part3 Seg45.relationLc1051Part4 Seg45.relationLc1051Part5 Seg45.relationLc1051Part6 at r5659
  unfold Seg45.relationRow5660 Seg45.relationLc1052 Seg45.relationLc1052Part0 Seg45.relationLc1052Part1 Seg45.relationLc1052Part2 Seg45.relationLc1052Part3 Seg45.relationLc1052Part4 Seg45.relationLc1052Part5 Seg45.relationLc1052Part6 at r5660
  unfold Seg45.relationRow5661 at r5661
  unfold Seg45.relationRow5662 at r5662
  unfold Seg45.relationRow5663 at r5663
  unfold Seg45.relationRow5664 Seg45.relationLc1053 Seg45.relationLc1053Part0 Seg45.relationLc1053Part1 Seg45.relationLc1053Part2 Seg45.relationLc1053Part3 Seg45.relationLc1053Part4 Seg45.relationLc1053Part5 Seg45.relationLc1053Part6 at r5664
  unfold Seg45.relationRow5665 Seg45.relationLc1054 Seg45.relationLc1054Part0 Seg45.relationLc1054Part1 Seg45.relationLc1054Part2 Seg45.relationLc1054Part3 Seg45.relationLc1054Part4 Seg45.relationLc1054Part5 Seg45.relationLc1054Part6 at r5665
  unfold Seg45.relationRow5666 at r5666
  unfold Seg45.relationRow5667 at r5667
  unfold Seg45.relationRow5668 at r5668
  unfold Seg45.relationRow5669 at r5669
  unfold Seg45.relationRow5670 at r5670
  have hrung203 (bit : Bool) (hbit : rho 41151 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX203 rho : Seg45.F), (seg45AccY203 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43883 : Seg45.F), (rho 43884 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX203 rho : Seg45.F), (seg45AccY203 rho : Seg45.F)⟩
        ⟨(rho 43883 : Seg45.F), (rho 43884 : Seg45.F)⟩
        ⟨(seg45AccX204 rho : Seg45.F), (seg45AccY204 rho : Seg45.F)⟩
        ⟨(rho 43897 : Seg45.F), (rho 43898 : Seg45.F)⟩ := by
    have hsum : seg45AccX203 rho + seg45AccY203 rho = rho 43885 := by
      rw [seg45LadderFlatX203_eq, seg45LadderFlatY203_eq]
      unfold seg45LadderFlatX203 seg45LadderFlatY203
      linear_combination r5657
    have ha0 : (rho 43883 + rho 43884) * (seg45AccX203 rho + seg45AccY203 rho) = rho 43886 := by
      rw [hsum]
      linear_combination r5658
    have ha1 : rho 43884 * seg45AccX203 rho = rho 43887 := by
      rw [seg45LadderFlatX203_eq]
      unfold seg45LadderFlatX203
      linear_combination r5659
    have ha2 : rho 43883 * seg45AccY203 rho = rho 43888 := by
      rw [seg45LadderFlatY203_eq]
      unfold seg45LadderFlatY203
      linear_combination r5660
    have ha3 : 3021 * rho 43887 * rho 43888 = rho 43889 := by
      linear_combination r5661
    have ha4 : rho 43890 * (1 + rho 43889) = rho 43887 + rho 43888 := by
      linear_combination r5662
    have ha5 : rho 43891 * (1 - rho 43889) = rho 43886 - rho 43887 - rho 43888 := by
      linear_combination r5663
    have haddx :
        rho 43890 * (1 + 3021 * (rho 43884 * seg45AccX203 rho) * (rho 43883 * seg45AccY203 rho)) =
          rho 43884 * seg45AccX203 rho + rho 43883 * seg45AccY203 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43891 * (1 - 3021 * (rho 43884 * seg45AccX203 rho) * (rho 43883 * seg45AccY203 rho)) =
          (-1) * (rho 43884 * seg45AccX203 rho) - rho 43883 * seg45AccY203 rho +
            (seg45AccY203 rho - seg45AccX203 rho * (-1)) * (rho 43883 + rho 43884) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43891 * (1 - rho 43889) = rho 43886 - rho 43887 - rho 43888 := ha5
        _ = (-1) * rho 43887 - rho 43888 + (seg45AccY203 rho - seg45AccX203 rho * (-1)) * (rho 43883 + rho 43884) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX204 rho = seg45AccX203 rho - Bool.toZMod bit * (seg45AccX203 rho - rho 43890) := by
      have hd : rho 43892 = Bool.toZMod bit * (rho 43890 - seg45AccX203 rho) := by
        rw [← hbit, seg45LadderFlatX203_eq]
        unfold seg45LadderFlatX203
        linear_combination -r5664
      unfold seg45AccX204
      linear_combination hd
    have hsely : seg45AccY204 rho = seg45AccY203 rho - Bool.toZMod bit * (seg45AccY203 rho - rho 43891) := by
      have hd : rho 43893 = Bool.toZMod bit * (rho 43891 - seg45AccY203 rho) := by
        rw [← hbit, seg45LadderFlatY203_eq]
        unfold seg45LadderFlatY203
        linear_combination -r5665
      unfold seg45AccY204
      linear_combination hd
    have hd0 : rho 43883 * rho 43884 = rho 43894 := by linear_combination r5666
    have hd1 : rho 43883 * rho 43883 = rho 43895 := by linear_combination r5667
    have hd2 : rho 43884 * rho 43884 = rho 43896 := by linear_combination r5668
    have hd3 : rho 43897 * (rho 43884 * rho 43884 + rho 43883 * rho 43883 * (-1)) = 2 * (rho 43883 * rho 43884) := by
      rw [hd0, hd1, hd2]
      linear_combination r5669
    have hd4 : rho 43898 * (2 - (rho 43884 * rho 43884 + rho 43883 * rho 43883 * (-1))) = rho 43884 * rho 43884 - rho 43883 * rho 43883 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5670
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX203 rho : Seg45.F), (seg45AccY203 rho : Seg45.F)⟩
      ⟨(rho 43883 : Seg45.F), (rho 43884 : Seg45.F)⟩
      ⟨(rho 43890 : Seg45.F), (rho 43891 : Seg45.F)⟩
      ⟨(seg45AccX204 rho : Seg45.F), (seg45AccY204 rho : Seg45.F)⟩
      ⟨(rho 43897 : Seg45.F), (rho 43898 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung203

theorem seg45_rung204 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41152 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX204 rho : Seg45.F), (seg45AccY204 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43897 : Seg45.F), (rho 43898 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX204 rho : Seg45.F), (seg45AccY204 rho : Seg45.F)⟩
        ⟨(rho 43897 : Seg45.F), (rho 43898 : Seg45.F)⟩
        ⟨(seg45AccX205 rho : Seg45.F), (seg45AccY205 rho : Seg45.F)⟩
        ⟨(rho 43911 : Seg45.F), (rho 43912 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p70, p71, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart70 at p70
  rcases p70 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5671, r5672, r5673, r5674, r5675, r5676, r5677, r5678, r5679⟩
  unfold Seg45.relationPart71 at p71
  rcases p71 with ⟨r5680, r5681, r5682, r5683, r5684, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow5671 Seg45.relationLc1055 Seg45.relationLc1055Part0 Seg45.relationLc1055Part1 Seg45.relationLc1055Part2 Seg45.relationLc1055Part3 Seg45.relationLc1055Part4 Seg45.relationLc1055Part5 Seg45.relationLc1055Part6 Seg45.relationLc1055Part7 Seg45.relationLc1055Part8 Seg45.relationLc1055Part9 Seg45.relationLc1055Part10 Seg45.relationLc1055Part11 Seg45.relationLc1055Part12 at r5671
  unfold Seg45.relationRow5672 at r5672
  unfold Seg45.relationRow5673 Seg45.relationLc1056 Seg45.relationLc1056Part0 Seg45.relationLc1056Part1 Seg45.relationLc1056Part2 Seg45.relationLc1056Part3 Seg45.relationLc1056Part4 Seg45.relationLc1056Part5 Seg45.relationLc1056Part6 at r5673
  unfold Seg45.relationRow5674 Seg45.relationLc1057 Seg45.relationLc1057Part0 Seg45.relationLc1057Part1 Seg45.relationLc1057Part2 Seg45.relationLc1057Part3 Seg45.relationLc1057Part4 Seg45.relationLc1057Part5 Seg45.relationLc1057Part6 at r5674
  unfold Seg45.relationRow5675 at r5675
  unfold Seg45.relationRow5676 at r5676
  unfold Seg45.relationRow5677 at r5677
  unfold Seg45.relationRow5678 Seg45.relationLc1058 Seg45.relationLc1058Part0 Seg45.relationLc1058Part1 Seg45.relationLc1058Part2 Seg45.relationLc1058Part3 Seg45.relationLc1058Part4 Seg45.relationLc1058Part5 Seg45.relationLc1058Part6 at r5678
  unfold Seg45.relationRow5679 Seg45.relationLc1059 Seg45.relationLc1059Part0 Seg45.relationLc1059Part1 Seg45.relationLc1059Part2 Seg45.relationLc1059Part3 Seg45.relationLc1059Part4 Seg45.relationLc1059Part5 Seg45.relationLc1059Part6 at r5679
  unfold Seg45.relationRow5680 at r5680
  unfold Seg45.relationRow5681 at r5681
  unfold Seg45.relationRow5682 at r5682
  unfold Seg45.relationRow5683 at r5683
  unfold Seg45.relationRow5684 at r5684
  have hrung204 (bit : Bool) (hbit : rho 41152 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX204 rho : Seg45.F), (seg45AccY204 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43897 : Seg45.F), (rho 43898 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX204 rho : Seg45.F), (seg45AccY204 rho : Seg45.F)⟩
        ⟨(rho 43897 : Seg45.F), (rho 43898 : Seg45.F)⟩
        ⟨(seg45AccX205 rho : Seg45.F), (seg45AccY205 rho : Seg45.F)⟩
        ⟨(rho 43911 : Seg45.F), (rho 43912 : Seg45.F)⟩ := by
    have hsum : seg45AccX204 rho + seg45AccY204 rho = rho 43899 := by
      rw [seg45LadderFlatX204_eq, seg45LadderFlatY204_eq]
      unfold seg45LadderFlatX204 seg45LadderFlatY204
      linear_combination r5671
    have ha0 : (rho 43897 + rho 43898) * (seg45AccX204 rho + seg45AccY204 rho) = rho 43900 := by
      rw [hsum]
      linear_combination r5672
    have ha1 : rho 43898 * seg45AccX204 rho = rho 43901 := by
      rw [seg45LadderFlatX204_eq]
      unfold seg45LadderFlatX204
      linear_combination r5673
    have ha2 : rho 43897 * seg45AccY204 rho = rho 43902 := by
      rw [seg45LadderFlatY204_eq]
      unfold seg45LadderFlatY204
      linear_combination r5674
    have ha3 : 3021 * rho 43901 * rho 43902 = rho 43903 := by
      linear_combination r5675
    have ha4 : rho 43904 * (1 + rho 43903) = rho 43901 + rho 43902 := by
      linear_combination r5676
    have ha5 : rho 43905 * (1 - rho 43903) = rho 43900 - rho 43901 - rho 43902 := by
      linear_combination r5677
    have haddx :
        rho 43904 * (1 + 3021 * (rho 43898 * seg45AccX204 rho) * (rho 43897 * seg45AccY204 rho)) =
          rho 43898 * seg45AccX204 rho + rho 43897 * seg45AccY204 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43905 * (1 - 3021 * (rho 43898 * seg45AccX204 rho) * (rho 43897 * seg45AccY204 rho)) =
          (-1) * (rho 43898 * seg45AccX204 rho) - rho 43897 * seg45AccY204 rho +
            (seg45AccY204 rho - seg45AccX204 rho * (-1)) * (rho 43897 + rho 43898) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43905 * (1 - rho 43903) = rho 43900 - rho 43901 - rho 43902 := ha5
        _ = (-1) * rho 43901 - rho 43902 + (seg45AccY204 rho - seg45AccX204 rho * (-1)) * (rho 43897 + rho 43898) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX205 rho = seg45AccX204 rho - Bool.toZMod bit * (seg45AccX204 rho - rho 43904) := by
      have hd : rho 43906 = Bool.toZMod bit * (rho 43904 - seg45AccX204 rho) := by
        rw [← hbit, seg45LadderFlatX204_eq]
        unfold seg45LadderFlatX204
        linear_combination -r5678
      unfold seg45AccX205
      linear_combination hd
    have hsely : seg45AccY205 rho = seg45AccY204 rho - Bool.toZMod bit * (seg45AccY204 rho - rho 43905) := by
      have hd : rho 43907 = Bool.toZMod bit * (rho 43905 - seg45AccY204 rho) := by
        rw [← hbit, seg45LadderFlatY204_eq]
        unfold seg45LadderFlatY204
        linear_combination -r5679
      unfold seg45AccY205
      linear_combination hd
    have hd0 : rho 43897 * rho 43898 = rho 43908 := by linear_combination r5680
    have hd1 : rho 43897 * rho 43897 = rho 43909 := by linear_combination r5681
    have hd2 : rho 43898 * rho 43898 = rho 43910 := by linear_combination r5682
    have hd3 : rho 43911 * (rho 43898 * rho 43898 + rho 43897 * rho 43897 * (-1)) = 2 * (rho 43897 * rho 43898) := by
      rw [hd0, hd1, hd2]
      linear_combination r5683
    have hd4 : rho 43912 * (2 - (rho 43898 * rho 43898 + rho 43897 * rho 43897 * (-1))) = rho 43898 * rho 43898 - rho 43897 * rho 43897 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5684
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX204 rho : Seg45.F), (seg45AccY204 rho : Seg45.F)⟩
      ⟨(rho 43897 : Seg45.F), (rho 43898 : Seg45.F)⟩
      ⟨(rho 43904 : Seg45.F), (rho 43905 : Seg45.F)⟩
      ⟨(seg45AccX205 rho : Seg45.F), (seg45AccY205 rho : Seg45.F)⟩
      ⟨(rho 43911 : Seg45.F), (rho 43912 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung204

theorem seg45_rung205 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41153 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX205 rho : Seg45.F), (seg45AccY205 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43911 : Seg45.F), (rho 43912 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX205 rho : Seg45.F), (seg45AccY205 rho : Seg45.F)⟩
        ⟨(rho 43911 : Seg45.F), (rho 43912 : Seg45.F)⟩
        ⟨(seg45AccX206 rho : Seg45.F), (seg45AccY206 rho : Seg45.F)⟩
        ⟨(rho 43925 : Seg45.F), (rho 43926 : Seg45.F)⟩ := by
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
  rcases p71 with ⟨_, _, _, _, _, r5685, r5686, r5687, r5688, r5689, r5690, r5691, r5692, r5693, r5694, r5695, r5696, r5697, r5698, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow5685 Seg45.relationLc1060 Seg45.relationLc1060Part0 Seg45.relationLc1060Part1 Seg45.relationLc1060Part2 Seg45.relationLc1060Part3 Seg45.relationLc1060Part4 Seg45.relationLc1060Part5 Seg45.relationLc1060Part6 Seg45.relationLc1060Part7 Seg45.relationLc1060Part8 Seg45.relationLc1060Part9 Seg45.relationLc1060Part10 Seg45.relationLc1060Part11 Seg45.relationLc1060Part12 at r5685
  unfold Seg45.relationRow5686 at r5686
  unfold Seg45.relationRow5687 Seg45.relationLc1061 Seg45.relationLc1061Part0 Seg45.relationLc1061Part1 Seg45.relationLc1061Part2 Seg45.relationLc1061Part3 Seg45.relationLc1061Part4 Seg45.relationLc1061Part5 Seg45.relationLc1061Part6 at r5687
  unfold Seg45.relationRow5688 Seg45.relationLc1062 Seg45.relationLc1062Part0 Seg45.relationLc1062Part1 Seg45.relationLc1062Part2 Seg45.relationLc1062Part3 Seg45.relationLc1062Part4 Seg45.relationLc1062Part5 Seg45.relationLc1062Part6 at r5688
  unfold Seg45.relationRow5689 at r5689
  unfold Seg45.relationRow5690 at r5690
  unfold Seg45.relationRow5691 at r5691
  unfold Seg45.relationRow5692 Seg45.relationLc1063 Seg45.relationLc1063Part0 Seg45.relationLc1063Part1 Seg45.relationLc1063Part2 Seg45.relationLc1063Part3 Seg45.relationLc1063Part4 Seg45.relationLc1063Part5 Seg45.relationLc1063Part6 at r5692
  unfold Seg45.relationRow5693 Seg45.relationLc1064 Seg45.relationLc1064Part0 Seg45.relationLc1064Part1 Seg45.relationLc1064Part2 Seg45.relationLc1064Part3 Seg45.relationLc1064Part4 Seg45.relationLc1064Part5 Seg45.relationLc1064Part6 at r5693
  unfold Seg45.relationRow5694 at r5694
  unfold Seg45.relationRow5695 at r5695
  unfold Seg45.relationRow5696 at r5696
  unfold Seg45.relationRow5697 at r5697
  unfold Seg45.relationRow5698 at r5698
  have hrung205 (bit : Bool) (hbit : rho 41153 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX205 rho : Seg45.F), (seg45AccY205 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43911 : Seg45.F), (rho 43912 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX205 rho : Seg45.F), (seg45AccY205 rho : Seg45.F)⟩
        ⟨(rho 43911 : Seg45.F), (rho 43912 : Seg45.F)⟩
        ⟨(seg45AccX206 rho : Seg45.F), (seg45AccY206 rho : Seg45.F)⟩
        ⟨(rho 43925 : Seg45.F), (rho 43926 : Seg45.F)⟩ := by
    have hsum : seg45AccX205 rho + seg45AccY205 rho = rho 43913 := by
      rw [seg45LadderFlatX205_eq, seg45LadderFlatY205_eq]
      unfold seg45LadderFlatX205 seg45LadderFlatY205
      linear_combination r5685
    have ha0 : (rho 43911 + rho 43912) * (seg45AccX205 rho + seg45AccY205 rho) = rho 43914 := by
      rw [hsum]
      linear_combination r5686
    have ha1 : rho 43912 * seg45AccX205 rho = rho 43915 := by
      rw [seg45LadderFlatX205_eq]
      unfold seg45LadderFlatX205
      linear_combination r5687
    have ha2 : rho 43911 * seg45AccY205 rho = rho 43916 := by
      rw [seg45LadderFlatY205_eq]
      unfold seg45LadderFlatY205
      linear_combination r5688
    have ha3 : 3021 * rho 43915 * rho 43916 = rho 43917 := by
      linear_combination r5689
    have ha4 : rho 43918 * (1 + rho 43917) = rho 43915 + rho 43916 := by
      linear_combination r5690
    have ha5 : rho 43919 * (1 - rho 43917) = rho 43914 - rho 43915 - rho 43916 := by
      linear_combination r5691
    have haddx :
        rho 43918 * (1 + 3021 * (rho 43912 * seg45AccX205 rho) * (rho 43911 * seg45AccY205 rho)) =
          rho 43912 * seg45AccX205 rho + rho 43911 * seg45AccY205 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43919 * (1 - 3021 * (rho 43912 * seg45AccX205 rho) * (rho 43911 * seg45AccY205 rho)) =
          (-1) * (rho 43912 * seg45AccX205 rho) - rho 43911 * seg45AccY205 rho +
            (seg45AccY205 rho - seg45AccX205 rho * (-1)) * (rho 43911 + rho 43912) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43919 * (1 - rho 43917) = rho 43914 - rho 43915 - rho 43916 := ha5
        _ = (-1) * rho 43915 - rho 43916 + (seg45AccY205 rho - seg45AccX205 rho * (-1)) * (rho 43911 + rho 43912) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX206 rho = seg45AccX205 rho - Bool.toZMod bit * (seg45AccX205 rho - rho 43918) := by
      have hd : rho 43920 = Bool.toZMod bit * (rho 43918 - seg45AccX205 rho) := by
        rw [← hbit, seg45LadderFlatX205_eq]
        unfold seg45LadderFlatX205
        linear_combination -r5692
      unfold seg45AccX206
      linear_combination hd
    have hsely : seg45AccY206 rho = seg45AccY205 rho - Bool.toZMod bit * (seg45AccY205 rho - rho 43919) := by
      have hd : rho 43921 = Bool.toZMod bit * (rho 43919 - seg45AccY205 rho) := by
        rw [← hbit, seg45LadderFlatY205_eq]
        unfold seg45LadderFlatY205
        linear_combination -r5693
      unfold seg45AccY206
      linear_combination hd
    have hd0 : rho 43911 * rho 43912 = rho 43922 := by linear_combination r5694
    have hd1 : rho 43911 * rho 43911 = rho 43923 := by linear_combination r5695
    have hd2 : rho 43912 * rho 43912 = rho 43924 := by linear_combination r5696
    have hd3 : rho 43925 * (rho 43912 * rho 43912 + rho 43911 * rho 43911 * (-1)) = 2 * (rho 43911 * rho 43912) := by
      rw [hd0, hd1, hd2]
      linear_combination r5697
    have hd4 : rho 43926 * (2 - (rho 43912 * rho 43912 + rho 43911 * rho 43911 * (-1))) = rho 43912 * rho 43912 - rho 43911 * rho 43911 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5698
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX205 rho : Seg45.F), (seg45AccY205 rho : Seg45.F)⟩
      ⟨(rho 43911 : Seg45.F), (rho 43912 : Seg45.F)⟩
      ⟨(rho 43918 : Seg45.F), (rho 43919 : Seg45.F)⟩
      ⟨(seg45AccX206 rho : Seg45.F), (seg45AccY206 rho : Seg45.F)⟩
      ⟨(rho 43925 : Seg45.F), (rho 43926 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung205

theorem seg45_rung206 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41154 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX206 rho : Seg45.F), (seg45AccY206 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43925 : Seg45.F), (rho 43926 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX206 rho : Seg45.F), (seg45AccY206 rho : Seg45.F)⟩
        ⟨(rho 43925 : Seg45.F), (rho 43926 : Seg45.F)⟩
        ⟨(seg45AccX207 rho : Seg45.F), (seg45AccY207 rho : Seg45.F)⟩
        ⟨(rho 43939 : Seg45.F), (rho 43940 : Seg45.F)⟩ := by
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
  rcases p71 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5699, r5700, r5701, r5702, r5703, r5704, r5705, r5706, r5707, r5708, r5709, r5710, r5711, r5712, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow5699 Seg45.relationLc1065 Seg45.relationLc1065Part0 Seg45.relationLc1065Part1 Seg45.relationLc1065Part2 Seg45.relationLc1065Part3 Seg45.relationLc1065Part4 Seg45.relationLc1065Part5 Seg45.relationLc1065Part6 Seg45.relationLc1065Part7 Seg45.relationLc1065Part8 Seg45.relationLc1065Part9 Seg45.relationLc1065Part10 Seg45.relationLc1065Part11 Seg45.relationLc1065Part12 at r5699
  unfold Seg45.relationRow5700 at r5700
  unfold Seg45.relationRow5701 Seg45.relationLc1066 Seg45.relationLc1066Part0 Seg45.relationLc1066Part1 Seg45.relationLc1066Part2 Seg45.relationLc1066Part3 Seg45.relationLc1066Part4 Seg45.relationLc1066Part5 Seg45.relationLc1066Part6 at r5701
  unfold Seg45.relationRow5702 Seg45.relationLc1067 Seg45.relationLc1067Part0 Seg45.relationLc1067Part1 Seg45.relationLc1067Part2 Seg45.relationLc1067Part3 Seg45.relationLc1067Part4 Seg45.relationLc1067Part5 Seg45.relationLc1067Part6 at r5702
  unfold Seg45.relationRow5703 at r5703
  unfold Seg45.relationRow5704 at r5704
  unfold Seg45.relationRow5705 at r5705
  unfold Seg45.relationRow5706 Seg45.relationLc1068 Seg45.relationLc1068Part0 Seg45.relationLc1068Part1 Seg45.relationLc1068Part2 Seg45.relationLc1068Part3 Seg45.relationLc1068Part4 Seg45.relationLc1068Part5 Seg45.relationLc1068Part6 at r5706
  unfold Seg45.relationRow5707 Seg45.relationLc1069 Seg45.relationLc1069Part0 Seg45.relationLc1069Part1 Seg45.relationLc1069Part2 Seg45.relationLc1069Part3 Seg45.relationLc1069Part4 Seg45.relationLc1069Part5 Seg45.relationLc1069Part6 at r5707
  unfold Seg45.relationRow5708 at r5708
  unfold Seg45.relationRow5709 at r5709
  unfold Seg45.relationRow5710 at r5710
  unfold Seg45.relationRow5711 at r5711
  unfold Seg45.relationRow5712 at r5712
  have hrung206 (bit : Bool) (hbit : rho 41154 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX206 rho : Seg45.F), (seg45AccY206 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43925 : Seg45.F), (rho 43926 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX206 rho : Seg45.F), (seg45AccY206 rho : Seg45.F)⟩
        ⟨(rho 43925 : Seg45.F), (rho 43926 : Seg45.F)⟩
        ⟨(seg45AccX207 rho : Seg45.F), (seg45AccY207 rho : Seg45.F)⟩
        ⟨(rho 43939 : Seg45.F), (rho 43940 : Seg45.F)⟩ := by
    have hsum : seg45AccX206 rho + seg45AccY206 rho = rho 43927 := by
      rw [seg45LadderFlatX206_eq, seg45LadderFlatY206_eq]
      unfold seg45LadderFlatX206 seg45LadderFlatY206
      linear_combination r5699
    have ha0 : (rho 43925 + rho 43926) * (seg45AccX206 rho + seg45AccY206 rho) = rho 43928 := by
      rw [hsum]
      linear_combination r5700
    have ha1 : rho 43926 * seg45AccX206 rho = rho 43929 := by
      rw [seg45LadderFlatX206_eq]
      unfold seg45LadderFlatX206
      linear_combination r5701
    have ha2 : rho 43925 * seg45AccY206 rho = rho 43930 := by
      rw [seg45LadderFlatY206_eq]
      unfold seg45LadderFlatY206
      linear_combination r5702
    have ha3 : 3021 * rho 43929 * rho 43930 = rho 43931 := by
      linear_combination r5703
    have ha4 : rho 43932 * (1 + rho 43931) = rho 43929 + rho 43930 := by
      linear_combination r5704
    have ha5 : rho 43933 * (1 - rho 43931) = rho 43928 - rho 43929 - rho 43930 := by
      linear_combination r5705
    have haddx :
        rho 43932 * (1 + 3021 * (rho 43926 * seg45AccX206 rho) * (rho 43925 * seg45AccY206 rho)) =
          rho 43926 * seg45AccX206 rho + rho 43925 * seg45AccY206 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43933 * (1 - 3021 * (rho 43926 * seg45AccX206 rho) * (rho 43925 * seg45AccY206 rho)) =
          (-1) * (rho 43926 * seg45AccX206 rho) - rho 43925 * seg45AccY206 rho +
            (seg45AccY206 rho - seg45AccX206 rho * (-1)) * (rho 43925 + rho 43926) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43933 * (1 - rho 43931) = rho 43928 - rho 43929 - rho 43930 := ha5
        _ = (-1) * rho 43929 - rho 43930 + (seg45AccY206 rho - seg45AccX206 rho * (-1)) * (rho 43925 + rho 43926) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX207 rho = seg45AccX206 rho - Bool.toZMod bit * (seg45AccX206 rho - rho 43932) := by
      have hd : rho 43934 = Bool.toZMod bit * (rho 43932 - seg45AccX206 rho) := by
        rw [← hbit, seg45LadderFlatX206_eq]
        unfold seg45LadderFlatX206
        linear_combination -r5706
      unfold seg45AccX207
      linear_combination hd
    have hsely : seg45AccY207 rho = seg45AccY206 rho - Bool.toZMod bit * (seg45AccY206 rho - rho 43933) := by
      have hd : rho 43935 = Bool.toZMod bit * (rho 43933 - seg45AccY206 rho) := by
        rw [← hbit, seg45LadderFlatY206_eq]
        unfold seg45LadderFlatY206
        linear_combination -r5707
      unfold seg45AccY207
      linear_combination hd
    have hd0 : rho 43925 * rho 43926 = rho 43936 := by linear_combination r5708
    have hd1 : rho 43925 * rho 43925 = rho 43937 := by linear_combination r5709
    have hd2 : rho 43926 * rho 43926 = rho 43938 := by linear_combination r5710
    have hd3 : rho 43939 * (rho 43926 * rho 43926 + rho 43925 * rho 43925 * (-1)) = 2 * (rho 43925 * rho 43926) := by
      rw [hd0, hd1, hd2]
      linear_combination r5711
    have hd4 : rho 43940 * (2 - (rho 43926 * rho 43926 + rho 43925 * rho 43925 * (-1))) = rho 43926 * rho 43926 - rho 43925 * rho 43925 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5712
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX206 rho : Seg45.F), (seg45AccY206 rho : Seg45.F)⟩
      ⟨(rho 43925 : Seg45.F), (rho 43926 : Seg45.F)⟩
      ⟨(rho 43932 : Seg45.F), (rho 43933 : Seg45.F)⟩
      ⟨(seg45AccX207 rho : Seg45.F), (seg45AccY207 rho : Seg45.F)⟩
      ⟨(rho 43939 : Seg45.F), (rho 43940 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung206

theorem seg45_rung207 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41155 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX207 rho : Seg45.F), (seg45AccY207 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43939 : Seg45.F), (rho 43940 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX207 rho : Seg45.F), (seg45AccY207 rho : Seg45.F)⟩
        ⟨(rho 43939 : Seg45.F), (rho 43940 : Seg45.F)⟩
        ⟨(seg45AccX208 rho : Seg45.F), (seg45AccY208 rho : Seg45.F)⟩
        ⟨(rho 43953 : Seg45.F), (rho 43954 : Seg45.F)⟩ := by
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
  rcases p71 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5713, r5714, r5715, r5716, r5717, r5718, r5719, r5720, r5721, r5722, r5723, r5724, r5725, r5726, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow5713 Seg45.relationLc1070 Seg45.relationLc1070Part0 Seg45.relationLc1070Part1 Seg45.relationLc1070Part2 Seg45.relationLc1070Part3 Seg45.relationLc1070Part4 Seg45.relationLc1070Part5 Seg45.relationLc1070Part6 Seg45.relationLc1070Part7 Seg45.relationLc1070Part8 Seg45.relationLc1070Part9 Seg45.relationLc1070Part10 Seg45.relationLc1070Part11 Seg45.relationLc1070Part12 at r5713
  unfold Seg45.relationRow5714 at r5714
  unfold Seg45.relationRow5715 Seg45.relationLc1071 Seg45.relationLc1071Part0 Seg45.relationLc1071Part1 Seg45.relationLc1071Part2 Seg45.relationLc1071Part3 Seg45.relationLc1071Part4 Seg45.relationLc1071Part5 Seg45.relationLc1071Part6 at r5715
  unfold Seg45.relationRow5716 Seg45.relationLc1072 Seg45.relationLc1072Part0 Seg45.relationLc1072Part1 Seg45.relationLc1072Part2 Seg45.relationLc1072Part3 Seg45.relationLc1072Part4 Seg45.relationLc1072Part5 Seg45.relationLc1072Part6 at r5716
  unfold Seg45.relationRow5717 at r5717
  unfold Seg45.relationRow5718 at r5718
  unfold Seg45.relationRow5719 at r5719
  unfold Seg45.relationRow5720 Seg45.relationLc1073 Seg45.relationLc1073Part0 Seg45.relationLc1073Part1 Seg45.relationLc1073Part2 Seg45.relationLc1073Part3 Seg45.relationLc1073Part4 Seg45.relationLc1073Part5 Seg45.relationLc1073Part6 at r5720
  unfold Seg45.relationRow5721 Seg45.relationLc1074 Seg45.relationLc1074Part0 Seg45.relationLc1074Part1 Seg45.relationLc1074Part2 Seg45.relationLc1074Part3 Seg45.relationLc1074Part4 Seg45.relationLc1074Part5 Seg45.relationLc1074Part6 at r5721
  unfold Seg45.relationRow5722 at r5722
  unfold Seg45.relationRow5723 at r5723
  unfold Seg45.relationRow5724 at r5724
  unfold Seg45.relationRow5725 at r5725
  unfold Seg45.relationRow5726 at r5726
  have hrung207 (bit : Bool) (hbit : rho 41155 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX207 rho : Seg45.F), (seg45AccY207 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43939 : Seg45.F), (rho 43940 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX207 rho : Seg45.F), (seg45AccY207 rho : Seg45.F)⟩
        ⟨(rho 43939 : Seg45.F), (rho 43940 : Seg45.F)⟩
        ⟨(seg45AccX208 rho : Seg45.F), (seg45AccY208 rho : Seg45.F)⟩
        ⟨(rho 43953 : Seg45.F), (rho 43954 : Seg45.F)⟩ := by
    have hsum : seg45AccX207 rho + seg45AccY207 rho = rho 43941 := by
      rw [seg45LadderFlatX207_eq, seg45LadderFlatY207_eq]
      unfold seg45LadderFlatX207 seg45LadderFlatY207
      linear_combination r5713
    have ha0 : (rho 43939 + rho 43940) * (seg45AccX207 rho + seg45AccY207 rho) = rho 43942 := by
      rw [hsum]
      linear_combination r5714
    have ha1 : rho 43940 * seg45AccX207 rho = rho 43943 := by
      rw [seg45LadderFlatX207_eq]
      unfold seg45LadderFlatX207
      linear_combination r5715
    have ha2 : rho 43939 * seg45AccY207 rho = rho 43944 := by
      rw [seg45LadderFlatY207_eq]
      unfold seg45LadderFlatY207
      linear_combination r5716
    have ha3 : 3021 * rho 43943 * rho 43944 = rho 43945 := by
      linear_combination r5717
    have ha4 : rho 43946 * (1 + rho 43945) = rho 43943 + rho 43944 := by
      linear_combination r5718
    have ha5 : rho 43947 * (1 - rho 43945) = rho 43942 - rho 43943 - rho 43944 := by
      linear_combination r5719
    have haddx :
        rho 43946 * (1 + 3021 * (rho 43940 * seg45AccX207 rho) * (rho 43939 * seg45AccY207 rho)) =
          rho 43940 * seg45AccX207 rho + rho 43939 * seg45AccY207 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43947 * (1 - 3021 * (rho 43940 * seg45AccX207 rho) * (rho 43939 * seg45AccY207 rho)) =
          (-1) * (rho 43940 * seg45AccX207 rho) - rho 43939 * seg45AccY207 rho +
            (seg45AccY207 rho - seg45AccX207 rho * (-1)) * (rho 43939 + rho 43940) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43947 * (1 - rho 43945) = rho 43942 - rho 43943 - rho 43944 := ha5
        _ = (-1) * rho 43943 - rho 43944 + (seg45AccY207 rho - seg45AccX207 rho * (-1)) * (rho 43939 + rho 43940) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX208 rho = seg45AccX207 rho - Bool.toZMod bit * (seg45AccX207 rho - rho 43946) := by
      have hd : rho 43948 = Bool.toZMod bit * (rho 43946 - seg45AccX207 rho) := by
        rw [← hbit, seg45LadderFlatX207_eq]
        unfold seg45LadderFlatX207
        linear_combination -r5720
      unfold seg45AccX208
      linear_combination hd
    have hsely : seg45AccY208 rho = seg45AccY207 rho - Bool.toZMod bit * (seg45AccY207 rho - rho 43947) := by
      have hd : rho 43949 = Bool.toZMod bit * (rho 43947 - seg45AccY207 rho) := by
        rw [← hbit, seg45LadderFlatY207_eq]
        unfold seg45LadderFlatY207
        linear_combination -r5721
      unfold seg45AccY208
      linear_combination hd
    have hd0 : rho 43939 * rho 43940 = rho 43950 := by linear_combination r5722
    have hd1 : rho 43939 * rho 43939 = rho 43951 := by linear_combination r5723
    have hd2 : rho 43940 * rho 43940 = rho 43952 := by linear_combination r5724
    have hd3 : rho 43953 * (rho 43940 * rho 43940 + rho 43939 * rho 43939 * (-1)) = 2 * (rho 43939 * rho 43940) := by
      rw [hd0, hd1, hd2]
      linear_combination r5725
    have hd4 : rho 43954 * (2 - (rho 43940 * rho 43940 + rho 43939 * rho 43939 * (-1))) = rho 43940 * rho 43940 - rho 43939 * rho 43939 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5726
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX207 rho : Seg45.F), (seg45AccY207 rho : Seg45.F)⟩
      ⟨(rho 43939 : Seg45.F), (rho 43940 : Seg45.F)⟩
      ⟨(rho 43946 : Seg45.F), (rho 43947 : Seg45.F)⟩
      ⟨(seg45AccX208 rho : Seg45.F), (seg45AccY208 rho : Seg45.F)⟩
      ⟨(rho 43953 : Seg45.F), (rho 43954 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung207

theorem seg45_rung208 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41156 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX208 rho : Seg45.F), (seg45AccY208 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43953 : Seg45.F), (rho 43954 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX208 rho : Seg45.F), (seg45AccY208 rho : Seg45.F)⟩
        ⟨(rho 43953 : Seg45.F), (rho 43954 : Seg45.F)⟩
        ⟨(seg45AccX209 rho : Seg45.F), (seg45AccY209 rho : Seg45.F)⟩
        ⟨(rho 43967 : Seg45.F), (rho 43968 : Seg45.F)⟩ := by
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
  rcases p71 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5727, r5728, r5729, r5730, r5731, r5732, r5733, r5734, r5735, r5736, r5737, r5738, r5739, r5740, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow5727 Seg45.relationLc1075 Seg45.relationLc1075Part0 Seg45.relationLc1075Part1 Seg45.relationLc1075Part2 Seg45.relationLc1075Part3 Seg45.relationLc1075Part4 Seg45.relationLc1075Part5 Seg45.relationLc1075Part6 Seg45.relationLc1075Part7 Seg45.relationLc1075Part8 Seg45.relationLc1075Part9 Seg45.relationLc1075Part10 Seg45.relationLc1075Part11 Seg45.relationLc1075Part12 Seg45.relationLc1075Part13 at r5727
  unfold Seg45.relationRow5728 at r5728
  unfold Seg45.relationRow5729 Seg45.relationLc1076 Seg45.relationLc1076Part0 Seg45.relationLc1076Part1 Seg45.relationLc1076Part2 Seg45.relationLc1076Part3 Seg45.relationLc1076Part4 Seg45.relationLc1076Part5 Seg45.relationLc1076Part6 at r5729
  unfold Seg45.relationRow5730 Seg45.relationLc1077 Seg45.relationLc1077Part0 Seg45.relationLc1077Part1 Seg45.relationLc1077Part2 Seg45.relationLc1077Part3 Seg45.relationLc1077Part4 Seg45.relationLc1077Part5 Seg45.relationLc1077Part6 at r5730
  unfold Seg45.relationRow5731 at r5731
  unfold Seg45.relationRow5732 at r5732
  unfold Seg45.relationRow5733 at r5733
  unfold Seg45.relationRow5734 Seg45.relationLc1078 Seg45.relationLc1078Part0 Seg45.relationLc1078Part1 Seg45.relationLc1078Part2 Seg45.relationLc1078Part3 Seg45.relationLc1078Part4 Seg45.relationLc1078Part5 Seg45.relationLc1078Part6 at r5734
  unfold Seg45.relationRow5735 Seg45.relationLc1079 Seg45.relationLc1079Part0 Seg45.relationLc1079Part1 Seg45.relationLc1079Part2 Seg45.relationLc1079Part3 Seg45.relationLc1079Part4 Seg45.relationLc1079Part5 Seg45.relationLc1079Part6 at r5735
  unfold Seg45.relationRow5736 at r5736
  unfold Seg45.relationRow5737 at r5737
  unfold Seg45.relationRow5738 at r5738
  unfold Seg45.relationRow5739 at r5739
  unfold Seg45.relationRow5740 at r5740
  have hrung208 (bit : Bool) (hbit : rho 41156 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX208 rho : Seg45.F), (seg45AccY208 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43953 : Seg45.F), (rho 43954 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX208 rho : Seg45.F), (seg45AccY208 rho : Seg45.F)⟩
        ⟨(rho 43953 : Seg45.F), (rho 43954 : Seg45.F)⟩
        ⟨(seg45AccX209 rho : Seg45.F), (seg45AccY209 rho : Seg45.F)⟩
        ⟨(rho 43967 : Seg45.F), (rho 43968 : Seg45.F)⟩ := by
    have hsum : seg45AccX208 rho + seg45AccY208 rho = rho 43955 := by
      rw [seg45LadderFlatX208_eq, seg45LadderFlatY208_eq]
      unfold seg45LadderFlatX208 seg45LadderFlatY208
      linear_combination r5727
    have ha0 : (rho 43953 + rho 43954) * (seg45AccX208 rho + seg45AccY208 rho) = rho 43956 := by
      rw [hsum]
      linear_combination r5728
    have ha1 : rho 43954 * seg45AccX208 rho = rho 43957 := by
      rw [seg45LadderFlatX208_eq]
      unfold seg45LadderFlatX208
      linear_combination r5729
    have ha2 : rho 43953 * seg45AccY208 rho = rho 43958 := by
      rw [seg45LadderFlatY208_eq]
      unfold seg45LadderFlatY208
      linear_combination r5730
    have ha3 : 3021 * rho 43957 * rho 43958 = rho 43959 := by
      linear_combination r5731
    have ha4 : rho 43960 * (1 + rho 43959) = rho 43957 + rho 43958 := by
      linear_combination r5732
    have ha5 : rho 43961 * (1 - rho 43959) = rho 43956 - rho 43957 - rho 43958 := by
      linear_combination r5733
    have haddx :
        rho 43960 * (1 + 3021 * (rho 43954 * seg45AccX208 rho) * (rho 43953 * seg45AccY208 rho)) =
          rho 43954 * seg45AccX208 rho + rho 43953 * seg45AccY208 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43961 * (1 - 3021 * (rho 43954 * seg45AccX208 rho) * (rho 43953 * seg45AccY208 rho)) =
          (-1) * (rho 43954 * seg45AccX208 rho) - rho 43953 * seg45AccY208 rho +
            (seg45AccY208 rho - seg45AccX208 rho * (-1)) * (rho 43953 + rho 43954) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43961 * (1 - rho 43959) = rho 43956 - rho 43957 - rho 43958 := ha5
        _ = (-1) * rho 43957 - rho 43958 + (seg45AccY208 rho - seg45AccX208 rho * (-1)) * (rho 43953 + rho 43954) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX209 rho = seg45AccX208 rho - Bool.toZMod bit * (seg45AccX208 rho - rho 43960) := by
      have hd : rho 43962 = Bool.toZMod bit * (rho 43960 - seg45AccX208 rho) := by
        rw [← hbit, seg45LadderFlatX208_eq]
        unfold seg45LadderFlatX208
        linear_combination -r5734
      unfold seg45AccX209
      linear_combination hd
    have hsely : seg45AccY209 rho = seg45AccY208 rho - Bool.toZMod bit * (seg45AccY208 rho - rho 43961) := by
      have hd : rho 43963 = Bool.toZMod bit * (rho 43961 - seg45AccY208 rho) := by
        rw [← hbit, seg45LadderFlatY208_eq]
        unfold seg45LadderFlatY208
        linear_combination -r5735
      unfold seg45AccY209
      linear_combination hd
    have hd0 : rho 43953 * rho 43954 = rho 43964 := by linear_combination r5736
    have hd1 : rho 43953 * rho 43953 = rho 43965 := by linear_combination r5737
    have hd2 : rho 43954 * rho 43954 = rho 43966 := by linear_combination r5738
    have hd3 : rho 43967 * (rho 43954 * rho 43954 + rho 43953 * rho 43953 * (-1)) = 2 * (rho 43953 * rho 43954) := by
      rw [hd0, hd1, hd2]
      linear_combination r5739
    have hd4 : rho 43968 * (2 - (rho 43954 * rho 43954 + rho 43953 * rho 43953 * (-1))) = rho 43954 * rho 43954 - rho 43953 * rho 43953 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5740
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX208 rho : Seg45.F), (seg45AccY208 rho : Seg45.F)⟩
      ⟨(rho 43953 : Seg45.F), (rho 43954 : Seg45.F)⟩
      ⟨(rho 43960 : Seg45.F), (rho 43961 : Seg45.F)⟩
      ⟨(seg45AccX209 rho : Seg45.F), (seg45AccY209 rho : Seg45.F)⟩
      ⟨(rho 43967 : Seg45.F), (rho 43968 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung208

theorem seg45_rung209 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41157 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX209 rho : Seg45.F), (seg45AccY209 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43967 : Seg45.F), (rho 43968 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX209 rho : Seg45.F), (seg45AccY209 rho : Seg45.F)⟩
        ⟨(rho 43967 : Seg45.F), (rho 43968 : Seg45.F)⟩
        ⟨(seg45AccX210 rho : Seg45.F), (seg45AccY210 rho : Seg45.F)⟩
        ⟨(rho 43981 : Seg45.F), (rho 43982 : Seg45.F)⟩ := by
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
  unfold Seg45.relationRow5741 Seg45.relationLc1080 Seg45.relationLc1080Part0 Seg45.relationLc1080Part1 Seg45.relationLc1080Part2 Seg45.relationLc1080Part3 Seg45.relationLc1080Part4 Seg45.relationLc1080Part5 Seg45.relationLc1080Part6 Seg45.relationLc1080Part7 Seg45.relationLc1080Part8 Seg45.relationLc1080Part9 Seg45.relationLc1080Part10 Seg45.relationLc1080Part11 Seg45.relationLc1080Part12 Seg45.relationLc1080Part13 at r5741
  unfold Seg45.relationRow5742 at r5742
  unfold Seg45.relationRow5743 Seg45.relationLc1081 Seg45.relationLc1081Part0 Seg45.relationLc1081Part1 Seg45.relationLc1081Part2 Seg45.relationLc1081Part3 Seg45.relationLc1081Part4 Seg45.relationLc1081Part5 Seg45.relationLc1081Part6 at r5743
  unfold Seg45.relationRow5744 Seg45.relationLc1082 Seg45.relationLc1082Part0 Seg45.relationLc1082Part1 Seg45.relationLc1082Part2 Seg45.relationLc1082Part3 Seg45.relationLc1082Part4 Seg45.relationLc1082Part5 Seg45.relationLc1082Part6 at r5744
  unfold Seg45.relationRow5745 at r5745
  unfold Seg45.relationRow5746 at r5746
  unfold Seg45.relationRow5747 at r5747
  unfold Seg45.relationRow5748 Seg45.relationLc1083 Seg45.relationLc1083Part0 Seg45.relationLc1083Part1 Seg45.relationLc1083Part2 Seg45.relationLc1083Part3 Seg45.relationLc1083Part4 Seg45.relationLc1083Part5 Seg45.relationLc1083Part6 at r5748
  unfold Seg45.relationRow5749 Seg45.relationLc1084 Seg45.relationLc1084Part0 Seg45.relationLc1084Part1 Seg45.relationLc1084Part2 Seg45.relationLc1084Part3 Seg45.relationLc1084Part4 Seg45.relationLc1084Part5 Seg45.relationLc1084Part6 at r5749
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
    have hsum : seg45AccX209 rho + seg45AccY209 rho = rho 43969 := by
      rw [seg45LadderFlatX209_eq, seg45LadderFlatY209_eq]
      unfold seg45LadderFlatX209 seg45LadderFlatY209
      linear_combination r5741
    have ha0 : (rho 43967 + rho 43968) * (seg45AccX209 rho + seg45AccY209 rho) = rho 43970 := by
      rw [hsum]
      linear_combination r5742
    have ha1 : rho 43968 * seg45AccX209 rho = rho 43971 := by
      rw [seg45LadderFlatX209_eq]
      unfold seg45LadderFlatX209
      linear_combination r5743
    have ha2 : rho 43967 * seg45AccY209 rho = rho 43972 := by
      rw [seg45LadderFlatY209_eq]
      unfold seg45LadderFlatY209
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
        rw [← hbit, seg45LadderFlatX209_eq]
        unfold seg45LadderFlatX209
        linear_combination -r5748
      unfold seg45AccX210
      linear_combination hd
    have hsely : seg45AccY210 rho = seg45AccY209 rho - Bool.toZMod bit * (seg45AccY209 rho - rho 43975) := by
      have hd : rho 43977 = Bool.toZMod bit * (rho 43975 - seg45AccY209 rho) := by
        rw [← hbit, seg45LadderFlatY209_eq]
        unfold seg45LadderFlatY209
        linear_combination -r5749
      unfold seg45AccY210
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

theorem seg45_rung210 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41158 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX210 rho : Seg45.F), (seg45AccY210 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43981 : Seg45.F), (rho 43982 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX210 rho : Seg45.F), (seg45AccY210 rho : Seg45.F)⟩
        ⟨(rho 43981 : Seg45.F), (rho 43982 : Seg45.F)⟩
        ⟨(seg45AccX211 rho : Seg45.F), (seg45AccY211 rho : Seg45.F)⟩
        ⟨(rho 43995 : Seg45.F), (rho 43996 : Seg45.F)⟩ := by
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
  unfold Seg45.relationRow5755 Seg45.relationLc1085 Seg45.relationLc1085Part0 Seg45.relationLc1085Part1 Seg45.relationLc1085Part2 Seg45.relationLc1085Part3 Seg45.relationLc1085Part4 Seg45.relationLc1085Part5 Seg45.relationLc1085Part6 Seg45.relationLc1085Part7 Seg45.relationLc1085Part8 Seg45.relationLc1085Part9 Seg45.relationLc1085Part10 Seg45.relationLc1085Part11 Seg45.relationLc1085Part12 Seg45.relationLc1085Part13 at r5755
  unfold Seg45.relationRow5756 at r5756
  unfold Seg45.relationRow5757 Seg45.relationLc1086 Seg45.relationLc1086Part0 Seg45.relationLc1086Part1 Seg45.relationLc1086Part2 Seg45.relationLc1086Part3 Seg45.relationLc1086Part4 Seg45.relationLc1086Part5 Seg45.relationLc1086Part6 at r5757
  unfold Seg45.relationRow5758 Seg45.relationLc1087 Seg45.relationLc1087Part0 Seg45.relationLc1087Part1 Seg45.relationLc1087Part2 Seg45.relationLc1087Part3 Seg45.relationLc1087Part4 Seg45.relationLc1087Part5 Seg45.relationLc1087Part6 at r5758
  unfold Seg45.relationRow5759 at r5759
  unfold Seg45.relationRow5760 at r5760
  unfold Seg45.relationRow5761 at r5761
  unfold Seg45.relationRow5762 Seg45.relationLc1088 Seg45.relationLc1088Part0 Seg45.relationLc1088Part1 Seg45.relationLc1088Part2 Seg45.relationLc1088Part3 Seg45.relationLc1088Part4 Seg45.relationLc1088Part5 Seg45.relationLc1088Part6 at r5762
  unfold Seg45.relationRow5763 Seg45.relationLc1089 Seg45.relationLc1089Part0 Seg45.relationLc1089Part1 Seg45.relationLc1089Part2 Seg45.relationLc1089Part3 Seg45.relationLc1089Part4 Seg45.relationLc1089Part5 Seg45.relationLc1089Part6 at r5763
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
    have hsum : seg45AccX210 rho + seg45AccY210 rho = rho 43983 := by
      rw [seg45LadderFlatX210_eq, seg45LadderFlatY210_eq]
      unfold seg45LadderFlatX210 seg45LadderFlatY210
      linear_combination r5755
    have ha0 : (rho 43981 + rho 43982) * (seg45AccX210 rho + seg45AccY210 rho) = rho 43984 := by
      rw [hsum]
      linear_combination r5756
    have ha1 : rho 43982 * seg45AccX210 rho = rho 43985 := by
      rw [seg45LadderFlatX210_eq]
      unfold seg45LadderFlatX210
      linear_combination r5757
    have ha2 : rho 43981 * seg45AccY210 rho = rho 43986 := by
      rw [seg45LadderFlatY210_eq]
      unfold seg45LadderFlatY210
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
        rw [← hbit, seg45LadderFlatX210_eq]
        unfold seg45LadderFlatX210
        linear_combination -r5762
      unfold seg45AccX211
      linear_combination hd
    have hsely : seg45AccY211 rho = seg45AccY210 rho - Bool.toZMod bit * (seg45AccY210 rho - rho 43989) := by
      have hd : rho 43991 = Bool.toZMod bit * (rho 43989 - seg45AccY210 rho) := by
        rw [← hbit, seg45LadderFlatY210_eq]
        unfold seg45LadderFlatY210
        linear_combination -r5763
      unfold seg45AccY211
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

theorem seg45_rung211 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41159 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX211 rho : Seg45.F), (seg45AccY211 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43995 : Seg45.F), (rho 43996 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX211 rho : Seg45.F), (seg45AccY211 rho : Seg45.F)⟩
        ⟨(rho 43995 : Seg45.F), (rho 43996 : Seg45.F)⟩
        ⟨(seg45AccX212 rho : Seg45.F), (seg45AccY212 rho : Seg45.F)⟩
        ⟨(rho 44009 : Seg45.F), (rho 44010 : Seg45.F)⟩ := by
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
  unfold Seg45.relationRow5769 Seg45.relationLc1090 Seg45.relationLc1090Part0 Seg45.relationLc1090Part1 Seg45.relationLc1090Part2 Seg45.relationLc1090Part3 Seg45.relationLc1090Part4 Seg45.relationLc1090Part5 Seg45.relationLc1090Part6 Seg45.relationLc1090Part7 Seg45.relationLc1090Part8 Seg45.relationLc1090Part9 Seg45.relationLc1090Part10 Seg45.relationLc1090Part11 Seg45.relationLc1090Part12 Seg45.relationLc1090Part13 at r5769
  unfold Seg45.relationRow5770 at r5770
  unfold Seg45.relationRow5771 Seg45.relationLc1091 Seg45.relationLc1091Part0 Seg45.relationLc1091Part1 Seg45.relationLc1091Part2 Seg45.relationLc1091Part3 Seg45.relationLc1091Part4 Seg45.relationLc1091Part5 Seg45.relationLc1091Part6 at r5771
  unfold Seg45.relationRow5772 Seg45.relationLc1092 Seg45.relationLc1092Part0 Seg45.relationLc1092Part1 Seg45.relationLc1092Part2 Seg45.relationLc1092Part3 Seg45.relationLc1092Part4 Seg45.relationLc1092Part5 Seg45.relationLc1092Part6 at r5772
  unfold Seg45.relationRow5773 at r5773
  unfold Seg45.relationRow5774 at r5774
  unfold Seg45.relationRow5775 at r5775
  unfold Seg45.relationRow5776 Seg45.relationLc1093 Seg45.relationLc1093Part0 Seg45.relationLc1093Part1 Seg45.relationLc1093Part2 Seg45.relationLc1093Part3 Seg45.relationLc1093Part4 Seg45.relationLc1093Part5 Seg45.relationLc1093Part6 at r5776
  unfold Seg45.relationRow5777 Seg45.relationLc1094 Seg45.relationLc1094Part0 Seg45.relationLc1094Part1 Seg45.relationLc1094Part2 Seg45.relationLc1094Part3 Seg45.relationLc1094Part4 Seg45.relationLc1094Part5 Seg45.relationLc1094Part6 at r5777
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
    have hsum : seg45AccX211 rho + seg45AccY211 rho = rho 43997 := by
      rw [seg45LadderFlatX211_eq, seg45LadderFlatY211_eq]
      unfold seg45LadderFlatX211 seg45LadderFlatY211
      linear_combination r5769
    have ha0 : (rho 43995 + rho 43996) * (seg45AccX211 rho + seg45AccY211 rho) = rho 43998 := by
      rw [hsum]
      linear_combination r5770
    have ha1 : rho 43996 * seg45AccX211 rho = rho 43999 := by
      rw [seg45LadderFlatX211_eq]
      unfold seg45LadderFlatX211
      linear_combination r5771
    have ha2 : rho 43995 * seg45AccY211 rho = rho 44000 := by
      rw [seg45LadderFlatY211_eq]
      unfold seg45LadderFlatY211
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
        rw [← hbit, seg45LadderFlatX211_eq]
        unfold seg45LadderFlatX211
        linear_combination -r5776
      unfold seg45AccX212
      linear_combination hd
    have hsely : seg45AccY212 rho = seg45AccY211 rho - Bool.toZMod bit * (seg45AccY211 rho - rho 44003) := by
      have hd : rho 44005 = Bool.toZMod bit * (rho 44003 - seg45AccY211 rho) := by
        rw [← hbit, seg45LadderFlatY211_eq]
        unfold seg45LadderFlatY211
        linear_combination -r5777
      unfold seg45AccY212
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

theorem seg45_rung212 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41160 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX212 rho : Seg45.F), (seg45AccY212 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 44009 : Seg45.F), (rho 44010 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX212 rho : Seg45.F), (seg45AccY212 rho : Seg45.F)⟩
        ⟨(rho 44009 : Seg45.F), (rho 44010 : Seg45.F)⟩
        ⟨(seg45AccX213 rho : Seg45.F), (seg45AccY213 rho : Seg45.F)⟩
        ⟨(rho 44023 : Seg45.F), (rho 44024 : Seg45.F)⟩ := by
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
  unfold Seg45.relationRow5783 Seg45.relationLc1095 Seg45.relationLc1095Part0 Seg45.relationLc1095Part1 Seg45.relationLc1095Part2 Seg45.relationLc1095Part3 Seg45.relationLc1095Part4 Seg45.relationLc1095Part5 Seg45.relationLc1095Part6 Seg45.relationLc1095Part7 Seg45.relationLc1095Part8 Seg45.relationLc1095Part9 Seg45.relationLc1095Part10 Seg45.relationLc1095Part11 Seg45.relationLc1095Part12 Seg45.relationLc1095Part13 at r5783
  unfold Seg45.relationRow5784 at r5784
  unfold Seg45.relationRow5785 Seg45.relationLc1096 Seg45.relationLc1096Part0 Seg45.relationLc1096Part1 Seg45.relationLc1096Part2 Seg45.relationLc1096Part3 Seg45.relationLc1096Part4 Seg45.relationLc1096Part5 Seg45.relationLc1096Part6 at r5785
  unfold Seg45.relationRow5786 Seg45.relationLc1097 Seg45.relationLc1097Part0 Seg45.relationLc1097Part1 Seg45.relationLc1097Part2 Seg45.relationLc1097Part3 Seg45.relationLc1097Part4 Seg45.relationLc1097Part5 Seg45.relationLc1097Part6 at r5786
  unfold Seg45.relationRow5787 at r5787
  unfold Seg45.relationRow5788 at r5788
  unfold Seg45.relationRow5789 at r5789
  unfold Seg45.relationRow5790 Seg45.relationLc1098 Seg45.relationLc1098Part0 Seg45.relationLc1098Part1 Seg45.relationLc1098Part2 Seg45.relationLc1098Part3 Seg45.relationLc1098Part4 Seg45.relationLc1098Part5 Seg45.relationLc1098Part6 at r5790
  unfold Seg45.relationRow5791 Seg45.relationLc1099 Seg45.relationLc1099Part0 Seg45.relationLc1099Part1 Seg45.relationLc1099Part2 Seg45.relationLc1099Part3 Seg45.relationLc1099Part4 Seg45.relationLc1099Part5 Seg45.relationLc1099Part6 at r5791
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
    have hsum : seg45AccX212 rho + seg45AccY212 rho = rho 44011 := by
      rw [seg45LadderFlatX212_eq, seg45LadderFlatY212_eq]
      unfold seg45LadderFlatX212 seg45LadderFlatY212
      linear_combination r5783
    have ha0 : (rho 44009 + rho 44010) * (seg45AccX212 rho + seg45AccY212 rho) = rho 44012 := by
      rw [hsum]
      linear_combination r5784
    have ha1 : rho 44010 * seg45AccX212 rho = rho 44013 := by
      rw [seg45LadderFlatX212_eq]
      unfold seg45LadderFlatX212
      linear_combination r5785
    have ha2 : rho 44009 * seg45AccY212 rho = rho 44014 := by
      rw [seg45LadderFlatY212_eq]
      unfold seg45LadderFlatY212
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
        rw [← hbit, seg45LadderFlatX212_eq]
        unfold seg45LadderFlatX212
        linear_combination -r5790
      unfold seg45AccX213
      linear_combination hd
    have hsely : seg45AccY213 rho = seg45AccY212 rho - Bool.toZMod bit * (seg45AccY212 rho - rho 44017) := by
      have hd : rho 44019 = Bool.toZMod bit * (rho 44017 - seg45AccY212 rho) := by
        rw [← hbit, seg45LadderFlatY212_eq]
        unfold seg45LadderFlatY212
        linear_combination -r5791
      unfold seg45AccY213
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

theorem seg45_rung213 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41161 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX213 rho : Seg45.F), (seg45AccY213 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 44023 : Seg45.F), (rho 44024 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX213 rho : Seg45.F), (seg45AccY213 rho : Seg45.F)⟩
        ⟨(rho 44023 : Seg45.F), (rho 44024 : Seg45.F)⟩
        ⟨(seg45AccX214 rho : Seg45.F), (seg45AccY214 rho : Seg45.F)⟩
        ⟨(rho 44037 : Seg45.F), (rho 44038 : Seg45.F)⟩ := by
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
  unfold Seg45.relationRow5797 Seg45.relationLc1100 Seg45.relationLc1100Part0 Seg45.relationLc1100Part1 Seg45.relationLc1100Part2 Seg45.relationLc1100Part3 Seg45.relationLc1100Part4 Seg45.relationLc1100Part5 Seg45.relationLc1100Part6 Seg45.relationLc1100Part7 Seg45.relationLc1100Part8 Seg45.relationLc1100Part9 Seg45.relationLc1100Part10 Seg45.relationLc1100Part11 Seg45.relationLc1100Part12 Seg45.relationLc1100Part13 at r5797
  unfold Seg45.relationRow5798 at r5798
  unfold Seg45.relationRow5799 Seg45.relationLc1101 Seg45.relationLc1101Part0 Seg45.relationLc1101Part1 Seg45.relationLc1101Part2 Seg45.relationLc1101Part3 Seg45.relationLc1101Part4 Seg45.relationLc1101Part5 Seg45.relationLc1101Part6 at r5799
  unfold Seg45.relationRow5800 Seg45.relationLc1102 Seg45.relationLc1102Part0 Seg45.relationLc1102Part1 Seg45.relationLc1102Part2 Seg45.relationLc1102Part3 Seg45.relationLc1102Part4 Seg45.relationLc1102Part5 Seg45.relationLc1102Part6 at r5800
  unfold Seg45.relationRow5801 at r5801
  unfold Seg45.relationRow5802 at r5802
  unfold Seg45.relationRow5803 at r5803
  unfold Seg45.relationRow5804 Seg45.relationLc1103 Seg45.relationLc1103Part0 Seg45.relationLc1103Part1 Seg45.relationLc1103Part2 Seg45.relationLc1103Part3 Seg45.relationLc1103Part4 Seg45.relationLc1103Part5 Seg45.relationLc1103Part6 at r5804
  unfold Seg45.relationRow5805 Seg45.relationLc1104 Seg45.relationLc1104Part0 Seg45.relationLc1104Part1 Seg45.relationLc1104Part2 Seg45.relationLc1104Part3 Seg45.relationLc1104Part4 Seg45.relationLc1104Part5 Seg45.relationLc1104Part6 at r5805
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
    have hsum : seg45AccX213 rho + seg45AccY213 rho = rho 44025 := by
      rw [seg45LadderFlatX213_eq, seg45LadderFlatY213_eq]
      unfold seg45LadderFlatX213 seg45LadderFlatY213
      linear_combination r5797
    have ha0 : (rho 44023 + rho 44024) * (seg45AccX213 rho + seg45AccY213 rho) = rho 44026 := by
      rw [hsum]
      linear_combination r5798
    have ha1 : rho 44024 * seg45AccX213 rho = rho 44027 := by
      rw [seg45LadderFlatX213_eq]
      unfold seg45LadderFlatX213
      linear_combination r5799
    have ha2 : rho 44023 * seg45AccY213 rho = rho 44028 := by
      rw [seg45LadderFlatY213_eq]
      unfold seg45LadderFlatY213
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
        rw [← hbit, seg45LadderFlatX213_eq]
        unfold seg45LadderFlatX213
        linear_combination -r5804
      unfold seg45AccX214
      linear_combination hd
    have hsely : seg45AccY214 rho = seg45AccY213 rho - Bool.toZMod bit * (seg45AccY213 rho - rho 44031) := by
      have hd : rho 44033 = Bool.toZMod bit * (rho 44031 - seg45AccY213 rho) := by
        rw [← hbit, seg45LadderFlatY213_eq]
        unfold seg45LadderFlatY213
        linear_combination -r5805
      unfold seg45AccY214
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

theorem seg45_rung214 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41162 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX214 rho : Seg45.F), (seg45AccY214 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 44037 : Seg45.F), (rho 44038 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX214 rho : Seg45.F), (seg45AccY214 rho : Seg45.F)⟩
        ⟨(rho 44037 : Seg45.F), (rho 44038 : Seg45.F)⟩
        ⟨(seg45AccX215 rho : Seg45.F), (seg45AccY215 rho : Seg45.F)⟩
        ⟨(rho 44051 : Seg45.F), (rho 44052 : Seg45.F)⟩ := by
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
  unfold Seg45.relationRow5811 Seg45.relationLc1105 Seg45.relationLc1105Part0 Seg45.relationLc1105Part1 Seg45.relationLc1105Part2 Seg45.relationLc1105Part3 Seg45.relationLc1105Part4 Seg45.relationLc1105Part5 Seg45.relationLc1105Part6 Seg45.relationLc1105Part7 Seg45.relationLc1105Part8 Seg45.relationLc1105Part9 Seg45.relationLc1105Part10 Seg45.relationLc1105Part11 Seg45.relationLc1105Part12 Seg45.relationLc1105Part13 at r5811
  unfold Seg45.relationRow5812 at r5812
  unfold Seg45.relationRow5813 Seg45.relationLc1106 Seg45.relationLc1106Part0 Seg45.relationLc1106Part1 Seg45.relationLc1106Part2 Seg45.relationLc1106Part3 Seg45.relationLc1106Part4 Seg45.relationLc1106Part5 Seg45.relationLc1106Part6 at r5813
  unfold Seg45.relationRow5814 Seg45.relationLc1107 Seg45.relationLc1107Part0 Seg45.relationLc1107Part1 Seg45.relationLc1107Part2 Seg45.relationLc1107Part3 Seg45.relationLc1107Part4 Seg45.relationLc1107Part5 Seg45.relationLc1107Part6 at r5814
  unfold Seg45.relationRow5815 at r5815
  unfold Seg45.relationRow5816 at r5816
  unfold Seg45.relationRow5817 at r5817
  unfold Seg45.relationRow5818 Seg45.relationLc1108 Seg45.relationLc1108Part0 Seg45.relationLc1108Part1 Seg45.relationLc1108Part2 Seg45.relationLc1108Part3 Seg45.relationLc1108Part4 Seg45.relationLc1108Part5 Seg45.relationLc1108Part6 at r5818
  unfold Seg45.relationRow5819 Seg45.relationLc1109 Seg45.relationLc1109Part0 Seg45.relationLc1109Part1 Seg45.relationLc1109Part2 Seg45.relationLc1109Part3 Seg45.relationLc1109Part4 Seg45.relationLc1109Part5 Seg45.relationLc1109Part6 at r5819
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
    have hsum : seg45AccX214 rho + seg45AccY214 rho = rho 44039 := by
      rw [seg45LadderFlatX214_eq, seg45LadderFlatY214_eq]
      unfold seg45LadderFlatX214 seg45LadderFlatY214
      linear_combination r5811
    have ha0 : (rho 44037 + rho 44038) * (seg45AccX214 rho + seg45AccY214 rho) = rho 44040 := by
      rw [hsum]
      linear_combination r5812
    have ha1 : rho 44038 * seg45AccX214 rho = rho 44041 := by
      rw [seg45LadderFlatX214_eq]
      unfold seg45LadderFlatX214
      linear_combination r5813
    have ha2 : rho 44037 * seg45AccY214 rho = rho 44042 := by
      rw [seg45LadderFlatY214_eq]
      unfold seg45LadderFlatY214
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
        rw [← hbit, seg45LadderFlatX214_eq]
        unfold seg45LadderFlatX214
        linear_combination -r5818
      unfold seg45AccX215
      linear_combination hd
    have hsely : seg45AccY215 rho = seg45AccY214 rho - Bool.toZMod bit * (seg45AccY214 rho - rho 44045) := by
      have hd : rho 44047 = Bool.toZMod bit * (rho 44045 - seg45AccY214 rho) := by
        rw [← hbit, seg45LadderFlatY214_eq]
        unfold seg45LadderFlatY214
        linear_combination -r5819
      unfold seg45AccY215
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

theorem seg45_rung215 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41163 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX215 rho : Seg45.F), (seg45AccY215 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 44051 : Seg45.F), (rho 44052 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX215 rho : Seg45.F), (seg45AccY215 rho : Seg45.F)⟩
        ⟨(rho 44051 : Seg45.F), (rho 44052 : Seg45.F)⟩
        ⟨(seg45AccX216 rho : Seg45.F), (seg45AccY216 rho : Seg45.F)⟩
        ⟨(rho 44065 : Seg45.F), (rho 44066 : Seg45.F)⟩ := by
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
  unfold Seg45.relationRow5825 Seg45.relationLc1110 Seg45.relationLc1110Part0 Seg45.relationLc1110Part1 Seg45.relationLc1110Part2 Seg45.relationLc1110Part3 Seg45.relationLc1110Part4 Seg45.relationLc1110Part5 Seg45.relationLc1110Part6 Seg45.relationLc1110Part7 Seg45.relationLc1110Part8 Seg45.relationLc1110Part9 Seg45.relationLc1110Part10 Seg45.relationLc1110Part11 Seg45.relationLc1110Part12 Seg45.relationLc1110Part13 at r5825
  unfold Seg45.relationRow5826 at r5826
  unfold Seg45.relationRow5827 Seg45.relationLc1111 Seg45.relationLc1111Part0 Seg45.relationLc1111Part1 Seg45.relationLc1111Part2 Seg45.relationLc1111Part3 Seg45.relationLc1111Part4 Seg45.relationLc1111Part5 Seg45.relationLc1111Part6 at r5827
  unfold Seg45.relationRow5828 Seg45.relationLc1112 Seg45.relationLc1112Part0 Seg45.relationLc1112Part1 Seg45.relationLc1112Part2 Seg45.relationLc1112Part3 Seg45.relationLc1112Part4 Seg45.relationLc1112Part5 Seg45.relationLc1112Part6 at r5828
  unfold Seg45.relationRow5829 at r5829
  unfold Seg45.relationRow5830 at r5830
  unfold Seg45.relationRow5831 at r5831
  unfold Seg45.relationRow5832 Seg45.relationLc1113 Seg45.relationLc1113Part0 Seg45.relationLc1113Part1 Seg45.relationLc1113Part2 Seg45.relationLc1113Part3 Seg45.relationLc1113Part4 Seg45.relationLc1113Part5 Seg45.relationLc1113Part6 at r5832
  unfold Seg45.relationRow5833 Seg45.relationLc1114 Seg45.relationLc1114Part0 Seg45.relationLc1114Part1 Seg45.relationLc1114Part2 Seg45.relationLc1114Part3 Seg45.relationLc1114Part4 Seg45.relationLc1114Part5 Seg45.relationLc1114Part6 at r5833
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
    have hsum : seg45AccX215 rho + seg45AccY215 rho = rho 44053 := by
      rw [seg45LadderFlatX215_eq, seg45LadderFlatY215_eq]
      unfold seg45LadderFlatX215 seg45LadderFlatY215
      linear_combination r5825
    have ha0 : (rho 44051 + rho 44052) * (seg45AccX215 rho + seg45AccY215 rho) = rho 44054 := by
      rw [hsum]
      linear_combination r5826
    have ha1 : rho 44052 * seg45AccX215 rho = rho 44055 := by
      rw [seg45LadderFlatX215_eq]
      unfold seg45LadderFlatX215
      linear_combination r5827
    have ha2 : rho 44051 * seg45AccY215 rho = rho 44056 := by
      rw [seg45LadderFlatY215_eq]
      unfold seg45LadderFlatY215
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
        rw [← hbit, seg45LadderFlatX215_eq]
        unfold seg45LadderFlatX215
        linear_combination -r5832
      unfold seg45AccX216
      linear_combination hd
    have hsely : seg45AccY216 rho = seg45AccY215 rho - Bool.toZMod bit * (seg45AccY215 rho - rho 44059) := by
      have hd : rho 44061 = Bool.toZMod bit * (rho 44059 - seg45AccY215 rho) := by
        rw [← hbit, seg45LadderFlatY215_eq]
        unfold seg45LadderFlatY215
        linear_combination -r5833
      unfold seg45AccY216
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

theorem seg45_rung216 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41164 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX216 rho : Seg45.F), (seg45AccY216 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 44065 : Seg45.F), (rho 44066 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX216 rho : Seg45.F), (seg45AccY216 rho : Seg45.F)⟩
        ⟨(rho 44065 : Seg45.F), (rho 44066 : Seg45.F)⟩
        ⟨(seg45AccX217 rho : Seg45.F), (seg45AccY217 rho : Seg45.F)⟩
        ⟨(rho 44079 : Seg45.F), (rho 44080 : Seg45.F)⟩ := by
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
  unfold Seg45.relationRow5839 Seg45.relationLc1115 Seg45.relationLc1115Part0 Seg45.relationLc1115Part1 Seg45.relationLc1115Part2 Seg45.relationLc1115Part3 Seg45.relationLc1115Part4 Seg45.relationLc1115Part5 Seg45.relationLc1115Part6 Seg45.relationLc1115Part7 Seg45.relationLc1115Part8 Seg45.relationLc1115Part9 Seg45.relationLc1115Part10 Seg45.relationLc1115Part11 Seg45.relationLc1115Part12 Seg45.relationLc1115Part13 at r5839
  unfold Seg45.relationRow5840 at r5840
  unfold Seg45.relationRow5841 Seg45.relationLc1116 Seg45.relationLc1116Part0 Seg45.relationLc1116Part1 Seg45.relationLc1116Part2 Seg45.relationLc1116Part3 Seg45.relationLc1116Part4 Seg45.relationLc1116Part5 Seg45.relationLc1116Part6 at r5841
  unfold Seg45.relationRow5842 Seg45.relationLc1117 Seg45.relationLc1117Part0 Seg45.relationLc1117Part1 Seg45.relationLc1117Part2 Seg45.relationLc1117Part3 Seg45.relationLc1117Part4 Seg45.relationLc1117Part5 Seg45.relationLc1117Part6 at r5842
  unfold Seg45.relationRow5843 at r5843
  unfold Seg45.relationRow5844 at r5844
  unfold Seg45.relationRow5845 at r5845
  unfold Seg45.relationRow5846 Seg45.relationLc1118 Seg45.relationLc1118Part0 Seg45.relationLc1118Part1 Seg45.relationLc1118Part2 Seg45.relationLc1118Part3 Seg45.relationLc1118Part4 Seg45.relationLc1118Part5 Seg45.relationLc1118Part6 at r5846
  unfold Seg45.relationRow5847 Seg45.relationLc1119 Seg45.relationLc1119Part0 Seg45.relationLc1119Part1 Seg45.relationLc1119Part2 Seg45.relationLc1119Part3 Seg45.relationLc1119Part4 Seg45.relationLc1119Part5 Seg45.relationLc1119Part6 at r5847
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
    have hsum : seg45AccX216 rho + seg45AccY216 rho = rho 44067 := by
      rw [seg45LadderFlatX216_eq, seg45LadderFlatY216_eq]
      unfold seg45LadderFlatX216 seg45LadderFlatY216
      linear_combination r5839
    have ha0 : (rho 44065 + rho 44066) * (seg45AccX216 rho + seg45AccY216 rho) = rho 44068 := by
      rw [hsum]
      linear_combination r5840
    have ha1 : rho 44066 * seg45AccX216 rho = rho 44069 := by
      rw [seg45LadderFlatX216_eq]
      unfold seg45LadderFlatX216
      linear_combination r5841
    have ha2 : rho 44065 * seg45AccY216 rho = rho 44070 := by
      rw [seg45LadderFlatY216_eq]
      unfold seg45LadderFlatY216
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
        rw [← hbit, seg45LadderFlatX216_eq]
        unfold seg45LadderFlatX216
        linear_combination -r5846
      unfold seg45AccX217
      linear_combination hd
    have hsely : seg45AccY217 rho = seg45AccY216 rho - Bool.toZMod bit * (seg45AccY216 rho - rho 44073) := by
      have hd : rho 44075 = Bool.toZMod bit * (rho 44073 - seg45AccY216 rho) := by
        rw [← hbit, seg45LadderFlatY216_eq]
        unfold seg45LadderFlatY216
        linear_combination -r5847
      unfold seg45AccY217
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

theorem seg45_rung217 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41165 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX217 rho : Seg45.F), (seg45AccY217 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 44079 : Seg45.F), (rho 44080 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX217 rho : Seg45.F), (seg45AccY217 rho : Seg45.F)⟩
        ⟨(rho 44079 : Seg45.F), (rho 44080 : Seg45.F)⟩
        ⟨(seg45AccX218 rho : Seg45.F), (seg45AccY218 rho : Seg45.F)⟩
        ⟨(rho 44093 : Seg45.F), (rho 44094 : Seg45.F)⟩ := by
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
  unfold Seg45.relationRow5853 Seg45.relationLc1120 Seg45.relationLc1120Part0 Seg45.relationLc1120Part1 Seg45.relationLc1120Part2 Seg45.relationLc1120Part3 Seg45.relationLc1120Part4 Seg45.relationLc1120Part5 Seg45.relationLc1120Part6 Seg45.relationLc1120Part7 Seg45.relationLc1120Part8 Seg45.relationLc1120Part9 Seg45.relationLc1120Part10 Seg45.relationLc1120Part11 Seg45.relationLc1120Part12 Seg45.relationLc1120Part13 at r5853
  unfold Seg45.relationRow5854 at r5854
  unfold Seg45.relationRow5855 Seg45.relationLc1121 Seg45.relationLc1121Part0 Seg45.relationLc1121Part1 Seg45.relationLc1121Part2 Seg45.relationLc1121Part3 Seg45.relationLc1121Part4 Seg45.relationLc1121Part5 Seg45.relationLc1121Part6 at r5855
  unfold Seg45.relationRow5856 Seg45.relationLc1122 Seg45.relationLc1122Part0 Seg45.relationLc1122Part1 Seg45.relationLc1122Part2 Seg45.relationLc1122Part3 Seg45.relationLc1122Part4 Seg45.relationLc1122Part5 Seg45.relationLc1122Part6 at r5856
  unfold Seg45.relationRow5857 at r5857
  unfold Seg45.relationRow5858 at r5858
  unfold Seg45.relationRow5859 at r5859
  unfold Seg45.relationRow5860 Seg45.relationLc1123 Seg45.relationLc1123Part0 Seg45.relationLc1123Part1 Seg45.relationLc1123Part2 Seg45.relationLc1123Part3 Seg45.relationLc1123Part4 Seg45.relationLc1123Part5 Seg45.relationLc1123Part6 at r5860
  unfold Seg45.relationRow5861 Seg45.relationLc1124 Seg45.relationLc1124Part0 Seg45.relationLc1124Part1 Seg45.relationLc1124Part2 Seg45.relationLc1124Part3 Seg45.relationLc1124Part4 Seg45.relationLc1124Part5 Seg45.relationLc1124Part6 at r5861
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
    have hsum : seg45AccX217 rho + seg45AccY217 rho = rho 44081 := by
      rw [seg45LadderFlatX217_eq, seg45LadderFlatY217_eq]
      unfold seg45LadderFlatX217 seg45LadderFlatY217
      linear_combination r5853
    have ha0 : (rho 44079 + rho 44080) * (seg45AccX217 rho + seg45AccY217 rho) = rho 44082 := by
      rw [hsum]
      linear_combination r5854
    have ha1 : rho 44080 * seg45AccX217 rho = rho 44083 := by
      rw [seg45LadderFlatX217_eq]
      unfold seg45LadderFlatX217
      linear_combination r5855
    have ha2 : rho 44079 * seg45AccY217 rho = rho 44084 := by
      rw [seg45LadderFlatY217_eq]
      unfold seg45LadderFlatY217
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
        rw [← hbit, seg45LadderFlatX217_eq]
        unfold seg45LadderFlatX217
        linear_combination -r5860
      unfold seg45AccX218
      linear_combination hd
    have hsely : seg45AccY218 rho = seg45AccY217 rho - Bool.toZMod bit * (seg45AccY217 rho - rho 44087) := by
      have hd : rho 44089 = Bool.toZMod bit * (rho 44087 - seg45AccY217 rho) := by
        rw [← hbit, seg45LadderFlatY217_eq]
        unfold seg45LadderFlatY217
        linear_combination -r5861
      unfold seg45AccY218
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

theorem seg45_rung218 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41166 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX218 rho : Seg45.F), (seg45AccY218 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 44093 : Seg45.F), (rho 44094 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX218 rho : Seg45.F), (seg45AccY218 rho : Seg45.F)⟩
        ⟨(rho 44093 : Seg45.F), (rho 44094 : Seg45.F)⟩
        ⟨(seg45AccX219 rho : Seg45.F), (seg45AccY219 rho : Seg45.F)⟩
        ⟨(rho 44107 : Seg45.F), (rho 44108 : Seg45.F)⟩ := by
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
  unfold Seg45.relationRow5867 Seg45.relationLc1125 Seg45.relationLc1125Part0 Seg45.relationLc1125Part1 Seg45.relationLc1125Part2 Seg45.relationLc1125Part3 Seg45.relationLc1125Part4 Seg45.relationLc1125Part5 Seg45.relationLc1125Part6 Seg45.relationLc1125Part7 Seg45.relationLc1125Part8 Seg45.relationLc1125Part9 Seg45.relationLc1125Part10 Seg45.relationLc1125Part11 Seg45.relationLc1125Part12 Seg45.relationLc1125Part13 at r5867
  unfold Seg45.relationRow5868 at r5868
  unfold Seg45.relationRow5869 Seg45.relationLc1126 Seg45.relationLc1126Part0 Seg45.relationLc1126Part1 Seg45.relationLc1126Part2 Seg45.relationLc1126Part3 Seg45.relationLc1126Part4 Seg45.relationLc1126Part5 Seg45.relationLc1126Part6 at r5869
  unfold Seg45.relationRow5870 Seg45.relationLc1127 Seg45.relationLc1127Part0 Seg45.relationLc1127Part1 Seg45.relationLc1127Part2 Seg45.relationLc1127Part3 Seg45.relationLc1127Part4 Seg45.relationLc1127Part5 Seg45.relationLc1127Part6 at r5870
  unfold Seg45.relationRow5871 at r5871
  unfold Seg45.relationRow5872 at r5872
  unfold Seg45.relationRow5873 at r5873
  unfold Seg45.relationRow5874 Seg45.relationLc1128 Seg45.relationLc1128Part0 Seg45.relationLc1128Part1 Seg45.relationLc1128Part2 Seg45.relationLc1128Part3 Seg45.relationLc1128Part4 Seg45.relationLc1128Part5 Seg45.relationLc1128Part6 at r5874
  unfold Seg45.relationRow5875 Seg45.relationLc1129 Seg45.relationLc1129Part0 Seg45.relationLc1129Part1 Seg45.relationLc1129Part2 Seg45.relationLc1129Part3 Seg45.relationLc1129Part4 Seg45.relationLc1129Part5 Seg45.relationLc1129Part6 at r5875
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
    have hsum : seg45AccX218 rho + seg45AccY218 rho = rho 44095 := by
      rw [seg45LadderFlatX218_eq, seg45LadderFlatY218_eq]
      unfold seg45LadderFlatX218 seg45LadderFlatY218
      linear_combination r5867
    have ha0 : (rho 44093 + rho 44094) * (seg45AccX218 rho + seg45AccY218 rho) = rho 44096 := by
      rw [hsum]
      linear_combination r5868
    have ha1 : rho 44094 * seg45AccX218 rho = rho 44097 := by
      rw [seg45LadderFlatX218_eq]
      unfold seg45LadderFlatX218
      linear_combination r5869
    have ha2 : rho 44093 * seg45AccY218 rho = rho 44098 := by
      rw [seg45LadderFlatY218_eq]
      unfold seg45LadderFlatY218
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
        rw [← hbit, seg45LadderFlatX218_eq]
        unfold seg45LadderFlatX218
        linear_combination -r5874
      unfold seg45AccX219
      linear_combination hd
    have hsely : seg45AccY219 rho = seg45AccY218 rho - Bool.toZMod bit * (seg45AccY218 rho - rho 44101) := by
      have hd : rho 44103 = Bool.toZMod bit * (rho 44101 - seg45AccY218 rho) := by
        rw [← hbit, seg45LadderFlatY218_eq]
        unfold seg45LadderFlatY218
        linear_combination -r5875
      unfold seg45AccY219
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

theorem seg45_rung219 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41167 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX219 rho : Seg45.F), (seg45AccY219 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 44107 : Seg45.F), (rho 44108 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX219 rho : Seg45.F), (seg45AccY219 rho : Seg45.F)⟩
        ⟨(rho 44107 : Seg45.F), (rho 44108 : Seg45.F)⟩
        ⟨(seg45AccX220 rho : Seg45.F), (seg45AccY220 rho : Seg45.F)⟩
        ⟨(rho 44121 : Seg45.F), (rho 44122 : Seg45.F)⟩ := by
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
  unfold Seg45.relationRow5881 Seg45.relationLc1130 Seg45.relationLc1130Part0 Seg45.relationLc1130Part1 Seg45.relationLc1130Part2 Seg45.relationLc1130Part3 Seg45.relationLc1130Part4 Seg45.relationLc1130Part5 Seg45.relationLc1130Part6 Seg45.relationLc1130Part7 Seg45.relationLc1130Part8 Seg45.relationLc1130Part9 Seg45.relationLc1130Part10 Seg45.relationLc1130Part11 Seg45.relationLc1130Part12 Seg45.relationLc1130Part13 at r5881
  unfold Seg45.relationRow5882 at r5882
  unfold Seg45.relationRow5883 Seg45.relationLc1131 Seg45.relationLc1131Part0 Seg45.relationLc1131Part1 Seg45.relationLc1131Part2 Seg45.relationLc1131Part3 Seg45.relationLc1131Part4 Seg45.relationLc1131Part5 Seg45.relationLc1131Part6 at r5883
  unfold Seg45.relationRow5884 Seg45.relationLc1132 Seg45.relationLc1132Part0 Seg45.relationLc1132Part1 Seg45.relationLc1132Part2 Seg45.relationLc1132Part3 Seg45.relationLc1132Part4 Seg45.relationLc1132Part5 Seg45.relationLc1132Part6 at r5884
  unfold Seg45.relationRow5885 at r5885
  unfold Seg45.relationRow5886 at r5886
  unfold Seg45.relationRow5887 at r5887
  unfold Seg45.relationRow5888 Seg45.relationLc1133 Seg45.relationLc1133Part0 Seg45.relationLc1133Part1 Seg45.relationLc1133Part2 Seg45.relationLc1133Part3 Seg45.relationLc1133Part4 Seg45.relationLc1133Part5 Seg45.relationLc1133Part6 at r5888
  unfold Seg45.relationRow5889 Seg45.relationLc1134 Seg45.relationLc1134Part0 Seg45.relationLc1134Part1 Seg45.relationLc1134Part2 Seg45.relationLc1134Part3 Seg45.relationLc1134Part4 Seg45.relationLc1134Part5 Seg45.relationLc1134Part6 at r5889
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
    have hsum : seg45AccX219 rho + seg45AccY219 rho = rho 44109 := by
      rw [seg45LadderFlatX219_eq, seg45LadderFlatY219_eq]
      unfold seg45LadderFlatX219 seg45LadderFlatY219
      linear_combination r5881
    have ha0 : (rho 44107 + rho 44108) * (seg45AccX219 rho + seg45AccY219 rho) = rho 44110 := by
      rw [hsum]
      linear_combination r5882
    have ha1 : rho 44108 * seg45AccX219 rho = rho 44111 := by
      rw [seg45LadderFlatX219_eq]
      unfold seg45LadderFlatX219
      linear_combination r5883
    have ha2 : rho 44107 * seg45AccY219 rho = rho 44112 := by
      rw [seg45LadderFlatY219_eq]
      unfold seg45LadderFlatY219
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
        rw [← hbit, seg45LadderFlatX219_eq]
        unfold seg45LadderFlatX219
        linear_combination -r5888
      unfold seg45AccX220
      linear_combination hd
    have hsely : seg45AccY220 rho = seg45AccY219 rho - Bool.toZMod bit * (seg45AccY219 rho - rho 44115) := by
      have hd : rho 44117 = Bool.toZMod bit * (rho 44115 - seg45AccY219 rho) := by
        rw [← hbit, seg45LadderFlatY219_eq]
        unfold seg45LadderFlatY219
        linear_combination -r5889
      unfold seg45AccY220
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

theorem seg45_rung220 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41168 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX220 rho : Seg45.F), (seg45AccY220 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 44121 : Seg45.F), (rho 44122 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX220 rho : Seg45.F), (seg45AccY220 rho : Seg45.F)⟩
        ⟨(rho 44121 : Seg45.F), (rho 44122 : Seg45.F)⟩
        ⟨(seg45AccX221 rho : Seg45.F), (seg45AccY221 rho : Seg45.F)⟩
        ⟨(rho 44135 : Seg45.F), (rho 44136 : Seg45.F)⟩ := by
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
  rcases p73 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5895, r5896, r5897, r5898, r5899, r5900, r5901, r5902, r5903, r5904, r5905, r5906, r5907, r5908, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow5895 Seg45.relationLc1135 Seg45.relationLc1135Part0 Seg45.relationLc1135Part1 Seg45.relationLc1135Part2 Seg45.relationLc1135Part3 Seg45.relationLc1135Part4 Seg45.relationLc1135Part5 Seg45.relationLc1135Part6 Seg45.relationLc1135Part7 Seg45.relationLc1135Part8 Seg45.relationLc1135Part9 Seg45.relationLc1135Part10 Seg45.relationLc1135Part11 Seg45.relationLc1135Part12 Seg45.relationLc1135Part13 at r5895
  unfold Seg45.relationRow5896 at r5896
  unfold Seg45.relationRow5897 Seg45.relationLc1136 Seg45.relationLc1136Part0 Seg45.relationLc1136Part1 Seg45.relationLc1136Part2 Seg45.relationLc1136Part3 Seg45.relationLc1136Part4 Seg45.relationLc1136Part5 Seg45.relationLc1136Part6 at r5897
  unfold Seg45.relationRow5898 Seg45.relationLc1137 Seg45.relationLc1137Part0 Seg45.relationLc1137Part1 Seg45.relationLc1137Part2 Seg45.relationLc1137Part3 Seg45.relationLc1137Part4 Seg45.relationLc1137Part5 Seg45.relationLc1137Part6 at r5898
  unfold Seg45.relationRow5899 at r5899
  unfold Seg45.relationRow5900 at r5900
  unfold Seg45.relationRow5901 at r5901
  unfold Seg45.relationRow5902 Seg45.relationLc1138 Seg45.relationLc1138Part0 Seg45.relationLc1138Part1 Seg45.relationLc1138Part2 Seg45.relationLc1138Part3 Seg45.relationLc1138Part4 Seg45.relationLc1138Part5 Seg45.relationLc1138Part6 at r5902
  unfold Seg45.relationRow5903 Seg45.relationLc1139 Seg45.relationLc1139Part0 Seg45.relationLc1139Part1 Seg45.relationLc1139Part2 Seg45.relationLc1139Part3 Seg45.relationLc1139Part4 Seg45.relationLc1139Part5 Seg45.relationLc1139Part6 at r5903
  unfold Seg45.relationRow5904 at r5904
  unfold Seg45.relationRow5905 at r5905
  unfold Seg45.relationRow5906 at r5906
  unfold Seg45.relationRow5907 at r5907
  unfold Seg45.relationRow5908 at r5908
  have hrung220 (bit : Bool) (hbit : rho 41168 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX220 rho : Seg45.F), (seg45AccY220 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 44121 : Seg45.F), (rho 44122 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX220 rho : Seg45.F), (seg45AccY220 rho : Seg45.F)⟩
        ⟨(rho 44121 : Seg45.F), (rho 44122 : Seg45.F)⟩
        ⟨(seg45AccX221 rho : Seg45.F), (seg45AccY221 rho : Seg45.F)⟩
        ⟨(rho 44135 : Seg45.F), (rho 44136 : Seg45.F)⟩ := by
    have hsum : seg45AccX220 rho + seg45AccY220 rho = rho 44123 := by
      rw [seg45LadderFlatX220_eq, seg45LadderFlatY220_eq]
      unfold seg45LadderFlatX220 seg45LadderFlatY220
      linear_combination r5895
    have ha0 : (rho 44121 + rho 44122) * (seg45AccX220 rho + seg45AccY220 rho) = rho 44124 := by
      rw [hsum]
      linear_combination r5896
    have ha1 : rho 44122 * seg45AccX220 rho = rho 44125 := by
      rw [seg45LadderFlatX220_eq]
      unfold seg45LadderFlatX220
      linear_combination r5897
    have ha2 : rho 44121 * seg45AccY220 rho = rho 44126 := by
      rw [seg45LadderFlatY220_eq]
      unfold seg45LadderFlatY220
      linear_combination r5898
    have ha3 : 3021 * rho 44125 * rho 44126 = rho 44127 := by
      linear_combination r5899
    have ha4 : rho 44128 * (1 + rho 44127) = rho 44125 + rho 44126 := by
      linear_combination r5900
    have ha5 : rho 44129 * (1 - rho 44127) = rho 44124 - rho 44125 - rho 44126 := by
      linear_combination r5901
    have haddx :
        rho 44128 * (1 + 3021 * (rho 44122 * seg45AccX220 rho) * (rho 44121 * seg45AccY220 rho)) =
          rho 44122 * seg45AccX220 rho + rho 44121 * seg45AccY220 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 44129 * (1 - 3021 * (rho 44122 * seg45AccX220 rho) * (rho 44121 * seg45AccY220 rho)) =
          (-1) * (rho 44122 * seg45AccX220 rho) - rho 44121 * seg45AccY220 rho +
            (seg45AccY220 rho - seg45AccX220 rho * (-1)) * (rho 44121 + rho 44122) := by
      rw [ha1, ha2, ha3]
      calc
        rho 44129 * (1 - rho 44127) = rho 44124 - rho 44125 - rho 44126 := ha5
        _ = (-1) * rho 44125 - rho 44126 + (seg45AccY220 rho - seg45AccX220 rho * (-1)) * (rho 44121 + rho 44122) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX221 rho = seg45AccX220 rho - Bool.toZMod bit * (seg45AccX220 rho - rho 44128) := by
      have hd : rho 44130 = Bool.toZMod bit * (rho 44128 - seg45AccX220 rho) := by
        rw [← hbit, seg45LadderFlatX220_eq]
        unfold seg45LadderFlatX220
        linear_combination -r5902
      unfold seg45AccX221
      linear_combination hd
    have hsely : seg45AccY221 rho = seg45AccY220 rho - Bool.toZMod bit * (seg45AccY220 rho - rho 44129) := by
      have hd : rho 44131 = Bool.toZMod bit * (rho 44129 - seg45AccY220 rho) := by
        rw [← hbit, seg45LadderFlatY220_eq]
        unfold seg45LadderFlatY220
        linear_combination -r5903
      unfold seg45AccY221
      linear_combination hd
    have hd0 : rho 44121 * rho 44122 = rho 44132 := by linear_combination r5904
    have hd1 : rho 44121 * rho 44121 = rho 44133 := by linear_combination r5905
    have hd2 : rho 44122 * rho 44122 = rho 44134 := by linear_combination r5906
    have hd3 : rho 44135 * (rho 44122 * rho 44122 + rho 44121 * rho 44121 * (-1)) = 2 * (rho 44121 * rho 44122) := by
      rw [hd0, hd1, hd2]
      linear_combination r5907
    have hd4 : rho 44136 * (2 - (rho 44122 * rho 44122 + rho 44121 * rho 44121 * (-1))) = rho 44122 * rho 44122 - rho 44121 * rho 44121 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5908
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX220 rho : Seg45.F), (seg45AccY220 rho : Seg45.F)⟩
      ⟨(rho 44121 : Seg45.F), (rho 44122 : Seg45.F)⟩
      ⟨(rho 44128 : Seg45.F), (rho 44129 : Seg45.F)⟩
      ⟨(seg45AccX221 rho : Seg45.F), (seg45AccY221 rho : Seg45.F)⟩
      ⟨(rho 44135 : Seg45.F), (rho 44136 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung220

theorem seg45_rung221 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41169 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX221 rho : Seg45.F), (seg45AccY221 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 44135 : Seg45.F), (rho 44136 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX221 rho : Seg45.F), (seg45AccY221 rho : Seg45.F)⟩
        ⟨(rho 44135 : Seg45.F), (rho 44136 : Seg45.F)⟩
        ⟨(seg45AccX222 rho : Seg45.F), (seg45AccY222 rho : Seg45.F)⟩
        ⟨(rho 44149 : Seg45.F), (rho 44150 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p73, p74, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart73 at p73
  rcases p73 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5909, r5910, r5911, r5912, r5913, r5914, r5915, r5916, r5917, r5918, r5919⟩
  unfold Seg45.relationPart74 at p74
  rcases p74 with ⟨r5920, r5921, r5922, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow5909 Seg45.relationLc1140 Seg45.relationLc1140Part0 Seg45.relationLc1140Part1 Seg45.relationLc1140Part2 Seg45.relationLc1140Part3 Seg45.relationLc1140Part4 Seg45.relationLc1140Part5 Seg45.relationLc1140Part6 Seg45.relationLc1140Part7 Seg45.relationLc1140Part8 Seg45.relationLc1140Part9 Seg45.relationLc1140Part10 Seg45.relationLc1140Part11 Seg45.relationLc1140Part12 Seg45.relationLc1140Part13 at r5909
  unfold Seg45.relationRow5910 at r5910
  unfold Seg45.relationRow5911 Seg45.relationLc1141 Seg45.relationLc1141Part0 Seg45.relationLc1141Part1 Seg45.relationLc1141Part2 Seg45.relationLc1141Part3 Seg45.relationLc1141Part4 Seg45.relationLc1141Part5 Seg45.relationLc1141Part6 at r5911
  unfold Seg45.relationRow5912 Seg45.relationLc1142 Seg45.relationLc1142Part0 Seg45.relationLc1142Part1 Seg45.relationLc1142Part2 Seg45.relationLc1142Part3 Seg45.relationLc1142Part4 Seg45.relationLc1142Part5 Seg45.relationLc1142Part6 at r5912
  unfold Seg45.relationRow5913 at r5913
  unfold Seg45.relationRow5914 at r5914
  unfold Seg45.relationRow5915 at r5915
  unfold Seg45.relationRow5916 Seg45.relationLc1143 Seg45.relationLc1143Part0 Seg45.relationLc1143Part1 Seg45.relationLc1143Part2 Seg45.relationLc1143Part3 Seg45.relationLc1143Part4 Seg45.relationLc1143Part5 Seg45.relationLc1143Part6 at r5916
  unfold Seg45.relationRow5917 Seg45.relationLc1144 Seg45.relationLc1144Part0 Seg45.relationLc1144Part1 Seg45.relationLc1144Part2 Seg45.relationLc1144Part3 Seg45.relationLc1144Part4 Seg45.relationLc1144Part5 Seg45.relationLc1144Part6 at r5917
  unfold Seg45.relationRow5918 at r5918
  unfold Seg45.relationRow5919 at r5919
  unfold Seg45.relationRow5920 at r5920
  unfold Seg45.relationRow5921 at r5921
  unfold Seg45.relationRow5922 at r5922
  have hrung221 (bit : Bool) (hbit : rho 41169 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX221 rho : Seg45.F), (seg45AccY221 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 44135 : Seg45.F), (rho 44136 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX221 rho : Seg45.F), (seg45AccY221 rho : Seg45.F)⟩
        ⟨(rho 44135 : Seg45.F), (rho 44136 : Seg45.F)⟩
        ⟨(seg45AccX222 rho : Seg45.F), (seg45AccY222 rho : Seg45.F)⟩
        ⟨(rho 44149 : Seg45.F), (rho 44150 : Seg45.F)⟩ := by
    have hsum : seg45AccX221 rho + seg45AccY221 rho = rho 44137 := by
      rw [seg45LadderFlatX221_eq, seg45LadderFlatY221_eq]
      unfold seg45LadderFlatX221 seg45LadderFlatY221
      linear_combination r5909
    have ha0 : (rho 44135 + rho 44136) * (seg45AccX221 rho + seg45AccY221 rho) = rho 44138 := by
      rw [hsum]
      linear_combination r5910
    have ha1 : rho 44136 * seg45AccX221 rho = rho 44139 := by
      rw [seg45LadderFlatX221_eq]
      unfold seg45LadderFlatX221
      linear_combination r5911
    have ha2 : rho 44135 * seg45AccY221 rho = rho 44140 := by
      rw [seg45LadderFlatY221_eq]
      unfold seg45LadderFlatY221
      linear_combination r5912
    have ha3 : 3021 * rho 44139 * rho 44140 = rho 44141 := by
      linear_combination r5913
    have ha4 : rho 44142 * (1 + rho 44141) = rho 44139 + rho 44140 := by
      linear_combination r5914
    have ha5 : rho 44143 * (1 - rho 44141) = rho 44138 - rho 44139 - rho 44140 := by
      linear_combination r5915
    have haddx :
        rho 44142 * (1 + 3021 * (rho 44136 * seg45AccX221 rho) * (rho 44135 * seg45AccY221 rho)) =
          rho 44136 * seg45AccX221 rho + rho 44135 * seg45AccY221 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 44143 * (1 - 3021 * (rho 44136 * seg45AccX221 rho) * (rho 44135 * seg45AccY221 rho)) =
          (-1) * (rho 44136 * seg45AccX221 rho) - rho 44135 * seg45AccY221 rho +
            (seg45AccY221 rho - seg45AccX221 rho * (-1)) * (rho 44135 + rho 44136) := by
      rw [ha1, ha2, ha3]
      calc
        rho 44143 * (1 - rho 44141) = rho 44138 - rho 44139 - rho 44140 := ha5
        _ = (-1) * rho 44139 - rho 44140 + (seg45AccY221 rho - seg45AccX221 rho * (-1)) * (rho 44135 + rho 44136) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX222 rho = seg45AccX221 rho - Bool.toZMod bit * (seg45AccX221 rho - rho 44142) := by
      have hd : rho 44144 = Bool.toZMod bit * (rho 44142 - seg45AccX221 rho) := by
        rw [← hbit, seg45LadderFlatX221_eq]
        unfold seg45LadderFlatX221
        linear_combination -r5916
      unfold seg45AccX222
      linear_combination hd
    have hsely : seg45AccY222 rho = seg45AccY221 rho - Bool.toZMod bit * (seg45AccY221 rho - rho 44143) := by
      have hd : rho 44145 = Bool.toZMod bit * (rho 44143 - seg45AccY221 rho) := by
        rw [← hbit, seg45LadderFlatY221_eq]
        unfold seg45LadderFlatY221
        linear_combination -r5917
      unfold seg45AccY222
      linear_combination hd
    have hd0 : rho 44135 * rho 44136 = rho 44146 := by linear_combination r5918
    have hd1 : rho 44135 * rho 44135 = rho 44147 := by linear_combination r5919
    have hd2 : rho 44136 * rho 44136 = rho 44148 := by linear_combination r5920
    have hd3 : rho 44149 * (rho 44136 * rho 44136 + rho 44135 * rho 44135 * (-1)) = 2 * (rho 44135 * rho 44136) := by
      rw [hd0, hd1, hd2]
      linear_combination r5921
    have hd4 : rho 44150 * (2 - (rho 44136 * rho 44136 + rho 44135 * rho 44135 * (-1))) = rho 44136 * rho 44136 - rho 44135 * rho 44135 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5922
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX221 rho : Seg45.F), (seg45AccY221 rho : Seg45.F)⟩
      ⟨(rho 44135 : Seg45.F), (rho 44136 : Seg45.F)⟩
      ⟨(rho 44142 : Seg45.F), (rho 44143 : Seg45.F)⟩
      ⟨(seg45AccX222 rho : Seg45.F), (seg45AccY222 rho : Seg45.F)⟩
      ⟨(rho 44149 : Seg45.F), (rho 44150 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung221

theorem seg45_rung222 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41170 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX222 rho : Seg45.F), (seg45AccY222 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 44149 : Seg45.F), (rho 44150 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX222 rho : Seg45.F), (seg45AccY222 rho : Seg45.F)⟩
        ⟨(rho 44149 : Seg45.F), (rho 44150 : Seg45.F)⟩
        ⟨(seg45AccX223 rho : Seg45.F), (seg45AccY223 rho : Seg45.F)⟩
        ⟨(rho 44163 : Seg45.F), (rho 44164 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p74, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart74 at p74
  rcases p74 with ⟨_, _, _, r5923, r5924, r5925, r5926, r5927, r5928, r5929, r5930, r5931, r5932, r5933, r5934, r5935, r5936, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow5923 Seg45.relationLc1145 Seg45.relationLc1145Part0 Seg45.relationLc1145Part1 Seg45.relationLc1145Part2 Seg45.relationLc1145Part3 Seg45.relationLc1145Part4 Seg45.relationLc1145Part5 Seg45.relationLc1145Part6 Seg45.relationLc1145Part7 Seg45.relationLc1145Part8 Seg45.relationLc1145Part9 Seg45.relationLc1145Part10 Seg45.relationLc1145Part11 Seg45.relationLc1145Part12 Seg45.relationLc1145Part13 at r5923
  unfold Seg45.relationRow5924 at r5924
  unfold Seg45.relationRow5925 Seg45.relationLc1146 Seg45.relationLc1146Part0 Seg45.relationLc1146Part1 Seg45.relationLc1146Part2 Seg45.relationLc1146Part3 Seg45.relationLc1146Part4 Seg45.relationLc1146Part5 Seg45.relationLc1146Part6 at r5925
  unfold Seg45.relationRow5926 Seg45.relationLc1147 Seg45.relationLc1147Part0 Seg45.relationLc1147Part1 Seg45.relationLc1147Part2 Seg45.relationLc1147Part3 Seg45.relationLc1147Part4 Seg45.relationLc1147Part5 Seg45.relationLc1147Part6 at r5926
  unfold Seg45.relationRow5927 at r5927
  unfold Seg45.relationRow5928 at r5928
  unfold Seg45.relationRow5929 at r5929
  unfold Seg45.relationRow5930 Seg45.relationLc1148 Seg45.relationLc1148Part0 Seg45.relationLc1148Part1 Seg45.relationLc1148Part2 Seg45.relationLc1148Part3 Seg45.relationLc1148Part4 Seg45.relationLc1148Part5 Seg45.relationLc1148Part6 at r5930
  unfold Seg45.relationRow5931 Seg45.relationLc1149 Seg45.relationLc1149Part0 Seg45.relationLc1149Part1 Seg45.relationLc1149Part2 Seg45.relationLc1149Part3 Seg45.relationLc1149Part4 Seg45.relationLc1149Part5 Seg45.relationLc1149Part6 at r5931
  unfold Seg45.relationRow5932 at r5932
  unfold Seg45.relationRow5933 at r5933
  unfold Seg45.relationRow5934 at r5934
  unfold Seg45.relationRow5935 at r5935
  unfold Seg45.relationRow5936 at r5936
  have hrung222 (bit : Bool) (hbit : rho 41170 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX222 rho : Seg45.F), (seg45AccY222 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 44149 : Seg45.F), (rho 44150 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX222 rho : Seg45.F), (seg45AccY222 rho : Seg45.F)⟩
        ⟨(rho 44149 : Seg45.F), (rho 44150 : Seg45.F)⟩
        ⟨(seg45AccX223 rho : Seg45.F), (seg45AccY223 rho : Seg45.F)⟩
        ⟨(rho 44163 : Seg45.F), (rho 44164 : Seg45.F)⟩ := by
    have hsum : seg45AccX222 rho + seg45AccY222 rho = rho 44151 := by
      rw [seg45LadderFlatX222_eq, seg45LadderFlatY222_eq]
      unfold seg45LadderFlatX222 seg45LadderFlatY222
      linear_combination r5923
    have ha0 : (rho 44149 + rho 44150) * (seg45AccX222 rho + seg45AccY222 rho) = rho 44152 := by
      rw [hsum]
      linear_combination r5924
    have ha1 : rho 44150 * seg45AccX222 rho = rho 44153 := by
      rw [seg45LadderFlatX222_eq]
      unfold seg45LadderFlatX222
      linear_combination r5925
    have ha2 : rho 44149 * seg45AccY222 rho = rho 44154 := by
      rw [seg45LadderFlatY222_eq]
      unfold seg45LadderFlatY222
      linear_combination r5926
    have ha3 : 3021 * rho 44153 * rho 44154 = rho 44155 := by
      linear_combination r5927
    have ha4 : rho 44156 * (1 + rho 44155) = rho 44153 + rho 44154 := by
      linear_combination r5928
    have ha5 : rho 44157 * (1 - rho 44155) = rho 44152 - rho 44153 - rho 44154 := by
      linear_combination r5929
    have haddx :
        rho 44156 * (1 + 3021 * (rho 44150 * seg45AccX222 rho) * (rho 44149 * seg45AccY222 rho)) =
          rho 44150 * seg45AccX222 rho + rho 44149 * seg45AccY222 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 44157 * (1 - 3021 * (rho 44150 * seg45AccX222 rho) * (rho 44149 * seg45AccY222 rho)) =
          (-1) * (rho 44150 * seg45AccX222 rho) - rho 44149 * seg45AccY222 rho +
            (seg45AccY222 rho - seg45AccX222 rho * (-1)) * (rho 44149 + rho 44150) := by
      rw [ha1, ha2, ha3]
      calc
        rho 44157 * (1 - rho 44155) = rho 44152 - rho 44153 - rho 44154 := ha5
        _ = (-1) * rho 44153 - rho 44154 + (seg45AccY222 rho - seg45AccX222 rho * (-1)) * (rho 44149 + rho 44150) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX223 rho = seg45AccX222 rho - Bool.toZMod bit * (seg45AccX222 rho - rho 44156) := by
      have hd : rho 44158 = Bool.toZMod bit * (rho 44156 - seg45AccX222 rho) := by
        rw [← hbit, seg45LadderFlatX222_eq]
        unfold seg45LadderFlatX222
        linear_combination -r5930
      unfold seg45AccX223
      linear_combination hd
    have hsely : seg45AccY223 rho = seg45AccY222 rho - Bool.toZMod bit * (seg45AccY222 rho - rho 44157) := by
      have hd : rho 44159 = Bool.toZMod bit * (rho 44157 - seg45AccY222 rho) := by
        rw [← hbit, seg45LadderFlatY222_eq]
        unfold seg45LadderFlatY222
        linear_combination -r5931
      unfold seg45AccY223
      linear_combination hd
    have hd0 : rho 44149 * rho 44150 = rho 44160 := by linear_combination r5932
    have hd1 : rho 44149 * rho 44149 = rho 44161 := by linear_combination r5933
    have hd2 : rho 44150 * rho 44150 = rho 44162 := by linear_combination r5934
    have hd3 : rho 44163 * (rho 44150 * rho 44150 + rho 44149 * rho 44149 * (-1)) = 2 * (rho 44149 * rho 44150) := by
      rw [hd0, hd1, hd2]
      linear_combination r5935
    have hd4 : rho 44164 * (2 - (rho 44150 * rho 44150 + rho 44149 * rho 44149 * (-1))) = rho 44150 * rho 44150 - rho 44149 * rho 44149 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5936
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX222 rho : Seg45.F), (seg45AccY222 rho : Seg45.F)⟩
      ⟨(rho 44149 : Seg45.F), (rho 44150 : Seg45.F)⟩
      ⟨(rho 44156 : Seg45.F), (rho 44157 : Seg45.F)⟩
      ⟨(seg45AccX223 rho : Seg45.F), (seg45AccY223 rho : Seg45.F)⟩
      ⟨(rho 44163 : Seg45.F), (rho 44164 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung222

theorem seg45_rung223 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41171 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX223 rho : Seg45.F), (seg45AccY223 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 44163 : Seg45.F), (rho 44164 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX223 rho : Seg45.F), (seg45AccY223 rho : Seg45.F)⟩
        ⟨(rho 44163 : Seg45.F), (rho 44164 : Seg45.F)⟩
        ⟨(seg45AccX224 rho : Seg45.F), (seg45AccY224 rho : Seg45.F)⟩
        ⟨(rho 44177 : Seg45.F), (rho 44178 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p74, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart74 at p74
  rcases p74 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5937, r5938, r5939, r5940, r5941, r5942, r5943, r5944, r5945, r5946, r5947, r5948, r5949, r5950, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow5937 Seg45.relationLc1150 Seg45.relationLc1150Part0 Seg45.relationLc1150Part1 Seg45.relationLc1150Part2 Seg45.relationLc1150Part3 Seg45.relationLc1150Part4 Seg45.relationLc1150Part5 Seg45.relationLc1150Part6 Seg45.relationLc1150Part7 Seg45.relationLc1150Part8 Seg45.relationLc1150Part9 Seg45.relationLc1150Part10 Seg45.relationLc1150Part11 Seg45.relationLc1150Part12 Seg45.relationLc1150Part13 at r5937
  unfold Seg45.relationRow5938 at r5938
  unfold Seg45.relationRow5939 Seg45.relationLc1151 Seg45.relationLc1151Part0 Seg45.relationLc1151Part1 Seg45.relationLc1151Part2 Seg45.relationLc1151Part3 Seg45.relationLc1151Part4 Seg45.relationLc1151Part5 Seg45.relationLc1151Part6 at r5939
  unfold Seg45.relationRow5940 Seg45.relationLc1152 Seg45.relationLc1152Part0 Seg45.relationLc1152Part1 Seg45.relationLc1152Part2 Seg45.relationLc1152Part3 Seg45.relationLc1152Part4 Seg45.relationLc1152Part5 Seg45.relationLc1152Part6 at r5940
  unfold Seg45.relationRow5941 at r5941
  unfold Seg45.relationRow5942 at r5942
  unfold Seg45.relationRow5943 at r5943
  unfold Seg45.relationRow5944 Seg45.relationLc1153 Seg45.relationLc1153Part0 Seg45.relationLc1153Part1 Seg45.relationLc1153Part2 Seg45.relationLc1153Part3 Seg45.relationLc1153Part4 Seg45.relationLc1153Part5 Seg45.relationLc1153Part6 at r5944
  unfold Seg45.relationRow5945 Seg45.relationLc1154 Seg45.relationLc1154Part0 Seg45.relationLc1154Part1 Seg45.relationLc1154Part2 Seg45.relationLc1154Part3 Seg45.relationLc1154Part4 Seg45.relationLc1154Part5 Seg45.relationLc1154Part6 Seg45.relationLc1154Part7 at r5945
  unfold Seg45.relationRow5946 at r5946
  unfold Seg45.relationRow5947 at r5947
  unfold Seg45.relationRow5948 at r5948
  unfold Seg45.relationRow5949 at r5949
  unfold Seg45.relationRow5950 at r5950
  have hrung223 (bit : Bool) (hbit : rho 41171 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX223 rho : Seg45.F), (seg45AccY223 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 44163 : Seg45.F), (rho 44164 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX223 rho : Seg45.F), (seg45AccY223 rho : Seg45.F)⟩
        ⟨(rho 44163 : Seg45.F), (rho 44164 : Seg45.F)⟩
        ⟨(seg45AccX224 rho : Seg45.F), (seg45AccY224 rho : Seg45.F)⟩
        ⟨(rho 44177 : Seg45.F), (rho 44178 : Seg45.F)⟩ := by
    have hsum : seg45AccX223 rho + seg45AccY223 rho = rho 44165 := by
      rw [seg45LadderFlatX223_eq, seg45LadderFlatY223_eq]
      unfold seg45LadderFlatX223 seg45LadderFlatY223
      linear_combination r5937
    have ha0 : (rho 44163 + rho 44164) * (seg45AccX223 rho + seg45AccY223 rho) = rho 44166 := by
      rw [hsum]
      linear_combination r5938
    have ha1 : rho 44164 * seg45AccX223 rho = rho 44167 := by
      rw [seg45LadderFlatX223_eq]
      unfold seg45LadderFlatX223
      linear_combination r5939
    have ha2 : rho 44163 * seg45AccY223 rho = rho 44168 := by
      rw [seg45LadderFlatY223_eq]
      unfold seg45LadderFlatY223
      linear_combination r5940
    have ha3 : 3021 * rho 44167 * rho 44168 = rho 44169 := by
      linear_combination r5941
    have ha4 : rho 44170 * (1 + rho 44169) = rho 44167 + rho 44168 := by
      linear_combination r5942
    have ha5 : rho 44171 * (1 - rho 44169) = rho 44166 - rho 44167 - rho 44168 := by
      linear_combination r5943
    have haddx :
        rho 44170 * (1 + 3021 * (rho 44164 * seg45AccX223 rho) * (rho 44163 * seg45AccY223 rho)) =
          rho 44164 * seg45AccX223 rho + rho 44163 * seg45AccY223 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 44171 * (1 - 3021 * (rho 44164 * seg45AccX223 rho) * (rho 44163 * seg45AccY223 rho)) =
          (-1) * (rho 44164 * seg45AccX223 rho) - rho 44163 * seg45AccY223 rho +
            (seg45AccY223 rho - seg45AccX223 rho * (-1)) * (rho 44163 + rho 44164) := by
      rw [ha1, ha2, ha3]
      calc
        rho 44171 * (1 - rho 44169) = rho 44166 - rho 44167 - rho 44168 := ha5
        _ = (-1) * rho 44167 - rho 44168 + (seg45AccY223 rho - seg45AccX223 rho * (-1)) * (rho 44163 + rho 44164) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX224 rho = seg45AccX223 rho - Bool.toZMod bit * (seg45AccX223 rho - rho 44170) := by
      have hd : rho 44172 = Bool.toZMod bit * (rho 44170 - seg45AccX223 rho) := by
        rw [← hbit, seg45LadderFlatX223_eq]
        unfold seg45LadderFlatX223
        linear_combination -r5944
      unfold seg45AccX224
      linear_combination hd
    have hsely : seg45AccY224 rho = seg45AccY223 rho - Bool.toZMod bit * (seg45AccY223 rho - rho 44171) := by
      have hd : rho 44173 = Bool.toZMod bit * (rho 44171 - seg45AccY223 rho) := by
        rw [← hbit, seg45LadderFlatY223_eq]
        unfold seg45LadderFlatY223
        linear_combination -r5945
      unfold seg45AccY224
      linear_combination hd
    have hd0 : rho 44163 * rho 44164 = rho 44174 := by linear_combination r5946
    have hd1 : rho 44163 * rho 44163 = rho 44175 := by linear_combination r5947
    have hd2 : rho 44164 * rho 44164 = rho 44176 := by linear_combination r5948
    have hd3 : rho 44177 * (rho 44164 * rho 44164 + rho 44163 * rho 44163 * (-1)) = 2 * (rho 44163 * rho 44164) := by
      rw [hd0, hd1, hd2]
      linear_combination r5949
    have hd4 : rho 44178 * (2 - (rho 44164 * rho 44164 + rho 44163 * rho 44163 * (-1))) = rho 44164 * rho 44164 - rho 44163 * rho 44163 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5950
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX223 rho : Seg45.F), (seg45AccY223 rho : Seg45.F)⟩
      ⟨(rho 44163 : Seg45.F), (rho 44164 : Seg45.F)⟩
      ⟨(rho 44170 : Seg45.F), (rho 44171 : Seg45.F)⟩
      ⟨(seg45AccX224 rho : Seg45.F), (seg45AccY224 rho : Seg45.F)⟩
      ⟨(rho 44177 : Seg45.F), (rho 44178 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung223

theorem seg45_hstep_c6 (rho : Nat -> Seg45.F) (h : Seg45.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (40948 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 192 ≤ i → i < 224 →
      EdwardsBridge.onCurve (seg45LadderAccState rho i) →
      EdwardsBridge.onCurve (seg45LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg45LadderAccState rho i) (seg45LadderCurState rho i)
        (seg45LadderAccState rho (i + 1)) (seg45LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg45_rung192 rho h bits[192]! (hbitAt 192 (by omega)) hacc hcur
  · exact seg45_rung193 rho h bits[193]! (hbitAt 193 (by omega)) hacc hcur
  · exact seg45_rung194 rho h bits[194]! (hbitAt 194 (by omega)) hacc hcur
  · exact seg45_rung195 rho h bits[195]! (hbitAt 195 (by omega)) hacc hcur
  · exact seg45_rung196 rho h bits[196]! (hbitAt 196 (by omega)) hacc hcur
  · exact seg45_rung197 rho h bits[197]! (hbitAt 197 (by omega)) hacc hcur
  · exact seg45_rung198 rho h bits[198]! (hbitAt 198 (by omega)) hacc hcur
  · exact seg45_rung199 rho h bits[199]! (hbitAt 199 (by omega)) hacc hcur
  · exact seg45_rung200 rho h bits[200]! (hbitAt 200 (by omega)) hacc hcur
  · exact seg45_rung201 rho h bits[201]! (hbitAt 201 (by omega)) hacc hcur
  · exact seg45_rung202 rho h bits[202]! (hbitAt 202 (by omega)) hacc hcur
  · exact seg45_rung203 rho h bits[203]! (hbitAt 203 (by omega)) hacc hcur
  · exact seg45_rung204 rho h bits[204]! (hbitAt 204 (by omega)) hacc hcur
  · exact seg45_rung205 rho h bits[205]! (hbitAt 205 (by omega)) hacc hcur
  · exact seg45_rung206 rho h bits[206]! (hbitAt 206 (by omega)) hacc hcur
  · exact seg45_rung207 rho h bits[207]! (hbitAt 207 (by omega)) hacc hcur
  · exact seg45_rung208 rho h bits[208]! (hbitAt 208 (by omega)) hacc hcur
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
  · exact seg45_rung220 rho h bits[220]! (hbitAt 220 (by omega)) hacc hcur
  · exact seg45_rung221 rho h bits[221]! (hbitAt 221 (by omega)) hacc hcur
  · exact seg45_rung222 rho h bits[222]! (hbitAt 222 (by omega)) hacc hcur
  · exact seg45_rung223 rho h bits[223]! (hbitAt 223 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
