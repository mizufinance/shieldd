import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg34_rung192 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34184 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX192 rho : Seg34.F), (seg34AccY192 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36773 : Seg34.F), (rho 36774 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX192 rho : Seg34.F), (seg34AccY192 rho : Seg34.F)⟩
        ⟨(rho 36773 : Seg34.F), (rho 36774 : Seg34.F)⟩
        ⟨(seg34AccX193 rho : Seg34.F), (seg34AccY193 rho : Seg34.F)⟩
        ⟨(rho 36787 : Seg34.F), (rho 36788 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart68 at p68
  rcases p68 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5503, r5504, r5505, r5506, r5507, r5508, r5509, r5510, r5511, r5512, r5513, r5514, r5515, r5516, _, _, _⟩
  unfold Seg34.relationRow5503 Seg34.relationLc995 Seg34.relationLc995Part0 Seg34.relationLc995Part1 Seg34.relationLc995Part2 Seg34.relationLc995Part3 Seg34.relationLc995Part4 Seg34.relationLc995Part5 Seg34.relationLc995Part6 Seg34.relationLc995Part7 Seg34.relationLc995Part8 Seg34.relationLc995Part9 Seg34.relationLc995Part10 Seg34.relationLc995Part11 Seg34.relationLc995Part12 at r5503
  unfold Seg34.relationRow5504 at r5504
  unfold Seg34.relationRow5505 Seg34.relationLc996 Seg34.relationLc996Part0 Seg34.relationLc996Part1 Seg34.relationLc996Part2 Seg34.relationLc996Part3 Seg34.relationLc996Part4 Seg34.relationLc996Part5 at r5505
  unfold Seg34.relationRow5506 Seg34.relationLc997 Seg34.relationLc997Part0 Seg34.relationLc997Part1 Seg34.relationLc997Part2 Seg34.relationLc997Part3 Seg34.relationLc997Part4 Seg34.relationLc997Part5 Seg34.relationLc997Part6 at r5506
  unfold Seg34.relationRow5507 at r5507
  unfold Seg34.relationRow5508 at r5508
  unfold Seg34.relationRow5509 at r5509
  unfold Seg34.relationRow5510 Seg34.relationLc998 Seg34.relationLc998Part0 Seg34.relationLc998Part1 Seg34.relationLc998Part2 Seg34.relationLc998Part3 Seg34.relationLc998Part4 Seg34.relationLc998Part5 Seg34.relationLc998Part6 at r5510
  unfold Seg34.relationRow5511 Seg34.relationLc999 Seg34.relationLc999Part0 Seg34.relationLc999Part1 Seg34.relationLc999Part2 Seg34.relationLc999Part3 Seg34.relationLc999Part4 Seg34.relationLc999Part5 Seg34.relationLc999Part6 at r5511
  unfold Seg34.relationRow5512 at r5512
  unfold Seg34.relationRow5513 at r5513
  unfold Seg34.relationRow5514 at r5514
  unfold Seg34.relationRow5515 at r5515
  unfold Seg34.relationRow5516 at r5516
  have hrung192 (bit : Bool) (hbit : rho 34184 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX192 rho : Seg34.F), (seg34AccY192 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36773 : Seg34.F), (rho 36774 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX192 rho : Seg34.F), (seg34AccY192 rho : Seg34.F)⟩
        ⟨(rho 36773 : Seg34.F), (rho 36774 : Seg34.F)⟩
        ⟨(seg34AccX193 rho : Seg34.F), (seg34AccY193 rho : Seg34.F)⟩
        ⟨(rho 36787 : Seg34.F), (rho 36788 : Seg34.F)⟩ := by
    have hsum : seg34AccX192 rho + seg34AccY192 rho = rho 36775 := by
      rw [seg34LadderFlatX192_eq, seg34LadderFlatY192_eq]
      unfold seg34LadderFlatX192 seg34LadderFlatY192
      linear_combination r5503
    have ha0 : (rho 36773 + rho 36774) * (seg34AccX192 rho + seg34AccY192 rho) = rho 36776 := by
      rw [hsum]
      linear_combination r5504
    have ha1 : rho 36774 * seg34AccX192 rho = rho 36777 := by
      rw [seg34LadderFlatX192_eq]
      unfold seg34LadderFlatX192
      linear_combination r5505
    have ha2 : rho 36773 * seg34AccY192 rho = rho 36778 := by
      rw [seg34LadderFlatY192_eq]
      unfold seg34LadderFlatY192
      linear_combination r5506
    have ha3 : 3021 * rho 36777 * rho 36778 = rho 36779 := by
      linear_combination r5507
    have ha4 : rho 36780 * (1 + rho 36779) = rho 36777 + rho 36778 := by
      linear_combination r5508
    have ha5 : rho 36781 * (1 - rho 36779) = rho 36776 - rho 36777 - rho 36778 := by
      linear_combination r5509
    have haddx :
        rho 36780 * (1 + 3021 * (rho 36774 * seg34AccX192 rho) * (rho 36773 * seg34AccY192 rho)) =
          rho 36774 * seg34AccX192 rho + rho 36773 * seg34AccY192 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36781 * (1 - 3021 * (rho 36774 * seg34AccX192 rho) * (rho 36773 * seg34AccY192 rho)) =
          (-1) * (rho 36774 * seg34AccX192 rho) - rho 36773 * seg34AccY192 rho +
            (seg34AccY192 rho - seg34AccX192 rho * (-1)) * (rho 36773 + rho 36774) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36781 * (1 - rho 36779) = rho 36776 - rho 36777 - rho 36778 := ha5
        _ = (-1) * rho 36777 - rho 36778 + (seg34AccY192 rho - seg34AccX192 rho * (-1)) * (rho 36773 + rho 36774) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX193 rho = seg34AccX192 rho - Bool.toZMod bit * (seg34AccX192 rho - rho 36780) := by
      have hd : rho 36782 = Bool.toZMod bit * (rho 36780 - seg34AccX192 rho) := by
        rw [← hbit, seg34LadderFlatX192_eq]
        unfold seg34LadderFlatX192
        linear_combination -r5510
      unfold seg34AccX193
      linear_combination hd
    have hsely : seg34AccY193 rho = seg34AccY192 rho - Bool.toZMod bit * (seg34AccY192 rho - rho 36781) := by
      have hd : rho 36783 = Bool.toZMod bit * (rho 36781 - seg34AccY192 rho) := by
        rw [← hbit, seg34LadderFlatY192_eq]
        unfold seg34LadderFlatY192
        linear_combination -r5511
      unfold seg34AccY193
      linear_combination hd
    have hd0 : rho 36773 * rho 36774 = rho 36784 := by linear_combination r5512
    have hd1 : rho 36773 * rho 36773 = rho 36785 := by linear_combination r5513
    have hd2 : rho 36774 * rho 36774 = rho 36786 := by linear_combination r5514
    have hd3 : rho 36787 * (rho 36774 * rho 36774 + rho 36773 * rho 36773 * (-1)) = 2 * (rho 36773 * rho 36774) := by
      rw [hd0, hd1, hd2]
      linear_combination r5515
    have hd4 : rho 36788 * (2 - (rho 36774 * rho 36774 + rho 36773 * rho 36773 * (-1))) = rho 36774 * rho 36774 - rho 36773 * rho 36773 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5516
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX192 rho : Seg34.F), (seg34AccY192 rho : Seg34.F)⟩
      ⟨(rho 36773 : Seg34.F), (rho 36774 : Seg34.F)⟩
      ⟨(rho 36780 : Seg34.F), (rho 36781 : Seg34.F)⟩
      ⟨(seg34AccX193 rho : Seg34.F), (seg34AccY193 rho : Seg34.F)⟩
      ⟨(rho 36787 : Seg34.F), (rho 36788 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung192

theorem seg34_rung193 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34185 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX193 rho : Seg34.F), (seg34AccY193 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36787 : Seg34.F), (rho 36788 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX193 rho : Seg34.F), (seg34AccY193 rho : Seg34.F)⟩
        ⟨(rho 36787 : Seg34.F), (rho 36788 : Seg34.F)⟩
        ⟨(seg34AccX194 rho : Seg34.F), (seg34AccY194 rho : Seg34.F)⟩
        ⟨(rho 36801 : Seg34.F), (rho 36802 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart68 at p68
  rcases p68 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5517, r5518, r5519⟩
  unfold Seg34.relationPart69 at p69
  rcases p69 with ⟨r5520, r5521, r5522, r5523, r5524, r5525, r5526, r5527, r5528, r5529, r5530, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow5517 Seg34.relationLc1000 Seg34.relationLc1000Part0 Seg34.relationLc1000Part1 Seg34.relationLc1000Part2 Seg34.relationLc1000Part3 Seg34.relationLc1000Part4 Seg34.relationLc1000Part5 Seg34.relationLc1000Part6 Seg34.relationLc1000Part7 Seg34.relationLc1000Part8 Seg34.relationLc1000Part9 Seg34.relationLc1000Part10 Seg34.relationLc1000Part11 Seg34.relationLc1000Part12 at r5517
  unfold Seg34.relationRow5518 at r5518
  unfold Seg34.relationRow5519 Seg34.relationLc1001 Seg34.relationLc1001Part0 Seg34.relationLc1001Part1 Seg34.relationLc1001Part2 Seg34.relationLc1001Part3 Seg34.relationLc1001Part4 Seg34.relationLc1001Part5 Seg34.relationLc1001Part6 at r5519
  unfold Seg34.relationRow5520 Seg34.relationLc1002 Seg34.relationLc1002Part0 Seg34.relationLc1002Part1 Seg34.relationLc1002Part2 Seg34.relationLc1002Part3 Seg34.relationLc1002Part4 Seg34.relationLc1002Part5 Seg34.relationLc1002Part6 at r5520
  unfold Seg34.relationRow5521 at r5521
  unfold Seg34.relationRow5522 at r5522
  unfold Seg34.relationRow5523 at r5523
  unfold Seg34.relationRow5524 Seg34.relationLc1003 Seg34.relationLc1003Part0 Seg34.relationLc1003Part1 Seg34.relationLc1003Part2 Seg34.relationLc1003Part3 Seg34.relationLc1003Part4 Seg34.relationLc1003Part5 Seg34.relationLc1003Part6 at r5524
  unfold Seg34.relationRow5525 Seg34.relationLc1004 Seg34.relationLc1004Part0 Seg34.relationLc1004Part1 Seg34.relationLc1004Part2 Seg34.relationLc1004Part3 Seg34.relationLc1004Part4 Seg34.relationLc1004Part5 Seg34.relationLc1004Part6 at r5525
  unfold Seg34.relationRow5526 at r5526
  unfold Seg34.relationRow5527 at r5527
  unfold Seg34.relationRow5528 at r5528
  unfold Seg34.relationRow5529 at r5529
  unfold Seg34.relationRow5530 at r5530
  have hrung193 (bit : Bool) (hbit : rho 34185 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX193 rho : Seg34.F), (seg34AccY193 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36787 : Seg34.F), (rho 36788 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX193 rho : Seg34.F), (seg34AccY193 rho : Seg34.F)⟩
        ⟨(rho 36787 : Seg34.F), (rho 36788 : Seg34.F)⟩
        ⟨(seg34AccX194 rho : Seg34.F), (seg34AccY194 rho : Seg34.F)⟩
        ⟨(rho 36801 : Seg34.F), (rho 36802 : Seg34.F)⟩ := by
    have hsum : seg34AccX193 rho + seg34AccY193 rho = rho 36789 := by
      rw [seg34LadderFlatX193_eq, seg34LadderFlatY193_eq]
      unfold seg34LadderFlatX193 seg34LadderFlatY193
      linear_combination r5517
    have ha0 : (rho 36787 + rho 36788) * (seg34AccX193 rho + seg34AccY193 rho) = rho 36790 := by
      rw [hsum]
      linear_combination r5518
    have ha1 : rho 36788 * seg34AccX193 rho = rho 36791 := by
      rw [seg34LadderFlatX193_eq]
      unfold seg34LadderFlatX193
      linear_combination r5519
    have ha2 : rho 36787 * seg34AccY193 rho = rho 36792 := by
      rw [seg34LadderFlatY193_eq]
      unfold seg34LadderFlatY193
      linear_combination r5520
    have ha3 : 3021 * rho 36791 * rho 36792 = rho 36793 := by
      linear_combination r5521
    have ha4 : rho 36794 * (1 + rho 36793) = rho 36791 + rho 36792 := by
      linear_combination r5522
    have ha5 : rho 36795 * (1 - rho 36793) = rho 36790 - rho 36791 - rho 36792 := by
      linear_combination r5523
    have haddx :
        rho 36794 * (1 + 3021 * (rho 36788 * seg34AccX193 rho) * (rho 36787 * seg34AccY193 rho)) =
          rho 36788 * seg34AccX193 rho + rho 36787 * seg34AccY193 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36795 * (1 - 3021 * (rho 36788 * seg34AccX193 rho) * (rho 36787 * seg34AccY193 rho)) =
          (-1) * (rho 36788 * seg34AccX193 rho) - rho 36787 * seg34AccY193 rho +
            (seg34AccY193 rho - seg34AccX193 rho * (-1)) * (rho 36787 + rho 36788) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36795 * (1 - rho 36793) = rho 36790 - rho 36791 - rho 36792 := ha5
        _ = (-1) * rho 36791 - rho 36792 + (seg34AccY193 rho - seg34AccX193 rho * (-1)) * (rho 36787 + rho 36788) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX194 rho = seg34AccX193 rho - Bool.toZMod bit * (seg34AccX193 rho - rho 36794) := by
      have hd : rho 36796 = Bool.toZMod bit * (rho 36794 - seg34AccX193 rho) := by
        rw [← hbit, seg34LadderFlatX193_eq]
        unfold seg34LadderFlatX193
        linear_combination -r5524
      unfold seg34AccX194
      linear_combination hd
    have hsely : seg34AccY194 rho = seg34AccY193 rho - Bool.toZMod bit * (seg34AccY193 rho - rho 36795) := by
      have hd : rho 36797 = Bool.toZMod bit * (rho 36795 - seg34AccY193 rho) := by
        rw [← hbit, seg34LadderFlatY193_eq]
        unfold seg34LadderFlatY193
        linear_combination -r5525
      unfold seg34AccY194
      linear_combination hd
    have hd0 : rho 36787 * rho 36788 = rho 36798 := by linear_combination r5526
    have hd1 : rho 36787 * rho 36787 = rho 36799 := by linear_combination r5527
    have hd2 : rho 36788 * rho 36788 = rho 36800 := by linear_combination r5528
    have hd3 : rho 36801 * (rho 36788 * rho 36788 + rho 36787 * rho 36787 * (-1)) = 2 * (rho 36787 * rho 36788) := by
      rw [hd0, hd1, hd2]
      linear_combination r5529
    have hd4 : rho 36802 * (2 - (rho 36788 * rho 36788 + rho 36787 * rho 36787 * (-1))) = rho 36788 * rho 36788 - rho 36787 * rho 36787 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5530
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX193 rho : Seg34.F), (seg34AccY193 rho : Seg34.F)⟩
      ⟨(rho 36787 : Seg34.F), (rho 36788 : Seg34.F)⟩
      ⟨(rho 36794 : Seg34.F), (rho 36795 : Seg34.F)⟩
      ⟨(seg34AccX194 rho : Seg34.F), (seg34AccY194 rho : Seg34.F)⟩
      ⟨(rho 36801 : Seg34.F), (rho 36802 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung193

theorem seg34_rung194 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34186 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX194 rho : Seg34.F), (seg34AccY194 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36801 : Seg34.F), (rho 36802 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX194 rho : Seg34.F), (seg34AccY194 rho : Seg34.F)⟩
        ⟨(rho 36801 : Seg34.F), (rho 36802 : Seg34.F)⟩
        ⟨(seg34AccX195 rho : Seg34.F), (seg34AccY195 rho : Seg34.F)⟩
        ⟨(rho 36815 : Seg34.F), (rho 36816 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart69 at p69
  rcases p69 with ⟨_, _, _, _, _, _, _, _, _, _, _, r5531, r5532, r5533, r5534, r5535, r5536, r5537, r5538, r5539, r5540, r5541, r5542, r5543, r5544, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow5531 Seg34.relationLc1005 Seg34.relationLc1005Part0 Seg34.relationLc1005Part1 Seg34.relationLc1005Part2 Seg34.relationLc1005Part3 Seg34.relationLc1005Part4 Seg34.relationLc1005Part5 Seg34.relationLc1005Part6 Seg34.relationLc1005Part7 Seg34.relationLc1005Part8 Seg34.relationLc1005Part9 Seg34.relationLc1005Part10 Seg34.relationLc1005Part11 Seg34.relationLc1005Part12 at r5531
  unfold Seg34.relationRow5532 at r5532
  unfold Seg34.relationRow5533 Seg34.relationLc1006 Seg34.relationLc1006Part0 Seg34.relationLc1006Part1 Seg34.relationLc1006Part2 Seg34.relationLc1006Part3 Seg34.relationLc1006Part4 Seg34.relationLc1006Part5 Seg34.relationLc1006Part6 at r5533
  unfold Seg34.relationRow5534 Seg34.relationLc1007 Seg34.relationLc1007Part0 Seg34.relationLc1007Part1 Seg34.relationLc1007Part2 Seg34.relationLc1007Part3 Seg34.relationLc1007Part4 Seg34.relationLc1007Part5 Seg34.relationLc1007Part6 at r5534
  unfold Seg34.relationRow5535 at r5535
  unfold Seg34.relationRow5536 at r5536
  unfold Seg34.relationRow5537 at r5537
  unfold Seg34.relationRow5538 Seg34.relationLc1008 Seg34.relationLc1008Part0 Seg34.relationLc1008Part1 Seg34.relationLc1008Part2 Seg34.relationLc1008Part3 Seg34.relationLc1008Part4 Seg34.relationLc1008Part5 Seg34.relationLc1008Part6 at r5538
  unfold Seg34.relationRow5539 Seg34.relationLc1009 Seg34.relationLc1009Part0 Seg34.relationLc1009Part1 Seg34.relationLc1009Part2 Seg34.relationLc1009Part3 Seg34.relationLc1009Part4 Seg34.relationLc1009Part5 Seg34.relationLc1009Part6 at r5539
  unfold Seg34.relationRow5540 at r5540
  unfold Seg34.relationRow5541 at r5541
  unfold Seg34.relationRow5542 at r5542
  unfold Seg34.relationRow5543 at r5543
  unfold Seg34.relationRow5544 at r5544
  have hrung194 (bit : Bool) (hbit : rho 34186 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX194 rho : Seg34.F), (seg34AccY194 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36801 : Seg34.F), (rho 36802 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX194 rho : Seg34.F), (seg34AccY194 rho : Seg34.F)⟩
        ⟨(rho 36801 : Seg34.F), (rho 36802 : Seg34.F)⟩
        ⟨(seg34AccX195 rho : Seg34.F), (seg34AccY195 rho : Seg34.F)⟩
        ⟨(rho 36815 : Seg34.F), (rho 36816 : Seg34.F)⟩ := by
    have hsum : seg34AccX194 rho + seg34AccY194 rho = rho 36803 := by
      rw [seg34LadderFlatX194_eq, seg34LadderFlatY194_eq]
      unfold seg34LadderFlatX194 seg34LadderFlatY194
      linear_combination r5531
    have ha0 : (rho 36801 + rho 36802) * (seg34AccX194 rho + seg34AccY194 rho) = rho 36804 := by
      rw [hsum]
      linear_combination r5532
    have ha1 : rho 36802 * seg34AccX194 rho = rho 36805 := by
      rw [seg34LadderFlatX194_eq]
      unfold seg34LadderFlatX194
      linear_combination r5533
    have ha2 : rho 36801 * seg34AccY194 rho = rho 36806 := by
      rw [seg34LadderFlatY194_eq]
      unfold seg34LadderFlatY194
      linear_combination r5534
    have ha3 : 3021 * rho 36805 * rho 36806 = rho 36807 := by
      linear_combination r5535
    have ha4 : rho 36808 * (1 + rho 36807) = rho 36805 + rho 36806 := by
      linear_combination r5536
    have ha5 : rho 36809 * (1 - rho 36807) = rho 36804 - rho 36805 - rho 36806 := by
      linear_combination r5537
    have haddx :
        rho 36808 * (1 + 3021 * (rho 36802 * seg34AccX194 rho) * (rho 36801 * seg34AccY194 rho)) =
          rho 36802 * seg34AccX194 rho + rho 36801 * seg34AccY194 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36809 * (1 - 3021 * (rho 36802 * seg34AccX194 rho) * (rho 36801 * seg34AccY194 rho)) =
          (-1) * (rho 36802 * seg34AccX194 rho) - rho 36801 * seg34AccY194 rho +
            (seg34AccY194 rho - seg34AccX194 rho * (-1)) * (rho 36801 + rho 36802) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36809 * (1 - rho 36807) = rho 36804 - rho 36805 - rho 36806 := ha5
        _ = (-1) * rho 36805 - rho 36806 + (seg34AccY194 rho - seg34AccX194 rho * (-1)) * (rho 36801 + rho 36802) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX195 rho = seg34AccX194 rho - Bool.toZMod bit * (seg34AccX194 rho - rho 36808) := by
      have hd : rho 36810 = Bool.toZMod bit * (rho 36808 - seg34AccX194 rho) := by
        rw [← hbit, seg34LadderFlatX194_eq]
        unfold seg34LadderFlatX194
        linear_combination -r5538
      unfold seg34AccX195
      linear_combination hd
    have hsely : seg34AccY195 rho = seg34AccY194 rho - Bool.toZMod bit * (seg34AccY194 rho - rho 36809) := by
      have hd : rho 36811 = Bool.toZMod bit * (rho 36809 - seg34AccY194 rho) := by
        rw [← hbit, seg34LadderFlatY194_eq]
        unfold seg34LadderFlatY194
        linear_combination -r5539
      unfold seg34AccY195
      linear_combination hd
    have hd0 : rho 36801 * rho 36802 = rho 36812 := by linear_combination r5540
    have hd1 : rho 36801 * rho 36801 = rho 36813 := by linear_combination r5541
    have hd2 : rho 36802 * rho 36802 = rho 36814 := by linear_combination r5542
    have hd3 : rho 36815 * (rho 36802 * rho 36802 + rho 36801 * rho 36801 * (-1)) = 2 * (rho 36801 * rho 36802) := by
      rw [hd0, hd1, hd2]
      linear_combination r5543
    have hd4 : rho 36816 * (2 - (rho 36802 * rho 36802 + rho 36801 * rho 36801 * (-1))) = rho 36802 * rho 36802 - rho 36801 * rho 36801 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5544
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX194 rho : Seg34.F), (seg34AccY194 rho : Seg34.F)⟩
      ⟨(rho 36801 : Seg34.F), (rho 36802 : Seg34.F)⟩
      ⟨(rho 36808 : Seg34.F), (rho 36809 : Seg34.F)⟩
      ⟨(seg34AccX195 rho : Seg34.F), (seg34AccY195 rho : Seg34.F)⟩
      ⟨(rho 36815 : Seg34.F), (rho 36816 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung194

theorem seg34_rung195 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34187 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX195 rho : Seg34.F), (seg34AccY195 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36815 : Seg34.F), (rho 36816 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX195 rho : Seg34.F), (seg34AccY195 rho : Seg34.F)⟩
        ⟨(rho 36815 : Seg34.F), (rho 36816 : Seg34.F)⟩
        ⟨(seg34AccX196 rho : Seg34.F), (seg34AccY196 rho : Seg34.F)⟩
        ⟨(rho 36829 : Seg34.F), (rho 36830 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart69 at p69
  rcases p69 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5545, r5546, r5547, r5548, r5549, r5550, r5551, r5552, r5553, r5554, r5555, r5556, r5557, r5558, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow5545 Seg34.relationLc1010 Seg34.relationLc1010Part0 Seg34.relationLc1010Part1 Seg34.relationLc1010Part2 Seg34.relationLc1010Part3 Seg34.relationLc1010Part4 Seg34.relationLc1010Part5 Seg34.relationLc1010Part6 Seg34.relationLc1010Part7 Seg34.relationLc1010Part8 Seg34.relationLc1010Part9 Seg34.relationLc1010Part10 Seg34.relationLc1010Part11 Seg34.relationLc1010Part12 at r5545
  unfold Seg34.relationRow5546 at r5546
  unfold Seg34.relationRow5547 Seg34.relationLc1011 Seg34.relationLc1011Part0 Seg34.relationLc1011Part1 Seg34.relationLc1011Part2 Seg34.relationLc1011Part3 Seg34.relationLc1011Part4 Seg34.relationLc1011Part5 Seg34.relationLc1011Part6 at r5547
  unfold Seg34.relationRow5548 Seg34.relationLc1012 Seg34.relationLc1012Part0 Seg34.relationLc1012Part1 Seg34.relationLc1012Part2 Seg34.relationLc1012Part3 Seg34.relationLc1012Part4 Seg34.relationLc1012Part5 Seg34.relationLc1012Part6 at r5548
  unfold Seg34.relationRow5549 at r5549
  unfold Seg34.relationRow5550 at r5550
  unfold Seg34.relationRow5551 at r5551
  unfold Seg34.relationRow5552 Seg34.relationLc1013 Seg34.relationLc1013Part0 Seg34.relationLc1013Part1 Seg34.relationLc1013Part2 Seg34.relationLc1013Part3 Seg34.relationLc1013Part4 Seg34.relationLc1013Part5 Seg34.relationLc1013Part6 at r5552
  unfold Seg34.relationRow5553 Seg34.relationLc1014 Seg34.relationLc1014Part0 Seg34.relationLc1014Part1 Seg34.relationLc1014Part2 Seg34.relationLc1014Part3 Seg34.relationLc1014Part4 Seg34.relationLc1014Part5 Seg34.relationLc1014Part6 at r5553
  unfold Seg34.relationRow5554 at r5554
  unfold Seg34.relationRow5555 at r5555
  unfold Seg34.relationRow5556 at r5556
  unfold Seg34.relationRow5557 at r5557
  unfold Seg34.relationRow5558 at r5558
  have hrung195 (bit : Bool) (hbit : rho 34187 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX195 rho : Seg34.F), (seg34AccY195 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36815 : Seg34.F), (rho 36816 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX195 rho : Seg34.F), (seg34AccY195 rho : Seg34.F)⟩
        ⟨(rho 36815 : Seg34.F), (rho 36816 : Seg34.F)⟩
        ⟨(seg34AccX196 rho : Seg34.F), (seg34AccY196 rho : Seg34.F)⟩
        ⟨(rho 36829 : Seg34.F), (rho 36830 : Seg34.F)⟩ := by
    have hsum : seg34AccX195 rho + seg34AccY195 rho = rho 36817 := by
      rw [seg34LadderFlatX195_eq, seg34LadderFlatY195_eq]
      unfold seg34LadderFlatX195 seg34LadderFlatY195
      linear_combination r5545
    have ha0 : (rho 36815 + rho 36816) * (seg34AccX195 rho + seg34AccY195 rho) = rho 36818 := by
      rw [hsum]
      linear_combination r5546
    have ha1 : rho 36816 * seg34AccX195 rho = rho 36819 := by
      rw [seg34LadderFlatX195_eq]
      unfold seg34LadderFlatX195
      linear_combination r5547
    have ha2 : rho 36815 * seg34AccY195 rho = rho 36820 := by
      rw [seg34LadderFlatY195_eq]
      unfold seg34LadderFlatY195
      linear_combination r5548
    have ha3 : 3021 * rho 36819 * rho 36820 = rho 36821 := by
      linear_combination r5549
    have ha4 : rho 36822 * (1 + rho 36821) = rho 36819 + rho 36820 := by
      linear_combination r5550
    have ha5 : rho 36823 * (1 - rho 36821) = rho 36818 - rho 36819 - rho 36820 := by
      linear_combination r5551
    have haddx :
        rho 36822 * (1 + 3021 * (rho 36816 * seg34AccX195 rho) * (rho 36815 * seg34AccY195 rho)) =
          rho 36816 * seg34AccX195 rho + rho 36815 * seg34AccY195 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36823 * (1 - 3021 * (rho 36816 * seg34AccX195 rho) * (rho 36815 * seg34AccY195 rho)) =
          (-1) * (rho 36816 * seg34AccX195 rho) - rho 36815 * seg34AccY195 rho +
            (seg34AccY195 rho - seg34AccX195 rho * (-1)) * (rho 36815 + rho 36816) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36823 * (1 - rho 36821) = rho 36818 - rho 36819 - rho 36820 := ha5
        _ = (-1) * rho 36819 - rho 36820 + (seg34AccY195 rho - seg34AccX195 rho * (-1)) * (rho 36815 + rho 36816) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX196 rho = seg34AccX195 rho - Bool.toZMod bit * (seg34AccX195 rho - rho 36822) := by
      have hd : rho 36824 = Bool.toZMod bit * (rho 36822 - seg34AccX195 rho) := by
        rw [← hbit, seg34LadderFlatX195_eq]
        unfold seg34LadderFlatX195
        linear_combination -r5552
      unfold seg34AccX196
      linear_combination hd
    have hsely : seg34AccY196 rho = seg34AccY195 rho - Bool.toZMod bit * (seg34AccY195 rho - rho 36823) := by
      have hd : rho 36825 = Bool.toZMod bit * (rho 36823 - seg34AccY195 rho) := by
        rw [← hbit, seg34LadderFlatY195_eq]
        unfold seg34LadderFlatY195
        linear_combination -r5553
      unfold seg34AccY196
      linear_combination hd
    have hd0 : rho 36815 * rho 36816 = rho 36826 := by linear_combination r5554
    have hd1 : rho 36815 * rho 36815 = rho 36827 := by linear_combination r5555
    have hd2 : rho 36816 * rho 36816 = rho 36828 := by linear_combination r5556
    have hd3 : rho 36829 * (rho 36816 * rho 36816 + rho 36815 * rho 36815 * (-1)) = 2 * (rho 36815 * rho 36816) := by
      rw [hd0, hd1, hd2]
      linear_combination r5557
    have hd4 : rho 36830 * (2 - (rho 36816 * rho 36816 + rho 36815 * rho 36815 * (-1))) = rho 36816 * rho 36816 - rho 36815 * rho 36815 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5558
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX195 rho : Seg34.F), (seg34AccY195 rho : Seg34.F)⟩
      ⟨(rho 36815 : Seg34.F), (rho 36816 : Seg34.F)⟩
      ⟨(rho 36822 : Seg34.F), (rho 36823 : Seg34.F)⟩
      ⟨(seg34AccX196 rho : Seg34.F), (seg34AccY196 rho : Seg34.F)⟩
      ⟨(rho 36829 : Seg34.F), (rho 36830 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung195

theorem seg34_rung196 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34188 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX196 rho : Seg34.F), (seg34AccY196 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36829 : Seg34.F), (rho 36830 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX196 rho : Seg34.F), (seg34AccY196 rho : Seg34.F)⟩
        ⟨(rho 36829 : Seg34.F), (rho 36830 : Seg34.F)⟩
        ⟨(seg34AccX197 rho : Seg34.F), (seg34AccY197 rho : Seg34.F)⟩
        ⟨(rho 36843 : Seg34.F), (rho 36844 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart69 at p69
  rcases p69 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5559, r5560, r5561, r5562, r5563, r5564, r5565, r5566, r5567, r5568, r5569, r5570, r5571, r5572, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow5559 Seg34.relationLc1015 Seg34.relationLc1015Part0 Seg34.relationLc1015Part1 Seg34.relationLc1015Part2 Seg34.relationLc1015Part3 Seg34.relationLc1015Part4 Seg34.relationLc1015Part5 Seg34.relationLc1015Part6 Seg34.relationLc1015Part7 Seg34.relationLc1015Part8 Seg34.relationLc1015Part9 Seg34.relationLc1015Part10 Seg34.relationLc1015Part11 Seg34.relationLc1015Part12 at r5559
  unfold Seg34.relationRow5560 at r5560
  unfold Seg34.relationRow5561 Seg34.relationLc1016 Seg34.relationLc1016Part0 Seg34.relationLc1016Part1 Seg34.relationLc1016Part2 Seg34.relationLc1016Part3 Seg34.relationLc1016Part4 Seg34.relationLc1016Part5 Seg34.relationLc1016Part6 at r5561
  unfold Seg34.relationRow5562 Seg34.relationLc1017 Seg34.relationLc1017Part0 Seg34.relationLc1017Part1 Seg34.relationLc1017Part2 Seg34.relationLc1017Part3 Seg34.relationLc1017Part4 Seg34.relationLc1017Part5 Seg34.relationLc1017Part6 at r5562
  unfold Seg34.relationRow5563 at r5563
  unfold Seg34.relationRow5564 at r5564
  unfold Seg34.relationRow5565 at r5565
  unfold Seg34.relationRow5566 Seg34.relationLc1018 Seg34.relationLc1018Part0 Seg34.relationLc1018Part1 Seg34.relationLc1018Part2 Seg34.relationLc1018Part3 Seg34.relationLc1018Part4 Seg34.relationLc1018Part5 Seg34.relationLc1018Part6 at r5566
  unfold Seg34.relationRow5567 Seg34.relationLc1019 Seg34.relationLc1019Part0 Seg34.relationLc1019Part1 Seg34.relationLc1019Part2 Seg34.relationLc1019Part3 Seg34.relationLc1019Part4 Seg34.relationLc1019Part5 Seg34.relationLc1019Part6 at r5567
  unfold Seg34.relationRow5568 at r5568
  unfold Seg34.relationRow5569 at r5569
  unfold Seg34.relationRow5570 at r5570
  unfold Seg34.relationRow5571 at r5571
  unfold Seg34.relationRow5572 at r5572
  have hrung196 (bit : Bool) (hbit : rho 34188 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX196 rho : Seg34.F), (seg34AccY196 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36829 : Seg34.F), (rho 36830 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX196 rho : Seg34.F), (seg34AccY196 rho : Seg34.F)⟩
        ⟨(rho 36829 : Seg34.F), (rho 36830 : Seg34.F)⟩
        ⟨(seg34AccX197 rho : Seg34.F), (seg34AccY197 rho : Seg34.F)⟩
        ⟨(rho 36843 : Seg34.F), (rho 36844 : Seg34.F)⟩ := by
    have hsum : seg34AccX196 rho + seg34AccY196 rho = rho 36831 := by
      rw [seg34LadderFlatX196_eq, seg34LadderFlatY196_eq]
      unfold seg34LadderFlatX196 seg34LadderFlatY196
      linear_combination r5559
    have ha0 : (rho 36829 + rho 36830) * (seg34AccX196 rho + seg34AccY196 rho) = rho 36832 := by
      rw [hsum]
      linear_combination r5560
    have ha1 : rho 36830 * seg34AccX196 rho = rho 36833 := by
      rw [seg34LadderFlatX196_eq]
      unfold seg34LadderFlatX196
      linear_combination r5561
    have ha2 : rho 36829 * seg34AccY196 rho = rho 36834 := by
      rw [seg34LadderFlatY196_eq]
      unfold seg34LadderFlatY196
      linear_combination r5562
    have ha3 : 3021 * rho 36833 * rho 36834 = rho 36835 := by
      linear_combination r5563
    have ha4 : rho 36836 * (1 + rho 36835) = rho 36833 + rho 36834 := by
      linear_combination r5564
    have ha5 : rho 36837 * (1 - rho 36835) = rho 36832 - rho 36833 - rho 36834 := by
      linear_combination r5565
    have haddx :
        rho 36836 * (1 + 3021 * (rho 36830 * seg34AccX196 rho) * (rho 36829 * seg34AccY196 rho)) =
          rho 36830 * seg34AccX196 rho + rho 36829 * seg34AccY196 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36837 * (1 - 3021 * (rho 36830 * seg34AccX196 rho) * (rho 36829 * seg34AccY196 rho)) =
          (-1) * (rho 36830 * seg34AccX196 rho) - rho 36829 * seg34AccY196 rho +
            (seg34AccY196 rho - seg34AccX196 rho * (-1)) * (rho 36829 + rho 36830) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36837 * (1 - rho 36835) = rho 36832 - rho 36833 - rho 36834 := ha5
        _ = (-1) * rho 36833 - rho 36834 + (seg34AccY196 rho - seg34AccX196 rho * (-1)) * (rho 36829 + rho 36830) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX197 rho = seg34AccX196 rho - Bool.toZMod bit * (seg34AccX196 rho - rho 36836) := by
      have hd : rho 36838 = Bool.toZMod bit * (rho 36836 - seg34AccX196 rho) := by
        rw [← hbit, seg34LadderFlatX196_eq]
        unfold seg34LadderFlatX196
        linear_combination -r5566
      unfold seg34AccX197
      linear_combination hd
    have hsely : seg34AccY197 rho = seg34AccY196 rho - Bool.toZMod bit * (seg34AccY196 rho - rho 36837) := by
      have hd : rho 36839 = Bool.toZMod bit * (rho 36837 - seg34AccY196 rho) := by
        rw [← hbit, seg34LadderFlatY196_eq]
        unfold seg34LadderFlatY196
        linear_combination -r5567
      unfold seg34AccY197
      linear_combination hd
    have hd0 : rho 36829 * rho 36830 = rho 36840 := by linear_combination r5568
    have hd1 : rho 36829 * rho 36829 = rho 36841 := by linear_combination r5569
    have hd2 : rho 36830 * rho 36830 = rho 36842 := by linear_combination r5570
    have hd3 : rho 36843 * (rho 36830 * rho 36830 + rho 36829 * rho 36829 * (-1)) = 2 * (rho 36829 * rho 36830) := by
      rw [hd0, hd1, hd2]
      linear_combination r5571
    have hd4 : rho 36844 * (2 - (rho 36830 * rho 36830 + rho 36829 * rho 36829 * (-1))) = rho 36830 * rho 36830 - rho 36829 * rho 36829 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5572
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX196 rho : Seg34.F), (seg34AccY196 rho : Seg34.F)⟩
      ⟨(rho 36829 : Seg34.F), (rho 36830 : Seg34.F)⟩
      ⟨(rho 36836 : Seg34.F), (rho 36837 : Seg34.F)⟩
      ⟨(seg34AccX197 rho : Seg34.F), (seg34AccY197 rho : Seg34.F)⟩
      ⟨(rho 36843 : Seg34.F), (rho 36844 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung196

theorem seg34_rung197 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34189 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX197 rho : Seg34.F), (seg34AccY197 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36843 : Seg34.F), (rho 36844 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX197 rho : Seg34.F), (seg34AccY197 rho : Seg34.F)⟩
        ⟨(rho 36843 : Seg34.F), (rho 36844 : Seg34.F)⟩
        ⟨(seg34AccX198 rho : Seg34.F), (seg34AccY198 rho : Seg34.F)⟩
        ⟨(rho 36857 : Seg34.F), (rho 36858 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart69 at p69
  rcases p69 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5573, r5574, r5575, r5576, r5577, r5578, r5579, r5580, r5581, r5582, r5583, r5584, r5585, r5586, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow5573 Seg34.relationLc1020 Seg34.relationLc1020Part0 Seg34.relationLc1020Part1 Seg34.relationLc1020Part2 Seg34.relationLc1020Part3 Seg34.relationLc1020Part4 Seg34.relationLc1020Part5 Seg34.relationLc1020Part6 Seg34.relationLc1020Part7 Seg34.relationLc1020Part8 Seg34.relationLc1020Part9 Seg34.relationLc1020Part10 Seg34.relationLc1020Part11 Seg34.relationLc1020Part12 at r5573
  unfold Seg34.relationRow5574 at r5574
  unfold Seg34.relationRow5575 Seg34.relationLc1021 Seg34.relationLc1021Part0 Seg34.relationLc1021Part1 Seg34.relationLc1021Part2 Seg34.relationLc1021Part3 Seg34.relationLc1021Part4 Seg34.relationLc1021Part5 Seg34.relationLc1021Part6 at r5575
  unfold Seg34.relationRow5576 Seg34.relationLc1022 Seg34.relationLc1022Part0 Seg34.relationLc1022Part1 Seg34.relationLc1022Part2 Seg34.relationLc1022Part3 Seg34.relationLc1022Part4 Seg34.relationLc1022Part5 Seg34.relationLc1022Part6 at r5576
  unfold Seg34.relationRow5577 at r5577
  unfold Seg34.relationRow5578 at r5578
  unfold Seg34.relationRow5579 at r5579
  unfold Seg34.relationRow5580 Seg34.relationLc1023 Seg34.relationLc1023Part0 Seg34.relationLc1023Part1 Seg34.relationLc1023Part2 Seg34.relationLc1023Part3 Seg34.relationLc1023Part4 Seg34.relationLc1023Part5 Seg34.relationLc1023Part6 at r5580
  unfold Seg34.relationRow5581 Seg34.relationLc1024 Seg34.relationLc1024Part0 Seg34.relationLc1024Part1 Seg34.relationLc1024Part2 Seg34.relationLc1024Part3 Seg34.relationLc1024Part4 Seg34.relationLc1024Part5 Seg34.relationLc1024Part6 at r5581
  unfold Seg34.relationRow5582 at r5582
  unfold Seg34.relationRow5583 at r5583
  unfold Seg34.relationRow5584 at r5584
  unfold Seg34.relationRow5585 at r5585
  unfold Seg34.relationRow5586 at r5586
  have hrung197 (bit : Bool) (hbit : rho 34189 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX197 rho : Seg34.F), (seg34AccY197 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36843 : Seg34.F), (rho 36844 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX197 rho : Seg34.F), (seg34AccY197 rho : Seg34.F)⟩
        ⟨(rho 36843 : Seg34.F), (rho 36844 : Seg34.F)⟩
        ⟨(seg34AccX198 rho : Seg34.F), (seg34AccY198 rho : Seg34.F)⟩
        ⟨(rho 36857 : Seg34.F), (rho 36858 : Seg34.F)⟩ := by
    have hsum : seg34AccX197 rho + seg34AccY197 rho = rho 36845 := by
      rw [seg34LadderFlatX197_eq, seg34LadderFlatY197_eq]
      unfold seg34LadderFlatX197 seg34LadderFlatY197
      linear_combination r5573
    have ha0 : (rho 36843 + rho 36844) * (seg34AccX197 rho + seg34AccY197 rho) = rho 36846 := by
      rw [hsum]
      linear_combination r5574
    have ha1 : rho 36844 * seg34AccX197 rho = rho 36847 := by
      rw [seg34LadderFlatX197_eq]
      unfold seg34LadderFlatX197
      linear_combination r5575
    have ha2 : rho 36843 * seg34AccY197 rho = rho 36848 := by
      rw [seg34LadderFlatY197_eq]
      unfold seg34LadderFlatY197
      linear_combination r5576
    have ha3 : 3021 * rho 36847 * rho 36848 = rho 36849 := by
      linear_combination r5577
    have ha4 : rho 36850 * (1 + rho 36849) = rho 36847 + rho 36848 := by
      linear_combination r5578
    have ha5 : rho 36851 * (1 - rho 36849) = rho 36846 - rho 36847 - rho 36848 := by
      linear_combination r5579
    have haddx :
        rho 36850 * (1 + 3021 * (rho 36844 * seg34AccX197 rho) * (rho 36843 * seg34AccY197 rho)) =
          rho 36844 * seg34AccX197 rho + rho 36843 * seg34AccY197 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36851 * (1 - 3021 * (rho 36844 * seg34AccX197 rho) * (rho 36843 * seg34AccY197 rho)) =
          (-1) * (rho 36844 * seg34AccX197 rho) - rho 36843 * seg34AccY197 rho +
            (seg34AccY197 rho - seg34AccX197 rho * (-1)) * (rho 36843 + rho 36844) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36851 * (1 - rho 36849) = rho 36846 - rho 36847 - rho 36848 := ha5
        _ = (-1) * rho 36847 - rho 36848 + (seg34AccY197 rho - seg34AccX197 rho * (-1)) * (rho 36843 + rho 36844) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX198 rho = seg34AccX197 rho - Bool.toZMod bit * (seg34AccX197 rho - rho 36850) := by
      have hd : rho 36852 = Bool.toZMod bit * (rho 36850 - seg34AccX197 rho) := by
        rw [← hbit, seg34LadderFlatX197_eq]
        unfold seg34LadderFlatX197
        linear_combination -r5580
      unfold seg34AccX198
      linear_combination hd
    have hsely : seg34AccY198 rho = seg34AccY197 rho - Bool.toZMod bit * (seg34AccY197 rho - rho 36851) := by
      have hd : rho 36853 = Bool.toZMod bit * (rho 36851 - seg34AccY197 rho) := by
        rw [← hbit, seg34LadderFlatY197_eq]
        unfold seg34LadderFlatY197
        linear_combination -r5581
      unfold seg34AccY198
      linear_combination hd
    have hd0 : rho 36843 * rho 36844 = rho 36854 := by linear_combination r5582
    have hd1 : rho 36843 * rho 36843 = rho 36855 := by linear_combination r5583
    have hd2 : rho 36844 * rho 36844 = rho 36856 := by linear_combination r5584
    have hd3 : rho 36857 * (rho 36844 * rho 36844 + rho 36843 * rho 36843 * (-1)) = 2 * (rho 36843 * rho 36844) := by
      rw [hd0, hd1, hd2]
      linear_combination r5585
    have hd4 : rho 36858 * (2 - (rho 36844 * rho 36844 + rho 36843 * rho 36843 * (-1))) = rho 36844 * rho 36844 - rho 36843 * rho 36843 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5586
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX197 rho : Seg34.F), (seg34AccY197 rho : Seg34.F)⟩
      ⟨(rho 36843 : Seg34.F), (rho 36844 : Seg34.F)⟩
      ⟨(rho 36850 : Seg34.F), (rho 36851 : Seg34.F)⟩
      ⟨(seg34AccX198 rho : Seg34.F), (seg34AccY198 rho : Seg34.F)⟩
      ⟨(rho 36857 : Seg34.F), (rho 36858 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung197

theorem seg34_rung198 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34190 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX198 rho : Seg34.F), (seg34AccY198 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36857 : Seg34.F), (rho 36858 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX198 rho : Seg34.F), (seg34AccY198 rho : Seg34.F)⟩
        ⟨(rho 36857 : Seg34.F), (rho 36858 : Seg34.F)⟩
        ⟨(seg34AccX199 rho : Seg34.F), (seg34AccY199 rho : Seg34.F)⟩
        ⟨(rho 36871 : Seg34.F), (rho 36872 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart69 at p69
  rcases p69 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5587, r5588, r5589, r5590, r5591, r5592, r5593, r5594, r5595, r5596, r5597, r5598, r5599⟩
  unfold Seg34.relationPart70 at p70
  rcases p70 with ⟨r5600, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow5587 Seg34.relationLc1025 Seg34.relationLc1025Part0 Seg34.relationLc1025Part1 Seg34.relationLc1025Part2 Seg34.relationLc1025Part3 Seg34.relationLc1025Part4 Seg34.relationLc1025Part5 Seg34.relationLc1025Part6 Seg34.relationLc1025Part7 Seg34.relationLc1025Part8 Seg34.relationLc1025Part9 Seg34.relationLc1025Part10 Seg34.relationLc1025Part11 Seg34.relationLc1025Part12 at r5587
  unfold Seg34.relationRow5588 at r5588
  unfold Seg34.relationRow5589 Seg34.relationLc1026 Seg34.relationLc1026Part0 Seg34.relationLc1026Part1 Seg34.relationLc1026Part2 Seg34.relationLc1026Part3 Seg34.relationLc1026Part4 Seg34.relationLc1026Part5 Seg34.relationLc1026Part6 at r5589
  unfold Seg34.relationRow5590 Seg34.relationLc1027 Seg34.relationLc1027Part0 Seg34.relationLc1027Part1 Seg34.relationLc1027Part2 Seg34.relationLc1027Part3 Seg34.relationLc1027Part4 Seg34.relationLc1027Part5 Seg34.relationLc1027Part6 at r5590
  unfold Seg34.relationRow5591 at r5591
  unfold Seg34.relationRow5592 at r5592
  unfold Seg34.relationRow5593 at r5593
  unfold Seg34.relationRow5594 Seg34.relationLc1028 Seg34.relationLc1028Part0 Seg34.relationLc1028Part1 Seg34.relationLc1028Part2 Seg34.relationLc1028Part3 Seg34.relationLc1028Part4 Seg34.relationLc1028Part5 Seg34.relationLc1028Part6 at r5594
  unfold Seg34.relationRow5595 Seg34.relationLc1029 Seg34.relationLc1029Part0 Seg34.relationLc1029Part1 Seg34.relationLc1029Part2 Seg34.relationLc1029Part3 Seg34.relationLc1029Part4 Seg34.relationLc1029Part5 Seg34.relationLc1029Part6 at r5595
  unfold Seg34.relationRow5596 at r5596
  unfold Seg34.relationRow5597 at r5597
  unfold Seg34.relationRow5598 at r5598
  unfold Seg34.relationRow5599 at r5599
  unfold Seg34.relationRow5600 at r5600
  have hrung198 (bit : Bool) (hbit : rho 34190 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX198 rho : Seg34.F), (seg34AccY198 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36857 : Seg34.F), (rho 36858 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX198 rho : Seg34.F), (seg34AccY198 rho : Seg34.F)⟩
        ⟨(rho 36857 : Seg34.F), (rho 36858 : Seg34.F)⟩
        ⟨(seg34AccX199 rho : Seg34.F), (seg34AccY199 rho : Seg34.F)⟩
        ⟨(rho 36871 : Seg34.F), (rho 36872 : Seg34.F)⟩ := by
    have hsum : seg34AccX198 rho + seg34AccY198 rho = rho 36859 := by
      rw [seg34LadderFlatX198_eq, seg34LadderFlatY198_eq]
      unfold seg34LadderFlatX198 seg34LadderFlatY198
      linear_combination r5587
    have ha0 : (rho 36857 + rho 36858) * (seg34AccX198 rho + seg34AccY198 rho) = rho 36860 := by
      rw [hsum]
      linear_combination r5588
    have ha1 : rho 36858 * seg34AccX198 rho = rho 36861 := by
      rw [seg34LadderFlatX198_eq]
      unfold seg34LadderFlatX198
      linear_combination r5589
    have ha2 : rho 36857 * seg34AccY198 rho = rho 36862 := by
      rw [seg34LadderFlatY198_eq]
      unfold seg34LadderFlatY198
      linear_combination r5590
    have ha3 : 3021 * rho 36861 * rho 36862 = rho 36863 := by
      linear_combination r5591
    have ha4 : rho 36864 * (1 + rho 36863) = rho 36861 + rho 36862 := by
      linear_combination r5592
    have ha5 : rho 36865 * (1 - rho 36863) = rho 36860 - rho 36861 - rho 36862 := by
      linear_combination r5593
    have haddx :
        rho 36864 * (1 + 3021 * (rho 36858 * seg34AccX198 rho) * (rho 36857 * seg34AccY198 rho)) =
          rho 36858 * seg34AccX198 rho + rho 36857 * seg34AccY198 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36865 * (1 - 3021 * (rho 36858 * seg34AccX198 rho) * (rho 36857 * seg34AccY198 rho)) =
          (-1) * (rho 36858 * seg34AccX198 rho) - rho 36857 * seg34AccY198 rho +
            (seg34AccY198 rho - seg34AccX198 rho * (-1)) * (rho 36857 + rho 36858) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36865 * (1 - rho 36863) = rho 36860 - rho 36861 - rho 36862 := ha5
        _ = (-1) * rho 36861 - rho 36862 + (seg34AccY198 rho - seg34AccX198 rho * (-1)) * (rho 36857 + rho 36858) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX199 rho = seg34AccX198 rho - Bool.toZMod bit * (seg34AccX198 rho - rho 36864) := by
      have hd : rho 36866 = Bool.toZMod bit * (rho 36864 - seg34AccX198 rho) := by
        rw [← hbit, seg34LadderFlatX198_eq]
        unfold seg34LadderFlatX198
        linear_combination -r5594
      unfold seg34AccX199
      linear_combination hd
    have hsely : seg34AccY199 rho = seg34AccY198 rho - Bool.toZMod bit * (seg34AccY198 rho - rho 36865) := by
      have hd : rho 36867 = Bool.toZMod bit * (rho 36865 - seg34AccY198 rho) := by
        rw [← hbit, seg34LadderFlatY198_eq]
        unfold seg34LadderFlatY198
        linear_combination -r5595
      unfold seg34AccY199
      linear_combination hd
    have hd0 : rho 36857 * rho 36858 = rho 36868 := by linear_combination r5596
    have hd1 : rho 36857 * rho 36857 = rho 36869 := by linear_combination r5597
    have hd2 : rho 36858 * rho 36858 = rho 36870 := by linear_combination r5598
    have hd3 : rho 36871 * (rho 36858 * rho 36858 + rho 36857 * rho 36857 * (-1)) = 2 * (rho 36857 * rho 36858) := by
      rw [hd0, hd1, hd2]
      linear_combination r5599
    have hd4 : rho 36872 * (2 - (rho 36858 * rho 36858 + rho 36857 * rho 36857 * (-1))) = rho 36858 * rho 36858 - rho 36857 * rho 36857 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5600
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX198 rho : Seg34.F), (seg34AccY198 rho : Seg34.F)⟩
      ⟨(rho 36857 : Seg34.F), (rho 36858 : Seg34.F)⟩
      ⟨(rho 36864 : Seg34.F), (rho 36865 : Seg34.F)⟩
      ⟨(seg34AccX199 rho : Seg34.F), (seg34AccY199 rho : Seg34.F)⟩
      ⟨(rho 36871 : Seg34.F), (rho 36872 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung198

theorem seg34_rung199 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34191 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX199 rho : Seg34.F), (seg34AccY199 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36871 : Seg34.F), (rho 36872 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX199 rho : Seg34.F), (seg34AccY199 rho : Seg34.F)⟩
        ⟨(rho 36871 : Seg34.F), (rho 36872 : Seg34.F)⟩
        ⟨(seg34AccX200 rho : Seg34.F), (seg34AccY200 rho : Seg34.F)⟩
        ⟨(rho 36885 : Seg34.F), (rho 36886 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart70 at p70
  rcases p70 with ⟨_, r5601, r5602, r5603, r5604, r5605, r5606, r5607, r5608, r5609, r5610, r5611, r5612, r5613, r5614, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow5601 Seg34.relationLc1030 Seg34.relationLc1030Part0 Seg34.relationLc1030Part1 Seg34.relationLc1030Part2 Seg34.relationLc1030Part3 Seg34.relationLc1030Part4 Seg34.relationLc1030Part5 Seg34.relationLc1030Part6 Seg34.relationLc1030Part7 Seg34.relationLc1030Part8 Seg34.relationLc1030Part9 Seg34.relationLc1030Part10 Seg34.relationLc1030Part11 Seg34.relationLc1030Part12 at r5601
  unfold Seg34.relationRow5602 at r5602
  unfold Seg34.relationRow5603 Seg34.relationLc1031 Seg34.relationLc1031Part0 Seg34.relationLc1031Part1 Seg34.relationLc1031Part2 Seg34.relationLc1031Part3 Seg34.relationLc1031Part4 Seg34.relationLc1031Part5 Seg34.relationLc1031Part6 at r5603
  unfold Seg34.relationRow5604 Seg34.relationLc1032 Seg34.relationLc1032Part0 Seg34.relationLc1032Part1 Seg34.relationLc1032Part2 Seg34.relationLc1032Part3 Seg34.relationLc1032Part4 Seg34.relationLc1032Part5 Seg34.relationLc1032Part6 at r5604
  unfold Seg34.relationRow5605 at r5605
  unfold Seg34.relationRow5606 at r5606
  unfold Seg34.relationRow5607 at r5607
  unfold Seg34.relationRow5608 Seg34.relationLc1033 Seg34.relationLc1033Part0 Seg34.relationLc1033Part1 Seg34.relationLc1033Part2 Seg34.relationLc1033Part3 Seg34.relationLc1033Part4 Seg34.relationLc1033Part5 Seg34.relationLc1033Part6 at r5608
  unfold Seg34.relationRow5609 Seg34.relationLc1034 Seg34.relationLc1034Part0 Seg34.relationLc1034Part1 Seg34.relationLc1034Part2 Seg34.relationLc1034Part3 Seg34.relationLc1034Part4 Seg34.relationLc1034Part5 Seg34.relationLc1034Part6 at r5609
  unfold Seg34.relationRow5610 at r5610
  unfold Seg34.relationRow5611 at r5611
  unfold Seg34.relationRow5612 at r5612
  unfold Seg34.relationRow5613 at r5613
  unfold Seg34.relationRow5614 at r5614
  have hrung199 (bit : Bool) (hbit : rho 34191 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX199 rho : Seg34.F), (seg34AccY199 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36871 : Seg34.F), (rho 36872 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX199 rho : Seg34.F), (seg34AccY199 rho : Seg34.F)⟩
        ⟨(rho 36871 : Seg34.F), (rho 36872 : Seg34.F)⟩
        ⟨(seg34AccX200 rho : Seg34.F), (seg34AccY200 rho : Seg34.F)⟩
        ⟨(rho 36885 : Seg34.F), (rho 36886 : Seg34.F)⟩ := by
    have hsum : seg34AccX199 rho + seg34AccY199 rho = rho 36873 := by
      rw [seg34LadderFlatX199_eq, seg34LadderFlatY199_eq]
      unfold seg34LadderFlatX199 seg34LadderFlatY199
      linear_combination r5601
    have ha0 : (rho 36871 + rho 36872) * (seg34AccX199 rho + seg34AccY199 rho) = rho 36874 := by
      rw [hsum]
      linear_combination r5602
    have ha1 : rho 36872 * seg34AccX199 rho = rho 36875 := by
      rw [seg34LadderFlatX199_eq]
      unfold seg34LadderFlatX199
      linear_combination r5603
    have ha2 : rho 36871 * seg34AccY199 rho = rho 36876 := by
      rw [seg34LadderFlatY199_eq]
      unfold seg34LadderFlatY199
      linear_combination r5604
    have ha3 : 3021 * rho 36875 * rho 36876 = rho 36877 := by
      linear_combination r5605
    have ha4 : rho 36878 * (1 + rho 36877) = rho 36875 + rho 36876 := by
      linear_combination r5606
    have ha5 : rho 36879 * (1 - rho 36877) = rho 36874 - rho 36875 - rho 36876 := by
      linear_combination r5607
    have haddx :
        rho 36878 * (1 + 3021 * (rho 36872 * seg34AccX199 rho) * (rho 36871 * seg34AccY199 rho)) =
          rho 36872 * seg34AccX199 rho + rho 36871 * seg34AccY199 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36879 * (1 - 3021 * (rho 36872 * seg34AccX199 rho) * (rho 36871 * seg34AccY199 rho)) =
          (-1) * (rho 36872 * seg34AccX199 rho) - rho 36871 * seg34AccY199 rho +
            (seg34AccY199 rho - seg34AccX199 rho * (-1)) * (rho 36871 + rho 36872) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36879 * (1 - rho 36877) = rho 36874 - rho 36875 - rho 36876 := ha5
        _ = (-1) * rho 36875 - rho 36876 + (seg34AccY199 rho - seg34AccX199 rho * (-1)) * (rho 36871 + rho 36872) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX200 rho = seg34AccX199 rho - Bool.toZMod bit * (seg34AccX199 rho - rho 36878) := by
      have hd : rho 36880 = Bool.toZMod bit * (rho 36878 - seg34AccX199 rho) := by
        rw [← hbit, seg34LadderFlatX199_eq]
        unfold seg34LadderFlatX199
        linear_combination -r5608
      unfold seg34AccX200
      linear_combination hd
    have hsely : seg34AccY200 rho = seg34AccY199 rho - Bool.toZMod bit * (seg34AccY199 rho - rho 36879) := by
      have hd : rho 36881 = Bool.toZMod bit * (rho 36879 - seg34AccY199 rho) := by
        rw [← hbit, seg34LadderFlatY199_eq]
        unfold seg34LadderFlatY199
        linear_combination -r5609
      unfold seg34AccY200
      linear_combination hd
    have hd0 : rho 36871 * rho 36872 = rho 36882 := by linear_combination r5610
    have hd1 : rho 36871 * rho 36871 = rho 36883 := by linear_combination r5611
    have hd2 : rho 36872 * rho 36872 = rho 36884 := by linear_combination r5612
    have hd3 : rho 36885 * (rho 36872 * rho 36872 + rho 36871 * rho 36871 * (-1)) = 2 * (rho 36871 * rho 36872) := by
      rw [hd0, hd1, hd2]
      linear_combination r5613
    have hd4 : rho 36886 * (2 - (rho 36872 * rho 36872 + rho 36871 * rho 36871 * (-1))) = rho 36872 * rho 36872 - rho 36871 * rho 36871 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5614
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX199 rho : Seg34.F), (seg34AccY199 rho : Seg34.F)⟩
      ⟨(rho 36871 : Seg34.F), (rho 36872 : Seg34.F)⟩
      ⟨(rho 36878 : Seg34.F), (rho 36879 : Seg34.F)⟩
      ⟨(seg34AccX200 rho : Seg34.F), (seg34AccY200 rho : Seg34.F)⟩
      ⟨(rho 36885 : Seg34.F), (rho 36886 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung199

theorem seg34_rung200 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34192 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX200 rho : Seg34.F), (seg34AccY200 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36885 : Seg34.F), (rho 36886 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX200 rho : Seg34.F), (seg34AccY200 rho : Seg34.F)⟩
        ⟨(rho 36885 : Seg34.F), (rho 36886 : Seg34.F)⟩
        ⟨(seg34AccX201 rho : Seg34.F), (seg34AccY201 rho : Seg34.F)⟩
        ⟨(rho 36899 : Seg34.F), (rho 36900 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart70 at p70
  rcases p70 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5615, r5616, r5617, r5618, r5619, r5620, r5621, r5622, r5623, r5624, r5625, r5626, r5627, r5628, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow5615 Seg34.relationLc1035 Seg34.relationLc1035Part0 Seg34.relationLc1035Part1 Seg34.relationLc1035Part2 Seg34.relationLc1035Part3 Seg34.relationLc1035Part4 Seg34.relationLc1035Part5 Seg34.relationLc1035Part6 Seg34.relationLc1035Part7 Seg34.relationLc1035Part8 Seg34.relationLc1035Part9 Seg34.relationLc1035Part10 Seg34.relationLc1035Part11 Seg34.relationLc1035Part12 at r5615
  unfold Seg34.relationRow5616 at r5616
  unfold Seg34.relationRow5617 Seg34.relationLc1036 Seg34.relationLc1036Part0 Seg34.relationLc1036Part1 Seg34.relationLc1036Part2 Seg34.relationLc1036Part3 Seg34.relationLc1036Part4 Seg34.relationLc1036Part5 Seg34.relationLc1036Part6 at r5617
  unfold Seg34.relationRow5618 Seg34.relationLc1037 Seg34.relationLc1037Part0 Seg34.relationLc1037Part1 Seg34.relationLc1037Part2 Seg34.relationLc1037Part3 Seg34.relationLc1037Part4 Seg34.relationLc1037Part5 Seg34.relationLc1037Part6 at r5618
  unfold Seg34.relationRow5619 at r5619
  unfold Seg34.relationRow5620 at r5620
  unfold Seg34.relationRow5621 at r5621
  unfold Seg34.relationRow5622 Seg34.relationLc1038 Seg34.relationLc1038Part0 Seg34.relationLc1038Part1 Seg34.relationLc1038Part2 Seg34.relationLc1038Part3 Seg34.relationLc1038Part4 Seg34.relationLc1038Part5 Seg34.relationLc1038Part6 at r5622
  unfold Seg34.relationRow5623 Seg34.relationLc1039 Seg34.relationLc1039Part0 Seg34.relationLc1039Part1 Seg34.relationLc1039Part2 Seg34.relationLc1039Part3 Seg34.relationLc1039Part4 Seg34.relationLc1039Part5 Seg34.relationLc1039Part6 at r5623
  unfold Seg34.relationRow5624 at r5624
  unfold Seg34.relationRow5625 at r5625
  unfold Seg34.relationRow5626 at r5626
  unfold Seg34.relationRow5627 at r5627
  unfold Seg34.relationRow5628 at r5628
  have hrung200 (bit : Bool) (hbit : rho 34192 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX200 rho : Seg34.F), (seg34AccY200 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36885 : Seg34.F), (rho 36886 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX200 rho : Seg34.F), (seg34AccY200 rho : Seg34.F)⟩
        ⟨(rho 36885 : Seg34.F), (rho 36886 : Seg34.F)⟩
        ⟨(seg34AccX201 rho : Seg34.F), (seg34AccY201 rho : Seg34.F)⟩
        ⟨(rho 36899 : Seg34.F), (rho 36900 : Seg34.F)⟩ := by
    have hsum : seg34AccX200 rho + seg34AccY200 rho = rho 36887 := by
      rw [seg34LadderFlatX200_eq, seg34LadderFlatY200_eq]
      unfold seg34LadderFlatX200 seg34LadderFlatY200
      linear_combination r5615
    have ha0 : (rho 36885 + rho 36886) * (seg34AccX200 rho + seg34AccY200 rho) = rho 36888 := by
      rw [hsum]
      linear_combination r5616
    have ha1 : rho 36886 * seg34AccX200 rho = rho 36889 := by
      rw [seg34LadderFlatX200_eq]
      unfold seg34LadderFlatX200
      linear_combination r5617
    have ha2 : rho 36885 * seg34AccY200 rho = rho 36890 := by
      rw [seg34LadderFlatY200_eq]
      unfold seg34LadderFlatY200
      linear_combination r5618
    have ha3 : 3021 * rho 36889 * rho 36890 = rho 36891 := by
      linear_combination r5619
    have ha4 : rho 36892 * (1 + rho 36891) = rho 36889 + rho 36890 := by
      linear_combination r5620
    have ha5 : rho 36893 * (1 - rho 36891) = rho 36888 - rho 36889 - rho 36890 := by
      linear_combination r5621
    have haddx :
        rho 36892 * (1 + 3021 * (rho 36886 * seg34AccX200 rho) * (rho 36885 * seg34AccY200 rho)) =
          rho 36886 * seg34AccX200 rho + rho 36885 * seg34AccY200 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36893 * (1 - 3021 * (rho 36886 * seg34AccX200 rho) * (rho 36885 * seg34AccY200 rho)) =
          (-1) * (rho 36886 * seg34AccX200 rho) - rho 36885 * seg34AccY200 rho +
            (seg34AccY200 rho - seg34AccX200 rho * (-1)) * (rho 36885 + rho 36886) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36893 * (1 - rho 36891) = rho 36888 - rho 36889 - rho 36890 := ha5
        _ = (-1) * rho 36889 - rho 36890 + (seg34AccY200 rho - seg34AccX200 rho * (-1)) * (rho 36885 + rho 36886) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX201 rho = seg34AccX200 rho - Bool.toZMod bit * (seg34AccX200 rho - rho 36892) := by
      have hd : rho 36894 = Bool.toZMod bit * (rho 36892 - seg34AccX200 rho) := by
        rw [← hbit, seg34LadderFlatX200_eq]
        unfold seg34LadderFlatX200
        linear_combination -r5622
      unfold seg34AccX201
      linear_combination hd
    have hsely : seg34AccY201 rho = seg34AccY200 rho - Bool.toZMod bit * (seg34AccY200 rho - rho 36893) := by
      have hd : rho 36895 = Bool.toZMod bit * (rho 36893 - seg34AccY200 rho) := by
        rw [← hbit, seg34LadderFlatY200_eq]
        unfold seg34LadderFlatY200
        linear_combination -r5623
      unfold seg34AccY201
      linear_combination hd
    have hd0 : rho 36885 * rho 36886 = rho 36896 := by linear_combination r5624
    have hd1 : rho 36885 * rho 36885 = rho 36897 := by linear_combination r5625
    have hd2 : rho 36886 * rho 36886 = rho 36898 := by linear_combination r5626
    have hd3 : rho 36899 * (rho 36886 * rho 36886 + rho 36885 * rho 36885 * (-1)) = 2 * (rho 36885 * rho 36886) := by
      rw [hd0, hd1, hd2]
      linear_combination r5627
    have hd4 : rho 36900 * (2 - (rho 36886 * rho 36886 + rho 36885 * rho 36885 * (-1))) = rho 36886 * rho 36886 - rho 36885 * rho 36885 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5628
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX200 rho : Seg34.F), (seg34AccY200 rho : Seg34.F)⟩
      ⟨(rho 36885 : Seg34.F), (rho 36886 : Seg34.F)⟩
      ⟨(rho 36892 : Seg34.F), (rho 36893 : Seg34.F)⟩
      ⟨(seg34AccX201 rho : Seg34.F), (seg34AccY201 rho : Seg34.F)⟩
      ⟨(rho 36899 : Seg34.F), (rho 36900 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung200

theorem seg34_rung201 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34193 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX201 rho : Seg34.F), (seg34AccY201 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36899 : Seg34.F), (rho 36900 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX201 rho : Seg34.F), (seg34AccY201 rho : Seg34.F)⟩
        ⟨(rho 36899 : Seg34.F), (rho 36900 : Seg34.F)⟩
        ⟨(seg34AccX202 rho : Seg34.F), (seg34AccY202 rho : Seg34.F)⟩
        ⟨(rho 36913 : Seg34.F), (rho 36914 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart70 at p70
  rcases p70 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5629, r5630, r5631, r5632, r5633, r5634, r5635, r5636, r5637, r5638, r5639, r5640, r5641, r5642, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow5629 Seg34.relationLc1040 Seg34.relationLc1040Part0 Seg34.relationLc1040Part1 Seg34.relationLc1040Part2 Seg34.relationLc1040Part3 Seg34.relationLc1040Part4 Seg34.relationLc1040Part5 Seg34.relationLc1040Part6 Seg34.relationLc1040Part7 Seg34.relationLc1040Part8 Seg34.relationLc1040Part9 Seg34.relationLc1040Part10 Seg34.relationLc1040Part11 Seg34.relationLc1040Part12 at r5629
  unfold Seg34.relationRow5630 at r5630
  unfold Seg34.relationRow5631 Seg34.relationLc1041 Seg34.relationLc1041Part0 Seg34.relationLc1041Part1 Seg34.relationLc1041Part2 Seg34.relationLc1041Part3 Seg34.relationLc1041Part4 Seg34.relationLc1041Part5 Seg34.relationLc1041Part6 at r5631
  unfold Seg34.relationRow5632 Seg34.relationLc1042 Seg34.relationLc1042Part0 Seg34.relationLc1042Part1 Seg34.relationLc1042Part2 Seg34.relationLc1042Part3 Seg34.relationLc1042Part4 Seg34.relationLc1042Part5 Seg34.relationLc1042Part6 at r5632
  unfold Seg34.relationRow5633 at r5633
  unfold Seg34.relationRow5634 at r5634
  unfold Seg34.relationRow5635 at r5635
  unfold Seg34.relationRow5636 Seg34.relationLc1043 Seg34.relationLc1043Part0 Seg34.relationLc1043Part1 Seg34.relationLc1043Part2 Seg34.relationLc1043Part3 Seg34.relationLc1043Part4 Seg34.relationLc1043Part5 Seg34.relationLc1043Part6 at r5636
  unfold Seg34.relationRow5637 Seg34.relationLc1044 Seg34.relationLc1044Part0 Seg34.relationLc1044Part1 Seg34.relationLc1044Part2 Seg34.relationLc1044Part3 Seg34.relationLc1044Part4 Seg34.relationLc1044Part5 Seg34.relationLc1044Part6 at r5637
  unfold Seg34.relationRow5638 at r5638
  unfold Seg34.relationRow5639 at r5639
  unfold Seg34.relationRow5640 at r5640
  unfold Seg34.relationRow5641 at r5641
  unfold Seg34.relationRow5642 at r5642
  have hrung201 (bit : Bool) (hbit : rho 34193 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX201 rho : Seg34.F), (seg34AccY201 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36899 : Seg34.F), (rho 36900 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX201 rho : Seg34.F), (seg34AccY201 rho : Seg34.F)⟩
        ⟨(rho 36899 : Seg34.F), (rho 36900 : Seg34.F)⟩
        ⟨(seg34AccX202 rho : Seg34.F), (seg34AccY202 rho : Seg34.F)⟩
        ⟨(rho 36913 : Seg34.F), (rho 36914 : Seg34.F)⟩ := by
    have hsum : seg34AccX201 rho + seg34AccY201 rho = rho 36901 := by
      rw [seg34LadderFlatX201_eq, seg34LadderFlatY201_eq]
      unfold seg34LadderFlatX201 seg34LadderFlatY201
      linear_combination r5629
    have ha0 : (rho 36899 + rho 36900) * (seg34AccX201 rho + seg34AccY201 rho) = rho 36902 := by
      rw [hsum]
      linear_combination r5630
    have ha1 : rho 36900 * seg34AccX201 rho = rho 36903 := by
      rw [seg34LadderFlatX201_eq]
      unfold seg34LadderFlatX201
      linear_combination r5631
    have ha2 : rho 36899 * seg34AccY201 rho = rho 36904 := by
      rw [seg34LadderFlatY201_eq]
      unfold seg34LadderFlatY201
      linear_combination r5632
    have ha3 : 3021 * rho 36903 * rho 36904 = rho 36905 := by
      linear_combination r5633
    have ha4 : rho 36906 * (1 + rho 36905) = rho 36903 + rho 36904 := by
      linear_combination r5634
    have ha5 : rho 36907 * (1 - rho 36905) = rho 36902 - rho 36903 - rho 36904 := by
      linear_combination r5635
    have haddx :
        rho 36906 * (1 + 3021 * (rho 36900 * seg34AccX201 rho) * (rho 36899 * seg34AccY201 rho)) =
          rho 36900 * seg34AccX201 rho + rho 36899 * seg34AccY201 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36907 * (1 - 3021 * (rho 36900 * seg34AccX201 rho) * (rho 36899 * seg34AccY201 rho)) =
          (-1) * (rho 36900 * seg34AccX201 rho) - rho 36899 * seg34AccY201 rho +
            (seg34AccY201 rho - seg34AccX201 rho * (-1)) * (rho 36899 + rho 36900) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36907 * (1 - rho 36905) = rho 36902 - rho 36903 - rho 36904 := ha5
        _ = (-1) * rho 36903 - rho 36904 + (seg34AccY201 rho - seg34AccX201 rho * (-1)) * (rho 36899 + rho 36900) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX202 rho = seg34AccX201 rho - Bool.toZMod bit * (seg34AccX201 rho - rho 36906) := by
      have hd : rho 36908 = Bool.toZMod bit * (rho 36906 - seg34AccX201 rho) := by
        rw [← hbit, seg34LadderFlatX201_eq]
        unfold seg34LadderFlatX201
        linear_combination -r5636
      unfold seg34AccX202
      linear_combination hd
    have hsely : seg34AccY202 rho = seg34AccY201 rho - Bool.toZMod bit * (seg34AccY201 rho - rho 36907) := by
      have hd : rho 36909 = Bool.toZMod bit * (rho 36907 - seg34AccY201 rho) := by
        rw [← hbit, seg34LadderFlatY201_eq]
        unfold seg34LadderFlatY201
        linear_combination -r5637
      unfold seg34AccY202
      linear_combination hd
    have hd0 : rho 36899 * rho 36900 = rho 36910 := by linear_combination r5638
    have hd1 : rho 36899 * rho 36899 = rho 36911 := by linear_combination r5639
    have hd2 : rho 36900 * rho 36900 = rho 36912 := by linear_combination r5640
    have hd3 : rho 36913 * (rho 36900 * rho 36900 + rho 36899 * rho 36899 * (-1)) = 2 * (rho 36899 * rho 36900) := by
      rw [hd0, hd1, hd2]
      linear_combination r5641
    have hd4 : rho 36914 * (2 - (rho 36900 * rho 36900 + rho 36899 * rho 36899 * (-1))) = rho 36900 * rho 36900 - rho 36899 * rho 36899 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5642
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX201 rho : Seg34.F), (seg34AccY201 rho : Seg34.F)⟩
      ⟨(rho 36899 : Seg34.F), (rho 36900 : Seg34.F)⟩
      ⟨(rho 36906 : Seg34.F), (rho 36907 : Seg34.F)⟩
      ⟨(seg34AccX202 rho : Seg34.F), (seg34AccY202 rho : Seg34.F)⟩
      ⟨(rho 36913 : Seg34.F), (rho 36914 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung201

theorem seg34_rung202 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34194 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX202 rho : Seg34.F), (seg34AccY202 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36913 : Seg34.F), (rho 36914 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX202 rho : Seg34.F), (seg34AccY202 rho : Seg34.F)⟩
        ⟨(rho 36913 : Seg34.F), (rho 36914 : Seg34.F)⟩
        ⟨(seg34AccX203 rho : Seg34.F), (seg34AccY203 rho : Seg34.F)⟩
        ⟨(rho 36927 : Seg34.F), (rho 36928 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart70 at p70
  rcases p70 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5643, r5644, r5645, r5646, r5647, r5648, r5649, r5650, r5651, r5652, r5653, r5654, r5655, r5656, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow5643 Seg34.relationLc1045 Seg34.relationLc1045Part0 Seg34.relationLc1045Part1 Seg34.relationLc1045Part2 Seg34.relationLc1045Part3 Seg34.relationLc1045Part4 Seg34.relationLc1045Part5 Seg34.relationLc1045Part6 Seg34.relationLc1045Part7 Seg34.relationLc1045Part8 Seg34.relationLc1045Part9 Seg34.relationLc1045Part10 Seg34.relationLc1045Part11 Seg34.relationLc1045Part12 at r5643
  unfold Seg34.relationRow5644 at r5644
  unfold Seg34.relationRow5645 Seg34.relationLc1046 Seg34.relationLc1046Part0 Seg34.relationLc1046Part1 Seg34.relationLc1046Part2 Seg34.relationLc1046Part3 Seg34.relationLc1046Part4 Seg34.relationLc1046Part5 Seg34.relationLc1046Part6 at r5645
  unfold Seg34.relationRow5646 Seg34.relationLc1047 Seg34.relationLc1047Part0 Seg34.relationLc1047Part1 Seg34.relationLc1047Part2 Seg34.relationLc1047Part3 Seg34.relationLc1047Part4 Seg34.relationLc1047Part5 Seg34.relationLc1047Part6 at r5646
  unfold Seg34.relationRow5647 at r5647
  unfold Seg34.relationRow5648 at r5648
  unfold Seg34.relationRow5649 at r5649
  unfold Seg34.relationRow5650 Seg34.relationLc1048 Seg34.relationLc1048Part0 Seg34.relationLc1048Part1 Seg34.relationLc1048Part2 Seg34.relationLc1048Part3 Seg34.relationLc1048Part4 Seg34.relationLc1048Part5 Seg34.relationLc1048Part6 at r5650
  unfold Seg34.relationRow5651 Seg34.relationLc1049 Seg34.relationLc1049Part0 Seg34.relationLc1049Part1 Seg34.relationLc1049Part2 Seg34.relationLc1049Part3 Seg34.relationLc1049Part4 Seg34.relationLc1049Part5 Seg34.relationLc1049Part6 at r5651
  unfold Seg34.relationRow5652 at r5652
  unfold Seg34.relationRow5653 at r5653
  unfold Seg34.relationRow5654 at r5654
  unfold Seg34.relationRow5655 at r5655
  unfold Seg34.relationRow5656 at r5656
  have hrung202 (bit : Bool) (hbit : rho 34194 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX202 rho : Seg34.F), (seg34AccY202 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36913 : Seg34.F), (rho 36914 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX202 rho : Seg34.F), (seg34AccY202 rho : Seg34.F)⟩
        ⟨(rho 36913 : Seg34.F), (rho 36914 : Seg34.F)⟩
        ⟨(seg34AccX203 rho : Seg34.F), (seg34AccY203 rho : Seg34.F)⟩
        ⟨(rho 36927 : Seg34.F), (rho 36928 : Seg34.F)⟩ := by
    have hsum : seg34AccX202 rho + seg34AccY202 rho = rho 36915 := by
      rw [seg34LadderFlatX202_eq, seg34LadderFlatY202_eq]
      unfold seg34LadderFlatX202 seg34LadderFlatY202
      linear_combination r5643
    have ha0 : (rho 36913 + rho 36914) * (seg34AccX202 rho + seg34AccY202 rho) = rho 36916 := by
      rw [hsum]
      linear_combination r5644
    have ha1 : rho 36914 * seg34AccX202 rho = rho 36917 := by
      rw [seg34LadderFlatX202_eq]
      unfold seg34LadderFlatX202
      linear_combination r5645
    have ha2 : rho 36913 * seg34AccY202 rho = rho 36918 := by
      rw [seg34LadderFlatY202_eq]
      unfold seg34LadderFlatY202
      linear_combination r5646
    have ha3 : 3021 * rho 36917 * rho 36918 = rho 36919 := by
      linear_combination r5647
    have ha4 : rho 36920 * (1 + rho 36919) = rho 36917 + rho 36918 := by
      linear_combination r5648
    have ha5 : rho 36921 * (1 - rho 36919) = rho 36916 - rho 36917 - rho 36918 := by
      linear_combination r5649
    have haddx :
        rho 36920 * (1 + 3021 * (rho 36914 * seg34AccX202 rho) * (rho 36913 * seg34AccY202 rho)) =
          rho 36914 * seg34AccX202 rho + rho 36913 * seg34AccY202 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36921 * (1 - 3021 * (rho 36914 * seg34AccX202 rho) * (rho 36913 * seg34AccY202 rho)) =
          (-1) * (rho 36914 * seg34AccX202 rho) - rho 36913 * seg34AccY202 rho +
            (seg34AccY202 rho - seg34AccX202 rho * (-1)) * (rho 36913 + rho 36914) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36921 * (1 - rho 36919) = rho 36916 - rho 36917 - rho 36918 := ha5
        _ = (-1) * rho 36917 - rho 36918 + (seg34AccY202 rho - seg34AccX202 rho * (-1)) * (rho 36913 + rho 36914) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX203 rho = seg34AccX202 rho - Bool.toZMod bit * (seg34AccX202 rho - rho 36920) := by
      have hd : rho 36922 = Bool.toZMod bit * (rho 36920 - seg34AccX202 rho) := by
        rw [← hbit, seg34LadderFlatX202_eq]
        unfold seg34LadderFlatX202
        linear_combination -r5650
      unfold seg34AccX203
      linear_combination hd
    have hsely : seg34AccY203 rho = seg34AccY202 rho - Bool.toZMod bit * (seg34AccY202 rho - rho 36921) := by
      have hd : rho 36923 = Bool.toZMod bit * (rho 36921 - seg34AccY202 rho) := by
        rw [← hbit, seg34LadderFlatY202_eq]
        unfold seg34LadderFlatY202
        linear_combination -r5651
      unfold seg34AccY203
      linear_combination hd
    have hd0 : rho 36913 * rho 36914 = rho 36924 := by linear_combination r5652
    have hd1 : rho 36913 * rho 36913 = rho 36925 := by linear_combination r5653
    have hd2 : rho 36914 * rho 36914 = rho 36926 := by linear_combination r5654
    have hd3 : rho 36927 * (rho 36914 * rho 36914 + rho 36913 * rho 36913 * (-1)) = 2 * (rho 36913 * rho 36914) := by
      rw [hd0, hd1, hd2]
      linear_combination r5655
    have hd4 : rho 36928 * (2 - (rho 36914 * rho 36914 + rho 36913 * rho 36913 * (-1))) = rho 36914 * rho 36914 - rho 36913 * rho 36913 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5656
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX202 rho : Seg34.F), (seg34AccY202 rho : Seg34.F)⟩
      ⟨(rho 36913 : Seg34.F), (rho 36914 : Seg34.F)⟩
      ⟨(rho 36920 : Seg34.F), (rho 36921 : Seg34.F)⟩
      ⟨(seg34AccX203 rho : Seg34.F), (seg34AccY203 rho : Seg34.F)⟩
      ⟨(rho 36927 : Seg34.F), (rho 36928 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung202

theorem seg34_rung203 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34195 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX203 rho : Seg34.F), (seg34AccY203 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36927 : Seg34.F), (rho 36928 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX203 rho : Seg34.F), (seg34AccY203 rho : Seg34.F)⟩
        ⟨(rho 36927 : Seg34.F), (rho 36928 : Seg34.F)⟩
        ⟨(seg34AccX204 rho : Seg34.F), (seg34AccY204 rho : Seg34.F)⟩
        ⟨(rho 36941 : Seg34.F), (rho 36942 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart70 at p70
  rcases p70 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5657, r5658, r5659, r5660, r5661, r5662, r5663, r5664, r5665, r5666, r5667, r5668, r5669, r5670, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow5657 Seg34.relationLc1050 Seg34.relationLc1050Part0 Seg34.relationLc1050Part1 Seg34.relationLc1050Part2 Seg34.relationLc1050Part3 Seg34.relationLc1050Part4 Seg34.relationLc1050Part5 Seg34.relationLc1050Part6 Seg34.relationLc1050Part7 Seg34.relationLc1050Part8 Seg34.relationLc1050Part9 Seg34.relationLc1050Part10 Seg34.relationLc1050Part11 Seg34.relationLc1050Part12 at r5657
  unfold Seg34.relationRow5658 at r5658
  unfold Seg34.relationRow5659 Seg34.relationLc1051 Seg34.relationLc1051Part0 Seg34.relationLc1051Part1 Seg34.relationLc1051Part2 Seg34.relationLc1051Part3 Seg34.relationLc1051Part4 Seg34.relationLc1051Part5 Seg34.relationLc1051Part6 at r5659
  unfold Seg34.relationRow5660 Seg34.relationLc1052 Seg34.relationLc1052Part0 Seg34.relationLc1052Part1 Seg34.relationLc1052Part2 Seg34.relationLc1052Part3 Seg34.relationLc1052Part4 Seg34.relationLc1052Part5 Seg34.relationLc1052Part6 at r5660
  unfold Seg34.relationRow5661 at r5661
  unfold Seg34.relationRow5662 at r5662
  unfold Seg34.relationRow5663 at r5663
  unfold Seg34.relationRow5664 Seg34.relationLc1053 Seg34.relationLc1053Part0 Seg34.relationLc1053Part1 Seg34.relationLc1053Part2 Seg34.relationLc1053Part3 Seg34.relationLc1053Part4 Seg34.relationLc1053Part5 Seg34.relationLc1053Part6 at r5664
  unfold Seg34.relationRow5665 Seg34.relationLc1054 Seg34.relationLc1054Part0 Seg34.relationLc1054Part1 Seg34.relationLc1054Part2 Seg34.relationLc1054Part3 Seg34.relationLc1054Part4 Seg34.relationLc1054Part5 Seg34.relationLc1054Part6 at r5665
  unfold Seg34.relationRow5666 at r5666
  unfold Seg34.relationRow5667 at r5667
  unfold Seg34.relationRow5668 at r5668
  unfold Seg34.relationRow5669 at r5669
  unfold Seg34.relationRow5670 at r5670
  have hrung203 (bit : Bool) (hbit : rho 34195 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX203 rho : Seg34.F), (seg34AccY203 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36927 : Seg34.F), (rho 36928 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX203 rho : Seg34.F), (seg34AccY203 rho : Seg34.F)⟩
        ⟨(rho 36927 : Seg34.F), (rho 36928 : Seg34.F)⟩
        ⟨(seg34AccX204 rho : Seg34.F), (seg34AccY204 rho : Seg34.F)⟩
        ⟨(rho 36941 : Seg34.F), (rho 36942 : Seg34.F)⟩ := by
    have hsum : seg34AccX203 rho + seg34AccY203 rho = rho 36929 := by
      rw [seg34LadderFlatX203_eq, seg34LadderFlatY203_eq]
      unfold seg34LadderFlatX203 seg34LadderFlatY203
      linear_combination r5657
    have ha0 : (rho 36927 + rho 36928) * (seg34AccX203 rho + seg34AccY203 rho) = rho 36930 := by
      rw [hsum]
      linear_combination r5658
    have ha1 : rho 36928 * seg34AccX203 rho = rho 36931 := by
      rw [seg34LadderFlatX203_eq]
      unfold seg34LadderFlatX203
      linear_combination r5659
    have ha2 : rho 36927 * seg34AccY203 rho = rho 36932 := by
      rw [seg34LadderFlatY203_eq]
      unfold seg34LadderFlatY203
      linear_combination r5660
    have ha3 : 3021 * rho 36931 * rho 36932 = rho 36933 := by
      linear_combination r5661
    have ha4 : rho 36934 * (1 + rho 36933) = rho 36931 + rho 36932 := by
      linear_combination r5662
    have ha5 : rho 36935 * (1 - rho 36933) = rho 36930 - rho 36931 - rho 36932 := by
      linear_combination r5663
    have haddx :
        rho 36934 * (1 + 3021 * (rho 36928 * seg34AccX203 rho) * (rho 36927 * seg34AccY203 rho)) =
          rho 36928 * seg34AccX203 rho + rho 36927 * seg34AccY203 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36935 * (1 - 3021 * (rho 36928 * seg34AccX203 rho) * (rho 36927 * seg34AccY203 rho)) =
          (-1) * (rho 36928 * seg34AccX203 rho) - rho 36927 * seg34AccY203 rho +
            (seg34AccY203 rho - seg34AccX203 rho * (-1)) * (rho 36927 + rho 36928) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36935 * (1 - rho 36933) = rho 36930 - rho 36931 - rho 36932 := ha5
        _ = (-1) * rho 36931 - rho 36932 + (seg34AccY203 rho - seg34AccX203 rho * (-1)) * (rho 36927 + rho 36928) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX204 rho = seg34AccX203 rho - Bool.toZMod bit * (seg34AccX203 rho - rho 36934) := by
      have hd : rho 36936 = Bool.toZMod bit * (rho 36934 - seg34AccX203 rho) := by
        rw [← hbit, seg34LadderFlatX203_eq]
        unfold seg34LadderFlatX203
        linear_combination -r5664
      unfold seg34AccX204
      linear_combination hd
    have hsely : seg34AccY204 rho = seg34AccY203 rho - Bool.toZMod bit * (seg34AccY203 rho - rho 36935) := by
      have hd : rho 36937 = Bool.toZMod bit * (rho 36935 - seg34AccY203 rho) := by
        rw [← hbit, seg34LadderFlatY203_eq]
        unfold seg34LadderFlatY203
        linear_combination -r5665
      unfold seg34AccY204
      linear_combination hd
    have hd0 : rho 36927 * rho 36928 = rho 36938 := by linear_combination r5666
    have hd1 : rho 36927 * rho 36927 = rho 36939 := by linear_combination r5667
    have hd2 : rho 36928 * rho 36928 = rho 36940 := by linear_combination r5668
    have hd3 : rho 36941 * (rho 36928 * rho 36928 + rho 36927 * rho 36927 * (-1)) = 2 * (rho 36927 * rho 36928) := by
      rw [hd0, hd1, hd2]
      linear_combination r5669
    have hd4 : rho 36942 * (2 - (rho 36928 * rho 36928 + rho 36927 * rho 36927 * (-1))) = rho 36928 * rho 36928 - rho 36927 * rho 36927 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5670
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX203 rho : Seg34.F), (seg34AccY203 rho : Seg34.F)⟩
      ⟨(rho 36927 : Seg34.F), (rho 36928 : Seg34.F)⟩
      ⟨(rho 36934 : Seg34.F), (rho 36935 : Seg34.F)⟩
      ⟨(seg34AccX204 rho : Seg34.F), (seg34AccY204 rho : Seg34.F)⟩
      ⟨(rho 36941 : Seg34.F), (rho 36942 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung203

theorem seg34_rung204 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34196 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX204 rho : Seg34.F), (seg34AccY204 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36941 : Seg34.F), (rho 36942 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX204 rho : Seg34.F), (seg34AccY204 rho : Seg34.F)⟩
        ⟨(rho 36941 : Seg34.F), (rho 36942 : Seg34.F)⟩
        ⟨(seg34AccX205 rho : Seg34.F), (seg34AccY205 rho : Seg34.F)⟩
        ⟨(rho 36955 : Seg34.F), (rho 36956 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart70 at p70
  rcases p70 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5671, r5672, r5673, r5674, r5675, r5676, r5677, r5678, r5679⟩
  unfold Seg34.relationPart71 at p71
  rcases p71 with ⟨r5680, r5681, r5682, r5683, r5684, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow5671 Seg34.relationLc1055 Seg34.relationLc1055Part0 Seg34.relationLc1055Part1 Seg34.relationLc1055Part2 Seg34.relationLc1055Part3 Seg34.relationLc1055Part4 Seg34.relationLc1055Part5 Seg34.relationLc1055Part6 Seg34.relationLc1055Part7 Seg34.relationLc1055Part8 Seg34.relationLc1055Part9 Seg34.relationLc1055Part10 Seg34.relationLc1055Part11 Seg34.relationLc1055Part12 at r5671
  unfold Seg34.relationRow5672 at r5672
  unfold Seg34.relationRow5673 Seg34.relationLc1056 Seg34.relationLc1056Part0 Seg34.relationLc1056Part1 Seg34.relationLc1056Part2 Seg34.relationLc1056Part3 Seg34.relationLc1056Part4 Seg34.relationLc1056Part5 Seg34.relationLc1056Part6 at r5673
  unfold Seg34.relationRow5674 Seg34.relationLc1057 Seg34.relationLc1057Part0 Seg34.relationLc1057Part1 Seg34.relationLc1057Part2 Seg34.relationLc1057Part3 Seg34.relationLc1057Part4 Seg34.relationLc1057Part5 Seg34.relationLc1057Part6 at r5674
  unfold Seg34.relationRow5675 at r5675
  unfold Seg34.relationRow5676 at r5676
  unfold Seg34.relationRow5677 at r5677
  unfold Seg34.relationRow5678 Seg34.relationLc1058 Seg34.relationLc1058Part0 Seg34.relationLc1058Part1 Seg34.relationLc1058Part2 Seg34.relationLc1058Part3 Seg34.relationLc1058Part4 Seg34.relationLc1058Part5 Seg34.relationLc1058Part6 at r5678
  unfold Seg34.relationRow5679 Seg34.relationLc1059 Seg34.relationLc1059Part0 Seg34.relationLc1059Part1 Seg34.relationLc1059Part2 Seg34.relationLc1059Part3 Seg34.relationLc1059Part4 Seg34.relationLc1059Part5 Seg34.relationLc1059Part6 at r5679
  unfold Seg34.relationRow5680 at r5680
  unfold Seg34.relationRow5681 at r5681
  unfold Seg34.relationRow5682 at r5682
  unfold Seg34.relationRow5683 at r5683
  unfold Seg34.relationRow5684 at r5684
  have hrung204 (bit : Bool) (hbit : rho 34196 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX204 rho : Seg34.F), (seg34AccY204 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36941 : Seg34.F), (rho 36942 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX204 rho : Seg34.F), (seg34AccY204 rho : Seg34.F)⟩
        ⟨(rho 36941 : Seg34.F), (rho 36942 : Seg34.F)⟩
        ⟨(seg34AccX205 rho : Seg34.F), (seg34AccY205 rho : Seg34.F)⟩
        ⟨(rho 36955 : Seg34.F), (rho 36956 : Seg34.F)⟩ := by
    have hsum : seg34AccX204 rho + seg34AccY204 rho = rho 36943 := by
      rw [seg34LadderFlatX204_eq, seg34LadderFlatY204_eq]
      unfold seg34LadderFlatX204 seg34LadderFlatY204
      linear_combination r5671
    have ha0 : (rho 36941 + rho 36942) * (seg34AccX204 rho + seg34AccY204 rho) = rho 36944 := by
      rw [hsum]
      linear_combination r5672
    have ha1 : rho 36942 * seg34AccX204 rho = rho 36945 := by
      rw [seg34LadderFlatX204_eq]
      unfold seg34LadderFlatX204
      linear_combination r5673
    have ha2 : rho 36941 * seg34AccY204 rho = rho 36946 := by
      rw [seg34LadderFlatY204_eq]
      unfold seg34LadderFlatY204
      linear_combination r5674
    have ha3 : 3021 * rho 36945 * rho 36946 = rho 36947 := by
      linear_combination r5675
    have ha4 : rho 36948 * (1 + rho 36947) = rho 36945 + rho 36946 := by
      linear_combination r5676
    have ha5 : rho 36949 * (1 - rho 36947) = rho 36944 - rho 36945 - rho 36946 := by
      linear_combination r5677
    have haddx :
        rho 36948 * (1 + 3021 * (rho 36942 * seg34AccX204 rho) * (rho 36941 * seg34AccY204 rho)) =
          rho 36942 * seg34AccX204 rho + rho 36941 * seg34AccY204 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36949 * (1 - 3021 * (rho 36942 * seg34AccX204 rho) * (rho 36941 * seg34AccY204 rho)) =
          (-1) * (rho 36942 * seg34AccX204 rho) - rho 36941 * seg34AccY204 rho +
            (seg34AccY204 rho - seg34AccX204 rho * (-1)) * (rho 36941 + rho 36942) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36949 * (1 - rho 36947) = rho 36944 - rho 36945 - rho 36946 := ha5
        _ = (-1) * rho 36945 - rho 36946 + (seg34AccY204 rho - seg34AccX204 rho * (-1)) * (rho 36941 + rho 36942) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX205 rho = seg34AccX204 rho - Bool.toZMod bit * (seg34AccX204 rho - rho 36948) := by
      have hd : rho 36950 = Bool.toZMod bit * (rho 36948 - seg34AccX204 rho) := by
        rw [← hbit, seg34LadderFlatX204_eq]
        unfold seg34LadderFlatX204
        linear_combination -r5678
      unfold seg34AccX205
      linear_combination hd
    have hsely : seg34AccY205 rho = seg34AccY204 rho - Bool.toZMod bit * (seg34AccY204 rho - rho 36949) := by
      have hd : rho 36951 = Bool.toZMod bit * (rho 36949 - seg34AccY204 rho) := by
        rw [← hbit, seg34LadderFlatY204_eq]
        unfold seg34LadderFlatY204
        linear_combination -r5679
      unfold seg34AccY205
      linear_combination hd
    have hd0 : rho 36941 * rho 36942 = rho 36952 := by linear_combination r5680
    have hd1 : rho 36941 * rho 36941 = rho 36953 := by linear_combination r5681
    have hd2 : rho 36942 * rho 36942 = rho 36954 := by linear_combination r5682
    have hd3 : rho 36955 * (rho 36942 * rho 36942 + rho 36941 * rho 36941 * (-1)) = 2 * (rho 36941 * rho 36942) := by
      rw [hd0, hd1, hd2]
      linear_combination r5683
    have hd4 : rho 36956 * (2 - (rho 36942 * rho 36942 + rho 36941 * rho 36941 * (-1))) = rho 36942 * rho 36942 - rho 36941 * rho 36941 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5684
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX204 rho : Seg34.F), (seg34AccY204 rho : Seg34.F)⟩
      ⟨(rho 36941 : Seg34.F), (rho 36942 : Seg34.F)⟩
      ⟨(rho 36948 : Seg34.F), (rho 36949 : Seg34.F)⟩
      ⟨(seg34AccX205 rho : Seg34.F), (seg34AccY205 rho : Seg34.F)⟩
      ⟨(rho 36955 : Seg34.F), (rho 36956 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung204

theorem seg34_rung205 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34197 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX205 rho : Seg34.F), (seg34AccY205 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36955 : Seg34.F), (rho 36956 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX205 rho : Seg34.F), (seg34AccY205 rho : Seg34.F)⟩
        ⟨(rho 36955 : Seg34.F), (rho 36956 : Seg34.F)⟩
        ⟨(seg34AccX206 rho : Seg34.F), (seg34AccY206 rho : Seg34.F)⟩
        ⟨(rho 36969 : Seg34.F), (rho 36970 : Seg34.F)⟩ := by
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
  rcases p71 with ⟨_, _, _, _, _, r5685, r5686, r5687, r5688, r5689, r5690, r5691, r5692, r5693, r5694, r5695, r5696, r5697, r5698, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow5685 Seg34.relationLc1060 Seg34.relationLc1060Part0 Seg34.relationLc1060Part1 Seg34.relationLc1060Part2 Seg34.relationLc1060Part3 Seg34.relationLc1060Part4 Seg34.relationLc1060Part5 Seg34.relationLc1060Part6 Seg34.relationLc1060Part7 Seg34.relationLc1060Part8 Seg34.relationLc1060Part9 Seg34.relationLc1060Part10 Seg34.relationLc1060Part11 Seg34.relationLc1060Part12 at r5685
  unfold Seg34.relationRow5686 at r5686
  unfold Seg34.relationRow5687 Seg34.relationLc1061 Seg34.relationLc1061Part0 Seg34.relationLc1061Part1 Seg34.relationLc1061Part2 Seg34.relationLc1061Part3 Seg34.relationLc1061Part4 Seg34.relationLc1061Part5 Seg34.relationLc1061Part6 at r5687
  unfold Seg34.relationRow5688 Seg34.relationLc1062 Seg34.relationLc1062Part0 Seg34.relationLc1062Part1 Seg34.relationLc1062Part2 Seg34.relationLc1062Part3 Seg34.relationLc1062Part4 Seg34.relationLc1062Part5 Seg34.relationLc1062Part6 at r5688
  unfold Seg34.relationRow5689 at r5689
  unfold Seg34.relationRow5690 at r5690
  unfold Seg34.relationRow5691 at r5691
  unfold Seg34.relationRow5692 Seg34.relationLc1063 Seg34.relationLc1063Part0 Seg34.relationLc1063Part1 Seg34.relationLc1063Part2 Seg34.relationLc1063Part3 Seg34.relationLc1063Part4 Seg34.relationLc1063Part5 Seg34.relationLc1063Part6 at r5692
  unfold Seg34.relationRow5693 Seg34.relationLc1064 Seg34.relationLc1064Part0 Seg34.relationLc1064Part1 Seg34.relationLc1064Part2 Seg34.relationLc1064Part3 Seg34.relationLc1064Part4 Seg34.relationLc1064Part5 Seg34.relationLc1064Part6 at r5693
  unfold Seg34.relationRow5694 at r5694
  unfold Seg34.relationRow5695 at r5695
  unfold Seg34.relationRow5696 at r5696
  unfold Seg34.relationRow5697 at r5697
  unfold Seg34.relationRow5698 at r5698
  have hrung205 (bit : Bool) (hbit : rho 34197 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX205 rho : Seg34.F), (seg34AccY205 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36955 : Seg34.F), (rho 36956 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX205 rho : Seg34.F), (seg34AccY205 rho : Seg34.F)⟩
        ⟨(rho 36955 : Seg34.F), (rho 36956 : Seg34.F)⟩
        ⟨(seg34AccX206 rho : Seg34.F), (seg34AccY206 rho : Seg34.F)⟩
        ⟨(rho 36969 : Seg34.F), (rho 36970 : Seg34.F)⟩ := by
    have hsum : seg34AccX205 rho + seg34AccY205 rho = rho 36957 := by
      rw [seg34LadderFlatX205_eq, seg34LadderFlatY205_eq]
      unfold seg34LadderFlatX205 seg34LadderFlatY205
      linear_combination r5685
    have ha0 : (rho 36955 + rho 36956) * (seg34AccX205 rho + seg34AccY205 rho) = rho 36958 := by
      rw [hsum]
      linear_combination r5686
    have ha1 : rho 36956 * seg34AccX205 rho = rho 36959 := by
      rw [seg34LadderFlatX205_eq]
      unfold seg34LadderFlatX205
      linear_combination r5687
    have ha2 : rho 36955 * seg34AccY205 rho = rho 36960 := by
      rw [seg34LadderFlatY205_eq]
      unfold seg34LadderFlatY205
      linear_combination r5688
    have ha3 : 3021 * rho 36959 * rho 36960 = rho 36961 := by
      linear_combination r5689
    have ha4 : rho 36962 * (1 + rho 36961) = rho 36959 + rho 36960 := by
      linear_combination r5690
    have ha5 : rho 36963 * (1 - rho 36961) = rho 36958 - rho 36959 - rho 36960 := by
      linear_combination r5691
    have haddx :
        rho 36962 * (1 + 3021 * (rho 36956 * seg34AccX205 rho) * (rho 36955 * seg34AccY205 rho)) =
          rho 36956 * seg34AccX205 rho + rho 36955 * seg34AccY205 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36963 * (1 - 3021 * (rho 36956 * seg34AccX205 rho) * (rho 36955 * seg34AccY205 rho)) =
          (-1) * (rho 36956 * seg34AccX205 rho) - rho 36955 * seg34AccY205 rho +
            (seg34AccY205 rho - seg34AccX205 rho * (-1)) * (rho 36955 + rho 36956) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36963 * (1 - rho 36961) = rho 36958 - rho 36959 - rho 36960 := ha5
        _ = (-1) * rho 36959 - rho 36960 + (seg34AccY205 rho - seg34AccX205 rho * (-1)) * (rho 36955 + rho 36956) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX206 rho = seg34AccX205 rho - Bool.toZMod bit * (seg34AccX205 rho - rho 36962) := by
      have hd : rho 36964 = Bool.toZMod bit * (rho 36962 - seg34AccX205 rho) := by
        rw [← hbit, seg34LadderFlatX205_eq]
        unfold seg34LadderFlatX205
        linear_combination -r5692
      unfold seg34AccX206
      linear_combination hd
    have hsely : seg34AccY206 rho = seg34AccY205 rho - Bool.toZMod bit * (seg34AccY205 rho - rho 36963) := by
      have hd : rho 36965 = Bool.toZMod bit * (rho 36963 - seg34AccY205 rho) := by
        rw [← hbit, seg34LadderFlatY205_eq]
        unfold seg34LadderFlatY205
        linear_combination -r5693
      unfold seg34AccY206
      linear_combination hd
    have hd0 : rho 36955 * rho 36956 = rho 36966 := by linear_combination r5694
    have hd1 : rho 36955 * rho 36955 = rho 36967 := by linear_combination r5695
    have hd2 : rho 36956 * rho 36956 = rho 36968 := by linear_combination r5696
    have hd3 : rho 36969 * (rho 36956 * rho 36956 + rho 36955 * rho 36955 * (-1)) = 2 * (rho 36955 * rho 36956) := by
      rw [hd0, hd1, hd2]
      linear_combination r5697
    have hd4 : rho 36970 * (2 - (rho 36956 * rho 36956 + rho 36955 * rho 36955 * (-1))) = rho 36956 * rho 36956 - rho 36955 * rho 36955 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5698
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX205 rho : Seg34.F), (seg34AccY205 rho : Seg34.F)⟩
      ⟨(rho 36955 : Seg34.F), (rho 36956 : Seg34.F)⟩
      ⟨(rho 36962 : Seg34.F), (rho 36963 : Seg34.F)⟩
      ⟨(seg34AccX206 rho : Seg34.F), (seg34AccY206 rho : Seg34.F)⟩
      ⟨(rho 36969 : Seg34.F), (rho 36970 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung205

theorem seg34_rung206 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34198 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX206 rho : Seg34.F), (seg34AccY206 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36969 : Seg34.F), (rho 36970 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX206 rho : Seg34.F), (seg34AccY206 rho : Seg34.F)⟩
        ⟨(rho 36969 : Seg34.F), (rho 36970 : Seg34.F)⟩
        ⟨(seg34AccX207 rho : Seg34.F), (seg34AccY207 rho : Seg34.F)⟩
        ⟨(rho 36983 : Seg34.F), (rho 36984 : Seg34.F)⟩ := by
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
  rcases p71 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5699, r5700, r5701, r5702, r5703, r5704, r5705, r5706, r5707, r5708, r5709, r5710, r5711, r5712, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow5699 Seg34.relationLc1065 Seg34.relationLc1065Part0 Seg34.relationLc1065Part1 Seg34.relationLc1065Part2 Seg34.relationLc1065Part3 Seg34.relationLc1065Part4 Seg34.relationLc1065Part5 Seg34.relationLc1065Part6 Seg34.relationLc1065Part7 Seg34.relationLc1065Part8 Seg34.relationLc1065Part9 Seg34.relationLc1065Part10 Seg34.relationLc1065Part11 Seg34.relationLc1065Part12 at r5699
  unfold Seg34.relationRow5700 at r5700
  unfold Seg34.relationRow5701 Seg34.relationLc1066 Seg34.relationLc1066Part0 Seg34.relationLc1066Part1 Seg34.relationLc1066Part2 Seg34.relationLc1066Part3 Seg34.relationLc1066Part4 Seg34.relationLc1066Part5 Seg34.relationLc1066Part6 at r5701
  unfold Seg34.relationRow5702 Seg34.relationLc1067 Seg34.relationLc1067Part0 Seg34.relationLc1067Part1 Seg34.relationLc1067Part2 Seg34.relationLc1067Part3 Seg34.relationLc1067Part4 Seg34.relationLc1067Part5 Seg34.relationLc1067Part6 at r5702
  unfold Seg34.relationRow5703 at r5703
  unfold Seg34.relationRow5704 at r5704
  unfold Seg34.relationRow5705 at r5705
  unfold Seg34.relationRow5706 Seg34.relationLc1068 Seg34.relationLc1068Part0 Seg34.relationLc1068Part1 Seg34.relationLc1068Part2 Seg34.relationLc1068Part3 Seg34.relationLc1068Part4 Seg34.relationLc1068Part5 Seg34.relationLc1068Part6 at r5706
  unfold Seg34.relationRow5707 Seg34.relationLc1069 Seg34.relationLc1069Part0 Seg34.relationLc1069Part1 Seg34.relationLc1069Part2 Seg34.relationLc1069Part3 Seg34.relationLc1069Part4 Seg34.relationLc1069Part5 Seg34.relationLc1069Part6 at r5707
  unfold Seg34.relationRow5708 at r5708
  unfold Seg34.relationRow5709 at r5709
  unfold Seg34.relationRow5710 at r5710
  unfold Seg34.relationRow5711 at r5711
  unfold Seg34.relationRow5712 at r5712
  have hrung206 (bit : Bool) (hbit : rho 34198 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX206 rho : Seg34.F), (seg34AccY206 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36969 : Seg34.F), (rho 36970 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX206 rho : Seg34.F), (seg34AccY206 rho : Seg34.F)⟩
        ⟨(rho 36969 : Seg34.F), (rho 36970 : Seg34.F)⟩
        ⟨(seg34AccX207 rho : Seg34.F), (seg34AccY207 rho : Seg34.F)⟩
        ⟨(rho 36983 : Seg34.F), (rho 36984 : Seg34.F)⟩ := by
    have hsum : seg34AccX206 rho + seg34AccY206 rho = rho 36971 := by
      rw [seg34LadderFlatX206_eq, seg34LadderFlatY206_eq]
      unfold seg34LadderFlatX206 seg34LadderFlatY206
      linear_combination r5699
    have ha0 : (rho 36969 + rho 36970) * (seg34AccX206 rho + seg34AccY206 rho) = rho 36972 := by
      rw [hsum]
      linear_combination r5700
    have ha1 : rho 36970 * seg34AccX206 rho = rho 36973 := by
      rw [seg34LadderFlatX206_eq]
      unfold seg34LadderFlatX206
      linear_combination r5701
    have ha2 : rho 36969 * seg34AccY206 rho = rho 36974 := by
      rw [seg34LadderFlatY206_eq]
      unfold seg34LadderFlatY206
      linear_combination r5702
    have ha3 : 3021 * rho 36973 * rho 36974 = rho 36975 := by
      linear_combination r5703
    have ha4 : rho 36976 * (1 + rho 36975) = rho 36973 + rho 36974 := by
      linear_combination r5704
    have ha5 : rho 36977 * (1 - rho 36975) = rho 36972 - rho 36973 - rho 36974 := by
      linear_combination r5705
    have haddx :
        rho 36976 * (1 + 3021 * (rho 36970 * seg34AccX206 rho) * (rho 36969 * seg34AccY206 rho)) =
          rho 36970 * seg34AccX206 rho + rho 36969 * seg34AccY206 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36977 * (1 - 3021 * (rho 36970 * seg34AccX206 rho) * (rho 36969 * seg34AccY206 rho)) =
          (-1) * (rho 36970 * seg34AccX206 rho) - rho 36969 * seg34AccY206 rho +
            (seg34AccY206 rho - seg34AccX206 rho * (-1)) * (rho 36969 + rho 36970) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36977 * (1 - rho 36975) = rho 36972 - rho 36973 - rho 36974 := ha5
        _ = (-1) * rho 36973 - rho 36974 + (seg34AccY206 rho - seg34AccX206 rho * (-1)) * (rho 36969 + rho 36970) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX207 rho = seg34AccX206 rho - Bool.toZMod bit * (seg34AccX206 rho - rho 36976) := by
      have hd : rho 36978 = Bool.toZMod bit * (rho 36976 - seg34AccX206 rho) := by
        rw [← hbit, seg34LadderFlatX206_eq]
        unfold seg34LadderFlatX206
        linear_combination -r5706
      unfold seg34AccX207
      linear_combination hd
    have hsely : seg34AccY207 rho = seg34AccY206 rho - Bool.toZMod bit * (seg34AccY206 rho - rho 36977) := by
      have hd : rho 36979 = Bool.toZMod bit * (rho 36977 - seg34AccY206 rho) := by
        rw [← hbit, seg34LadderFlatY206_eq]
        unfold seg34LadderFlatY206
        linear_combination -r5707
      unfold seg34AccY207
      linear_combination hd
    have hd0 : rho 36969 * rho 36970 = rho 36980 := by linear_combination r5708
    have hd1 : rho 36969 * rho 36969 = rho 36981 := by linear_combination r5709
    have hd2 : rho 36970 * rho 36970 = rho 36982 := by linear_combination r5710
    have hd3 : rho 36983 * (rho 36970 * rho 36970 + rho 36969 * rho 36969 * (-1)) = 2 * (rho 36969 * rho 36970) := by
      rw [hd0, hd1, hd2]
      linear_combination r5711
    have hd4 : rho 36984 * (2 - (rho 36970 * rho 36970 + rho 36969 * rho 36969 * (-1))) = rho 36970 * rho 36970 - rho 36969 * rho 36969 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5712
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX206 rho : Seg34.F), (seg34AccY206 rho : Seg34.F)⟩
      ⟨(rho 36969 : Seg34.F), (rho 36970 : Seg34.F)⟩
      ⟨(rho 36976 : Seg34.F), (rho 36977 : Seg34.F)⟩
      ⟨(seg34AccX207 rho : Seg34.F), (seg34AccY207 rho : Seg34.F)⟩
      ⟨(rho 36983 : Seg34.F), (rho 36984 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung206

theorem seg34_rung207 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34199 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX207 rho : Seg34.F), (seg34AccY207 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36983 : Seg34.F), (rho 36984 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX207 rho : Seg34.F), (seg34AccY207 rho : Seg34.F)⟩
        ⟨(rho 36983 : Seg34.F), (rho 36984 : Seg34.F)⟩
        ⟨(seg34AccX208 rho : Seg34.F), (seg34AccY208 rho : Seg34.F)⟩
        ⟨(rho 36997 : Seg34.F), (rho 36998 : Seg34.F)⟩ := by
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
  rcases p71 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5713, r5714, r5715, r5716, r5717, r5718, r5719, r5720, r5721, r5722, r5723, r5724, r5725, r5726, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow5713 Seg34.relationLc1070 Seg34.relationLc1070Part0 Seg34.relationLc1070Part1 Seg34.relationLc1070Part2 Seg34.relationLc1070Part3 Seg34.relationLc1070Part4 Seg34.relationLc1070Part5 Seg34.relationLc1070Part6 Seg34.relationLc1070Part7 Seg34.relationLc1070Part8 Seg34.relationLc1070Part9 Seg34.relationLc1070Part10 Seg34.relationLc1070Part11 Seg34.relationLc1070Part12 at r5713
  unfold Seg34.relationRow5714 at r5714
  unfold Seg34.relationRow5715 Seg34.relationLc1071 Seg34.relationLc1071Part0 Seg34.relationLc1071Part1 Seg34.relationLc1071Part2 Seg34.relationLc1071Part3 Seg34.relationLc1071Part4 Seg34.relationLc1071Part5 Seg34.relationLc1071Part6 at r5715
  unfold Seg34.relationRow5716 Seg34.relationLc1072 Seg34.relationLc1072Part0 Seg34.relationLc1072Part1 Seg34.relationLc1072Part2 Seg34.relationLc1072Part3 Seg34.relationLc1072Part4 Seg34.relationLc1072Part5 Seg34.relationLc1072Part6 at r5716
  unfold Seg34.relationRow5717 at r5717
  unfold Seg34.relationRow5718 at r5718
  unfold Seg34.relationRow5719 at r5719
  unfold Seg34.relationRow5720 Seg34.relationLc1073 Seg34.relationLc1073Part0 Seg34.relationLc1073Part1 Seg34.relationLc1073Part2 Seg34.relationLc1073Part3 Seg34.relationLc1073Part4 Seg34.relationLc1073Part5 Seg34.relationLc1073Part6 at r5720
  unfold Seg34.relationRow5721 Seg34.relationLc1074 Seg34.relationLc1074Part0 Seg34.relationLc1074Part1 Seg34.relationLc1074Part2 Seg34.relationLc1074Part3 Seg34.relationLc1074Part4 Seg34.relationLc1074Part5 Seg34.relationLc1074Part6 at r5721
  unfold Seg34.relationRow5722 at r5722
  unfold Seg34.relationRow5723 at r5723
  unfold Seg34.relationRow5724 at r5724
  unfold Seg34.relationRow5725 at r5725
  unfold Seg34.relationRow5726 at r5726
  have hrung207 (bit : Bool) (hbit : rho 34199 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX207 rho : Seg34.F), (seg34AccY207 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36983 : Seg34.F), (rho 36984 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX207 rho : Seg34.F), (seg34AccY207 rho : Seg34.F)⟩
        ⟨(rho 36983 : Seg34.F), (rho 36984 : Seg34.F)⟩
        ⟨(seg34AccX208 rho : Seg34.F), (seg34AccY208 rho : Seg34.F)⟩
        ⟨(rho 36997 : Seg34.F), (rho 36998 : Seg34.F)⟩ := by
    have hsum : seg34AccX207 rho + seg34AccY207 rho = rho 36985 := by
      rw [seg34LadderFlatX207_eq, seg34LadderFlatY207_eq]
      unfold seg34LadderFlatX207 seg34LadderFlatY207
      linear_combination r5713
    have ha0 : (rho 36983 + rho 36984) * (seg34AccX207 rho + seg34AccY207 rho) = rho 36986 := by
      rw [hsum]
      linear_combination r5714
    have ha1 : rho 36984 * seg34AccX207 rho = rho 36987 := by
      rw [seg34LadderFlatX207_eq]
      unfold seg34LadderFlatX207
      linear_combination r5715
    have ha2 : rho 36983 * seg34AccY207 rho = rho 36988 := by
      rw [seg34LadderFlatY207_eq]
      unfold seg34LadderFlatY207
      linear_combination r5716
    have ha3 : 3021 * rho 36987 * rho 36988 = rho 36989 := by
      linear_combination r5717
    have ha4 : rho 36990 * (1 + rho 36989) = rho 36987 + rho 36988 := by
      linear_combination r5718
    have ha5 : rho 36991 * (1 - rho 36989) = rho 36986 - rho 36987 - rho 36988 := by
      linear_combination r5719
    have haddx :
        rho 36990 * (1 + 3021 * (rho 36984 * seg34AccX207 rho) * (rho 36983 * seg34AccY207 rho)) =
          rho 36984 * seg34AccX207 rho + rho 36983 * seg34AccY207 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36991 * (1 - 3021 * (rho 36984 * seg34AccX207 rho) * (rho 36983 * seg34AccY207 rho)) =
          (-1) * (rho 36984 * seg34AccX207 rho) - rho 36983 * seg34AccY207 rho +
            (seg34AccY207 rho - seg34AccX207 rho * (-1)) * (rho 36983 + rho 36984) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36991 * (1 - rho 36989) = rho 36986 - rho 36987 - rho 36988 := ha5
        _ = (-1) * rho 36987 - rho 36988 + (seg34AccY207 rho - seg34AccX207 rho * (-1)) * (rho 36983 + rho 36984) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX208 rho = seg34AccX207 rho - Bool.toZMod bit * (seg34AccX207 rho - rho 36990) := by
      have hd : rho 36992 = Bool.toZMod bit * (rho 36990 - seg34AccX207 rho) := by
        rw [← hbit, seg34LadderFlatX207_eq]
        unfold seg34LadderFlatX207
        linear_combination -r5720
      unfold seg34AccX208
      linear_combination hd
    have hsely : seg34AccY208 rho = seg34AccY207 rho - Bool.toZMod bit * (seg34AccY207 rho - rho 36991) := by
      have hd : rho 36993 = Bool.toZMod bit * (rho 36991 - seg34AccY207 rho) := by
        rw [← hbit, seg34LadderFlatY207_eq]
        unfold seg34LadderFlatY207
        linear_combination -r5721
      unfold seg34AccY208
      linear_combination hd
    have hd0 : rho 36983 * rho 36984 = rho 36994 := by linear_combination r5722
    have hd1 : rho 36983 * rho 36983 = rho 36995 := by linear_combination r5723
    have hd2 : rho 36984 * rho 36984 = rho 36996 := by linear_combination r5724
    have hd3 : rho 36997 * (rho 36984 * rho 36984 + rho 36983 * rho 36983 * (-1)) = 2 * (rho 36983 * rho 36984) := by
      rw [hd0, hd1, hd2]
      linear_combination r5725
    have hd4 : rho 36998 * (2 - (rho 36984 * rho 36984 + rho 36983 * rho 36983 * (-1))) = rho 36984 * rho 36984 - rho 36983 * rho 36983 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5726
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX207 rho : Seg34.F), (seg34AccY207 rho : Seg34.F)⟩
      ⟨(rho 36983 : Seg34.F), (rho 36984 : Seg34.F)⟩
      ⟨(rho 36990 : Seg34.F), (rho 36991 : Seg34.F)⟩
      ⟨(seg34AccX208 rho : Seg34.F), (seg34AccY208 rho : Seg34.F)⟩
      ⟨(rho 36997 : Seg34.F), (rho 36998 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung207

theorem seg34_rung208 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34200 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX208 rho : Seg34.F), (seg34AccY208 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36997 : Seg34.F), (rho 36998 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX208 rho : Seg34.F), (seg34AccY208 rho : Seg34.F)⟩
        ⟨(rho 36997 : Seg34.F), (rho 36998 : Seg34.F)⟩
        ⟨(seg34AccX209 rho : Seg34.F), (seg34AccY209 rho : Seg34.F)⟩
        ⟨(rho 37011 : Seg34.F), (rho 37012 : Seg34.F)⟩ := by
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
  rcases p71 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5727, r5728, r5729, r5730, r5731, r5732, r5733, r5734, r5735, r5736, r5737, r5738, r5739, r5740, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow5727 Seg34.relationLc1075 Seg34.relationLc1075Part0 Seg34.relationLc1075Part1 Seg34.relationLc1075Part2 Seg34.relationLc1075Part3 Seg34.relationLc1075Part4 Seg34.relationLc1075Part5 Seg34.relationLc1075Part6 Seg34.relationLc1075Part7 Seg34.relationLc1075Part8 Seg34.relationLc1075Part9 Seg34.relationLc1075Part10 Seg34.relationLc1075Part11 Seg34.relationLc1075Part12 Seg34.relationLc1075Part13 at r5727
  unfold Seg34.relationRow5728 at r5728
  unfold Seg34.relationRow5729 Seg34.relationLc1076 Seg34.relationLc1076Part0 Seg34.relationLc1076Part1 Seg34.relationLc1076Part2 Seg34.relationLc1076Part3 Seg34.relationLc1076Part4 Seg34.relationLc1076Part5 Seg34.relationLc1076Part6 at r5729
  unfold Seg34.relationRow5730 Seg34.relationLc1077 Seg34.relationLc1077Part0 Seg34.relationLc1077Part1 Seg34.relationLc1077Part2 Seg34.relationLc1077Part3 Seg34.relationLc1077Part4 Seg34.relationLc1077Part5 Seg34.relationLc1077Part6 at r5730
  unfold Seg34.relationRow5731 at r5731
  unfold Seg34.relationRow5732 at r5732
  unfold Seg34.relationRow5733 at r5733
  unfold Seg34.relationRow5734 Seg34.relationLc1078 Seg34.relationLc1078Part0 Seg34.relationLc1078Part1 Seg34.relationLc1078Part2 Seg34.relationLc1078Part3 Seg34.relationLc1078Part4 Seg34.relationLc1078Part5 Seg34.relationLc1078Part6 at r5734
  unfold Seg34.relationRow5735 Seg34.relationLc1079 Seg34.relationLc1079Part0 Seg34.relationLc1079Part1 Seg34.relationLc1079Part2 Seg34.relationLc1079Part3 Seg34.relationLc1079Part4 Seg34.relationLc1079Part5 Seg34.relationLc1079Part6 at r5735
  unfold Seg34.relationRow5736 at r5736
  unfold Seg34.relationRow5737 at r5737
  unfold Seg34.relationRow5738 at r5738
  unfold Seg34.relationRow5739 at r5739
  unfold Seg34.relationRow5740 at r5740
  have hrung208 (bit : Bool) (hbit : rho 34200 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX208 rho : Seg34.F), (seg34AccY208 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36997 : Seg34.F), (rho 36998 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX208 rho : Seg34.F), (seg34AccY208 rho : Seg34.F)⟩
        ⟨(rho 36997 : Seg34.F), (rho 36998 : Seg34.F)⟩
        ⟨(seg34AccX209 rho : Seg34.F), (seg34AccY209 rho : Seg34.F)⟩
        ⟨(rho 37011 : Seg34.F), (rho 37012 : Seg34.F)⟩ := by
    have hsum : seg34AccX208 rho + seg34AccY208 rho = rho 36999 := by
      rw [seg34LadderFlatX208_eq, seg34LadderFlatY208_eq]
      unfold seg34LadderFlatX208 seg34LadderFlatY208
      linear_combination r5727
    have ha0 : (rho 36997 + rho 36998) * (seg34AccX208 rho + seg34AccY208 rho) = rho 37000 := by
      rw [hsum]
      linear_combination r5728
    have ha1 : rho 36998 * seg34AccX208 rho = rho 37001 := by
      rw [seg34LadderFlatX208_eq]
      unfold seg34LadderFlatX208
      linear_combination r5729
    have ha2 : rho 36997 * seg34AccY208 rho = rho 37002 := by
      rw [seg34LadderFlatY208_eq]
      unfold seg34LadderFlatY208
      linear_combination r5730
    have ha3 : 3021 * rho 37001 * rho 37002 = rho 37003 := by
      linear_combination r5731
    have ha4 : rho 37004 * (1 + rho 37003) = rho 37001 + rho 37002 := by
      linear_combination r5732
    have ha5 : rho 37005 * (1 - rho 37003) = rho 37000 - rho 37001 - rho 37002 := by
      linear_combination r5733
    have haddx :
        rho 37004 * (1 + 3021 * (rho 36998 * seg34AccX208 rho) * (rho 36997 * seg34AccY208 rho)) =
          rho 36998 * seg34AccX208 rho + rho 36997 * seg34AccY208 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 37005 * (1 - 3021 * (rho 36998 * seg34AccX208 rho) * (rho 36997 * seg34AccY208 rho)) =
          (-1) * (rho 36998 * seg34AccX208 rho) - rho 36997 * seg34AccY208 rho +
            (seg34AccY208 rho - seg34AccX208 rho * (-1)) * (rho 36997 + rho 36998) := by
      rw [ha1, ha2, ha3]
      calc
        rho 37005 * (1 - rho 37003) = rho 37000 - rho 37001 - rho 37002 := ha5
        _ = (-1) * rho 37001 - rho 37002 + (seg34AccY208 rho - seg34AccX208 rho * (-1)) * (rho 36997 + rho 36998) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX209 rho = seg34AccX208 rho - Bool.toZMod bit * (seg34AccX208 rho - rho 37004) := by
      have hd : rho 37006 = Bool.toZMod bit * (rho 37004 - seg34AccX208 rho) := by
        rw [← hbit, seg34LadderFlatX208_eq]
        unfold seg34LadderFlatX208
        linear_combination -r5734
      unfold seg34AccX209
      linear_combination hd
    have hsely : seg34AccY209 rho = seg34AccY208 rho - Bool.toZMod bit * (seg34AccY208 rho - rho 37005) := by
      have hd : rho 37007 = Bool.toZMod bit * (rho 37005 - seg34AccY208 rho) := by
        rw [← hbit, seg34LadderFlatY208_eq]
        unfold seg34LadderFlatY208
        linear_combination -r5735
      unfold seg34AccY209
      linear_combination hd
    have hd0 : rho 36997 * rho 36998 = rho 37008 := by linear_combination r5736
    have hd1 : rho 36997 * rho 36997 = rho 37009 := by linear_combination r5737
    have hd2 : rho 36998 * rho 36998 = rho 37010 := by linear_combination r5738
    have hd3 : rho 37011 * (rho 36998 * rho 36998 + rho 36997 * rho 36997 * (-1)) = 2 * (rho 36997 * rho 36998) := by
      rw [hd0, hd1, hd2]
      linear_combination r5739
    have hd4 : rho 37012 * (2 - (rho 36998 * rho 36998 + rho 36997 * rho 36997 * (-1))) = rho 36998 * rho 36998 - rho 36997 * rho 36997 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5740
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX208 rho : Seg34.F), (seg34AccY208 rho : Seg34.F)⟩
      ⟨(rho 36997 : Seg34.F), (rho 36998 : Seg34.F)⟩
      ⟨(rho 37004 : Seg34.F), (rho 37005 : Seg34.F)⟩
      ⟨(seg34AccX209 rho : Seg34.F), (seg34AccY209 rho : Seg34.F)⟩
      ⟨(rho 37011 : Seg34.F), (rho 37012 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung208

theorem seg34_rung209 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34201 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX209 rho : Seg34.F), (seg34AccY209 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 37011 : Seg34.F), (rho 37012 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX209 rho : Seg34.F), (seg34AccY209 rho : Seg34.F)⟩
        ⟨(rho 37011 : Seg34.F), (rho 37012 : Seg34.F)⟩
        ⟨(seg34AccX210 rho : Seg34.F), (seg34AccY210 rho : Seg34.F)⟩
        ⟨(rho 37025 : Seg34.F), (rho 37026 : Seg34.F)⟩ := by
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
  unfold Seg34.relationRow5741 Seg34.relationLc1080 Seg34.relationLc1080Part0 Seg34.relationLc1080Part1 Seg34.relationLc1080Part2 Seg34.relationLc1080Part3 Seg34.relationLc1080Part4 Seg34.relationLc1080Part5 Seg34.relationLc1080Part6 Seg34.relationLc1080Part7 Seg34.relationLc1080Part8 Seg34.relationLc1080Part9 Seg34.relationLc1080Part10 Seg34.relationLc1080Part11 Seg34.relationLc1080Part12 Seg34.relationLc1080Part13 at r5741
  unfold Seg34.relationRow5742 at r5742
  unfold Seg34.relationRow5743 Seg34.relationLc1081 Seg34.relationLc1081Part0 Seg34.relationLc1081Part1 Seg34.relationLc1081Part2 Seg34.relationLc1081Part3 Seg34.relationLc1081Part4 Seg34.relationLc1081Part5 Seg34.relationLc1081Part6 at r5743
  unfold Seg34.relationRow5744 Seg34.relationLc1082 Seg34.relationLc1082Part0 Seg34.relationLc1082Part1 Seg34.relationLc1082Part2 Seg34.relationLc1082Part3 Seg34.relationLc1082Part4 Seg34.relationLc1082Part5 Seg34.relationLc1082Part6 at r5744
  unfold Seg34.relationRow5745 at r5745
  unfold Seg34.relationRow5746 at r5746
  unfold Seg34.relationRow5747 at r5747
  unfold Seg34.relationRow5748 Seg34.relationLc1083 Seg34.relationLc1083Part0 Seg34.relationLc1083Part1 Seg34.relationLc1083Part2 Seg34.relationLc1083Part3 Seg34.relationLc1083Part4 Seg34.relationLc1083Part5 Seg34.relationLc1083Part6 at r5748
  unfold Seg34.relationRow5749 Seg34.relationLc1084 Seg34.relationLc1084Part0 Seg34.relationLc1084Part1 Seg34.relationLc1084Part2 Seg34.relationLc1084Part3 Seg34.relationLc1084Part4 Seg34.relationLc1084Part5 Seg34.relationLc1084Part6 at r5749
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
    have hsum : seg34AccX209 rho + seg34AccY209 rho = rho 37013 := by
      rw [seg34LadderFlatX209_eq, seg34LadderFlatY209_eq]
      unfold seg34LadderFlatX209 seg34LadderFlatY209
      linear_combination r5741
    have ha0 : (rho 37011 + rho 37012) * (seg34AccX209 rho + seg34AccY209 rho) = rho 37014 := by
      rw [hsum]
      linear_combination r5742
    have ha1 : rho 37012 * seg34AccX209 rho = rho 37015 := by
      rw [seg34LadderFlatX209_eq]
      unfold seg34LadderFlatX209
      linear_combination r5743
    have ha2 : rho 37011 * seg34AccY209 rho = rho 37016 := by
      rw [seg34LadderFlatY209_eq]
      unfold seg34LadderFlatY209
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
        rw [← hbit, seg34LadderFlatX209_eq]
        unfold seg34LadderFlatX209
        linear_combination -r5748
      unfold seg34AccX210
      linear_combination hd
    have hsely : seg34AccY210 rho = seg34AccY209 rho - Bool.toZMod bit * (seg34AccY209 rho - rho 37019) := by
      have hd : rho 37021 = Bool.toZMod bit * (rho 37019 - seg34AccY209 rho) := by
        rw [← hbit, seg34LadderFlatY209_eq]
        unfold seg34LadderFlatY209
        linear_combination -r5749
      unfold seg34AccY210
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

