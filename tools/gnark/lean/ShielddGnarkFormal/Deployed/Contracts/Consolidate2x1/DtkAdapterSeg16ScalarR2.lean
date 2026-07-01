import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg16_rung64 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15356 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX64 rho : Seg16.F), (seg16AccY64 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16367 : Seg16.F), (rho 16368 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX64 rho : Seg16.F), (seg16AccY64 rho : Seg16.F)⟩
        ⟨(rho 16367 : Seg16.F), (rho 16368 : Seg16.F)⟩
        ⟨(seg16AccX65 rho : Seg16.F), (seg16AccY65 rho : Seg16.F)⟩
        ⟨(rho 16380 : Seg16.F), (rho 16381 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p47, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart47 at p47
  rcases p47 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3797, r3798, r3799, r3800, r3801, r3802, r3803, r3804, r3805, r3806, r3807, r3808, r3809, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow3797 Seg16.relationLc355 Seg16.relationLc355Part0 Seg16.relationLc355Part1 Seg16.relationLc355Part2 Seg16.relationLc355Part3 Seg16.relationLc355Part4 at r3797
  unfold Seg16.relationRow3798 Seg16.relationLc356 Seg16.relationLc356Part0 Seg16.relationLc356Part1 at r3798
  unfold Seg16.relationRow3799 Seg16.relationLc357 Seg16.relationLc357Part0 Seg16.relationLc357Part1 Seg16.relationLc357Part2 at r3799
  unfold Seg16.relationRow3800 at r3800
  unfold Seg16.relationRow3801 at r3801
  unfold Seg16.relationRow3802 at r3802
  unfold Seg16.relationRow3803 Seg16.relationLc358 Seg16.relationLc358Part0 Seg16.relationLc358Part1 Seg16.relationLc358Part2 at r3803
  unfold Seg16.relationRow3804 Seg16.relationLc359 Seg16.relationLc359Part0 Seg16.relationLc359Part1 Seg16.relationLc359Part2 at r3804
  unfold Seg16.relationRow3805 at r3805
  unfold Seg16.relationRow3806 at r3806
  unfold Seg16.relationRow3807 at r3807
  unfold Seg16.relationRow3808 at r3808
  unfold Seg16.relationRow3809 at r3809
  have hrung64 (bit : Bool) (hbit : rho 15356 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX64 rho : Seg16.F), (seg16AccY64 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16367 : Seg16.F), (rho 16368 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX64 rho : Seg16.F), (seg16AccY64 rho : Seg16.F)⟩
        ⟨(rho 16367 : Seg16.F), (rho 16368 : Seg16.F)⟩
        ⟨(seg16AccX65 rho : Seg16.F), (seg16AccY65 rho : Seg16.F)⟩
        ⟨(rho 16380 : Seg16.F), (rho 16381 : Seg16.F)⟩ := by
    have ha0 : (rho 16367 + rho 16368) * (seg16AccX64 rho + seg16AccY64 rho) = rho 16369 := by
      rw [seg16LadderFlatX64_eq, seg16LadderFlatY64_eq]
      unfold seg16LadderFlatX64 seg16LadderFlatY64
      linear_combination r3797
    have ha1 : rho 16368 * seg16AccX64 rho = rho 16370 := by
      rw [seg16LadderFlatX64_eq]
      unfold seg16LadderFlatX64
      linear_combination r3798
    have ha2 : rho 16367 * seg16AccY64 rho = rho 16371 := by
      rw [seg16LadderFlatY64_eq]
      unfold seg16LadderFlatY64
      linear_combination r3799
    have ha3 : 3021 * rho 16370 * rho 16371 = rho 16372 := by
      linear_combination r3800
    have ha4 : rho 16373 * (1 + rho 16372) = rho 16370 + rho 16371 := by
      linear_combination r3801
    have ha5 : rho 16374 * (1 - rho 16372) = rho 16369 - rho 16370 - rho 16371 := by
      linear_combination r3802
    have haddx :
        rho 16373 * (1 + 3021 * (rho 16368 * seg16AccX64 rho) * (rho 16367 * seg16AccY64 rho)) =
          rho 16368 * seg16AccX64 rho + rho 16367 * seg16AccY64 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16374 * (1 - 3021 * (rho 16368 * seg16AccX64 rho) * (rho 16367 * seg16AccY64 rho)) =
          (-1) * (rho 16368 * seg16AccX64 rho) - rho 16367 * seg16AccY64 rho +
            (seg16AccY64 rho - seg16AccX64 rho * (-1)) * (rho 16367 + rho 16368) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16374 * (1 - rho 16372) = rho 16369 - rho 16370 - rho 16371 := ha5
        _ = (-1) * rho 16370 - rho 16371 + (seg16AccY64 rho - seg16AccX64 rho * (-1)) * (rho 16367 + rho 16368) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX65 rho = seg16AccX64 rho - Bool.toZMod bit * (seg16AccX64 rho - rho 16373) := by
      have hd : rho 16375 = Bool.toZMod bit * (rho 16373 - seg16AccX64 rho) := by
        rw [← hbit, seg16LadderFlatX64_eq]
        unfold seg16LadderFlatX64
        linear_combination -r3803
      unfold seg16AccX65
      linear_combination hd
    have hsely : seg16AccY65 rho = seg16AccY64 rho - Bool.toZMod bit * (seg16AccY64 rho - rho 16374) := by
      have hd : rho 16376 = Bool.toZMod bit * (rho 16374 - seg16AccY64 rho) := by
        rw [← hbit, seg16LadderFlatY64_eq]
        unfold seg16LadderFlatY64
        linear_combination -r3804
      unfold seg16AccY65
      linear_combination hd
    have hd0 : rho 16367 * rho 16368 = rho 16377 := by linear_combination r3805
    have hd1 : rho 16367 * rho 16367 = rho 16378 := by linear_combination r3806
    have hd2 : rho 16368 * rho 16368 = rho 16379 := by linear_combination r3807
    have hd3 : rho 16380 * (rho 16368 * rho 16368 + rho 16367 * rho 16367 * (-1)) = 2 * (rho 16367 * rho 16368) := by
      rw [hd0, hd1, hd2]
      linear_combination r3808
    have hd4 : rho 16381 * (2 - (rho 16368 * rho 16368 + rho 16367 * rho 16367 * (-1))) = rho 16368 * rho 16368 - rho 16367 * rho 16367 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3809
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX64 rho : Seg16.F), (seg16AccY64 rho : Seg16.F)⟩
      ⟨(rho 16367 : Seg16.F), (rho 16368 : Seg16.F)⟩
      ⟨(rho 16373 : Seg16.F), (rho 16374 : Seg16.F)⟩
      ⟨(seg16AccX65 rho : Seg16.F), (seg16AccY65 rho : Seg16.F)⟩
      ⟨(rho 16380 : Seg16.F), (rho 16381 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung64

theorem seg16_rung65 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15357 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX65 rho : Seg16.F), (seg16AccY65 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16380 : Seg16.F), (rho 16381 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX65 rho : Seg16.F), (seg16AccY65 rho : Seg16.F)⟩
        ⟨(rho 16380 : Seg16.F), (rho 16381 : Seg16.F)⟩
        ⟨(seg16AccX66 rho : Seg16.F), (seg16AccY66 rho : Seg16.F)⟩
        ⟨(rho 16393 : Seg16.F), (rho 16394 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p47, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart47 at p47
  rcases p47 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3810, r3811, r3812, r3813, r3814, r3815, r3816, r3817, r3818, r3819, r3820, r3821, r3822, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow3810 Seg16.relationLc360 Seg16.relationLc360Part0 Seg16.relationLc360Part1 Seg16.relationLc360Part2 Seg16.relationLc360Part3 Seg16.relationLc360Part4 at r3810
  unfold Seg16.relationRow3811 Seg16.relationLc361 Seg16.relationLc361Part0 Seg16.relationLc361Part1 Seg16.relationLc361Part2 at r3811
  unfold Seg16.relationRow3812 Seg16.relationLc362 Seg16.relationLc362Part0 Seg16.relationLc362Part1 Seg16.relationLc362Part2 at r3812
  unfold Seg16.relationRow3813 at r3813
  unfold Seg16.relationRow3814 at r3814
  unfold Seg16.relationRow3815 at r3815
  unfold Seg16.relationRow3816 Seg16.relationLc363 Seg16.relationLc363Part0 Seg16.relationLc363Part1 Seg16.relationLc363Part2 at r3816
  unfold Seg16.relationRow3817 Seg16.relationLc364 Seg16.relationLc364Part0 Seg16.relationLc364Part1 Seg16.relationLc364Part2 at r3817
  unfold Seg16.relationRow3818 at r3818
  unfold Seg16.relationRow3819 at r3819
  unfold Seg16.relationRow3820 at r3820
  unfold Seg16.relationRow3821 at r3821
  unfold Seg16.relationRow3822 at r3822
  have hrung65 (bit : Bool) (hbit : rho 15357 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX65 rho : Seg16.F), (seg16AccY65 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16380 : Seg16.F), (rho 16381 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX65 rho : Seg16.F), (seg16AccY65 rho : Seg16.F)⟩
        ⟨(rho 16380 : Seg16.F), (rho 16381 : Seg16.F)⟩
        ⟨(seg16AccX66 rho : Seg16.F), (seg16AccY66 rho : Seg16.F)⟩
        ⟨(rho 16393 : Seg16.F), (rho 16394 : Seg16.F)⟩ := by
    have ha0 : (rho 16380 + rho 16381) * (seg16AccX65 rho + seg16AccY65 rho) = rho 16382 := by
      rw [seg16LadderFlatX65_eq, seg16LadderFlatY65_eq]
      unfold seg16LadderFlatX65 seg16LadderFlatY65
      linear_combination r3810
    have ha1 : rho 16381 * seg16AccX65 rho = rho 16383 := by
      rw [seg16LadderFlatX65_eq]
      unfold seg16LadderFlatX65
      linear_combination r3811
    have ha2 : rho 16380 * seg16AccY65 rho = rho 16384 := by
      rw [seg16LadderFlatY65_eq]
      unfold seg16LadderFlatY65
      linear_combination r3812
    have ha3 : 3021 * rho 16383 * rho 16384 = rho 16385 := by
      linear_combination r3813
    have ha4 : rho 16386 * (1 + rho 16385) = rho 16383 + rho 16384 := by
      linear_combination r3814
    have ha5 : rho 16387 * (1 - rho 16385) = rho 16382 - rho 16383 - rho 16384 := by
      linear_combination r3815
    have haddx :
        rho 16386 * (1 + 3021 * (rho 16381 * seg16AccX65 rho) * (rho 16380 * seg16AccY65 rho)) =
          rho 16381 * seg16AccX65 rho + rho 16380 * seg16AccY65 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16387 * (1 - 3021 * (rho 16381 * seg16AccX65 rho) * (rho 16380 * seg16AccY65 rho)) =
          (-1) * (rho 16381 * seg16AccX65 rho) - rho 16380 * seg16AccY65 rho +
            (seg16AccY65 rho - seg16AccX65 rho * (-1)) * (rho 16380 + rho 16381) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16387 * (1 - rho 16385) = rho 16382 - rho 16383 - rho 16384 := ha5
        _ = (-1) * rho 16383 - rho 16384 + (seg16AccY65 rho - seg16AccX65 rho * (-1)) * (rho 16380 + rho 16381) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX66 rho = seg16AccX65 rho - Bool.toZMod bit * (seg16AccX65 rho - rho 16386) := by
      have hd : rho 16388 = Bool.toZMod bit * (rho 16386 - seg16AccX65 rho) := by
        rw [← hbit, seg16LadderFlatX65_eq]
        unfold seg16LadderFlatX65
        linear_combination -r3816
      unfold seg16AccX66
      linear_combination hd
    have hsely : seg16AccY66 rho = seg16AccY65 rho - Bool.toZMod bit * (seg16AccY65 rho - rho 16387) := by
      have hd : rho 16389 = Bool.toZMod bit * (rho 16387 - seg16AccY65 rho) := by
        rw [← hbit, seg16LadderFlatY65_eq]
        unfold seg16LadderFlatY65
        linear_combination -r3817
      unfold seg16AccY66
      linear_combination hd
    have hd0 : rho 16380 * rho 16381 = rho 16390 := by linear_combination r3818
    have hd1 : rho 16380 * rho 16380 = rho 16391 := by linear_combination r3819
    have hd2 : rho 16381 * rho 16381 = rho 16392 := by linear_combination r3820
    have hd3 : rho 16393 * (rho 16381 * rho 16381 + rho 16380 * rho 16380 * (-1)) = 2 * (rho 16380 * rho 16381) := by
      rw [hd0, hd1, hd2]
      linear_combination r3821
    have hd4 : rho 16394 * (2 - (rho 16381 * rho 16381 + rho 16380 * rho 16380 * (-1))) = rho 16381 * rho 16381 - rho 16380 * rho 16380 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3822
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX65 rho : Seg16.F), (seg16AccY65 rho : Seg16.F)⟩
      ⟨(rho 16380 : Seg16.F), (rho 16381 : Seg16.F)⟩
      ⟨(rho 16386 : Seg16.F), (rho 16387 : Seg16.F)⟩
      ⟨(seg16AccX66 rho : Seg16.F), (seg16AccY66 rho : Seg16.F)⟩
      ⟨(rho 16393 : Seg16.F), (rho 16394 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung65

theorem seg16_rung66 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15358 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX66 rho : Seg16.F), (seg16AccY66 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16393 : Seg16.F), (rho 16394 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX66 rho : Seg16.F), (seg16AccY66 rho : Seg16.F)⟩
        ⟨(rho 16393 : Seg16.F), (rho 16394 : Seg16.F)⟩
        ⟨(seg16AccX67 rho : Seg16.F), (seg16AccY67 rho : Seg16.F)⟩
        ⟨(rho 16406 : Seg16.F), (rho 16407 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p47, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart47 at p47
  rcases p47 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3823, r3824, r3825, r3826, r3827, r3828, r3829, r3830, r3831, r3832, r3833, r3834, r3835, _, _, _, _⟩
  unfold Seg16.relationRow3823 Seg16.relationLc365 Seg16.relationLc365Part0 Seg16.relationLc365Part1 Seg16.relationLc365Part2 Seg16.relationLc365Part3 Seg16.relationLc365Part4 at r3823
  unfold Seg16.relationRow3824 Seg16.relationLc366 Seg16.relationLc366Part0 Seg16.relationLc366Part1 Seg16.relationLc366Part2 at r3824
  unfold Seg16.relationRow3825 Seg16.relationLc367 Seg16.relationLc367Part0 Seg16.relationLc367Part1 Seg16.relationLc367Part2 at r3825
  unfold Seg16.relationRow3826 at r3826
  unfold Seg16.relationRow3827 at r3827
  unfold Seg16.relationRow3828 at r3828
  unfold Seg16.relationRow3829 Seg16.relationLc368 Seg16.relationLc368Part0 Seg16.relationLc368Part1 Seg16.relationLc368Part2 at r3829
  unfold Seg16.relationRow3830 Seg16.relationLc369 Seg16.relationLc369Part0 Seg16.relationLc369Part1 Seg16.relationLc369Part2 at r3830
  unfold Seg16.relationRow3831 at r3831
  unfold Seg16.relationRow3832 at r3832
  unfold Seg16.relationRow3833 at r3833
  unfold Seg16.relationRow3834 at r3834
  unfold Seg16.relationRow3835 at r3835
  have hrung66 (bit : Bool) (hbit : rho 15358 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX66 rho : Seg16.F), (seg16AccY66 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16393 : Seg16.F), (rho 16394 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX66 rho : Seg16.F), (seg16AccY66 rho : Seg16.F)⟩
        ⟨(rho 16393 : Seg16.F), (rho 16394 : Seg16.F)⟩
        ⟨(seg16AccX67 rho : Seg16.F), (seg16AccY67 rho : Seg16.F)⟩
        ⟨(rho 16406 : Seg16.F), (rho 16407 : Seg16.F)⟩ := by
    have ha0 : (rho 16393 + rho 16394) * (seg16AccX66 rho + seg16AccY66 rho) = rho 16395 := by
      rw [seg16LadderFlatX66_eq, seg16LadderFlatY66_eq]
      unfold seg16LadderFlatX66 seg16LadderFlatY66
      linear_combination r3823
    have ha1 : rho 16394 * seg16AccX66 rho = rho 16396 := by
      rw [seg16LadderFlatX66_eq]
      unfold seg16LadderFlatX66
      linear_combination r3824
    have ha2 : rho 16393 * seg16AccY66 rho = rho 16397 := by
      rw [seg16LadderFlatY66_eq]
      unfold seg16LadderFlatY66
      linear_combination r3825
    have ha3 : 3021 * rho 16396 * rho 16397 = rho 16398 := by
      linear_combination r3826
    have ha4 : rho 16399 * (1 + rho 16398) = rho 16396 + rho 16397 := by
      linear_combination r3827
    have ha5 : rho 16400 * (1 - rho 16398) = rho 16395 - rho 16396 - rho 16397 := by
      linear_combination r3828
    have haddx :
        rho 16399 * (1 + 3021 * (rho 16394 * seg16AccX66 rho) * (rho 16393 * seg16AccY66 rho)) =
          rho 16394 * seg16AccX66 rho + rho 16393 * seg16AccY66 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16400 * (1 - 3021 * (rho 16394 * seg16AccX66 rho) * (rho 16393 * seg16AccY66 rho)) =
          (-1) * (rho 16394 * seg16AccX66 rho) - rho 16393 * seg16AccY66 rho +
            (seg16AccY66 rho - seg16AccX66 rho * (-1)) * (rho 16393 + rho 16394) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16400 * (1 - rho 16398) = rho 16395 - rho 16396 - rho 16397 := ha5
        _ = (-1) * rho 16396 - rho 16397 + (seg16AccY66 rho - seg16AccX66 rho * (-1)) * (rho 16393 + rho 16394) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX67 rho = seg16AccX66 rho - Bool.toZMod bit * (seg16AccX66 rho - rho 16399) := by
      have hd : rho 16401 = Bool.toZMod bit * (rho 16399 - seg16AccX66 rho) := by
        rw [← hbit, seg16LadderFlatX66_eq]
        unfold seg16LadderFlatX66
        linear_combination -r3829
      unfold seg16AccX67
      linear_combination hd
    have hsely : seg16AccY67 rho = seg16AccY66 rho - Bool.toZMod bit * (seg16AccY66 rho - rho 16400) := by
      have hd : rho 16402 = Bool.toZMod bit * (rho 16400 - seg16AccY66 rho) := by
        rw [← hbit, seg16LadderFlatY66_eq]
        unfold seg16LadderFlatY66
        linear_combination -r3830
      unfold seg16AccY67
      linear_combination hd
    have hd0 : rho 16393 * rho 16394 = rho 16403 := by linear_combination r3831
    have hd1 : rho 16393 * rho 16393 = rho 16404 := by linear_combination r3832
    have hd2 : rho 16394 * rho 16394 = rho 16405 := by linear_combination r3833
    have hd3 : rho 16406 * (rho 16394 * rho 16394 + rho 16393 * rho 16393 * (-1)) = 2 * (rho 16393 * rho 16394) := by
      rw [hd0, hd1, hd2]
      linear_combination r3834
    have hd4 : rho 16407 * (2 - (rho 16394 * rho 16394 + rho 16393 * rho 16393 * (-1))) = rho 16394 * rho 16394 - rho 16393 * rho 16393 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3835
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX66 rho : Seg16.F), (seg16AccY66 rho : Seg16.F)⟩
      ⟨(rho 16393 : Seg16.F), (rho 16394 : Seg16.F)⟩
      ⟨(rho 16399 : Seg16.F), (rho 16400 : Seg16.F)⟩
      ⟨(seg16AccX67 rho : Seg16.F), (seg16AccY67 rho : Seg16.F)⟩
      ⟨(rho 16406 : Seg16.F), (rho 16407 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung66

theorem seg16_rung67 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15359 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX67 rho : Seg16.F), (seg16AccY67 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16406 : Seg16.F), (rho 16407 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX67 rho : Seg16.F), (seg16AccY67 rho : Seg16.F)⟩
        ⟨(rho 16406 : Seg16.F), (rho 16407 : Seg16.F)⟩
        ⟨(seg16AccX68 rho : Seg16.F), (seg16AccY68 rho : Seg16.F)⟩
        ⟨(rho 16419 : Seg16.F), (rho 16420 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p47, p48, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart47 at p47
  rcases p47 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3836, r3837, r3838, r3839⟩
  unfold Seg16.relationPart48 at p48
  rcases p48 with ⟨r3840, r3841, r3842, r3843, r3844, r3845, r3846, r3847, r3848, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow3836 Seg16.relationLc370 Seg16.relationLc370Part0 Seg16.relationLc370Part1 Seg16.relationLc370Part2 Seg16.relationLc370Part3 Seg16.relationLc370Part4 at r3836
  unfold Seg16.relationRow3837 Seg16.relationLc371 Seg16.relationLc371Part0 Seg16.relationLc371Part1 Seg16.relationLc371Part2 at r3837
  unfold Seg16.relationRow3838 Seg16.relationLc372 Seg16.relationLc372Part0 Seg16.relationLc372Part1 Seg16.relationLc372Part2 at r3838
  unfold Seg16.relationRow3839 at r3839
  unfold Seg16.relationRow3840 at r3840
  unfold Seg16.relationRow3841 at r3841
  unfold Seg16.relationRow3842 Seg16.relationLc373 Seg16.relationLc373Part0 Seg16.relationLc373Part1 Seg16.relationLc373Part2 at r3842
  unfold Seg16.relationRow3843 Seg16.relationLc374 Seg16.relationLc374Part0 Seg16.relationLc374Part1 Seg16.relationLc374Part2 at r3843
  unfold Seg16.relationRow3844 at r3844
  unfold Seg16.relationRow3845 at r3845
  unfold Seg16.relationRow3846 at r3846
  unfold Seg16.relationRow3847 at r3847
  unfold Seg16.relationRow3848 at r3848
  have hrung67 (bit : Bool) (hbit : rho 15359 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX67 rho : Seg16.F), (seg16AccY67 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16406 : Seg16.F), (rho 16407 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX67 rho : Seg16.F), (seg16AccY67 rho : Seg16.F)⟩
        ⟨(rho 16406 : Seg16.F), (rho 16407 : Seg16.F)⟩
        ⟨(seg16AccX68 rho : Seg16.F), (seg16AccY68 rho : Seg16.F)⟩
        ⟨(rho 16419 : Seg16.F), (rho 16420 : Seg16.F)⟩ := by
    have ha0 : (rho 16406 + rho 16407) * (seg16AccX67 rho + seg16AccY67 rho) = rho 16408 := by
      rw [seg16LadderFlatX67_eq, seg16LadderFlatY67_eq]
      unfold seg16LadderFlatX67 seg16LadderFlatY67
      linear_combination r3836
    have ha1 : rho 16407 * seg16AccX67 rho = rho 16409 := by
      rw [seg16LadderFlatX67_eq]
      unfold seg16LadderFlatX67
      linear_combination r3837
    have ha2 : rho 16406 * seg16AccY67 rho = rho 16410 := by
      rw [seg16LadderFlatY67_eq]
      unfold seg16LadderFlatY67
      linear_combination r3838
    have ha3 : 3021 * rho 16409 * rho 16410 = rho 16411 := by
      linear_combination r3839
    have ha4 : rho 16412 * (1 + rho 16411) = rho 16409 + rho 16410 := by
      linear_combination r3840
    have ha5 : rho 16413 * (1 - rho 16411) = rho 16408 - rho 16409 - rho 16410 := by
      linear_combination r3841
    have haddx :
        rho 16412 * (1 + 3021 * (rho 16407 * seg16AccX67 rho) * (rho 16406 * seg16AccY67 rho)) =
          rho 16407 * seg16AccX67 rho + rho 16406 * seg16AccY67 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16413 * (1 - 3021 * (rho 16407 * seg16AccX67 rho) * (rho 16406 * seg16AccY67 rho)) =
          (-1) * (rho 16407 * seg16AccX67 rho) - rho 16406 * seg16AccY67 rho +
            (seg16AccY67 rho - seg16AccX67 rho * (-1)) * (rho 16406 + rho 16407) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16413 * (1 - rho 16411) = rho 16408 - rho 16409 - rho 16410 := ha5
        _ = (-1) * rho 16409 - rho 16410 + (seg16AccY67 rho - seg16AccX67 rho * (-1)) * (rho 16406 + rho 16407) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX68 rho = seg16AccX67 rho - Bool.toZMod bit * (seg16AccX67 rho - rho 16412) := by
      have hd : rho 16414 = Bool.toZMod bit * (rho 16412 - seg16AccX67 rho) := by
        rw [← hbit, seg16LadderFlatX67_eq]
        unfold seg16LadderFlatX67
        linear_combination -r3842
      unfold seg16AccX68
      linear_combination hd
    have hsely : seg16AccY68 rho = seg16AccY67 rho - Bool.toZMod bit * (seg16AccY67 rho - rho 16413) := by
      have hd : rho 16415 = Bool.toZMod bit * (rho 16413 - seg16AccY67 rho) := by
        rw [← hbit, seg16LadderFlatY67_eq]
        unfold seg16LadderFlatY67
        linear_combination -r3843
      unfold seg16AccY68
      linear_combination hd
    have hd0 : rho 16406 * rho 16407 = rho 16416 := by linear_combination r3844
    have hd1 : rho 16406 * rho 16406 = rho 16417 := by linear_combination r3845
    have hd2 : rho 16407 * rho 16407 = rho 16418 := by linear_combination r3846
    have hd3 : rho 16419 * (rho 16407 * rho 16407 + rho 16406 * rho 16406 * (-1)) = 2 * (rho 16406 * rho 16407) := by
      rw [hd0, hd1, hd2]
      linear_combination r3847
    have hd4 : rho 16420 * (2 - (rho 16407 * rho 16407 + rho 16406 * rho 16406 * (-1))) = rho 16407 * rho 16407 - rho 16406 * rho 16406 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3848
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX67 rho : Seg16.F), (seg16AccY67 rho : Seg16.F)⟩
      ⟨(rho 16406 : Seg16.F), (rho 16407 : Seg16.F)⟩
      ⟨(rho 16412 : Seg16.F), (rho 16413 : Seg16.F)⟩
      ⟨(seg16AccX68 rho : Seg16.F), (seg16AccY68 rho : Seg16.F)⟩
      ⟨(rho 16419 : Seg16.F), (rho 16420 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung67

theorem seg16_rung68 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15360 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX68 rho : Seg16.F), (seg16AccY68 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16419 : Seg16.F), (rho 16420 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX68 rho : Seg16.F), (seg16AccY68 rho : Seg16.F)⟩
        ⟨(rho 16419 : Seg16.F), (rho 16420 : Seg16.F)⟩
        ⟨(seg16AccX69 rho : Seg16.F), (seg16AccY69 rho : Seg16.F)⟩
        ⟨(rho 16432 : Seg16.F), (rho 16433 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p48, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart48 at p48
  rcases p48 with ⟨_, _, _, _, _, _, _, _, _, r3849, r3850, r3851, r3852, r3853, r3854, r3855, r3856, r3857, r3858, r3859, r3860, r3861, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow3849 Seg16.relationLc375 Seg16.relationLc375Part0 Seg16.relationLc375Part1 Seg16.relationLc375Part2 Seg16.relationLc375Part3 Seg16.relationLc375Part4 at r3849
  unfold Seg16.relationRow3850 Seg16.relationLc376 Seg16.relationLc376Part0 Seg16.relationLc376Part1 Seg16.relationLc376Part2 at r3850
  unfold Seg16.relationRow3851 Seg16.relationLc377 Seg16.relationLc377Part0 Seg16.relationLc377Part1 Seg16.relationLc377Part2 at r3851
  unfold Seg16.relationRow3852 at r3852
  unfold Seg16.relationRow3853 at r3853
  unfold Seg16.relationRow3854 at r3854
  unfold Seg16.relationRow3855 Seg16.relationLc378 Seg16.relationLc378Part0 Seg16.relationLc378Part1 Seg16.relationLc378Part2 at r3855
  unfold Seg16.relationRow3856 Seg16.relationLc379 Seg16.relationLc379Part0 Seg16.relationLc379Part1 Seg16.relationLc379Part2 at r3856
  unfold Seg16.relationRow3857 at r3857
  unfold Seg16.relationRow3858 at r3858
  unfold Seg16.relationRow3859 at r3859
  unfold Seg16.relationRow3860 at r3860
  unfold Seg16.relationRow3861 at r3861
  have hrung68 (bit : Bool) (hbit : rho 15360 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX68 rho : Seg16.F), (seg16AccY68 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16419 : Seg16.F), (rho 16420 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX68 rho : Seg16.F), (seg16AccY68 rho : Seg16.F)⟩
        ⟨(rho 16419 : Seg16.F), (rho 16420 : Seg16.F)⟩
        ⟨(seg16AccX69 rho : Seg16.F), (seg16AccY69 rho : Seg16.F)⟩
        ⟨(rho 16432 : Seg16.F), (rho 16433 : Seg16.F)⟩ := by
    have ha0 : (rho 16419 + rho 16420) * (seg16AccX68 rho + seg16AccY68 rho) = rho 16421 := by
      rw [seg16LadderFlatX68_eq, seg16LadderFlatY68_eq]
      unfold seg16LadderFlatX68 seg16LadderFlatY68
      linear_combination r3849
    have ha1 : rho 16420 * seg16AccX68 rho = rho 16422 := by
      rw [seg16LadderFlatX68_eq]
      unfold seg16LadderFlatX68
      linear_combination r3850
    have ha2 : rho 16419 * seg16AccY68 rho = rho 16423 := by
      rw [seg16LadderFlatY68_eq]
      unfold seg16LadderFlatY68
      linear_combination r3851
    have ha3 : 3021 * rho 16422 * rho 16423 = rho 16424 := by
      linear_combination r3852
    have ha4 : rho 16425 * (1 + rho 16424) = rho 16422 + rho 16423 := by
      linear_combination r3853
    have ha5 : rho 16426 * (1 - rho 16424) = rho 16421 - rho 16422 - rho 16423 := by
      linear_combination r3854
    have haddx :
        rho 16425 * (1 + 3021 * (rho 16420 * seg16AccX68 rho) * (rho 16419 * seg16AccY68 rho)) =
          rho 16420 * seg16AccX68 rho + rho 16419 * seg16AccY68 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16426 * (1 - 3021 * (rho 16420 * seg16AccX68 rho) * (rho 16419 * seg16AccY68 rho)) =
          (-1) * (rho 16420 * seg16AccX68 rho) - rho 16419 * seg16AccY68 rho +
            (seg16AccY68 rho - seg16AccX68 rho * (-1)) * (rho 16419 + rho 16420) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16426 * (1 - rho 16424) = rho 16421 - rho 16422 - rho 16423 := ha5
        _ = (-1) * rho 16422 - rho 16423 + (seg16AccY68 rho - seg16AccX68 rho * (-1)) * (rho 16419 + rho 16420) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX69 rho = seg16AccX68 rho - Bool.toZMod bit * (seg16AccX68 rho - rho 16425) := by
      have hd : rho 16427 = Bool.toZMod bit * (rho 16425 - seg16AccX68 rho) := by
        rw [← hbit, seg16LadderFlatX68_eq]
        unfold seg16LadderFlatX68
        linear_combination -r3855
      unfold seg16AccX69
      linear_combination hd
    have hsely : seg16AccY69 rho = seg16AccY68 rho - Bool.toZMod bit * (seg16AccY68 rho - rho 16426) := by
      have hd : rho 16428 = Bool.toZMod bit * (rho 16426 - seg16AccY68 rho) := by
        rw [← hbit, seg16LadderFlatY68_eq]
        unfold seg16LadderFlatY68
        linear_combination -r3856
      unfold seg16AccY69
      linear_combination hd
    have hd0 : rho 16419 * rho 16420 = rho 16429 := by linear_combination r3857
    have hd1 : rho 16419 * rho 16419 = rho 16430 := by linear_combination r3858
    have hd2 : rho 16420 * rho 16420 = rho 16431 := by linear_combination r3859
    have hd3 : rho 16432 * (rho 16420 * rho 16420 + rho 16419 * rho 16419 * (-1)) = 2 * (rho 16419 * rho 16420) := by
      rw [hd0, hd1, hd2]
      linear_combination r3860
    have hd4 : rho 16433 * (2 - (rho 16420 * rho 16420 + rho 16419 * rho 16419 * (-1))) = rho 16420 * rho 16420 - rho 16419 * rho 16419 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3861
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX68 rho : Seg16.F), (seg16AccY68 rho : Seg16.F)⟩
      ⟨(rho 16419 : Seg16.F), (rho 16420 : Seg16.F)⟩
      ⟨(rho 16425 : Seg16.F), (rho 16426 : Seg16.F)⟩
      ⟨(seg16AccX69 rho : Seg16.F), (seg16AccY69 rho : Seg16.F)⟩
      ⟨(rho 16432 : Seg16.F), (rho 16433 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung68

theorem seg16_rung69 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15361 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX69 rho : Seg16.F), (seg16AccY69 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16432 : Seg16.F), (rho 16433 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX69 rho : Seg16.F), (seg16AccY69 rho : Seg16.F)⟩
        ⟨(rho 16432 : Seg16.F), (rho 16433 : Seg16.F)⟩
        ⟨(seg16AccX70 rho : Seg16.F), (seg16AccY70 rho : Seg16.F)⟩
        ⟨(rho 16445 : Seg16.F), (rho 16446 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p48, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart48 at p48
  rcases p48 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3862, r3863, r3864, r3865, r3866, r3867, r3868, r3869, r3870, r3871, r3872, r3873, r3874, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow3862 Seg16.relationLc380 Seg16.relationLc380Part0 Seg16.relationLc380Part1 Seg16.relationLc380Part2 Seg16.relationLc380Part3 Seg16.relationLc380Part4 at r3862
  unfold Seg16.relationRow3863 Seg16.relationLc381 Seg16.relationLc381Part0 Seg16.relationLc381Part1 Seg16.relationLc381Part2 at r3863
  unfold Seg16.relationRow3864 Seg16.relationLc382 Seg16.relationLc382Part0 Seg16.relationLc382Part1 Seg16.relationLc382Part2 at r3864
  unfold Seg16.relationRow3865 at r3865
  unfold Seg16.relationRow3866 at r3866
  unfold Seg16.relationRow3867 at r3867
  unfold Seg16.relationRow3868 Seg16.relationLc383 Seg16.relationLc383Part0 Seg16.relationLc383Part1 Seg16.relationLc383Part2 at r3868
  unfold Seg16.relationRow3869 Seg16.relationLc384 Seg16.relationLc384Part0 Seg16.relationLc384Part1 Seg16.relationLc384Part2 at r3869
  unfold Seg16.relationRow3870 at r3870
  unfold Seg16.relationRow3871 at r3871
  unfold Seg16.relationRow3872 at r3872
  unfold Seg16.relationRow3873 at r3873
  unfold Seg16.relationRow3874 at r3874
  have hrung69 (bit : Bool) (hbit : rho 15361 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX69 rho : Seg16.F), (seg16AccY69 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16432 : Seg16.F), (rho 16433 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX69 rho : Seg16.F), (seg16AccY69 rho : Seg16.F)⟩
        ⟨(rho 16432 : Seg16.F), (rho 16433 : Seg16.F)⟩
        ⟨(seg16AccX70 rho : Seg16.F), (seg16AccY70 rho : Seg16.F)⟩
        ⟨(rho 16445 : Seg16.F), (rho 16446 : Seg16.F)⟩ := by
    have ha0 : (rho 16432 + rho 16433) * (seg16AccX69 rho + seg16AccY69 rho) = rho 16434 := by
      rw [seg16LadderFlatX69_eq, seg16LadderFlatY69_eq]
      unfold seg16LadderFlatX69 seg16LadderFlatY69
      linear_combination r3862
    have ha1 : rho 16433 * seg16AccX69 rho = rho 16435 := by
      rw [seg16LadderFlatX69_eq]
      unfold seg16LadderFlatX69
      linear_combination r3863
    have ha2 : rho 16432 * seg16AccY69 rho = rho 16436 := by
      rw [seg16LadderFlatY69_eq]
      unfold seg16LadderFlatY69
      linear_combination r3864
    have ha3 : 3021 * rho 16435 * rho 16436 = rho 16437 := by
      linear_combination r3865
    have ha4 : rho 16438 * (1 + rho 16437) = rho 16435 + rho 16436 := by
      linear_combination r3866
    have ha5 : rho 16439 * (1 - rho 16437) = rho 16434 - rho 16435 - rho 16436 := by
      linear_combination r3867
    have haddx :
        rho 16438 * (1 + 3021 * (rho 16433 * seg16AccX69 rho) * (rho 16432 * seg16AccY69 rho)) =
          rho 16433 * seg16AccX69 rho + rho 16432 * seg16AccY69 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16439 * (1 - 3021 * (rho 16433 * seg16AccX69 rho) * (rho 16432 * seg16AccY69 rho)) =
          (-1) * (rho 16433 * seg16AccX69 rho) - rho 16432 * seg16AccY69 rho +
            (seg16AccY69 rho - seg16AccX69 rho * (-1)) * (rho 16432 + rho 16433) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16439 * (1 - rho 16437) = rho 16434 - rho 16435 - rho 16436 := ha5
        _ = (-1) * rho 16435 - rho 16436 + (seg16AccY69 rho - seg16AccX69 rho * (-1)) * (rho 16432 + rho 16433) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX70 rho = seg16AccX69 rho - Bool.toZMod bit * (seg16AccX69 rho - rho 16438) := by
      have hd : rho 16440 = Bool.toZMod bit * (rho 16438 - seg16AccX69 rho) := by
        rw [← hbit, seg16LadderFlatX69_eq]
        unfold seg16LadderFlatX69
        linear_combination -r3868
      unfold seg16AccX70
      linear_combination hd
    have hsely : seg16AccY70 rho = seg16AccY69 rho - Bool.toZMod bit * (seg16AccY69 rho - rho 16439) := by
      have hd : rho 16441 = Bool.toZMod bit * (rho 16439 - seg16AccY69 rho) := by
        rw [← hbit, seg16LadderFlatY69_eq]
        unfold seg16LadderFlatY69
        linear_combination -r3869
      unfold seg16AccY70
      linear_combination hd
    have hd0 : rho 16432 * rho 16433 = rho 16442 := by linear_combination r3870
    have hd1 : rho 16432 * rho 16432 = rho 16443 := by linear_combination r3871
    have hd2 : rho 16433 * rho 16433 = rho 16444 := by linear_combination r3872
    have hd3 : rho 16445 * (rho 16433 * rho 16433 + rho 16432 * rho 16432 * (-1)) = 2 * (rho 16432 * rho 16433) := by
      rw [hd0, hd1, hd2]
      linear_combination r3873
    have hd4 : rho 16446 * (2 - (rho 16433 * rho 16433 + rho 16432 * rho 16432 * (-1))) = rho 16433 * rho 16433 - rho 16432 * rho 16432 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3874
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX69 rho : Seg16.F), (seg16AccY69 rho : Seg16.F)⟩
      ⟨(rho 16432 : Seg16.F), (rho 16433 : Seg16.F)⟩
      ⟨(rho 16438 : Seg16.F), (rho 16439 : Seg16.F)⟩
      ⟨(seg16AccX70 rho : Seg16.F), (seg16AccY70 rho : Seg16.F)⟩
      ⟨(rho 16445 : Seg16.F), (rho 16446 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung69

theorem seg16_rung70 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15362 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX70 rho : Seg16.F), (seg16AccY70 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16445 : Seg16.F), (rho 16446 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX70 rho : Seg16.F), (seg16AccY70 rho : Seg16.F)⟩
        ⟨(rho 16445 : Seg16.F), (rho 16446 : Seg16.F)⟩
        ⟨(seg16AccX71 rho : Seg16.F), (seg16AccY71 rho : Seg16.F)⟩
        ⟨(rho 16458 : Seg16.F), (rho 16459 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p48, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart48 at p48
  rcases p48 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3875, r3876, r3877, r3878, r3879, r3880, r3881, r3882, r3883, r3884, r3885, r3886, r3887, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow3875 Seg16.relationLc385 Seg16.relationLc385Part0 Seg16.relationLc385Part1 Seg16.relationLc385Part2 Seg16.relationLc385Part3 Seg16.relationLc385Part4 at r3875
  unfold Seg16.relationRow3876 Seg16.relationLc386 Seg16.relationLc386Part0 Seg16.relationLc386Part1 Seg16.relationLc386Part2 at r3876
  unfold Seg16.relationRow3877 Seg16.relationLc387 Seg16.relationLc387Part0 Seg16.relationLc387Part1 Seg16.relationLc387Part2 at r3877
  unfold Seg16.relationRow3878 at r3878
  unfold Seg16.relationRow3879 at r3879
  unfold Seg16.relationRow3880 at r3880
  unfold Seg16.relationRow3881 Seg16.relationLc388 Seg16.relationLc388Part0 Seg16.relationLc388Part1 Seg16.relationLc388Part2 at r3881
  unfold Seg16.relationRow3882 Seg16.relationLc389 Seg16.relationLc389Part0 Seg16.relationLc389Part1 Seg16.relationLc389Part2 at r3882
  unfold Seg16.relationRow3883 at r3883
  unfold Seg16.relationRow3884 at r3884
  unfold Seg16.relationRow3885 at r3885
  unfold Seg16.relationRow3886 at r3886
  unfold Seg16.relationRow3887 at r3887
  have hrung70 (bit : Bool) (hbit : rho 15362 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX70 rho : Seg16.F), (seg16AccY70 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16445 : Seg16.F), (rho 16446 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX70 rho : Seg16.F), (seg16AccY70 rho : Seg16.F)⟩
        ⟨(rho 16445 : Seg16.F), (rho 16446 : Seg16.F)⟩
        ⟨(seg16AccX71 rho : Seg16.F), (seg16AccY71 rho : Seg16.F)⟩
        ⟨(rho 16458 : Seg16.F), (rho 16459 : Seg16.F)⟩ := by
    have ha0 : (rho 16445 + rho 16446) * (seg16AccX70 rho + seg16AccY70 rho) = rho 16447 := by
      rw [seg16LadderFlatX70_eq, seg16LadderFlatY70_eq]
      unfold seg16LadderFlatX70 seg16LadderFlatY70
      linear_combination r3875
    have ha1 : rho 16446 * seg16AccX70 rho = rho 16448 := by
      rw [seg16LadderFlatX70_eq]
      unfold seg16LadderFlatX70
      linear_combination r3876
    have ha2 : rho 16445 * seg16AccY70 rho = rho 16449 := by
      rw [seg16LadderFlatY70_eq]
      unfold seg16LadderFlatY70
      linear_combination r3877
    have ha3 : 3021 * rho 16448 * rho 16449 = rho 16450 := by
      linear_combination r3878
    have ha4 : rho 16451 * (1 + rho 16450) = rho 16448 + rho 16449 := by
      linear_combination r3879
    have ha5 : rho 16452 * (1 - rho 16450) = rho 16447 - rho 16448 - rho 16449 := by
      linear_combination r3880
    have haddx :
        rho 16451 * (1 + 3021 * (rho 16446 * seg16AccX70 rho) * (rho 16445 * seg16AccY70 rho)) =
          rho 16446 * seg16AccX70 rho + rho 16445 * seg16AccY70 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16452 * (1 - 3021 * (rho 16446 * seg16AccX70 rho) * (rho 16445 * seg16AccY70 rho)) =
          (-1) * (rho 16446 * seg16AccX70 rho) - rho 16445 * seg16AccY70 rho +
            (seg16AccY70 rho - seg16AccX70 rho * (-1)) * (rho 16445 + rho 16446) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16452 * (1 - rho 16450) = rho 16447 - rho 16448 - rho 16449 := ha5
        _ = (-1) * rho 16448 - rho 16449 + (seg16AccY70 rho - seg16AccX70 rho * (-1)) * (rho 16445 + rho 16446) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX71 rho = seg16AccX70 rho - Bool.toZMod bit * (seg16AccX70 rho - rho 16451) := by
      have hd : rho 16453 = Bool.toZMod bit * (rho 16451 - seg16AccX70 rho) := by
        rw [← hbit, seg16LadderFlatX70_eq]
        unfold seg16LadderFlatX70
        linear_combination -r3881
      unfold seg16AccX71
      linear_combination hd
    have hsely : seg16AccY71 rho = seg16AccY70 rho - Bool.toZMod bit * (seg16AccY70 rho - rho 16452) := by
      have hd : rho 16454 = Bool.toZMod bit * (rho 16452 - seg16AccY70 rho) := by
        rw [← hbit, seg16LadderFlatY70_eq]
        unfold seg16LadderFlatY70
        linear_combination -r3882
      unfold seg16AccY71
      linear_combination hd
    have hd0 : rho 16445 * rho 16446 = rho 16455 := by linear_combination r3883
    have hd1 : rho 16445 * rho 16445 = rho 16456 := by linear_combination r3884
    have hd2 : rho 16446 * rho 16446 = rho 16457 := by linear_combination r3885
    have hd3 : rho 16458 * (rho 16446 * rho 16446 + rho 16445 * rho 16445 * (-1)) = 2 * (rho 16445 * rho 16446) := by
      rw [hd0, hd1, hd2]
      linear_combination r3886
    have hd4 : rho 16459 * (2 - (rho 16446 * rho 16446 + rho 16445 * rho 16445 * (-1))) = rho 16446 * rho 16446 - rho 16445 * rho 16445 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3887
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX70 rho : Seg16.F), (seg16AccY70 rho : Seg16.F)⟩
      ⟨(rho 16445 : Seg16.F), (rho 16446 : Seg16.F)⟩
      ⟨(rho 16451 : Seg16.F), (rho 16452 : Seg16.F)⟩
      ⟨(seg16AccX71 rho : Seg16.F), (seg16AccY71 rho : Seg16.F)⟩
      ⟨(rho 16458 : Seg16.F), (rho 16459 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung70

theorem seg16_rung71 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15363 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX71 rho : Seg16.F), (seg16AccY71 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16458 : Seg16.F), (rho 16459 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX71 rho : Seg16.F), (seg16AccY71 rho : Seg16.F)⟩
        ⟨(rho 16458 : Seg16.F), (rho 16459 : Seg16.F)⟩
        ⟨(seg16AccX72 rho : Seg16.F), (seg16AccY72 rho : Seg16.F)⟩
        ⟨(rho 16471 : Seg16.F), (rho 16472 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p48, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart48 at p48
  rcases p48 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3888, r3889, r3890, r3891, r3892, r3893, r3894, r3895, r3896, r3897, r3898, r3899, r3900, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow3888 Seg16.relationLc390 Seg16.relationLc390Part0 Seg16.relationLc390Part1 Seg16.relationLc390Part2 Seg16.relationLc390Part3 Seg16.relationLc390Part4 at r3888
  unfold Seg16.relationRow3889 Seg16.relationLc391 Seg16.relationLc391Part0 Seg16.relationLc391Part1 Seg16.relationLc391Part2 at r3889
  unfold Seg16.relationRow3890 Seg16.relationLc392 Seg16.relationLc392Part0 Seg16.relationLc392Part1 Seg16.relationLc392Part2 at r3890
  unfold Seg16.relationRow3891 at r3891
  unfold Seg16.relationRow3892 at r3892
  unfold Seg16.relationRow3893 at r3893
  unfold Seg16.relationRow3894 Seg16.relationLc393 Seg16.relationLc393Part0 Seg16.relationLc393Part1 Seg16.relationLc393Part2 at r3894
  unfold Seg16.relationRow3895 Seg16.relationLc394 Seg16.relationLc394Part0 Seg16.relationLc394Part1 Seg16.relationLc394Part2 at r3895
  unfold Seg16.relationRow3896 at r3896
  unfold Seg16.relationRow3897 at r3897
  unfold Seg16.relationRow3898 at r3898
  unfold Seg16.relationRow3899 at r3899
  unfold Seg16.relationRow3900 at r3900
  have hrung71 (bit : Bool) (hbit : rho 15363 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX71 rho : Seg16.F), (seg16AccY71 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16458 : Seg16.F), (rho 16459 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX71 rho : Seg16.F), (seg16AccY71 rho : Seg16.F)⟩
        ⟨(rho 16458 : Seg16.F), (rho 16459 : Seg16.F)⟩
        ⟨(seg16AccX72 rho : Seg16.F), (seg16AccY72 rho : Seg16.F)⟩
        ⟨(rho 16471 : Seg16.F), (rho 16472 : Seg16.F)⟩ := by
    have ha0 : (rho 16458 + rho 16459) * (seg16AccX71 rho + seg16AccY71 rho) = rho 16460 := by
      rw [seg16LadderFlatX71_eq, seg16LadderFlatY71_eq]
      unfold seg16LadderFlatX71 seg16LadderFlatY71
      linear_combination r3888
    have ha1 : rho 16459 * seg16AccX71 rho = rho 16461 := by
      rw [seg16LadderFlatX71_eq]
      unfold seg16LadderFlatX71
      linear_combination r3889
    have ha2 : rho 16458 * seg16AccY71 rho = rho 16462 := by
      rw [seg16LadderFlatY71_eq]
      unfold seg16LadderFlatY71
      linear_combination r3890
    have ha3 : 3021 * rho 16461 * rho 16462 = rho 16463 := by
      linear_combination r3891
    have ha4 : rho 16464 * (1 + rho 16463) = rho 16461 + rho 16462 := by
      linear_combination r3892
    have ha5 : rho 16465 * (1 - rho 16463) = rho 16460 - rho 16461 - rho 16462 := by
      linear_combination r3893
    have haddx :
        rho 16464 * (1 + 3021 * (rho 16459 * seg16AccX71 rho) * (rho 16458 * seg16AccY71 rho)) =
          rho 16459 * seg16AccX71 rho + rho 16458 * seg16AccY71 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16465 * (1 - 3021 * (rho 16459 * seg16AccX71 rho) * (rho 16458 * seg16AccY71 rho)) =
          (-1) * (rho 16459 * seg16AccX71 rho) - rho 16458 * seg16AccY71 rho +
            (seg16AccY71 rho - seg16AccX71 rho * (-1)) * (rho 16458 + rho 16459) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16465 * (1 - rho 16463) = rho 16460 - rho 16461 - rho 16462 := ha5
        _ = (-1) * rho 16461 - rho 16462 + (seg16AccY71 rho - seg16AccX71 rho * (-1)) * (rho 16458 + rho 16459) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX72 rho = seg16AccX71 rho - Bool.toZMod bit * (seg16AccX71 rho - rho 16464) := by
      have hd : rho 16466 = Bool.toZMod bit * (rho 16464 - seg16AccX71 rho) := by
        rw [← hbit, seg16LadderFlatX71_eq]
        unfold seg16LadderFlatX71
        linear_combination -r3894
      unfold seg16AccX72
      linear_combination hd
    have hsely : seg16AccY72 rho = seg16AccY71 rho - Bool.toZMod bit * (seg16AccY71 rho - rho 16465) := by
      have hd : rho 16467 = Bool.toZMod bit * (rho 16465 - seg16AccY71 rho) := by
        rw [← hbit, seg16LadderFlatY71_eq]
        unfold seg16LadderFlatY71
        linear_combination -r3895
      unfold seg16AccY72
      linear_combination hd
    have hd0 : rho 16458 * rho 16459 = rho 16468 := by linear_combination r3896
    have hd1 : rho 16458 * rho 16458 = rho 16469 := by linear_combination r3897
    have hd2 : rho 16459 * rho 16459 = rho 16470 := by linear_combination r3898
    have hd3 : rho 16471 * (rho 16459 * rho 16459 + rho 16458 * rho 16458 * (-1)) = 2 * (rho 16458 * rho 16459) := by
      rw [hd0, hd1, hd2]
      linear_combination r3899
    have hd4 : rho 16472 * (2 - (rho 16459 * rho 16459 + rho 16458 * rho 16458 * (-1))) = rho 16459 * rho 16459 - rho 16458 * rho 16458 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3900
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX71 rho : Seg16.F), (seg16AccY71 rho : Seg16.F)⟩
      ⟨(rho 16458 : Seg16.F), (rho 16459 : Seg16.F)⟩
      ⟨(rho 16464 : Seg16.F), (rho 16465 : Seg16.F)⟩
      ⟨(seg16AccX72 rho : Seg16.F), (seg16AccY72 rho : Seg16.F)⟩
      ⟨(rho 16471 : Seg16.F), (rho 16472 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung71

theorem seg16_rung72 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15364 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX72 rho : Seg16.F), (seg16AccY72 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16471 : Seg16.F), (rho 16472 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX72 rho : Seg16.F), (seg16AccY72 rho : Seg16.F)⟩
        ⟨(rho 16471 : Seg16.F), (rho 16472 : Seg16.F)⟩
        ⟨(seg16AccX73 rho : Seg16.F), (seg16AccY73 rho : Seg16.F)⟩
        ⟨(rho 16484 : Seg16.F), (rho 16485 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p48, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart48 at p48
  rcases p48 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3901, r3902, r3903, r3904, r3905, r3906, r3907, r3908, r3909, r3910, r3911, r3912, r3913, _, _, _, _, _, _⟩
  unfold Seg16.relationRow3901 Seg16.relationLc395 Seg16.relationLc395Part0 Seg16.relationLc395Part1 Seg16.relationLc395Part2 Seg16.relationLc395Part3 Seg16.relationLc395Part4 at r3901
  unfold Seg16.relationRow3902 Seg16.relationLc396 Seg16.relationLc396Part0 Seg16.relationLc396Part1 Seg16.relationLc396Part2 at r3902
  unfold Seg16.relationRow3903 Seg16.relationLc397 Seg16.relationLc397Part0 Seg16.relationLc397Part1 Seg16.relationLc397Part2 at r3903
  unfold Seg16.relationRow3904 at r3904
  unfold Seg16.relationRow3905 at r3905
  unfold Seg16.relationRow3906 at r3906
  unfold Seg16.relationRow3907 Seg16.relationLc398 Seg16.relationLc398Part0 Seg16.relationLc398Part1 Seg16.relationLc398Part2 at r3907
  unfold Seg16.relationRow3908 Seg16.relationLc399 Seg16.relationLc399Part0 Seg16.relationLc399Part1 Seg16.relationLc399Part2 at r3908
  unfold Seg16.relationRow3909 at r3909
  unfold Seg16.relationRow3910 at r3910
  unfold Seg16.relationRow3911 at r3911
  unfold Seg16.relationRow3912 at r3912
  unfold Seg16.relationRow3913 at r3913
  have hrung72 (bit : Bool) (hbit : rho 15364 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX72 rho : Seg16.F), (seg16AccY72 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16471 : Seg16.F), (rho 16472 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX72 rho : Seg16.F), (seg16AccY72 rho : Seg16.F)⟩
        ⟨(rho 16471 : Seg16.F), (rho 16472 : Seg16.F)⟩
        ⟨(seg16AccX73 rho : Seg16.F), (seg16AccY73 rho : Seg16.F)⟩
        ⟨(rho 16484 : Seg16.F), (rho 16485 : Seg16.F)⟩ := by
    have ha0 : (rho 16471 + rho 16472) * (seg16AccX72 rho + seg16AccY72 rho) = rho 16473 := by
      rw [seg16LadderFlatX72_eq, seg16LadderFlatY72_eq]
      unfold seg16LadderFlatX72 seg16LadderFlatY72
      linear_combination r3901
    have ha1 : rho 16472 * seg16AccX72 rho = rho 16474 := by
      rw [seg16LadderFlatX72_eq]
      unfold seg16LadderFlatX72
      linear_combination r3902
    have ha2 : rho 16471 * seg16AccY72 rho = rho 16475 := by
      rw [seg16LadderFlatY72_eq]
      unfold seg16LadderFlatY72
      linear_combination r3903
    have ha3 : 3021 * rho 16474 * rho 16475 = rho 16476 := by
      linear_combination r3904
    have ha4 : rho 16477 * (1 + rho 16476) = rho 16474 + rho 16475 := by
      linear_combination r3905
    have ha5 : rho 16478 * (1 - rho 16476) = rho 16473 - rho 16474 - rho 16475 := by
      linear_combination r3906
    have haddx :
        rho 16477 * (1 + 3021 * (rho 16472 * seg16AccX72 rho) * (rho 16471 * seg16AccY72 rho)) =
          rho 16472 * seg16AccX72 rho + rho 16471 * seg16AccY72 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16478 * (1 - 3021 * (rho 16472 * seg16AccX72 rho) * (rho 16471 * seg16AccY72 rho)) =
          (-1) * (rho 16472 * seg16AccX72 rho) - rho 16471 * seg16AccY72 rho +
            (seg16AccY72 rho - seg16AccX72 rho * (-1)) * (rho 16471 + rho 16472) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16478 * (1 - rho 16476) = rho 16473 - rho 16474 - rho 16475 := ha5
        _ = (-1) * rho 16474 - rho 16475 + (seg16AccY72 rho - seg16AccX72 rho * (-1)) * (rho 16471 + rho 16472) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX73 rho = seg16AccX72 rho - Bool.toZMod bit * (seg16AccX72 rho - rho 16477) := by
      have hd : rho 16479 = Bool.toZMod bit * (rho 16477 - seg16AccX72 rho) := by
        rw [← hbit, seg16LadderFlatX72_eq]
        unfold seg16LadderFlatX72
        linear_combination -r3907
      unfold seg16AccX73
      linear_combination hd
    have hsely : seg16AccY73 rho = seg16AccY72 rho - Bool.toZMod bit * (seg16AccY72 rho - rho 16478) := by
      have hd : rho 16480 = Bool.toZMod bit * (rho 16478 - seg16AccY72 rho) := by
        rw [← hbit, seg16LadderFlatY72_eq]
        unfold seg16LadderFlatY72
        linear_combination -r3908
      unfold seg16AccY73
      linear_combination hd
    have hd0 : rho 16471 * rho 16472 = rho 16481 := by linear_combination r3909
    have hd1 : rho 16471 * rho 16471 = rho 16482 := by linear_combination r3910
    have hd2 : rho 16472 * rho 16472 = rho 16483 := by linear_combination r3911
    have hd3 : rho 16484 * (rho 16472 * rho 16472 + rho 16471 * rho 16471 * (-1)) = 2 * (rho 16471 * rho 16472) := by
      rw [hd0, hd1, hd2]
      linear_combination r3912
    have hd4 : rho 16485 * (2 - (rho 16472 * rho 16472 + rho 16471 * rho 16471 * (-1))) = rho 16472 * rho 16472 - rho 16471 * rho 16471 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3913
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX72 rho : Seg16.F), (seg16AccY72 rho : Seg16.F)⟩
      ⟨(rho 16471 : Seg16.F), (rho 16472 : Seg16.F)⟩
      ⟨(rho 16477 : Seg16.F), (rho 16478 : Seg16.F)⟩
      ⟨(seg16AccX73 rho : Seg16.F), (seg16AccY73 rho : Seg16.F)⟩
      ⟨(rho 16484 : Seg16.F), (rho 16485 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung72

theorem seg16_rung73 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15365 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX73 rho : Seg16.F), (seg16AccY73 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16484 : Seg16.F), (rho 16485 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX73 rho : Seg16.F), (seg16AccY73 rho : Seg16.F)⟩
        ⟨(rho 16484 : Seg16.F), (rho 16485 : Seg16.F)⟩
        ⟨(seg16AccX74 rho : Seg16.F), (seg16AccY74 rho : Seg16.F)⟩
        ⟨(rho 16497 : Seg16.F), (rho 16498 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p48, p49,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart48 at p48
  rcases p48 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3914, r3915, r3916, r3917, r3918, r3919⟩
  unfold Seg16.relationPart49 at p49
  rcases p49 with ⟨r3920, r3921, r3922, r3923, r3924, r3925, r3926, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow3914 Seg16.relationLc400 Seg16.relationLc400Part0 Seg16.relationLc400Part1 Seg16.relationLc400Part2 Seg16.relationLc400Part3 Seg16.relationLc400Part4 at r3914
  unfold Seg16.relationRow3915 Seg16.relationLc401 Seg16.relationLc401Part0 Seg16.relationLc401Part1 Seg16.relationLc401Part2 at r3915
  unfold Seg16.relationRow3916 Seg16.relationLc402 Seg16.relationLc402Part0 Seg16.relationLc402Part1 Seg16.relationLc402Part2 at r3916
  unfold Seg16.relationRow3917 at r3917
  unfold Seg16.relationRow3918 at r3918
  unfold Seg16.relationRow3919 at r3919
  unfold Seg16.relationRow3920 Seg16.relationLc403 Seg16.relationLc403Part0 Seg16.relationLc403Part1 Seg16.relationLc403Part2 at r3920
  unfold Seg16.relationRow3921 Seg16.relationLc404 Seg16.relationLc404Part0 Seg16.relationLc404Part1 Seg16.relationLc404Part2 at r3921
  unfold Seg16.relationRow3922 at r3922
  unfold Seg16.relationRow3923 at r3923
  unfold Seg16.relationRow3924 at r3924
  unfold Seg16.relationRow3925 at r3925
  unfold Seg16.relationRow3926 at r3926
  have hrung73 (bit : Bool) (hbit : rho 15365 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX73 rho : Seg16.F), (seg16AccY73 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16484 : Seg16.F), (rho 16485 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX73 rho : Seg16.F), (seg16AccY73 rho : Seg16.F)⟩
        ⟨(rho 16484 : Seg16.F), (rho 16485 : Seg16.F)⟩
        ⟨(seg16AccX74 rho : Seg16.F), (seg16AccY74 rho : Seg16.F)⟩
        ⟨(rho 16497 : Seg16.F), (rho 16498 : Seg16.F)⟩ := by
    have ha0 : (rho 16484 + rho 16485) * (seg16AccX73 rho + seg16AccY73 rho) = rho 16486 := by
      rw [seg16LadderFlatX73_eq, seg16LadderFlatY73_eq]
      unfold seg16LadderFlatX73 seg16LadderFlatY73
      linear_combination r3914
    have ha1 : rho 16485 * seg16AccX73 rho = rho 16487 := by
      rw [seg16LadderFlatX73_eq]
      unfold seg16LadderFlatX73
      linear_combination r3915
    have ha2 : rho 16484 * seg16AccY73 rho = rho 16488 := by
      rw [seg16LadderFlatY73_eq]
      unfold seg16LadderFlatY73
      linear_combination r3916
    have ha3 : 3021 * rho 16487 * rho 16488 = rho 16489 := by
      linear_combination r3917
    have ha4 : rho 16490 * (1 + rho 16489) = rho 16487 + rho 16488 := by
      linear_combination r3918
    have ha5 : rho 16491 * (1 - rho 16489) = rho 16486 - rho 16487 - rho 16488 := by
      linear_combination r3919
    have haddx :
        rho 16490 * (1 + 3021 * (rho 16485 * seg16AccX73 rho) * (rho 16484 * seg16AccY73 rho)) =
          rho 16485 * seg16AccX73 rho + rho 16484 * seg16AccY73 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16491 * (1 - 3021 * (rho 16485 * seg16AccX73 rho) * (rho 16484 * seg16AccY73 rho)) =
          (-1) * (rho 16485 * seg16AccX73 rho) - rho 16484 * seg16AccY73 rho +
            (seg16AccY73 rho - seg16AccX73 rho * (-1)) * (rho 16484 + rho 16485) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16491 * (1 - rho 16489) = rho 16486 - rho 16487 - rho 16488 := ha5
        _ = (-1) * rho 16487 - rho 16488 + (seg16AccY73 rho - seg16AccX73 rho * (-1)) * (rho 16484 + rho 16485) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX74 rho = seg16AccX73 rho - Bool.toZMod bit * (seg16AccX73 rho - rho 16490) := by
      have hd : rho 16492 = Bool.toZMod bit * (rho 16490 - seg16AccX73 rho) := by
        rw [← hbit, seg16LadderFlatX73_eq]
        unfold seg16LadderFlatX73
        linear_combination -r3920
      unfold seg16AccX74
      linear_combination hd
    have hsely : seg16AccY74 rho = seg16AccY73 rho - Bool.toZMod bit * (seg16AccY73 rho - rho 16491) := by
      have hd : rho 16493 = Bool.toZMod bit * (rho 16491 - seg16AccY73 rho) := by
        rw [← hbit, seg16LadderFlatY73_eq]
        unfold seg16LadderFlatY73
        linear_combination -r3921
      unfold seg16AccY74
      linear_combination hd
    have hd0 : rho 16484 * rho 16485 = rho 16494 := by linear_combination r3922
    have hd1 : rho 16484 * rho 16484 = rho 16495 := by linear_combination r3923
    have hd2 : rho 16485 * rho 16485 = rho 16496 := by linear_combination r3924
    have hd3 : rho 16497 * (rho 16485 * rho 16485 + rho 16484 * rho 16484 * (-1)) = 2 * (rho 16484 * rho 16485) := by
      rw [hd0, hd1, hd2]
      linear_combination r3925
    have hd4 : rho 16498 * (2 - (rho 16485 * rho 16485 + rho 16484 * rho 16484 * (-1))) = rho 16485 * rho 16485 - rho 16484 * rho 16484 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3926
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX73 rho : Seg16.F), (seg16AccY73 rho : Seg16.F)⟩
      ⟨(rho 16484 : Seg16.F), (rho 16485 : Seg16.F)⟩
      ⟨(rho 16490 : Seg16.F), (rho 16491 : Seg16.F)⟩
      ⟨(seg16AccX74 rho : Seg16.F), (seg16AccY74 rho : Seg16.F)⟩
      ⟨(rho 16497 : Seg16.F), (rho 16498 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung73

theorem seg16_rung74 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15366 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX74 rho : Seg16.F), (seg16AccY74 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16497 : Seg16.F), (rho 16498 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX74 rho : Seg16.F), (seg16AccY74 rho : Seg16.F)⟩
        ⟨(rho 16497 : Seg16.F), (rho 16498 : Seg16.F)⟩
        ⟨(seg16AccX75 rho : Seg16.F), (seg16AccY75 rho : Seg16.F)⟩
        ⟨(rho 16510 : Seg16.F), (rho 16511 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p49,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart49 at p49
  rcases p49 with ⟨_, _, _, _, _, _, _, r3927, r3928, r3929, r3930, r3931, r3932, r3933, r3934, r3935, r3936, r3937, r3938, r3939, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow3927 Seg16.relationLc405 Seg16.relationLc405Part0 Seg16.relationLc405Part1 Seg16.relationLc405Part2 Seg16.relationLc405Part3 Seg16.relationLc405Part4 at r3927
  unfold Seg16.relationRow3928 Seg16.relationLc406 Seg16.relationLc406Part0 Seg16.relationLc406Part1 Seg16.relationLc406Part2 at r3928
  unfold Seg16.relationRow3929 Seg16.relationLc407 Seg16.relationLc407Part0 Seg16.relationLc407Part1 Seg16.relationLc407Part2 at r3929
  unfold Seg16.relationRow3930 at r3930
  unfold Seg16.relationRow3931 at r3931
  unfold Seg16.relationRow3932 at r3932
  unfold Seg16.relationRow3933 Seg16.relationLc408 Seg16.relationLc408Part0 Seg16.relationLc408Part1 Seg16.relationLc408Part2 at r3933
  unfold Seg16.relationRow3934 Seg16.relationLc409 Seg16.relationLc409Part0 Seg16.relationLc409Part1 Seg16.relationLc409Part2 at r3934
  unfold Seg16.relationRow3935 at r3935
  unfold Seg16.relationRow3936 at r3936
  unfold Seg16.relationRow3937 at r3937
  unfold Seg16.relationRow3938 at r3938
  unfold Seg16.relationRow3939 at r3939
  have hrung74 (bit : Bool) (hbit : rho 15366 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX74 rho : Seg16.F), (seg16AccY74 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16497 : Seg16.F), (rho 16498 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX74 rho : Seg16.F), (seg16AccY74 rho : Seg16.F)⟩
        ⟨(rho 16497 : Seg16.F), (rho 16498 : Seg16.F)⟩
        ⟨(seg16AccX75 rho : Seg16.F), (seg16AccY75 rho : Seg16.F)⟩
        ⟨(rho 16510 : Seg16.F), (rho 16511 : Seg16.F)⟩ := by
    have ha0 : (rho 16497 + rho 16498) * (seg16AccX74 rho + seg16AccY74 rho) = rho 16499 := by
      rw [seg16LadderFlatX74_eq, seg16LadderFlatY74_eq]
      unfold seg16LadderFlatX74 seg16LadderFlatY74
      linear_combination r3927
    have ha1 : rho 16498 * seg16AccX74 rho = rho 16500 := by
      rw [seg16LadderFlatX74_eq]
      unfold seg16LadderFlatX74
      linear_combination r3928
    have ha2 : rho 16497 * seg16AccY74 rho = rho 16501 := by
      rw [seg16LadderFlatY74_eq]
      unfold seg16LadderFlatY74
      linear_combination r3929
    have ha3 : 3021 * rho 16500 * rho 16501 = rho 16502 := by
      linear_combination r3930
    have ha4 : rho 16503 * (1 + rho 16502) = rho 16500 + rho 16501 := by
      linear_combination r3931
    have ha5 : rho 16504 * (1 - rho 16502) = rho 16499 - rho 16500 - rho 16501 := by
      linear_combination r3932
    have haddx :
        rho 16503 * (1 + 3021 * (rho 16498 * seg16AccX74 rho) * (rho 16497 * seg16AccY74 rho)) =
          rho 16498 * seg16AccX74 rho + rho 16497 * seg16AccY74 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16504 * (1 - 3021 * (rho 16498 * seg16AccX74 rho) * (rho 16497 * seg16AccY74 rho)) =
          (-1) * (rho 16498 * seg16AccX74 rho) - rho 16497 * seg16AccY74 rho +
            (seg16AccY74 rho - seg16AccX74 rho * (-1)) * (rho 16497 + rho 16498) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16504 * (1 - rho 16502) = rho 16499 - rho 16500 - rho 16501 := ha5
        _ = (-1) * rho 16500 - rho 16501 + (seg16AccY74 rho - seg16AccX74 rho * (-1)) * (rho 16497 + rho 16498) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX75 rho = seg16AccX74 rho - Bool.toZMod bit * (seg16AccX74 rho - rho 16503) := by
      have hd : rho 16505 = Bool.toZMod bit * (rho 16503 - seg16AccX74 rho) := by
        rw [← hbit, seg16LadderFlatX74_eq]
        unfold seg16LadderFlatX74
        linear_combination -r3933
      unfold seg16AccX75
      linear_combination hd
    have hsely : seg16AccY75 rho = seg16AccY74 rho - Bool.toZMod bit * (seg16AccY74 rho - rho 16504) := by
      have hd : rho 16506 = Bool.toZMod bit * (rho 16504 - seg16AccY74 rho) := by
        rw [← hbit, seg16LadderFlatY74_eq]
        unfold seg16LadderFlatY74
        linear_combination -r3934
      unfold seg16AccY75
      linear_combination hd
    have hd0 : rho 16497 * rho 16498 = rho 16507 := by linear_combination r3935
    have hd1 : rho 16497 * rho 16497 = rho 16508 := by linear_combination r3936
    have hd2 : rho 16498 * rho 16498 = rho 16509 := by linear_combination r3937
    have hd3 : rho 16510 * (rho 16498 * rho 16498 + rho 16497 * rho 16497 * (-1)) = 2 * (rho 16497 * rho 16498) := by
      rw [hd0, hd1, hd2]
      linear_combination r3938
    have hd4 : rho 16511 * (2 - (rho 16498 * rho 16498 + rho 16497 * rho 16497 * (-1))) = rho 16498 * rho 16498 - rho 16497 * rho 16497 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3939
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX74 rho : Seg16.F), (seg16AccY74 rho : Seg16.F)⟩
      ⟨(rho 16497 : Seg16.F), (rho 16498 : Seg16.F)⟩
      ⟨(rho 16503 : Seg16.F), (rho 16504 : Seg16.F)⟩
      ⟨(seg16AccX75 rho : Seg16.F), (seg16AccY75 rho : Seg16.F)⟩
      ⟨(rho 16510 : Seg16.F), (rho 16511 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung74

theorem seg16_rung75 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15367 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX75 rho : Seg16.F), (seg16AccY75 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16510 : Seg16.F), (rho 16511 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX75 rho : Seg16.F), (seg16AccY75 rho : Seg16.F)⟩
        ⟨(rho 16510 : Seg16.F), (rho 16511 : Seg16.F)⟩
        ⟨(seg16AccX76 rho : Seg16.F), (seg16AccY76 rho : Seg16.F)⟩
        ⟨(rho 16523 : Seg16.F), (rho 16524 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p49,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart49 at p49
  rcases p49 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3940, r3941, r3942, r3943, r3944, r3945, r3946, r3947, r3948, r3949, r3950, r3951, r3952, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow3940 Seg16.relationLc410 Seg16.relationLc410Part0 Seg16.relationLc410Part1 Seg16.relationLc410Part2 Seg16.relationLc410Part3 Seg16.relationLc410Part4 at r3940
  unfold Seg16.relationRow3941 Seg16.relationLc411 Seg16.relationLc411Part0 Seg16.relationLc411Part1 Seg16.relationLc411Part2 at r3941
  unfold Seg16.relationRow3942 Seg16.relationLc412 Seg16.relationLc412Part0 Seg16.relationLc412Part1 Seg16.relationLc412Part2 at r3942
  unfold Seg16.relationRow3943 at r3943
  unfold Seg16.relationRow3944 at r3944
  unfold Seg16.relationRow3945 at r3945
  unfold Seg16.relationRow3946 Seg16.relationLc413 Seg16.relationLc413Part0 Seg16.relationLc413Part1 Seg16.relationLc413Part2 at r3946
  unfold Seg16.relationRow3947 Seg16.relationLc414 Seg16.relationLc414Part0 Seg16.relationLc414Part1 Seg16.relationLc414Part2 at r3947
  unfold Seg16.relationRow3948 at r3948
  unfold Seg16.relationRow3949 at r3949
  unfold Seg16.relationRow3950 at r3950
  unfold Seg16.relationRow3951 at r3951
  unfold Seg16.relationRow3952 at r3952
  have hrung75 (bit : Bool) (hbit : rho 15367 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX75 rho : Seg16.F), (seg16AccY75 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16510 : Seg16.F), (rho 16511 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX75 rho : Seg16.F), (seg16AccY75 rho : Seg16.F)⟩
        ⟨(rho 16510 : Seg16.F), (rho 16511 : Seg16.F)⟩
        ⟨(seg16AccX76 rho : Seg16.F), (seg16AccY76 rho : Seg16.F)⟩
        ⟨(rho 16523 : Seg16.F), (rho 16524 : Seg16.F)⟩ := by
    have ha0 : (rho 16510 + rho 16511) * (seg16AccX75 rho + seg16AccY75 rho) = rho 16512 := by
      rw [seg16LadderFlatX75_eq, seg16LadderFlatY75_eq]
      unfold seg16LadderFlatX75 seg16LadderFlatY75
      linear_combination r3940
    have ha1 : rho 16511 * seg16AccX75 rho = rho 16513 := by
      rw [seg16LadderFlatX75_eq]
      unfold seg16LadderFlatX75
      linear_combination r3941
    have ha2 : rho 16510 * seg16AccY75 rho = rho 16514 := by
      rw [seg16LadderFlatY75_eq]
      unfold seg16LadderFlatY75
      linear_combination r3942
    have ha3 : 3021 * rho 16513 * rho 16514 = rho 16515 := by
      linear_combination r3943
    have ha4 : rho 16516 * (1 + rho 16515) = rho 16513 + rho 16514 := by
      linear_combination r3944
    have ha5 : rho 16517 * (1 - rho 16515) = rho 16512 - rho 16513 - rho 16514 := by
      linear_combination r3945
    have haddx :
        rho 16516 * (1 + 3021 * (rho 16511 * seg16AccX75 rho) * (rho 16510 * seg16AccY75 rho)) =
          rho 16511 * seg16AccX75 rho + rho 16510 * seg16AccY75 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16517 * (1 - 3021 * (rho 16511 * seg16AccX75 rho) * (rho 16510 * seg16AccY75 rho)) =
          (-1) * (rho 16511 * seg16AccX75 rho) - rho 16510 * seg16AccY75 rho +
            (seg16AccY75 rho - seg16AccX75 rho * (-1)) * (rho 16510 + rho 16511) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16517 * (1 - rho 16515) = rho 16512 - rho 16513 - rho 16514 := ha5
        _ = (-1) * rho 16513 - rho 16514 + (seg16AccY75 rho - seg16AccX75 rho * (-1)) * (rho 16510 + rho 16511) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX76 rho = seg16AccX75 rho - Bool.toZMod bit * (seg16AccX75 rho - rho 16516) := by
      have hd : rho 16518 = Bool.toZMod bit * (rho 16516 - seg16AccX75 rho) := by
        rw [← hbit, seg16LadderFlatX75_eq]
        unfold seg16LadderFlatX75
        linear_combination -r3946
      unfold seg16AccX76
      linear_combination hd
    have hsely : seg16AccY76 rho = seg16AccY75 rho - Bool.toZMod bit * (seg16AccY75 rho - rho 16517) := by
      have hd : rho 16519 = Bool.toZMod bit * (rho 16517 - seg16AccY75 rho) := by
        rw [← hbit, seg16LadderFlatY75_eq]
        unfold seg16LadderFlatY75
        linear_combination -r3947
      unfold seg16AccY76
      linear_combination hd
    have hd0 : rho 16510 * rho 16511 = rho 16520 := by linear_combination r3948
    have hd1 : rho 16510 * rho 16510 = rho 16521 := by linear_combination r3949
    have hd2 : rho 16511 * rho 16511 = rho 16522 := by linear_combination r3950
    have hd3 : rho 16523 * (rho 16511 * rho 16511 + rho 16510 * rho 16510 * (-1)) = 2 * (rho 16510 * rho 16511) := by
      rw [hd0, hd1, hd2]
      linear_combination r3951
    have hd4 : rho 16524 * (2 - (rho 16511 * rho 16511 + rho 16510 * rho 16510 * (-1))) = rho 16511 * rho 16511 - rho 16510 * rho 16510 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3952
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX75 rho : Seg16.F), (seg16AccY75 rho : Seg16.F)⟩
      ⟨(rho 16510 : Seg16.F), (rho 16511 : Seg16.F)⟩
      ⟨(rho 16516 : Seg16.F), (rho 16517 : Seg16.F)⟩
      ⟨(seg16AccX76 rho : Seg16.F), (seg16AccY76 rho : Seg16.F)⟩
      ⟨(rho 16523 : Seg16.F), (rho 16524 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung75

theorem seg16_rung76 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15368 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX76 rho : Seg16.F), (seg16AccY76 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16523 : Seg16.F), (rho 16524 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX76 rho : Seg16.F), (seg16AccY76 rho : Seg16.F)⟩
        ⟨(rho 16523 : Seg16.F), (rho 16524 : Seg16.F)⟩
        ⟨(seg16AccX77 rho : Seg16.F), (seg16AccY77 rho : Seg16.F)⟩
        ⟨(rho 16536 : Seg16.F), (rho 16537 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p49,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart49 at p49
  rcases p49 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3953, r3954, r3955, r3956, r3957, r3958, r3959, r3960, r3961, r3962, r3963, r3964, r3965, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow3953 Seg16.relationLc415 Seg16.relationLc415Part0 Seg16.relationLc415Part1 Seg16.relationLc415Part2 Seg16.relationLc415Part3 Seg16.relationLc415Part4 at r3953
  unfold Seg16.relationRow3954 Seg16.relationLc416 Seg16.relationLc416Part0 Seg16.relationLc416Part1 Seg16.relationLc416Part2 at r3954
  unfold Seg16.relationRow3955 Seg16.relationLc417 Seg16.relationLc417Part0 Seg16.relationLc417Part1 Seg16.relationLc417Part2 at r3955
  unfold Seg16.relationRow3956 at r3956
  unfold Seg16.relationRow3957 at r3957
  unfold Seg16.relationRow3958 at r3958
  unfold Seg16.relationRow3959 Seg16.relationLc418 Seg16.relationLc418Part0 Seg16.relationLc418Part1 Seg16.relationLc418Part2 at r3959
  unfold Seg16.relationRow3960 Seg16.relationLc419 Seg16.relationLc419Part0 Seg16.relationLc419Part1 Seg16.relationLc419Part2 at r3960
  unfold Seg16.relationRow3961 at r3961
  unfold Seg16.relationRow3962 at r3962
  unfold Seg16.relationRow3963 at r3963
  unfold Seg16.relationRow3964 at r3964
  unfold Seg16.relationRow3965 at r3965
  have hrung76 (bit : Bool) (hbit : rho 15368 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX76 rho : Seg16.F), (seg16AccY76 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16523 : Seg16.F), (rho 16524 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX76 rho : Seg16.F), (seg16AccY76 rho : Seg16.F)⟩
        ⟨(rho 16523 : Seg16.F), (rho 16524 : Seg16.F)⟩
        ⟨(seg16AccX77 rho : Seg16.F), (seg16AccY77 rho : Seg16.F)⟩
        ⟨(rho 16536 : Seg16.F), (rho 16537 : Seg16.F)⟩ := by
    have ha0 : (rho 16523 + rho 16524) * (seg16AccX76 rho + seg16AccY76 rho) = rho 16525 := by
      rw [seg16LadderFlatX76_eq, seg16LadderFlatY76_eq]
      unfold seg16LadderFlatX76 seg16LadderFlatY76
      linear_combination r3953
    have ha1 : rho 16524 * seg16AccX76 rho = rho 16526 := by
      rw [seg16LadderFlatX76_eq]
      unfold seg16LadderFlatX76
      linear_combination r3954
    have ha2 : rho 16523 * seg16AccY76 rho = rho 16527 := by
      rw [seg16LadderFlatY76_eq]
      unfold seg16LadderFlatY76
      linear_combination r3955
    have ha3 : 3021 * rho 16526 * rho 16527 = rho 16528 := by
      linear_combination r3956
    have ha4 : rho 16529 * (1 + rho 16528) = rho 16526 + rho 16527 := by
      linear_combination r3957
    have ha5 : rho 16530 * (1 - rho 16528) = rho 16525 - rho 16526 - rho 16527 := by
      linear_combination r3958
    have haddx :
        rho 16529 * (1 + 3021 * (rho 16524 * seg16AccX76 rho) * (rho 16523 * seg16AccY76 rho)) =
          rho 16524 * seg16AccX76 rho + rho 16523 * seg16AccY76 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16530 * (1 - 3021 * (rho 16524 * seg16AccX76 rho) * (rho 16523 * seg16AccY76 rho)) =
          (-1) * (rho 16524 * seg16AccX76 rho) - rho 16523 * seg16AccY76 rho +
            (seg16AccY76 rho - seg16AccX76 rho * (-1)) * (rho 16523 + rho 16524) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16530 * (1 - rho 16528) = rho 16525 - rho 16526 - rho 16527 := ha5
        _ = (-1) * rho 16526 - rho 16527 + (seg16AccY76 rho - seg16AccX76 rho * (-1)) * (rho 16523 + rho 16524) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX77 rho = seg16AccX76 rho - Bool.toZMod bit * (seg16AccX76 rho - rho 16529) := by
      have hd : rho 16531 = Bool.toZMod bit * (rho 16529 - seg16AccX76 rho) := by
        rw [← hbit, seg16LadderFlatX76_eq]
        unfold seg16LadderFlatX76
        linear_combination -r3959
      unfold seg16AccX77
      linear_combination hd
    have hsely : seg16AccY77 rho = seg16AccY76 rho - Bool.toZMod bit * (seg16AccY76 rho - rho 16530) := by
      have hd : rho 16532 = Bool.toZMod bit * (rho 16530 - seg16AccY76 rho) := by
        rw [← hbit, seg16LadderFlatY76_eq]
        unfold seg16LadderFlatY76
        linear_combination -r3960
      unfold seg16AccY77
      linear_combination hd
    have hd0 : rho 16523 * rho 16524 = rho 16533 := by linear_combination r3961
    have hd1 : rho 16523 * rho 16523 = rho 16534 := by linear_combination r3962
    have hd2 : rho 16524 * rho 16524 = rho 16535 := by linear_combination r3963
    have hd3 : rho 16536 * (rho 16524 * rho 16524 + rho 16523 * rho 16523 * (-1)) = 2 * (rho 16523 * rho 16524) := by
      rw [hd0, hd1, hd2]
      linear_combination r3964
    have hd4 : rho 16537 * (2 - (rho 16524 * rho 16524 + rho 16523 * rho 16523 * (-1))) = rho 16524 * rho 16524 - rho 16523 * rho 16523 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3965
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX76 rho : Seg16.F), (seg16AccY76 rho : Seg16.F)⟩
      ⟨(rho 16523 : Seg16.F), (rho 16524 : Seg16.F)⟩
      ⟨(rho 16529 : Seg16.F), (rho 16530 : Seg16.F)⟩
      ⟨(seg16AccX77 rho : Seg16.F), (seg16AccY77 rho : Seg16.F)⟩
      ⟨(rho 16536 : Seg16.F), (rho 16537 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung76

theorem seg16_rung77 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15369 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX77 rho : Seg16.F), (seg16AccY77 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16536 : Seg16.F), (rho 16537 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX77 rho : Seg16.F), (seg16AccY77 rho : Seg16.F)⟩
        ⟨(rho 16536 : Seg16.F), (rho 16537 : Seg16.F)⟩
        ⟨(seg16AccX78 rho : Seg16.F), (seg16AccY78 rho : Seg16.F)⟩
        ⟨(rho 16549 : Seg16.F), (rho 16550 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p49,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart49 at p49
  rcases p49 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3966, r3967, r3968, r3969, r3970, r3971, r3972, r3973, r3974, r3975, r3976, r3977, r3978, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow3966 Seg16.relationLc420 Seg16.relationLc420Part0 Seg16.relationLc420Part1 Seg16.relationLc420Part2 Seg16.relationLc420Part3 Seg16.relationLc420Part4 at r3966
  unfold Seg16.relationRow3967 Seg16.relationLc421 Seg16.relationLc421Part0 Seg16.relationLc421Part1 Seg16.relationLc421Part2 at r3967
  unfold Seg16.relationRow3968 Seg16.relationLc422 Seg16.relationLc422Part0 Seg16.relationLc422Part1 Seg16.relationLc422Part2 at r3968
  unfold Seg16.relationRow3969 at r3969
  unfold Seg16.relationRow3970 at r3970
  unfold Seg16.relationRow3971 at r3971
  unfold Seg16.relationRow3972 Seg16.relationLc423 Seg16.relationLc423Part0 Seg16.relationLc423Part1 Seg16.relationLc423Part2 at r3972
  unfold Seg16.relationRow3973 Seg16.relationLc424 Seg16.relationLc424Part0 Seg16.relationLc424Part1 Seg16.relationLc424Part2 at r3973
  unfold Seg16.relationRow3974 at r3974
  unfold Seg16.relationRow3975 at r3975
  unfold Seg16.relationRow3976 at r3976
  unfold Seg16.relationRow3977 at r3977
  unfold Seg16.relationRow3978 at r3978
  have hrung77 (bit : Bool) (hbit : rho 15369 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX77 rho : Seg16.F), (seg16AccY77 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16536 : Seg16.F), (rho 16537 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX77 rho : Seg16.F), (seg16AccY77 rho : Seg16.F)⟩
        ⟨(rho 16536 : Seg16.F), (rho 16537 : Seg16.F)⟩
        ⟨(seg16AccX78 rho : Seg16.F), (seg16AccY78 rho : Seg16.F)⟩
        ⟨(rho 16549 : Seg16.F), (rho 16550 : Seg16.F)⟩ := by
    have ha0 : (rho 16536 + rho 16537) * (seg16AccX77 rho + seg16AccY77 rho) = rho 16538 := by
      rw [seg16LadderFlatX77_eq, seg16LadderFlatY77_eq]
      unfold seg16LadderFlatX77 seg16LadderFlatY77
      linear_combination r3966
    have ha1 : rho 16537 * seg16AccX77 rho = rho 16539 := by
      rw [seg16LadderFlatX77_eq]
      unfold seg16LadderFlatX77
      linear_combination r3967
    have ha2 : rho 16536 * seg16AccY77 rho = rho 16540 := by
      rw [seg16LadderFlatY77_eq]
      unfold seg16LadderFlatY77
      linear_combination r3968
    have ha3 : 3021 * rho 16539 * rho 16540 = rho 16541 := by
      linear_combination r3969
    have ha4 : rho 16542 * (1 + rho 16541) = rho 16539 + rho 16540 := by
      linear_combination r3970
    have ha5 : rho 16543 * (1 - rho 16541) = rho 16538 - rho 16539 - rho 16540 := by
      linear_combination r3971
    have haddx :
        rho 16542 * (1 + 3021 * (rho 16537 * seg16AccX77 rho) * (rho 16536 * seg16AccY77 rho)) =
          rho 16537 * seg16AccX77 rho + rho 16536 * seg16AccY77 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16543 * (1 - 3021 * (rho 16537 * seg16AccX77 rho) * (rho 16536 * seg16AccY77 rho)) =
          (-1) * (rho 16537 * seg16AccX77 rho) - rho 16536 * seg16AccY77 rho +
            (seg16AccY77 rho - seg16AccX77 rho * (-1)) * (rho 16536 + rho 16537) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16543 * (1 - rho 16541) = rho 16538 - rho 16539 - rho 16540 := ha5
        _ = (-1) * rho 16539 - rho 16540 + (seg16AccY77 rho - seg16AccX77 rho * (-1)) * (rho 16536 + rho 16537) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX78 rho = seg16AccX77 rho - Bool.toZMod bit * (seg16AccX77 rho - rho 16542) := by
      have hd : rho 16544 = Bool.toZMod bit * (rho 16542 - seg16AccX77 rho) := by
        rw [← hbit, seg16LadderFlatX77_eq]
        unfold seg16LadderFlatX77
        linear_combination -r3972
      unfold seg16AccX78
      linear_combination hd
    have hsely : seg16AccY78 rho = seg16AccY77 rho - Bool.toZMod bit * (seg16AccY77 rho - rho 16543) := by
      have hd : rho 16545 = Bool.toZMod bit * (rho 16543 - seg16AccY77 rho) := by
        rw [← hbit, seg16LadderFlatY77_eq]
        unfold seg16LadderFlatY77
        linear_combination -r3973
      unfold seg16AccY78
      linear_combination hd
    have hd0 : rho 16536 * rho 16537 = rho 16546 := by linear_combination r3974
    have hd1 : rho 16536 * rho 16536 = rho 16547 := by linear_combination r3975
    have hd2 : rho 16537 * rho 16537 = rho 16548 := by linear_combination r3976
    have hd3 : rho 16549 * (rho 16537 * rho 16537 + rho 16536 * rho 16536 * (-1)) = 2 * (rho 16536 * rho 16537) := by
      rw [hd0, hd1, hd2]
      linear_combination r3977
    have hd4 : rho 16550 * (2 - (rho 16537 * rho 16537 + rho 16536 * rho 16536 * (-1))) = rho 16537 * rho 16537 - rho 16536 * rho 16536 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3978
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX77 rho : Seg16.F), (seg16AccY77 rho : Seg16.F)⟩
      ⟨(rho 16536 : Seg16.F), (rho 16537 : Seg16.F)⟩
      ⟨(rho 16542 : Seg16.F), (rho 16543 : Seg16.F)⟩
      ⟨(seg16AccX78 rho : Seg16.F), (seg16AccY78 rho : Seg16.F)⟩
      ⟨(rho 16549 : Seg16.F), (rho 16550 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung77

theorem seg16_rung78 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15370 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX78 rho : Seg16.F), (seg16AccY78 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16549 : Seg16.F), (rho 16550 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX78 rho : Seg16.F), (seg16AccY78 rho : Seg16.F)⟩
        ⟨(rho 16549 : Seg16.F), (rho 16550 : Seg16.F)⟩
        ⟨(seg16AccX79 rho : Seg16.F), (seg16AccY79 rho : Seg16.F)⟩
        ⟨(rho 16562 : Seg16.F), (rho 16563 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p49,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart49 at p49
  rcases p49 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3979, r3980, r3981, r3982, r3983, r3984, r3985, r3986, r3987, r3988, r3989, r3990, r3991, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow3979 Seg16.relationLc425 Seg16.relationLc425Part0 Seg16.relationLc425Part1 Seg16.relationLc425Part2 Seg16.relationLc425Part3 Seg16.relationLc425Part4 at r3979
  unfold Seg16.relationRow3980 Seg16.relationLc426 Seg16.relationLc426Part0 Seg16.relationLc426Part1 Seg16.relationLc426Part2 at r3980
  unfold Seg16.relationRow3981 Seg16.relationLc427 Seg16.relationLc427Part0 Seg16.relationLc427Part1 Seg16.relationLc427Part2 at r3981
  unfold Seg16.relationRow3982 at r3982
  unfold Seg16.relationRow3983 at r3983
  unfold Seg16.relationRow3984 at r3984
  unfold Seg16.relationRow3985 Seg16.relationLc428 Seg16.relationLc428Part0 Seg16.relationLc428Part1 Seg16.relationLc428Part2 at r3985
  unfold Seg16.relationRow3986 Seg16.relationLc429 Seg16.relationLc429Part0 Seg16.relationLc429Part1 Seg16.relationLc429Part2 at r3986
  unfold Seg16.relationRow3987 at r3987
  unfold Seg16.relationRow3988 at r3988
  unfold Seg16.relationRow3989 at r3989
  unfold Seg16.relationRow3990 at r3990
  unfold Seg16.relationRow3991 at r3991
  have hrung78 (bit : Bool) (hbit : rho 15370 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX78 rho : Seg16.F), (seg16AccY78 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16549 : Seg16.F), (rho 16550 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX78 rho : Seg16.F), (seg16AccY78 rho : Seg16.F)⟩
        ⟨(rho 16549 : Seg16.F), (rho 16550 : Seg16.F)⟩
        ⟨(seg16AccX79 rho : Seg16.F), (seg16AccY79 rho : Seg16.F)⟩
        ⟨(rho 16562 : Seg16.F), (rho 16563 : Seg16.F)⟩ := by
    have ha0 : (rho 16549 + rho 16550) * (seg16AccX78 rho + seg16AccY78 rho) = rho 16551 := by
      rw [seg16LadderFlatX78_eq, seg16LadderFlatY78_eq]
      unfold seg16LadderFlatX78 seg16LadderFlatY78
      linear_combination r3979
    have ha1 : rho 16550 * seg16AccX78 rho = rho 16552 := by
      rw [seg16LadderFlatX78_eq]
      unfold seg16LadderFlatX78
      linear_combination r3980
    have ha2 : rho 16549 * seg16AccY78 rho = rho 16553 := by
      rw [seg16LadderFlatY78_eq]
      unfold seg16LadderFlatY78
      linear_combination r3981
    have ha3 : 3021 * rho 16552 * rho 16553 = rho 16554 := by
      linear_combination r3982
    have ha4 : rho 16555 * (1 + rho 16554) = rho 16552 + rho 16553 := by
      linear_combination r3983
    have ha5 : rho 16556 * (1 - rho 16554) = rho 16551 - rho 16552 - rho 16553 := by
      linear_combination r3984
    have haddx :
        rho 16555 * (1 + 3021 * (rho 16550 * seg16AccX78 rho) * (rho 16549 * seg16AccY78 rho)) =
          rho 16550 * seg16AccX78 rho + rho 16549 * seg16AccY78 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16556 * (1 - 3021 * (rho 16550 * seg16AccX78 rho) * (rho 16549 * seg16AccY78 rho)) =
          (-1) * (rho 16550 * seg16AccX78 rho) - rho 16549 * seg16AccY78 rho +
            (seg16AccY78 rho - seg16AccX78 rho * (-1)) * (rho 16549 + rho 16550) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16556 * (1 - rho 16554) = rho 16551 - rho 16552 - rho 16553 := ha5
        _ = (-1) * rho 16552 - rho 16553 + (seg16AccY78 rho - seg16AccX78 rho * (-1)) * (rho 16549 + rho 16550) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX79 rho = seg16AccX78 rho - Bool.toZMod bit * (seg16AccX78 rho - rho 16555) := by
      have hd : rho 16557 = Bool.toZMod bit * (rho 16555 - seg16AccX78 rho) := by
        rw [← hbit, seg16LadderFlatX78_eq]
        unfold seg16LadderFlatX78
        linear_combination -r3985
      unfold seg16AccX79
      linear_combination hd
    have hsely : seg16AccY79 rho = seg16AccY78 rho - Bool.toZMod bit * (seg16AccY78 rho - rho 16556) := by
      have hd : rho 16558 = Bool.toZMod bit * (rho 16556 - seg16AccY78 rho) := by
        rw [← hbit, seg16LadderFlatY78_eq]
        unfold seg16LadderFlatY78
        linear_combination -r3986
      unfold seg16AccY79
      linear_combination hd
    have hd0 : rho 16549 * rho 16550 = rho 16559 := by linear_combination r3987
    have hd1 : rho 16549 * rho 16549 = rho 16560 := by linear_combination r3988
    have hd2 : rho 16550 * rho 16550 = rho 16561 := by linear_combination r3989
    have hd3 : rho 16562 * (rho 16550 * rho 16550 + rho 16549 * rho 16549 * (-1)) = 2 * (rho 16549 * rho 16550) := by
      rw [hd0, hd1, hd2]
      linear_combination r3990
    have hd4 : rho 16563 * (2 - (rho 16550 * rho 16550 + rho 16549 * rho 16549 * (-1))) = rho 16550 * rho 16550 - rho 16549 * rho 16549 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3991
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX78 rho : Seg16.F), (seg16AccY78 rho : Seg16.F)⟩
      ⟨(rho 16549 : Seg16.F), (rho 16550 : Seg16.F)⟩
      ⟨(rho 16555 : Seg16.F), (rho 16556 : Seg16.F)⟩
      ⟨(seg16AccX79 rho : Seg16.F), (seg16AccY79 rho : Seg16.F)⟩
      ⟨(rho 16562 : Seg16.F), (rho 16563 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung78

theorem seg16_rung79 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15371 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX79 rho : Seg16.F), (seg16AccY79 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16562 : Seg16.F), (rho 16563 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX79 rho : Seg16.F), (seg16AccY79 rho : Seg16.F)⟩
        ⟨(rho 16562 : Seg16.F), (rho 16563 : Seg16.F)⟩
        ⟨(seg16AccX80 rho : Seg16.F), (seg16AccY80 rho : Seg16.F)⟩
        ⟨(rho 16575 : Seg16.F), (rho 16576 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p49,
    p50, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart49 at p49
  rcases p49 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3992, r3993, r3994, r3995, r3996, r3997, r3998, r3999⟩
  unfold Seg16.relationPart50 at p50
  rcases p50 with ⟨r4000, r4001, r4002, r4003, r4004, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow3992 Seg16.relationLc430 Seg16.relationLc430Part0 Seg16.relationLc430Part1 Seg16.relationLc430Part2 Seg16.relationLc430Part3 Seg16.relationLc430Part4 at r3992
  unfold Seg16.relationRow3993 Seg16.relationLc431 Seg16.relationLc431Part0 Seg16.relationLc431Part1 Seg16.relationLc431Part2 at r3993
  unfold Seg16.relationRow3994 Seg16.relationLc432 Seg16.relationLc432Part0 Seg16.relationLc432Part1 Seg16.relationLc432Part2 at r3994
  unfold Seg16.relationRow3995 at r3995
  unfold Seg16.relationRow3996 at r3996
  unfold Seg16.relationRow3997 at r3997
  unfold Seg16.relationRow3998 Seg16.relationLc433 Seg16.relationLc433Part0 Seg16.relationLc433Part1 Seg16.relationLc433Part2 at r3998
  unfold Seg16.relationRow3999 Seg16.relationLc434 Seg16.relationLc434Part0 Seg16.relationLc434Part1 Seg16.relationLc434Part2 at r3999
  unfold Seg16.relationRow4000 at r4000
  unfold Seg16.relationRow4001 at r4001
  unfold Seg16.relationRow4002 at r4002
  unfold Seg16.relationRow4003 at r4003
  unfold Seg16.relationRow4004 at r4004
  have hrung79 (bit : Bool) (hbit : rho 15371 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX79 rho : Seg16.F), (seg16AccY79 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16562 : Seg16.F), (rho 16563 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX79 rho : Seg16.F), (seg16AccY79 rho : Seg16.F)⟩
        ⟨(rho 16562 : Seg16.F), (rho 16563 : Seg16.F)⟩
        ⟨(seg16AccX80 rho : Seg16.F), (seg16AccY80 rho : Seg16.F)⟩
        ⟨(rho 16575 : Seg16.F), (rho 16576 : Seg16.F)⟩ := by
    have ha0 : (rho 16562 + rho 16563) * (seg16AccX79 rho + seg16AccY79 rho) = rho 16564 := by
      rw [seg16LadderFlatX79_eq, seg16LadderFlatY79_eq]
      unfold seg16LadderFlatX79 seg16LadderFlatY79
      linear_combination r3992
    have ha1 : rho 16563 * seg16AccX79 rho = rho 16565 := by
      rw [seg16LadderFlatX79_eq]
      unfold seg16LadderFlatX79
      linear_combination r3993
    have ha2 : rho 16562 * seg16AccY79 rho = rho 16566 := by
      rw [seg16LadderFlatY79_eq]
      unfold seg16LadderFlatY79
      linear_combination r3994
    have ha3 : 3021 * rho 16565 * rho 16566 = rho 16567 := by
      linear_combination r3995
    have ha4 : rho 16568 * (1 + rho 16567) = rho 16565 + rho 16566 := by
      linear_combination r3996
    have ha5 : rho 16569 * (1 - rho 16567) = rho 16564 - rho 16565 - rho 16566 := by
      linear_combination r3997
    have haddx :
        rho 16568 * (1 + 3021 * (rho 16563 * seg16AccX79 rho) * (rho 16562 * seg16AccY79 rho)) =
          rho 16563 * seg16AccX79 rho + rho 16562 * seg16AccY79 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16569 * (1 - 3021 * (rho 16563 * seg16AccX79 rho) * (rho 16562 * seg16AccY79 rho)) =
          (-1) * (rho 16563 * seg16AccX79 rho) - rho 16562 * seg16AccY79 rho +
            (seg16AccY79 rho - seg16AccX79 rho * (-1)) * (rho 16562 + rho 16563) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16569 * (1 - rho 16567) = rho 16564 - rho 16565 - rho 16566 := ha5
        _ = (-1) * rho 16565 - rho 16566 + (seg16AccY79 rho - seg16AccX79 rho * (-1)) * (rho 16562 + rho 16563) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX80 rho = seg16AccX79 rho - Bool.toZMod bit * (seg16AccX79 rho - rho 16568) := by
      have hd : rho 16570 = Bool.toZMod bit * (rho 16568 - seg16AccX79 rho) := by
        rw [← hbit, seg16LadderFlatX79_eq]
        unfold seg16LadderFlatX79
        linear_combination -r3998
      unfold seg16AccX80
      linear_combination hd
    have hsely : seg16AccY80 rho = seg16AccY79 rho - Bool.toZMod bit * (seg16AccY79 rho - rho 16569) := by
      have hd : rho 16571 = Bool.toZMod bit * (rho 16569 - seg16AccY79 rho) := by
        rw [← hbit, seg16LadderFlatY79_eq]
        unfold seg16LadderFlatY79
        linear_combination -r3999
      unfold seg16AccY80
      linear_combination hd
    have hd0 : rho 16562 * rho 16563 = rho 16572 := by linear_combination r4000
    have hd1 : rho 16562 * rho 16562 = rho 16573 := by linear_combination r4001
    have hd2 : rho 16563 * rho 16563 = rho 16574 := by linear_combination r4002
    have hd3 : rho 16575 * (rho 16563 * rho 16563 + rho 16562 * rho 16562 * (-1)) = 2 * (rho 16562 * rho 16563) := by
      rw [hd0, hd1, hd2]
      linear_combination r4003
    have hd4 : rho 16576 * (2 - (rho 16563 * rho 16563 + rho 16562 * rho 16562 * (-1))) = rho 16563 * rho 16563 - rho 16562 * rho 16562 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4004
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX79 rho : Seg16.F), (seg16AccY79 rho : Seg16.F)⟩
      ⟨(rho 16562 : Seg16.F), (rho 16563 : Seg16.F)⟩
      ⟨(rho 16568 : Seg16.F), (rho 16569 : Seg16.F)⟩
      ⟨(seg16AccX80 rho : Seg16.F), (seg16AccY80 rho : Seg16.F)⟩
      ⟨(rho 16575 : Seg16.F), (rho 16576 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung79

theorem seg16_rung80 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15372 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX80 rho : Seg16.F), (seg16AccY80 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16575 : Seg16.F), (rho 16576 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX80 rho : Seg16.F), (seg16AccY80 rho : Seg16.F)⟩
        ⟨(rho 16575 : Seg16.F), (rho 16576 : Seg16.F)⟩
        ⟨(seg16AccX81 rho : Seg16.F), (seg16AccY81 rho : Seg16.F)⟩
        ⟨(rho 16588 : Seg16.F), (rho 16589 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p50, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart50 at p50
  rcases p50 with ⟨_, _, _, _, _, r4005, r4006, r4007, r4008, r4009, r4010, r4011, r4012, r4013, r4014, r4015, r4016, r4017, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow4005 Seg16.relationLc435 Seg16.relationLc435Part0 Seg16.relationLc435Part1 Seg16.relationLc435Part2 Seg16.relationLc435Part3 Seg16.relationLc435Part4 Seg16.relationLc435Part5 at r4005
  unfold Seg16.relationRow4006 Seg16.relationLc436 Seg16.relationLc436Part0 Seg16.relationLc436Part1 Seg16.relationLc436Part2 at r4006
  unfold Seg16.relationRow4007 Seg16.relationLc437 Seg16.relationLc437Part0 Seg16.relationLc437Part1 Seg16.relationLc437Part2 at r4007
  unfold Seg16.relationRow4008 at r4008
  unfold Seg16.relationRow4009 at r4009
  unfold Seg16.relationRow4010 at r4010
  unfold Seg16.relationRow4011 Seg16.relationLc438 Seg16.relationLc438Part0 Seg16.relationLc438Part1 Seg16.relationLc438Part2 at r4011
  unfold Seg16.relationRow4012 Seg16.relationLc439 Seg16.relationLc439Part0 Seg16.relationLc439Part1 Seg16.relationLc439Part2 at r4012
  unfold Seg16.relationRow4013 at r4013
  unfold Seg16.relationRow4014 at r4014
  unfold Seg16.relationRow4015 at r4015
  unfold Seg16.relationRow4016 at r4016
  unfold Seg16.relationRow4017 at r4017
  have hrung80 (bit : Bool) (hbit : rho 15372 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX80 rho : Seg16.F), (seg16AccY80 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16575 : Seg16.F), (rho 16576 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX80 rho : Seg16.F), (seg16AccY80 rho : Seg16.F)⟩
        ⟨(rho 16575 : Seg16.F), (rho 16576 : Seg16.F)⟩
        ⟨(seg16AccX81 rho : Seg16.F), (seg16AccY81 rho : Seg16.F)⟩
        ⟨(rho 16588 : Seg16.F), (rho 16589 : Seg16.F)⟩ := by
    have ha0 : (rho 16575 + rho 16576) * (seg16AccX80 rho + seg16AccY80 rho) = rho 16577 := by
      rw [seg16LadderFlatX80_eq, seg16LadderFlatY80_eq]
      unfold seg16LadderFlatX80 seg16LadderFlatY80
      linear_combination r4005
    have ha1 : rho 16576 * seg16AccX80 rho = rho 16578 := by
      rw [seg16LadderFlatX80_eq]
      unfold seg16LadderFlatX80
      linear_combination r4006
    have ha2 : rho 16575 * seg16AccY80 rho = rho 16579 := by
      rw [seg16LadderFlatY80_eq]
      unfold seg16LadderFlatY80
      linear_combination r4007
    have ha3 : 3021 * rho 16578 * rho 16579 = rho 16580 := by
      linear_combination r4008
    have ha4 : rho 16581 * (1 + rho 16580) = rho 16578 + rho 16579 := by
      linear_combination r4009
    have ha5 : rho 16582 * (1 - rho 16580) = rho 16577 - rho 16578 - rho 16579 := by
      linear_combination r4010
    have haddx :
        rho 16581 * (1 + 3021 * (rho 16576 * seg16AccX80 rho) * (rho 16575 * seg16AccY80 rho)) =
          rho 16576 * seg16AccX80 rho + rho 16575 * seg16AccY80 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16582 * (1 - 3021 * (rho 16576 * seg16AccX80 rho) * (rho 16575 * seg16AccY80 rho)) =
          (-1) * (rho 16576 * seg16AccX80 rho) - rho 16575 * seg16AccY80 rho +
            (seg16AccY80 rho - seg16AccX80 rho * (-1)) * (rho 16575 + rho 16576) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16582 * (1 - rho 16580) = rho 16577 - rho 16578 - rho 16579 := ha5
        _ = (-1) * rho 16578 - rho 16579 + (seg16AccY80 rho - seg16AccX80 rho * (-1)) * (rho 16575 + rho 16576) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX81 rho = seg16AccX80 rho - Bool.toZMod bit * (seg16AccX80 rho - rho 16581) := by
      have hd : rho 16583 = Bool.toZMod bit * (rho 16581 - seg16AccX80 rho) := by
        rw [← hbit, seg16LadderFlatX80_eq]
        unfold seg16LadderFlatX80
        linear_combination -r4011
      unfold seg16AccX81
      linear_combination hd
    have hsely : seg16AccY81 rho = seg16AccY80 rho - Bool.toZMod bit * (seg16AccY80 rho - rho 16582) := by
      have hd : rho 16584 = Bool.toZMod bit * (rho 16582 - seg16AccY80 rho) := by
        rw [← hbit, seg16LadderFlatY80_eq]
        unfold seg16LadderFlatY80
        linear_combination -r4012
      unfold seg16AccY81
      linear_combination hd
    have hd0 : rho 16575 * rho 16576 = rho 16585 := by linear_combination r4013
    have hd1 : rho 16575 * rho 16575 = rho 16586 := by linear_combination r4014
    have hd2 : rho 16576 * rho 16576 = rho 16587 := by linear_combination r4015
    have hd3 : rho 16588 * (rho 16576 * rho 16576 + rho 16575 * rho 16575 * (-1)) = 2 * (rho 16575 * rho 16576) := by
      rw [hd0, hd1, hd2]
      linear_combination r4016
    have hd4 : rho 16589 * (2 - (rho 16576 * rho 16576 + rho 16575 * rho 16575 * (-1))) = rho 16576 * rho 16576 - rho 16575 * rho 16575 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4017
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX80 rho : Seg16.F), (seg16AccY80 rho : Seg16.F)⟩
      ⟨(rho 16575 : Seg16.F), (rho 16576 : Seg16.F)⟩
      ⟨(rho 16581 : Seg16.F), (rho 16582 : Seg16.F)⟩
      ⟨(seg16AccX81 rho : Seg16.F), (seg16AccY81 rho : Seg16.F)⟩
      ⟨(rho 16588 : Seg16.F), (rho 16589 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung80

theorem seg16_rung81 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15373 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX81 rho : Seg16.F), (seg16AccY81 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16588 : Seg16.F), (rho 16589 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX81 rho : Seg16.F), (seg16AccY81 rho : Seg16.F)⟩
        ⟨(rho 16588 : Seg16.F), (rho 16589 : Seg16.F)⟩
        ⟨(seg16AccX82 rho : Seg16.F), (seg16AccY82 rho : Seg16.F)⟩
        ⟨(rho 16601 : Seg16.F), (rho 16602 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p50, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart50 at p50
  rcases p50 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4018, r4019, r4020, r4021, r4022, r4023, r4024, r4025, r4026, r4027, r4028, r4029, r4030, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow4018 Seg16.relationLc440 Seg16.relationLc440Part0 Seg16.relationLc440Part1 Seg16.relationLc440Part2 Seg16.relationLc440Part3 Seg16.relationLc440Part4 Seg16.relationLc440Part5 at r4018
  unfold Seg16.relationRow4019 Seg16.relationLc441 Seg16.relationLc441Part0 Seg16.relationLc441Part1 Seg16.relationLc441Part2 at r4019
  unfold Seg16.relationRow4020 Seg16.relationLc442 Seg16.relationLc442Part0 Seg16.relationLc442Part1 Seg16.relationLc442Part2 at r4020
  unfold Seg16.relationRow4021 at r4021
  unfold Seg16.relationRow4022 at r4022
  unfold Seg16.relationRow4023 at r4023
  unfold Seg16.relationRow4024 Seg16.relationLc443 Seg16.relationLc443Part0 Seg16.relationLc443Part1 Seg16.relationLc443Part2 at r4024
  unfold Seg16.relationRow4025 Seg16.relationLc444 Seg16.relationLc444Part0 Seg16.relationLc444Part1 Seg16.relationLc444Part2 at r4025
  unfold Seg16.relationRow4026 at r4026
  unfold Seg16.relationRow4027 at r4027
  unfold Seg16.relationRow4028 at r4028
  unfold Seg16.relationRow4029 at r4029
  unfold Seg16.relationRow4030 at r4030
  have hrung81 (bit : Bool) (hbit : rho 15373 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX81 rho : Seg16.F), (seg16AccY81 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16588 : Seg16.F), (rho 16589 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX81 rho : Seg16.F), (seg16AccY81 rho : Seg16.F)⟩
        ⟨(rho 16588 : Seg16.F), (rho 16589 : Seg16.F)⟩
        ⟨(seg16AccX82 rho : Seg16.F), (seg16AccY82 rho : Seg16.F)⟩
        ⟨(rho 16601 : Seg16.F), (rho 16602 : Seg16.F)⟩ := by
    have ha0 : (rho 16588 + rho 16589) * (seg16AccX81 rho + seg16AccY81 rho) = rho 16590 := by
      rw [seg16LadderFlatX81_eq, seg16LadderFlatY81_eq]
      unfold seg16LadderFlatX81 seg16LadderFlatY81
      linear_combination r4018
    have ha1 : rho 16589 * seg16AccX81 rho = rho 16591 := by
      rw [seg16LadderFlatX81_eq]
      unfold seg16LadderFlatX81
      linear_combination r4019
    have ha2 : rho 16588 * seg16AccY81 rho = rho 16592 := by
      rw [seg16LadderFlatY81_eq]
      unfold seg16LadderFlatY81
      linear_combination r4020
    have ha3 : 3021 * rho 16591 * rho 16592 = rho 16593 := by
      linear_combination r4021
    have ha4 : rho 16594 * (1 + rho 16593) = rho 16591 + rho 16592 := by
      linear_combination r4022
    have ha5 : rho 16595 * (1 - rho 16593) = rho 16590 - rho 16591 - rho 16592 := by
      linear_combination r4023
    have haddx :
        rho 16594 * (1 + 3021 * (rho 16589 * seg16AccX81 rho) * (rho 16588 * seg16AccY81 rho)) =
          rho 16589 * seg16AccX81 rho + rho 16588 * seg16AccY81 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16595 * (1 - 3021 * (rho 16589 * seg16AccX81 rho) * (rho 16588 * seg16AccY81 rho)) =
          (-1) * (rho 16589 * seg16AccX81 rho) - rho 16588 * seg16AccY81 rho +
            (seg16AccY81 rho - seg16AccX81 rho * (-1)) * (rho 16588 + rho 16589) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16595 * (1 - rho 16593) = rho 16590 - rho 16591 - rho 16592 := ha5
        _ = (-1) * rho 16591 - rho 16592 + (seg16AccY81 rho - seg16AccX81 rho * (-1)) * (rho 16588 + rho 16589) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX82 rho = seg16AccX81 rho - Bool.toZMod bit * (seg16AccX81 rho - rho 16594) := by
      have hd : rho 16596 = Bool.toZMod bit * (rho 16594 - seg16AccX81 rho) := by
        rw [← hbit, seg16LadderFlatX81_eq]
        unfold seg16LadderFlatX81
        linear_combination -r4024
      unfold seg16AccX82
      linear_combination hd
    have hsely : seg16AccY82 rho = seg16AccY81 rho - Bool.toZMod bit * (seg16AccY81 rho - rho 16595) := by
      have hd : rho 16597 = Bool.toZMod bit * (rho 16595 - seg16AccY81 rho) := by
        rw [← hbit, seg16LadderFlatY81_eq]
        unfold seg16LadderFlatY81
        linear_combination -r4025
      unfold seg16AccY82
      linear_combination hd
    have hd0 : rho 16588 * rho 16589 = rho 16598 := by linear_combination r4026
    have hd1 : rho 16588 * rho 16588 = rho 16599 := by linear_combination r4027
    have hd2 : rho 16589 * rho 16589 = rho 16600 := by linear_combination r4028
    have hd3 : rho 16601 * (rho 16589 * rho 16589 + rho 16588 * rho 16588 * (-1)) = 2 * (rho 16588 * rho 16589) := by
      rw [hd0, hd1, hd2]
      linear_combination r4029
    have hd4 : rho 16602 * (2 - (rho 16589 * rho 16589 + rho 16588 * rho 16588 * (-1))) = rho 16589 * rho 16589 - rho 16588 * rho 16588 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4030
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX81 rho : Seg16.F), (seg16AccY81 rho : Seg16.F)⟩
      ⟨(rho 16588 : Seg16.F), (rho 16589 : Seg16.F)⟩
      ⟨(rho 16594 : Seg16.F), (rho 16595 : Seg16.F)⟩
      ⟨(seg16AccX82 rho : Seg16.F), (seg16AccY82 rho : Seg16.F)⟩
      ⟨(rho 16601 : Seg16.F), (rho 16602 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung81

theorem seg16_rung82 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15374 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX82 rho : Seg16.F), (seg16AccY82 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16601 : Seg16.F), (rho 16602 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX82 rho : Seg16.F), (seg16AccY82 rho : Seg16.F)⟩
        ⟨(rho 16601 : Seg16.F), (rho 16602 : Seg16.F)⟩
        ⟨(seg16AccX83 rho : Seg16.F), (seg16AccY83 rho : Seg16.F)⟩
        ⟨(rho 16614 : Seg16.F), (rho 16615 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p50, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart50 at p50
  rcases p50 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4031, r4032, r4033, r4034, r4035, r4036, r4037, r4038, r4039, r4040, r4041, r4042, r4043, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow4031 Seg16.relationLc445 Seg16.relationLc445Part0 Seg16.relationLc445Part1 Seg16.relationLc445Part2 Seg16.relationLc445Part3 Seg16.relationLc445Part4 Seg16.relationLc445Part5 at r4031
  unfold Seg16.relationRow4032 Seg16.relationLc446 Seg16.relationLc446Part0 Seg16.relationLc446Part1 Seg16.relationLc446Part2 at r4032
  unfold Seg16.relationRow4033 Seg16.relationLc447 Seg16.relationLc447Part0 Seg16.relationLc447Part1 Seg16.relationLc447Part2 at r4033
  unfold Seg16.relationRow4034 at r4034
  unfold Seg16.relationRow4035 at r4035
  unfold Seg16.relationRow4036 at r4036
  unfold Seg16.relationRow4037 Seg16.relationLc448 Seg16.relationLc448Part0 Seg16.relationLc448Part1 Seg16.relationLc448Part2 at r4037
  unfold Seg16.relationRow4038 Seg16.relationLc449 Seg16.relationLc449Part0 Seg16.relationLc449Part1 Seg16.relationLc449Part2 at r4038
  unfold Seg16.relationRow4039 at r4039
  unfold Seg16.relationRow4040 at r4040
  unfold Seg16.relationRow4041 at r4041
  unfold Seg16.relationRow4042 at r4042
  unfold Seg16.relationRow4043 at r4043
  have hrung82 (bit : Bool) (hbit : rho 15374 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX82 rho : Seg16.F), (seg16AccY82 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16601 : Seg16.F), (rho 16602 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX82 rho : Seg16.F), (seg16AccY82 rho : Seg16.F)⟩
        ⟨(rho 16601 : Seg16.F), (rho 16602 : Seg16.F)⟩
        ⟨(seg16AccX83 rho : Seg16.F), (seg16AccY83 rho : Seg16.F)⟩
        ⟨(rho 16614 : Seg16.F), (rho 16615 : Seg16.F)⟩ := by
    have ha0 : (rho 16601 + rho 16602) * (seg16AccX82 rho + seg16AccY82 rho) = rho 16603 := by
      rw [seg16LadderFlatX82_eq, seg16LadderFlatY82_eq]
      unfold seg16LadderFlatX82 seg16LadderFlatY82
      linear_combination r4031
    have ha1 : rho 16602 * seg16AccX82 rho = rho 16604 := by
      rw [seg16LadderFlatX82_eq]
      unfold seg16LadderFlatX82
      linear_combination r4032
    have ha2 : rho 16601 * seg16AccY82 rho = rho 16605 := by
      rw [seg16LadderFlatY82_eq]
      unfold seg16LadderFlatY82
      linear_combination r4033
    have ha3 : 3021 * rho 16604 * rho 16605 = rho 16606 := by
      linear_combination r4034
    have ha4 : rho 16607 * (1 + rho 16606) = rho 16604 + rho 16605 := by
      linear_combination r4035
    have ha5 : rho 16608 * (1 - rho 16606) = rho 16603 - rho 16604 - rho 16605 := by
      linear_combination r4036
    have haddx :
        rho 16607 * (1 + 3021 * (rho 16602 * seg16AccX82 rho) * (rho 16601 * seg16AccY82 rho)) =
          rho 16602 * seg16AccX82 rho + rho 16601 * seg16AccY82 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16608 * (1 - 3021 * (rho 16602 * seg16AccX82 rho) * (rho 16601 * seg16AccY82 rho)) =
          (-1) * (rho 16602 * seg16AccX82 rho) - rho 16601 * seg16AccY82 rho +
            (seg16AccY82 rho - seg16AccX82 rho * (-1)) * (rho 16601 + rho 16602) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16608 * (1 - rho 16606) = rho 16603 - rho 16604 - rho 16605 := ha5
        _ = (-1) * rho 16604 - rho 16605 + (seg16AccY82 rho - seg16AccX82 rho * (-1)) * (rho 16601 + rho 16602) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX83 rho = seg16AccX82 rho - Bool.toZMod bit * (seg16AccX82 rho - rho 16607) := by
      have hd : rho 16609 = Bool.toZMod bit * (rho 16607 - seg16AccX82 rho) := by
        rw [← hbit, seg16LadderFlatX82_eq]
        unfold seg16LadderFlatX82
        linear_combination -r4037
      unfold seg16AccX83
      linear_combination hd
    have hsely : seg16AccY83 rho = seg16AccY82 rho - Bool.toZMod bit * (seg16AccY82 rho - rho 16608) := by
      have hd : rho 16610 = Bool.toZMod bit * (rho 16608 - seg16AccY82 rho) := by
        rw [← hbit, seg16LadderFlatY82_eq]
        unfold seg16LadderFlatY82
        linear_combination -r4038
      unfold seg16AccY83
      linear_combination hd
    have hd0 : rho 16601 * rho 16602 = rho 16611 := by linear_combination r4039
    have hd1 : rho 16601 * rho 16601 = rho 16612 := by linear_combination r4040
    have hd2 : rho 16602 * rho 16602 = rho 16613 := by linear_combination r4041
    have hd3 : rho 16614 * (rho 16602 * rho 16602 + rho 16601 * rho 16601 * (-1)) = 2 * (rho 16601 * rho 16602) := by
      rw [hd0, hd1, hd2]
      linear_combination r4042
    have hd4 : rho 16615 * (2 - (rho 16602 * rho 16602 + rho 16601 * rho 16601 * (-1))) = rho 16602 * rho 16602 - rho 16601 * rho 16601 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4043
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX82 rho : Seg16.F), (seg16AccY82 rho : Seg16.F)⟩
      ⟨(rho 16601 : Seg16.F), (rho 16602 : Seg16.F)⟩
      ⟨(rho 16607 : Seg16.F), (rho 16608 : Seg16.F)⟩
      ⟨(seg16AccX83 rho : Seg16.F), (seg16AccY83 rho : Seg16.F)⟩
      ⟨(rho 16614 : Seg16.F), (rho 16615 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung82

theorem seg16_rung83 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15375 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX83 rho : Seg16.F), (seg16AccY83 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16614 : Seg16.F), (rho 16615 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX83 rho : Seg16.F), (seg16AccY83 rho : Seg16.F)⟩
        ⟨(rho 16614 : Seg16.F), (rho 16615 : Seg16.F)⟩
        ⟨(seg16AccX84 rho : Seg16.F), (seg16AccY84 rho : Seg16.F)⟩
        ⟨(rho 16627 : Seg16.F), (rho 16628 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p50, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart50 at p50
  rcases p50 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4044, r4045, r4046, r4047, r4048, r4049, r4050, r4051, r4052, r4053, r4054, r4055, r4056, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow4044 Seg16.relationLc450 Seg16.relationLc450Part0 Seg16.relationLc450Part1 Seg16.relationLc450Part2 Seg16.relationLc450Part3 Seg16.relationLc450Part4 Seg16.relationLc450Part5 at r4044
  unfold Seg16.relationRow4045 Seg16.relationLc451 Seg16.relationLc451Part0 Seg16.relationLc451Part1 Seg16.relationLc451Part2 at r4045
  unfold Seg16.relationRow4046 Seg16.relationLc452 Seg16.relationLc452Part0 Seg16.relationLc452Part1 Seg16.relationLc452Part2 at r4046
  unfold Seg16.relationRow4047 at r4047
  unfold Seg16.relationRow4048 at r4048
  unfold Seg16.relationRow4049 at r4049
  unfold Seg16.relationRow4050 Seg16.relationLc453 Seg16.relationLc453Part0 Seg16.relationLc453Part1 Seg16.relationLc453Part2 at r4050
  unfold Seg16.relationRow4051 Seg16.relationLc454 Seg16.relationLc454Part0 Seg16.relationLc454Part1 Seg16.relationLc454Part2 at r4051
  unfold Seg16.relationRow4052 at r4052
  unfold Seg16.relationRow4053 at r4053
  unfold Seg16.relationRow4054 at r4054
  unfold Seg16.relationRow4055 at r4055
  unfold Seg16.relationRow4056 at r4056
  have hrung83 (bit : Bool) (hbit : rho 15375 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX83 rho : Seg16.F), (seg16AccY83 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16614 : Seg16.F), (rho 16615 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX83 rho : Seg16.F), (seg16AccY83 rho : Seg16.F)⟩
        ⟨(rho 16614 : Seg16.F), (rho 16615 : Seg16.F)⟩
        ⟨(seg16AccX84 rho : Seg16.F), (seg16AccY84 rho : Seg16.F)⟩
        ⟨(rho 16627 : Seg16.F), (rho 16628 : Seg16.F)⟩ := by
    have ha0 : (rho 16614 + rho 16615) * (seg16AccX83 rho + seg16AccY83 rho) = rho 16616 := by
      rw [seg16LadderFlatX83_eq, seg16LadderFlatY83_eq]
      unfold seg16LadderFlatX83 seg16LadderFlatY83
      linear_combination r4044
    have ha1 : rho 16615 * seg16AccX83 rho = rho 16617 := by
      rw [seg16LadderFlatX83_eq]
      unfold seg16LadderFlatX83
      linear_combination r4045
    have ha2 : rho 16614 * seg16AccY83 rho = rho 16618 := by
      rw [seg16LadderFlatY83_eq]
      unfold seg16LadderFlatY83
      linear_combination r4046
    have ha3 : 3021 * rho 16617 * rho 16618 = rho 16619 := by
      linear_combination r4047
    have ha4 : rho 16620 * (1 + rho 16619) = rho 16617 + rho 16618 := by
      linear_combination r4048
    have ha5 : rho 16621 * (1 - rho 16619) = rho 16616 - rho 16617 - rho 16618 := by
      linear_combination r4049
    have haddx :
        rho 16620 * (1 + 3021 * (rho 16615 * seg16AccX83 rho) * (rho 16614 * seg16AccY83 rho)) =
          rho 16615 * seg16AccX83 rho + rho 16614 * seg16AccY83 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16621 * (1 - 3021 * (rho 16615 * seg16AccX83 rho) * (rho 16614 * seg16AccY83 rho)) =
          (-1) * (rho 16615 * seg16AccX83 rho) - rho 16614 * seg16AccY83 rho +
            (seg16AccY83 rho - seg16AccX83 rho * (-1)) * (rho 16614 + rho 16615) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16621 * (1 - rho 16619) = rho 16616 - rho 16617 - rho 16618 := ha5
        _ = (-1) * rho 16617 - rho 16618 + (seg16AccY83 rho - seg16AccX83 rho * (-1)) * (rho 16614 + rho 16615) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX84 rho = seg16AccX83 rho - Bool.toZMod bit * (seg16AccX83 rho - rho 16620) := by
      have hd : rho 16622 = Bool.toZMod bit * (rho 16620 - seg16AccX83 rho) := by
        rw [← hbit, seg16LadderFlatX83_eq]
        unfold seg16LadderFlatX83
        linear_combination -r4050
      unfold seg16AccX84
      linear_combination hd
    have hsely : seg16AccY84 rho = seg16AccY83 rho - Bool.toZMod bit * (seg16AccY83 rho - rho 16621) := by
      have hd : rho 16623 = Bool.toZMod bit * (rho 16621 - seg16AccY83 rho) := by
        rw [← hbit, seg16LadderFlatY83_eq]
        unfold seg16LadderFlatY83
        linear_combination -r4051
      unfold seg16AccY84
      linear_combination hd
    have hd0 : rho 16614 * rho 16615 = rho 16624 := by linear_combination r4052
    have hd1 : rho 16614 * rho 16614 = rho 16625 := by linear_combination r4053
    have hd2 : rho 16615 * rho 16615 = rho 16626 := by linear_combination r4054
    have hd3 : rho 16627 * (rho 16615 * rho 16615 + rho 16614 * rho 16614 * (-1)) = 2 * (rho 16614 * rho 16615) := by
      rw [hd0, hd1, hd2]
      linear_combination r4055
    have hd4 : rho 16628 * (2 - (rho 16615 * rho 16615 + rho 16614 * rho 16614 * (-1))) = rho 16615 * rho 16615 - rho 16614 * rho 16614 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4056
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX83 rho : Seg16.F), (seg16AccY83 rho : Seg16.F)⟩
      ⟨(rho 16614 : Seg16.F), (rho 16615 : Seg16.F)⟩
      ⟨(rho 16620 : Seg16.F), (rho 16621 : Seg16.F)⟩
      ⟨(seg16AccX84 rho : Seg16.F), (seg16AccY84 rho : Seg16.F)⟩
      ⟨(rho 16627 : Seg16.F), (rho 16628 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung83

theorem seg16_rung84 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15376 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX84 rho : Seg16.F), (seg16AccY84 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16627 : Seg16.F), (rho 16628 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX84 rho : Seg16.F), (seg16AccY84 rho : Seg16.F)⟩
        ⟨(rho 16627 : Seg16.F), (rho 16628 : Seg16.F)⟩
        ⟨(seg16AccX85 rho : Seg16.F), (seg16AccY85 rho : Seg16.F)⟩
        ⟨(rho 16640 : Seg16.F), (rho 16641 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p50, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart50 at p50
  rcases p50 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4057, r4058, r4059, r4060, r4061, r4062, r4063, r4064, r4065, r4066, r4067, r4068, r4069, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow4057 Seg16.relationLc455 Seg16.relationLc455Part0 Seg16.relationLc455Part1 Seg16.relationLc455Part2 Seg16.relationLc455Part3 Seg16.relationLc455Part4 Seg16.relationLc455Part5 at r4057
  unfold Seg16.relationRow4058 Seg16.relationLc456 Seg16.relationLc456Part0 Seg16.relationLc456Part1 Seg16.relationLc456Part2 at r4058
  unfold Seg16.relationRow4059 Seg16.relationLc457 Seg16.relationLc457Part0 Seg16.relationLc457Part1 Seg16.relationLc457Part2 at r4059
  unfold Seg16.relationRow4060 at r4060
  unfold Seg16.relationRow4061 at r4061
  unfold Seg16.relationRow4062 at r4062
  unfold Seg16.relationRow4063 Seg16.relationLc458 Seg16.relationLc458Part0 Seg16.relationLc458Part1 Seg16.relationLc458Part2 at r4063
  unfold Seg16.relationRow4064 Seg16.relationLc459 Seg16.relationLc459Part0 Seg16.relationLc459Part1 Seg16.relationLc459Part2 at r4064
  unfold Seg16.relationRow4065 at r4065
  unfold Seg16.relationRow4066 at r4066
  unfold Seg16.relationRow4067 at r4067
  unfold Seg16.relationRow4068 at r4068
  unfold Seg16.relationRow4069 at r4069
  have hrung84 (bit : Bool) (hbit : rho 15376 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX84 rho : Seg16.F), (seg16AccY84 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16627 : Seg16.F), (rho 16628 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX84 rho : Seg16.F), (seg16AccY84 rho : Seg16.F)⟩
        ⟨(rho 16627 : Seg16.F), (rho 16628 : Seg16.F)⟩
        ⟨(seg16AccX85 rho : Seg16.F), (seg16AccY85 rho : Seg16.F)⟩
        ⟨(rho 16640 : Seg16.F), (rho 16641 : Seg16.F)⟩ := by
    have ha0 : (rho 16627 + rho 16628) * (seg16AccX84 rho + seg16AccY84 rho) = rho 16629 := by
      rw [seg16LadderFlatX84_eq, seg16LadderFlatY84_eq]
      unfold seg16LadderFlatX84 seg16LadderFlatY84
      linear_combination r4057
    have ha1 : rho 16628 * seg16AccX84 rho = rho 16630 := by
      rw [seg16LadderFlatX84_eq]
      unfold seg16LadderFlatX84
      linear_combination r4058
    have ha2 : rho 16627 * seg16AccY84 rho = rho 16631 := by
      rw [seg16LadderFlatY84_eq]
      unfold seg16LadderFlatY84
      linear_combination r4059
    have ha3 : 3021 * rho 16630 * rho 16631 = rho 16632 := by
      linear_combination r4060
    have ha4 : rho 16633 * (1 + rho 16632) = rho 16630 + rho 16631 := by
      linear_combination r4061
    have ha5 : rho 16634 * (1 - rho 16632) = rho 16629 - rho 16630 - rho 16631 := by
      linear_combination r4062
    have haddx :
        rho 16633 * (1 + 3021 * (rho 16628 * seg16AccX84 rho) * (rho 16627 * seg16AccY84 rho)) =
          rho 16628 * seg16AccX84 rho + rho 16627 * seg16AccY84 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16634 * (1 - 3021 * (rho 16628 * seg16AccX84 rho) * (rho 16627 * seg16AccY84 rho)) =
          (-1) * (rho 16628 * seg16AccX84 rho) - rho 16627 * seg16AccY84 rho +
            (seg16AccY84 rho - seg16AccX84 rho * (-1)) * (rho 16627 + rho 16628) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16634 * (1 - rho 16632) = rho 16629 - rho 16630 - rho 16631 := ha5
        _ = (-1) * rho 16630 - rho 16631 + (seg16AccY84 rho - seg16AccX84 rho * (-1)) * (rho 16627 + rho 16628) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX85 rho = seg16AccX84 rho - Bool.toZMod bit * (seg16AccX84 rho - rho 16633) := by
      have hd : rho 16635 = Bool.toZMod bit * (rho 16633 - seg16AccX84 rho) := by
        rw [← hbit, seg16LadderFlatX84_eq]
        unfold seg16LadderFlatX84
        linear_combination -r4063
      unfold seg16AccX85
      linear_combination hd
    have hsely : seg16AccY85 rho = seg16AccY84 rho - Bool.toZMod bit * (seg16AccY84 rho - rho 16634) := by
      have hd : rho 16636 = Bool.toZMod bit * (rho 16634 - seg16AccY84 rho) := by
        rw [← hbit, seg16LadderFlatY84_eq]
        unfold seg16LadderFlatY84
        linear_combination -r4064
      unfold seg16AccY85
      linear_combination hd
    have hd0 : rho 16627 * rho 16628 = rho 16637 := by linear_combination r4065
    have hd1 : rho 16627 * rho 16627 = rho 16638 := by linear_combination r4066
    have hd2 : rho 16628 * rho 16628 = rho 16639 := by linear_combination r4067
    have hd3 : rho 16640 * (rho 16628 * rho 16628 + rho 16627 * rho 16627 * (-1)) = 2 * (rho 16627 * rho 16628) := by
      rw [hd0, hd1, hd2]
      linear_combination r4068
    have hd4 : rho 16641 * (2 - (rho 16628 * rho 16628 + rho 16627 * rho 16627 * (-1))) = rho 16628 * rho 16628 - rho 16627 * rho 16627 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4069
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX84 rho : Seg16.F), (seg16AccY84 rho : Seg16.F)⟩
      ⟨(rho 16627 : Seg16.F), (rho 16628 : Seg16.F)⟩
      ⟨(rho 16633 : Seg16.F), (rho 16634 : Seg16.F)⟩
      ⟨(seg16AccX85 rho : Seg16.F), (seg16AccY85 rho : Seg16.F)⟩
      ⟨(rho 16640 : Seg16.F), (rho 16641 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung84

theorem seg16_rung85 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15377 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX85 rho : Seg16.F), (seg16AccY85 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16640 : Seg16.F), (rho 16641 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX85 rho : Seg16.F), (seg16AccY85 rho : Seg16.F)⟩
        ⟨(rho 16640 : Seg16.F), (rho 16641 : Seg16.F)⟩
        ⟨(seg16AccX86 rho : Seg16.F), (seg16AccY86 rho : Seg16.F)⟩
        ⟨(rho 16653 : Seg16.F), (rho 16654 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p50, p51, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart50 at p50
  rcases p50 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4070, r4071, r4072, r4073, r4074, r4075, r4076, r4077, r4078, r4079⟩
  unfold Seg16.relationPart51 at p51
  rcases p51 with ⟨r4080, r4081, r4082, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow4070 Seg16.relationLc460 Seg16.relationLc460Part0 Seg16.relationLc460Part1 Seg16.relationLc460Part2 Seg16.relationLc460Part3 Seg16.relationLc460Part4 Seg16.relationLc460Part5 at r4070
  unfold Seg16.relationRow4071 Seg16.relationLc461 Seg16.relationLc461Part0 Seg16.relationLc461Part1 Seg16.relationLc461Part2 at r4071
  unfold Seg16.relationRow4072 Seg16.relationLc462 Seg16.relationLc462Part0 Seg16.relationLc462Part1 Seg16.relationLc462Part2 at r4072
  unfold Seg16.relationRow4073 at r4073
  unfold Seg16.relationRow4074 at r4074
  unfold Seg16.relationRow4075 at r4075
  unfold Seg16.relationRow4076 Seg16.relationLc463 Seg16.relationLc463Part0 Seg16.relationLc463Part1 Seg16.relationLc463Part2 at r4076
  unfold Seg16.relationRow4077 Seg16.relationLc464 Seg16.relationLc464Part0 Seg16.relationLc464Part1 Seg16.relationLc464Part2 at r4077
  unfold Seg16.relationRow4078 at r4078
  unfold Seg16.relationRow4079 at r4079
  unfold Seg16.relationRow4080 at r4080
  unfold Seg16.relationRow4081 at r4081
  unfold Seg16.relationRow4082 at r4082
  have hrung85 (bit : Bool) (hbit : rho 15377 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX85 rho : Seg16.F), (seg16AccY85 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16640 : Seg16.F), (rho 16641 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX85 rho : Seg16.F), (seg16AccY85 rho : Seg16.F)⟩
        ⟨(rho 16640 : Seg16.F), (rho 16641 : Seg16.F)⟩
        ⟨(seg16AccX86 rho : Seg16.F), (seg16AccY86 rho : Seg16.F)⟩
        ⟨(rho 16653 : Seg16.F), (rho 16654 : Seg16.F)⟩ := by
    have ha0 : (rho 16640 + rho 16641) * (seg16AccX85 rho + seg16AccY85 rho) = rho 16642 := by
      rw [seg16LadderFlatX85_eq, seg16LadderFlatY85_eq]
      unfold seg16LadderFlatX85 seg16LadderFlatY85
      linear_combination r4070
    have ha1 : rho 16641 * seg16AccX85 rho = rho 16643 := by
      rw [seg16LadderFlatX85_eq]
      unfold seg16LadderFlatX85
      linear_combination r4071
    have ha2 : rho 16640 * seg16AccY85 rho = rho 16644 := by
      rw [seg16LadderFlatY85_eq]
      unfold seg16LadderFlatY85
      linear_combination r4072
    have ha3 : 3021 * rho 16643 * rho 16644 = rho 16645 := by
      linear_combination r4073
    have ha4 : rho 16646 * (1 + rho 16645) = rho 16643 + rho 16644 := by
      linear_combination r4074
    have ha5 : rho 16647 * (1 - rho 16645) = rho 16642 - rho 16643 - rho 16644 := by
      linear_combination r4075
    have haddx :
        rho 16646 * (1 + 3021 * (rho 16641 * seg16AccX85 rho) * (rho 16640 * seg16AccY85 rho)) =
          rho 16641 * seg16AccX85 rho + rho 16640 * seg16AccY85 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16647 * (1 - 3021 * (rho 16641 * seg16AccX85 rho) * (rho 16640 * seg16AccY85 rho)) =
          (-1) * (rho 16641 * seg16AccX85 rho) - rho 16640 * seg16AccY85 rho +
            (seg16AccY85 rho - seg16AccX85 rho * (-1)) * (rho 16640 + rho 16641) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16647 * (1 - rho 16645) = rho 16642 - rho 16643 - rho 16644 := ha5
        _ = (-1) * rho 16643 - rho 16644 + (seg16AccY85 rho - seg16AccX85 rho * (-1)) * (rho 16640 + rho 16641) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX86 rho = seg16AccX85 rho - Bool.toZMod bit * (seg16AccX85 rho - rho 16646) := by
      have hd : rho 16648 = Bool.toZMod bit * (rho 16646 - seg16AccX85 rho) := by
        rw [← hbit, seg16LadderFlatX85_eq]
        unfold seg16LadderFlatX85
        linear_combination -r4076
      unfold seg16AccX86
      linear_combination hd
    have hsely : seg16AccY86 rho = seg16AccY85 rho - Bool.toZMod bit * (seg16AccY85 rho - rho 16647) := by
      have hd : rho 16649 = Bool.toZMod bit * (rho 16647 - seg16AccY85 rho) := by
        rw [← hbit, seg16LadderFlatY85_eq]
        unfold seg16LadderFlatY85
        linear_combination -r4077
      unfold seg16AccY86
      linear_combination hd
    have hd0 : rho 16640 * rho 16641 = rho 16650 := by linear_combination r4078
    have hd1 : rho 16640 * rho 16640 = rho 16651 := by linear_combination r4079
    have hd2 : rho 16641 * rho 16641 = rho 16652 := by linear_combination r4080
    have hd3 : rho 16653 * (rho 16641 * rho 16641 + rho 16640 * rho 16640 * (-1)) = 2 * (rho 16640 * rho 16641) := by
      rw [hd0, hd1, hd2]
      linear_combination r4081
    have hd4 : rho 16654 * (2 - (rho 16641 * rho 16641 + rho 16640 * rho 16640 * (-1))) = rho 16641 * rho 16641 - rho 16640 * rho 16640 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4082
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX85 rho : Seg16.F), (seg16AccY85 rho : Seg16.F)⟩
      ⟨(rho 16640 : Seg16.F), (rho 16641 : Seg16.F)⟩
      ⟨(rho 16646 : Seg16.F), (rho 16647 : Seg16.F)⟩
      ⟨(seg16AccX86 rho : Seg16.F), (seg16AccY86 rho : Seg16.F)⟩
      ⟨(rho 16653 : Seg16.F), (rho 16654 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung85

theorem seg16_rung86 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15378 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX86 rho : Seg16.F), (seg16AccY86 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16653 : Seg16.F), (rho 16654 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX86 rho : Seg16.F), (seg16AccY86 rho : Seg16.F)⟩
        ⟨(rho 16653 : Seg16.F), (rho 16654 : Seg16.F)⟩
        ⟨(seg16AccX87 rho : Seg16.F), (seg16AccY87 rho : Seg16.F)⟩
        ⟨(rho 16666 : Seg16.F), (rho 16667 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p51, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart51 at p51
  rcases p51 with ⟨_, _, _, r4083, r4084, r4085, r4086, r4087, r4088, r4089, r4090, r4091, r4092, r4093, r4094, r4095, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow4083 Seg16.relationLc465 Seg16.relationLc465Part0 Seg16.relationLc465Part1 Seg16.relationLc465Part2 Seg16.relationLc465Part3 Seg16.relationLc465Part4 Seg16.relationLc465Part5 at r4083
  unfold Seg16.relationRow4084 Seg16.relationLc466 Seg16.relationLc466Part0 Seg16.relationLc466Part1 Seg16.relationLc466Part2 at r4084
  unfold Seg16.relationRow4085 Seg16.relationLc467 Seg16.relationLc467Part0 Seg16.relationLc467Part1 Seg16.relationLc467Part2 at r4085
  unfold Seg16.relationRow4086 at r4086
  unfold Seg16.relationRow4087 at r4087
  unfold Seg16.relationRow4088 at r4088
  unfold Seg16.relationRow4089 Seg16.relationLc468 Seg16.relationLc468Part0 Seg16.relationLc468Part1 Seg16.relationLc468Part2 at r4089
  unfold Seg16.relationRow4090 Seg16.relationLc469 Seg16.relationLc469Part0 Seg16.relationLc469Part1 Seg16.relationLc469Part2 at r4090
  unfold Seg16.relationRow4091 at r4091
  unfold Seg16.relationRow4092 at r4092
  unfold Seg16.relationRow4093 at r4093
  unfold Seg16.relationRow4094 at r4094
  unfold Seg16.relationRow4095 at r4095
  have hrung86 (bit : Bool) (hbit : rho 15378 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX86 rho : Seg16.F), (seg16AccY86 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16653 : Seg16.F), (rho 16654 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX86 rho : Seg16.F), (seg16AccY86 rho : Seg16.F)⟩
        ⟨(rho 16653 : Seg16.F), (rho 16654 : Seg16.F)⟩
        ⟨(seg16AccX87 rho : Seg16.F), (seg16AccY87 rho : Seg16.F)⟩
        ⟨(rho 16666 : Seg16.F), (rho 16667 : Seg16.F)⟩ := by
    have ha0 : (rho 16653 + rho 16654) * (seg16AccX86 rho + seg16AccY86 rho) = rho 16655 := by
      rw [seg16LadderFlatX86_eq, seg16LadderFlatY86_eq]
      unfold seg16LadderFlatX86 seg16LadderFlatY86
      linear_combination r4083
    have ha1 : rho 16654 * seg16AccX86 rho = rho 16656 := by
      rw [seg16LadderFlatX86_eq]
      unfold seg16LadderFlatX86
      linear_combination r4084
    have ha2 : rho 16653 * seg16AccY86 rho = rho 16657 := by
      rw [seg16LadderFlatY86_eq]
      unfold seg16LadderFlatY86
      linear_combination r4085
    have ha3 : 3021 * rho 16656 * rho 16657 = rho 16658 := by
      linear_combination r4086
    have ha4 : rho 16659 * (1 + rho 16658) = rho 16656 + rho 16657 := by
      linear_combination r4087
    have ha5 : rho 16660 * (1 - rho 16658) = rho 16655 - rho 16656 - rho 16657 := by
      linear_combination r4088
    have haddx :
        rho 16659 * (1 + 3021 * (rho 16654 * seg16AccX86 rho) * (rho 16653 * seg16AccY86 rho)) =
          rho 16654 * seg16AccX86 rho + rho 16653 * seg16AccY86 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16660 * (1 - 3021 * (rho 16654 * seg16AccX86 rho) * (rho 16653 * seg16AccY86 rho)) =
          (-1) * (rho 16654 * seg16AccX86 rho) - rho 16653 * seg16AccY86 rho +
            (seg16AccY86 rho - seg16AccX86 rho * (-1)) * (rho 16653 + rho 16654) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16660 * (1 - rho 16658) = rho 16655 - rho 16656 - rho 16657 := ha5
        _ = (-1) * rho 16656 - rho 16657 + (seg16AccY86 rho - seg16AccX86 rho * (-1)) * (rho 16653 + rho 16654) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX87 rho = seg16AccX86 rho - Bool.toZMod bit * (seg16AccX86 rho - rho 16659) := by
      have hd : rho 16661 = Bool.toZMod bit * (rho 16659 - seg16AccX86 rho) := by
        rw [← hbit, seg16LadderFlatX86_eq]
        unfold seg16LadderFlatX86
        linear_combination -r4089
      unfold seg16AccX87
      linear_combination hd
    have hsely : seg16AccY87 rho = seg16AccY86 rho - Bool.toZMod bit * (seg16AccY86 rho - rho 16660) := by
      have hd : rho 16662 = Bool.toZMod bit * (rho 16660 - seg16AccY86 rho) := by
        rw [← hbit, seg16LadderFlatY86_eq]
        unfold seg16LadderFlatY86
        linear_combination -r4090
      unfold seg16AccY87
      linear_combination hd
    have hd0 : rho 16653 * rho 16654 = rho 16663 := by linear_combination r4091
    have hd1 : rho 16653 * rho 16653 = rho 16664 := by linear_combination r4092
    have hd2 : rho 16654 * rho 16654 = rho 16665 := by linear_combination r4093
    have hd3 : rho 16666 * (rho 16654 * rho 16654 + rho 16653 * rho 16653 * (-1)) = 2 * (rho 16653 * rho 16654) := by
      rw [hd0, hd1, hd2]
      linear_combination r4094
    have hd4 : rho 16667 * (2 - (rho 16654 * rho 16654 + rho 16653 * rho 16653 * (-1))) = rho 16654 * rho 16654 - rho 16653 * rho 16653 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4095
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX86 rho : Seg16.F), (seg16AccY86 rho : Seg16.F)⟩
      ⟨(rho 16653 : Seg16.F), (rho 16654 : Seg16.F)⟩
      ⟨(rho 16659 : Seg16.F), (rho 16660 : Seg16.F)⟩
      ⟨(seg16AccX87 rho : Seg16.F), (seg16AccY87 rho : Seg16.F)⟩
      ⟨(rho 16666 : Seg16.F), (rho 16667 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung86

theorem seg16_rung87 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15379 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX87 rho : Seg16.F), (seg16AccY87 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16666 : Seg16.F), (rho 16667 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX87 rho : Seg16.F), (seg16AccY87 rho : Seg16.F)⟩
        ⟨(rho 16666 : Seg16.F), (rho 16667 : Seg16.F)⟩
        ⟨(seg16AccX88 rho : Seg16.F), (seg16AccY88 rho : Seg16.F)⟩
        ⟨(rho 16679 : Seg16.F), (rho 16680 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p51, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart51 at p51
  rcases p51 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4096, r4097, r4098, r4099, r4100, r4101, r4102, r4103, r4104, r4105, r4106, r4107, r4108, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow4096 Seg16.relationLc470 Seg16.relationLc470Part0 Seg16.relationLc470Part1 Seg16.relationLc470Part2 Seg16.relationLc470Part3 Seg16.relationLc470Part4 Seg16.relationLc470Part5 at r4096
  unfold Seg16.relationRow4097 Seg16.relationLc471 Seg16.relationLc471Part0 Seg16.relationLc471Part1 Seg16.relationLc471Part2 at r4097
  unfold Seg16.relationRow4098 Seg16.relationLc472 Seg16.relationLc472Part0 Seg16.relationLc472Part1 Seg16.relationLc472Part2 at r4098
  unfold Seg16.relationRow4099 at r4099
  unfold Seg16.relationRow4100 at r4100
  unfold Seg16.relationRow4101 at r4101
  unfold Seg16.relationRow4102 Seg16.relationLc473 Seg16.relationLc473Part0 Seg16.relationLc473Part1 Seg16.relationLc473Part2 at r4102
  unfold Seg16.relationRow4103 Seg16.relationLc474 Seg16.relationLc474Part0 Seg16.relationLc474Part1 Seg16.relationLc474Part2 at r4103
  unfold Seg16.relationRow4104 at r4104
  unfold Seg16.relationRow4105 at r4105
  unfold Seg16.relationRow4106 at r4106
  unfold Seg16.relationRow4107 at r4107
  unfold Seg16.relationRow4108 at r4108
  have hrung87 (bit : Bool) (hbit : rho 15379 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX87 rho : Seg16.F), (seg16AccY87 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16666 : Seg16.F), (rho 16667 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX87 rho : Seg16.F), (seg16AccY87 rho : Seg16.F)⟩
        ⟨(rho 16666 : Seg16.F), (rho 16667 : Seg16.F)⟩
        ⟨(seg16AccX88 rho : Seg16.F), (seg16AccY88 rho : Seg16.F)⟩
        ⟨(rho 16679 : Seg16.F), (rho 16680 : Seg16.F)⟩ := by
    have ha0 : (rho 16666 + rho 16667) * (seg16AccX87 rho + seg16AccY87 rho) = rho 16668 := by
      rw [seg16LadderFlatX87_eq, seg16LadderFlatY87_eq]
      unfold seg16LadderFlatX87 seg16LadderFlatY87
      linear_combination r4096
    have ha1 : rho 16667 * seg16AccX87 rho = rho 16669 := by
      rw [seg16LadderFlatX87_eq]
      unfold seg16LadderFlatX87
      linear_combination r4097
    have ha2 : rho 16666 * seg16AccY87 rho = rho 16670 := by
      rw [seg16LadderFlatY87_eq]
      unfold seg16LadderFlatY87
      linear_combination r4098
    have ha3 : 3021 * rho 16669 * rho 16670 = rho 16671 := by
      linear_combination r4099
    have ha4 : rho 16672 * (1 + rho 16671) = rho 16669 + rho 16670 := by
      linear_combination r4100
    have ha5 : rho 16673 * (1 - rho 16671) = rho 16668 - rho 16669 - rho 16670 := by
      linear_combination r4101
    have haddx :
        rho 16672 * (1 + 3021 * (rho 16667 * seg16AccX87 rho) * (rho 16666 * seg16AccY87 rho)) =
          rho 16667 * seg16AccX87 rho + rho 16666 * seg16AccY87 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16673 * (1 - 3021 * (rho 16667 * seg16AccX87 rho) * (rho 16666 * seg16AccY87 rho)) =
          (-1) * (rho 16667 * seg16AccX87 rho) - rho 16666 * seg16AccY87 rho +
            (seg16AccY87 rho - seg16AccX87 rho * (-1)) * (rho 16666 + rho 16667) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16673 * (1 - rho 16671) = rho 16668 - rho 16669 - rho 16670 := ha5
        _ = (-1) * rho 16669 - rho 16670 + (seg16AccY87 rho - seg16AccX87 rho * (-1)) * (rho 16666 + rho 16667) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX88 rho = seg16AccX87 rho - Bool.toZMod bit * (seg16AccX87 rho - rho 16672) := by
      have hd : rho 16674 = Bool.toZMod bit * (rho 16672 - seg16AccX87 rho) := by
        rw [← hbit, seg16LadderFlatX87_eq]
        unfold seg16LadderFlatX87
        linear_combination -r4102
      unfold seg16AccX88
      linear_combination hd
    have hsely : seg16AccY88 rho = seg16AccY87 rho - Bool.toZMod bit * (seg16AccY87 rho - rho 16673) := by
      have hd : rho 16675 = Bool.toZMod bit * (rho 16673 - seg16AccY87 rho) := by
        rw [← hbit, seg16LadderFlatY87_eq]
        unfold seg16LadderFlatY87
        linear_combination -r4103
      unfold seg16AccY88
      linear_combination hd
    have hd0 : rho 16666 * rho 16667 = rho 16676 := by linear_combination r4104
    have hd1 : rho 16666 * rho 16666 = rho 16677 := by linear_combination r4105
    have hd2 : rho 16667 * rho 16667 = rho 16678 := by linear_combination r4106
    have hd3 : rho 16679 * (rho 16667 * rho 16667 + rho 16666 * rho 16666 * (-1)) = 2 * (rho 16666 * rho 16667) := by
      rw [hd0, hd1, hd2]
      linear_combination r4107
    have hd4 : rho 16680 * (2 - (rho 16667 * rho 16667 + rho 16666 * rho 16666 * (-1))) = rho 16667 * rho 16667 - rho 16666 * rho 16666 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4108
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX87 rho : Seg16.F), (seg16AccY87 rho : Seg16.F)⟩
      ⟨(rho 16666 : Seg16.F), (rho 16667 : Seg16.F)⟩
      ⟨(rho 16672 : Seg16.F), (rho 16673 : Seg16.F)⟩
      ⟨(seg16AccX88 rho : Seg16.F), (seg16AccY88 rho : Seg16.F)⟩
      ⟨(rho 16679 : Seg16.F), (rho 16680 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung87

theorem seg16_rung88 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15380 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX88 rho : Seg16.F), (seg16AccY88 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16679 : Seg16.F), (rho 16680 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX88 rho : Seg16.F), (seg16AccY88 rho : Seg16.F)⟩
        ⟨(rho 16679 : Seg16.F), (rho 16680 : Seg16.F)⟩
        ⟨(seg16AccX89 rho : Seg16.F), (seg16AccY89 rho : Seg16.F)⟩
        ⟨(rho 16692 : Seg16.F), (rho 16693 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p51, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart51 at p51
  rcases p51 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4109, r4110, r4111, r4112, r4113, r4114, r4115, r4116, r4117, r4118, r4119, r4120, r4121, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow4109 Seg16.relationLc475 Seg16.relationLc475Part0 Seg16.relationLc475Part1 Seg16.relationLc475Part2 Seg16.relationLc475Part3 Seg16.relationLc475Part4 Seg16.relationLc475Part5 at r4109
  unfold Seg16.relationRow4110 Seg16.relationLc476 Seg16.relationLc476Part0 Seg16.relationLc476Part1 Seg16.relationLc476Part2 at r4110
  unfold Seg16.relationRow4111 Seg16.relationLc477 Seg16.relationLc477Part0 Seg16.relationLc477Part1 Seg16.relationLc477Part2 at r4111
  unfold Seg16.relationRow4112 at r4112
  unfold Seg16.relationRow4113 at r4113
  unfold Seg16.relationRow4114 at r4114
  unfold Seg16.relationRow4115 Seg16.relationLc478 Seg16.relationLc478Part0 Seg16.relationLc478Part1 Seg16.relationLc478Part2 at r4115
  unfold Seg16.relationRow4116 Seg16.relationLc479 Seg16.relationLc479Part0 Seg16.relationLc479Part1 Seg16.relationLc479Part2 at r4116
  unfold Seg16.relationRow4117 at r4117
  unfold Seg16.relationRow4118 at r4118
  unfold Seg16.relationRow4119 at r4119
  unfold Seg16.relationRow4120 at r4120
  unfold Seg16.relationRow4121 at r4121
  have hrung88 (bit : Bool) (hbit : rho 15380 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX88 rho : Seg16.F), (seg16AccY88 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16679 : Seg16.F), (rho 16680 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX88 rho : Seg16.F), (seg16AccY88 rho : Seg16.F)⟩
        ⟨(rho 16679 : Seg16.F), (rho 16680 : Seg16.F)⟩
        ⟨(seg16AccX89 rho : Seg16.F), (seg16AccY89 rho : Seg16.F)⟩
        ⟨(rho 16692 : Seg16.F), (rho 16693 : Seg16.F)⟩ := by
    have ha0 : (rho 16679 + rho 16680) * (seg16AccX88 rho + seg16AccY88 rho) = rho 16681 := by
      rw [seg16LadderFlatX88_eq, seg16LadderFlatY88_eq]
      unfold seg16LadderFlatX88 seg16LadderFlatY88
      linear_combination r4109
    have ha1 : rho 16680 * seg16AccX88 rho = rho 16682 := by
      rw [seg16LadderFlatX88_eq]
      unfold seg16LadderFlatX88
      linear_combination r4110
    have ha2 : rho 16679 * seg16AccY88 rho = rho 16683 := by
      rw [seg16LadderFlatY88_eq]
      unfold seg16LadderFlatY88
      linear_combination r4111
    have ha3 : 3021 * rho 16682 * rho 16683 = rho 16684 := by
      linear_combination r4112
    have ha4 : rho 16685 * (1 + rho 16684) = rho 16682 + rho 16683 := by
      linear_combination r4113
    have ha5 : rho 16686 * (1 - rho 16684) = rho 16681 - rho 16682 - rho 16683 := by
      linear_combination r4114
    have haddx :
        rho 16685 * (1 + 3021 * (rho 16680 * seg16AccX88 rho) * (rho 16679 * seg16AccY88 rho)) =
          rho 16680 * seg16AccX88 rho + rho 16679 * seg16AccY88 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16686 * (1 - 3021 * (rho 16680 * seg16AccX88 rho) * (rho 16679 * seg16AccY88 rho)) =
          (-1) * (rho 16680 * seg16AccX88 rho) - rho 16679 * seg16AccY88 rho +
            (seg16AccY88 rho - seg16AccX88 rho * (-1)) * (rho 16679 + rho 16680) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16686 * (1 - rho 16684) = rho 16681 - rho 16682 - rho 16683 := ha5
        _ = (-1) * rho 16682 - rho 16683 + (seg16AccY88 rho - seg16AccX88 rho * (-1)) * (rho 16679 + rho 16680) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX89 rho = seg16AccX88 rho - Bool.toZMod bit * (seg16AccX88 rho - rho 16685) := by
      have hd : rho 16687 = Bool.toZMod bit * (rho 16685 - seg16AccX88 rho) := by
        rw [← hbit, seg16LadderFlatX88_eq]
        unfold seg16LadderFlatX88
        linear_combination -r4115
      unfold seg16AccX89
      linear_combination hd
    have hsely : seg16AccY89 rho = seg16AccY88 rho - Bool.toZMod bit * (seg16AccY88 rho - rho 16686) := by
      have hd : rho 16688 = Bool.toZMod bit * (rho 16686 - seg16AccY88 rho) := by
        rw [← hbit, seg16LadderFlatY88_eq]
        unfold seg16LadderFlatY88
        linear_combination -r4116
      unfold seg16AccY89
      linear_combination hd
    have hd0 : rho 16679 * rho 16680 = rho 16689 := by linear_combination r4117
    have hd1 : rho 16679 * rho 16679 = rho 16690 := by linear_combination r4118
    have hd2 : rho 16680 * rho 16680 = rho 16691 := by linear_combination r4119
    have hd3 : rho 16692 * (rho 16680 * rho 16680 + rho 16679 * rho 16679 * (-1)) = 2 * (rho 16679 * rho 16680) := by
      rw [hd0, hd1, hd2]
      linear_combination r4120
    have hd4 : rho 16693 * (2 - (rho 16680 * rho 16680 + rho 16679 * rho 16679 * (-1))) = rho 16680 * rho 16680 - rho 16679 * rho 16679 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4121
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX88 rho : Seg16.F), (seg16AccY88 rho : Seg16.F)⟩
      ⟨(rho 16679 : Seg16.F), (rho 16680 : Seg16.F)⟩
      ⟨(rho 16685 : Seg16.F), (rho 16686 : Seg16.F)⟩
      ⟨(seg16AccX89 rho : Seg16.F), (seg16AccY89 rho : Seg16.F)⟩
      ⟨(rho 16692 : Seg16.F), (rho 16693 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung88

theorem seg16_rung89 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15381 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX89 rho : Seg16.F), (seg16AccY89 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16692 : Seg16.F), (rho 16693 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX89 rho : Seg16.F), (seg16AccY89 rho : Seg16.F)⟩
        ⟨(rho 16692 : Seg16.F), (rho 16693 : Seg16.F)⟩
        ⟨(seg16AccX90 rho : Seg16.F), (seg16AccY90 rho : Seg16.F)⟩
        ⟨(rho 16705 : Seg16.F), (rho 16706 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p51, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart51 at p51
  rcases p51 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4122, r4123, r4124, r4125, r4126, r4127, r4128, r4129, r4130, r4131, r4132, r4133, r4134, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow4122 Seg16.relationLc480 Seg16.relationLc480Part0 Seg16.relationLc480Part1 Seg16.relationLc480Part2 Seg16.relationLc480Part3 Seg16.relationLc480Part4 Seg16.relationLc480Part5 at r4122
  unfold Seg16.relationRow4123 Seg16.relationLc481 Seg16.relationLc481Part0 Seg16.relationLc481Part1 Seg16.relationLc481Part2 at r4123
  unfold Seg16.relationRow4124 Seg16.relationLc482 Seg16.relationLc482Part0 Seg16.relationLc482Part1 Seg16.relationLc482Part2 at r4124
  unfold Seg16.relationRow4125 at r4125
  unfold Seg16.relationRow4126 at r4126
  unfold Seg16.relationRow4127 at r4127
  unfold Seg16.relationRow4128 Seg16.relationLc483 Seg16.relationLc483Part0 Seg16.relationLc483Part1 Seg16.relationLc483Part2 at r4128
  unfold Seg16.relationRow4129 Seg16.relationLc484 Seg16.relationLc484Part0 Seg16.relationLc484Part1 Seg16.relationLc484Part2 at r4129
  unfold Seg16.relationRow4130 at r4130
  unfold Seg16.relationRow4131 at r4131
  unfold Seg16.relationRow4132 at r4132
  unfold Seg16.relationRow4133 at r4133
  unfold Seg16.relationRow4134 at r4134
  have hrung89 (bit : Bool) (hbit : rho 15381 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX89 rho : Seg16.F), (seg16AccY89 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16692 : Seg16.F), (rho 16693 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX89 rho : Seg16.F), (seg16AccY89 rho : Seg16.F)⟩
        ⟨(rho 16692 : Seg16.F), (rho 16693 : Seg16.F)⟩
        ⟨(seg16AccX90 rho : Seg16.F), (seg16AccY90 rho : Seg16.F)⟩
        ⟨(rho 16705 : Seg16.F), (rho 16706 : Seg16.F)⟩ := by
    have ha0 : (rho 16692 + rho 16693) * (seg16AccX89 rho + seg16AccY89 rho) = rho 16694 := by
      rw [seg16LadderFlatX89_eq, seg16LadderFlatY89_eq]
      unfold seg16LadderFlatX89 seg16LadderFlatY89
      linear_combination r4122
    have ha1 : rho 16693 * seg16AccX89 rho = rho 16695 := by
      rw [seg16LadderFlatX89_eq]
      unfold seg16LadderFlatX89
      linear_combination r4123
    have ha2 : rho 16692 * seg16AccY89 rho = rho 16696 := by
      rw [seg16LadderFlatY89_eq]
      unfold seg16LadderFlatY89
      linear_combination r4124
    have ha3 : 3021 * rho 16695 * rho 16696 = rho 16697 := by
      linear_combination r4125
    have ha4 : rho 16698 * (1 + rho 16697) = rho 16695 + rho 16696 := by
      linear_combination r4126
    have ha5 : rho 16699 * (1 - rho 16697) = rho 16694 - rho 16695 - rho 16696 := by
      linear_combination r4127
    have haddx :
        rho 16698 * (1 + 3021 * (rho 16693 * seg16AccX89 rho) * (rho 16692 * seg16AccY89 rho)) =
          rho 16693 * seg16AccX89 rho + rho 16692 * seg16AccY89 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16699 * (1 - 3021 * (rho 16693 * seg16AccX89 rho) * (rho 16692 * seg16AccY89 rho)) =
          (-1) * (rho 16693 * seg16AccX89 rho) - rho 16692 * seg16AccY89 rho +
            (seg16AccY89 rho - seg16AccX89 rho * (-1)) * (rho 16692 + rho 16693) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16699 * (1 - rho 16697) = rho 16694 - rho 16695 - rho 16696 := ha5
        _ = (-1) * rho 16695 - rho 16696 + (seg16AccY89 rho - seg16AccX89 rho * (-1)) * (rho 16692 + rho 16693) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX90 rho = seg16AccX89 rho - Bool.toZMod bit * (seg16AccX89 rho - rho 16698) := by
      have hd : rho 16700 = Bool.toZMod bit * (rho 16698 - seg16AccX89 rho) := by
        rw [← hbit, seg16LadderFlatX89_eq]
        unfold seg16LadderFlatX89
        linear_combination -r4128
      unfold seg16AccX90
      linear_combination hd
    have hsely : seg16AccY90 rho = seg16AccY89 rho - Bool.toZMod bit * (seg16AccY89 rho - rho 16699) := by
      have hd : rho 16701 = Bool.toZMod bit * (rho 16699 - seg16AccY89 rho) := by
        rw [← hbit, seg16LadderFlatY89_eq]
        unfold seg16LadderFlatY89
        linear_combination -r4129
      unfold seg16AccY90
      linear_combination hd
    have hd0 : rho 16692 * rho 16693 = rho 16702 := by linear_combination r4130
    have hd1 : rho 16692 * rho 16692 = rho 16703 := by linear_combination r4131
    have hd2 : rho 16693 * rho 16693 = rho 16704 := by linear_combination r4132
    have hd3 : rho 16705 * (rho 16693 * rho 16693 + rho 16692 * rho 16692 * (-1)) = 2 * (rho 16692 * rho 16693) := by
      rw [hd0, hd1, hd2]
      linear_combination r4133
    have hd4 : rho 16706 * (2 - (rho 16693 * rho 16693 + rho 16692 * rho 16692 * (-1))) = rho 16693 * rho 16693 - rho 16692 * rho 16692 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4134
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX89 rho : Seg16.F), (seg16AccY89 rho : Seg16.F)⟩
      ⟨(rho 16692 : Seg16.F), (rho 16693 : Seg16.F)⟩
      ⟨(rho 16698 : Seg16.F), (rho 16699 : Seg16.F)⟩
      ⟨(seg16AccX90 rho : Seg16.F), (seg16AccY90 rho : Seg16.F)⟩
      ⟨(rho 16705 : Seg16.F), (rho 16706 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung89

theorem seg16_rung90 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15382 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX90 rho : Seg16.F), (seg16AccY90 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16705 : Seg16.F), (rho 16706 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX90 rho : Seg16.F), (seg16AccY90 rho : Seg16.F)⟩
        ⟨(rho 16705 : Seg16.F), (rho 16706 : Seg16.F)⟩
        ⟨(seg16AccX91 rho : Seg16.F), (seg16AccY91 rho : Seg16.F)⟩
        ⟨(rho 16718 : Seg16.F), (rho 16719 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p51, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart51 at p51
  rcases p51 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4135, r4136, r4137, r4138, r4139, r4140, r4141, r4142, r4143, r4144, r4145, r4146, r4147, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow4135 Seg16.relationLc485 Seg16.relationLc485Part0 Seg16.relationLc485Part1 Seg16.relationLc485Part2 Seg16.relationLc485Part3 Seg16.relationLc485Part4 Seg16.relationLc485Part5 at r4135
  unfold Seg16.relationRow4136 Seg16.relationLc486 Seg16.relationLc486Part0 Seg16.relationLc486Part1 Seg16.relationLc486Part2 at r4136
  unfold Seg16.relationRow4137 Seg16.relationLc487 Seg16.relationLc487Part0 Seg16.relationLc487Part1 Seg16.relationLc487Part2 at r4137
  unfold Seg16.relationRow4138 at r4138
  unfold Seg16.relationRow4139 at r4139
  unfold Seg16.relationRow4140 at r4140
  unfold Seg16.relationRow4141 Seg16.relationLc488 Seg16.relationLc488Part0 Seg16.relationLc488Part1 Seg16.relationLc488Part2 at r4141
  unfold Seg16.relationRow4142 Seg16.relationLc489 Seg16.relationLc489Part0 Seg16.relationLc489Part1 Seg16.relationLc489Part2 at r4142
  unfold Seg16.relationRow4143 at r4143
  unfold Seg16.relationRow4144 at r4144
  unfold Seg16.relationRow4145 at r4145
  unfold Seg16.relationRow4146 at r4146
  unfold Seg16.relationRow4147 at r4147
  have hrung90 (bit : Bool) (hbit : rho 15382 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX90 rho : Seg16.F), (seg16AccY90 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16705 : Seg16.F), (rho 16706 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX90 rho : Seg16.F), (seg16AccY90 rho : Seg16.F)⟩
        ⟨(rho 16705 : Seg16.F), (rho 16706 : Seg16.F)⟩
        ⟨(seg16AccX91 rho : Seg16.F), (seg16AccY91 rho : Seg16.F)⟩
        ⟨(rho 16718 : Seg16.F), (rho 16719 : Seg16.F)⟩ := by
    have ha0 : (rho 16705 + rho 16706) * (seg16AccX90 rho + seg16AccY90 rho) = rho 16707 := by
      rw [seg16LadderFlatX90_eq, seg16LadderFlatY90_eq]
      unfold seg16LadderFlatX90 seg16LadderFlatY90
      linear_combination r4135
    have ha1 : rho 16706 * seg16AccX90 rho = rho 16708 := by
      rw [seg16LadderFlatX90_eq]
      unfold seg16LadderFlatX90
      linear_combination r4136
    have ha2 : rho 16705 * seg16AccY90 rho = rho 16709 := by
      rw [seg16LadderFlatY90_eq]
      unfold seg16LadderFlatY90
      linear_combination r4137
    have ha3 : 3021 * rho 16708 * rho 16709 = rho 16710 := by
      linear_combination r4138
    have ha4 : rho 16711 * (1 + rho 16710) = rho 16708 + rho 16709 := by
      linear_combination r4139
    have ha5 : rho 16712 * (1 - rho 16710) = rho 16707 - rho 16708 - rho 16709 := by
      linear_combination r4140
    have haddx :
        rho 16711 * (1 + 3021 * (rho 16706 * seg16AccX90 rho) * (rho 16705 * seg16AccY90 rho)) =
          rho 16706 * seg16AccX90 rho + rho 16705 * seg16AccY90 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16712 * (1 - 3021 * (rho 16706 * seg16AccX90 rho) * (rho 16705 * seg16AccY90 rho)) =
          (-1) * (rho 16706 * seg16AccX90 rho) - rho 16705 * seg16AccY90 rho +
            (seg16AccY90 rho - seg16AccX90 rho * (-1)) * (rho 16705 + rho 16706) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16712 * (1 - rho 16710) = rho 16707 - rho 16708 - rho 16709 := ha5
        _ = (-1) * rho 16708 - rho 16709 + (seg16AccY90 rho - seg16AccX90 rho * (-1)) * (rho 16705 + rho 16706) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX91 rho = seg16AccX90 rho - Bool.toZMod bit * (seg16AccX90 rho - rho 16711) := by
      have hd : rho 16713 = Bool.toZMod bit * (rho 16711 - seg16AccX90 rho) := by
        rw [← hbit, seg16LadderFlatX90_eq]
        unfold seg16LadderFlatX90
        linear_combination -r4141
      unfold seg16AccX91
      linear_combination hd
    have hsely : seg16AccY91 rho = seg16AccY90 rho - Bool.toZMod bit * (seg16AccY90 rho - rho 16712) := by
      have hd : rho 16714 = Bool.toZMod bit * (rho 16712 - seg16AccY90 rho) := by
        rw [← hbit, seg16LadderFlatY90_eq]
        unfold seg16LadderFlatY90
        linear_combination -r4142
      unfold seg16AccY91
      linear_combination hd
    have hd0 : rho 16705 * rho 16706 = rho 16715 := by linear_combination r4143
    have hd1 : rho 16705 * rho 16705 = rho 16716 := by linear_combination r4144
    have hd2 : rho 16706 * rho 16706 = rho 16717 := by linear_combination r4145
    have hd3 : rho 16718 * (rho 16706 * rho 16706 + rho 16705 * rho 16705 * (-1)) = 2 * (rho 16705 * rho 16706) := by
      rw [hd0, hd1, hd2]
      linear_combination r4146
    have hd4 : rho 16719 * (2 - (rho 16706 * rho 16706 + rho 16705 * rho 16705 * (-1))) = rho 16706 * rho 16706 - rho 16705 * rho 16705 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4147
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX90 rho : Seg16.F), (seg16AccY90 rho : Seg16.F)⟩
      ⟨(rho 16705 : Seg16.F), (rho 16706 : Seg16.F)⟩
      ⟨(rho 16711 : Seg16.F), (rho 16712 : Seg16.F)⟩
      ⟨(seg16AccX91 rho : Seg16.F), (seg16AccY91 rho : Seg16.F)⟩
      ⟨(rho 16718 : Seg16.F), (rho 16719 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung90

theorem seg16_rung91 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15383 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX91 rho : Seg16.F), (seg16AccY91 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16718 : Seg16.F), (rho 16719 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX91 rho : Seg16.F), (seg16AccY91 rho : Seg16.F)⟩
        ⟨(rho 16718 : Seg16.F), (rho 16719 : Seg16.F)⟩
        ⟨(seg16AccX92 rho : Seg16.F), (seg16AccY92 rho : Seg16.F)⟩
        ⟨(rho 16731 : Seg16.F), (rho 16732 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p51, p52, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart51 at p51
  rcases p51 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4148, r4149, r4150, r4151, r4152, r4153, r4154, r4155, r4156, r4157, r4158, r4159⟩
  unfold Seg16.relationPart52 at p52
  rcases p52 with ⟨r4160, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow4148 Seg16.relationLc490 Seg16.relationLc490Part0 Seg16.relationLc490Part1 Seg16.relationLc490Part2 Seg16.relationLc490Part3 Seg16.relationLc490Part4 Seg16.relationLc490Part5 at r4148
  unfold Seg16.relationRow4149 Seg16.relationLc491 Seg16.relationLc491Part0 Seg16.relationLc491Part1 Seg16.relationLc491Part2 at r4149
  unfold Seg16.relationRow4150 Seg16.relationLc492 Seg16.relationLc492Part0 Seg16.relationLc492Part1 Seg16.relationLc492Part2 at r4150
  unfold Seg16.relationRow4151 at r4151
  unfold Seg16.relationRow4152 at r4152
  unfold Seg16.relationRow4153 at r4153
  unfold Seg16.relationRow4154 Seg16.relationLc493 Seg16.relationLc493Part0 Seg16.relationLc493Part1 Seg16.relationLc493Part2 at r4154
  unfold Seg16.relationRow4155 Seg16.relationLc494 Seg16.relationLc494Part0 Seg16.relationLc494Part1 Seg16.relationLc494Part2 at r4155
  unfold Seg16.relationRow4156 at r4156
  unfold Seg16.relationRow4157 at r4157
  unfold Seg16.relationRow4158 at r4158
  unfold Seg16.relationRow4159 at r4159
  unfold Seg16.relationRow4160 at r4160
  have hrung91 (bit : Bool) (hbit : rho 15383 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX91 rho : Seg16.F), (seg16AccY91 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16718 : Seg16.F), (rho 16719 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX91 rho : Seg16.F), (seg16AccY91 rho : Seg16.F)⟩
        ⟨(rho 16718 : Seg16.F), (rho 16719 : Seg16.F)⟩
        ⟨(seg16AccX92 rho : Seg16.F), (seg16AccY92 rho : Seg16.F)⟩
        ⟨(rho 16731 : Seg16.F), (rho 16732 : Seg16.F)⟩ := by
    have ha0 : (rho 16718 + rho 16719) * (seg16AccX91 rho + seg16AccY91 rho) = rho 16720 := by
      rw [seg16LadderFlatX91_eq, seg16LadderFlatY91_eq]
      unfold seg16LadderFlatX91 seg16LadderFlatY91
      linear_combination r4148
    have ha1 : rho 16719 * seg16AccX91 rho = rho 16721 := by
      rw [seg16LadderFlatX91_eq]
      unfold seg16LadderFlatX91
      linear_combination r4149
    have ha2 : rho 16718 * seg16AccY91 rho = rho 16722 := by
      rw [seg16LadderFlatY91_eq]
      unfold seg16LadderFlatY91
      linear_combination r4150
    have ha3 : 3021 * rho 16721 * rho 16722 = rho 16723 := by
      linear_combination r4151
    have ha4 : rho 16724 * (1 + rho 16723) = rho 16721 + rho 16722 := by
      linear_combination r4152
    have ha5 : rho 16725 * (1 - rho 16723) = rho 16720 - rho 16721 - rho 16722 := by
      linear_combination r4153
    have haddx :
        rho 16724 * (1 + 3021 * (rho 16719 * seg16AccX91 rho) * (rho 16718 * seg16AccY91 rho)) =
          rho 16719 * seg16AccX91 rho + rho 16718 * seg16AccY91 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16725 * (1 - 3021 * (rho 16719 * seg16AccX91 rho) * (rho 16718 * seg16AccY91 rho)) =
          (-1) * (rho 16719 * seg16AccX91 rho) - rho 16718 * seg16AccY91 rho +
            (seg16AccY91 rho - seg16AccX91 rho * (-1)) * (rho 16718 + rho 16719) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16725 * (1 - rho 16723) = rho 16720 - rho 16721 - rho 16722 := ha5
        _ = (-1) * rho 16721 - rho 16722 + (seg16AccY91 rho - seg16AccX91 rho * (-1)) * (rho 16718 + rho 16719) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX92 rho = seg16AccX91 rho - Bool.toZMod bit * (seg16AccX91 rho - rho 16724) := by
      have hd : rho 16726 = Bool.toZMod bit * (rho 16724 - seg16AccX91 rho) := by
        rw [← hbit, seg16LadderFlatX91_eq]
        unfold seg16LadderFlatX91
        linear_combination -r4154
      unfold seg16AccX92
      linear_combination hd
    have hsely : seg16AccY92 rho = seg16AccY91 rho - Bool.toZMod bit * (seg16AccY91 rho - rho 16725) := by
      have hd : rho 16727 = Bool.toZMod bit * (rho 16725 - seg16AccY91 rho) := by
        rw [← hbit, seg16LadderFlatY91_eq]
        unfold seg16LadderFlatY91
        linear_combination -r4155
      unfold seg16AccY92
      linear_combination hd
    have hd0 : rho 16718 * rho 16719 = rho 16728 := by linear_combination r4156
    have hd1 : rho 16718 * rho 16718 = rho 16729 := by linear_combination r4157
    have hd2 : rho 16719 * rho 16719 = rho 16730 := by linear_combination r4158
    have hd3 : rho 16731 * (rho 16719 * rho 16719 + rho 16718 * rho 16718 * (-1)) = 2 * (rho 16718 * rho 16719) := by
      rw [hd0, hd1, hd2]
      linear_combination r4159
    have hd4 : rho 16732 * (2 - (rho 16719 * rho 16719 + rho 16718 * rho 16718 * (-1))) = rho 16719 * rho 16719 - rho 16718 * rho 16718 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4160
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX91 rho : Seg16.F), (seg16AccY91 rho : Seg16.F)⟩
      ⟨(rho 16718 : Seg16.F), (rho 16719 : Seg16.F)⟩
      ⟨(rho 16724 : Seg16.F), (rho 16725 : Seg16.F)⟩
      ⟨(seg16AccX92 rho : Seg16.F), (seg16AccY92 rho : Seg16.F)⟩
      ⟨(rho 16731 : Seg16.F), (rho 16732 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung91

theorem seg16_rung92 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15384 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX92 rho : Seg16.F), (seg16AccY92 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16731 : Seg16.F), (rho 16732 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX92 rho : Seg16.F), (seg16AccY92 rho : Seg16.F)⟩
        ⟨(rho 16731 : Seg16.F), (rho 16732 : Seg16.F)⟩
        ⟨(seg16AccX93 rho : Seg16.F), (seg16AccY93 rho : Seg16.F)⟩
        ⟨(rho 16744 : Seg16.F), (rho 16745 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p52, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart52 at p52
  rcases p52 with ⟨_, r4161, r4162, r4163, r4164, r4165, r4166, r4167, r4168, r4169, r4170, r4171, r4172, r4173, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow4161 Seg16.relationLc495 Seg16.relationLc495Part0 Seg16.relationLc495Part1 Seg16.relationLc495Part2 Seg16.relationLc495Part3 Seg16.relationLc495Part4 Seg16.relationLc495Part5 at r4161
  unfold Seg16.relationRow4162 Seg16.relationLc496 Seg16.relationLc496Part0 Seg16.relationLc496Part1 Seg16.relationLc496Part2 at r4162
  unfold Seg16.relationRow4163 Seg16.relationLc497 Seg16.relationLc497Part0 Seg16.relationLc497Part1 Seg16.relationLc497Part2 at r4163
  unfold Seg16.relationRow4164 at r4164
  unfold Seg16.relationRow4165 at r4165
  unfold Seg16.relationRow4166 at r4166
  unfold Seg16.relationRow4167 Seg16.relationLc498 Seg16.relationLc498Part0 Seg16.relationLc498Part1 Seg16.relationLc498Part2 at r4167
  unfold Seg16.relationRow4168 Seg16.relationLc499 Seg16.relationLc499Part0 Seg16.relationLc499Part1 Seg16.relationLc499Part2 at r4168
  unfold Seg16.relationRow4169 at r4169
  unfold Seg16.relationRow4170 at r4170
  unfold Seg16.relationRow4171 at r4171
  unfold Seg16.relationRow4172 at r4172
  unfold Seg16.relationRow4173 at r4173
  have hrung92 (bit : Bool) (hbit : rho 15384 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX92 rho : Seg16.F), (seg16AccY92 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16731 : Seg16.F), (rho 16732 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX92 rho : Seg16.F), (seg16AccY92 rho : Seg16.F)⟩
        ⟨(rho 16731 : Seg16.F), (rho 16732 : Seg16.F)⟩
        ⟨(seg16AccX93 rho : Seg16.F), (seg16AccY93 rho : Seg16.F)⟩
        ⟨(rho 16744 : Seg16.F), (rho 16745 : Seg16.F)⟩ := by
    have ha0 : (rho 16731 + rho 16732) * (seg16AccX92 rho + seg16AccY92 rho) = rho 16733 := by
      rw [seg16LadderFlatX92_eq, seg16LadderFlatY92_eq]
      unfold seg16LadderFlatX92 seg16LadderFlatY92
      linear_combination r4161
    have ha1 : rho 16732 * seg16AccX92 rho = rho 16734 := by
      rw [seg16LadderFlatX92_eq]
      unfold seg16LadderFlatX92
      linear_combination r4162
    have ha2 : rho 16731 * seg16AccY92 rho = rho 16735 := by
      rw [seg16LadderFlatY92_eq]
      unfold seg16LadderFlatY92
      linear_combination r4163
    have ha3 : 3021 * rho 16734 * rho 16735 = rho 16736 := by
      linear_combination r4164
    have ha4 : rho 16737 * (1 + rho 16736) = rho 16734 + rho 16735 := by
      linear_combination r4165
    have ha5 : rho 16738 * (1 - rho 16736) = rho 16733 - rho 16734 - rho 16735 := by
      linear_combination r4166
    have haddx :
        rho 16737 * (1 + 3021 * (rho 16732 * seg16AccX92 rho) * (rho 16731 * seg16AccY92 rho)) =
          rho 16732 * seg16AccX92 rho + rho 16731 * seg16AccY92 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16738 * (1 - 3021 * (rho 16732 * seg16AccX92 rho) * (rho 16731 * seg16AccY92 rho)) =
          (-1) * (rho 16732 * seg16AccX92 rho) - rho 16731 * seg16AccY92 rho +
            (seg16AccY92 rho - seg16AccX92 rho * (-1)) * (rho 16731 + rho 16732) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16738 * (1 - rho 16736) = rho 16733 - rho 16734 - rho 16735 := ha5
        _ = (-1) * rho 16734 - rho 16735 + (seg16AccY92 rho - seg16AccX92 rho * (-1)) * (rho 16731 + rho 16732) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX93 rho = seg16AccX92 rho - Bool.toZMod bit * (seg16AccX92 rho - rho 16737) := by
      have hd : rho 16739 = Bool.toZMod bit * (rho 16737 - seg16AccX92 rho) := by
        rw [← hbit, seg16LadderFlatX92_eq]
        unfold seg16LadderFlatX92
        linear_combination -r4167
      unfold seg16AccX93
      linear_combination hd
    have hsely : seg16AccY93 rho = seg16AccY92 rho - Bool.toZMod bit * (seg16AccY92 rho - rho 16738) := by
      have hd : rho 16740 = Bool.toZMod bit * (rho 16738 - seg16AccY92 rho) := by
        rw [← hbit, seg16LadderFlatY92_eq]
        unfold seg16LadderFlatY92
        linear_combination -r4168
      unfold seg16AccY93
      linear_combination hd
    have hd0 : rho 16731 * rho 16732 = rho 16741 := by linear_combination r4169
    have hd1 : rho 16731 * rho 16731 = rho 16742 := by linear_combination r4170
    have hd2 : rho 16732 * rho 16732 = rho 16743 := by linear_combination r4171
    have hd3 : rho 16744 * (rho 16732 * rho 16732 + rho 16731 * rho 16731 * (-1)) = 2 * (rho 16731 * rho 16732) := by
      rw [hd0, hd1, hd2]
      linear_combination r4172
    have hd4 : rho 16745 * (2 - (rho 16732 * rho 16732 + rho 16731 * rho 16731 * (-1))) = rho 16732 * rho 16732 - rho 16731 * rho 16731 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4173
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX92 rho : Seg16.F), (seg16AccY92 rho : Seg16.F)⟩
      ⟨(rho 16731 : Seg16.F), (rho 16732 : Seg16.F)⟩
      ⟨(rho 16737 : Seg16.F), (rho 16738 : Seg16.F)⟩
      ⟨(seg16AccX93 rho : Seg16.F), (seg16AccY93 rho : Seg16.F)⟩
      ⟨(rho 16744 : Seg16.F), (rho 16745 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung92

theorem seg16_rung93 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15385 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX93 rho : Seg16.F), (seg16AccY93 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16744 : Seg16.F), (rho 16745 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX93 rho : Seg16.F), (seg16AccY93 rho : Seg16.F)⟩
        ⟨(rho 16744 : Seg16.F), (rho 16745 : Seg16.F)⟩
        ⟨(seg16AccX94 rho : Seg16.F), (seg16AccY94 rho : Seg16.F)⟩
        ⟨(rho 16757 : Seg16.F), (rho 16758 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p52, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart52 at p52
  rcases p52 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, r4174, r4175, r4176, r4177, r4178, r4179, r4180, r4181, r4182, r4183, r4184, r4185, r4186, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow4174 Seg16.relationLc500 Seg16.relationLc500Part0 Seg16.relationLc500Part1 Seg16.relationLc500Part2 Seg16.relationLc500Part3 Seg16.relationLc500Part4 Seg16.relationLc500Part5 at r4174
  unfold Seg16.relationRow4175 Seg16.relationLc501 Seg16.relationLc501Part0 Seg16.relationLc501Part1 Seg16.relationLc501Part2 at r4175
  unfold Seg16.relationRow4176 Seg16.relationLc502 Seg16.relationLc502Part0 Seg16.relationLc502Part1 Seg16.relationLc502Part2 at r4176
  unfold Seg16.relationRow4177 at r4177
  unfold Seg16.relationRow4178 at r4178
  unfold Seg16.relationRow4179 at r4179
  unfold Seg16.relationRow4180 Seg16.relationLc503 Seg16.relationLc503Part0 Seg16.relationLc503Part1 Seg16.relationLc503Part2 at r4180
  unfold Seg16.relationRow4181 Seg16.relationLc504 Seg16.relationLc504Part0 Seg16.relationLc504Part1 Seg16.relationLc504Part2 at r4181
  unfold Seg16.relationRow4182 at r4182
  unfold Seg16.relationRow4183 at r4183
  unfold Seg16.relationRow4184 at r4184
  unfold Seg16.relationRow4185 at r4185
  unfold Seg16.relationRow4186 at r4186
  have hrung93 (bit : Bool) (hbit : rho 15385 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX93 rho : Seg16.F), (seg16AccY93 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16744 : Seg16.F), (rho 16745 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX93 rho : Seg16.F), (seg16AccY93 rho : Seg16.F)⟩
        ⟨(rho 16744 : Seg16.F), (rho 16745 : Seg16.F)⟩
        ⟨(seg16AccX94 rho : Seg16.F), (seg16AccY94 rho : Seg16.F)⟩
        ⟨(rho 16757 : Seg16.F), (rho 16758 : Seg16.F)⟩ := by
    have ha0 : (rho 16744 + rho 16745) * (seg16AccX93 rho + seg16AccY93 rho) = rho 16746 := by
      rw [seg16LadderFlatX93_eq, seg16LadderFlatY93_eq]
      unfold seg16LadderFlatX93 seg16LadderFlatY93
      linear_combination r4174
    have ha1 : rho 16745 * seg16AccX93 rho = rho 16747 := by
      rw [seg16LadderFlatX93_eq]
      unfold seg16LadderFlatX93
      linear_combination r4175
    have ha2 : rho 16744 * seg16AccY93 rho = rho 16748 := by
      rw [seg16LadderFlatY93_eq]
      unfold seg16LadderFlatY93
      linear_combination r4176
    have ha3 : 3021 * rho 16747 * rho 16748 = rho 16749 := by
      linear_combination r4177
    have ha4 : rho 16750 * (1 + rho 16749) = rho 16747 + rho 16748 := by
      linear_combination r4178
    have ha5 : rho 16751 * (1 - rho 16749) = rho 16746 - rho 16747 - rho 16748 := by
      linear_combination r4179
    have haddx :
        rho 16750 * (1 + 3021 * (rho 16745 * seg16AccX93 rho) * (rho 16744 * seg16AccY93 rho)) =
          rho 16745 * seg16AccX93 rho + rho 16744 * seg16AccY93 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16751 * (1 - 3021 * (rho 16745 * seg16AccX93 rho) * (rho 16744 * seg16AccY93 rho)) =
          (-1) * (rho 16745 * seg16AccX93 rho) - rho 16744 * seg16AccY93 rho +
            (seg16AccY93 rho - seg16AccX93 rho * (-1)) * (rho 16744 + rho 16745) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16751 * (1 - rho 16749) = rho 16746 - rho 16747 - rho 16748 := ha5
        _ = (-1) * rho 16747 - rho 16748 + (seg16AccY93 rho - seg16AccX93 rho * (-1)) * (rho 16744 + rho 16745) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX94 rho = seg16AccX93 rho - Bool.toZMod bit * (seg16AccX93 rho - rho 16750) := by
      have hd : rho 16752 = Bool.toZMod bit * (rho 16750 - seg16AccX93 rho) := by
        rw [← hbit, seg16LadderFlatX93_eq]
        unfold seg16LadderFlatX93
        linear_combination -r4180
      unfold seg16AccX94
      linear_combination hd
    have hsely : seg16AccY94 rho = seg16AccY93 rho - Bool.toZMod bit * (seg16AccY93 rho - rho 16751) := by
      have hd : rho 16753 = Bool.toZMod bit * (rho 16751 - seg16AccY93 rho) := by
        rw [← hbit, seg16LadderFlatY93_eq]
        unfold seg16LadderFlatY93
        linear_combination -r4181
      unfold seg16AccY94
      linear_combination hd
    have hd0 : rho 16744 * rho 16745 = rho 16754 := by linear_combination r4182
    have hd1 : rho 16744 * rho 16744 = rho 16755 := by linear_combination r4183
    have hd2 : rho 16745 * rho 16745 = rho 16756 := by linear_combination r4184
    have hd3 : rho 16757 * (rho 16745 * rho 16745 + rho 16744 * rho 16744 * (-1)) = 2 * (rho 16744 * rho 16745) := by
      rw [hd0, hd1, hd2]
      linear_combination r4185
    have hd4 : rho 16758 * (2 - (rho 16745 * rho 16745 + rho 16744 * rho 16744 * (-1))) = rho 16745 * rho 16745 - rho 16744 * rho 16744 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4186
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX93 rho : Seg16.F), (seg16AccY93 rho : Seg16.F)⟩
      ⟨(rho 16744 : Seg16.F), (rho 16745 : Seg16.F)⟩
      ⟨(rho 16750 : Seg16.F), (rho 16751 : Seg16.F)⟩
      ⟨(seg16AccX94 rho : Seg16.F), (seg16AccY94 rho : Seg16.F)⟩
      ⟨(rho 16757 : Seg16.F), (rho 16758 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung93

theorem seg16_rung94 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15386 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX94 rho : Seg16.F), (seg16AccY94 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16757 : Seg16.F), (rho 16758 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX94 rho : Seg16.F), (seg16AccY94 rho : Seg16.F)⟩
        ⟨(rho 16757 : Seg16.F), (rho 16758 : Seg16.F)⟩
        ⟨(seg16AccX95 rho : Seg16.F), (seg16AccY95 rho : Seg16.F)⟩
        ⟨(rho 16770 : Seg16.F), (rho 16771 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p52, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart52 at p52
  rcases p52 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4187, r4188, r4189, r4190, r4191, r4192, r4193, r4194, r4195, r4196, r4197, r4198, r4199, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow4187 Seg16.relationLc505 Seg16.relationLc505Part0 Seg16.relationLc505Part1 Seg16.relationLc505Part2 Seg16.relationLc505Part3 Seg16.relationLc505Part4 Seg16.relationLc505Part5 at r4187
  unfold Seg16.relationRow4188 Seg16.relationLc506 Seg16.relationLc506Part0 Seg16.relationLc506Part1 Seg16.relationLc506Part2 at r4188
  unfold Seg16.relationRow4189 Seg16.relationLc507 Seg16.relationLc507Part0 Seg16.relationLc507Part1 Seg16.relationLc507Part2 at r4189
  unfold Seg16.relationRow4190 at r4190
  unfold Seg16.relationRow4191 at r4191
  unfold Seg16.relationRow4192 at r4192
  unfold Seg16.relationRow4193 Seg16.relationLc508 Seg16.relationLc508Part0 Seg16.relationLc508Part1 Seg16.relationLc508Part2 at r4193
  unfold Seg16.relationRow4194 Seg16.relationLc509 Seg16.relationLc509Part0 Seg16.relationLc509Part1 Seg16.relationLc509Part2 at r4194
  unfold Seg16.relationRow4195 at r4195
  unfold Seg16.relationRow4196 at r4196
  unfold Seg16.relationRow4197 at r4197
  unfold Seg16.relationRow4198 at r4198
  unfold Seg16.relationRow4199 at r4199
  have hrung94 (bit : Bool) (hbit : rho 15386 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX94 rho : Seg16.F), (seg16AccY94 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16757 : Seg16.F), (rho 16758 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX94 rho : Seg16.F), (seg16AccY94 rho : Seg16.F)⟩
        ⟨(rho 16757 : Seg16.F), (rho 16758 : Seg16.F)⟩
        ⟨(seg16AccX95 rho : Seg16.F), (seg16AccY95 rho : Seg16.F)⟩
        ⟨(rho 16770 : Seg16.F), (rho 16771 : Seg16.F)⟩ := by
    have ha0 : (rho 16757 + rho 16758) * (seg16AccX94 rho + seg16AccY94 rho) = rho 16759 := by
      rw [seg16LadderFlatX94_eq, seg16LadderFlatY94_eq]
      unfold seg16LadderFlatX94 seg16LadderFlatY94
      linear_combination r4187
    have ha1 : rho 16758 * seg16AccX94 rho = rho 16760 := by
      rw [seg16LadderFlatX94_eq]
      unfold seg16LadderFlatX94
      linear_combination r4188
    have ha2 : rho 16757 * seg16AccY94 rho = rho 16761 := by
      rw [seg16LadderFlatY94_eq]
      unfold seg16LadderFlatY94
      linear_combination r4189
    have ha3 : 3021 * rho 16760 * rho 16761 = rho 16762 := by
      linear_combination r4190
    have ha4 : rho 16763 * (1 + rho 16762) = rho 16760 + rho 16761 := by
      linear_combination r4191
    have ha5 : rho 16764 * (1 - rho 16762) = rho 16759 - rho 16760 - rho 16761 := by
      linear_combination r4192
    have haddx :
        rho 16763 * (1 + 3021 * (rho 16758 * seg16AccX94 rho) * (rho 16757 * seg16AccY94 rho)) =
          rho 16758 * seg16AccX94 rho + rho 16757 * seg16AccY94 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16764 * (1 - 3021 * (rho 16758 * seg16AccX94 rho) * (rho 16757 * seg16AccY94 rho)) =
          (-1) * (rho 16758 * seg16AccX94 rho) - rho 16757 * seg16AccY94 rho +
            (seg16AccY94 rho - seg16AccX94 rho * (-1)) * (rho 16757 + rho 16758) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16764 * (1 - rho 16762) = rho 16759 - rho 16760 - rho 16761 := ha5
        _ = (-1) * rho 16760 - rho 16761 + (seg16AccY94 rho - seg16AccX94 rho * (-1)) * (rho 16757 + rho 16758) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX95 rho = seg16AccX94 rho - Bool.toZMod bit * (seg16AccX94 rho - rho 16763) := by
      have hd : rho 16765 = Bool.toZMod bit * (rho 16763 - seg16AccX94 rho) := by
        rw [← hbit, seg16LadderFlatX94_eq]
        unfold seg16LadderFlatX94
        linear_combination -r4193
      unfold seg16AccX95
      linear_combination hd
    have hsely : seg16AccY95 rho = seg16AccY94 rho - Bool.toZMod bit * (seg16AccY94 rho - rho 16764) := by
      have hd : rho 16766 = Bool.toZMod bit * (rho 16764 - seg16AccY94 rho) := by
        rw [← hbit, seg16LadderFlatY94_eq]
        unfold seg16LadderFlatY94
        linear_combination -r4194
      unfold seg16AccY95
      linear_combination hd
    have hd0 : rho 16757 * rho 16758 = rho 16767 := by linear_combination r4195
    have hd1 : rho 16757 * rho 16757 = rho 16768 := by linear_combination r4196
    have hd2 : rho 16758 * rho 16758 = rho 16769 := by linear_combination r4197
    have hd3 : rho 16770 * (rho 16758 * rho 16758 + rho 16757 * rho 16757 * (-1)) = 2 * (rho 16757 * rho 16758) := by
      rw [hd0, hd1, hd2]
      linear_combination r4198
    have hd4 : rho 16771 * (2 - (rho 16758 * rho 16758 + rho 16757 * rho 16757 * (-1))) = rho 16758 * rho 16758 - rho 16757 * rho 16757 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4199
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX94 rho : Seg16.F), (seg16AccY94 rho : Seg16.F)⟩
      ⟨(rho 16757 : Seg16.F), (rho 16758 : Seg16.F)⟩
      ⟨(rho 16763 : Seg16.F), (rho 16764 : Seg16.F)⟩
      ⟨(seg16AccX95 rho : Seg16.F), (seg16AccY95 rho : Seg16.F)⟩
      ⟨(rho 16770 : Seg16.F), (rho 16771 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung94

theorem seg16_rung95 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15387 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX95 rho : Seg16.F), (seg16AccY95 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16770 : Seg16.F), (rho 16771 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX95 rho : Seg16.F), (seg16AccY95 rho : Seg16.F)⟩
        ⟨(rho 16770 : Seg16.F), (rho 16771 : Seg16.F)⟩
        ⟨(seg16AccX96 rho : Seg16.F), (seg16AccY96 rho : Seg16.F)⟩
        ⟨(rho 16783 : Seg16.F), (rho 16784 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p52, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart52 at p52
  rcases p52 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4200, r4201, r4202, r4203, r4204, r4205, r4206, r4207, r4208, r4209, r4210, r4211, r4212, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow4200 Seg16.relationLc510 Seg16.relationLc510Part0 Seg16.relationLc510Part1 Seg16.relationLc510Part2 Seg16.relationLc510Part3 Seg16.relationLc510Part4 Seg16.relationLc510Part5 at r4200
  unfold Seg16.relationRow4201 Seg16.relationLc511 Seg16.relationLc511Part0 Seg16.relationLc511Part1 Seg16.relationLc511Part2 at r4201
  unfold Seg16.relationRow4202 Seg16.relationLc512 Seg16.relationLc512Part0 Seg16.relationLc512Part1 Seg16.relationLc512Part2 at r4202
  unfold Seg16.relationRow4203 at r4203
  unfold Seg16.relationRow4204 at r4204
  unfold Seg16.relationRow4205 at r4205
  unfold Seg16.relationRow4206 Seg16.relationLc513 Seg16.relationLc513Part0 Seg16.relationLc513Part1 Seg16.relationLc513Part2 at r4206
  unfold Seg16.relationRow4207 Seg16.relationLc514 Seg16.relationLc514Part0 Seg16.relationLc514Part1 Seg16.relationLc514Part2 Seg16.relationLc514Part3 at r4207
  unfold Seg16.relationRow4208 at r4208
  unfold Seg16.relationRow4209 at r4209
  unfold Seg16.relationRow4210 at r4210
  unfold Seg16.relationRow4211 at r4211
  unfold Seg16.relationRow4212 at r4212
  have hrung95 (bit : Bool) (hbit : rho 15387 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX95 rho : Seg16.F), (seg16AccY95 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16770 : Seg16.F), (rho 16771 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX95 rho : Seg16.F), (seg16AccY95 rho : Seg16.F)⟩
        ⟨(rho 16770 : Seg16.F), (rho 16771 : Seg16.F)⟩
        ⟨(seg16AccX96 rho : Seg16.F), (seg16AccY96 rho : Seg16.F)⟩
        ⟨(rho 16783 : Seg16.F), (rho 16784 : Seg16.F)⟩ := by
    have ha0 : (rho 16770 + rho 16771) * (seg16AccX95 rho + seg16AccY95 rho) = rho 16772 := by
      rw [seg16LadderFlatX95_eq, seg16LadderFlatY95_eq]
      unfold seg16LadderFlatX95 seg16LadderFlatY95
      linear_combination r4200
    have ha1 : rho 16771 * seg16AccX95 rho = rho 16773 := by
      rw [seg16LadderFlatX95_eq]
      unfold seg16LadderFlatX95
      linear_combination r4201
    have ha2 : rho 16770 * seg16AccY95 rho = rho 16774 := by
      rw [seg16LadderFlatY95_eq]
      unfold seg16LadderFlatY95
      linear_combination r4202
    have ha3 : 3021 * rho 16773 * rho 16774 = rho 16775 := by
      linear_combination r4203
    have ha4 : rho 16776 * (1 + rho 16775) = rho 16773 + rho 16774 := by
      linear_combination r4204
    have ha5 : rho 16777 * (1 - rho 16775) = rho 16772 - rho 16773 - rho 16774 := by
      linear_combination r4205
    have haddx :
        rho 16776 * (1 + 3021 * (rho 16771 * seg16AccX95 rho) * (rho 16770 * seg16AccY95 rho)) =
          rho 16771 * seg16AccX95 rho + rho 16770 * seg16AccY95 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16777 * (1 - 3021 * (rho 16771 * seg16AccX95 rho) * (rho 16770 * seg16AccY95 rho)) =
          (-1) * (rho 16771 * seg16AccX95 rho) - rho 16770 * seg16AccY95 rho +
            (seg16AccY95 rho - seg16AccX95 rho * (-1)) * (rho 16770 + rho 16771) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16777 * (1 - rho 16775) = rho 16772 - rho 16773 - rho 16774 := ha5
        _ = (-1) * rho 16773 - rho 16774 + (seg16AccY95 rho - seg16AccX95 rho * (-1)) * (rho 16770 + rho 16771) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX96 rho = seg16AccX95 rho - Bool.toZMod bit * (seg16AccX95 rho - rho 16776) := by
      have hd : rho 16778 = Bool.toZMod bit * (rho 16776 - seg16AccX95 rho) := by
        rw [← hbit, seg16LadderFlatX95_eq]
        unfold seg16LadderFlatX95
        linear_combination -r4206
      unfold seg16AccX96
      linear_combination hd
    have hsely : seg16AccY96 rho = seg16AccY95 rho - Bool.toZMod bit * (seg16AccY95 rho - rho 16777) := by
      have hd : rho 16779 = Bool.toZMod bit * (rho 16777 - seg16AccY95 rho) := by
        rw [← hbit, seg16LadderFlatY95_eq]
        unfold seg16LadderFlatY95
        linear_combination -r4207
      unfold seg16AccY96
      linear_combination hd
    have hd0 : rho 16770 * rho 16771 = rho 16780 := by linear_combination r4208
    have hd1 : rho 16770 * rho 16770 = rho 16781 := by linear_combination r4209
    have hd2 : rho 16771 * rho 16771 = rho 16782 := by linear_combination r4210
    have hd3 : rho 16783 * (rho 16771 * rho 16771 + rho 16770 * rho 16770 * (-1)) = 2 * (rho 16770 * rho 16771) := by
      rw [hd0, hd1, hd2]
      linear_combination r4211
    have hd4 : rho 16784 * (2 - (rho 16771 * rho 16771 + rho 16770 * rho 16770 * (-1))) = rho 16771 * rho 16771 - rho 16770 * rho 16770 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4212
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX95 rho : Seg16.F), (seg16AccY95 rho : Seg16.F)⟩
      ⟨(rho 16770 : Seg16.F), (rho 16771 : Seg16.F)⟩
      ⟨(rho 16776 : Seg16.F), (rho 16777 : Seg16.F)⟩
      ⟨(seg16AccX96 rho : Seg16.F), (seg16AccY96 rho : Seg16.F)⟩
      ⟨(rho 16783 : Seg16.F), (rho 16784 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung95

theorem seg16_hstep_c2 (rho : Nat -> Seg16.F) (h : Seg16.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (15292 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 64 ≤ i → i < 96 →
      EdwardsBridge.onCurve (seg16LadderAccState rho i) →
      EdwardsBridge.onCurve (seg16LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg16LadderAccState rho i) (seg16LadderCurState rho i)
        (seg16LadderAccState rho (i + 1)) (seg16LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg16_rung64 rho h bits[64]! (hbitAt 64 (by omega)) hacc hcur
  · exact seg16_rung65 rho h bits[65]! (hbitAt 65 (by omega)) hacc hcur
  · exact seg16_rung66 rho h bits[66]! (hbitAt 66 (by omega)) hacc hcur
  · exact seg16_rung67 rho h bits[67]! (hbitAt 67 (by omega)) hacc hcur
  · exact seg16_rung68 rho h bits[68]! (hbitAt 68 (by omega)) hacc hcur
  · exact seg16_rung69 rho h bits[69]! (hbitAt 69 (by omega)) hacc hcur
  · exact seg16_rung70 rho h bits[70]! (hbitAt 70 (by omega)) hacc hcur
  · exact seg16_rung71 rho h bits[71]! (hbitAt 71 (by omega)) hacc hcur
  · exact seg16_rung72 rho h bits[72]! (hbitAt 72 (by omega)) hacc hcur
  · exact seg16_rung73 rho h bits[73]! (hbitAt 73 (by omega)) hacc hcur
  · exact seg16_rung74 rho h bits[74]! (hbitAt 74 (by omega)) hacc hcur
  · exact seg16_rung75 rho h bits[75]! (hbitAt 75 (by omega)) hacc hcur
  · exact seg16_rung76 rho h bits[76]! (hbitAt 76 (by omega)) hacc hcur
  · exact seg16_rung77 rho h bits[77]! (hbitAt 77 (by omega)) hacc hcur
  · exact seg16_rung78 rho h bits[78]! (hbitAt 78 (by omega)) hacc hcur
  · exact seg16_rung79 rho h bits[79]! (hbitAt 79 (by omega)) hacc hcur
  · exact seg16_rung80 rho h bits[80]! (hbitAt 80 (by omega)) hacc hcur
  · exact seg16_rung81 rho h bits[81]! (hbitAt 81 (by omega)) hacc hcur
  · exact seg16_rung82 rho h bits[82]! (hbitAt 82 (by omega)) hacc hcur
  · exact seg16_rung83 rho h bits[83]! (hbitAt 83 (by omega)) hacc hcur
  · exact seg16_rung84 rho h bits[84]! (hbitAt 84 (by omega)) hacc hcur
  · exact seg16_rung85 rho h bits[85]! (hbitAt 85 (by omega)) hacc hcur
  · exact seg16_rung86 rho h bits[86]! (hbitAt 86 (by omega)) hacc hcur
  · exact seg16_rung87 rho h bits[87]! (hbitAt 87 (by omega)) hacc hcur
  · exact seg16_rung88 rho h bits[88]! (hbitAt 88 (by omega)) hacc hcur
  · exact seg16_rung89 rho h bits[89]! (hbitAt 89 (by omega)) hacc hcur
  · exact seg16_rung90 rho h bits[90]! (hbitAt 90 (by omega)) hacc hcur
  · exact seg16_rung91 rho h bits[91]! (hbitAt 91 (by omega)) hacc hcur
  · exact seg16_rung92 rho h bits[92]! (hbitAt 92 (by omega)) hacc hcur
  · exact seg16_rung93 rho h bits[93]! (hbitAt 93 (by omega)) hacc hcur
  · exact seg16_rung94 rho h bits[94]! (hbitAt 94 (by omega)) hacc hcur
  · exact seg16_rung95 rho h bits[95]! (hbitAt 95 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