theorem seg34_rung210 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34202 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX210 rho : Seg34.F), (seg34AccY210 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 37025 : Seg34.F), (rho 37026 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX210 rho : Seg34.F), (seg34AccY210 rho : Seg34.F)⟩
        ⟨(rho 37025 : Seg34.F), (rho 37026 : Seg34.F)⟩
        ⟨(seg34AccX211 rho : Seg34.F), (seg34AccY211 rho : Seg34.F)⟩
        ⟨(rho 37039 : Seg34.F), (rho 37040 : Seg34.F)⟩ := by
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
  unfold Seg34.relationRow5755 Seg34.relationLc1085 Seg34.relationLc1085Part0 Seg34.relationLc1085Part1 Seg34.relationLc1085Part2 Seg34.relationLc1085Part3 Seg34.relationLc1085Part4 Seg34.relationLc1085Part5 Seg34.relationLc1085Part6 Seg34.relationLc1085Part7 Seg34.relationLc1085Part8 Seg34.relationLc1085Part9 Seg34.relationLc1085Part10 Seg34.relationLc1085Part11 Seg34.relationLc1085Part12 Seg34.relationLc1085Part13 at r5755
  unfold Seg34.relationRow5756 at r5756
  unfold Seg34.relationRow5757 Seg34.relationLc1086 Seg34.relationLc1086Part0 Seg34.relationLc1086Part1 Seg34.relationLc1086Part2 Seg34.relationLc1086Part3 Seg34.relationLc1086Part4 Seg34.relationLc1086Part5 Seg34.relationLc1086Part6 at r5757
  unfold Seg34.relationRow5758 Seg34.relationLc1087 Seg34.relationLc1087Part0 Seg34.relationLc1087Part1 Seg34.relationLc1087Part2 Seg34.relationLc1087Part3 Seg34.relationLc1087Part4 Seg34.relationLc1087Part5 Seg34.relationLc1087Part6 at r5758
  unfold Seg34.relationRow5759 at r5759
  unfold Seg34.relationRow5760 at r5760
  unfold Seg34.relationRow5761 at r5761
  unfold Seg34.relationRow5762 Seg34.relationLc1088 Seg34.relationLc1088Part0 Seg34.relationLc1088Part1 Seg34.relationLc1088Part2 Seg34.relationLc1088Part3 Seg34.relationLc1088Part4 Seg34.relationLc1088Part5 Seg34.relationLc1088Part6 at r5762
  unfold Seg34.relationRow5763 Seg34.relationLc1089 Seg34.relationLc1089Part0 Seg34.relationLc1089Part1 Seg34.relationLc1089Part2 Seg34.relationLc1089Part3 Seg34.relationLc1089Part4 Seg34.relationLc1089Part5 Seg34.relationLc1089Part6 at r5763
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
    have hsum : seg34AccX210 rho + seg34AccY210 rho = rho 37027 := by
      rw [seg34LadderFlatX210_eq, seg34LadderFlatY210_eq]
      unfold seg34LadderFlatX210 seg34LadderFlatY210
      linear_combination r5755
    have ha0 : (rho 37025 + rho 37026) * (seg34AccX210 rho + seg34AccY210 rho) = rho 37028 := by
      rw [hsum]
      linear_combination r5756
    have ha1 : rho 37026 * seg34AccX210 rho = rho 37029 := by
      rw [seg34LadderFlatX210_eq]
      unfold seg34LadderFlatX210
      linear_combination r5757
    have ha2 : rho 37025 * seg34AccY210 rho = rho 37030 := by
      rw [seg34LadderFlatY210_eq]
      unfold seg34LadderFlatY210
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
        rw [← hbit, seg34LadderFlatX210_eq]
        unfold seg34LadderFlatX210
        linear_combination -r5762
      unfold seg34AccX211
      linear_combination hd
    have hsely : seg34AccY211 rho = seg34AccY210 rho - Bool.toZMod bit * (seg34AccY210 rho - rho 37033) := by
      have hd : rho 37035 = Bool.toZMod bit * (rho 37033 - seg34AccY210 rho) := by
        rw [← hbit, seg34LadderFlatY210_eq]
        unfold seg34LadderFlatY210
        linear_combination -r5763
      unfold seg34AccY211
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

theorem seg34_rung211 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34203 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX211 rho : Seg34.F), (seg34AccY211 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 37039 : Seg34.F), (rho 37040 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX211 rho : Seg34.F), (seg34AccY211 rho : Seg34.F)⟩
        ⟨(rho 37039 : Seg34.F), (rho 37040 : Seg34.F)⟩
        ⟨(seg34AccX212 rho : Seg34.F), (seg34AccY212 rho : Seg34.F)⟩
        ⟨(rho 37053 : Seg34.F), (rho 37054 : Seg34.F)⟩ := by
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
  unfold Seg34.relationRow5769 Seg34.relationLc1090 Seg34.relationLc1090Part0 Seg34.relationLc1090Part1 Seg34.relationLc1090Part2 Seg34.relationLc1090Part3 Seg34.relationLc1090Part4 Seg34.relationLc1090Part5 Seg34.relationLc1090Part6 Seg34.relationLc1090Part7 Seg34.relationLc1090Part8 Seg34.relationLc1090Part9 Seg34.relationLc1090Part10 Seg34.relationLc1090Part11 Seg34.relationLc1090Part12 Seg34.relationLc1090Part13 at r5769
  unfold Seg34.relationRow5770 at r5770
  unfold Seg34.relationRow5771 Seg34.relationLc1091 Seg34.relationLc1091Part0 Seg34.relationLc1091Part1 Seg34.relationLc1091Part2 Seg34.relationLc1091Part3 Seg34.relationLc1091Part4 Seg34.relationLc1091Part5 Seg34.relationLc1091Part6 at r5771
  unfold Seg34.relationRow5772 Seg34.relationLc1092 Seg34.relationLc1092Part0 Seg34.relationLc1092Part1 Seg34.relationLc1092Part2 Seg34.relationLc1092Part3 Seg34.relationLc1092Part4 Seg34.relationLc1092Part5 Seg34.relationLc1092Part6 at r5772
  unfold Seg34.relationRow5773 at r5773
  unfold Seg34.relationRow5774 at r5774
  unfold Seg34.relationRow5775 at r5775
  unfold Seg34.relationRow5776 Seg34.relationLc1093 Seg34.relationLc1093Part0 Seg34.relationLc1093Part1 Seg34.relationLc1093Part2 Seg34.relationLc1093Part3 Seg34.relationLc1093Part4 Seg34.relationLc1093Part5 Seg34.relationLc1093Part6 at r5776
  unfold Seg34.relationRow5777 Seg34.relationLc1094 Seg34.relationLc1094Part0 Seg34.relationLc1094Part1 Seg34.relationLc1094Part2 Seg34.relationLc1094Part3 Seg34.relationLc1094Part4 Seg34.relationLc1094Part5 Seg34.relationLc1094Part6 at r5777
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
    have hsum : seg34AccX211 rho + seg34AccY211 rho = rho 37041 := by
      rw [seg34LadderFlatX211_eq, seg34LadderFlatY211_eq]
      unfold seg34LadderFlatX211 seg34LadderFlatY211
      linear_combination r5769
    have ha0 : (rho 37039 + rho 37040) * (seg34AccX211 rho + seg34AccY211 rho) = rho 37042 := by
      rw [hsum]
      linear_combination r5770
    have ha1 : rho 37040 * seg34AccX211 rho = rho 37043 := by
      rw [seg34LadderFlatX211_eq]
      unfold seg34LadderFlatX211
      linear_combination r5771
    have ha2 : rho 37039 * seg34AccY211 rho = rho 37044 := by
      rw [seg34LadderFlatY211_eq]
      unfold seg34LadderFlatY211
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
        rw [← hbit, seg34LadderFlatX211_eq]
        unfold seg34LadderFlatX211
        linear_combination -r5776
      unfold seg34AccX212
      linear_combination hd
    have hsely : seg34AccY212 rho = seg34AccY211 rho - Bool.toZMod bit * (seg34AccY211 rho - rho 37047) := by
      have hd : rho 37049 = Bool.toZMod bit * (rho 37047 - seg34AccY211 rho) := by
        rw [← hbit, seg34LadderFlatY211_eq]
        unfold seg34LadderFlatY211
        linear_combination -r5777
      unfold seg34AccY212
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

theorem seg34_rung212 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34204 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX212 rho : Seg34.F), (seg34AccY212 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 37053 : Seg34.F), (rho 37054 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX212 rho : Seg34.F), (seg34AccY212 rho : Seg34.F)⟩
        ⟨(rho 37053 : Seg34.F), (rho 37054 : Seg34.F)⟩
        ⟨(seg34AccX213 rho : Seg34.F), (seg34AccY213 rho : Seg34.F)⟩
        ⟨(rho 37067 : Seg34.F), (rho 37068 : Seg34.F)⟩ := by
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
  unfold Seg34.relationRow5783 Seg34.relationLc1095 Seg34.relationLc1095Part0 Seg34.relationLc1095Part1 Seg34.relationLc1095Part2 Seg34.relationLc1095Part3 Seg34.relationLc1095Part4 Seg34.relationLc1095Part5 Seg34.relationLc1095Part6 Seg34.relationLc1095Part7 Seg34.relationLc1095Part8 Seg34.relationLc1095Part9 Seg34.relationLc1095Part10 Seg34.relationLc1095Part11 Seg34.relationLc1095Part12 Seg34.relationLc1095Part13 at r5783
  unfold Seg34.relationRow5784 at r5784
  unfold Seg34.relationRow5785 Seg34.relationLc1096 Seg34.relationLc1096Part0 Seg34.relationLc1096Part1 Seg34.relationLc1096Part2 Seg34.relationLc1096Part3 Seg34.relationLc1096Part4 Seg34.relationLc1096Part5 Seg34.relationLc1096Part6 at r5785
  unfold Seg34.relationRow5786 Seg34.relationLc1097 Seg34.relationLc1097Part0 Seg34.relationLc1097Part1 Seg34.relationLc1097Part2 Seg34.relationLc1097Part3 Seg34.relationLc1097Part4 Seg34.relationLc1097Part5 Seg34.relationLc1097Part6 at r5786
  unfold Seg34.relationRow5787 at r5787
  unfold Seg34.relationRow5788 at r5788
  unfold Seg34.relationRow5789 at r5789
  unfold Seg34.relationRow5790 Seg34.relationLc1098 Seg34.relationLc1098Part0 Seg34.relationLc1098Part1 Seg34.relationLc1098Part2 Seg34.relationLc1098Part3 Seg34.relationLc1098Part4 Seg34.relationLc1098Part5 Seg34.relationLc1098Part6 at r5790
  unfold Seg34.relationRow5791 Seg34.relationLc1099 Seg34.relationLc1099Part0 Seg34.relationLc1099Part1 Seg34.relationLc1099Part2 Seg34.relationLc1099Part3 Seg34.relationLc1099Part4 Seg34.relationLc1099Part5 Seg34.relationLc1099Part6 at r5791
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
    have hsum : seg34AccX212 rho + seg34AccY212 rho = rho 37055 := by
      rw [seg34LadderFlatX212_eq, seg34LadderFlatY212_eq]
      unfold seg34LadderFlatX212 seg34LadderFlatY212
      linear_combination r5783
    have ha0 : (rho 37053 + rho 37054) * (seg34AccX212 rho + seg34AccY212 rho) = rho 37056 := by
      rw [hsum]
      linear_combination r5784
    have ha1 : rho 37054 * seg34AccX212 rho = rho 37057 := by
      rw [seg34LadderFlatX212_eq]
      unfold seg34LadderFlatX212
      linear_combination r5785
    have ha2 : rho 37053 * seg34AccY212 rho = rho 37058 := by
      rw [seg34LadderFlatY212_eq]
      unfold seg34LadderFlatY212
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
        rw [← hbit, seg34LadderFlatX212_eq]
        unfold seg34LadderFlatX212
        linear_combination -r5790
      unfold seg34AccX213
      linear_combination hd
    have hsely : seg34AccY213 rho = seg34AccY212 rho - Bool.toZMod bit * (seg34AccY212 rho - rho 37061) := by
      have hd : rho 37063 = Bool.toZMod bit * (rho 37061 - seg34AccY212 rho) := by
        rw [← hbit, seg34LadderFlatY212_eq]
        unfold seg34LadderFlatY212
        linear_combination -r5791
      unfold seg34AccY213
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

theorem seg34_rung213 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34205 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX213 rho : Seg34.F), (seg34AccY213 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 37067 : Seg34.F), (rho 37068 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX213 rho : Seg34.F), (seg34AccY213 rho : Seg34.F)⟩
        ⟨(rho 37067 : Seg34.F), (rho 37068 : Seg34.F)⟩
        ⟨(seg34AccX214 rho : Seg34.F), (seg34AccY214 rho : Seg34.F)⟩
        ⟨(rho 37081 : Seg34.F), (rho 37082 : Seg34.F)⟩ := by
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
  unfold Seg34.relationRow5797 Seg34.relationLc1100 Seg34.relationLc1100Part0 Seg34.relationLc1100Part1 Seg34.relationLc1100Part2 Seg34.relationLc1100Part3 Seg34.relationLc1100Part4 Seg34.relationLc1100Part5 Seg34.relationLc1100Part6 Seg34.relationLc1100Part7 Seg34.relationLc1100Part8 Seg34.relationLc1100Part9 Seg34.relationLc1100Part10 Seg34.relationLc1100Part11 Seg34.relationLc1100Part12 Seg34.relationLc1100Part13 at r5797
  unfold Seg34.relationRow5798 at r5798
  unfold Seg34.relationRow5799 Seg34.relationLc1101 Seg34.relationLc1101Part0 Seg34.relationLc1101Part1 Seg34.relationLc1101Part2 Seg34.relationLc1101Part3 Seg34.relationLc1101Part4 Seg34.relationLc1101Part5 Seg34.relationLc1101Part6 at r5799
  unfold Seg34.relationRow5800 Seg34.relationLc1102 Seg34.relationLc1102Part0 Seg34.relationLc1102Part1 Seg34.relationLc1102Part2 Seg34.relationLc1102Part3 Seg34.relationLc1102Part4 Seg34.relationLc1102Part5 Seg34.relationLc1102Part6 at r5800
  unfold Seg34.relationRow5801 at r5801
  unfold Seg34.relationRow5802 at r5802
  unfold Seg34.relationRow5803 at r5803
  unfold Seg34.relationRow5804 Seg34.relationLc1103 Seg34.relationLc1103Part0 Seg34.relationLc1103Part1 Seg34.relationLc1103Part2 Seg34.relationLc1103Part3 Seg34.relationLc1103Part4 Seg34.relationLc1103Part5 Seg34.relationLc1103Part6 at r5804
  unfold Seg34.relationRow5805 Seg34.relationLc1104 Seg34.relationLc1104Part0 Seg34.relationLc1104Part1 Seg34.relationLc1104Part2 Seg34.relationLc1104Part3 Seg34.relationLc1104Part4 Seg34.relationLc1104Part5 Seg34.relationLc1104Part6 at r5805
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
    have hsum : seg34AccX213 rho + seg34AccY213 rho = rho 37069 := by
      rw [seg34LadderFlatX213_eq, seg34LadderFlatY213_eq]
      unfold seg34LadderFlatX213 seg34LadderFlatY213
      linear_combination r5797
    have ha0 : (rho 37067 + rho 37068) * (seg34AccX213 rho + seg34AccY213 rho) = rho 37070 := by
      rw [hsum]
      linear_combination r5798
    have ha1 : rho 37068 * seg34AccX213 rho = rho 37071 := by
      rw [seg34LadderFlatX213_eq]
      unfold seg34LadderFlatX213
      linear_combination r5799
    have ha2 : rho 37067 * seg34AccY213 rho = rho 37072 := by
      rw [seg34LadderFlatY213_eq]
      unfold seg34LadderFlatY213
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
        rw [← hbit, seg34LadderFlatX213_eq]
        unfold seg34LadderFlatX213
        linear_combination -r5804
      unfold seg34AccX214
      linear_combination hd
    have hsely : seg34AccY214 rho = seg34AccY213 rho - Bool.toZMod bit * (seg34AccY213 rho - rho 37075) := by
      have hd : rho 37077 = Bool.toZMod bit * (rho 37075 - seg34AccY213 rho) := by
        rw [← hbit, seg34LadderFlatY213_eq]
        unfold seg34LadderFlatY213
        linear_combination -r5805
      unfold seg34AccY214
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

theorem seg34_rung214 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34206 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX214 rho : Seg34.F), (seg34AccY214 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 37081 : Seg34.F), (rho 37082 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX214 rho : Seg34.F), (seg34AccY214 rho : Seg34.F)⟩
        ⟨(rho 37081 : Seg34.F), (rho 37082 : Seg34.F)⟩
        ⟨(seg34AccX215 rho : Seg34.F), (seg34AccY215 rho : Seg34.F)⟩
        ⟨(rho 37095 : Seg34.F), (rho 37096 : Seg34.F)⟩ := by
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
  unfold Seg34.relationRow5811 Seg34.relationLc1105 Seg34.relationLc1105Part0 Seg34.relationLc1105Part1 Seg34.relationLc1105Part2 Seg34.relationLc1105Part3 Seg34.relationLc1105Part4 Seg34.relationLc1105Part5 Seg34.relationLc1105Part6 Seg34.relationLc1105Part7 Seg34.relationLc1105Part8 Seg34.relationLc1105Part9 Seg34.relationLc1105Part10 Seg34.relationLc1105Part11 Seg34.relationLc1105Part12 Seg34.relationLc1105Part13 at r5811
  unfold Seg34.relationRow5812 at r5812
  unfold Seg34.relationRow5813 Seg34.relationLc1106 Seg34.relationLc1106Part0 Seg34.relationLc1106Part1 Seg34.relationLc1106Part2 Seg34.relationLc1106Part3 Seg34.relationLc1106Part4 Seg34.relationLc1106Part5 Seg34.relationLc1106Part6 at r5813
  unfold Seg34.relationRow5814 Seg34.relationLc1107 Seg34.relationLc1107Part0 Seg34.relationLc1107Part1 Seg34.relationLc1107Part2 Seg34.relationLc1107Part3 Seg34.relationLc1107Part4 Seg34.relationLc1107Part5 Seg34.relationLc1107Part6 at r5814
  unfold Seg34.relationRow5815 at r5815
  unfold Seg34.relationRow5816 at r5816
  unfold Seg34.relationRow5817 at r5817
  unfold Seg34.relationRow5818 Seg34.relationLc1108 Seg34.relationLc1108Part0 Seg34.relationLc1108Part1 Seg34.relationLc1108Part2 Seg34.relationLc1108Part3 Seg34.relationLc1108Part4 Seg34.relationLc1108Part5 Seg34.relationLc1108Part6 at r5818
  unfold Seg34.relationRow5819 Seg34.relationLc1109 Seg34.relationLc1109Part0 Seg34.relationLc1109Part1 Seg34.relationLc1109Part2 Seg34.relationLc1109Part3 Seg34.relationLc1109Part4 Seg34.relationLc1109Part5 Seg34.relationLc1109Part6 at r5819
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
    have hsum : seg34AccX214 rho + seg34AccY214 rho = rho 37083 := by
      rw [seg34LadderFlatX214_eq, seg34LadderFlatY214_eq]
      unfold seg34LadderFlatX214 seg34LadderFlatY214
      linear_combination r5811
    have ha0 : (rho 37081 + rho 37082) * (seg34AccX214 rho + seg34AccY214 rho) = rho 37084 := by
      rw [hsum]
      linear_combination r5812
    have ha1 : rho 37082 * seg34AccX214 rho = rho 37085 := by
      rw [seg34LadderFlatX214_eq]
      unfold seg34LadderFlatX214
      linear_combination r5813
    have ha2 : rho 37081 * seg34AccY214 rho = rho 37086 := by
      rw [seg34LadderFlatY214_eq]
      unfold seg34LadderFlatY214
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
        rw [← hbit, seg34LadderFlatX214_eq]
        unfold seg34LadderFlatX214
        linear_combination -r5818
      unfold seg34AccX215
      linear_combination hd
    have hsely : seg34AccY215 rho = seg34AccY214 rho - Bool.toZMod bit * (seg34AccY214 rho - rho 37089) := by
      have hd : rho 37091 = Bool.toZMod bit * (rho 37089 - seg34AccY214 rho) := by
        rw [← hbit, seg34LadderFlatY214_eq]
        unfold seg34LadderFlatY214
        linear_combination -r5819
      unfold seg34AccY215
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

theorem seg34_rung215 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34207 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX215 rho : Seg34.F), (seg34AccY215 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 37095 : Seg34.F), (rho 37096 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX215 rho : Seg34.F), (seg34AccY215 rho : Seg34.F)⟩
        ⟨(rho 37095 : Seg34.F), (rho 37096 : Seg34.F)⟩
        ⟨(seg34AccX216 rho : Seg34.F), (seg34AccY216 rho : Seg34.F)⟩
        ⟨(rho 37109 : Seg34.F), (rho 37110 : Seg34.F)⟩ := by
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
  unfold Seg34.relationRow5825 Seg34.relationLc1110 Seg34.relationLc1110Part0 Seg34.relationLc1110Part1 Seg34.relationLc1110Part2 Seg34.relationLc1110Part3 Seg34.relationLc1110Part4 Seg34.relationLc1110Part5 Seg34.relationLc1110Part6 Seg34.relationLc1110Part7 Seg34.relationLc1110Part8 Seg34.relationLc1110Part9 Seg34.relationLc1110Part10 Seg34.relationLc1110Part11 Seg34.relationLc1110Part12 Seg34.relationLc1110Part13 at r5825
  unfold Seg34.relationRow5826 at r5826
  unfold Seg34.relationRow5827 Seg34.relationLc1111 Seg34.relationLc1111Part0 Seg34.relationLc1111Part1 Seg34.relationLc1111Part2 Seg34.relationLc1111Part3 Seg34.relationLc1111Part4 Seg34.relationLc1111Part5 Seg34.relationLc1111Part6 at r5827
  unfold Seg34.relationRow5828 Seg34.relationLc1112 Seg34.relationLc1112Part0 Seg34.relationLc1112Part1 Seg34.relationLc1112Part2 Seg34.relationLc1112Part3 Seg34.relationLc1112Part4 Seg34.relationLc1112Part5 Seg34.relationLc1112Part6 at r5828
  unfold Seg34.relationRow5829 at r5829
  unfold Seg34.relationRow5830 at r5830
  unfold Seg34.relationRow5831 at r5831
  unfold Seg34.relationRow5832 Seg34.relationLc1113 Seg34.relationLc1113Part0 Seg34.relationLc1113Part1 Seg34.relationLc1113Part2 Seg34.relationLc1113Part3 Seg34.relationLc1113Part4 Seg34.relationLc1113Part5 Seg34.relationLc1113Part6 at r5832
  unfold Seg34.relationRow5833 Seg34.relationLc1114 Seg34.relationLc1114Part0 Seg34.relationLc1114Part1 Seg34.relationLc1114Part2 Seg34.relationLc1114Part3 Seg34.relationLc1114Part4 Seg34.relationLc1114Part5 Seg34.relationLc1114Part6 at r5833
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
    have hsum : seg34AccX215 rho + seg34AccY215 rho = rho 37097 := by
      rw [seg34LadderFlatX215_eq, seg34LadderFlatY215_eq]
      unfold seg34LadderFlatX215 seg34LadderFlatY215
      linear_combination r5825
    have ha0 : (rho 37095 + rho 37096) * (seg34AccX215 rho + seg34AccY215 rho) = rho 37098 := by
      rw [hsum]
      linear_combination r5826
    have ha1 : rho 37096 * seg34AccX215 rho = rho 37099 := by
      rw [seg34LadderFlatX215_eq]
      unfold seg34LadderFlatX215
      linear_combination r5827
    have ha2 : rho 37095 * seg34AccY215 rho = rho 37100 := by
      rw [seg34LadderFlatY215_eq]
      unfold seg34LadderFlatY215
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
        rw [← hbit, seg34LadderFlatX215_eq]
        unfold seg34LadderFlatX215
        linear_combination -r5832
      unfold seg34AccX216
      linear_combination hd
    have hsely : seg34AccY216 rho = seg34AccY215 rho - Bool.toZMod bit * (seg34AccY215 rho - rho 37103) := by
      have hd : rho 37105 = Bool.toZMod bit * (rho 37103 - seg34AccY215 rho) := by
        rw [← hbit, seg34LadderFlatY215_eq]
        unfold seg34LadderFlatY215
        linear_combination -r5833
      unfold seg34AccY216
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

theorem seg34_rung216 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34208 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX216 rho : Seg34.F), (seg34AccY216 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 37109 : Seg34.F), (rho 37110 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX216 rho : Seg34.F), (seg34AccY216 rho : Seg34.F)⟩
        ⟨(rho 37109 : Seg34.F), (rho 37110 : Seg34.F)⟩
        ⟨(seg34AccX217 rho : Seg34.F), (seg34AccY217 rho : Seg34.F)⟩
        ⟨(rho 37123 : Seg34.F), (rho 37124 : Seg34.F)⟩ := by
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
  unfold Seg34.relationRow5839 Seg34.relationLc1115 Seg34.relationLc1115Part0 Seg34.relationLc1115Part1 Seg34.relationLc1115Part2 Seg34.relationLc1115Part3 Seg34.relationLc1115Part4 Seg34.relationLc1115Part5 Seg34.relationLc1115Part6 Seg34.relationLc1115Part7 Seg34.relationLc1115Part8 Seg34.relationLc1115Part9 Seg34.relationLc1115Part10 Seg34.relationLc1115Part11 Seg34.relationLc1115Part12 Seg34.relationLc1115Part13 at r5839
  unfold Seg34.relationRow5840 at r5840
  unfold Seg34.relationRow5841 Seg34.relationLc1116 Seg34.relationLc1116Part0 Seg34.relationLc1116Part1 Seg34.relationLc1116Part2 Seg34.relationLc1116Part3 Seg34.relationLc1116Part4 Seg34.relationLc1116Part5 Seg34.relationLc1116Part6 at r5841
  unfold Seg34.relationRow5842 Seg34.relationLc1117 Seg34.relationLc1117Part0 Seg34.relationLc1117Part1 Seg34.relationLc1117Part2 Seg34.relationLc1117Part3 Seg34.relationLc1117Part4 Seg34.relationLc1117Part5 Seg34.relationLc1117Part6 at r5842
  unfold Seg34.relationRow5843 at r5843
  unfold Seg34.relationRow5844 at r5844
  unfold Seg34.relationRow5845 at r5845
  unfold Seg34.relationRow5846 Seg34.relationLc1118 Seg34.relationLc1118Part0 Seg34.relationLc1118Part1 Seg34.relationLc1118Part2 Seg34.relationLc1118Part3 Seg34.relationLc1118Part4 Seg34.relationLc1118Part5 Seg34.relationLc1118Part6 at r5846
  unfold Seg34.relationRow5847 Seg34.relationLc1119 Seg34.relationLc1119Part0 Seg34.relationLc1119Part1 Seg34.relationLc1119Part2 Seg34.relationLc1119Part3 Seg34.relationLc1119Part4 Seg34.relationLc1119Part5 Seg34.relationLc1119Part6 at r5847
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
    have hsum : seg34AccX216 rho + seg34AccY216 rho = rho 37111 := by
      rw [seg34LadderFlatX216_eq, seg34LadderFlatY216_eq]
      unfold seg34LadderFlatX216 seg34LadderFlatY216
      linear_combination r5839
    have ha0 : (rho 37109 + rho 37110) * (seg34AccX216 rho + seg34AccY216 rho) = rho 37112 := by
      rw [hsum]
      linear_combination r5840
    have ha1 : rho 37110 * seg34AccX216 rho = rho 37113 := by
      rw [seg34LadderFlatX216_eq]
      unfold seg34LadderFlatX216
      linear_combination r5841
    have ha2 : rho 37109 * seg34AccY216 rho = rho 37114 := by
      rw [seg34LadderFlatY216_eq]
      unfold seg34LadderFlatY216
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
        rw [← hbit, seg34LadderFlatX216_eq]
        unfold seg34LadderFlatX216
        linear_combination -r5846
      unfold seg34AccX217
      linear_combination hd
    have hsely : seg34AccY217 rho = seg34AccY216 rho - Bool.toZMod bit * (seg34AccY216 rho - rho 37117) := by
      have hd : rho 37119 = Bool.toZMod bit * (rho 37117 - seg34AccY216 rho) := by
        rw [← hbit, seg34LadderFlatY216_eq]
        unfold seg34LadderFlatY216
        linear_combination -r5847
      unfold seg34AccY217
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

theorem seg34_rung217 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34209 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX217 rho : Seg34.F), (seg34AccY217 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 37123 : Seg34.F), (rho 37124 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX217 rho : Seg34.F), (seg34AccY217 rho : Seg34.F)⟩
        ⟨(rho 37123 : Seg34.F), (rho 37124 : Seg34.F)⟩
        ⟨(seg34AccX218 rho : Seg34.F), (seg34AccY218 rho : Seg34.F)⟩
        ⟨(rho 37137 : Seg34.F), (rho 37138 : Seg34.F)⟩ := by
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
  unfold Seg34.relationRow5853 Seg34.relationLc1120 Seg34.relationLc1120Part0 Seg34.relationLc1120Part1 Seg34.relationLc1120Part2 Seg34.relationLc1120Part3 Seg34.relationLc1120Part4 Seg34.relationLc1120Part5 Seg34.relationLc1120Part6 Seg34.relationLc1120Part7 Seg34.relationLc1120Part8 Seg34.relationLc1120Part9 Seg34.relationLc1120Part10 Seg34.relationLc1120Part11 Seg34.relationLc1120Part12 Seg34.relationLc1120Part13 at r5853
  unfold Seg34.relationRow5854 at r5854
  unfold Seg34.relationRow5855 Seg34.relationLc1121 Seg34.relationLc1121Part0 Seg34.relationLc1121Part1 Seg34.relationLc1121Part2 Seg34.relationLc1121Part3 Seg34.relationLc1121Part4 Seg34.relationLc1121Part5 Seg34.relationLc1121Part6 at r5855
  unfold Seg34.relationRow5856 Seg34.relationLc1122 Seg34.relationLc1122Part0 Seg34.relationLc1122Part1 Seg34.relationLc1122Part2 Seg34.relationLc1122Part3 Seg34.relationLc1122Part4 Seg34.relationLc1122Part5 Seg34.relationLc1122Part6 at r5856
  unfold Seg34.relationRow5857 at r5857
  unfold Seg34.relationRow5858 at r5858
  unfold Seg34.relationRow5859 at r5859
  unfold Seg34.relationRow5860 Seg34.relationLc1123 Seg34.relationLc1123Part0 Seg34.relationLc1123Part1 Seg34.relationLc1123Part2 Seg34.relationLc1123Part3 Seg34.relationLc1123Part4 Seg34.relationLc1123Part5 Seg34.relationLc1123Part6 at r5860
  unfold Seg34.relationRow5861 Seg34.relationLc1124 Seg34.relationLc1124Part0 Seg34.relationLc1124Part1 Seg34.relationLc1124Part2 Seg34.relationLc1124Part3 Seg34.relationLc1124Part4 Seg34.relationLc1124Part5 Seg34.relationLc1124Part6 at r5861
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
    have hsum : seg34AccX217 rho + seg34AccY217 rho = rho 37125 := by
      rw [seg34LadderFlatX217_eq, seg34LadderFlatY217_eq]
      unfold seg34LadderFlatX217 seg34LadderFlatY217
      linear_combination r5853
    have ha0 : (rho 37123 + rho 37124) * (seg34AccX217 rho + seg34AccY217 rho) = rho 37126 := by
      rw [hsum]
      linear_combination r5854
    have ha1 : rho 37124 * seg34AccX217 rho = rho 37127 := by
      rw [seg34LadderFlatX217_eq]
      unfold seg34LadderFlatX217
      linear_combination r5855
    have ha2 : rho 37123 * seg34AccY217 rho = rho 37128 := by
      rw [seg34LadderFlatY217_eq]
      unfold seg34LadderFlatY217
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
        rw [← hbit, seg34LadderFlatX217_eq]
        unfold seg34LadderFlatX217
        linear_combination -r5860
      unfold seg34AccX218
      linear_combination hd
    have hsely : seg34AccY218 rho = seg34AccY217 rho - Bool.toZMod bit * (seg34AccY217 rho - rho 37131) := by
      have hd : rho 37133 = Bool.toZMod bit * (rho 37131 - seg34AccY217 rho) := by
        rw [← hbit, seg34LadderFlatY217_eq]
        unfold seg34LadderFlatY217
        linear_combination -r5861
      unfold seg34AccY218
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

theorem seg34_rung218 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34210 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX218 rho : Seg34.F), (seg34AccY218 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 37137 : Seg34.F), (rho 37138 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX218 rho : Seg34.F), (seg34AccY218 rho : Seg34.F)⟩
        ⟨(rho 37137 : Seg34.F), (rho 37138 : Seg34.F)⟩
        ⟨(seg34AccX219 rho : Seg34.F), (seg34AccY219 rho : Seg34.F)⟩
        ⟨(rho 37151 : Seg34.F), (rho 37152 : Seg34.F)⟩ := by
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
  unfold Seg34.relationRow5867 Seg34.relationLc1125 Seg34.relationLc1125Part0 Seg34.relationLc1125Part1 Seg34.relationLc1125Part2 Seg34.relationLc1125Part3 Seg34.relationLc1125Part4 Seg34.relationLc1125Part5 Seg34.relationLc1125Part6 Seg34.relationLc1125Part7 Seg34.relationLc1125Part8 Seg34.relationLc1125Part9 Seg34.relationLc1125Part10 Seg34.relationLc1125Part11 Seg34.relationLc1125Part12 Seg34.relationLc1125Part13 at r5867
  unfold Seg34.relationRow5868 at r5868
  unfold Seg34.relationRow5869 Seg34.relationLc1126 Seg34.relationLc1126Part0 Seg34.relationLc1126Part1 Seg34.relationLc1126Part2 Seg34.relationLc1126Part3 Seg34.relationLc1126Part4 Seg34.relationLc1126Part5 Seg34.relationLc1126Part6 at r5869
  unfold Seg34.relationRow5870 Seg34.relationLc1127 Seg34.relationLc1127Part0 Seg34.relationLc1127Part1 Seg34.relationLc1127Part2 Seg34.relationLc1127Part3 Seg34.relationLc1127Part4 Seg34.relationLc1127Part5 Seg34.relationLc1127Part6 at r5870
  unfold Seg34.relationRow5871 at r5871
  unfold Seg34.relationRow5872 at r5872
  unfold Seg34.relationRow5873 at r5873
  unfold Seg34.relationRow5874 Seg34.relationLc1128 Seg34.relationLc1128Part0 Seg34.relationLc1128Part1 Seg34.relationLc1128Part2 Seg34.relationLc1128Part3 Seg34.relationLc1128Part4 Seg34.relationLc1128Part5 Seg34.relationLc1128Part6 at r5874
  unfold Seg34.relationRow5875 Seg34.relationLc1129 Seg34.relationLc1129Part0 Seg34.relationLc1129Part1 Seg34.relationLc1129Part2 Seg34.relationLc1129Part3 Seg34.relationLc1129Part4 Seg34.relationLc1129Part5 Seg34.relationLc1129Part6 at r5875
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
    have hsum : seg34AccX218 rho + seg34AccY218 rho = rho 37139 := by
      rw [seg34LadderFlatX218_eq, seg34LadderFlatY218_eq]
      unfold seg34LadderFlatX218 seg34LadderFlatY218
      linear_combination r5867
    have ha0 : (rho 37137 + rho 37138) * (seg34AccX218 rho + seg34AccY218 rho) = rho 37140 := by
      rw [hsum]
      linear_combination r5868
    have ha1 : rho 37138 * seg34AccX218 rho = rho 37141 := by
      rw [seg34LadderFlatX218_eq]
      unfold seg34LadderFlatX218
      linear_combination r5869
    have ha2 : rho 37137 * seg34AccY218 rho = rho 37142 := by
      rw [seg34LadderFlatY218_eq]
      unfold seg34LadderFlatY218
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
        rw [← hbit, seg34LadderFlatX218_eq]
        unfold seg34LadderFlatX218
        linear_combination -r5874
      unfold seg34AccX219
      linear_combination hd
    have hsely : seg34AccY219 rho = seg34AccY218 rho - Bool.toZMod bit * (seg34AccY218 rho - rho 37145) := by
      have hd : rho 37147 = Bool.toZMod bit * (rho 37145 - seg34AccY218 rho) := by
        rw [← hbit, seg34LadderFlatY218_eq]
        unfold seg34LadderFlatY218
        linear_combination -r5875
      unfold seg34AccY219
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

theorem seg34_rung219 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34211 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX219 rho : Seg34.F), (seg34AccY219 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 37151 : Seg34.F), (rho 37152 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX219 rho : Seg34.F), (seg34AccY219 rho : Seg34.F)⟩
        ⟨(rho 37151 : Seg34.F), (rho 37152 : Seg34.F)⟩
        ⟨(seg34AccX220 rho : Seg34.F), (seg34AccY220 rho : Seg34.F)⟩
        ⟨(rho 37165 : Seg34.F), (rho 37166 : Seg34.F)⟩ := by
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
  unfold Seg34.relationRow5881 Seg34.relationLc1130 Seg34.relationLc1130Part0 Seg34.relationLc1130Part1 Seg34.relationLc1130Part2 Seg34.relationLc1130Part3 Seg34.relationLc1130Part4 Seg34.relationLc1130Part5 Seg34.relationLc1130Part6 Seg34.relationLc1130Part7 Seg34.relationLc1130Part8 Seg34.relationLc1130Part9 Seg34.relationLc1130Part10 Seg34.relationLc1130Part11 Seg34.relationLc1130Part12 Seg34.relationLc1130Part13 at r5881
  unfold Seg34.relationRow5882 at r5882
  unfold Seg34.relationRow5883 Seg34.relationLc1131 Seg34.relationLc1131Part0 Seg34.relationLc1131Part1 Seg34.relationLc1131Part2 Seg34.relationLc1131Part3 Seg34.relationLc1131Part4 Seg34.relationLc1131Part5 Seg34.relationLc1131Part6 at r5883
  unfold Seg34.relationRow5884 Seg34.relationLc1132 Seg34.relationLc1132Part0 Seg34.relationLc1132Part1 Seg34.relationLc1132Part2 Seg34.relationLc1132Part3 Seg34.relationLc1132Part4 Seg34.relationLc1132Part5 Seg34.relationLc1132Part6 at r5884
  unfold Seg34.relationRow5885 at r5885
  unfold Seg34.relationRow5886 at r5886
  unfold Seg34.relationRow5887 at r5887
  unfold Seg34.relationRow5888 Seg34.relationLc1133 Seg34.relationLc1133Part0 Seg34.relationLc1133Part1 Seg34.relationLc1133Part2 Seg34.relationLc1133Part3 Seg34.relationLc1133Part4 Seg34.relationLc1133Part5 Seg34.relationLc1133Part6 at r5888
  unfold Seg34.relationRow5889 Seg34.relationLc1134 Seg34.relationLc1134Part0 Seg34.relationLc1134Part1 Seg34.relationLc1134Part2 Seg34.relationLc1134Part3 Seg34.relationLc1134Part4 Seg34.relationLc1134Part5 Seg34.relationLc1134Part6 at r5889
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
    have hsum : seg34AccX219 rho + seg34AccY219 rho = rho 37153 := by
      rw [seg34LadderFlatX219_eq, seg34LadderFlatY219_eq]
      unfold seg34LadderFlatX219 seg34LadderFlatY219
      linear_combination r5881
    have ha0 : (rho 37151 + rho 37152) * (seg34AccX219 rho + seg34AccY219 rho) = rho 37154 := by
      rw [hsum]
      linear_combination r5882
    have ha1 : rho 37152 * seg34AccX219 rho = rho 37155 := by
      rw [seg34LadderFlatX219_eq]
      unfold seg34LadderFlatX219
      linear_combination r5883
    have ha2 : rho 37151 * seg34AccY219 rho = rho 37156 := by
      rw [seg34LadderFlatY219_eq]
      unfold seg34LadderFlatY219
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
        rw [← hbit, seg34LadderFlatX219_eq]
        unfold seg34LadderFlatX219
        linear_combination -r5888
      unfold seg34AccX220
      linear_combination hd
    have hsely : seg34AccY220 rho = seg34AccY219 rho - Bool.toZMod bit * (seg34AccY219 rho - rho 37159) := by
      have hd : rho 37161 = Bool.toZMod bit * (rho 37159 - seg34AccY219 rho) := by
        rw [← hbit, seg34LadderFlatY219_eq]
        unfold seg34LadderFlatY219
        linear_combination -r5889
      unfold seg34AccY220
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

theorem seg34_rung220 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34212 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX220 rho : Seg34.F), (seg34AccY220 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 37165 : Seg34.F), (rho 37166 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX220 rho : Seg34.F), (seg34AccY220 rho : Seg34.F)⟩
        ⟨(rho 37165 : Seg34.F), (rho 37166 : Seg34.F)⟩
        ⟨(seg34AccX221 rho : Seg34.F), (seg34AccY221 rho : Seg34.F)⟩
        ⟨(rho 37179 : Seg34.F), (rho 37180 : Seg34.F)⟩ := by
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
  rcases p73 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5895, r5896, r5897, r5898, r5899, r5900, r5901, r5902, r5903, r5904, r5905, r5906, r5907, r5908, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow5895 Seg34.relationLc1135 Seg34.relationLc1135Part0 Seg34.relationLc1135Part1 Seg34.relationLc1135Part2 Seg34.relationLc1135Part3 Seg34.relationLc1135Part4 Seg34.relationLc1135Part5 Seg34.relationLc1135Part6 Seg34.relationLc1135Part7 Seg34.relationLc1135Part8 Seg34.relationLc1135Part9 Seg34.relationLc1135Part10 Seg34.relationLc1135Part11 Seg34.relationLc1135Part12 Seg34.relationLc1135Part13 at r5895
  unfold Seg34.relationRow5896 at r5896
  unfold Seg34.relationRow5897 Seg34.relationLc1136 Seg34.relationLc1136Part0 Seg34.relationLc1136Part1 Seg34.relationLc1136Part2 Seg34.relationLc1136Part3 Seg34.relationLc1136Part4 Seg34.relationLc1136Part5 Seg34.relationLc1136Part6 at r5897
  unfold Seg34.relationRow5898 Seg34.relationLc1137 Seg34.relationLc1137Part0 Seg34.relationLc1137Part1 Seg34.relationLc1137Part2 Seg34.relationLc1137Part3 Seg34.relationLc1137Part4 Seg34.relationLc1137Part5 Seg34.relationLc1137Part6 at r5898
  unfold Seg34.relationRow5899 at r5899
  unfold Seg34.relationRow5900 at r5900
  unfold Seg34.relationRow5901 at r5901
  unfold Seg34.relationRow5902 Seg34.relationLc1138 Seg34.relationLc1138Part0 Seg34.relationLc1138Part1 Seg34.relationLc1138Part2 Seg34.relationLc1138Part3 Seg34.relationLc1138Part4 Seg34.relationLc1138Part5 Seg34.relationLc1138Part6 at r5902
  unfold Seg34.relationRow5903 Seg34.relationLc1139 Seg34.relationLc1139Part0 Seg34.relationLc1139Part1 Seg34.relationLc1139Part2 Seg34.relationLc1139Part3 Seg34.relationLc1139Part4 Seg34.relationLc1139Part5 Seg34.relationLc1139Part6 at r5903
  unfold Seg34.relationRow5904 at r5904
  unfold Seg34.relationRow5905 at r5905
  unfold Seg34.relationRow5906 at r5906
  unfold Seg34.relationRow5907 at r5907
  unfold Seg34.relationRow5908 at r5908
  have hrung220 (bit : Bool) (hbit : rho 34212 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX220 rho : Seg34.F), (seg34AccY220 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 37165 : Seg34.F), (rho 37166 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX220 rho : Seg34.F), (seg34AccY220 rho : Seg34.F)⟩
        ⟨(rho 37165 : Seg34.F), (rho 37166 : Seg34.F)⟩
        ⟨(seg34AccX221 rho : Seg34.F), (seg34AccY221 rho : Seg34.F)⟩
        ⟨(rho 37179 : Seg34.F), (rho 37180 : Seg34.F)⟩ := by
    have hsum : seg34AccX220 rho + seg34AccY220 rho = rho 37167 := by
      rw [seg34LadderFlatX220_eq, seg34LadderFlatY220_eq]
      unfold seg34LadderFlatX220 seg34LadderFlatY220
      linear_combination r5895
    have ha0 : (rho 37165 + rho 37166) * (seg34AccX220 rho + seg34AccY220 rho) = rho 37168 := by
      rw [hsum]
      linear_combination r5896
    have ha1 : rho 37166 * seg34AccX220 rho = rho 37169 := by
      rw [seg34LadderFlatX220_eq]
      unfold seg34LadderFlatX220
      linear_combination r5897
    have ha2 : rho 37165 * seg34AccY220 rho = rho 37170 := by
      rw [seg34LadderFlatY220_eq]
      unfold seg34LadderFlatY220
      linear_combination r5898
    have ha3 : 3021 * rho 37169 * rho 37170 = rho 37171 := by
      linear_combination r5899
    have ha4 : rho 37172 * (1 + rho 37171) = rho 37169 + rho 37170 := by
      linear_combination r5900
    have ha5 : rho 37173 * (1 - rho 37171) = rho 37168 - rho 37169 - rho 37170 := by
      linear_combination r5901
    have haddx :
        rho 37172 * (1 + 3021 * (rho 37166 * seg34AccX220 rho) * (rho 37165 * seg34AccY220 rho)) =
          rho 37166 * seg34AccX220 rho + rho 37165 * seg34AccY220 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 37173 * (1 - 3021 * (rho 37166 * seg34AccX220 rho) * (rho 37165 * seg34AccY220 rho)) =
          (-1) * (rho 37166 * seg34AccX220 rho) - rho 37165 * seg34AccY220 rho +
            (seg34AccY220 rho - seg34AccX220 rho * (-1)) * (rho 37165 + rho 37166) := by
      rw [ha1, ha2, ha3]
      calc
        rho 37173 * (1 - rho 37171) = rho 37168 - rho 37169 - rho 37170 := ha5
        _ = (-1) * rho 37169 - rho 37170 + (seg34AccY220 rho - seg34AccX220 rho * (-1)) * (rho 37165 + rho 37166) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX221 rho = seg34AccX220 rho - Bool.toZMod bit * (seg34AccX220 rho - rho 37172) := by
      have hd : rho 37174 = Bool.toZMod bit * (rho 37172 - seg34AccX220 rho) := by
        rw [← hbit, seg34LadderFlatX220_eq]
        unfold seg34LadderFlatX220
        linear_combination -r5902
      unfold seg34AccX221
      linear_combination hd
    have hsely : seg34AccY221 rho = seg34AccY220 rho - Bool.toZMod bit * (seg34AccY220 rho - rho 37173) := by
      have hd : rho 37175 = Bool.toZMod bit * (rho 37173 - seg34AccY220 rho) := by
        rw [← hbit, seg34LadderFlatY220_eq]
        unfold seg34LadderFlatY220
        linear_combination -r5903
      unfold seg34AccY221
      linear_combination hd
    have hd0 : rho 37165 * rho 37166 = rho 37176 := by linear_combination r5904
    have hd1 : rho 37165 * rho 37165 = rho 37177 := by linear_combination r5905
    have hd2 : rho 37166 * rho 37166 = rho 37178 := by linear_combination r5906
    have hd3 : rho 37179 * (rho 37166 * rho 37166 + rho 37165 * rho 37165 * (-1)) = 2 * (rho 37165 * rho 37166) := by
      rw [hd0, hd1, hd2]
      linear_combination r5907
    have hd4 : rho 37180 * (2 - (rho 37166 * rho 37166 + rho 37165 * rho 37165 * (-1))) = rho 37166 * rho 37166 - rho 37165 * rho 37165 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5908
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX220 rho : Seg34.F), (seg34AccY220 rho : Seg34.F)⟩
      ⟨(rho 37165 : Seg34.F), (rho 37166 : Seg34.F)⟩
      ⟨(rho 37172 : Seg34.F), (rho 37173 : Seg34.F)⟩
      ⟨(seg34AccX221 rho : Seg34.F), (seg34AccY221 rho : Seg34.F)⟩
      ⟨(rho 37179 : Seg34.F), (rho 37180 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung220

theorem seg34_rung221 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34213 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX221 rho : Seg34.F), (seg34AccY221 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 37179 : Seg34.F), (rho 37180 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX221 rho : Seg34.F), (seg34AccY221 rho : Seg34.F)⟩
        ⟨(rho 37179 : Seg34.F), (rho 37180 : Seg34.F)⟩
        ⟨(seg34AccX222 rho : Seg34.F), (seg34AccY222 rho : Seg34.F)⟩
        ⟨(rho 37193 : Seg34.F), (rho 37194 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart73 at p73
  rcases p73 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5909, r5910, r5911, r5912, r5913, r5914, r5915, r5916, r5917, r5918, r5919⟩
  unfold Seg34.relationPart74 at p74
  rcases p74 with ⟨r5920, r5921, r5922, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow5909 Seg34.relationLc1140 Seg34.relationLc1140Part0 Seg34.relationLc1140Part1 Seg34.relationLc1140Part2 Seg34.relationLc1140Part3 Seg34.relationLc1140Part4 Seg34.relationLc1140Part5 Seg34.relationLc1140Part6 Seg34.relationLc1140Part7 Seg34.relationLc1140Part8 Seg34.relationLc1140Part9 Seg34.relationLc1140Part10 Seg34.relationLc1140Part11 Seg34.relationLc1140Part12 Seg34.relationLc1140Part13 at r5909
  unfold Seg34.relationRow5910 at r5910
  unfold Seg34.relationRow5911 Seg34.relationLc1141 Seg34.relationLc1141Part0 Seg34.relationLc1141Part1 Seg34.relationLc1141Part2 Seg34.relationLc1141Part3 Seg34.relationLc1141Part4 Seg34.relationLc1141Part5 Seg34.relationLc1141Part6 at r5911
  unfold Seg34.relationRow5912 Seg34.relationLc1142 Seg34.relationLc1142Part0 Seg34.relationLc1142Part1 Seg34.relationLc1142Part2 Seg34.relationLc1142Part3 Seg34.relationLc1142Part4 Seg34.relationLc1142Part5 Seg34.relationLc1142Part6 at r5912
  unfold Seg34.relationRow5913 at r5913
  unfold Seg34.relationRow5914 at r5914
  unfold Seg34.relationRow5915 at r5915
  unfold Seg34.relationRow5916 Seg34.relationLc1143 Seg34.relationLc1143Part0 Seg34.relationLc1143Part1 Seg34.relationLc1143Part2 Seg34.relationLc1143Part3 Seg34.relationLc1143Part4 Seg34.relationLc1143Part5 Seg34.relationLc1143Part6 at r5916
  unfold Seg34.relationRow5917 Seg34.relationLc1144 Seg34.relationLc1144Part0 Seg34.relationLc1144Part1 Seg34.relationLc1144Part2 Seg34.relationLc1144Part3 Seg34.relationLc1144Part4 Seg34.relationLc1144Part5 Seg34.relationLc1144Part6 at r5917
  unfold Seg34.relationRow5918 at r5918
  unfold Seg34.relationRow5919 at r5919
  unfold Seg34.relationRow5920 at r5920
  unfold Seg34.relationRow5921 at r5921
  unfold Seg34.relationRow5922 at r5922
  have hrung221 (bit : Bool) (hbit : rho 34213 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX221 rho : Seg34.F), (seg34AccY221 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 37179 : Seg34.F), (rho 37180 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX221 rho : Seg34.F), (seg34AccY221 rho : Seg34.F)⟩
        ⟨(rho 37179 : Seg34.F), (rho 37180 : Seg34.F)⟩
        ⟨(seg34AccX222 rho : Seg34.F), (seg34AccY222 rho : Seg34.F)⟩
        ⟨(rho 37193 : Seg34.F), (rho 37194 : Seg34.F)⟩ := by
    have hsum : seg34AccX221 rho + seg34AccY221 rho = rho 37181 := by
      rw [seg34LadderFlatX221_eq, seg34LadderFlatY221_eq]
      unfold seg34LadderFlatX221 seg34LadderFlatY221
      linear_combination r5909
    have ha0 : (rho 37179 + rho 37180) * (seg34AccX221 rho + seg34AccY221 rho) = rho 37182 := by
      rw [hsum]
      linear_combination r5910
    have ha1 : rho 37180 * seg34AccX221 rho = rho 37183 := by
      rw [seg34LadderFlatX221_eq]
      unfold seg34LadderFlatX221
      linear_combination r5911
    have ha2 : rho 37179 * seg34AccY221 rho = rho 37184 := by
      rw [seg34LadderFlatY221_eq]
      unfold seg34LadderFlatY221
      linear_combination r5912
    have ha3 : 3021 * rho 37183 * rho 37184 = rho 37185 := by
      linear_combination r5913
    have ha4 : rho 37186 * (1 + rho 37185) = rho 37183 + rho 37184 := by
      linear_combination r5914
    have ha5 : rho 37187 * (1 - rho 37185) = rho 37182 - rho 37183 - rho 37184 := by
      linear_combination r5915
    have haddx :
        rho 37186 * (1 + 3021 * (rho 37180 * seg34AccX221 rho) * (rho 37179 * seg34AccY221 rho)) =
          rho 37180 * seg34AccX221 rho + rho 37179 * seg34AccY221 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 37187 * (1 - 3021 * (rho 37180 * seg34AccX221 rho) * (rho 37179 * seg34AccY221 rho)) =
          (-1) * (rho 37180 * seg34AccX221 rho) - rho 37179 * seg34AccY221 rho +
            (seg34AccY221 rho - seg34AccX221 rho * (-1)) * (rho 37179 + rho 37180) := by
      rw [ha1, ha2, ha3]
      calc
        rho 37187 * (1 - rho 37185) = rho 37182 - rho 37183 - rho 37184 := ha5
        _ = (-1) * rho 37183 - rho 37184 + (seg34AccY221 rho - seg34AccX221 rho * (-1)) * (rho 37179 + rho 37180) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX222 rho = seg34AccX221 rho - Bool.toZMod bit * (seg34AccX221 rho - rho 37186) := by
      have hd : rho 37188 = Bool.toZMod bit * (rho 37186 - seg34AccX221 rho) := by
        rw [← hbit, seg34LadderFlatX221_eq]
        unfold seg34LadderFlatX221
        linear_combination -r5916
      unfold seg34AccX222
      linear_combination hd
    have hsely : seg34AccY222 rho = seg34AccY221 rho - Bool.toZMod bit * (seg34AccY221 rho - rho 37187) := by
      have hd : rho 37189 = Bool.toZMod bit * (rho 37187 - seg34AccY221 rho) := by
        rw [← hbit, seg34LadderFlatY221_eq]
        unfold seg34LadderFlatY221
        linear_combination -r5917
      unfold seg34AccY222
      linear_combination hd
    have hd0 : rho 37179 * rho 37180 = rho 37190 := by linear_combination r5918
    have hd1 : rho 37179 * rho 37179 = rho 37191 := by linear_combination r5919
    have hd2 : rho 37180 * rho 37180 = rho 37192 := by linear_combination r5920
    have hd3 : rho 37193 * (rho 37180 * rho 37180 + rho 37179 * rho 37179 * (-1)) = 2 * (rho 37179 * rho 37180) := by
      rw [hd0, hd1, hd2]
      linear_combination r5921
    have hd4 : rho 37194 * (2 - (rho 37180 * rho 37180 + rho 37179 * rho 37179 * (-1))) = rho 37180 * rho 37180 - rho 37179 * rho 37179 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5922
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX221 rho : Seg34.F), (seg34AccY221 rho : Seg34.F)⟩
      ⟨(rho 37179 : Seg34.F), (rho 37180 : Seg34.F)⟩
      ⟨(rho 37186 : Seg34.F), (rho 37187 : Seg34.F)⟩
      ⟨(seg34AccX222 rho : Seg34.F), (seg34AccY222 rho : Seg34.F)⟩
      ⟨(rho 37193 : Seg34.F), (rho 37194 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung221

theorem seg34_rung222 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34214 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX222 rho : Seg34.F), (seg34AccY222 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 37193 : Seg34.F), (rho 37194 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX222 rho : Seg34.F), (seg34AccY222 rho : Seg34.F)⟩
        ⟨(rho 37193 : Seg34.F), (rho 37194 : Seg34.F)⟩
        ⟨(seg34AccX223 rho : Seg34.F), (seg34AccY223 rho : Seg34.F)⟩
        ⟨(rho 37207 : Seg34.F), (rho 37208 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart74 at p74
  rcases p74 with ⟨_, _, _, r5923, r5924, r5925, r5926, r5927, r5928, r5929, r5930, r5931, r5932, r5933, r5934, r5935, r5936, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow5923 Seg34.relationLc1145 Seg34.relationLc1145Part0 Seg34.relationLc1145Part1 Seg34.relationLc1145Part2 Seg34.relationLc1145Part3 Seg34.relationLc1145Part4 Seg34.relationLc1145Part5 Seg34.relationLc1145Part6 Seg34.relationLc1145Part7 Seg34.relationLc1145Part8 Seg34.relationLc1145Part9 Seg34.relationLc1145Part10 Seg34.relationLc1145Part11 Seg34.relationLc1145Part12 Seg34.relationLc1145Part13 at r5923
  unfold Seg34.relationRow5924 at r5924
  unfold Seg34.relationRow5925 Seg34.relationLc1146 Seg34.relationLc1146Part0 Seg34.relationLc1146Part1 Seg34.relationLc1146Part2 Seg34.relationLc1146Part3 Seg34.relationLc1146Part4 Seg34.relationLc1146Part5 Seg34.relationLc1146Part6 at r5925
  unfold Seg34.relationRow5926 Seg34.relationLc1147 Seg34.relationLc1147Part0 Seg34.relationLc1147Part1 Seg34.relationLc1147Part2 Seg34.relationLc1147Part3 Seg34.relationLc1147Part4 Seg34.relationLc1147Part5 Seg34.relationLc1147Part6 at r5926
  unfold Seg34.relationRow5927 at r5927
  unfold Seg34.relationRow5928 at r5928
  unfold Seg34.relationRow5929 at r5929
  unfold Seg34.relationRow5930 Seg34.relationLc1148 Seg34.relationLc1148Part0 Seg34.relationLc1148Part1 Seg34.relationLc1148Part2 Seg34.relationLc1148Part3 Seg34.relationLc1148Part4 Seg34.relationLc1148Part5 Seg34.relationLc1148Part6 at r5930
  unfold Seg34.relationRow5931 Seg34.relationLc1149 Seg34.relationLc1149Part0 Seg34.relationLc1149Part1 Seg34.relationLc1149Part2 Seg34.relationLc1149Part3 Seg34.relationLc1149Part4 Seg34.relationLc1149Part5 Seg34.relationLc1149Part6 at r5931
  unfold Seg34.relationRow5932 at r5932
  unfold Seg34.relationRow5933 at r5933
  unfold Seg34.relationRow5934 at r5934
  unfold Seg34.relationRow5935 at r5935
  unfold Seg34.relationRow5936 at r5936
  have hrung222 (bit : Bool) (hbit : rho 34214 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX222 rho : Seg34.F), (seg34AccY222 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 37193 : Seg34.F), (rho 37194 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX222 rho : Seg34.F), (seg34AccY222 rho : Seg34.F)⟩
        ⟨(rho 37193 : Seg34.F), (rho 37194 : Seg34.F)⟩
        ⟨(seg34AccX223 rho : Seg34.F), (seg34AccY223 rho : Seg34.F)⟩
        ⟨(rho 37207 : Seg34.F), (rho 37208 : Seg34.F)⟩ := by
    have hsum : seg34AccX222 rho + seg34AccY222 rho = rho 37195 := by
      rw [seg34LadderFlatX222_eq, seg34LadderFlatY222_eq]
      unfold seg34LadderFlatX222 seg34LadderFlatY222
      linear_combination r5923
    have ha0 : (rho 37193 + rho 37194) * (seg34AccX222 rho + seg34AccY222 rho) = rho 37196 := by
      rw [hsum]
      linear_combination r5924
    have ha1 : rho 37194 * seg34AccX222 rho = rho 37197 := by
      rw [seg34LadderFlatX222_eq]
      unfold seg34LadderFlatX222
      linear_combination r5925
    have ha2 : rho 37193 * seg34AccY222 rho = rho 37198 := by
      rw [seg34LadderFlatY222_eq]
      unfold seg34LadderFlatY222
      linear_combination r5926
    have ha3 : 3021 * rho 37197 * rho 37198 = rho 37199 := by
      linear_combination r5927
    have ha4 : rho 37200 * (1 + rho 37199) = rho 37197 + rho 37198 := by
      linear_combination r5928
    have ha5 : rho 37201 * (1 - rho 37199) = rho 37196 - rho 37197 - rho 37198 := by
      linear_combination r5929
    have haddx :
        rho 37200 * (1 + 3021 * (rho 37194 * seg34AccX222 rho) * (rho 37193 * seg34AccY222 rho)) =
          rho 37194 * seg34AccX222 rho + rho 37193 * seg34AccY222 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 37201 * (1 - 3021 * (rho 37194 * seg34AccX222 rho) * (rho 37193 * seg34AccY222 rho)) =
          (-1) * (rho 37194 * seg34AccX222 rho) - rho 37193 * seg34AccY222 rho +
            (seg34AccY222 rho - seg34AccX222 rho * (-1)) * (rho 37193 + rho 37194) := by
      rw [ha1, ha2, ha3]
      calc
        rho 37201 * (1 - rho 37199) = rho 37196 - rho 37197 - rho 37198 := ha5
        _ = (-1) * rho 37197 - rho 37198 + (seg34AccY222 rho - seg34AccX222 rho * (-1)) * (rho 37193 + rho 37194) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX223 rho = seg34AccX222 rho - Bool.toZMod bit * (seg34AccX222 rho - rho 37200) := by
      have hd : rho 37202 = Bool.toZMod bit * (rho 37200 - seg34AccX222 rho) := by
        rw [← hbit, seg34LadderFlatX222_eq]
        unfold seg34LadderFlatX222
        linear_combination -r5930
      unfold seg34AccX223
      linear_combination hd
    have hsely : seg34AccY223 rho = seg34AccY222 rho - Bool.toZMod bit * (seg34AccY222 rho - rho 37201) := by
      have hd : rho 37203 = Bool.toZMod bit * (rho 37201 - seg34AccY222 rho) := by
        rw [← hbit, seg34LadderFlatY222_eq]
        unfold seg34LadderFlatY222
        linear_combination -r5931
      unfold seg34AccY223
      linear_combination hd
    have hd0 : rho 37193 * rho 37194 = rho 37204 := by linear_combination r5932
    have hd1 : rho 37193 * rho 37193 = rho 37205 := by linear_combination r5933
    have hd2 : rho 37194 * rho 37194 = rho 37206 := by linear_combination r5934
    have hd3 : rho 37207 * (rho 37194 * rho 37194 + rho 37193 * rho 37193 * (-1)) = 2 * (rho 37193 * rho 37194) := by
      rw [hd0, hd1, hd2]
      linear_combination r5935
    have hd4 : rho 37208 * (2 - (rho 37194 * rho 37194 + rho 37193 * rho 37193 * (-1))) = rho 37194 * rho 37194 - rho 37193 * rho 37193 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5936
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX222 rho : Seg34.F), (seg34AccY222 rho : Seg34.F)⟩
      ⟨(rho 37193 : Seg34.F), (rho 37194 : Seg34.F)⟩
      ⟨(rho 37200 : Seg34.F), (rho 37201 : Seg34.F)⟩
      ⟨(seg34AccX223 rho : Seg34.F), (seg34AccY223 rho : Seg34.F)⟩
      ⟨(rho 37207 : Seg34.F), (rho 37208 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung222

theorem seg34_rung223 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34215 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX223 rho : Seg34.F), (seg34AccY223 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 37207 : Seg34.F), (rho 37208 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX223 rho : Seg34.F), (seg34AccY223 rho : Seg34.F)⟩
        ⟨(rho 37207 : Seg34.F), (rho 37208 : Seg34.F)⟩
        ⟨(seg34AccX224 rho : Seg34.F), (seg34AccY224 rho : Seg34.F)⟩
        ⟨(rho 37221 : Seg34.F), (rho 37222 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart74 at p74
  rcases p74 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5937, r5938, r5939, r5940, r5941, r5942, r5943, r5944, r5945, r5946, r5947, r5948, r5949, r5950, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow5937 Seg34.relationLc1150 Seg34.relationLc1150Part0 Seg34.relationLc1150Part1 Seg34.relationLc1150Part2 Seg34.relationLc1150Part3 Seg34.relationLc1150Part4 Seg34.relationLc1150Part5 Seg34.relationLc1150Part6 Seg34.relationLc1150Part7 Seg34.relationLc1150Part8 Seg34.relationLc1150Part9 Seg34.relationLc1150Part10 Seg34.relationLc1150Part11 Seg34.relationLc1150Part12 Seg34.relationLc1150Part13 at r5937
  unfold Seg34.relationRow5938 at r5938
  unfold Seg34.relationRow5939 Seg34.relationLc1151 Seg34.relationLc1151Part0 Seg34.relationLc1151Part1 Seg34.relationLc1151Part2 Seg34.relationLc1151Part3 Seg34.relationLc1151Part4 Seg34.relationLc1151Part5 Seg34.relationLc1151Part6 at r5939
  unfold Seg34.relationRow5940 Seg34.relationLc1152 Seg34.relationLc1152Part0 Seg34.relationLc1152Part1 Seg34.relationLc1152Part2 Seg34.relationLc1152Part3 Seg34.relationLc1152Part4 Seg34.relationLc1152Part5 Seg34.relationLc1152Part6 at r5940
  unfold Seg34.relationRow5941 at r5941
  unfold Seg34.relationRow5942 at r5942
  unfold Seg34.relationRow5943 at r5943
  unfold Seg34.relationRow5944 Seg34.relationLc1153 Seg34.relationLc1153Part0 Seg34.relationLc1153Part1 Seg34.relationLc1153Part2 Seg34.relationLc1153Part3 Seg34.relationLc1153Part4 Seg34.relationLc1153Part5 Seg34.relationLc1153Part6 at r5944
  unfold Seg34.relationRow5945 Seg34.relationLc1154 Seg34.relationLc1154Part0 Seg34.relationLc1154Part1 Seg34.relationLc1154Part2 Seg34.relationLc1154Part3 Seg34.relationLc1154Part4 Seg34.relationLc1154Part5 Seg34.relationLc1154Part6 Seg34.relationLc1154Part7 at r5945
  unfold Seg34.relationRow5946 at r5946
  unfold Seg34.relationRow5947 at r5947
  unfold Seg34.relationRow5948 at r5948
  unfold Seg34.relationRow5949 at r5949
  unfold Seg34.relationRow5950 at r5950
  have hrung223 (bit : Bool) (hbit : rho 34215 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX223 rho : Seg34.F), (seg34AccY223 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 37207 : Seg34.F), (rho 37208 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX223 rho : Seg34.F), (seg34AccY223 rho : Seg34.F)⟩
        ⟨(rho 37207 : Seg34.F), (rho 37208 : Seg34.F)⟩
        ⟨(seg34AccX224 rho : Seg34.F), (seg34AccY224 rho : Seg34.F)⟩
        ⟨(rho 37221 : Seg34.F), (rho 37222 : Seg34.F)⟩ := by
    have hsum : seg34AccX223 rho + seg34AccY223 rho = rho 37209 := by
      rw [seg34LadderFlatX223_eq, seg34LadderFlatY223_eq]
      unfold seg34LadderFlatX223 seg34LadderFlatY223
      linear_combination r5937
    have ha0 : (rho 37207 + rho 37208) * (seg34AccX223 rho + seg34AccY223 rho) = rho 37210 := by
      rw [hsum]
      linear_combination r5938
    have ha1 : rho 37208 * seg34AccX223 rho = rho 37211 := by
      rw [seg34LadderFlatX223_eq]
      unfold seg34LadderFlatX223
      linear_combination r5939
    have ha2 : rho 37207 * seg34AccY223 rho = rho 37212 := by
      rw [seg34LadderFlatY223_eq]
      unfold seg34LadderFlatY223
      linear_combination r5940
    have ha3 : 3021 * rho 37211 * rho 37212 = rho 37213 := by
      linear_combination r5941
    have ha4 : rho 37214 * (1 + rho 37213) = rho 37211 + rho 37212 := by
      linear_combination r5942
    have ha5 : rho 37215 * (1 - rho 37213) = rho 37210 - rho 37211 - rho 37212 := by
      linear_combination r5943
    have haddx :
        rho 37214 * (1 + 3021 * (rho 37208 * seg34AccX223 rho) * (rho 37207 * seg34AccY223 rho)) =
          rho 37208 * seg34AccX223 rho + rho 37207 * seg34AccY223 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 37215 * (1 - 3021 * (rho 37208 * seg34AccX223 rho) * (rho 37207 * seg34AccY223 rho)) =
          (-1) * (rho 37208 * seg34AccX223 rho) - rho 37207 * seg34AccY223 rho +
            (seg34AccY223 rho - seg34AccX223 rho * (-1)) * (rho 37207 + rho 37208) := by
      rw [ha1, ha2, ha3]
      calc
        rho 37215 * (1 - rho 37213) = rho 37210 - rho 37211 - rho 37212 := ha5
        _ = (-1) * rho 37211 - rho 37212 + (seg34AccY223 rho - seg34AccX223 rho * (-1)) * (rho 37207 + rho 37208) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX224 rho = seg34AccX223 rho - Bool.toZMod bit * (seg34AccX223 rho - rho 37214) := by
      have hd : rho 37216 = Bool.toZMod bit * (rho 37214 - seg34AccX223 rho) := by
        rw [← hbit, seg34LadderFlatX223_eq]
        unfold seg34LadderFlatX223
        linear_combination -r5944
      unfold seg34AccX224
      linear_combination hd
    have hsely : seg34AccY224 rho = seg34AccY223 rho - Bool.toZMod bit * (seg34AccY223 rho - rho 37215) := by
      have hd : rho 37217 = Bool.toZMod bit * (rho 37215 - seg34AccY223 rho) := by
        rw [← hbit, seg34LadderFlatY223_eq]
        unfold seg34LadderFlatY223
        linear_combination -r5945
      unfold seg34AccY224
      linear_combination hd
    have hd0 : rho 37207 * rho 37208 = rho 37218 := by linear_combination r5946
    have hd1 : rho 37207 * rho 37207 = rho 37219 := by linear_combination r5947
    have hd2 : rho 37208 * rho 37208 = rho 37220 := by linear_combination r5948
    have hd3 : rho 37221 * (rho 37208 * rho 37208 + rho 37207 * rho 37207 * (-1)) = 2 * (rho 37207 * rho 37208) := by
      rw [hd0, hd1, hd2]
      linear_combination r5949
    have hd4 : rho 37222 * (2 - (rho 37208 * rho 37208 + rho 37207 * rho 37207 * (-1))) = rho 37208 * rho 37208 - rho 37207 * rho 37207 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5950
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX223 rho : Seg34.F), (seg34AccY223 rho : Seg34.F)⟩
      ⟨(rho 37207 : Seg34.F), (rho 37208 : Seg34.F)⟩
      ⟨(rho 37214 : Seg34.F), (rho 37215 : Seg34.F)⟩
      ⟨(seg34AccX224 rho : Seg34.F), (seg34AccY224 rho : Seg34.F)⟩
      ⟨(rho 37221 : Seg34.F), (rho 37222 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung223

theorem seg34_hstep_c6 (rho : Nat -> Seg34.F) (h : Seg34.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (33992 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 192 ≤ i → i < 224 →
      EdwardsBridge.onCurve (seg34LadderAccState rho i) →
      EdwardsBridge.onCurve (seg34LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg34LadderAccState rho i) (seg34LadderCurState rho i)
        (seg34LadderAccState rho (i + 1)) (seg34LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg34_rung192 rho h bits[192]! (hbitAt 192 (by omega)) hacc hcur
  · exact seg34_rung193 rho h bits[193]! (hbitAt 193 (by omega)) hacc hcur
  · exact seg34_rung194 rho h bits[194]! (hbitAt 194 (by omega)) hacc hcur
  · exact seg34_rung195 rho h bits[195]! (hbitAt 195 (by omega)) hacc hcur
  · exact seg34_rung196 rho h bits[196]! (hbitAt 196 (by omega)) hacc hcur
  · exact seg34_rung197 rho h bits[197]! (hbitAt 197 (by omega)) hacc hcur
  · exact seg34_rung198 rho h bits[198]! (hbitAt 198 (by omega)) hacc hcur
  · exact seg34_rung199 rho h bits[199]! (hbitAt 199 (by omega)) hacc hcur
  · exact seg34_rung200 rho h bits[200]! (hbitAt 200 (by omega)) hacc hcur
  · exact seg34_rung201 rho h bits[201]! (hbitAt 201 (by omega)) hacc hcur
  · exact seg34_rung202 rho h bits[202]! (hbitAt 202 (by omega)) hacc hcur
  · exact seg34_rung203 rho h bits[203]! (hbitAt 203 (by omega)) hacc hcur
  · exact seg34_rung204 rho h bits[204]! (hbitAt 204 (by omega)) hacc hcur
  · exact seg34_rung205 rho h bits[205]! (hbitAt 205 (by omega)) hacc hcur
  · exact seg34_rung206 rho h bits[206]! (hbitAt 206 (by omega)) hacc hcur
  · exact seg34_rung207 rho h bits[207]! (hbitAt 207 (by omega)) hacc hcur
  · exact seg34_rung208 rho h bits[208]! (hbitAt 208 (by omega)) hacc hcur
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
  · exact seg34_rung220 rho h bits[220]! (hbitAt 220 (by omega)) hacc hcur
  · exact seg34_rung221 rho h bits[221]! (hbitAt 221 (by omega)) hacc hcur
  · exact seg34_rung222 rho h bits[222]! (hbitAt 222 (by omega)) hacc hcur
  · exact seg34_rung223 rho h bits[223]! (hbitAt 223 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
