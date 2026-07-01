import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg34_rung64 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34056 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX64 rho : Seg34.F), (seg34AccY64 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35067 : Seg34.F), (rho 35068 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX64 rho : Seg34.F), (seg34AccY64 rho : Seg34.F)⟩
        ⟨(rho 35067 : Seg34.F), (rho 35068 : Seg34.F)⟩
        ⟨(seg34AccX65 rho : Seg34.F), (seg34AccY65 rho : Seg34.F)⟩
        ⟨(rho 35080 : Seg34.F), (rho 35081 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart47 at p47
  rcases p47 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3797, r3798, r3799, r3800, r3801, r3802, r3803, r3804, r3805, r3806, r3807, r3808, r3809, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow3797 Seg34.relationLc355 Seg34.relationLc355Part0 Seg34.relationLc355Part1 Seg34.relationLc355Part2 Seg34.relationLc355Part3 Seg34.relationLc355Part4 at r3797
  unfold Seg34.relationRow3798 Seg34.relationLc356 Seg34.relationLc356Part0 Seg34.relationLc356Part1 at r3798
  unfold Seg34.relationRow3799 Seg34.relationLc357 Seg34.relationLc357Part0 Seg34.relationLc357Part1 Seg34.relationLc357Part2 at r3799
  unfold Seg34.relationRow3800 at r3800
  unfold Seg34.relationRow3801 at r3801
  unfold Seg34.relationRow3802 at r3802
  unfold Seg34.relationRow3803 Seg34.relationLc358 Seg34.relationLc358Part0 Seg34.relationLc358Part1 Seg34.relationLc358Part2 at r3803
  unfold Seg34.relationRow3804 Seg34.relationLc359 Seg34.relationLc359Part0 Seg34.relationLc359Part1 Seg34.relationLc359Part2 at r3804
  unfold Seg34.relationRow3805 at r3805
  unfold Seg34.relationRow3806 at r3806
  unfold Seg34.relationRow3807 at r3807
  unfold Seg34.relationRow3808 at r3808
  unfold Seg34.relationRow3809 at r3809
  have hrung64 (bit : Bool) (hbit : rho 34056 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX64 rho : Seg34.F), (seg34AccY64 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35067 : Seg34.F), (rho 35068 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX64 rho : Seg34.F), (seg34AccY64 rho : Seg34.F)⟩
        ⟨(rho 35067 : Seg34.F), (rho 35068 : Seg34.F)⟩
        ⟨(seg34AccX65 rho : Seg34.F), (seg34AccY65 rho : Seg34.F)⟩
        ⟨(rho 35080 : Seg34.F), (rho 35081 : Seg34.F)⟩ := by
    have ha0 : (rho 35067 + rho 35068) * (seg34AccX64 rho + seg34AccY64 rho) = rho 35069 := by
      rw [seg34LadderFlatX64_eq, seg34LadderFlatY64_eq]
      unfold seg34LadderFlatX64 seg34LadderFlatY64
      linear_combination r3797
    have ha1 : rho 35068 * seg34AccX64 rho = rho 35070 := by
      rw [seg34LadderFlatX64_eq]
      unfold seg34LadderFlatX64
      linear_combination r3798
    have ha2 : rho 35067 * seg34AccY64 rho = rho 35071 := by
      rw [seg34LadderFlatY64_eq]
      unfold seg34LadderFlatY64
      linear_combination r3799
    have ha3 : 3021 * rho 35070 * rho 35071 = rho 35072 := by
      linear_combination r3800
    have ha4 : rho 35073 * (1 + rho 35072) = rho 35070 + rho 35071 := by
      linear_combination r3801
    have ha5 : rho 35074 * (1 - rho 35072) = rho 35069 - rho 35070 - rho 35071 := by
      linear_combination r3802
    have haddx :
        rho 35073 * (1 + 3021 * (rho 35068 * seg34AccX64 rho) * (rho 35067 * seg34AccY64 rho)) =
          rho 35068 * seg34AccX64 rho + rho 35067 * seg34AccY64 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35074 * (1 - 3021 * (rho 35068 * seg34AccX64 rho) * (rho 35067 * seg34AccY64 rho)) =
          (-1) * (rho 35068 * seg34AccX64 rho) - rho 35067 * seg34AccY64 rho +
            (seg34AccY64 rho - seg34AccX64 rho * (-1)) * (rho 35067 + rho 35068) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35074 * (1 - rho 35072) = rho 35069 - rho 35070 - rho 35071 := ha5
        _ = (-1) * rho 35070 - rho 35071 + (seg34AccY64 rho - seg34AccX64 rho * (-1)) * (rho 35067 + rho 35068) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX65 rho = seg34AccX64 rho - Bool.toZMod bit * (seg34AccX64 rho - rho 35073) := by
      have hd : rho 35075 = Bool.toZMod bit * (rho 35073 - seg34AccX64 rho) := by
        rw [← hbit, seg34LadderFlatX64_eq]
        unfold seg34LadderFlatX64
        linear_combination -r3803
      unfold seg34AccX65
      linear_combination hd
    have hsely : seg34AccY65 rho = seg34AccY64 rho - Bool.toZMod bit * (seg34AccY64 rho - rho 35074) := by
      have hd : rho 35076 = Bool.toZMod bit * (rho 35074 - seg34AccY64 rho) := by
        rw [← hbit, seg34LadderFlatY64_eq]
        unfold seg34LadderFlatY64
        linear_combination -r3804
      unfold seg34AccY65
      linear_combination hd
    have hd0 : rho 35067 * rho 35068 = rho 35077 := by linear_combination r3805
    have hd1 : rho 35067 * rho 35067 = rho 35078 := by linear_combination r3806
    have hd2 : rho 35068 * rho 35068 = rho 35079 := by linear_combination r3807
    have hd3 : rho 35080 * (rho 35068 * rho 35068 + rho 35067 * rho 35067 * (-1)) = 2 * (rho 35067 * rho 35068) := by
      rw [hd0, hd1, hd2]
      linear_combination r3808
    have hd4 : rho 35081 * (2 - (rho 35068 * rho 35068 + rho 35067 * rho 35067 * (-1))) = rho 35068 * rho 35068 - rho 35067 * rho 35067 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3809
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX64 rho : Seg34.F), (seg34AccY64 rho : Seg34.F)⟩
      ⟨(rho 35067 : Seg34.F), (rho 35068 : Seg34.F)⟩
      ⟨(rho 35073 : Seg34.F), (rho 35074 : Seg34.F)⟩
      ⟨(seg34AccX65 rho : Seg34.F), (seg34AccY65 rho : Seg34.F)⟩
      ⟨(rho 35080 : Seg34.F), (rho 35081 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung64

theorem seg34_rung65 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34057 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX65 rho : Seg34.F), (seg34AccY65 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35080 : Seg34.F), (rho 35081 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX65 rho : Seg34.F), (seg34AccY65 rho : Seg34.F)⟩
        ⟨(rho 35080 : Seg34.F), (rho 35081 : Seg34.F)⟩
        ⟨(seg34AccX66 rho : Seg34.F), (seg34AccY66 rho : Seg34.F)⟩
        ⟨(rho 35093 : Seg34.F), (rho 35094 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart47 at p47
  rcases p47 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3810, r3811, r3812, r3813, r3814, r3815, r3816, r3817, r3818, r3819, r3820, r3821, r3822, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow3810 Seg34.relationLc360 Seg34.relationLc360Part0 Seg34.relationLc360Part1 Seg34.relationLc360Part2 Seg34.relationLc360Part3 Seg34.relationLc360Part4 at r3810
  unfold Seg34.relationRow3811 Seg34.relationLc361 Seg34.relationLc361Part0 Seg34.relationLc361Part1 Seg34.relationLc361Part2 at r3811
  unfold Seg34.relationRow3812 Seg34.relationLc362 Seg34.relationLc362Part0 Seg34.relationLc362Part1 Seg34.relationLc362Part2 at r3812
  unfold Seg34.relationRow3813 at r3813
  unfold Seg34.relationRow3814 at r3814
  unfold Seg34.relationRow3815 at r3815
  unfold Seg34.relationRow3816 Seg34.relationLc363 Seg34.relationLc363Part0 Seg34.relationLc363Part1 Seg34.relationLc363Part2 at r3816
  unfold Seg34.relationRow3817 Seg34.relationLc364 Seg34.relationLc364Part0 Seg34.relationLc364Part1 Seg34.relationLc364Part2 at r3817
  unfold Seg34.relationRow3818 at r3818
  unfold Seg34.relationRow3819 at r3819
  unfold Seg34.relationRow3820 at r3820
  unfold Seg34.relationRow3821 at r3821
  unfold Seg34.relationRow3822 at r3822
  have hrung65 (bit : Bool) (hbit : rho 34057 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX65 rho : Seg34.F), (seg34AccY65 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35080 : Seg34.F), (rho 35081 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX65 rho : Seg34.F), (seg34AccY65 rho : Seg34.F)⟩
        ⟨(rho 35080 : Seg34.F), (rho 35081 : Seg34.F)⟩
        ⟨(seg34AccX66 rho : Seg34.F), (seg34AccY66 rho : Seg34.F)⟩
        ⟨(rho 35093 : Seg34.F), (rho 35094 : Seg34.F)⟩ := by
    have ha0 : (rho 35080 + rho 35081) * (seg34AccX65 rho + seg34AccY65 rho) = rho 35082 := by
      rw [seg34LadderFlatX65_eq, seg34LadderFlatY65_eq]
      unfold seg34LadderFlatX65 seg34LadderFlatY65
      linear_combination r3810
    have ha1 : rho 35081 * seg34AccX65 rho = rho 35083 := by
      rw [seg34LadderFlatX65_eq]
      unfold seg34LadderFlatX65
      linear_combination r3811
    have ha2 : rho 35080 * seg34AccY65 rho = rho 35084 := by
      rw [seg34LadderFlatY65_eq]
      unfold seg34LadderFlatY65
      linear_combination r3812
    have ha3 : 3021 * rho 35083 * rho 35084 = rho 35085 := by
      linear_combination r3813
    have ha4 : rho 35086 * (1 + rho 35085) = rho 35083 + rho 35084 := by
      linear_combination r3814
    have ha5 : rho 35087 * (1 - rho 35085) = rho 35082 - rho 35083 - rho 35084 := by
      linear_combination r3815
    have haddx :
        rho 35086 * (1 + 3021 * (rho 35081 * seg34AccX65 rho) * (rho 35080 * seg34AccY65 rho)) =
          rho 35081 * seg34AccX65 rho + rho 35080 * seg34AccY65 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35087 * (1 - 3021 * (rho 35081 * seg34AccX65 rho) * (rho 35080 * seg34AccY65 rho)) =
          (-1) * (rho 35081 * seg34AccX65 rho) - rho 35080 * seg34AccY65 rho +
            (seg34AccY65 rho - seg34AccX65 rho * (-1)) * (rho 35080 + rho 35081) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35087 * (1 - rho 35085) = rho 35082 - rho 35083 - rho 35084 := ha5
        _ = (-1) * rho 35083 - rho 35084 + (seg34AccY65 rho - seg34AccX65 rho * (-1)) * (rho 35080 + rho 35081) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX66 rho = seg34AccX65 rho - Bool.toZMod bit * (seg34AccX65 rho - rho 35086) := by
      have hd : rho 35088 = Bool.toZMod bit * (rho 35086 - seg34AccX65 rho) := by
        rw [← hbit, seg34LadderFlatX65_eq]
        unfold seg34LadderFlatX65
        linear_combination -r3816
      unfold seg34AccX66
      linear_combination hd
    have hsely : seg34AccY66 rho = seg34AccY65 rho - Bool.toZMod bit * (seg34AccY65 rho - rho 35087) := by
      have hd : rho 35089 = Bool.toZMod bit * (rho 35087 - seg34AccY65 rho) := by
        rw [← hbit, seg34LadderFlatY65_eq]
        unfold seg34LadderFlatY65
        linear_combination -r3817
      unfold seg34AccY66
      linear_combination hd
    have hd0 : rho 35080 * rho 35081 = rho 35090 := by linear_combination r3818
    have hd1 : rho 35080 * rho 35080 = rho 35091 := by linear_combination r3819
    have hd2 : rho 35081 * rho 35081 = rho 35092 := by linear_combination r3820
    have hd3 : rho 35093 * (rho 35081 * rho 35081 + rho 35080 * rho 35080 * (-1)) = 2 * (rho 35080 * rho 35081) := by
      rw [hd0, hd1, hd2]
      linear_combination r3821
    have hd4 : rho 35094 * (2 - (rho 35081 * rho 35081 + rho 35080 * rho 35080 * (-1))) = rho 35081 * rho 35081 - rho 35080 * rho 35080 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3822
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX65 rho : Seg34.F), (seg34AccY65 rho : Seg34.F)⟩
      ⟨(rho 35080 : Seg34.F), (rho 35081 : Seg34.F)⟩
      ⟨(rho 35086 : Seg34.F), (rho 35087 : Seg34.F)⟩
      ⟨(seg34AccX66 rho : Seg34.F), (seg34AccY66 rho : Seg34.F)⟩
      ⟨(rho 35093 : Seg34.F), (rho 35094 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung65

theorem seg34_rung66 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34058 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX66 rho : Seg34.F), (seg34AccY66 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35093 : Seg34.F), (rho 35094 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX66 rho : Seg34.F), (seg34AccY66 rho : Seg34.F)⟩
        ⟨(rho 35093 : Seg34.F), (rho 35094 : Seg34.F)⟩
        ⟨(seg34AccX67 rho : Seg34.F), (seg34AccY67 rho : Seg34.F)⟩
        ⟨(rho 35106 : Seg34.F), (rho 35107 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart47 at p47
  rcases p47 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3823, r3824, r3825, r3826, r3827, r3828, r3829, r3830, r3831, r3832, r3833, r3834, r3835, _, _, _, _⟩
  unfold Seg34.relationRow3823 Seg34.relationLc365 Seg34.relationLc365Part0 Seg34.relationLc365Part1 Seg34.relationLc365Part2 Seg34.relationLc365Part3 Seg34.relationLc365Part4 at r3823
  unfold Seg34.relationRow3824 Seg34.relationLc366 Seg34.relationLc366Part0 Seg34.relationLc366Part1 Seg34.relationLc366Part2 at r3824
  unfold Seg34.relationRow3825 Seg34.relationLc367 Seg34.relationLc367Part0 Seg34.relationLc367Part1 Seg34.relationLc367Part2 at r3825
  unfold Seg34.relationRow3826 at r3826
  unfold Seg34.relationRow3827 at r3827
  unfold Seg34.relationRow3828 at r3828
  unfold Seg34.relationRow3829 Seg34.relationLc368 Seg34.relationLc368Part0 Seg34.relationLc368Part1 Seg34.relationLc368Part2 at r3829
  unfold Seg34.relationRow3830 Seg34.relationLc369 Seg34.relationLc369Part0 Seg34.relationLc369Part1 Seg34.relationLc369Part2 at r3830
  unfold Seg34.relationRow3831 at r3831
  unfold Seg34.relationRow3832 at r3832
  unfold Seg34.relationRow3833 at r3833
  unfold Seg34.relationRow3834 at r3834
  unfold Seg34.relationRow3835 at r3835
  have hrung66 (bit : Bool) (hbit : rho 34058 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX66 rho : Seg34.F), (seg34AccY66 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35093 : Seg34.F), (rho 35094 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX66 rho : Seg34.F), (seg34AccY66 rho : Seg34.F)⟩
        ⟨(rho 35093 : Seg34.F), (rho 35094 : Seg34.F)⟩
        ⟨(seg34AccX67 rho : Seg34.F), (seg34AccY67 rho : Seg34.F)⟩
        ⟨(rho 35106 : Seg34.F), (rho 35107 : Seg34.F)⟩ := by
    have ha0 : (rho 35093 + rho 35094) * (seg34AccX66 rho + seg34AccY66 rho) = rho 35095 := by
      rw [seg34LadderFlatX66_eq, seg34LadderFlatY66_eq]
      unfold seg34LadderFlatX66 seg34LadderFlatY66
      linear_combination r3823
    have ha1 : rho 35094 * seg34AccX66 rho = rho 35096 := by
      rw [seg34LadderFlatX66_eq]
      unfold seg34LadderFlatX66
      linear_combination r3824
    have ha2 : rho 35093 * seg34AccY66 rho = rho 35097 := by
      rw [seg34LadderFlatY66_eq]
      unfold seg34LadderFlatY66
      linear_combination r3825
    have ha3 : 3021 * rho 35096 * rho 35097 = rho 35098 := by
      linear_combination r3826
    have ha4 : rho 35099 * (1 + rho 35098) = rho 35096 + rho 35097 := by
      linear_combination r3827
    have ha5 : rho 35100 * (1 - rho 35098) = rho 35095 - rho 35096 - rho 35097 := by
      linear_combination r3828
    have haddx :
        rho 35099 * (1 + 3021 * (rho 35094 * seg34AccX66 rho) * (rho 35093 * seg34AccY66 rho)) =
          rho 35094 * seg34AccX66 rho + rho 35093 * seg34AccY66 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35100 * (1 - 3021 * (rho 35094 * seg34AccX66 rho) * (rho 35093 * seg34AccY66 rho)) =
          (-1) * (rho 35094 * seg34AccX66 rho) - rho 35093 * seg34AccY66 rho +
            (seg34AccY66 rho - seg34AccX66 rho * (-1)) * (rho 35093 + rho 35094) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35100 * (1 - rho 35098) = rho 35095 - rho 35096 - rho 35097 := ha5
        _ = (-1) * rho 35096 - rho 35097 + (seg34AccY66 rho - seg34AccX66 rho * (-1)) * (rho 35093 + rho 35094) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX67 rho = seg34AccX66 rho - Bool.toZMod bit * (seg34AccX66 rho - rho 35099) := by
      have hd : rho 35101 = Bool.toZMod bit * (rho 35099 - seg34AccX66 rho) := by
        rw [← hbit, seg34LadderFlatX66_eq]
        unfold seg34LadderFlatX66
        linear_combination -r3829
      unfold seg34AccX67
      linear_combination hd
    have hsely : seg34AccY67 rho = seg34AccY66 rho - Bool.toZMod bit * (seg34AccY66 rho - rho 35100) := by
      have hd : rho 35102 = Bool.toZMod bit * (rho 35100 - seg34AccY66 rho) := by
        rw [← hbit, seg34LadderFlatY66_eq]
        unfold seg34LadderFlatY66
        linear_combination -r3830
      unfold seg34AccY67
      linear_combination hd
    have hd0 : rho 35093 * rho 35094 = rho 35103 := by linear_combination r3831
    have hd1 : rho 35093 * rho 35093 = rho 35104 := by linear_combination r3832
    have hd2 : rho 35094 * rho 35094 = rho 35105 := by linear_combination r3833
    have hd3 : rho 35106 * (rho 35094 * rho 35094 + rho 35093 * rho 35093 * (-1)) = 2 * (rho 35093 * rho 35094) := by
      rw [hd0, hd1, hd2]
      linear_combination r3834
    have hd4 : rho 35107 * (2 - (rho 35094 * rho 35094 + rho 35093 * rho 35093 * (-1))) = rho 35094 * rho 35094 - rho 35093 * rho 35093 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3835
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX66 rho : Seg34.F), (seg34AccY66 rho : Seg34.F)⟩
      ⟨(rho 35093 : Seg34.F), (rho 35094 : Seg34.F)⟩
      ⟨(rho 35099 : Seg34.F), (rho 35100 : Seg34.F)⟩
      ⟨(seg34AccX67 rho : Seg34.F), (seg34AccY67 rho : Seg34.F)⟩
      ⟨(rho 35106 : Seg34.F), (rho 35107 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung66

theorem seg34_rung67 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34059 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX67 rho : Seg34.F), (seg34AccY67 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35106 : Seg34.F), (rho 35107 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX67 rho : Seg34.F), (seg34AccY67 rho : Seg34.F)⟩
        ⟨(rho 35106 : Seg34.F), (rho 35107 : Seg34.F)⟩
        ⟨(seg34AccX68 rho : Seg34.F), (seg34AccY68 rho : Seg34.F)⟩
        ⟨(rho 35119 : Seg34.F), (rho 35120 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart47 at p47
  rcases p47 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3836, r3837, r3838, r3839⟩
  unfold Seg34.relationPart48 at p48
  rcases p48 with ⟨r3840, r3841, r3842, r3843, r3844, r3845, r3846, r3847, r3848, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow3836 Seg34.relationLc370 Seg34.relationLc370Part0 Seg34.relationLc370Part1 Seg34.relationLc370Part2 Seg34.relationLc370Part3 Seg34.relationLc370Part4 at r3836
  unfold Seg34.relationRow3837 Seg34.relationLc371 Seg34.relationLc371Part0 Seg34.relationLc371Part1 Seg34.relationLc371Part2 at r3837
  unfold Seg34.relationRow3838 Seg34.relationLc372 Seg34.relationLc372Part0 Seg34.relationLc372Part1 Seg34.relationLc372Part2 at r3838
  unfold Seg34.relationRow3839 at r3839
  unfold Seg34.relationRow3840 at r3840
  unfold Seg34.relationRow3841 at r3841
  unfold Seg34.relationRow3842 Seg34.relationLc373 Seg34.relationLc373Part0 Seg34.relationLc373Part1 Seg34.relationLc373Part2 at r3842
  unfold Seg34.relationRow3843 Seg34.relationLc374 Seg34.relationLc374Part0 Seg34.relationLc374Part1 Seg34.relationLc374Part2 at r3843
  unfold Seg34.relationRow3844 at r3844
  unfold Seg34.relationRow3845 at r3845
  unfold Seg34.relationRow3846 at r3846
  unfold Seg34.relationRow3847 at r3847
  unfold Seg34.relationRow3848 at r3848
  have hrung67 (bit : Bool) (hbit : rho 34059 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX67 rho : Seg34.F), (seg34AccY67 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35106 : Seg34.F), (rho 35107 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX67 rho : Seg34.F), (seg34AccY67 rho : Seg34.F)⟩
        ⟨(rho 35106 : Seg34.F), (rho 35107 : Seg34.F)⟩
        ⟨(seg34AccX68 rho : Seg34.F), (seg34AccY68 rho : Seg34.F)⟩
        ⟨(rho 35119 : Seg34.F), (rho 35120 : Seg34.F)⟩ := by
    have ha0 : (rho 35106 + rho 35107) * (seg34AccX67 rho + seg34AccY67 rho) = rho 35108 := by
      rw [seg34LadderFlatX67_eq, seg34LadderFlatY67_eq]
      unfold seg34LadderFlatX67 seg34LadderFlatY67
      linear_combination r3836
    have ha1 : rho 35107 * seg34AccX67 rho = rho 35109 := by
      rw [seg34LadderFlatX67_eq]
      unfold seg34LadderFlatX67
      linear_combination r3837
    have ha2 : rho 35106 * seg34AccY67 rho = rho 35110 := by
      rw [seg34LadderFlatY67_eq]
      unfold seg34LadderFlatY67
      linear_combination r3838
    have ha3 : 3021 * rho 35109 * rho 35110 = rho 35111 := by
      linear_combination r3839
    have ha4 : rho 35112 * (1 + rho 35111) = rho 35109 + rho 35110 := by
      linear_combination r3840
    have ha5 : rho 35113 * (1 - rho 35111) = rho 35108 - rho 35109 - rho 35110 := by
      linear_combination r3841
    have haddx :
        rho 35112 * (1 + 3021 * (rho 35107 * seg34AccX67 rho) * (rho 35106 * seg34AccY67 rho)) =
          rho 35107 * seg34AccX67 rho + rho 35106 * seg34AccY67 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35113 * (1 - 3021 * (rho 35107 * seg34AccX67 rho) * (rho 35106 * seg34AccY67 rho)) =
          (-1) * (rho 35107 * seg34AccX67 rho) - rho 35106 * seg34AccY67 rho +
            (seg34AccY67 rho - seg34AccX67 rho * (-1)) * (rho 35106 + rho 35107) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35113 * (1 - rho 35111) = rho 35108 - rho 35109 - rho 35110 := ha5
        _ = (-1) * rho 35109 - rho 35110 + (seg34AccY67 rho - seg34AccX67 rho * (-1)) * (rho 35106 + rho 35107) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX68 rho = seg34AccX67 rho - Bool.toZMod bit * (seg34AccX67 rho - rho 35112) := by
      have hd : rho 35114 = Bool.toZMod bit * (rho 35112 - seg34AccX67 rho) := by
        rw [← hbit, seg34LadderFlatX67_eq]
        unfold seg34LadderFlatX67
        linear_combination -r3842
      unfold seg34AccX68
      linear_combination hd
    have hsely : seg34AccY68 rho = seg34AccY67 rho - Bool.toZMod bit * (seg34AccY67 rho - rho 35113) := by
      have hd : rho 35115 = Bool.toZMod bit * (rho 35113 - seg34AccY67 rho) := by
        rw [← hbit, seg34LadderFlatY67_eq]
        unfold seg34LadderFlatY67
        linear_combination -r3843
      unfold seg34AccY68
      linear_combination hd
    have hd0 : rho 35106 * rho 35107 = rho 35116 := by linear_combination r3844
    have hd1 : rho 35106 * rho 35106 = rho 35117 := by linear_combination r3845
    have hd2 : rho 35107 * rho 35107 = rho 35118 := by linear_combination r3846
    have hd3 : rho 35119 * (rho 35107 * rho 35107 + rho 35106 * rho 35106 * (-1)) = 2 * (rho 35106 * rho 35107) := by
      rw [hd0, hd1, hd2]
      linear_combination r3847
    have hd4 : rho 35120 * (2 - (rho 35107 * rho 35107 + rho 35106 * rho 35106 * (-1))) = rho 35107 * rho 35107 - rho 35106 * rho 35106 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3848
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX67 rho : Seg34.F), (seg34AccY67 rho : Seg34.F)⟩
      ⟨(rho 35106 : Seg34.F), (rho 35107 : Seg34.F)⟩
      ⟨(rho 35112 : Seg34.F), (rho 35113 : Seg34.F)⟩
      ⟨(seg34AccX68 rho : Seg34.F), (seg34AccY68 rho : Seg34.F)⟩
      ⟨(rho 35119 : Seg34.F), (rho 35120 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung67

theorem seg34_rung68 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34060 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX68 rho : Seg34.F), (seg34AccY68 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35119 : Seg34.F), (rho 35120 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX68 rho : Seg34.F), (seg34AccY68 rho : Seg34.F)⟩
        ⟨(rho 35119 : Seg34.F), (rho 35120 : Seg34.F)⟩
        ⟨(seg34AccX69 rho : Seg34.F), (seg34AccY69 rho : Seg34.F)⟩
        ⟨(rho 35132 : Seg34.F), (rho 35133 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart48 at p48
  rcases p48 with ⟨_, _, _, _, _, _, _, _, _, r3849, r3850, r3851, r3852, r3853, r3854, r3855, r3856, r3857, r3858, r3859, r3860, r3861, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow3849 Seg34.relationLc375 Seg34.relationLc375Part0 Seg34.relationLc375Part1 Seg34.relationLc375Part2 Seg34.relationLc375Part3 Seg34.relationLc375Part4 at r3849
  unfold Seg34.relationRow3850 Seg34.relationLc376 Seg34.relationLc376Part0 Seg34.relationLc376Part1 Seg34.relationLc376Part2 at r3850
  unfold Seg34.relationRow3851 Seg34.relationLc377 Seg34.relationLc377Part0 Seg34.relationLc377Part1 Seg34.relationLc377Part2 at r3851
  unfold Seg34.relationRow3852 at r3852
  unfold Seg34.relationRow3853 at r3853
  unfold Seg34.relationRow3854 at r3854
  unfold Seg34.relationRow3855 Seg34.relationLc378 Seg34.relationLc378Part0 Seg34.relationLc378Part1 Seg34.relationLc378Part2 at r3855
  unfold Seg34.relationRow3856 Seg34.relationLc379 Seg34.relationLc379Part0 Seg34.relationLc379Part1 Seg34.relationLc379Part2 at r3856
  unfold Seg34.relationRow3857 at r3857
  unfold Seg34.relationRow3858 at r3858
  unfold Seg34.relationRow3859 at r3859
  unfold Seg34.relationRow3860 at r3860
  unfold Seg34.relationRow3861 at r3861
  have hrung68 (bit : Bool) (hbit : rho 34060 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX68 rho : Seg34.F), (seg34AccY68 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35119 : Seg34.F), (rho 35120 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX68 rho : Seg34.F), (seg34AccY68 rho : Seg34.F)⟩
        ⟨(rho 35119 : Seg34.F), (rho 35120 : Seg34.F)⟩
        ⟨(seg34AccX69 rho : Seg34.F), (seg34AccY69 rho : Seg34.F)⟩
        ⟨(rho 35132 : Seg34.F), (rho 35133 : Seg34.F)⟩ := by
    have ha0 : (rho 35119 + rho 35120) * (seg34AccX68 rho + seg34AccY68 rho) = rho 35121 := by
      rw [seg34LadderFlatX68_eq, seg34LadderFlatY68_eq]
      unfold seg34LadderFlatX68 seg34LadderFlatY68
      linear_combination r3849
    have ha1 : rho 35120 * seg34AccX68 rho = rho 35122 := by
      rw [seg34LadderFlatX68_eq]
      unfold seg34LadderFlatX68
      linear_combination r3850
    have ha2 : rho 35119 * seg34AccY68 rho = rho 35123 := by
      rw [seg34LadderFlatY68_eq]
      unfold seg34LadderFlatY68
      linear_combination r3851
    have ha3 : 3021 * rho 35122 * rho 35123 = rho 35124 := by
      linear_combination r3852
    have ha4 : rho 35125 * (1 + rho 35124) = rho 35122 + rho 35123 := by
      linear_combination r3853
    have ha5 : rho 35126 * (1 - rho 35124) = rho 35121 - rho 35122 - rho 35123 := by
      linear_combination r3854
    have haddx :
        rho 35125 * (1 + 3021 * (rho 35120 * seg34AccX68 rho) * (rho 35119 * seg34AccY68 rho)) =
          rho 35120 * seg34AccX68 rho + rho 35119 * seg34AccY68 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35126 * (1 - 3021 * (rho 35120 * seg34AccX68 rho) * (rho 35119 * seg34AccY68 rho)) =
          (-1) * (rho 35120 * seg34AccX68 rho) - rho 35119 * seg34AccY68 rho +
            (seg34AccY68 rho - seg34AccX68 rho * (-1)) * (rho 35119 + rho 35120) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35126 * (1 - rho 35124) = rho 35121 - rho 35122 - rho 35123 := ha5
        _ = (-1) * rho 35122 - rho 35123 + (seg34AccY68 rho - seg34AccX68 rho * (-1)) * (rho 35119 + rho 35120) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX69 rho = seg34AccX68 rho - Bool.toZMod bit * (seg34AccX68 rho - rho 35125) := by
      have hd : rho 35127 = Bool.toZMod bit * (rho 35125 - seg34AccX68 rho) := by
        rw [← hbit, seg34LadderFlatX68_eq]
        unfold seg34LadderFlatX68
        linear_combination -r3855
      unfold seg34AccX69
      linear_combination hd
    have hsely : seg34AccY69 rho = seg34AccY68 rho - Bool.toZMod bit * (seg34AccY68 rho - rho 35126) := by
      have hd : rho 35128 = Bool.toZMod bit * (rho 35126 - seg34AccY68 rho) := by
        rw [← hbit, seg34LadderFlatY68_eq]
        unfold seg34LadderFlatY68
        linear_combination -r3856
      unfold seg34AccY69
      linear_combination hd
    have hd0 : rho 35119 * rho 35120 = rho 35129 := by linear_combination r3857
    have hd1 : rho 35119 * rho 35119 = rho 35130 := by linear_combination r3858
    have hd2 : rho 35120 * rho 35120 = rho 35131 := by linear_combination r3859
    have hd3 : rho 35132 * (rho 35120 * rho 35120 + rho 35119 * rho 35119 * (-1)) = 2 * (rho 35119 * rho 35120) := by
      rw [hd0, hd1, hd2]
      linear_combination r3860
    have hd4 : rho 35133 * (2 - (rho 35120 * rho 35120 + rho 35119 * rho 35119 * (-1))) = rho 35120 * rho 35120 - rho 35119 * rho 35119 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3861
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX68 rho : Seg34.F), (seg34AccY68 rho : Seg34.F)⟩
      ⟨(rho 35119 : Seg34.F), (rho 35120 : Seg34.F)⟩
      ⟨(rho 35125 : Seg34.F), (rho 35126 : Seg34.F)⟩
      ⟨(seg34AccX69 rho : Seg34.F), (seg34AccY69 rho : Seg34.F)⟩
      ⟨(rho 35132 : Seg34.F), (rho 35133 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung68

theorem seg34_rung69 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34061 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX69 rho : Seg34.F), (seg34AccY69 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35132 : Seg34.F), (rho 35133 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX69 rho : Seg34.F), (seg34AccY69 rho : Seg34.F)⟩
        ⟨(rho 35132 : Seg34.F), (rho 35133 : Seg34.F)⟩
        ⟨(seg34AccX70 rho : Seg34.F), (seg34AccY70 rho : Seg34.F)⟩
        ⟨(rho 35145 : Seg34.F), (rho 35146 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart48 at p48
  rcases p48 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3862, r3863, r3864, r3865, r3866, r3867, r3868, r3869, r3870, r3871, r3872, r3873, r3874, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow3862 Seg34.relationLc380 Seg34.relationLc380Part0 Seg34.relationLc380Part1 Seg34.relationLc380Part2 Seg34.relationLc380Part3 Seg34.relationLc380Part4 at r3862
  unfold Seg34.relationRow3863 Seg34.relationLc381 Seg34.relationLc381Part0 Seg34.relationLc381Part1 Seg34.relationLc381Part2 at r3863
  unfold Seg34.relationRow3864 Seg34.relationLc382 Seg34.relationLc382Part0 Seg34.relationLc382Part1 Seg34.relationLc382Part2 at r3864
  unfold Seg34.relationRow3865 at r3865
  unfold Seg34.relationRow3866 at r3866
  unfold Seg34.relationRow3867 at r3867
  unfold Seg34.relationRow3868 Seg34.relationLc383 Seg34.relationLc383Part0 Seg34.relationLc383Part1 Seg34.relationLc383Part2 at r3868
  unfold Seg34.relationRow3869 Seg34.relationLc384 Seg34.relationLc384Part0 Seg34.relationLc384Part1 Seg34.relationLc384Part2 at r3869
  unfold Seg34.relationRow3870 at r3870
  unfold Seg34.relationRow3871 at r3871
  unfold Seg34.relationRow3872 at r3872
  unfold Seg34.relationRow3873 at r3873
  unfold Seg34.relationRow3874 at r3874
  have hrung69 (bit : Bool) (hbit : rho 34061 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX69 rho : Seg34.F), (seg34AccY69 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35132 : Seg34.F), (rho 35133 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX69 rho : Seg34.F), (seg34AccY69 rho : Seg34.F)⟩
        ⟨(rho 35132 : Seg34.F), (rho 35133 : Seg34.F)⟩
        ⟨(seg34AccX70 rho : Seg34.F), (seg34AccY70 rho : Seg34.F)⟩
        ⟨(rho 35145 : Seg34.F), (rho 35146 : Seg34.F)⟩ := by
    have ha0 : (rho 35132 + rho 35133) * (seg34AccX69 rho + seg34AccY69 rho) = rho 35134 := by
      rw [seg34LadderFlatX69_eq, seg34LadderFlatY69_eq]
      unfold seg34LadderFlatX69 seg34LadderFlatY69
      linear_combination r3862
    have ha1 : rho 35133 * seg34AccX69 rho = rho 35135 := by
      rw [seg34LadderFlatX69_eq]
      unfold seg34LadderFlatX69
      linear_combination r3863
    have ha2 : rho 35132 * seg34AccY69 rho = rho 35136 := by
      rw [seg34LadderFlatY69_eq]
      unfold seg34LadderFlatY69
      linear_combination r3864
    have ha3 : 3021 * rho 35135 * rho 35136 = rho 35137 := by
      linear_combination r3865
    have ha4 : rho 35138 * (1 + rho 35137) = rho 35135 + rho 35136 := by
      linear_combination r3866
    have ha5 : rho 35139 * (1 - rho 35137) = rho 35134 - rho 35135 - rho 35136 := by
      linear_combination r3867
    have haddx :
        rho 35138 * (1 + 3021 * (rho 35133 * seg34AccX69 rho) * (rho 35132 * seg34AccY69 rho)) =
          rho 35133 * seg34AccX69 rho + rho 35132 * seg34AccY69 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35139 * (1 - 3021 * (rho 35133 * seg34AccX69 rho) * (rho 35132 * seg34AccY69 rho)) =
          (-1) * (rho 35133 * seg34AccX69 rho) - rho 35132 * seg34AccY69 rho +
            (seg34AccY69 rho - seg34AccX69 rho * (-1)) * (rho 35132 + rho 35133) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35139 * (1 - rho 35137) = rho 35134 - rho 35135 - rho 35136 := ha5
        _ = (-1) * rho 35135 - rho 35136 + (seg34AccY69 rho - seg34AccX69 rho * (-1)) * (rho 35132 + rho 35133) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX70 rho = seg34AccX69 rho - Bool.toZMod bit * (seg34AccX69 rho - rho 35138) := by
      have hd : rho 35140 = Bool.toZMod bit * (rho 35138 - seg34AccX69 rho) := by
        rw [← hbit, seg34LadderFlatX69_eq]
        unfold seg34LadderFlatX69
        linear_combination -r3868
      unfold seg34AccX70
      linear_combination hd
    have hsely : seg34AccY70 rho = seg34AccY69 rho - Bool.toZMod bit * (seg34AccY69 rho - rho 35139) := by
      have hd : rho 35141 = Bool.toZMod bit * (rho 35139 - seg34AccY69 rho) := by
        rw [← hbit, seg34LadderFlatY69_eq]
        unfold seg34LadderFlatY69
        linear_combination -r3869
      unfold seg34AccY70
      linear_combination hd
    have hd0 : rho 35132 * rho 35133 = rho 35142 := by linear_combination r3870
    have hd1 : rho 35132 * rho 35132 = rho 35143 := by linear_combination r3871
    have hd2 : rho 35133 * rho 35133 = rho 35144 := by linear_combination r3872
    have hd3 : rho 35145 * (rho 35133 * rho 35133 + rho 35132 * rho 35132 * (-1)) = 2 * (rho 35132 * rho 35133) := by
      rw [hd0, hd1, hd2]
      linear_combination r3873
    have hd4 : rho 35146 * (2 - (rho 35133 * rho 35133 + rho 35132 * rho 35132 * (-1))) = rho 35133 * rho 35133 - rho 35132 * rho 35132 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3874
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX69 rho : Seg34.F), (seg34AccY69 rho : Seg34.F)⟩
      ⟨(rho 35132 : Seg34.F), (rho 35133 : Seg34.F)⟩
      ⟨(rho 35138 : Seg34.F), (rho 35139 : Seg34.F)⟩
      ⟨(seg34AccX70 rho : Seg34.F), (seg34AccY70 rho : Seg34.F)⟩
      ⟨(rho 35145 : Seg34.F), (rho 35146 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung69

theorem seg34_rung70 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34062 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX70 rho : Seg34.F), (seg34AccY70 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35145 : Seg34.F), (rho 35146 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX70 rho : Seg34.F), (seg34AccY70 rho : Seg34.F)⟩
        ⟨(rho 35145 : Seg34.F), (rho 35146 : Seg34.F)⟩
        ⟨(seg34AccX71 rho : Seg34.F), (seg34AccY71 rho : Seg34.F)⟩
        ⟨(rho 35158 : Seg34.F), (rho 35159 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart48 at p48
  rcases p48 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3875, r3876, r3877, r3878, r3879, r3880, r3881, r3882, r3883, r3884, r3885, r3886, r3887, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow3875 Seg34.relationLc385 Seg34.relationLc385Part0 Seg34.relationLc385Part1 Seg34.relationLc385Part2 Seg34.relationLc385Part3 Seg34.relationLc385Part4 at r3875
  unfold Seg34.relationRow3876 Seg34.relationLc386 Seg34.relationLc386Part0 Seg34.relationLc386Part1 Seg34.relationLc386Part2 at r3876
  unfold Seg34.relationRow3877 Seg34.relationLc387 Seg34.relationLc387Part0 Seg34.relationLc387Part1 Seg34.relationLc387Part2 at r3877
  unfold Seg34.relationRow3878 at r3878
  unfold Seg34.relationRow3879 at r3879
  unfold Seg34.relationRow3880 at r3880
  unfold Seg34.relationRow3881 Seg34.relationLc388 Seg34.relationLc388Part0 Seg34.relationLc388Part1 Seg34.relationLc388Part2 at r3881
  unfold Seg34.relationRow3882 Seg34.relationLc389 Seg34.relationLc389Part0 Seg34.relationLc389Part1 Seg34.relationLc389Part2 at r3882
  unfold Seg34.relationRow3883 at r3883
  unfold Seg34.relationRow3884 at r3884
  unfold Seg34.relationRow3885 at r3885
  unfold Seg34.relationRow3886 at r3886
  unfold Seg34.relationRow3887 at r3887
  have hrung70 (bit : Bool) (hbit : rho 34062 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX70 rho : Seg34.F), (seg34AccY70 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35145 : Seg34.F), (rho 35146 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX70 rho : Seg34.F), (seg34AccY70 rho : Seg34.F)⟩
        ⟨(rho 35145 : Seg34.F), (rho 35146 : Seg34.F)⟩
        ⟨(seg34AccX71 rho : Seg34.F), (seg34AccY71 rho : Seg34.F)⟩
        ⟨(rho 35158 : Seg34.F), (rho 35159 : Seg34.F)⟩ := by
    have ha0 : (rho 35145 + rho 35146) * (seg34AccX70 rho + seg34AccY70 rho) = rho 35147 := by
      rw [seg34LadderFlatX70_eq, seg34LadderFlatY70_eq]
      unfold seg34LadderFlatX70 seg34LadderFlatY70
      linear_combination r3875
    have ha1 : rho 35146 * seg34AccX70 rho = rho 35148 := by
      rw [seg34LadderFlatX70_eq]
      unfold seg34LadderFlatX70
      linear_combination r3876
    have ha2 : rho 35145 * seg34AccY70 rho = rho 35149 := by
      rw [seg34LadderFlatY70_eq]
      unfold seg34LadderFlatY70
      linear_combination r3877
    have ha3 : 3021 * rho 35148 * rho 35149 = rho 35150 := by
      linear_combination r3878
    have ha4 : rho 35151 * (1 + rho 35150) = rho 35148 + rho 35149 := by
      linear_combination r3879
    have ha5 : rho 35152 * (1 - rho 35150) = rho 35147 - rho 35148 - rho 35149 := by
      linear_combination r3880
    have haddx :
        rho 35151 * (1 + 3021 * (rho 35146 * seg34AccX70 rho) * (rho 35145 * seg34AccY70 rho)) =
          rho 35146 * seg34AccX70 rho + rho 35145 * seg34AccY70 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35152 * (1 - 3021 * (rho 35146 * seg34AccX70 rho) * (rho 35145 * seg34AccY70 rho)) =
          (-1) * (rho 35146 * seg34AccX70 rho) - rho 35145 * seg34AccY70 rho +
            (seg34AccY70 rho - seg34AccX70 rho * (-1)) * (rho 35145 + rho 35146) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35152 * (1 - rho 35150) = rho 35147 - rho 35148 - rho 35149 := ha5
        _ = (-1) * rho 35148 - rho 35149 + (seg34AccY70 rho - seg34AccX70 rho * (-1)) * (rho 35145 + rho 35146) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX71 rho = seg34AccX70 rho - Bool.toZMod bit * (seg34AccX70 rho - rho 35151) := by
      have hd : rho 35153 = Bool.toZMod bit * (rho 35151 - seg34AccX70 rho) := by
        rw [← hbit, seg34LadderFlatX70_eq]
        unfold seg34LadderFlatX70
        linear_combination -r3881
      unfold seg34AccX71
      linear_combination hd
    have hsely : seg34AccY71 rho = seg34AccY70 rho - Bool.toZMod bit * (seg34AccY70 rho - rho 35152) := by
      have hd : rho 35154 = Bool.toZMod bit * (rho 35152 - seg34AccY70 rho) := by
        rw [← hbit, seg34LadderFlatY70_eq]
        unfold seg34LadderFlatY70
        linear_combination -r3882
      unfold seg34AccY71
      linear_combination hd
    have hd0 : rho 35145 * rho 35146 = rho 35155 := by linear_combination r3883
    have hd1 : rho 35145 * rho 35145 = rho 35156 := by linear_combination r3884
    have hd2 : rho 35146 * rho 35146 = rho 35157 := by linear_combination r3885
    have hd3 : rho 35158 * (rho 35146 * rho 35146 + rho 35145 * rho 35145 * (-1)) = 2 * (rho 35145 * rho 35146) := by
      rw [hd0, hd1, hd2]
      linear_combination r3886
    have hd4 : rho 35159 * (2 - (rho 35146 * rho 35146 + rho 35145 * rho 35145 * (-1))) = rho 35146 * rho 35146 - rho 35145 * rho 35145 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3887
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX70 rho : Seg34.F), (seg34AccY70 rho : Seg34.F)⟩
      ⟨(rho 35145 : Seg34.F), (rho 35146 : Seg34.F)⟩
      ⟨(rho 35151 : Seg34.F), (rho 35152 : Seg34.F)⟩
      ⟨(seg34AccX71 rho : Seg34.F), (seg34AccY71 rho : Seg34.F)⟩
      ⟨(rho 35158 : Seg34.F), (rho 35159 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung70

theorem seg34_rung71 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34063 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX71 rho : Seg34.F), (seg34AccY71 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35158 : Seg34.F), (rho 35159 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX71 rho : Seg34.F), (seg34AccY71 rho : Seg34.F)⟩
        ⟨(rho 35158 : Seg34.F), (rho 35159 : Seg34.F)⟩
        ⟨(seg34AccX72 rho : Seg34.F), (seg34AccY72 rho : Seg34.F)⟩
        ⟨(rho 35171 : Seg34.F), (rho 35172 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart48 at p48
  rcases p48 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3888, r3889, r3890, r3891, r3892, r3893, r3894, r3895, r3896, r3897, r3898, r3899, r3900, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow3888 Seg34.relationLc390 Seg34.relationLc390Part0 Seg34.relationLc390Part1 Seg34.relationLc390Part2 Seg34.relationLc390Part3 Seg34.relationLc390Part4 at r3888
  unfold Seg34.relationRow3889 Seg34.relationLc391 Seg34.relationLc391Part0 Seg34.relationLc391Part1 Seg34.relationLc391Part2 at r3889
  unfold Seg34.relationRow3890 Seg34.relationLc392 Seg34.relationLc392Part0 Seg34.relationLc392Part1 Seg34.relationLc392Part2 at r3890
  unfold Seg34.relationRow3891 at r3891
  unfold Seg34.relationRow3892 at r3892
  unfold Seg34.relationRow3893 at r3893
  unfold Seg34.relationRow3894 Seg34.relationLc393 Seg34.relationLc393Part0 Seg34.relationLc393Part1 Seg34.relationLc393Part2 at r3894
  unfold Seg34.relationRow3895 Seg34.relationLc394 Seg34.relationLc394Part0 Seg34.relationLc394Part1 Seg34.relationLc394Part2 at r3895
  unfold Seg34.relationRow3896 at r3896
  unfold Seg34.relationRow3897 at r3897
  unfold Seg34.relationRow3898 at r3898
  unfold Seg34.relationRow3899 at r3899
  unfold Seg34.relationRow3900 at r3900
  have hrung71 (bit : Bool) (hbit : rho 34063 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX71 rho : Seg34.F), (seg34AccY71 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35158 : Seg34.F), (rho 35159 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX71 rho : Seg34.F), (seg34AccY71 rho : Seg34.F)⟩
        ⟨(rho 35158 : Seg34.F), (rho 35159 : Seg34.F)⟩
        ⟨(seg34AccX72 rho : Seg34.F), (seg34AccY72 rho : Seg34.F)⟩
        ⟨(rho 35171 : Seg34.F), (rho 35172 : Seg34.F)⟩ := by
    have ha0 : (rho 35158 + rho 35159) * (seg34AccX71 rho + seg34AccY71 rho) = rho 35160 := by
      rw [seg34LadderFlatX71_eq, seg34LadderFlatY71_eq]
      unfold seg34LadderFlatX71 seg34LadderFlatY71
      linear_combination r3888
    have ha1 : rho 35159 * seg34AccX71 rho = rho 35161 := by
      rw [seg34LadderFlatX71_eq]
      unfold seg34LadderFlatX71
      linear_combination r3889
    have ha2 : rho 35158 * seg34AccY71 rho = rho 35162 := by
      rw [seg34LadderFlatY71_eq]
      unfold seg34LadderFlatY71
      linear_combination r3890
    have ha3 : 3021 * rho 35161 * rho 35162 = rho 35163 := by
      linear_combination r3891
    have ha4 : rho 35164 * (1 + rho 35163) = rho 35161 + rho 35162 := by
      linear_combination r3892
    have ha5 : rho 35165 * (1 - rho 35163) = rho 35160 - rho 35161 - rho 35162 := by
      linear_combination r3893
    have haddx :
        rho 35164 * (1 + 3021 * (rho 35159 * seg34AccX71 rho) * (rho 35158 * seg34AccY71 rho)) =
          rho 35159 * seg34AccX71 rho + rho 35158 * seg34AccY71 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35165 * (1 - 3021 * (rho 35159 * seg34AccX71 rho) * (rho 35158 * seg34AccY71 rho)) =
          (-1) * (rho 35159 * seg34AccX71 rho) - rho 35158 * seg34AccY71 rho +
            (seg34AccY71 rho - seg34AccX71 rho * (-1)) * (rho 35158 + rho 35159) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35165 * (1 - rho 35163) = rho 35160 - rho 35161 - rho 35162 := ha5
        _ = (-1) * rho 35161 - rho 35162 + (seg34AccY71 rho - seg34AccX71 rho * (-1)) * (rho 35158 + rho 35159) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX72 rho = seg34AccX71 rho - Bool.toZMod bit * (seg34AccX71 rho - rho 35164) := by
      have hd : rho 35166 = Bool.toZMod bit * (rho 35164 - seg34AccX71 rho) := by
        rw [← hbit, seg34LadderFlatX71_eq]
        unfold seg34LadderFlatX71
        linear_combination -r3894
      unfold seg34AccX72
      linear_combination hd
    have hsely : seg34AccY72 rho = seg34AccY71 rho - Bool.toZMod bit * (seg34AccY71 rho - rho 35165) := by
      have hd : rho 35167 = Bool.toZMod bit * (rho 35165 - seg34AccY71 rho) := by
        rw [← hbit, seg34LadderFlatY71_eq]
        unfold seg34LadderFlatY71
        linear_combination -r3895
      unfold seg34AccY72
      linear_combination hd
    have hd0 : rho 35158 * rho 35159 = rho 35168 := by linear_combination r3896
    have hd1 : rho 35158 * rho 35158 = rho 35169 := by linear_combination r3897
    have hd2 : rho 35159 * rho 35159 = rho 35170 := by linear_combination r3898
    have hd3 : rho 35171 * (rho 35159 * rho 35159 + rho 35158 * rho 35158 * (-1)) = 2 * (rho 35158 * rho 35159) := by
      rw [hd0, hd1, hd2]
      linear_combination r3899
    have hd4 : rho 35172 * (2 - (rho 35159 * rho 35159 + rho 35158 * rho 35158 * (-1))) = rho 35159 * rho 35159 - rho 35158 * rho 35158 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3900
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX71 rho : Seg34.F), (seg34AccY71 rho : Seg34.F)⟩
      ⟨(rho 35158 : Seg34.F), (rho 35159 : Seg34.F)⟩
      ⟨(rho 35164 : Seg34.F), (rho 35165 : Seg34.F)⟩
      ⟨(seg34AccX72 rho : Seg34.F), (seg34AccY72 rho : Seg34.F)⟩
      ⟨(rho 35171 : Seg34.F), (rho 35172 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung71

theorem seg34_rung72 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34064 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX72 rho : Seg34.F), (seg34AccY72 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35171 : Seg34.F), (rho 35172 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX72 rho : Seg34.F), (seg34AccY72 rho : Seg34.F)⟩
        ⟨(rho 35171 : Seg34.F), (rho 35172 : Seg34.F)⟩
        ⟨(seg34AccX73 rho : Seg34.F), (seg34AccY73 rho : Seg34.F)⟩
        ⟨(rho 35184 : Seg34.F), (rho 35185 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart48 at p48
  rcases p48 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3901, r3902, r3903, r3904, r3905, r3906, r3907, r3908, r3909, r3910, r3911, r3912, r3913, _, _, _, _, _, _⟩
  unfold Seg34.relationRow3901 Seg34.relationLc395 Seg34.relationLc395Part0 Seg34.relationLc395Part1 Seg34.relationLc395Part2 Seg34.relationLc395Part3 Seg34.relationLc395Part4 at r3901
  unfold Seg34.relationRow3902 Seg34.relationLc396 Seg34.relationLc396Part0 Seg34.relationLc396Part1 Seg34.relationLc396Part2 at r3902
  unfold Seg34.relationRow3903 Seg34.relationLc397 Seg34.relationLc397Part0 Seg34.relationLc397Part1 Seg34.relationLc397Part2 at r3903
  unfold Seg34.relationRow3904 at r3904
  unfold Seg34.relationRow3905 at r3905
  unfold Seg34.relationRow3906 at r3906
  unfold Seg34.relationRow3907 Seg34.relationLc398 Seg34.relationLc398Part0 Seg34.relationLc398Part1 Seg34.relationLc398Part2 at r3907
  unfold Seg34.relationRow3908 Seg34.relationLc399 Seg34.relationLc399Part0 Seg34.relationLc399Part1 Seg34.relationLc399Part2 at r3908
  unfold Seg34.relationRow3909 at r3909
  unfold Seg34.relationRow3910 at r3910
  unfold Seg34.relationRow3911 at r3911
  unfold Seg34.relationRow3912 at r3912
  unfold Seg34.relationRow3913 at r3913
  have hrung72 (bit : Bool) (hbit : rho 34064 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX72 rho : Seg34.F), (seg34AccY72 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35171 : Seg34.F), (rho 35172 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX72 rho : Seg34.F), (seg34AccY72 rho : Seg34.F)⟩
        ⟨(rho 35171 : Seg34.F), (rho 35172 : Seg34.F)⟩
        ⟨(seg34AccX73 rho : Seg34.F), (seg34AccY73 rho : Seg34.F)⟩
        ⟨(rho 35184 : Seg34.F), (rho 35185 : Seg34.F)⟩ := by
    have ha0 : (rho 35171 + rho 35172) * (seg34AccX72 rho + seg34AccY72 rho) = rho 35173 := by
      rw [seg34LadderFlatX72_eq, seg34LadderFlatY72_eq]
      unfold seg34LadderFlatX72 seg34LadderFlatY72
      linear_combination r3901
    have ha1 : rho 35172 * seg34AccX72 rho = rho 35174 := by
      rw [seg34LadderFlatX72_eq]
      unfold seg34LadderFlatX72
      linear_combination r3902
    have ha2 : rho 35171 * seg34AccY72 rho = rho 35175 := by
      rw [seg34LadderFlatY72_eq]
      unfold seg34LadderFlatY72
      linear_combination r3903
    have ha3 : 3021 * rho 35174 * rho 35175 = rho 35176 := by
      linear_combination r3904
    have ha4 : rho 35177 * (1 + rho 35176) = rho 35174 + rho 35175 := by
      linear_combination r3905
    have ha5 : rho 35178 * (1 - rho 35176) = rho 35173 - rho 35174 - rho 35175 := by
      linear_combination r3906
    have haddx :
        rho 35177 * (1 + 3021 * (rho 35172 * seg34AccX72 rho) * (rho 35171 * seg34AccY72 rho)) =
          rho 35172 * seg34AccX72 rho + rho 35171 * seg34AccY72 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35178 * (1 - 3021 * (rho 35172 * seg34AccX72 rho) * (rho 35171 * seg34AccY72 rho)) =
          (-1) * (rho 35172 * seg34AccX72 rho) - rho 35171 * seg34AccY72 rho +
            (seg34AccY72 rho - seg34AccX72 rho * (-1)) * (rho 35171 + rho 35172) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35178 * (1 - rho 35176) = rho 35173 - rho 35174 - rho 35175 := ha5
        _ = (-1) * rho 35174 - rho 35175 + (seg34AccY72 rho - seg34AccX72 rho * (-1)) * (rho 35171 + rho 35172) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX73 rho = seg34AccX72 rho - Bool.toZMod bit * (seg34AccX72 rho - rho 35177) := by
      have hd : rho 35179 = Bool.toZMod bit * (rho 35177 - seg34AccX72 rho) := by
        rw [← hbit, seg34LadderFlatX72_eq]
        unfold seg34LadderFlatX72
        linear_combination -r3907
      unfold seg34AccX73
      linear_combination hd
    have hsely : seg34AccY73 rho = seg34AccY72 rho - Bool.toZMod bit * (seg34AccY72 rho - rho 35178) := by
      have hd : rho 35180 = Bool.toZMod bit * (rho 35178 - seg34AccY72 rho) := by
        rw [← hbit, seg34LadderFlatY72_eq]
        unfold seg34LadderFlatY72
        linear_combination -r3908
      unfold seg34AccY73
      linear_combination hd
    have hd0 : rho 35171 * rho 35172 = rho 35181 := by linear_combination r3909
    have hd1 : rho 35171 * rho 35171 = rho 35182 := by linear_combination r3910
    have hd2 : rho 35172 * rho 35172 = rho 35183 := by linear_combination r3911
    have hd3 : rho 35184 * (rho 35172 * rho 35172 + rho 35171 * rho 35171 * (-1)) = 2 * (rho 35171 * rho 35172) := by
      rw [hd0, hd1, hd2]
      linear_combination r3912
    have hd4 : rho 35185 * (2 - (rho 35172 * rho 35172 + rho 35171 * rho 35171 * (-1))) = rho 35172 * rho 35172 - rho 35171 * rho 35171 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3913
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX72 rho : Seg34.F), (seg34AccY72 rho : Seg34.F)⟩
      ⟨(rho 35171 : Seg34.F), (rho 35172 : Seg34.F)⟩
      ⟨(rho 35177 : Seg34.F), (rho 35178 : Seg34.F)⟩
      ⟨(seg34AccX73 rho : Seg34.F), (seg34AccY73 rho : Seg34.F)⟩
      ⟨(rho 35184 : Seg34.F), (rho 35185 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung72

theorem seg34_rung73 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34065 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX73 rho : Seg34.F), (seg34AccY73 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35184 : Seg34.F), (rho 35185 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX73 rho : Seg34.F), (seg34AccY73 rho : Seg34.F)⟩
        ⟨(rho 35184 : Seg34.F), (rho 35185 : Seg34.F)⟩
        ⟨(seg34AccX74 rho : Seg34.F), (seg34AccY74 rho : Seg34.F)⟩
        ⟨(rho 35197 : Seg34.F), (rho 35198 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart48 at p48
  rcases p48 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3914, r3915, r3916, r3917, r3918, r3919⟩
  unfold Seg34.relationPart49 at p49
  rcases p49 with ⟨r3920, r3921, r3922, r3923, r3924, r3925, r3926, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow3914 Seg34.relationLc400 Seg34.relationLc400Part0 Seg34.relationLc400Part1 Seg34.relationLc400Part2 Seg34.relationLc400Part3 Seg34.relationLc400Part4 at r3914
  unfold Seg34.relationRow3915 Seg34.relationLc401 Seg34.relationLc401Part0 Seg34.relationLc401Part1 Seg34.relationLc401Part2 at r3915
  unfold Seg34.relationRow3916 Seg34.relationLc402 Seg34.relationLc402Part0 Seg34.relationLc402Part1 Seg34.relationLc402Part2 at r3916
  unfold Seg34.relationRow3917 at r3917
  unfold Seg34.relationRow3918 at r3918
  unfold Seg34.relationRow3919 at r3919
  unfold Seg34.relationRow3920 Seg34.relationLc403 Seg34.relationLc403Part0 Seg34.relationLc403Part1 Seg34.relationLc403Part2 at r3920
  unfold Seg34.relationRow3921 Seg34.relationLc404 Seg34.relationLc404Part0 Seg34.relationLc404Part1 Seg34.relationLc404Part2 at r3921
  unfold Seg34.relationRow3922 at r3922
  unfold Seg34.relationRow3923 at r3923
  unfold Seg34.relationRow3924 at r3924
  unfold Seg34.relationRow3925 at r3925
  unfold Seg34.relationRow3926 at r3926
  have hrung73 (bit : Bool) (hbit : rho 34065 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX73 rho : Seg34.F), (seg34AccY73 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35184 : Seg34.F), (rho 35185 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX73 rho : Seg34.F), (seg34AccY73 rho : Seg34.F)⟩
        ⟨(rho 35184 : Seg34.F), (rho 35185 : Seg34.F)⟩
        ⟨(seg34AccX74 rho : Seg34.F), (seg34AccY74 rho : Seg34.F)⟩
        ⟨(rho 35197 : Seg34.F), (rho 35198 : Seg34.F)⟩ := by
    have ha0 : (rho 35184 + rho 35185) * (seg34AccX73 rho + seg34AccY73 rho) = rho 35186 := by
      rw [seg34LadderFlatX73_eq, seg34LadderFlatY73_eq]
      unfold seg34LadderFlatX73 seg34LadderFlatY73
      linear_combination r3914
    have ha1 : rho 35185 * seg34AccX73 rho = rho 35187 := by
      rw [seg34LadderFlatX73_eq]
      unfold seg34LadderFlatX73
      linear_combination r3915
    have ha2 : rho 35184 * seg34AccY73 rho = rho 35188 := by
      rw [seg34LadderFlatY73_eq]
      unfold seg34LadderFlatY73
      linear_combination r3916
    have ha3 : 3021 * rho 35187 * rho 35188 = rho 35189 := by
      linear_combination r3917
    have ha4 : rho 35190 * (1 + rho 35189) = rho 35187 + rho 35188 := by
      linear_combination r3918
    have ha5 : rho 35191 * (1 - rho 35189) = rho 35186 - rho 35187 - rho 35188 := by
      linear_combination r3919
    have haddx :
        rho 35190 * (1 + 3021 * (rho 35185 * seg34AccX73 rho) * (rho 35184 * seg34AccY73 rho)) =
          rho 35185 * seg34AccX73 rho + rho 35184 * seg34AccY73 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35191 * (1 - 3021 * (rho 35185 * seg34AccX73 rho) * (rho 35184 * seg34AccY73 rho)) =
          (-1) * (rho 35185 * seg34AccX73 rho) - rho 35184 * seg34AccY73 rho +
            (seg34AccY73 rho - seg34AccX73 rho * (-1)) * (rho 35184 + rho 35185) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35191 * (1 - rho 35189) = rho 35186 - rho 35187 - rho 35188 := ha5
        _ = (-1) * rho 35187 - rho 35188 + (seg34AccY73 rho - seg34AccX73 rho * (-1)) * (rho 35184 + rho 35185) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX74 rho = seg34AccX73 rho - Bool.toZMod bit * (seg34AccX73 rho - rho 35190) := by
      have hd : rho 35192 = Bool.toZMod bit * (rho 35190 - seg34AccX73 rho) := by
        rw [← hbit, seg34LadderFlatX73_eq]
        unfold seg34LadderFlatX73
        linear_combination -r3920
      unfold seg34AccX74
      linear_combination hd
    have hsely : seg34AccY74 rho = seg34AccY73 rho - Bool.toZMod bit * (seg34AccY73 rho - rho 35191) := by
      have hd : rho 35193 = Bool.toZMod bit * (rho 35191 - seg34AccY73 rho) := by
        rw [← hbit, seg34LadderFlatY73_eq]
        unfold seg34LadderFlatY73
        linear_combination -r3921
      unfold seg34AccY74
      linear_combination hd
    have hd0 : rho 35184 * rho 35185 = rho 35194 := by linear_combination r3922
    have hd1 : rho 35184 * rho 35184 = rho 35195 := by linear_combination r3923
    have hd2 : rho 35185 * rho 35185 = rho 35196 := by linear_combination r3924
    have hd3 : rho 35197 * (rho 35185 * rho 35185 + rho 35184 * rho 35184 * (-1)) = 2 * (rho 35184 * rho 35185) := by
      rw [hd0, hd1, hd2]
      linear_combination r3925
    have hd4 : rho 35198 * (2 - (rho 35185 * rho 35185 + rho 35184 * rho 35184 * (-1))) = rho 35185 * rho 35185 - rho 35184 * rho 35184 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3926
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX73 rho : Seg34.F), (seg34AccY73 rho : Seg34.F)⟩
      ⟨(rho 35184 : Seg34.F), (rho 35185 : Seg34.F)⟩
      ⟨(rho 35190 : Seg34.F), (rho 35191 : Seg34.F)⟩
      ⟨(seg34AccX74 rho : Seg34.F), (seg34AccY74 rho : Seg34.F)⟩
      ⟨(rho 35197 : Seg34.F), (rho 35198 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung73

theorem seg34_rung74 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34066 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX74 rho : Seg34.F), (seg34AccY74 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35197 : Seg34.F), (rho 35198 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX74 rho : Seg34.F), (seg34AccY74 rho : Seg34.F)⟩
        ⟨(rho 35197 : Seg34.F), (rho 35198 : Seg34.F)⟩
        ⟨(seg34AccX75 rho : Seg34.F), (seg34AccY75 rho : Seg34.F)⟩
        ⟨(rho 35210 : Seg34.F), (rho 35211 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart49 at p49
  rcases p49 with ⟨_, _, _, _, _, _, _, r3927, r3928, r3929, r3930, r3931, r3932, r3933, r3934, r3935, r3936, r3937, r3938, r3939, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow3927 Seg34.relationLc405 Seg34.relationLc405Part0 Seg34.relationLc405Part1 Seg34.relationLc405Part2 Seg34.relationLc405Part3 Seg34.relationLc405Part4 at r3927
  unfold Seg34.relationRow3928 Seg34.relationLc406 Seg34.relationLc406Part0 Seg34.relationLc406Part1 Seg34.relationLc406Part2 at r3928
  unfold Seg34.relationRow3929 Seg34.relationLc407 Seg34.relationLc407Part0 Seg34.relationLc407Part1 Seg34.relationLc407Part2 at r3929
  unfold Seg34.relationRow3930 at r3930
  unfold Seg34.relationRow3931 at r3931
  unfold Seg34.relationRow3932 at r3932
  unfold Seg34.relationRow3933 Seg34.relationLc408 Seg34.relationLc408Part0 Seg34.relationLc408Part1 Seg34.relationLc408Part2 at r3933
  unfold Seg34.relationRow3934 Seg34.relationLc409 Seg34.relationLc409Part0 Seg34.relationLc409Part1 Seg34.relationLc409Part2 at r3934
  unfold Seg34.relationRow3935 at r3935
  unfold Seg34.relationRow3936 at r3936
  unfold Seg34.relationRow3937 at r3937
  unfold Seg34.relationRow3938 at r3938
  unfold Seg34.relationRow3939 at r3939
  have hrung74 (bit : Bool) (hbit : rho 34066 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX74 rho : Seg34.F), (seg34AccY74 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35197 : Seg34.F), (rho 35198 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX74 rho : Seg34.F), (seg34AccY74 rho : Seg34.F)⟩
        ⟨(rho 35197 : Seg34.F), (rho 35198 : Seg34.F)⟩
        ⟨(seg34AccX75 rho : Seg34.F), (seg34AccY75 rho : Seg34.F)⟩
        ⟨(rho 35210 : Seg34.F), (rho 35211 : Seg34.F)⟩ := by
    have ha0 : (rho 35197 + rho 35198) * (seg34AccX74 rho + seg34AccY74 rho) = rho 35199 := by
      rw [seg34LadderFlatX74_eq, seg34LadderFlatY74_eq]
      unfold seg34LadderFlatX74 seg34LadderFlatY74
      linear_combination r3927
    have ha1 : rho 35198 * seg34AccX74 rho = rho 35200 := by
      rw [seg34LadderFlatX74_eq]
      unfold seg34LadderFlatX74
      linear_combination r3928
    have ha2 : rho 35197 * seg34AccY74 rho = rho 35201 := by
      rw [seg34LadderFlatY74_eq]
      unfold seg34LadderFlatY74
      linear_combination r3929
    have ha3 : 3021 * rho 35200 * rho 35201 = rho 35202 := by
      linear_combination r3930
    have ha4 : rho 35203 * (1 + rho 35202) = rho 35200 + rho 35201 := by
      linear_combination r3931
    have ha5 : rho 35204 * (1 - rho 35202) = rho 35199 - rho 35200 - rho 35201 := by
      linear_combination r3932
    have haddx :
        rho 35203 * (1 + 3021 * (rho 35198 * seg34AccX74 rho) * (rho 35197 * seg34AccY74 rho)) =
          rho 35198 * seg34AccX74 rho + rho 35197 * seg34AccY74 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35204 * (1 - 3021 * (rho 35198 * seg34AccX74 rho) * (rho 35197 * seg34AccY74 rho)) =
          (-1) * (rho 35198 * seg34AccX74 rho) - rho 35197 * seg34AccY74 rho +
            (seg34AccY74 rho - seg34AccX74 rho * (-1)) * (rho 35197 + rho 35198) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35204 * (1 - rho 35202) = rho 35199 - rho 35200 - rho 35201 := ha5
        _ = (-1) * rho 35200 - rho 35201 + (seg34AccY74 rho - seg34AccX74 rho * (-1)) * (rho 35197 + rho 35198) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX75 rho = seg34AccX74 rho - Bool.toZMod bit * (seg34AccX74 rho - rho 35203) := by
      have hd : rho 35205 = Bool.toZMod bit * (rho 35203 - seg34AccX74 rho) := by
        rw [← hbit, seg34LadderFlatX74_eq]
        unfold seg34LadderFlatX74
        linear_combination -r3933
      unfold seg34AccX75
      linear_combination hd
    have hsely : seg34AccY75 rho = seg34AccY74 rho - Bool.toZMod bit * (seg34AccY74 rho - rho 35204) := by
      have hd : rho 35206 = Bool.toZMod bit * (rho 35204 - seg34AccY74 rho) := by
        rw [← hbit, seg34LadderFlatY74_eq]
        unfold seg34LadderFlatY74
        linear_combination -r3934
      unfold seg34AccY75
      linear_combination hd
    have hd0 : rho 35197 * rho 35198 = rho 35207 := by linear_combination r3935
    have hd1 : rho 35197 * rho 35197 = rho 35208 := by linear_combination r3936
    have hd2 : rho 35198 * rho 35198 = rho 35209 := by linear_combination r3937
    have hd3 : rho 35210 * (rho 35198 * rho 35198 + rho 35197 * rho 35197 * (-1)) = 2 * (rho 35197 * rho 35198) := by
      rw [hd0, hd1, hd2]
      linear_combination r3938
    have hd4 : rho 35211 * (2 - (rho 35198 * rho 35198 + rho 35197 * rho 35197 * (-1))) = rho 35198 * rho 35198 - rho 35197 * rho 35197 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3939
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX74 rho : Seg34.F), (seg34AccY74 rho : Seg34.F)⟩
      ⟨(rho 35197 : Seg34.F), (rho 35198 : Seg34.F)⟩
      ⟨(rho 35203 : Seg34.F), (rho 35204 : Seg34.F)⟩
      ⟨(seg34AccX75 rho : Seg34.F), (seg34AccY75 rho : Seg34.F)⟩
      ⟨(rho 35210 : Seg34.F), (rho 35211 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung74

theorem seg34_rung75 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34067 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX75 rho : Seg34.F), (seg34AccY75 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35210 : Seg34.F), (rho 35211 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX75 rho : Seg34.F), (seg34AccY75 rho : Seg34.F)⟩
        ⟨(rho 35210 : Seg34.F), (rho 35211 : Seg34.F)⟩
        ⟨(seg34AccX76 rho : Seg34.F), (seg34AccY76 rho : Seg34.F)⟩
        ⟨(rho 35223 : Seg34.F), (rho 35224 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart49 at p49
  rcases p49 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3940, r3941, r3942, r3943, r3944, r3945, r3946, r3947, r3948, r3949, r3950, r3951, r3952, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow3940 Seg34.relationLc410 Seg34.relationLc410Part0 Seg34.relationLc410Part1 Seg34.relationLc410Part2 Seg34.relationLc410Part3 Seg34.relationLc410Part4 at r3940
  unfold Seg34.relationRow3941 Seg34.relationLc411 Seg34.relationLc411Part0 Seg34.relationLc411Part1 Seg34.relationLc411Part2 at r3941
  unfold Seg34.relationRow3942 Seg34.relationLc412 Seg34.relationLc412Part0 Seg34.relationLc412Part1 Seg34.relationLc412Part2 at r3942
  unfold Seg34.relationRow3943 at r3943
  unfold Seg34.relationRow3944 at r3944
  unfold Seg34.relationRow3945 at r3945
  unfold Seg34.relationRow3946 Seg34.relationLc413 Seg34.relationLc413Part0 Seg34.relationLc413Part1 Seg34.relationLc413Part2 at r3946
  unfold Seg34.relationRow3947 Seg34.relationLc414 Seg34.relationLc414Part0 Seg34.relationLc414Part1 Seg34.relationLc414Part2 at r3947
  unfold Seg34.relationRow3948 at r3948
  unfold Seg34.relationRow3949 at r3949
  unfold Seg34.relationRow3950 at r3950
  unfold Seg34.relationRow3951 at r3951
  unfold Seg34.relationRow3952 at r3952
  have hrung75 (bit : Bool) (hbit : rho 34067 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX75 rho : Seg34.F), (seg34AccY75 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35210 : Seg34.F), (rho 35211 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX75 rho : Seg34.F), (seg34AccY75 rho : Seg34.F)⟩
        ⟨(rho 35210 : Seg34.F), (rho 35211 : Seg34.F)⟩
        ⟨(seg34AccX76 rho : Seg34.F), (seg34AccY76 rho : Seg34.F)⟩
        ⟨(rho 35223 : Seg34.F), (rho 35224 : Seg34.F)⟩ := by
    have ha0 : (rho 35210 + rho 35211) * (seg34AccX75 rho + seg34AccY75 rho) = rho 35212 := by
      rw [seg34LadderFlatX75_eq, seg34LadderFlatY75_eq]
      unfold seg34LadderFlatX75 seg34LadderFlatY75
      linear_combination r3940
    have ha1 : rho 35211 * seg34AccX75 rho = rho 35213 := by
      rw [seg34LadderFlatX75_eq]
      unfold seg34LadderFlatX75
      linear_combination r3941
    have ha2 : rho 35210 * seg34AccY75 rho = rho 35214 := by
      rw [seg34LadderFlatY75_eq]
      unfold seg34LadderFlatY75
      linear_combination r3942
    have ha3 : 3021 * rho 35213 * rho 35214 = rho 35215 := by
      linear_combination r3943
    have ha4 : rho 35216 * (1 + rho 35215) = rho 35213 + rho 35214 := by
      linear_combination r3944
    have ha5 : rho 35217 * (1 - rho 35215) = rho 35212 - rho 35213 - rho 35214 := by
      linear_combination r3945
    have haddx :
        rho 35216 * (1 + 3021 * (rho 35211 * seg34AccX75 rho) * (rho 35210 * seg34AccY75 rho)) =
          rho 35211 * seg34AccX75 rho + rho 35210 * seg34AccY75 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35217 * (1 - 3021 * (rho 35211 * seg34AccX75 rho) * (rho 35210 * seg34AccY75 rho)) =
          (-1) * (rho 35211 * seg34AccX75 rho) - rho 35210 * seg34AccY75 rho +
            (seg34AccY75 rho - seg34AccX75 rho * (-1)) * (rho 35210 + rho 35211) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35217 * (1 - rho 35215) = rho 35212 - rho 35213 - rho 35214 := ha5
        _ = (-1) * rho 35213 - rho 35214 + (seg34AccY75 rho - seg34AccX75 rho * (-1)) * (rho 35210 + rho 35211) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX76 rho = seg34AccX75 rho - Bool.toZMod bit * (seg34AccX75 rho - rho 35216) := by
      have hd : rho 35218 = Bool.toZMod bit * (rho 35216 - seg34AccX75 rho) := by
        rw [← hbit, seg34LadderFlatX75_eq]
        unfold seg34LadderFlatX75
        linear_combination -r3946
      unfold seg34AccX76
      linear_combination hd
    have hsely : seg34AccY76 rho = seg34AccY75 rho - Bool.toZMod bit * (seg34AccY75 rho - rho 35217) := by
      have hd : rho 35219 = Bool.toZMod bit * (rho 35217 - seg34AccY75 rho) := by
        rw [← hbit, seg34LadderFlatY75_eq]
        unfold seg34LadderFlatY75
        linear_combination -r3947
      unfold seg34AccY76
      linear_combination hd
    have hd0 : rho 35210 * rho 35211 = rho 35220 := by linear_combination r3948
    have hd1 : rho 35210 * rho 35210 = rho 35221 := by linear_combination r3949
    have hd2 : rho 35211 * rho 35211 = rho 35222 := by linear_combination r3950
    have hd3 : rho 35223 * (rho 35211 * rho 35211 + rho 35210 * rho 35210 * (-1)) = 2 * (rho 35210 * rho 35211) := by
      rw [hd0, hd1, hd2]
      linear_combination r3951
    have hd4 : rho 35224 * (2 - (rho 35211 * rho 35211 + rho 35210 * rho 35210 * (-1))) = rho 35211 * rho 35211 - rho 35210 * rho 35210 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3952
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX75 rho : Seg34.F), (seg34AccY75 rho : Seg34.F)⟩
      ⟨(rho 35210 : Seg34.F), (rho 35211 : Seg34.F)⟩
      ⟨(rho 35216 : Seg34.F), (rho 35217 : Seg34.F)⟩
      ⟨(seg34AccX76 rho : Seg34.F), (seg34AccY76 rho : Seg34.F)⟩
      ⟨(rho 35223 : Seg34.F), (rho 35224 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung75

theorem seg34_rung76 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34068 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX76 rho : Seg34.F), (seg34AccY76 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35223 : Seg34.F), (rho 35224 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX76 rho : Seg34.F), (seg34AccY76 rho : Seg34.F)⟩
        ⟨(rho 35223 : Seg34.F), (rho 35224 : Seg34.F)⟩
        ⟨(seg34AccX77 rho : Seg34.F), (seg34AccY77 rho : Seg34.F)⟩
        ⟨(rho 35236 : Seg34.F), (rho 35237 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart49 at p49
  rcases p49 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3953, r3954, r3955, r3956, r3957, r3958, r3959, r3960, r3961, r3962, r3963, r3964, r3965, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow3953 Seg34.relationLc415 Seg34.relationLc415Part0 Seg34.relationLc415Part1 Seg34.relationLc415Part2 Seg34.relationLc415Part3 Seg34.relationLc415Part4 at r3953
  unfold Seg34.relationRow3954 Seg34.relationLc416 Seg34.relationLc416Part0 Seg34.relationLc416Part1 Seg34.relationLc416Part2 at r3954
  unfold Seg34.relationRow3955 Seg34.relationLc417 Seg34.relationLc417Part0 Seg34.relationLc417Part1 Seg34.relationLc417Part2 at r3955
  unfold Seg34.relationRow3956 at r3956
  unfold Seg34.relationRow3957 at r3957
  unfold Seg34.relationRow3958 at r3958
  unfold Seg34.relationRow3959 Seg34.relationLc418 Seg34.relationLc418Part0 Seg34.relationLc418Part1 Seg34.relationLc418Part2 at r3959
  unfold Seg34.relationRow3960 Seg34.relationLc419 Seg34.relationLc419Part0 Seg34.relationLc419Part1 Seg34.relationLc419Part2 at r3960
  unfold Seg34.relationRow3961 at r3961
  unfold Seg34.relationRow3962 at r3962
  unfold Seg34.relationRow3963 at r3963
  unfold Seg34.relationRow3964 at r3964
  unfold Seg34.relationRow3965 at r3965
  have hrung76 (bit : Bool) (hbit : rho 34068 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX76 rho : Seg34.F), (seg34AccY76 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35223 : Seg34.F), (rho 35224 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX76 rho : Seg34.F), (seg34AccY76 rho : Seg34.F)⟩
        ⟨(rho 35223 : Seg34.F), (rho 35224 : Seg34.F)⟩
        ⟨(seg34AccX77 rho : Seg34.F), (seg34AccY77 rho : Seg34.F)⟩
        ⟨(rho 35236 : Seg34.F), (rho 35237 : Seg34.F)⟩ := by
    have ha0 : (rho 35223 + rho 35224) * (seg34AccX76 rho + seg34AccY76 rho) = rho 35225 := by
      rw [seg34LadderFlatX76_eq, seg34LadderFlatY76_eq]
      unfold seg34LadderFlatX76 seg34LadderFlatY76
      linear_combination r3953
    have ha1 : rho 35224 * seg34AccX76 rho = rho 35226 := by
      rw [seg34LadderFlatX76_eq]
      unfold seg34LadderFlatX76
      linear_combination r3954
    have ha2 : rho 35223 * seg34AccY76 rho = rho 35227 := by
      rw [seg34LadderFlatY76_eq]
      unfold seg34LadderFlatY76
      linear_combination r3955
    have ha3 : 3021 * rho 35226 * rho 35227 = rho 35228 := by
      linear_combination r3956
    have ha4 : rho 35229 * (1 + rho 35228) = rho 35226 + rho 35227 := by
      linear_combination r3957
    have ha5 : rho 35230 * (1 - rho 35228) = rho 35225 - rho 35226 - rho 35227 := by
      linear_combination r3958
    have haddx :
        rho 35229 * (1 + 3021 * (rho 35224 * seg34AccX76 rho) * (rho 35223 * seg34AccY76 rho)) =
          rho 35224 * seg34AccX76 rho + rho 35223 * seg34AccY76 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35230 * (1 - 3021 * (rho 35224 * seg34AccX76 rho) * (rho 35223 * seg34AccY76 rho)) =
          (-1) * (rho 35224 * seg34AccX76 rho) - rho 35223 * seg34AccY76 rho +
            (seg34AccY76 rho - seg34AccX76 rho * (-1)) * (rho 35223 + rho 35224) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35230 * (1 - rho 35228) = rho 35225 - rho 35226 - rho 35227 := ha5
        _ = (-1) * rho 35226 - rho 35227 + (seg34AccY76 rho - seg34AccX76 rho * (-1)) * (rho 35223 + rho 35224) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX77 rho = seg34AccX76 rho - Bool.toZMod bit * (seg34AccX76 rho - rho 35229) := by
      have hd : rho 35231 = Bool.toZMod bit * (rho 35229 - seg34AccX76 rho) := by
        rw [← hbit, seg34LadderFlatX76_eq]
        unfold seg34LadderFlatX76
        linear_combination -r3959
      unfold seg34AccX77
      linear_combination hd
    have hsely : seg34AccY77 rho = seg34AccY76 rho - Bool.toZMod bit * (seg34AccY76 rho - rho 35230) := by
      have hd : rho 35232 = Bool.toZMod bit * (rho 35230 - seg34AccY76 rho) := by
        rw [← hbit, seg34LadderFlatY76_eq]
        unfold seg34LadderFlatY76
        linear_combination -r3960
      unfold seg34AccY77
      linear_combination hd
    have hd0 : rho 35223 * rho 35224 = rho 35233 := by linear_combination r3961
    have hd1 : rho 35223 * rho 35223 = rho 35234 := by linear_combination r3962
    have hd2 : rho 35224 * rho 35224 = rho 35235 := by linear_combination r3963
    have hd3 : rho 35236 * (rho 35224 * rho 35224 + rho 35223 * rho 35223 * (-1)) = 2 * (rho 35223 * rho 35224) := by
      rw [hd0, hd1, hd2]
      linear_combination r3964
    have hd4 : rho 35237 * (2 - (rho 35224 * rho 35224 + rho 35223 * rho 35223 * (-1))) = rho 35224 * rho 35224 - rho 35223 * rho 35223 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3965
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX76 rho : Seg34.F), (seg34AccY76 rho : Seg34.F)⟩
      ⟨(rho 35223 : Seg34.F), (rho 35224 : Seg34.F)⟩
      ⟨(rho 35229 : Seg34.F), (rho 35230 : Seg34.F)⟩
      ⟨(seg34AccX77 rho : Seg34.F), (seg34AccY77 rho : Seg34.F)⟩
      ⟨(rho 35236 : Seg34.F), (rho 35237 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung76

theorem seg34_rung77 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34069 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX77 rho : Seg34.F), (seg34AccY77 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35236 : Seg34.F), (rho 35237 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX77 rho : Seg34.F), (seg34AccY77 rho : Seg34.F)⟩
        ⟨(rho 35236 : Seg34.F), (rho 35237 : Seg34.F)⟩
        ⟨(seg34AccX78 rho : Seg34.F), (seg34AccY78 rho : Seg34.F)⟩
        ⟨(rho 35249 : Seg34.F), (rho 35250 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart49 at p49
  rcases p49 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3966, r3967, r3968, r3969, r3970, r3971, r3972, r3973, r3974, r3975, r3976, r3977, r3978, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow3966 Seg34.relationLc420 Seg34.relationLc420Part0 Seg34.relationLc420Part1 Seg34.relationLc420Part2 Seg34.relationLc420Part3 Seg34.relationLc420Part4 at r3966
  unfold Seg34.relationRow3967 Seg34.relationLc421 Seg34.relationLc421Part0 Seg34.relationLc421Part1 Seg34.relationLc421Part2 at r3967
  unfold Seg34.relationRow3968 Seg34.relationLc422 Seg34.relationLc422Part0 Seg34.relationLc422Part1 Seg34.relationLc422Part2 at r3968
  unfold Seg34.relationRow3969 at r3969
  unfold Seg34.relationRow3970 at r3970
  unfold Seg34.relationRow3971 at r3971
  unfold Seg34.relationRow3972 Seg34.relationLc423 Seg34.relationLc423Part0 Seg34.relationLc423Part1 Seg34.relationLc423Part2 at r3972
  unfold Seg34.relationRow3973 Seg34.relationLc424 Seg34.relationLc424Part0 Seg34.relationLc424Part1 Seg34.relationLc424Part2 at r3973
  unfold Seg34.relationRow3974 at r3974
  unfold Seg34.relationRow3975 at r3975
  unfold Seg34.relationRow3976 at r3976
  unfold Seg34.relationRow3977 at r3977
  unfold Seg34.relationRow3978 at r3978
  have hrung77 (bit : Bool) (hbit : rho 34069 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX77 rho : Seg34.F), (seg34AccY77 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35236 : Seg34.F), (rho 35237 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX77 rho : Seg34.F), (seg34AccY77 rho : Seg34.F)⟩
        ⟨(rho 35236 : Seg34.F), (rho 35237 : Seg34.F)⟩
        ⟨(seg34AccX78 rho : Seg34.F), (seg34AccY78 rho : Seg34.F)⟩
        ⟨(rho 35249 : Seg34.F), (rho 35250 : Seg34.F)⟩ := by
    have ha0 : (rho 35236 + rho 35237) * (seg34AccX77 rho + seg34AccY77 rho) = rho 35238 := by
      rw [seg34LadderFlatX77_eq, seg34LadderFlatY77_eq]
      unfold seg34LadderFlatX77 seg34LadderFlatY77
      linear_combination r3966
    have ha1 : rho 35237 * seg34AccX77 rho = rho 35239 := by
      rw [seg34LadderFlatX77_eq]
      unfold seg34LadderFlatX77
      linear_combination r3967
    have ha2 : rho 35236 * seg34AccY77 rho = rho 35240 := by
      rw [seg34LadderFlatY77_eq]
      unfold seg34LadderFlatY77
      linear_combination r3968
    have ha3 : 3021 * rho 35239 * rho 35240 = rho 35241 := by
      linear_combination r3969
    have ha4 : rho 35242 * (1 + rho 35241) = rho 35239 + rho 35240 := by
      linear_combination r3970
    have ha5 : rho 35243 * (1 - rho 35241) = rho 35238 - rho 35239 - rho 35240 := by
      linear_combination r3971
    have haddx :
        rho 35242 * (1 + 3021 * (rho 35237 * seg34AccX77 rho) * (rho 35236 * seg34AccY77 rho)) =
          rho 35237 * seg34AccX77 rho + rho 35236 * seg34AccY77 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35243 * (1 - 3021 * (rho 35237 * seg34AccX77 rho) * (rho 35236 * seg34AccY77 rho)) =
          (-1) * (rho 35237 * seg34AccX77 rho) - rho 35236 * seg34AccY77 rho +
            (seg34AccY77 rho - seg34AccX77 rho * (-1)) * (rho 35236 + rho 35237) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35243 * (1 - rho 35241) = rho 35238 - rho 35239 - rho 35240 := ha5
        _ = (-1) * rho 35239 - rho 35240 + (seg34AccY77 rho - seg34AccX77 rho * (-1)) * (rho 35236 + rho 35237) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX78 rho = seg34AccX77 rho - Bool.toZMod bit * (seg34AccX77 rho - rho 35242) := by
      have hd : rho 35244 = Bool.toZMod bit * (rho 35242 - seg34AccX77 rho) := by
        rw [← hbit, seg34LadderFlatX77_eq]
        unfold seg34LadderFlatX77
        linear_combination -r3972
      unfold seg34AccX78
      linear_combination hd
    have hsely : seg34AccY78 rho = seg34AccY77 rho - Bool.toZMod bit * (seg34AccY77 rho - rho 35243) := by
      have hd : rho 35245 = Bool.toZMod bit * (rho 35243 - seg34AccY77 rho) := by
        rw [← hbit, seg34LadderFlatY77_eq]
        unfold seg34LadderFlatY77
        linear_combination -r3973
      unfold seg34AccY78
      linear_combination hd
    have hd0 : rho 35236 * rho 35237 = rho 35246 := by linear_combination r3974
    have hd1 : rho 35236 * rho 35236 = rho 35247 := by linear_combination r3975
    have hd2 : rho 35237 * rho 35237 = rho 35248 := by linear_combination r3976
    have hd3 : rho 35249 * (rho 35237 * rho 35237 + rho 35236 * rho 35236 * (-1)) = 2 * (rho 35236 * rho 35237) := by
      rw [hd0, hd1, hd2]
      linear_combination r3977
    have hd4 : rho 35250 * (2 - (rho 35237 * rho 35237 + rho 35236 * rho 35236 * (-1))) = rho 35237 * rho 35237 - rho 35236 * rho 35236 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3978
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX77 rho : Seg34.F), (seg34AccY77 rho : Seg34.F)⟩
      ⟨(rho 35236 : Seg34.F), (rho 35237 : Seg34.F)⟩
      ⟨(rho 35242 : Seg34.F), (rho 35243 : Seg34.F)⟩
      ⟨(seg34AccX78 rho : Seg34.F), (seg34AccY78 rho : Seg34.F)⟩
      ⟨(rho 35249 : Seg34.F), (rho 35250 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung77

theorem seg34_rung78 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34070 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX78 rho : Seg34.F), (seg34AccY78 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35249 : Seg34.F), (rho 35250 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX78 rho : Seg34.F), (seg34AccY78 rho : Seg34.F)⟩
        ⟨(rho 35249 : Seg34.F), (rho 35250 : Seg34.F)⟩
        ⟨(seg34AccX79 rho : Seg34.F), (seg34AccY79 rho : Seg34.F)⟩
        ⟨(rho 35262 : Seg34.F), (rho 35263 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart49 at p49
  rcases p49 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3979, r3980, r3981, r3982, r3983, r3984, r3985, r3986, r3987, r3988, r3989, r3990, r3991, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow3979 Seg34.relationLc425 Seg34.relationLc425Part0 Seg34.relationLc425Part1 Seg34.relationLc425Part2 Seg34.relationLc425Part3 Seg34.relationLc425Part4 at r3979
  unfold Seg34.relationRow3980 Seg34.relationLc426 Seg34.relationLc426Part0 Seg34.relationLc426Part1 Seg34.relationLc426Part2 at r3980
  unfold Seg34.relationRow3981 Seg34.relationLc427 Seg34.relationLc427Part0 Seg34.relationLc427Part1 Seg34.relationLc427Part2 at r3981
  unfold Seg34.relationRow3982 at r3982
  unfold Seg34.relationRow3983 at r3983
  unfold Seg34.relationRow3984 at r3984
  unfold Seg34.relationRow3985 Seg34.relationLc428 Seg34.relationLc428Part0 Seg34.relationLc428Part1 Seg34.relationLc428Part2 at r3985
  unfold Seg34.relationRow3986 Seg34.relationLc429 Seg34.relationLc429Part0 Seg34.relationLc429Part1 Seg34.relationLc429Part2 at r3986
  unfold Seg34.relationRow3987 at r3987
  unfold Seg34.relationRow3988 at r3988
  unfold Seg34.relationRow3989 at r3989
  unfold Seg34.relationRow3990 at r3990
  unfold Seg34.relationRow3991 at r3991
  have hrung78 (bit : Bool) (hbit : rho 34070 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX78 rho : Seg34.F), (seg34AccY78 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35249 : Seg34.F), (rho 35250 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX78 rho : Seg34.F), (seg34AccY78 rho : Seg34.F)⟩
        ⟨(rho 35249 : Seg34.F), (rho 35250 : Seg34.F)⟩
        ⟨(seg34AccX79 rho : Seg34.F), (seg34AccY79 rho : Seg34.F)⟩
        ⟨(rho 35262 : Seg34.F), (rho 35263 : Seg34.F)⟩ := by
    have ha0 : (rho 35249 + rho 35250) * (seg34AccX78 rho + seg34AccY78 rho) = rho 35251 := by
      rw [seg34LadderFlatX78_eq, seg34LadderFlatY78_eq]
      unfold seg34LadderFlatX78 seg34LadderFlatY78
      linear_combination r3979
    have ha1 : rho 35250 * seg34AccX78 rho = rho 35252 := by
      rw [seg34LadderFlatX78_eq]
      unfold seg34LadderFlatX78
      linear_combination r3980
    have ha2 : rho 35249 * seg34AccY78 rho = rho 35253 := by
      rw [seg34LadderFlatY78_eq]
      unfold seg34LadderFlatY78
      linear_combination r3981
    have ha3 : 3021 * rho 35252 * rho 35253 = rho 35254 := by
      linear_combination r3982
    have ha4 : rho 35255 * (1 + rho 35254) = rho 35252 + rho 35253 := by
      linear_combination r3983
    have ha5 : rho 35256 * (1 - rho 35254) = rho 35251 - rho 35252 - rho 35253 := by
      linear_combination r3984
    have haddx :
        rho 35255 * (1 + 3021 * (rho 35250 * seg34AccX78 rho) * (rho 35249 * seg34AccY78 rho)) =
          rho 35250 * seg34AccX78 rho + rho 35249 * seg34AccY78 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35256 * (1 - 3021 * (rho 35250 * seg34AccX78 rho) * (rho 35249 * seg34AccY78 rho)) =
          (-1) * (rho 35250 * seg34AccX78 rho) - rho 35249 * seg34AccY78 rho +
            (seg34AccY78 rho - seg34AccX78 rho * (-1)) * (rho 35249 + rho 35250) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35256 * (1 - rho 35254) = rho 35251 - rho 35252 - rho 35253 := ha5
        _ = (-1) * rho 35252 - rho 35253 + (seg34AccY78 rho - seg34AccX78 rho * (-1)) * (rho 35249 + rho 35250) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX79 rho = seg34AccX78 rho - Bool.toZMod bit * (seg34AccX78 rho - rho 35255) := by
      have hd : rho 35257 = Bool.toZMod bit * (rho 35255 - seg34AccX78 rho) := by
        rw [← hbit, seg34LadderFlatX78_eq]
        unfold seg34LadderFlatX78
        linear_combination -r3985
      unfold seg34AccX79
      linear_combination hd
    have hsely : seg34AccY79 rho = seg34AccY78 rho - Bool.toZMod bit * (seg34AccY78 rho - rho 35256) := by
      have hd : rho 35258 = Bool.toZMod bit * (rho 35256 - seg34AccY78 rho) := by
        rw [← hbit, seg34LadderFlatY78_eq]
        unfold seg34LadderFlatY78
        linear_combination -r3986
      unfold seg34AccY79
      linear_combination hd
    have hd0 : rho 35249 * rho 35250 = rho 35259 := by linear_combination r3987
    have hd1 : rho 35249 * rho 35249 = rho 35260 := by linear_combination r3988
    have hd2 : rho 35250 * rho 35250 = rho 35261 := by linear_combination r3989
    have hd3 : rho 35262 * (rho 35250 * rho 35250 + rho 35249 * rho 35249 * (-1)) = 2 * (rho 35249 * rho 35250) := by
      rw [hd0, hd1, hd2]
      linear_combination r3990
    have hd4 : rho 35263 * (2 - (rho 35250 * rho 35250 + rho 35249 * rho 35249 * (-1))) = rho 35250 * rho 35250 - rho 35249 * rho 35249 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3991
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX78 rho : Seg34.F), (seg34AccY78 rho : Seg34.F)⟩
      ⟨(rho 35249 : Seg34.F), (rho 35250 : Seg34.F)⟩
      ⟨(rho 35255 : Seg34.F), (rho 35256 : Seg34.F)⟩
      ⟨(seg34AccX79 rho : Seg34.F), (seg34AccY79 rho : Seg34.F)⟩
      ⟨(rho 35262 : Seg34.F), (rho 35263 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung78

theorem seg34_rung79 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34071 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX79 rho : Seg34.F), (seg34AccY79 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35262 : Seg34.F), (rho 35263 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX79 rho : Seg34.F), (seg34AccY79 rho : Seg34.F)⟩
        ⟨(rho 35262 : Seg34.F), (rho 35263 : Seg34.F)⟩
        ⟨(seg34AccX80 rho : Seg34.F), (seg34AccY80 rho : Seg34.F)⟩
        ⟨(rho 35275 : Seg34.F), (rho 35276 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart49 at p49
  rcases p49 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3992, r3993, r3994, r3995, r3996, r3997, r3998, r3999⟩
  unfold Seg34.relationPart50 at p50
  rcases p50 with ⟨r4000, r4001, r4002, r4003, r4004, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow3992 Seg34.relationLc430 Seg34.relationLc430Part0 Seg34.relationLc430Part1 Seg34.relationLc430Part2 Seg34.relationLc430Part3 Seg34.relationLc430Part4 at r3992
  unfold Seg34.relationRow3993 Seg34.relationLc431 Seg34.relationLc431Part0 Seg34.relationLc431Part1 Seg34.relationLc431Part2 at r3993
  unfold Seg34.relationRow3994 Seg34.relationLc432 Seg34.relationLc432Part0 Seg34.relationLc432Part1 Seg34.relationLc432Part2 at r3994
  unfold Seg34.relationRow3995 at r3995
  unfold Seg34.relationRow3996 at r3996
  unfold Seg34.relationRow3997 at r3997
  unfold Seg34.relationRow3998 Seg34.relationLc433 Seg34.relationLc433Part0 Seg34.relationLc433Part1 Seg34.relationLc433Part2 at r3998
  unfold Seg34.relationRow3999 Seg34.relationLc434 Seg34.relationLc434Part0 Seg34.relationLc434Part1 Seg34.relationLc434Part2 at r3999
  unfold Seg34.relationRow4000 at r4000
  unfold Seg34.relationRow4001 at r4001
  unfold Seg34.relationRow4002 at r4002
  unfold Seg34.relationRow4003 at r4003
  unfold Seg34.relationRow4004 at r4004
  have hrung79 (bit : Bool) (hbit : rho 34071 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX79 rho : Seg34.F), (seg34AccY79 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35262 : Seg34.F), (rho 35263 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX79 rho : Seg34.F), (seg34AccY79 rho : Seg34.F)⟩
        ⟨(rho 35262 : Seg34.F), (rho 35263 : Seg34.F)⟩
        ⟨(seg34AccX80 rho : Seg34.F), (seg34AccY80 rho : Seg34.F)⟩
        ⟨(rho 35275 : Seg34.F), (rho 35276 : Seg34.F)⟩ := by
    have ha0 : (rho 35262 + rho 35263) * (seg34AccX79 rho + seg34AccY79 rho) = rho 35264 := by
      rw [seg34LadderFlatX79_eq, seg34LadderFlatY79_eq]
      unfold seg34LadderFlatX79 seg34LadderFlatY79
      linear_combination r3992
    have ha1 : rho 35263 * seg34AccX79 rho = rho 35265 := by
      rw [seg34LadderFlatX79_eq]
      unfold seg34LadderFlatX79
      linear_combination r3993
    have ha2 : rho 35262 * seg34AccY79 rho = rho 35266 := by
      rw [seg34LadderFlatY79_eq]
      unfold seg34LadderFlatY79
      linear_combination r3994
    have ha3 : 3021 * rho 35265 * rho 35266 = rho 35267 := by
      linear_combination r3995
    have ha4 : rho 35268 * (1 + rho 35267) = rho 35265 + rho 35266 := by
      linear_combination r3996
    have ha5 : rho 35269 * (1 - rho 35267) = rho 35264 - rho 35265 - rho 35266 := by
      linear_combination r3997
    have haddx :
        rho 35268 * (1 + 3021 * (rho 35263 * seg34AccX79 rho) * (rho 35262 * seg34AccY79 rho)) =
          rho 35263 * seg34AccX79 rho + rho 35262 * seg34AccY79 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35269 * (1 - 3021 * (rho 35263 * seg34AccX79 rho) * (rho 35262 * seg34AccY79 rho)) =
          (-1) * (rho 35263 * seg34AccX79 rho) - rho 35262 * seg34AccY79 rho +
            (seg34AccY79 rho - seg34AccX79 rho * (-1)) * (rho 35262 + rho 35263) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35269 * (1 - rho 35267) = rho 35264 - rho 35265 - rho 35266 := ha5
        _ = (-1) * rho 35265 - rho 35266 + (seg34AccY79 rho - seg34AccX79 rho * (-1)) * (rho 35262 + rho 35263) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX80 rho = seg34AccX79 rho - Bool.toZMod bit * (seg34AccX79 rho - rho 35268) := by
      have hd : rho 35270 = Bool.toZMod bit * (rho 35268 - seg34AccX79 rho) := by
        rw [← hbit, seg34LadderFlatX79_eq]
        unfold seg34LadderFlatX79
        linear_combination -r3998
      unfold seg34AccX80
      linear_combination hd
    have hsely : seg34AccY80 rho = seg34AccY79 rho - Bool.toZMod bit * (seg34AccY79 rho - rho 35269) := by
      have hd : rho 35271 = Bool.toZMod bit * (rho 35269 - seg34AccY79 rho) := by
        rw [← hbit, seg34LadderFlatY79_eq]
        unfold seg34LadderFlatY79
        linear_combination -r3999
      unfold seg34AccY80
      linear_combination hd
    have hd0 : rho 35262 * rho 35263 = rho 35272 := by linear_combination r4000
    have hd1 : rho 35262 * rho 35262 = rho 35273 := by linear_combination r4001
    have hd2 : rho 35263 * rho 35263 = rho 35274 := by linear_combination r4002
    have hd3 : rho 35275 * (rho 35263 * rho 35263 + rho 35262 * rho 35262 * (-1)) = 2 * (rho 35262 * rho 35263) := by
      rw [hd0, hd1, hd2]
      linear_combination r4003
    have hd4 : rho 35276 * (2 - (rho 35263 * rho 35263 + rho 35262 * rho 35262 * (-1))) = rho 35263 * rho 35263 - rho 35262 * rho 35262 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4004
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX79 rho : Seg34.F), (seg34AccY79 rho : Seg34.F)⟩
      ⟨(rho 35262 : Seg34.F), (rho 35263 : Seg34.F)⟩
      ⟨(rho 35268 : Seg34.F), (rho 35269 : Seg34.F)⟩
      ⟨(seg34AccX80 rho : Seg34.F), (seg34AccY80 rho : Seg34.F)⟩
      ⟨(rho 35275 : Seg34.F), (rho 35276 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung79

theorem seg34_rung80 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34072 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX80 rho : Seg34.F), (seg34AccY80 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35275 : Seg34.F), (rho 35276 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX80 rho : Seg34.F), (seg34AccY80 rho : Seg34.F)⟩
        ⟨(rho 35275 : Seg34.F), (rho 35276 : Seg34.F)⟩
        ⟨(seg34AccX81 rho : Seg34.F), (seg34AccY81 rho : Seg34.F)⟩
        ⟨(rho 35288 : Seg34.F), (rho 35289 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart50 at p50
  rcases p50 with ⟨_, _, _, _, _, r4005, r4006, r4007, r4008, r4009, r4010, r4011, r4012, r4013, r4014, r4015, r4016, r4017, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow4005 Seg34.relationLc435 Seg34.relationLc435Part0 Seg34.relationLc435Part1 Seg34.relationLc435Part2 Seg34.relationLc435Part3 Seg34.relationLc435Part4 Seg34.relationLc435Part5 at r4005
  unfold Seg34.relationRow4006 Seg34.relationLc436 Seg34.relationLc436Part0 Seg34.relationLc436Part1 Seg34.relationLc436Part2 at r4006
  unfold Seg34.relationRow4007 Seg34.relationLc437 Seg34.relationLc437Part0 Seg34.relationLc437Part1 Seg34.relationLc437Part2 at r4007
  unfold Seg34.relationRow4008 at r4008
  unfold Seg34.relationRow4009 at r4009
  unfold Seg34.relationRow4010 at r4010
  unfold Seg34.relationRow4011 Seg34.relationLc438 Seg34.relationLc438Part0 Seg34.relationLc438Part1 Seg34.relationLc438Part2 at r4011
  unfold Seg34.relationRow4012 Seg34.relationLc439 Seg34.relationLc439Part0 Seg34.relationLc439Part1 Seg34.relationLc439Part2 at r4012
  unfold Seg34.relationRow4013 at r4013
  unfold Seg34.relationRow4014 at r4014
  unfold Seg34.relationRow4015 at r4015
  unfold Seg34.relationRow4016 at r4016
  unfold Seg34.relationRow4017 at r4017
  have hrung80 (bit : Bool) (hbit : rho 34072 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX80 rho : Seg34.F), (seg34AccY80 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35275 : Seg34.F), (rho 35276 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX80 rho : Seg34.F), (seg34AccY80 rho : Seg34.F)⟩
        ⟨(rho 35275 : Seg34.F), (rho 35276 : Seg34.F)⟩
        ⟨(seg34AccX81 rho : Seg34.F), (seg34AccY81 rho : Seg34.F)⟩
        ⟨(rho 35288 : Seg34.F), (rho 35289 : Seg34.F)⟩ := by
    have ha0 : (rho 35275 + rho 35276) * (seg34AccX80 rho + seg34AccY80 rho) = rho 35277 := by
      rw [seg34LadderFlatX80_eq, seg34LadderFlatY80_eq]
      unfold seg34LadderFlatX80 seg34LadderFlatY80
      linear_combination r4005
    have ha1 : rho 35276 * seg34AccX80 rho = rho 35278 := by
      rw [seg34LadderFlatX80_eq]
      unfold seg34LadderFlatX80
      linear_combination r4006
    have ha2 : rho 35275 * seg34AccY80 rho = rho 35279 := by
      rw [seg34LadderFlatY80_eq]
      unfold seg34LadderFlatY80
      linear_combination r4007
    have ha3 : 3021 * rho 35278 * rho 35279 = rho 35280 := by
      linear_combination r4008
    have ha4 : rho 35281 * (1 + rho 35280) = rho 35278 + rho 35279 := by
      linear_combination r4009
    have ha5 : rho 35282 * (1 - rho 35280) = rho 35277 - rho 35278 - rho 35279 := by
      linear_combination r4010
    have haddx :
        rho 35281 * (1 + 3021 * (rho 35276 * seg34AccX80 rho) * (rho 35275 * seg34AccY80 rho)) =
          rho 35276 * seg34AccX80 rho + rho 35275 * seg34AccY80 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35282 * (1 - 3021 * (rho 35276 * seg34AccX80 rho) * (rho 35275 * seg34AccY80 rho)) =
          (-1) * (rho 35276 * seg34AccX80 rho) - rho 35275 * seg34AccY80 rho +
            (seg34AccY80 rho - seg34AccX80 rho * (-1)) * (rho 35275 + rho 35276) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35282 * (1 - rho 35280) = rho 35277 - rho 35278 - rho 35279 := ha5
        _ = (-1) * rho 35278 - rho 35279 + (seg34AccY80 rho - seg34AccX80 rho * (-1)) * (rho 35275 + rho 35276) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX81 rho = seg34AccX80 rho - Bool.toZMod bit * (seg34AccX80 rho - rho 35281) := by
      have hd : rho 35283 = Bool.toZMod bit * (rho 35281 - seg34AccX80 rho) := by
        rw [← hbit, seg34LadderFlatX80_eq]
        unfold seg34LadderFlatX80
        linear_combination -r4011
      unfold seg34AccX81
      linear_combination hd
    have hsely : seg34AccY81 rho = seg34AccY80 rho - Bool.toZMod bit * (seg34AccY80 rho - rho 35282) := by
      have hd : rho 35284 = Bool.toZMod bit * (rho 35282 - seg34AccY80 rho) := by
        rw [← hbit, seg34LadderFlatY80_eq]
        unfold seg34LadderFlatY80
        linear_combination -r4012
      unfold seg34AccY81
      linear_combination hd
    have hd0 : rho 35275 * rho 35276 = rho 35285 := by linear_combination r4013
    have hd1 : rho 35275 * rho 35275 = rho 35286 := by linear_combination r4014
    have hd2 : rho 35276 * rho 35276 = rho 35287 := by linear_combination r4015
    have hd3 : rho 35288 * (rho 35276 * rho 35276 + rho 35275 * rho 35275 * (-1)) = 2 * (rho 35275 * rho 35276) := by
      rw [hd0, hd1, hd2]
      linear_combination r4016
    have hd4 : rho 35289 * (2 - (rho 35276 * rho 35276 + rho 35275 * rho 35275 * (-1))) = rho 35276 * rho 35276 - rho 35275 * rho 35275 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4017
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX80 rho : Seg34.F), (seg34AccY80 rho : Seg34.F)⟩
      ⟨(rho 35275 : Seg34.F), (rho 35276 : Seg34.F)⟩
      ⟨(rho 35281 : Seg34.F), (rho 35282 : Seg34.F)⟩
      ⟨(seg34AccX81 rho : Seg34.F), (seg34AccY81 rho : Seg34.F)⟩
      ⟨(rho 35288 : Seg34.F), (rho 35289 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung80

theorem seg34_rung81 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34073 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX81 rho : Seg34.F), (seg34AccY81 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35288 : Seg34.F), (rho 35289 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX81 rho : Seg34.F), (seg34AccY81 rho : Seg34.F)⟩
        ⟨(rho 35288 : Seg34.F), (rho 35289 : Seg34.F)⟩
        ⟨(seg34AccX82 rho : Seg34.F), (seg34AccY82 rho : Seg34.F)⟩
        ⟨(rho 35301 : Seg34.F), (rho 35302 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart50 at p50
  rcases p50 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4018, r4019, r4020, r4021, r4022, r4023, r4024, r4025, r4026, r4027, r4028, r4029, r4030, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow4018 Seg34.relationLc440 Seg34.relationLc440Part0 Seg34.relationLc440Part1 Seg34.relationLc440Part2 Seg34.relationLc440Part3 Seg34.relationLc440Part4 Seg34.relationLc440Part5 at r4018
  unfold Seg34.relationRow4019 Seg34.relationLc441 Seg34.relationLc441Part0 Seg34.relationLc441Part1 Seg34.relationLc441Part2 at r4019
  unfold Seg34.relationRow4020 Seg34.relationLc442 Seg34.relationLc442Part0 Seg34.relationLc442Part1 Seg34.relationLc442Part2 at r4020
  unfold Seg34.relationRow4021 at r4021
  unfold Seg34.relationRow4022 at r4022
  unfold Seg34.relationRow4023 at r4023
  unfold Seg34.relationRow4024 Seg34.relationLc443 Seg34.relationLc443Part0 Seg34.relationLc443Part1 Seg34.relationLc443Part2 at r4024
  unfold Seg34.relationRow4025 Seg34.relationLc444 Seg34.relationLc444Part0 Seg34.relationLc444Part1 Seg34.relationLc444Part2 at r4025
  unfold Seg34.relationRow4026 at r4026
  unfold Seg34.relationRow4027 at r4027
  unfold Seg34.relationRow4028 at r4028
  unfold Seg34.relationRow4029 at r4029
  unfold Seg34.relationRow4030 at r4030
  have hrung81 (bit : Bool) (hbit : rho 34073 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX81 rho : Seg34.F), (seg34AccY81 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35288 : Seg34.F), (rho 35289 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX81 rho : Seg34.F), (seg34AccY81 rho : Seg34.F)⟩
        ⟨(rho 35288 : Seg34.F), (rho 35289 : Seg34.F)⟩
        ⟨(seg34AccX82 rho : Seg34.F), (seg34AccY82 rho : Seg34.F)⟩
        ⟨(rho 35301 : Seg34.F), (rho 35302 : Seg34.F)⟩ := by
    have ha0 : (rho 35288 + rho 35289) * (seg34AccX81 rho + seg34AccY81 rho) = rho 35290 := by
      rw [seg34LadderFlatX81_eq, seg34LadderFlatY81_eq]
      unfold seg34LadderFlatX81 seg34LadderFlatY81
      linear_combination r4018
    have ha1 : rho 35289 * seg34AccX81 rho = rho 35291 := by
      rw [seg34LadderFlatX81_eq]
      unfold seg34LadderFlatX81
      linear_combination r4019
    have ha2 : rho 35288 * seg34AccY81 rho = rho 35292 := by
      rw [seg34LadderFlatY81_eq]
      unfold seg34LadderFlatY81
      linear_combination r4020
    have ha3 : 3021 * rho 35291 * rho 35292 = rho 35293 := by
      linear_combination r4021
    have ha4 : rho 35294 * (1 + rho 35293) = rho 35291 + rho 35292 := by
      linear_combination r4022
    have ha5 : rho 35295 * (1 - rho 35293) = rho 35290 - rho 35291 - rho 35292 := by
      linear_combination r4023
    have haddx :
        rho 35294 * (1 + 3021 * (rho 35289 * seg34AccX81 rho) * (rho 35288 * seg34AccY81 rho)) =
          rho 35289 * seg34AccX81 rho + rho 35288 * seg34AccY81 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35295 * (1 - 3021 * (rho 35289 * seg34AccX81 rho) * (rho 35288 * seg34AccY81 rho)) =
          (-1) * (rho 35289 * seg34AccX81 rho) - rho 35288 * seg34AccY81 rho +
            (seg34AccY81 rho - seg34AccX81 rho * (-1)) * (rho 35288 + rho 35289) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35295 * (1 - rho 35293) = rho 35290 - rho 35291 - rho 35292 := ha5
        _ = (-1) * rho 35291 - rho 35292 + (seg34AccY81 rho - seg34AccX81 rho * (-1)) * (rho 35288 + rho 35289) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX82 rho = seg34AccX81 rho - Bool.toZMod bit * (seg34AccX81 rho - rho 35294) := by
      have hd : rho 35296 = Bool.toZMod bit * (rho 35294 - seg34AccX81 rho) := by
        rw [← hbit, seg34LadderFlatX81_eq]
        unfold seg34LadderFlatX81
        linear_combination -r4024
      unfold seg34AccX82
      linear_combination hd
    have hsely : seg34AccY82 rho = seg34AccY81 rho - Bool.toZMod bit * (seg34AccY81 rho - rho 35295) := by
      have hd : rho 35297 = Bool.toZMod bit * (rho 35295 - seg34AccY81 rho) := by
        rw [← hbit, seg34LadderFlatY81_eq]
        unfold seg34LadderFlatY81
        linear_combination -r4025
      unfold seg34AccY82
      linear_combination hd
    have hd0 : rho 35288 * rho 35289 = rho 35298 := by linear_combination r4026
    have hd1 : rho 35288 * rho 35288 = rho 35299 := by linear_combination r4027
    have hd2 : rho 35289 * rho 35289 = rho 35300 := by linear_combination r4028
    have hd3 : rho 35301 * (rho 35289 * rho 35289 + rho 35288 * rho 35288 * (-1)) = 2 * (rho 35288 * rho 35289) := by
      rw [hd0, hd1, hd2]
      linear_combination r4029
    have hd4 : rho 35302 * (2 - (rho 35289 * rho 35289 + rho 35288 * rho 35288 * (-1))) = rho 35289 * rho 35289 - rho 35288 * rho 35288 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4030
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX81 rho : Seg34.F), (seg34AccY81 rho : Seg34.F)⟩
      ⟨(rho 35288 : Seg34.F), (rho 35289 : Seg34.F)⟩
      ⟨(rho 35294 : Seg34.F), (rho 35295 : Seg34.F)⟩
      ⟨(seg34AccX82 rho : Seg34.F), (seg34AccY82 rho : Seg34.F)⟩
      ⟨(rho 35301 : Seg34.F), (rho 35302 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung81

theorem seg34_rung82 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34074 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX82 rho : Seg34.F), (seg34AccY82 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35301 : Seg34.F), (rho 35302 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX82 rho : Seg34.F), (seg34AccY82 rho : Seg34.F)⟩
        ⟨(rho 35301 : Seg34.F), (rho 35302 : Seg34.F)⟩
        ⟨(seg34AccX83 rho : Seg34.F), (seg34AccY83 rho : Seg34.F)⟩
        ⟨(rho 35314 : Seg34.F), (rho 35315 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart50 at p50
  rcases p50 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4031, r4032, r4033, r4034, r4035, r4036, r4037, r4038, r4039, r4040, r4041, r4042, r4043, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow4031 Seg34.relationLc445 Seg34.relationLc445Part0 Seg34.relationLc445Part1 Seg34.relationLc445Part2 Seg34.relationLc445Part3 Seg34.relationLc445Part4 Seg34.relationLc445Part5 at r4031
  unfold Seg34.relationRow4032 Seg34.relationLc446 Seg34.relationLc446Part0 Seg34.relationLc446Part1 Seg34.relationLc446Part2 at r4032
  unfold Seg34.relationRow4033 Seg34.relationLc447 Seg34.relationLc447Part0 Seg34.relationLc447Part1 Seg34.relationLc447Part2 at r4033
  unfold Seg34.relationRow4034 at r4034
  unfold Seg34.relationRow4035 at r4035
  unfold Seg34.relationRow4036 at r4036
  unfold Seg34.relationRow4037 Seg34.relationLc448 Seg34.relationLc448Part0 Seg34.relationLc448Part1 Seg34.relationLc448Part2 at r4037
  unfold Seg34.relationRow4038 Seg34.relationLc449 Seg34.relationLc449Part0 Seg34.relationLc449Part1 Seg34.relationLc449Part2 at r4038
  unfold Seg34.relationRow4039 at r4039
  unfold Seg34.relationRow4040 at r4040
  unfold Seg34.relationRow4041 at r4041
  unfold Seg34.relationRow4042 at r4042
  unfold Seg34.relationRow4043 at r4043
  have hrung82 (bit : Bool) (hbit : rho 34074 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX82 rho : Seg34.F), (seg34AccY82 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35301 : Seg34.F), (rho 35302 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX82 rho : Seg34.F), (seg34AccY82 rho : Seg34.F)⟩
        ⟨(rho 35301 : Seg34.F), (rho 35302 : Seg34.F)⟩
        ⟨(seg34AccX83 rho : Seg34.F), (seg34AccY83 rho : Seg34.F)⟩
        ⟨(rho 35314 : Seg34.F), (rho 35315 : Seg34.F)⟩ := by
    have ha0 : (rho 35301 + rho 35302) * (seg34AccX82 rho + seg34AccY82 rho) = rho 35303 := by
      rw [seg34LadderFlatX82_eq, seg34LadderFlatY82_eq]
      unfold seg34LadderFlatX82 seg34LadderFlatY82
      linear_combination r4031
    have ha1 : rho 35302 * seg34AccX82 rho = rho 35304 := by
      rw [seg34LadderFlatX82_eq]
      unfold seg34LadderFlatX82
      linear_combination r4032
    have ha2 : rho 35301 * seg34AccY82 rho = rho 35305 := by
      rw [seg34LadderFlatY82_eq]
      unfold seg34LadderFlatY82
      linear_combination r4033
    have ha3 : 3021 * rho 35304 * rho 35305 = rho 35306 := by
      linear_combination r4034
    have ha4 : rho 35307 * (1 + rho 35306) = rho 35304 + rho 35305 := by
      linear_combination r4035
    have ha5 : rho 35308 * (1 - rho 35306) = rho 35303 - rho 35304 - rho 35305 := by
      linear_combination r4036
    have haddx :
        rho 35307 * (1 + 3021 * (rho 35302 * seg34AccX82 rho) * (rho 35301 * seg34AccY82 rho)) =
          rho 35302 * seg34AccX82 rho + rho 35301 * seg34AccY82 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35308 * (1 - 3021 * (rho 35302 * seg34AccX82 rho) * (rho 35301 * seg34AccY82 rho)) =
          (-1) * (rho 35302 * seg34AccX82 rho) - rho 35301 * seg34AccY82 rho +
            (seg34AccY82 rho - seg34AccX82 rho * (-1)) * (rho 35301 + rho 35302) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35308 * (1 - rho 35306) = rho 35303 - rho 35304 - rho 35305 := ha5
        _ = (-1) * rho 35304 - rho 35305 + (seg34AccY82 rho - seg34AccX82 rho * (-1)) * (rho 35301 + rho 35302) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX83 rho = seg34AccX82 rho - Bool.toZMod bit * (seg34AccX82 rho - rho 35307) := by
      have hd : rho 35309 = Bool.toZMod bit * (rho 35307 - seg34AccX82 rho) := by
        rw [← hbit, seg34LadderFlatX82_eq]
        unfold seg34LadderFlatX82
        linear_combination -r4037
      unfold seg34AccX83
      linear_combination hd
    have hsely : seg34AccY83 rho = seg34AccY82 rho - Bool.toZMod bit * (seg34AccY82 rho - rho 35308) := by
      have hd : rho 35310 = Bool.toZMod bit * (rho 35308 - seg34AccY82 rho) := by
        rw [← hbit, seg34LadderFlatY82_eq]
        unfold seg34LadderFlatY82
        linear_combination -r4038
      unfold seg34AccY83
      linear_combination hd
    have hd0 : rho 35301 * rho 35302 = rho 35311 := by linear_combination r4039
    have hd1 : rho 35301 * rho 35301 = rho 35312 := by linear_combination r4040
    have hd2 : rho 35302 * rho 35302 = rho 35313 := by linear_combination r4041
    have hd3 : rho 35314 * (rho 35302 * rho 35302 + rho 35301 * rho 35301 * (-1)) = 2 * (rho 35301 * rho 35302) := by
      rw [hd0, hd1, hd2]
      linear_combination r4042
    have hd4 : rho 35315 * (2 - (rho 35302 * rho 35302 + rho 35301 * rho 35301 * (-1))) = rho 35302 * rho 35302 - rho 35301 * rho 35301 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4043
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX82 rho : Seg34.F), (seg34AccY82 rho : Seg34.F)⟩
      ⟨(rho 35301 : Seg34.F), (rho 35302 : Seg34.F)⟩
      ⟨(rho 35307 : Seg34.F), (rho 35308 : Seg34.F)⟩
      ⟨(seg34AccX83 rho : Seg34.F), (seg34AccY83 rho : Seg34.F)⟩
      ⟨(rho 35314 : Seg34.F), (rho 35315 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung82

theorem seg34_rung83 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34075 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX83 rho : Seg34.F), (seg34AccY83 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35314 : Seg34.F), (rho 35315 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX83 rho : Seg34.F), (seg34AccY83 rho : Seg34.F)⟩
        ⟨(rho 35314 : Seg34.F), (rho 35315 : Seg34.F)⟩
        ⟨(seg34AccX84 rho : Seg34.F), (seg34AccY84 rho : Seg34.F)⟩
        ⟨(rho 35327 : Seg34.F), (rho 35328 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart50 at p50
  rcases p50 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4044, r4045, r4046, r4047, r4048, r4049, r4050, r4051, r4052, r4053, r4054, r4055, r4056, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow4044 Seg34.relationLc450 Seg34.relationLc450Part0 Seg34.relationLc450Part1 Seg34.relationLc450Part2 Seg34.relationLc450Part3 Seg34.relationLc450Part4 Seg34.relationLc450Part5 at r4044
  unfold Seg34.relationRow4045 Seg34.relationLc451 Seg34.relationLc451Part0 Seg34.relationLc451Part1 Seg34.relationLc451Part2 at r4045
  unfold Seg34.relationRow4046 Seg34.relationLc452 Seg34.relationLc452Part0 Seg34.relationLc452Part1 Seg34.relationLc452Part2 at r4046
  unfold Seg34.relationRow4047 at r4047
  unfold Seg34.relationRow4048 at r4048
  unfold Seg34.relationRow4049 at r4049
  unfold Seg34.relationRow4050 Seg34.relationLc453 Seg34.relationLc453Part0 Seg34.relationLc453Part1 Seg34.relationLc453Part2 at r4050
  unfold Seg34.relationRow4051 Seg34.relationLc454 Seg34.relationLc454Part0 Seg34.relationLc454Part1 Seg34.relationLc454Part2 at r4051
  unfold Seg34.relationRow4052 at r4052
  unfold Seg34.relationRow4053 at r4053
  unfold Seg34.relationRow4054 at r4054
  unfold Seg34.relationRow4055 at r4055
  unfold Seg34.relationRow4056 at r4056
  have hrung83 (bit : Bool) (hbit : rho 34075 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX83 rho : Seg34.F), (seg34AccY83 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35314 : Seg34.F), (rho 35315 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX83 rho : Seg34.F), (seg34AccY83 rho : Seg34.F)⟩
        ⟨(rho 35314 : Seg34.F), (rho 35315 : Seg34.F)⟩
        ⟨(seg34AccX84 rho : Seg34.F), (seg34AccY84 rho : Seg34.F)⟩
        ⟨(rho 35327 : Seg34.F), (rho 35328 : Seg34.F)⟩ := by
    have ha0 : (rho 35314 + rho 35315) * (seg34AccX83 rho + seg34AccY83 rho) = rho 35316 := by
      rw [seg34LadderFlatX83_eq, seg34LadderFlatY83_eq]
      unfold seg34LadderFlatX83 seg34LadderFlatY83
      linear_combination r4044
    have ha1 : rho 35315 * seg34AccX83 rho = rho 35317 := by
      rw [seg34LadderFlatX83_eq]
      unfold seg34LadderFlatX83
      linear_combination r4045
    have ha2 : rho 35314 * seg34AccY83 rho = rho 35318 := by
      rw [seg34LadderFlatY83_eq]
      unfold seg34LadderFlatY83
      linear_combination r4046
    have ha3 : 3021 * rho 35317 * rho 35318 = rho 35319 := by
      linear_combination r4047
    have ha4 : rho 35320 * (1 + rho 35319) = rho 35317 + rho 35318 := by
      linear_combination r4048
    have ha5 : rho 35321 * (1 - rho 35319) = rho 35316 - rho 35317 - rho 35318 := by
      linear_combination r4049
    have haddx :
        rho 35320 * (1 + 3021 * (rho 35315 * seg34AccX83 rho) * (rho 35314 * seg34AccY83 rho)) =
          rho 35315 * seg34AccX83 rho + rho 35314 * seg34AccY83 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35321 * (1 - 3021 * (rho 35315 * seg34AccX83 rho) * (rho 35314 * seg34AccY83 rho)) =
          (-1) * (rho 35315 * seg34AccX83 rho) - rho 35314 * seg34AccY83 rho +
            (seg34AccY83 rho - seg34AccX83 rho * (-1)) * (rho 35314 + rho 35315) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35321 * (1 - rho 35319) = rho 35316 - rho 35317 - rho 35318 := ha5
        _ = (-1) * rho 35317 - rho 35318 + (seg34AccY83 rho - seg34AccX83 rho * (-1)) * (rho 35314 + rho 35315) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX84 rho = seg34AccX83 rho - Bool.toZMod bit * (seg34AccX83 rho - rho 35320) := by
      have hd : rho 35322 = Bool.toZMod bit * (rho 35320 - seg34AccX83 rho) := by
        rw [← hbit, seg34LadderFlatX83_eq]
        unfold seg34LadderFlatX83
        linear_combination -r4050
      unfold seg34AccX84
      linear_combination hd
    have hsely : seg34AccY84 rho = seg34AccY83 rho - Bool.toZMod bit * (seg34AccY83 rho - rho 35321) := by
      have hd : rho 35323 = Bool.toZMod bit * (rho 35321 - seg34AccY83 rho) := by
        rw [← hbit, seg34LadderFlatY83_eq]
        unfold seg34LadderFlatY83
        linear_combination -r4051
      unfold seg34AccY84
      linear_combination hd
    have hd0 : rho 35314 * rho 35315 = rho 35324 := by linear_combination r4052
    have hd1 : rho 35314 * rho 35314 = rho 35325 := by linear_combination r4053
    have hd2 : rho 35315 * rho 35315 = rho 35326 := by linear_combination r4054
    have hd3 : rho 35327 * (rho 35315 * rho 35315 + rho 35314 * rho 35314 * (-1)) = 2 * (rho 35314 * rho 35315) := by
      rw [hd0, hd1, hd2]
      linear_combination r4055
    have hd4 : rho 35328 * (2 - (rho 35315 * rho 35315 + rho 35314 * rho 35314 * (-1))) = rho 35315 * rho 35315 - rho 35314 * rho 35314 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4056
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX83 rho : Seg34.F), (seg34AccY83 rho : Seg34.F)⟩
      ⟨(rho 35314 : Seg34.F), (rho 35315 : Seg34.F)⟩
      ⟨(rho 35320 : Seg34.F), (rho 35321 : Seg34.F)⟩
      ⟨(seg34AccX84 rho : Seg34.F), (seg34AccY84 rho : Seg34.F)⟩
      ⟨(rho 35327 : Seg34.F), (rho 35328 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung83

theorem seg34_rung84 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34076 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX84 rho : Seg34.F), (seg34AccY84 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35327 : Seg34.F), (rho 35328 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX84 rho : Seg34.F), (seg34AccY84 rho : Seg34.F)⟩
        ⟨(rho 35327 : Seg34.F), (rho 35328 : Seg34.F)⟩
        ⟨(seg34AccX85 rho : Seg34.F), (seg34AccY85 rho : Seg34.F)⟩
        ⟨(rho 35340 : Seg34.F), (rho 35341 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart50 at p50
  rcases p50 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4057, r4058, r4059, r4060, r4061, r4062, r4063, r4064, r4065, r4066, r4067, r4068, r4069, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow4057 Seg34.relationLc455 Seg34.relationLc455Part0 Seg34.relationLc455Part1 Seg34.relationLc455Part2 Seg34.relationLc455Part3 Seg34.relationLc455Part4 Seg34.relationLc455Part5 at r4057
  unfold Seg34.relationRow4058 Seg34.relationLc456 Seg34.relationLc456Part0 Seg34.relationLc456Part1 Seg34.relationLc456Part2 at r4058
  unfold Seg34.relationRow4059 Seg34.relationLc457 Seg34.relationLc457Part0 Seg34.relationLc457Part1 Seg34.relationLc457Part2 at r4059
  unfold Seg34.relationRow4060 at r4060
  unfold Seg34.relationRow4061 at r4061
  unfold Seg34.relationRow4062 at r4062
  unfold Seg34.relationRow4063 Seg34.relationLc458 Seg34.relationLc458Part0 Seg34.relationLc458Part1 Seg34.relationLc458Part2 at r4063
  unfold Seg34.relationRow4064 Seg34.relationLc459 Seg34.relationLc459Part0 Seg34.relationLc459Part1 Seg34.relationLc459Part2 at r4064
  unfold Seg34.relationRow4065 at r4065
  unfold Seg34.relationRow4066 at r4066
  unfold Seg34.relationRow4067 at r4067
  unfold Seg34.relationRow4068 at r4068
  unfold Seg34.relationRow4069 at r4069
  have hrung84 (bit : Bool) (hbit : rho 34076 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX84 rho : Seg34.F), (seg34AccY84 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35327 : Seg34.F), (rho 35328 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX84 rho : Seg34.F), (seg34AccY84 rho : Seg34.F)⟩
        ⟨(rho 35327 : Seg34.F), (rho 35328 : Seg34.F)⟩
        ⟨(seg34AccX85 rho : Seg34.F), (seg34AccY85 rho : Seg34.F)⟩
        ⟨(rho 35340 : Seg34.F), (rho 35341 : Seg34.F)⟩ := by
    have ha0 : (rho 35327 + rho 35328) * (seg34AccX84 rho + seg34AccY84 rho) = rho 35329 := by
      rw [seg34LadderFlatX84_eq, seg34LadderFlatY84_eq]
      unfold seg34LadderFlatX84 seg34LadderFlatY84
      linear_combination r4057
    have ha1 : rho 35328 * seg34AccX84 rho = rho 35330 := by
      rw [seg34LadderFlatX84_eq]
      unfold seg34LadderFlatX84
      linear_combination r4058
    have ha2 : rho 35327 * seg34AccY84 rho = rho 35331 := by
      rw [seg34LadderFlatY84_eq]
      unfold seg34LadderFlatY84
      linear_combination r4059
    have ha3 : 3021 * rho 35330 * rho 35331 = rho 35332 := by
      linear_combination r4060
    have ha4 : rho 35333 * (1 + rho 35332) = rho 35330 + rho 35331 := by
      linear_combination r4061
    have ha5 : rho 35334 * (1 - rho 35332) = rho 35329 - rho 35330 - rho 35331 := by
      linear_combination r4062
    have haddx :
        rho 35333 * (1 + 3021 * (rho 35328 * seg34AccX84 rho) * (rho 35327 * seg34AccY84 rho)) =
          rho 35328 * seg34AccX84 rho + rho 35327 * seg34AccY84 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35334 * (1 - 3021 * (rho 35328 * seg34AccX84 rho) * (rho 35327 * seg34AccY84 rho)) =
          (-1) * (rho 35328 * seg34AccX84 rho) - rho 35327 * seg34AccY84 rho +
            (seg34AccY84 rho - seg34AccX84 rho * (-1)) * (rho 35327 + rho 35328) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35334 * (1 - rho 35332) = rho 35329 - rho 35330 - rho 35331 := ha5
        _ = (-1) * rho 35330 - rho 35331 + (seg34AccY84 rho - seg34AccX84 rho * (-1)) * (rho 35327 + rho 35328) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX85 rho = seg34AccX84 rho - Bool.toZMod bit * (seg34AccX84 rho - rho 35333) := by
      have hd : rho 35335 = Bool.toZMod bit * (rho 35333 - seg34AccX84 rho) := by
        rw [← hbit, seg34LadderFlatX84_eq]
        unfold seg34LadderFlatX84
        linear_combination -r4063
      unfold seg34AccX85
      linear_combination hd
    have hsely : seg34AccY85 rho = seg34AccY84 rho - Bool.toZMod bit * (seg34AccY84 rho - rho 35334) := by
      have hd : rho 35336 = Bool.toZMod bit * (rho 35334 - seg34AccY84 rho) := by
        rw [← hbit, seg34LadderFlatY84_eq]
        unfold seg34LadderFlatY84
        linear_combination -r4064
      unfold seg34AccY85
      linear_combination hd
    have hd0 : rho 35327 * rho 35328 = rho 35337 := by linear_combination r4065
    have hd1 : rho 35327 * rho 35327 = rho 35338 := by linear_combination r4066
    have hd2 : rho 35328 * rho 35328 = rho 35339 := by linear_combination r4067
    have hd3 : rho 35340 * (rho 35328 * rho 35328 + rho 35327 * rho 35327 * (-1)) = 2 * (rho 35327 * rho 35328) := by
      rw [hd0, hd1, hd2]
      linear_combination r4068
    have hd4 : rho 35341 * (2 - (rho 35328 * rho 35328 + rho 35327 * rho 35327 * (-1))) = rho 35328 * rho 35328 - rho 35327 * rho 35327 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4069
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX84 rho : Seg34.F), (seg34AccY84 rho : Seg34.F)⟩
      ⟨(rho 35327 : Seg34.F), (rho 35328 : Seg34.F)⟩
      ⟨(rho 35333 : Seg34.F), (rho 35334 : Seg34.F)⟩
      ⟨(seg34AccX85 rho : Seg34.F), (seg34AccY85 rho : Seg34.F)⟩
      ⟨(rho 35340 : Seg34.F), (rho 35341 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung84

theorem seg34_rung85 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34077 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX85 rho : Seg34.F), (seg34AccY85 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35340 : Seg34.F), (rho 35341 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX85 rho : Seg34.F), (seg34AccY85 rho : Seg34.F)⟩
        ⟨(rho 35340 : Seg34.F), (rho 35341 : Seg34.F)⟩
        ⟨(seg34AccX86 rho : Seg34.F), (seg34AccY86 rho : Seg34.F)⟩
        ⟨(rho 35353 : Seg34.F), (rho 35354 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart50 at p50
  rcases p50 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4070, r4071, r4072, r4073, r4074, r4075, r4076, r4077, r4078, r4079⟩
  unfold Seg34.relationPart51 at p51
  rcases p51 with ⟨r4080, r4081, r4082, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow4070 Seg34.relationLc460 Seg34.relationLc460Part0 Seg34.relationLc460Part1 Seg34.relationLc460Part2 Seg34.relationLc460Part3 Seg34.relationLc460Part4 Seg34.relationLc460Part5 at r4070
  unfold Seg34.relationRow4071 Seg34.relationLc461 Seg34.relationLc461Part0 Seg34.relationLc461Part1 Seg34.relationLc461Part2 at r4071
  unfold Seg34.relationRow4072 Seg34.relationLc462 Seg34.relationLc462Part0 Seg34.relationLc462Part1 Seg34.relationLc462Part2 at r4072
  unfold Seg34.relationRow4073 at r4073
  unfold Seg34.relationRow4074 at r4074
  unfold Seg34.relationRow4075 at r4075
  unfold Seg34.relationRow4076 Seg34.relationLc463 Seg34.relationLc463Part0 Seg34.relationLc463Part1 Seg34.relationLc463Part2 at r4076
  unfold Seg34.relationRow4077 Seg34.relationLc464 Seg34.relationLc464Part0 Seg34.relationLc464Part1 Seg34.relationLc464Part2 at r4077
  unfold Seg34.relationRow4078 at r4078
  unfold Seg34.relationRow4079 at r4079
  unfold Seg34.relationRow4080 at r4080
  unfold Seg34.relationRow4081 at r4081
  unfold Seg34.relationRow4082 at r4082
  have hrung85 (bit : Bool) (hbit : rho 34077 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX85 rho : Seg34.F), (seg34AccY85 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35340 : Seg34.F), (rho 35341 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX85 rho : Seg34.F), (seg34AccY85 rho : Seg34.F)⟩
        ⟨(rho 35340 : Seg34.F), (rho 35341 : Seg34.F)⟩
        ⟨(seg34AccX86 rho : Seg34.F), (seg34AccY86 rho : Seg34.F)⟩
        ⟨(rho 35353 : Seg34.F), (rho 35354 : Seg34.F)⟩ := by
    have ha0 : (rho 35340 + rho 35341) * (seg34AccX85 rho + seg34AccY85 rho) = rho 35342 := by
      rw [seg34LadderFlatX85_eq, seg34LadderFlatY85_eq]
      unfold seg34LadderFlatX85 seg34LadderFlatY85
      linear_combination r4070
    have ha1 : rho 35341 * seg34AccX85 rho = rho 35343 := by
      rw [seg34LadderFlatX85_eq]
      unfold seg34LadderFlatX85
      linear_combination r4071
    have ha2 : rho 35340 * seg34AccY85 rho = rho 35344 := by
      rw [seg34LadderFlatY85_eq]
      unfold seg34LadderFlatY85
      linear_combination r4072
    have ha3 : 3021 * rho 35343 * rho 35344 = rho 35345 := by
      linear_combination r4073
    have ha4 : rho 35346 * (1 + rho 35345) = rho 35343 + rho 35344 := by
      linear_combination r4074
    have ha5 : rho 35347 * (1 - rho 35345) = rho 35342 - rho 35343 - rho 35344 := by
      linear_combination r4075
    have haddx :
        rho 35346 * (1 + 3021 * (rho 35341 * seg34AccX85 rho) * (rho 35340 * seg34AccY85 rho)) =
          rho 35341 * seg34AccX85 rho + rho 35340 * seg34AccY85 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35347 * (1 - 3021 * (rho 35341 * seg34AccX85 rho) * (rho 35340 * seg34AccY85 rho)) =
          (-1) * (rho 35341 * seg34AccX85 rho) - rho 35340 * seg34AccY85 rho +
            (seg34AccY85 rho - seg34AccX85 rho * (-1)) * (rho 35340 + rho 35341) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35347 * (1 - rho 35345) = rho 35342 - rho 35343 - rho 35344 := ha5
        _ = (-1) * rho 35343 - rho 35344 + (seg34AccY85 rho - seg34AccX85 rho * (-1)) * (rho 35340 + rho 35341) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX86 rho = seg34AccX85 rho - Bool.toZMod bit * (seg34AccX85 rho - rho 35346) := by
      have hd : rho 35348 = Bool.toZMod bit * (rho 35346 - seg34AccX85 rho) := by
        rw [← hbit, seg34LadderFlatX85_eq]
        unfold seg34LadderFlatX85
        linear_combination -r4076
      unfold seg34AccX86
      linear_combination hd
    have hsely : seg34AccY86 rho = seg34AccY85 rho - Bool.toZMod bit * (seg34AccY85 rho - rho 35347) := by
      have hd : rho 35349 = Bool.toZMod bit * (rho 35347 - seg34AccY85 rho) := by
        rw [← hbit, seg34LadderFlatY85_eq]
        unfold seg34LadderFlatY85
        linear_combination -r4077
      unfold seg34AccY86
      linear_combination hd
    have hd0 : rho 35340 * rho 35341 = rho 35350 := by linear_combination r4078
    have hd1 : rho 35340 * rho 35340 = rho 35351 := by linear_combination r4079
    have hd2 : rho 35341 * rho 35341 = rho 35352 := by linear_combination r4080
    have hd3 : rho 35353 * (rho 35341 * rho 35341 + rho 35340 * rho 35340 * (-1)) = 2 * (rho 35340 * rho 35341) := by
      rw [hd0, hd1, hd2]
      linear_combination r4081
    have hd4 : rho 35354 * (2 - (rho 35341 * rho 35341 + rho 35340 * rho 35340 * (-1))) = rho 35341 * rho 35341 - rho 35340 * rho 35340 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4082
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX85 rho : Seg34.F), (seg34AccY85 rho : Seg34.F)⟩
      ⟨(rho 35340 : Seg34.F), (rho 35341 : Seg34.F)⟩
      ⟨(rho 35346 : Seg34.F), (rho 35347 : Seg34.F)⟩
      ⟨(seg34AccX86 rho : Seg34.F), (seg34AccY86 rho : Seg34.F)⟩
      ⟨(rho 35353 : Seg34.F), (rho 35354 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung85

theorem seg34_rung86 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34078 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX86 rho : Seg34.F), (seg34AccY86 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35353 : Seg34.F), (rho 35354 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX86 rho : Seg34.F), (seg34AccY86 rho : Seg34.F)⟩
        ⟨(rho 35353 : Seg34.F), (rho 35354 : Seg34.F)⟩
        ⟨(seg34AccX87 rho : Seg34.F), (seg34AccY87 rho : Seg34.F)⟩
        ⟨(rho 35366 : Seg34.F), (rho 35367 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart51 at p51
  rcases p51 with ⟨_, _, _, r4083, r4084, r4085, r4086, r4087, r4088, r4089, r4090, r4091, r4092, r4093, r4094, r4095, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow4083 Seg34.relationLc465 Seg34.relationLc465Part0 Seg34.relationLc465Part1 Seg34.relationLc465Part2 Seg34.relationLc465Part3 Seg34.relationLc465Part4 Seg34.relationLc465Part5 at r4083
  unfold Seg34.relationRow4084 Seg34.relationLc466 Seg34.relationLc466Part0 Seg34.relationLc466Part1 Seg34.relationLc466Part2 at r4084
  unfold Seg34.relationRow4085 Seg34.relationLc467 Seg34.relationLc467Part0 Seg34.relationLc467Part1 Seg34.relationLc467Part2 at r4085
  unfold Seg34.relationRow4086 at r4086
  unfold Seg34.relationRow4087 at r4087
  unfold Seg34.relationRow4088 at r4088
  unfold Seg34.relationRow4089 Seg34.relationLc468 Seg34.relationLc468Part0 Seg34.relationLc468Part1 Seg34.relationLc468Part2 at r4089
  unfold Seg34.relationRow4090 Seg34.relationLc469 Seg34.relationLc469Part0 Seg34.relationLc469Part1 Seg34.relationLc469Part2 at r4090
  unfold Seg34.relationRow4091 at r4091
  unfold Seg34.relationRow4092 at r4092
  unfold Seg34.relationRow4093 at r4093
  unfold Seg34.relationRow4094 at r4094
  unfold Seg34.relationRow4095 at r4095
  have hrung86 (bit : Bool) (hbit : rho 34078 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX86 rho : Seg34.F), (seg34AccY86 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35353 : Seg34.F), (rho 35354 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX86 rho : Seg34.F), (seg34AccY86 rho : Seg34.F)⟩
        ⟨(rho 35353 : Seg34.F), (rho 35354 : Seg34.F)⟩
        ⟨(seg34AccX87 rho : Seg34.F), (seg34AccY87 rho : Seg34.F)⟩
        ⟨(rho 35366 : Seg34.F), (rho 35367 : Seg34.F)⟩ := by
    have ha0 : (rho 35353 + rho 35354) * (seg34AccX86 rho + seg34AccY86 rho) = rho 35355 := by
      rw [seg34LadderFlatX86_eq, seg34LadderFlatY86_eq]
      unfold seg34LadderFlatX86 seg34LadderFlatY86
      linear_combination r4083
    have ha1 : rho 35354 * seg34AccX86 rho = rho 35356 := by
      rw [seg34LadderFlatX86_eq]
      unfold seg34LadderFlatX86
      linear_combination r4084
    have ha2 : rho 35353 * seg34AccY86 rho = rho 35357 := by
      rw [seg34LadderFlatY86_eq]
      unfold seg34LadderFlatY86
      linear_combination r4085
    have ha3 : 3021 * rho 35356 * rho 35357 = rho 35358 := by
      linear_combination r4086
    have ha4 : rho 35359 * (1 + rho 35358) = rho 35356 + rho 35357 := by
      linear_combination r4087
    have ha5 : rho 35360 * (1 - rho 35358) = rho 35355 - rho 35356 - rho 35357 := by
      linear_combination r4088
    have haddx :
        rho 35359 * (1 + 3021 * (rho 35354 * seg34AccX86 rho) * (rho 35353 * seg34AccY86 rho)) =
          rho 35354 * seg34AccX86 rho + rho 35353 * seg34AccY86 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35360 * (1 - 3021 * (rho 35354 * seg34AccX86 rho) * (rho 35353 * seg34AccY86 rho)) =
          (-1) * (rho 35354 * seg34AccX86 rho) - rho 35353 * seg34AccY86 rho +
            (seg34AccY86 rho - seg34AccX86 rho * (-1)) * (rho 35353 + rho 35354) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35360 * (1 - rho 35358) = rho 35355 - rho 35356 - rho 35357 := ha5
        _ = (-1) * rho 35356 - rho 35357 + (seg34AccY86 rho - seg34AccX86 rho * (-1)) * (rho 35353 + rho 35354) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX87 rho = seg34AccX86 rho - Bool.toZMod bit * (seg34AccX86 rho - rho 35359) := by
      have hd : rho 35361 = Bool.toZMod bit * (rho 35359 - seg34AccX86 rho) := by
        rw [← hbit, seg34LadderFlatX86_eq]
        unfold seg34LadderFlatX86
        linear_combination -r4089
      unfold seg34AccX87
      linear_combination hd
    have hsely : seg34AccY87 rho = seg34AccY86 rho - Bool.toZMod bit * (seg34AccY86 rho - rho 35360) := by
      have hd : rho 35362 = Bool.toZMod bit * (rho 35360 - seg34AccY86 rho) := by
        rw [← hbit, seg34LadderFlatY86_eq]
        unfold seg34LadderFlatY86
        linear_combination -r4090
      unfold seg34AccY87
      linear_combination hd
    have hd0 : rho 35353 * rho 35354 = rho 35363 := by linear_combination r4091
    have hd1 : rho 35353 * rho 35353 = rho 35364 := by linear_combination r4092
    have hd2 : rho 35354 * rho 35354 = rho 35365 := by linear_combination r4093
    have hd3 : rho 35366 * (rho 35354 * rho 35354 + rho 35353 * rho 35353 * (-1)) = 2 * (rho 35353 * rho 35354) := by
      rw [hd0, hd1, hd2]
      linear_combination r4094
    have hd4 : rho 35367 * (2 - (rho 35354 * rho 35354 + rho 35353 * rho 35353 * (-1))) = rho 35354 * rho 35354 - rho 35353 * rho 35353 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4095
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX86 rho : Seg34.F), (seg34AccY86 rho : Seg34.F)⟩
      ⟨(rho 35353 : Seg34.F), (rho 35354 : Seg34.F)⟩
      ⟨(rho 35359 : Seg34.F), (rho 35360 : Seg34.F)⟩
      ⟨(seg34AccX87 rho : Seg34.F), (seg34AccY87 rho : Seg34.F)⟩
      ⟨(rho 35366 : Seg34.F), (rho 35367 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung86

theorem seg34_rung87 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34079 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX87 rho : Seg34.F), (seg34AccY87 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35366 : Seg34.F), (rho 35367 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX87 rho : Seg34.F), (seg34AccY87 rho : Seg34.F)⟩
        ⟨(rho 35366 : Seg34.F), (rho 35367 : Seg34.F)⟩
        ⟨(seg34AccX88 rho : Seg34.F), (seg34AccY88 rho : Seg34.F)⟩
        ⟨(rho 35379 : Seg34.F), (rho 35380 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart51 at p51
  rcases p51 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4096, r4097, r4098, r4099, r4100, r4101, r4102, r4103, r4104, r4105, r4106, r4107, r4108, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow4096 Seg34.relationLc470 Seg34.relationLc470Part0 Seg34.relationLc470Part1 Seg34.relationLc470Part2 Seg34.relationLc470Part3 Seg34.relationLc470Part4 Seg34.relationLc470Part5 at r4096
  unfold Seg34.relationRow4097 Seg34.relationLc471 Seg34.relationLc471Part0 Seg34.relationLc471Part1 Seg34.relationLc471Part2 at r4097
  unfold Seg34.relationRow4098 Seg34.relationLc472 Seg34.relationLc472Part0 Seg34.relationLc472Part1 Seg34.relationLc472Part2 at r4098
  unfold Seg34.relationRow4099 at r4099
  unfold Seg34.relationRow4100 at r4100
  unfold Seg34.relationRow4101 at r4101
  unfold Seg34.relationRow4102 Seg34.relationLc473 Seg34.relationLc473Part0 Seg34.relationLc473Part1 Seg34.relationLc473Part2 at r4102
  unfold Seg34.relationRow4103 Seg34.relationLc474 Seg34.relationLc474Part0 Seg34.relationLc474Part1 Seg34.relationLc474Part2 at r4103
  unfold Seg34.relationRow4104 at r4104
  unfold Seg34.relationRow4105 at r4105
  unfold Seg34.relationRow4106 at r4106
  unfold Seg34.relationRow4107 at r4107
  unfold Seg34.relationRow4108 at r4108
  have hrung87 (bit : Bool) (hbit : rho 34079 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX87 rho : Seg34.F), (seg34AccY87 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35366 : Seg34.F), (rho 35367 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX87 rho : Seg34.F), (seg34AccY87 rho : Seg34.F)⟩
        ⟨(rho 35366 : Seg34.F), (rho 35367 : Seg34.F)⟩
        ⟨(seg34AccX88 rho : Seg34.F), (seg34AccY88 rho : Seg34.F)⟩
        ⟨(rho 35379 : Seg34.F), (rho 35380 : Seg34.F)⟩ := by
    have ha0 : (rho 35366 + rho 35367) * (seg34AccX87 rho + seg34AccY87 rho) = rho 35368 := by
      rw [seg34LadderFlatX87_eq, seg34LadderFlatY87_eq]
      unfold seg34LadderFlatX87 seg34LadderFlatY87
      linear_combination r4096
    have ha1 : rho 35367 * seg34AccX87 rho = rho 35369 := by
      rw [seg34LadderFlatX87_eq]
      unfold seg34LadderFlatX87
      linear_combination r4097
    have ha2 : rho 35366 * seg34AccY87 rho = rho 35370 := by
      rw [seg34LadderFlatY87_eq]
      unfold seg34LadderFlatY87
      linear_combination r4098
    have ha3 : 3021 * rho 35369 * rho 35370 = rho 35371 := by
      linear_combination r4099
    have ha4 : rho 35372 * (1 + rho 35371) = rho 35369 + rho 35370 := by
      linear_combination r4100
    have ha5 : rho 35373 * (1 - rho 35371) = rho 35368 - rho 35369 - rho 35370 := by
      linear_combination r4101
    have haddx :
        rho 35372 * (1 + 3021 * (rho 35367 * seg34AccX87 rho) * (rho 35366 * seg34AccY87 rho)) =
          rho 35367 * seg34AccX87 rho + rho 35366 * seg34AccY87 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35373 * (1 - 3021 * (rho 35367 * seg34AccX87 rho) * (rho 35366 * seg34AccY87 rho)) =
          (-1) * (rho 35367 * seg34AccX87 rho) - rho 35366 * seg34AccY87 rho +
            (seg34AccY87 rho - seg34AccX87 rho * (-1)) * (rho 35366 + rho 35367) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35373 * (1 - rho 35371) = rho 35368 - rho 35369 - rho 35370 := ha5
        _ = (-1) * rho 35369 - rho 35370 + (seg34AccY87 rho - seg34AccX87 rho * (-1)) * (rho 35366 + rho 35367) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX88 rho = seg34AccX87 rho - Bool.toZMod bit * (seg34AccX87 rho - rho 35372) := by
      have hd : rho 35374 = Bool.toZMod bit * (rho 35372 - seg34AccX87 rho) := by
        rw [← hbit, seg34LadderFlatX87_eq]
        unfold seg34LadderFlatX87
        linear_combination -r4102
      unfold seg34AccX88
      linear_combination hd
    have hsely : seg34AccY88 rho = seg34AccY87 rho - Bool.toZMod bit * (seg34AccY87 rho - rho 35373) := by
      have hd : rho 35375 = Bool.toZMod bit * (rho 35373 - seg34AccY87 rho) := by
        rw [← hbit, seg34LadderFlatY87_eq]
        unfold seg34LadderFlatY87
        linear_combination -r4103
      unfold seg34AccY88
      linear_combination hd
    have hd0 : rho 35366 * rho 35367 = rho 35376 := by linear_combination r4104
    have hd1 : rho 35366 * rho 35366 = rho 35377 := by linear_combination r4105
    have hd2 : rho 35367 * rho 35367 = rho 35378 := by linear_combination r4106
    have hd3 : rho 35379 * (rho 35367 * rho 35367 + rho 35366 * rho 35366 * (-1)) = 2 * (rho 35366 * rho 35367) := by
      rw [hd0, hd1, hd2]
      linear_combination r4107
    have hd4 : rho 35380 * (2 - (rho 35367 * rho 35367 + rho 35366 * rho 35366 * (-1))) = rho 35367 * rho 35367 - rho 35366 * rho 35366 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4108
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX87 rho : Seg34.F), (seg34AccY87 rho : Seg34.F)⟩
      ⟨(rho 35366 : Seg34.F), (rho 35367 : Seg34.F)⟩
      ⟨(rho 35372 : Seg34.F), (rho 35373 : Seg34.F)⟩
      ⟨(seg34AccX88 rho : Seg34.F), (seg34AccY88 rho : Seg34.F)⟩
      ⟨(rho 35379 : Seg34.F), (rho 35380 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung87

theorem seg34_rung88 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34080 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX88 rho : Seg34.F), (seg34AccY88 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35379 : Seg34.F), (rho 35380 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX88 rho : Seg34.F), (seg34AccY88 rho : Seg34.F)⟩
        ⟨(rho 35379 : Seg34.F), (rho 35380 : Seg34.F)⟩
        ⟨(seg34AccX89 rho : Seg34.F), (seg34AccY89 rho : Seg34.F)⟩
        ⟨(rho 35392 : Seg34.F), (rho 35393 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart51 at p51
  rcases p51 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4109, r4110, r4111, r4112, r4113, r4114, r4115, r4116, r4117, r4118, r4119, r4120, r4121, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow4109 Seg34.relationLc475 Seg34.relationLc475Part0 Seg34.relationLc475Part1 Seg34.relationLc475Part2 Seg34.relationLc475Part3 Seg34.relationLc475Part4 Seg34.relationLc475Part5 at r4109
  unfold Seg34.relationRow4110 Seg34.relationLc476 Seg34.relationLc476Part0 Seg34.relationLc476Part1 Seg34.relationLc476Part2 at r4110
  unfold Seg34.relationRow4111 Seg34.relationLc477 Seg34.relationLc477Part0 Seg34.relationLc477Part1 Seg34.relationLc477Part2 at r4111
  unfold Seg34.relationRow4112 at r4112
  unfold Seg34.relationRow4113 at r4113
  unfold Seg34.relationRow4114 at r4114
  unfold Seg34.relationRow4115 Seg34.relationLc478 Seg34.relationLc478Part0 Seg34.relationLc478Part1 Seg34.relationLc478Part2 at r4115
  unfold Seg34.relationRow4116 Seg34.relationLc479 Seg34.relationLc479Part0 Seg34.relationLc479Part1 Seg34.relationLc479Part2 at r4116
  unfold Seg34.relationRow4117 at r4117
  unfold Seg34.relationRow4118 at r4118
  unfold Seg34.relationRow4119 at r4119
  unfold Seg34.relationRow4120 at r4120
  unfold Seg34.relationRow4121 at r4121
  have hrung88 (bit : Bool) (hbit : rho 34080 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX88 rho : Seg34.F), (seg34AccY88 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35379 : Seg34.F), (rho 35380 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX88 rho : Seg34.F), (seg34AccY88 rho : Seg34.F)⟩
        ⟨(rho 35379 : Seg34.F), (rho 35380 : Seg34.F)⟩
        ⟨(seg34AccX89 rho : Seg34.F), (seg34AccY89 rho : Seg34.F)⟩
        ⟨(rho 35392 : Seg34.F), (rho 35393 : Seg34.F)⟩ := by
    have ha0 : (rho 35379 + rho 35380) * (seg34AccX88 rho + seg34AccY88 rho) = rho 35381 := by
      rw [seg34LadderFlatX88_eq, seg34LadderFlatY88_eq]
      unfold seg34LadderFlatX88 seg34LadderFlatY88
      linear_combination r4109
    have ha1 : rho 35380 * seg34AccX88 rho = rho 35382 := by
      rw [seg34LadderFlatX88_eq]
      unfold seg34LadderFlatX88
      linear_combination r4110
    have ha2 : rho 35379 * seg34AccY88 rho = rho 35383 := by
      rw [seg34LadderFlatY88_eq]
      unfold seg34LadderFlatY88
      linear_combination r4111
    have ha3 : 3021 * rho 35382 * rho 35383 = rho 35384 := by
      linear_combination r4112
    have ha4 : rho 35385 * (1 + rho 35384) = rho 35382 + rho 35383 := by
      linear_combination r4113
    have ha5 : rho 35386 * (1 - rho 35384) = rho 35381 - rho 35382 - rho 35383 := by
      linear_combination r4114
    have haddx :
        rho 35385 * (1 + 3021 * (rho 35380 * seg34AccX88 rho) * (rho 35379 * seg34AccY88 rho)) =
          rho 35380 * seg34AccX88 rho + rho 35379 * seg34AccY88 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35386 * (1 - 3021 * (rho 35380 * seg34AccX88 rho) * (rho 35379 * seg34AccY88 rho)) =
          (-1) * (rho 35380 * seg34AccX88 rho) - rho 35379 * seg34AccY88 rho +
            (seg34AccY88 rho - seg34AccX88 rho * (-1)) * (rho 35379 + rho 35380) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35386 * (1 - rho 35384) = rho 35381 - rho 35382 - rho 35383 := ha5
        _ = (-1) * rho 35382 - rho 35383 + (seg34AccY88 rho - seg34AccX88 rho * (-1)) * (rho 35379 + rho 35380) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX89 rho = seg34AccX88 rho - Bool.toZMod bit * (seg34AccX88 rho - rho 35385) := by
      have hd : rho 35387 = Bool.toZMod bit * (rho 35385 - seg34AccX88 rho) := by
        rw [← hbit, seg34LadderFlatX88_eq]
        unfold seg34LadderFlatX88
        linear_combination -r4115
      unfold seg34AccX89
      linear_combination hd
    have hsely : seg34AccY89 rho = seg34AccY88 rho - Bool.toZMod bit * (seg34AccY88 rho - rho 35386) := by
      have hd : rho 35388 = Bool.toZMod bit * (rho 35386 - seg34AccY88 rho) := by
        rw [← hbit, seg34LadderFlatY88_eq]
        unfold seg34LadderFlatY88
        linear_combination -r4116
      unfold seg34AccY89
      linear_combination hd
    have hd0 : rho 35379 * rho 35380 = rho 35389 := by linear_combination r4117
    have hd1 : rho 35379 * rho 35379 = rho 35390 := by linear_combination r4118
    have hd2 : rho 35380 * rho 35380 = rho 35391 := by linear_combination r4119
    have hd3 : rho 35392 * (rho 35380 * rho 35380 + rho 35379 * rho 35379 * (-1)) = 2 * (rho 35379 * rho 35380) := by
      rw [hd0, hd1, hd2]
      linear_combination r4120
    have hd4 : rho 35393 * (2 - (rho 35380 * rho 35380 + rho 35379 * rho 35379 * (-1))) = rho 35380 * rho 35380 - rho 35379 * rho 35379 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4121
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX88 rho : Seg34.F), (seg34AccY88 rho : Seg34.F)⟩
      ⟨(rho 35379 : Seg34.F), (rho 35380 : Seg34.F)⟩
      ⟨(rho 35385 : Seg34.F), (rho 35386 : Seg34.F)⟩
      ⟨(seg34AccX89 rho : Seg34.F), (seg34AccY89 rho : Seg34.F)⟩
      ⟨(rho 35392 : Seg34.F), (rho 35393 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung88

theorem seg34_rung89 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34081 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX89 rho : Seg34.F), (seg34AccY89 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35392 : Seg34.F), (rho 35393 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX89 rho : Seg34.F), (seg34AccY89 rho : Seg34.F)⟩
        ⟨(rho 35392 : Seg34.F), (rho 35393 : Seg34.F)⟩
        ⟨(seg34AccX90 rho : Seg34.F), (seg34AccY90 rho : Seg34.F)⟩
        ⟨(rho 35405 : Seg34.F), (rho 35406 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart51 at p51
  rcases p51 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4122, r4123, r4124, r4125, r4126, r4127, r4128, r4129, r4130, r4131, r4132, r4133, r4134, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow4122 Seg34.relationLc480 Seg34.relationLc480Part0 Seg34.relationLc480Part1 Seg34.relationLc480Part2 Seg34.relationLc480Part3 Seg34.relationLc480Part4 Seg34.relationLc480Part5 at r4122
  unfold Seg34.relationRow4123 Seg34.relationLc481 Seg34.relationLc481Part0 Seg34.relationLc481Part1 Seg34.relationLc481Part2 at r4123
  unfold Seg34.relationRow4124 Seg34.relationLc482 Seg34.relationLc482Part0 Seg34.relationLc482Part1 Seg34.relationLc482Part2 at r4124
  unfold Seg34.relationRow4125 at r4125
  unfold Seg34.relationRow4126 at r4126
  unfold Seg34.relationRow4127 at r4127
  unfold Seg34.relationRow4128 Seg34.relationLc483 Seg34.relationLc483Part0 Seg34.relationLc483Part1 Seg34.relationLc483Part2 at r4128
  unfold Seg34.relationRow4129 Seg34.relationLc484 Seg34.relationLc484Part0 Seg34.relationLc484Part1 Seg34.relationLc484Part2 at r4129
  unfold Seg34.relationRow4130 at r4130
  unfold Seg34.relationRow4131 at r4131
  unfold Seg34.relationRow4132 at r4132
  unfold Seg34.relationRow4133 at r4133
  unfold Seg34.relationRow4134 at r4134
  have hrung89 (bit : Bool) (hbit : rho 34081 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX89 rho : Seg34.F), (seg34AccY89 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35392 : Seg34.F), (rho 35393 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX89 rho : Seg34.F), (seg34AccY89 rho : Seg34.F)⟩
        ⟨(rho 35392 : Seg34.F), (rho 35393 : Seg34.F)⟩
        ⟨(seg34AccX90 rho : Seg34.F), (seg34AccY90 rho : Seg34.F)⟩
        ⟨(rho 35405 : Seg34.F), (rho 35406 : Seg34.F)⟩ := by
    have ha0 : (rho 35392 + rho 35393) * (seg34AccX89 rho + seg34AccY89 rho) = rho 35394 := by
      rw [seg34LadderFlatX89_eq, seg34LadderFlatY89_eq]
      unfold seg34LadderFlatX89 seg34LadderFlatY89
      linear_combination r4122
    have ha1 : rho 35393 * seg34AccX89 rho = rho 35395 := by
      rw [seg34LadderFlatX89_eq]
      unfold seg34LadderFlatX89
      linear_combination r4123
    have ha2 : rho 35392 * seg34AccY89 rho = rho 35396 := by
      rw [seg34LadderFlatY89_eq]
      unfold seg34LadderFlatY89
      linear_combination r4124
    have ha3 : 3021 * rho 35395 * rho 35396 = rho 35397 := by
      linear_combination r4125
    have ha4 : rho 35398 * (1 + rho 35397) = rho 35395 + rho 35396 := by
      linear_combination r4126
    have ha5 : rho 35399 * (1 - rho 35397) = rho 35394 - rho 35395 - rho 35396 := by
      linear_combination r4127
    have haddx :
        rho 35398 * (1 + 3021 * (rho 35393 * seg34AccX89 rho) * (rho 35392 * seg34AccY89 rho)) =
          rho 35393 * seg34AccX89 rho + rho 35392 * seg34AccY89 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35399 * (1 - 3021 * (rho 35393 * seg34AccX89 rho) * (rho 35392 * seg34AccY89 rho)) =
          (-1) * (rho 35393 * seg34AccX89 rho) - rho 35392 * seg34AccY89 rho +
            (seg34AccY89 rho - seg34AccX89 rho * (-1)) * (rho 35392 + rho 35393) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35399 * (1 - rho 35397) = rho 35394 - rho 35395 - rho 35396 := ha5
        _ = (-1) * rho 35395 - rho 35396 + (seg34AccY89 rho - seg34AccX89 rho * (-1)) * (rho 35392 + rho 35393) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX90 rho = seg34AccX89 rho - Bool.toZMod bit * (seg34AccX89 rho - rho 35398) := by
      have hd : rho 35400 = Bool.toZMod bit * (rho 35398 - seg34AccX89 rho) := by
        rw [← hbit, seg34LadderFlatX89_eq]
        unfold seg34LadderFlatX89
        linear_combination -r4128
      unfold seg34AccX90
      linear_combination hd
    have hsely : seg34AccY90 rho = seg34AccY89 rho - Bool.toZMod bit * (seg34AccY89 rho - rho 35399) := by
      have hd : rho 35401 = Bool.toZMod bit * (rho 35399 - seg34AccY89 rho) := by
        rw [← hbit, seg34LadderFlatY89_eq]
        unfold seg34LadderFlatY89
        linear_combination -r4129
      unfold seg34AccY90
      linear_combination hd
    have hd0 : rho 35392 * rho 35393 = rho 35402 := by linear_combination r4130
    have hd1 : rho 35392 * rho 35392 = rho 35403 := by linear_combination r4131
    have hd2 : rho 35393 * rho 35393 = rho 35404 := by linear_combination r4132
    have hd3 : rho 35405 * (rho 35393 * rho 35393 + rho 35392 * rho 35392 * (-1)) = 2 * (rho 35392 * rho 35393) := by
      rw [hd0, hd1, hd2]
      linear_combination r4133
    have hd4 : rho 35406 * (2 - (rho 35393 * rho 35393 + rho 35392 * rho 35392 * (-1))) = rho 35393 * rho 35393 - rho 35392 * rho 35392 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4134
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX89 rho : Seg34.F), (seg34AccY89 rho : Seg34.F)⟩
      ⟨(rho 35392 : Seg34.F), (rho 35393 : Seg34.F)⟩
      ⟨(rho 35398 : Seg34.F), (rho 35399 : Seg34.F)⟩
      ⟨(seg34AccX90 rho : Seg34.F), (seg34AccY90 rho : Seg34.F)⟩
      ⟨(rho 35405 : Seg34.F), (rho 35406 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung89

theorem seg34_rung90 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34082 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX90 rho : Seg34.F), (seg34AccY90 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35405 : Seg34.F), (rho 35406 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX90 rho : Seg34.F), (seg34AccY90 rho : Seg34.F)⟩
        ⟨(rho 35405 : Seg34.F), (rho 35406 : Seg34.F)⟩
        ⟨(seg34AccX91 rho : Seg34.F), (seg34AccY91 rho : Seg34.F)⟩
        ⟨(rho 35418 : Seg34.F), (rho 35419 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart51 at p51
  rcases p51 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4135, r4136, r4137, r4138, r4139, r4140, r4141, r4142, r4143, r4144, r4145, r4146, r4147, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow4135 Seg34.relationLc485 Seg34.relationLc485Part0 Seg34.relationLc485Part1 Seg34.relationLc485Part2 Seg34.relationLc485Part3 Seg34.relationLc485Part4 Seg34.relationLc485Part5 at r4135
  unfold Seg34.relationRow4136 Seg34.relationLc486 Seg34.relationLc486Part0 Seg34.relationLc486Part1 Seg34.relationLc486Part2 at r4136
  unfold Seg34.relationRow4137 Seg34.relationLc487 Seg34.relationLc487Part0 Seg34.relationLc487Part1 Seg34.relationLc487Part2 at r4137
  unfold Seg34.relationRow4138 at r4138
  unfold Seg34.relationRow4139 at r4139
  unfold Seg34.relationRow4140 at r4140
  unfold Seg34.relationRow4141 Seg34.relationLc488 Seg34.relationLc488Part0 Seg34.relationLc488Part1 Seg34.relationLc488Part2 at r4141
  unfold Seg34.relationRow4142 Seg34.relationLc489 Seg34.relationLc489Part0 Seg34.relationLc489Part1 Seg34.relationLc489Part2 at r4142
  unfold Seg34.relationRow4143 at r4143
  unfold Seg34.relationRow4144 at r4144
  unfold Seg34.relationRow4145 at r4145
  unfold Seg34.relationRow4146 at r4146
  unfold Seg34.relationRow4147 at r4147
  have hrung90 (bit : Bool) (hbit : rho 34082 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX90 rho : Seg34.F), (seg34AccY90 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35405 : Seg34.F), (rho 35406 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX90 rho : Seg34.F), (seg34AccY90 rho : Seg34.F)⟩
        ⟨(rho 35405 : Seg34.F), (rho 35406 : Seg34.F)⟩
        ⟨(seg34AccX91 rho : Seg34.F), (seg34AccY91 rho : Seg34.F)⟩
        ⟨(rho 35418 : Seg34.F), (rho 35419 : Seg34.F)⟩ := by
    have ha0 : (rho 35405 + rho 35406) * (seg34AccX90 rho + seg34AccY90 rho) = rho 35407 := by
      rw [seg34LadderFlatX90_eq, seg34LadderFlatY90_eq]
      unfold seg34LadderFlatX90 seg34LadderFlatY90
      linear_combination r4135
    have ha1 : rho 35406 * seg34AccX90 rho = rho 35408 := by
      rw [seg34LadderFlatX90_eq]
      unfold seg34LadderFlatX90
      linear_combination r4136
    have ha2 : rho 35405 * seg34AccY90 rho = rho 35409 := by
      rw [seg34LadderFlatY90_eq]
      unfold seg34LadderFlatY90
      linear_combination r4137
    have ha3 : 3021 * rho 35408 * rho 35409 = rho 35410 := by
      linear_combination r4138
    have ha4 : rho 35411 * (1 + rho 35410) = rho 35408 + rho 35409 := by
      linear_combination r4139
    have ha5 : rho 35412 * (1 - rho 35410) = rho 35407 - rho 35408 - rho 35409 := by
      linear_combination r4140
    have haddx :
        rho 35411 * (1 + 3021 * (rho 35406 * seg34AccX90 rho) * (rho 35405 * seg34AccY90 rho)) =
          rho 35406 * seg34AccX90 rho + rho 35405 * seg34AccY90 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35412 * (1 - 3021 * (rho 35406 * seg34AccX90 rho) * (rho 35405 * seg34AccY90 rho)) =
          (-1) * (rho 35406 * seg34AccX90 rho) - rho 35405 * seg34AccY90 rho +
            (seg34AccY90 rho - seg34AccX90 rho * (-1)) * (rho 35405 + rho 35406) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35412 * (1 - rho 35410) = rho 35407 - rho 35408 - rho 35409 := ha5
        _ = (-1) * rho 35408 - rho 35409 + (seg34AccY90 rho - seg34AccX90 rho * (-1)) * (rho 35405 + rho 35406) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX91 rho = seg34AccX90 rho - Bool.toZMod bit * (seg34AccX90 rho - rho 35411) := by
      have hd : rho 35413 = Bool.toZMod bit * (rho 35411 - seg34AccX90 rho) := by
        rw [← hbit, seg34LadderFlatX90_eq]
        unfold seg34LadderFlatX90
        linear_combination -r4141
      unfold seg34AccX91
      linear_combination hd
    have hsely : seg34AccY91 rho = seg34AccY90 rho - Bool.toZMod bit * (seg34AccY90 rho - rho 35412) := by
      have hd : rho 35414 = Bool.toZMod bit * (rho 35412 - seg34AccY90 rho) := by
        rw [← hbit, seg34LadderFlatY90_eq]
        unfold seg34LadderFlatY90
        linear_combination -r4142
      unfold seg34AccY91
      linear_combination hd
    have hd0 : rho 35405 * rho 35406 = rho 35415 := by linear_combination r4143
    have hd1 : rho 35405 * rho 35405 = rho 35416 := by linear_combination r4144
    have hd2 : rho 35406 * rho 35406 = rho 35417 := by linear_combination r4145
    have hd3 : rho 35418 * (rho 35406 * rho 35406 + rho 35405 * rho 35405 * (-1)) = 2 * (rho 35405 * rho 35406) := by
      rw [hd0, hd1, hd2]
      linear_combination r4146
    have hd4 : rho 35419 * (2 - (rho 35406 * rho 35406 + rho 35405 * rho 35405 * (-1))) = rho 35406 * rho 35406 - rho 35405 * rho 35405 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4147
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX90 rho : Seg34.F), (seg34AccY90 rho : Seg34.F)⟩
      ⟨(rho 35405 : Seg34.F), (rho 35406 : Seg34.F)⟩
      ⟨(rho 35411 : Seg34.F), (rho 35412 : Seg34.F)⟩
      ⟨(seg34AccX91 rho : Seg34.F), (seg34AccY91 rho : Seg34.F)⟩
      ⟨(rho 35418 : Seg34.F), (rho 35419 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung90

theorem seg34_rung91 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34083 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX91 rho : Seg34.F), (seg34AccY91 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35418 : Seg34.F), (rho 35419 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX91 rho : Seg34.F), (seg34AccY91 rho : Seg34.F)⟩
        ⟨(rho 35418 : Seg34.F), (rho 35419 : Seg34.F)⟩
        ⟨(seg34AccX92 rho : Seg34.F), (seg34AccY92 rho : Seg34.F)⟩
        ⟨(rho 35431 : Seg34.F), (rho 35432 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart51 at p51
  rcases p51 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4148, r4149, r4150, r4151, r4152, r4153, r4154, r4155, r4156, r4157, r4158, r4159⟩
  unfold Seg34.relationPart52 at p52
  rcases p52 with ⟨r4160, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow4148 Seg34.relationLc490 Seg34.relationLc490Part0 Seg34.relationLc490Part1 Seg34.relationLc490Part2 Seg34.relationLc490Part3 Seg34.relationLc490Part4 Seg34.relationLc490Part5 at r4148
  unfold Seg34.relationRow4149 Seg34.relationLc491 Seg34.relationLc491Part0 Seg34.relationLc491Part1 Seg34.relationLc491Part2 at r4149
  unfold Seg34.relationRow4150 Seg34.relationLc492 Seg34.relationLc492Part0 Seg34.relationLc492Part1 Seg34.relationLc492Part2 at r4150
  unfold Seg34.relationRow4151 at r4151
  unfold Seg34.relationRow4152 at r4152
  unfold Seg34.relationRow4153 at r4153
  unfold Seg34.relationRow4154 Seg34.relationLc493 Seg34.relationLc493Part0 Seg34.relationLc493Part1 Seg34.relationLc493Part2 at r4154
  unfold Seg34.relationRow4155 Seg34.relationLc494 Seg34.relationLc494Part0 Seg34.relationLc494Part1 Seg34.relationLc494Part2 at r4155
  unfold Seg34.relationRow4156 at r4156
  unfold Seg34.relationRow4157 at r4157
  unfold Seg34.relationRow4158 at r4158
  unfold Seg34.relationRow4159 at r4159
  unfold Seg34.relationRow4160 at r4160
  have hrung91 (bit : Bool) (hbit : rho 34083 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX91 rho : Seg34.F), (seg34AccY91 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35418 : Seg34.F), (rho 35419 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX91 rho : Seg34.F), (seg34AccY91 rho : Seg34.F)⟩
        ⟨(rho 35418 : Seg34.F), (rho 35419 : Seg34.F)⟩
        ⟨(seg34AccX92 rho : Seg34.F), (seg34AccY92 rho : Seg34.F)⟩
        ⟨(rho 35431 : Seg34.F), (rho 35432 : Seg34.F)⟩ := by
    have ha0 : (rho 35418 + rho 35419) * (seg34AccX91 rho + seg34AccY91 rho) = rho 35420 := by
      rw [seg34LadderFlatX91_eq, seg34LadderFlatY91_eq]
      unfold seg34LadderFlatX91 seg34LadderFlatY91
      linear_combination r4148
    have ha1 : rho 35419 * seg34AccX91 rho = rho 35421 := by
      rw [seg34LadderFlatX91_eq]
      unfold seg34LadderFlatX91
      linear_combination r4149
    have ha2 : rho 35418 * seg34AccY91 rho = rho 35422 := by
      rw [seg34LadderFlatY91_eq]
      unfold seg34LadderFlatY91
      linear_combination r4150
    have ha3 : 3021 * rho 35421 * rho 35422 = rho 35423 := by
      linear_combination r4151
    have ha4 : rho 35424 * (1 + rho 35423) = rho 35421 + rho 35422 := by
      linear_combination r4152
    have ha5 : rho 35425 * (1 - rho 35423) = rho 35420 - rho 35421 - rho 35422 := by
      linear_combination r4153
    have haddx :
        rho 35424 * (1 + 3021 * (rho 35419 * seg34AccX91 rho) * (rho 35418 * seg34AccY91 rho)) =
          rho 35419 * seg34AccX91 rho + rho 35418 * seg34AccY91 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35425 * (1 - 3021 * (rho 35419 * seg34AccX91 rho) * (rho 35418 * seg34AccY91 rho)) =
          (-1) * (rho 35419 * seg34AccX91 rho) - rho 35418 * seg34AccY91 rho +
            (seg34AccY91 rho - seg34AccX91 rho * (-1)) * (rho 35418 + rho 35419) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35425 * (1 - rho 35423) = rho 35420 - rho 35421 - rho 35422 := ha5
        _ = (-1) * rho 35421 - rho 35422 + (seg34AccY91 rho - seg34AccX91 rho * (-1)) * (rho 35418 + rho 35419) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX92 rho = seg34AccX91 rho - Bool.toZMod bit * (seg34AccX91 rho - rho 35424) := by
      have hd : rho 35426 = Bool.toZMod bit * (rho 35424 - seg34AccX91 rho) := by
        rw [← hbit, seg34LadderFlatX91_eq]
        unfold seg34LadderFlatX91
        linear_combination -r4154
      unfold seg34AccX92
      linear_combination hd
    have hsely : seg34AccY92 rho = seg34AccY91 rho - Bool.toZMod bit * (seg34AccY91 rho - rho 35425) := by
      have hd : rho 35427 = Bool.toZMod bit * (rho 35425 - seg34AccY91 rho) := by
        rw [← hbit, seg34LadderFlatY91_eq]
        unfold seg34LadderFlatY91
        linear_combination -r4155
      unfold seg34AccY92
      linear_combination hd
    have hd0 : rho 35418 * rho 35419 = rho 35428 := by linear_combination r4156
    have hd1 : rho 35418 * rho 35418 = rho 35429 := by linear_combination r4157
    have hd2 : rho 35419 * rho 35419 = rho 35430 := by linear_combination r4158
    have hd3 : rho 35431 * (rho 35419 * rho 35419 + rho 35418 * rho 35418 * (-1)) = 2 * (rho 35418 * rho 35419) := by
      rw [hd0, hd1, hd2]
      linear_combination r4159
    have hd4 : rho 35432 * (2 - (rho 35419 * rho 35419 + rho 35418 * rho 35418 * (-1))) = rho 35419 * rho 35419 - rho 35418 * rho 35418 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4160
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX91 rho : Seg34.F), (seg34AccY91 rho : Seg34.F)⟩
      ⟨(rho 35418 : Seg34.F), (rho 35419 : Seg34.F)⟩
      ⟨(rho 35424 : Seg34.F), (rho 35425 : Seg34.F)⟩
      ⟨(seg34AccX92 rho : Seg34.F), (seg34AccY92 rho : Seg34.F)⟩
      ⟨(rho 35431 : Seg34.F), (rho 35432 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung91

theorem seg34_rung92 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34084 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX92 rho : Seg34.F), (seg34AccY92 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35431 : Seg34.F), (rho 35432 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX92 rho : Seg34.F), (seg34AccY92 rho : Seg34.F)⟩
        ⟨(rho 35431 : Seg34.F), (rho 35432 : Seg34.F)⟩
        ⟨(seg34AccX93 rho : Seg34.F), (seg34AccY93 rho : Seg34.F)⟩
        ⟨(rho 35444 : Seg34.F), (rho 35445 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart52 at p52
  rcases p52 with ⟨_, r4161, r4162, r4163, r4164, r4165, r4166, r4167, r4168, r4169, r4170, r4171, r4172, r4173, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow4161 Seg34.relationLc495 Seg34.relationLc495Part0 Seg34.relationLc495Part1 Seg34.relationLc495Part2 Seg34.relationLc495Part3 Seg34.relationLc495Part4 Seg34.relationLc495Part5 at r4161
  unfold Seg34.relationRow4162 Seg34.relationLc496 Seg34.relationLc496Part0 Seg34.relationLc496Part1 Seg34.relationLc496Part2 at r4162
  unfold Seg34.relationRow4163 Seg34.relationLc497 Seg34.relationLc497Part0 Seg34.relationLc497Part1 Seg34.relationLc497Part2 at r4163
  unfold Seg34.relationRow4164 at r4164
  unfold Seg34.relationRow4165 at r4165
  unfold Seg34.relationRow4166 at r4166
  unfold Seg34.relationRow4167 Seg34.relationLc498 Seg34.relationLc498Part0 Seg34.relationLc498Part1 Seg34.relationLc498Part2 at r4167
  unfold Seg34.relationRow4168 Seg34.relationLc499 Seg34.relationLc499Part0 Seg34.relationLc499Part1 Seg34.relationLc499Part2 at r4168
  unfold Seg34.relationRow4169 at r4169
  unfold Seg34.relationRow4170 at r4170
  unfold Seg34.relationRow4171 at r4171
  unfold Seg34.relationRow4172 at r4172
  unfold Seg34.relationRow4173 at r4173
  have hrung92 (bit : Bool) (hbit : rho 34084 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX92 rho : Seg34.F), (seg34AccY92 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35431 : Seg34.F), (rho 35432 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX92 rho : Seg34.F), (seg34AccY92 rho : Seg34.F)⟩
        ⟨(rho 35431 : Seg34.F), (rho 35432 : Seg34.F)⟩
        ⟨(seg34AccX93 rho : Seg34.F), (seg34AccY93 rho : Seg34.F)⟩
        ⟨(rho 35444 : Seg34.F), (rho 35445 : Seg34.F)⟩ := by
    have ha0 : (rho 35431 + rho 35432) * (seg34AccX92 rho + seg34AccY92 rho) = rho 35433 := by
      rw [seg34LadderFlatX92_eq, seg34LadderFlatY92_eq]
      unfold seg34LadderFlatX92 seg34LadderFlatY92
      linear_combination r4161
    have ha1 : rho 35432 * seg34AccX92 rho = rho 35434 := by
      rw [seg34LadderFlatX92_eq]
      unfold seg34LadderFlatX92
      linear_combination r4162
    have ha2 : rho 35431 * seg34AccY92 rho = rho 35435 := by
      rw [seg34LadderFlatY92_eq]
      unfold seg34LadderFlatY92
      linear_combination r4163
    have ha3 : 3021 * rho 35434 * rho 35435 = rho 35436 := by
      linear_combination r4164
    have ha4 : rho 35437 * (1 + rho 35436) = rho 35434 + rho 35435 := by
      linear_combination r4165
    have ha5 : rho 35438 * (1 - rho 35436) = rho 35433 - rho 35434 - rho 35435 := by
      linear_combination r4166
    have haddx :
        rho 35437 * (1 + 3021 * (rho 35432 * seg34AccX92 rho) * (rho 35431 * seg34AccY92 rho)) =
          rho 35432 * seg34AccX92 rho + rho 35431 * seg34AccY92 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35438 * (1 - 3021 * (rho 35432 * seg34AccX92 rho) * (rho 35431 * seg34AccY92 rho)) =
          (-1) * (rho 35432 * seg34AccX92 rho) - rho 35431 * seg34AccY92 rho +
            (seg34AccY92 rho - seg34AccX92 rho * (-1)) * (rho 35431 + rho 35432) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35438 * (1 - rho 35436) = rho 35433 - rho 35434 - rho 35435 := ha5
        _ = (-1) * rho 35434 - rho 35435 + (seg34AccY92 rho - seg34AccX92 rho * (-1)) * (rho 35431 + rho 35432) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX93 rho = seg34AccX92 rho - Bool.toZMod bit * (seg34AccX92 rho - rho 35437) := by
      have hd : rho 35439 = Bool.toZMod bit * (rho 35437 - seg34AccX92 rho) := by
        rw [← hbit, seg34LadderFlatX92_eq]
        unfold seg34LadderFlatX92
        linear_combination -r4167
      unfold seg34AccX93
      linear_combination hd
    have hsely : seg34AccY93 rho = seg34AccY92 rho - Bool.toZMod bit * (seg34AccY92 rho - rho 35438) := by
      have hd : rho 35440 = Bool.toZMod bit * (rho 35438 - seg34AccY92 rho) := by
        rw [← hbit, seg34LadderFlatY92_eq]
        unfold seg34LadderFlatY92
        linear_combination -r4168
      unfold seg34AccY93
      linear_combination hd
    have hd0 : rho 35431 * rho 35432 = rho 35441 := by linear_combination r4169
    have hd1 : rho 35431 * rho 35431 = rho 35442 := by linear_combination r4170
    have hd2 : rho 35432 * rho 35432 = rho 35443 := by linear_combination r4171
    have hd3 : rho 35444 * (rho 35432 * rho 35432 + rho 35431 * rho 35431 * (-1)) = 2 * (rho 35431 * rho 35432) := by
      rw [hd0, hd1, hd2]
      linear_combination r4172
    have hd4 : rho 35445 * (2 - (rho 35432 * rho 35432 + rho 35431 * rho 35431 * (-1))) = rho 35432 * rho 35432 - rho 35431 * rho 35431 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4173
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX92 rho : Seg34.F), (seg34AccY92 rho : Seg34.F)⟩
      ⟨(rho 35431 : Seg34.F), (rho 35432 : Seg34.F)⟩
      ⟨(rho 35437 : Seg34.F), (rho 35438 : Seg34.F)⟩
      ⟨(seg34AccX93 rho : Seg34.F), (seg34AccY93 rho : Seg34.F)⟩
      ⟨(rho 35444 : Seg34.F), (rho 35445 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung92

theorem seg34_rung93 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34085 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX93 rho : Seg34.F), (seg34AccY93 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35444 : Seg34.F), (rho 35445 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX93 rho : Seg34.F), (seg34AccY93 rho : Seg34.F)⟩
        ⟨(rho 35444 : Seg34.F), (rho 35445 : Seg34.F)⟩
        ⟨(seg34AccX94 rho : Seg34.F), (seg34AccY94 rho : Seg34.F)⟩
        ⟨(rho 35457 : Seg34.F), (rho 35458 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart52 at p52
  rcases p52 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, r4174, r4175, r4176, r4177, r4178, r4179, r4180, r4181, r4182, r4183, r4184, r4185, r4186, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow4174 Seg34.relationLc500 Seg34.relationLc500Part0 Seg34.relationLc500Part1 Seg34.relationLc500Part2 Seg34.relationLc500Part3 Seg34.relationLc500Part4 Seg34.relationLc500Part5 at r4174
  unfold Seg34.relationRow4175 Seg34.relationLc501 Seg34.relationLc501Part0 Seg34.relationLc501Part1 Seg34.relationLc501Part2 at r4175
  unfold Seg34.relationRow4176 Seg34.relationLc502 Seg34.relationLc502Part0 Seg34.relationLc502Part1 Seg34.relationLc502Part2 at r4176
  unfold Seg34.relationRow4177 at r4177
  unfold Seg34.relationRow4178 at r4178
  unfold Seg34.relationRow4179 at r4179
  unfold Seg34.relationRow4180 Seg34.relationLc503 Seg34.relationLc503Part0 Seg34.relationLc503Part1 Seg34.relationLc503Part2 at r4180
  unfold Seg34.relationRow4181 Seg34.relationLc504 Seg34.relationLc504Part0 Seg34.relationLc504Part1 Seg34.relationLc504Part2 at r4181
  unfold Seg34.relationRow4182 at r4182
  unfold Seg34.relationRow4183 at r4183
  unfold Seg34.relationRow4184 at r4184
  unfold Seg34.relationRow4185 at r4185
  unfold Seg34.relationRow4186 at r4186
  have hrung93 (bit : Bool) (hbit : rho 34085 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX93 rho : Seg34.F), (seg34AccY93 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35444 : Seg34.F), (rho 35445 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX93 rho : Seg34.F), (seg34AccY93 rho : Seg34.F)⟩
        ⟨(rho 35444 : Seg34.F), (rho 35445 : Seg34.F)⟩
        ⟨(seg34AccX94 rho : Seg34.F), (seg34AccY94 rho : Seg34.F)⟩
        ⟨(rho 35457 : Seg34.F), (rho 35458 : Seg34.F)⟩ := by
    have ha0 : (rho 35444 + rho 35445) * (seg34AccX93 rho + seg34AccY93 rho) = rho 35446 := by
      rw [seg34LadderFlatX93_eq, seg34LadderFlatY93_eq]
      unfold seg34LadderFlatX93 seg34LadderFlatY93
      linear_combination r4174
    have ha1 : rho 35445 * seg34AccX93 rho = rho 35447 := by
      rw [seg34LadderFlatX93_eq]
      unfold seg34LadderFlatX93
      linear_combination r4175
    have ha2 : rho 35444 * seg34AccY93 rho = rho 35448 := by
      rw [seg34LadderFlatY93_eq]
      unfold seg34LadderFlatY93
      linear_combination r4176
    have ha3 : 3021 * rho 35447 * rho 35448 = rho 35449 := by
      linear_combination r4177
    have ha4 : rho 35450 * (1 + rho 35449) = rho 35447 + rho 35448 := by
      linear_combination r4178
    have ha5 : rho 35451 * (1 - rho 35449) = rho 35446 - rho 35447 - rho 35448 := by
      linear_combination r4179
    have haddx :
        rho 35450 * (1 + 3021 * (rho 35445 * seg34AccX93 rho) * (rho 35444 * seg34AccY93 rho)) =
          rho 35445 * seg34AccX93 rho + rho 35444 * seg34AccY93 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35451 * (1 - 3021 * (rho 35445 * seg34AccX93 rho) * (rho 35444 * seg34AccY93 rho)) =
          (-1) * (rho 35445 * seg34AccX93 rho) - rho 35444 * seg34AccY93 rho +
            (seg34AccY93 rho - seg34AccX93 rho * (-1)) * (rho 35444 + rho 35445) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35451 * (1 - rho 35449) = rho 35446 - rho 35447 - rho 35448 := ha5
        _ = (-1) * rho 35447 - rho 35448 + (seg34AccY93 rho - seg34AccX93 rho * (-1)) * (rho 35444 + rho 35445) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX94 rho = seg34AccX93 rho - Bool.toZMod bit * (seg34AccX93 rho - rho 35450) := by
      have hd : rho 35452 = Bool.toZMod bit * (rho 35450 - seg34AccX93 rho) := by
        rw [← hbit, seg34LadderFlatX93_eq]
        unfold seg34LadderFlatX93
        linear_combination -r4180
      unfold seg34AccX94
      linear_combination hd
    have hsely : seg34AccY94 rho = seg34AccY93 rho - Bool.toZMod bit * (seg34AccY93 rho - rho 35451) := by
      have hd : rho 35453 = Bool.toZMod bit * (rho 35451 - seg34AccY93 rho) := by
        rw [← hbit, seg34LadderFlatY93_eq]
        unfold seg34LadderFlatY93
        linear_combination -r4181
      unfold seg34AccY94
      linear_combination hd
    have hd0 : rho 35444 * rho 35445 = rho 35454 := by linear_combination r4182
    have hd1 : rho 35444 * rho 35444 = rho 35455 := by linear_combination r4183
    have hd2 : rho 35445 * rho 35445 = rho 35456 := by linear_combination r4184
    have hd3 : rho 35457 * (rho 35445 * rho 35445 + rho 35444 * rho 35444 * (-1)) = 2 * (rho 35444 * rho 35445) := by
      rw [hd0, hd1, hd2]
      linear_combination r4185
    have hd4 : rho 35458 * (2 - (rho 35445 * rho 35445 + rho 35444 * rho 35444 * (-1))) = rho 35445 * rho 35445 - rho 35444 * rho 35444 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4186
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX93 rho : Seg34.F), (seg34AccY93 rho : Seg34.F)⟩
      ⟨(rho 35444 : Seg34.F), (rho 35445 : Seg34.F)⟩
      ⟨(rho 35450 : Seg34.F), (rho 35451 : Seg34.F)⟩
      ⟨(seg34AccX94 rho : Seg34.F), (seg34AccY94 rho : Seg34.F)⟩
      ⟨(rho 35457 : Seg34.F), (rho 35458 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung93

theorem seg34_rung94 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34086 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX94 rho : Seg34.F), (seg34AccY94 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35457 : Seg34.F), (rho 35458 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX94 rho : Seg34.F), (seg34AccY94 rho : Seg34.F)⟩
        ⟨(rho 35457 : Seg34.F), (rho 35458 : Seg34.F)⟩
        ⟨(seg34AccX95 rho : Seg34.F), (seg34AccY95 rho : Seg34.F)⟩
        ⟨(rho 35470 : Seg34.F), (rho 35471 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart52 at p52
  rcases p52 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4187, r4188, r4189, r4190, r4191, r4192, r4193, r4194, r4195, r4196, r4197, r4198, r4199, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow4187 Seg34.relationLc505 Seg34.relationLc505Part0 Seg34.relationLc505Part1 Seg34.relationLc505Part2 Seg34.relationLc505Part3 Seg34.relationLc505Part4 Seg34.relationLc505Part5 at r4187
  unfold Seg34.relationRow4188 Seg34.relationLc506 Seg34.relationLc506Part0 Seg34.relationLc506Part1 Seg34.relationLc506Part2 at r4188
  unfold Seg34.relationRow4189 Seg34.relationLc507 Seg34.relationLc507Part0 Seg34.relationLc507Part1 Seg34.relationLc507Part2 at r4189
  unfold Seg34.relationRow4190 at r4190
  unfold Seg34.relationRow4191 at r4191
  unfold Seg34.relationRow4192 at r4192
  unfold Seg34.relationRow4193 Seg34.relationLc508 Seg34.relationLc508Part0 Seg34.relationLc508Part1 Seg34.relationLc508Part2 at r4193
  unfold Seg34.relationRow4194 Seg34.relationLc509 Seg34.relationLc509Part0 Seg34.relationLc509Part1 Seg34.relationLc509Part2 at r4194
  unfold Seg34.relationRow4195 at r4195
  unfold Seg34.relationRow4196 at r4196
  unfold Seg34.relationRow4197 at r4197
  unfold Seg34.relationRow4198 at r4198
  unfold Seg34.relationRow4199 at r4199
  have hrung94 (bit : Bool) (hbit : rho 34086 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX94 rho : Seg34.F), (seg34AccY94 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35457 : Seg34.F), (rho 35458 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX94 rho : Seg34.F), (seg34AccY94 rho : Seg34.F)⟩
        ⟨(rho 35457 : Seg34.F), (rho 35458 : Seg34.F)⟩
        ⟨(seg34AccX95 rho : Seg34.F), (seg34AccY95 rho : Seg34.F)⟩
        ⟨(rho 35470 : Seg34.F), (rho 35471 : Seg34.F)⟩ := by
    have ha0 : (rho 35457 + rho 35458) * (seg34AccX94 rho + seg34AccY94 rho) = rho 35459 := by
      rw [seg34LadderFlatX94_eq, seg34LadderFlatY94_eq]
      unfold seg34LadderFlatX94 seg34LadderFlatY94
      linear_combination r4187
    have ha1 : rho 35458 * seg34AccX94 rho = rho 35460 := by
      rw [seg34LadderFlatX94_eq]
      unfold seg34LadderFlatX94
      linear_combination r4188
    have ha2 : rho 35457 * seg34AccY94 rho = rho 35461 := by
      rw [seg34LadderFlatY94_eq]
      unfold seg34LadderFlatY94
      linear_combination r4189
    have ha3 : 3021 * rho 35460 * rho 35461 = rho 35462 := by
      linear_combination r4190
    have ha4 : rho 35463 * (1 + rho 35462) = rho 35460 + rho 35461 := by
      linear_combination r4191
    have ha5 : rho 35464 * (1 - rho 35462) = rho 35459 - rho 35460 - rho 35461 := by
      linear_combination r4192
    have haddx :
        rho 35463 * (1 + 3021 * (rho 35458 * seg34AccX94 rho) * (rho 35457 * seg34AccY94 rho)) =
          rho 35458 * seg34AccX94 rho + rho 35457 * seg34AccY94 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35464 * (1 - 3021 * (rho 35458 * seg34AccX94 rho) * (rho 35457 * seg34AccY94 rho)) =
          (-1) * (rho 35458 * seg34AccX94 rho) - rho 35457 * seg34AccY94 rho +
            (seg34AccY94 rho - seg34AccX94 rho * (-1)) * (rho 35457 + rho 35458) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35464 * (1 - rho 35462) = rho 35459 - rho 35460 - rho 35461 := ha5
        _ = (-1) * rho 35460 - rho 35461 + (seg34AccY94 rho - seg34AccX94 rho * (-1)) * (rho 35457 + rho 35458) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX95 rho = seg34AccX94 rho - Bool.toZMod bit * (seg34AccX94 rho - rho 35463) := by
      have hd : rho 35465 = Bool.toZMod bit * (rho 35463 - seg34AccX94 rho) := by
        rw [← hbit, seg34LadderFlatX94_eq]
        unfold seg34LadderFlatX94
        linear_combination -r4193
      unfold seg34AccX95
      linear_combination hd
    have hsely : seg34AccY95 rho = seg34AccY94 rho - Bool.toZMod bit * (seg34AccY94 rho - rho 35464) := by
      have hd : rho 35466 = Bool.toZMod bit * (rho 35464 - seg34AccY94 rho) := by
        rw [← hbit, seg34LadderFlatY94_eq]
        unfold seg34LadderFlatY94
        linear_combination -r4194
      unfold seg34AccY95
      linear_combination hd
    have hd0 : rho 35457 * rho 35458 = rho 35467 := by linear_combination r4195
    have hd1 : rho 35457 * rho 35457 = rho 35468 := by linear_combination r4196
    have hd2 : rho 35458 * rho 35458 = rho 35469 := by linear_combination r4197
    have hd3 : rho 35470 * (rho 35458 * rho 35458 + rho 35457 * rho 35457 * (-1)) = 2 * (rho 35457 * rho 35458) := by
      rw [hd0, hd1, hd2]
      linear_combination r4198
    have hd4 : rho 35471 * (2 - (rho 35458 * rho 35458 + rho 35457 * rho 35457 * (-1))) = rho 35458 * rho 35458 - rho 35457 * rho 35457 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4199
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX94 rho : Seg34.F), (seg34AccY94 rho : Seg34.F)⟩
      ⟨(rho 35457 : Seg34.F), (rho 35458 : Seg34.F)⟩
      ⟨(rho 35463 : Seg34.F), (rho 35464 : Seg34.F)⟩
      ⟨(seg34AccX95 rho : Seg34.F), (seg34AccY95 rho : Seg34.F)⟩
      ⟨(rho 35470 : Seg34.F), (rho 35471 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung94

theorem seg34_rung95 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34087 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX95 rho : Seg34.F), (seg34AccY95 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35470 : Seg34.F), (rho 35471 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX95 rho : Seg34.F), (seg34AccY95 rho : Seg34.F)⟩
        ⟨(rho 35470 : Seg34.F), (rho 35471 : Seg34.F)⟩
        ⟨(seg34AccX96 rho : Seg34.F), (seg34AccY96 rho : Seg34.F)⟩
        ⟨(rho 35483 : Seg34.F), (rho 35484 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart52 at p52
  rcases p52 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4200, r4201, r4202, r4203, r4204, r4205, r4206, r4207, r4208, r4209, r4210, r4211, r4212, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow4200 Seg34.relationLc510 Seg34.relationLc510Part0 Seg34.relationLc510Part1 Seg34.relationLc510Part2 Seg34.relationLc510Part3 Seg34.relationLc510Part4 Seg34.relationLc510Part5 at r4200
  unfold Seg34.relationRow4201 Seg34.relationLc511 Seg34.relationLc511Part0 Seg34.relationLc511Part1 Seg34.relationLc511Part2 at r4201
  unfold Seg34.relationRow4202 Seg34.relationLc512 Seg34.relationLc512Part0 Seg34.relationLc512Part1 Seg34.relationLc512Part2 at r4202
  unfold Seg34.relationRow4203 at r4203
  unfold Seg34.relationRow4204 at r4204
  unfold Seg34.relationRow4205 at r4205
  unfold Seg34.relationRow4206 Seg34.relationLc513 Seg34.relationLc513Part0 Seg34.relationLc513Part1 Seg34.relationLc513Part2 at r4206
  unfold Seg34.relationRow4207 Seg34.relationLc514 Seg34.relationLc514Part0 Seg34.relationLc514Part1 Seg34.relationLc514Part2 Seg34.relationLc514Part3 at r4207
  unfold Seg34.relationRow4208 at r4208
  unfold Seg34.relationRow4209 at r4209
  unfold Seg34.relationRow4210 at r4210
  unfold Seg34.relationRow4211 at r4211
  unfold Seg34.relationRow4212 at r4212
  have hrung95 (bit : Bool) (hbit : rho 34087 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX95 rho : Seg34.F), (seg34AccY95 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35470 : Seg34.F), (rho 35471 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX95 rho : Seg34.F), (seg34AccY95 rho : Seg34.F)⟩
        ⟨(rho 35470 : Seg34.F), (rho 35471 : Seg34.F)⟩
        ⟨(seg34AccX96 rho : Seg34.F), (seg34AccY96 rho : Seg34.F)⟩
        ⟨(rho 35483 : Seg34.F), (rho 35484 : Seg34.F)⟩ := by
    have ha0 : (rho 35470 + rho 35471) * (seg34AccX95 rho + seg34AccY95 rho) = rho 35472 := by
      rw [seg34LadderFlatX95_eq, seg34LadderFlatY95_eq]
      unfold seg34LadderFlatX95 seg34LadderFlatY95
      linear_combination r4200
    have ha1 : rho 35471 * seg34AccX95 rho = rho 35473 := by
      rw [seg34LadderFlatX95_eq]
      unfold seg34LadderFlatX95
      linear_combination r4201
    have ha2 : rho 35470 * seg34AccY95 rho = rho 35474 := by
      rw [seg34LadderFlatY95_eq]
      unfold seg34LadderFlatY95
      linear_combination r4202
    have ha3 : 3021 * rho 35473 * rho 35474 = rho 35475 := by
      linear_combination r4203
    have ha4 : rho 35476 * (1 + rho 35475) = rho 35473 + rho 35474 := by
      linear_combination r4204
    have ha5 : rho 35477 * (1 - rho 35475) = rho 35472 - rho 35473 - rho 35474 := by
      linear_combination r4205
    have haddx :
        rho 35476 * (1 + 3021 * (rho 35471 * seg34AccX95 rho) * (rho 35470 * seg34AccY95 rho)) =
          rho 35471 * seg34AccX95 rho + rho 35470 * seg34AccY95 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35477 * (1 - 3021 * (rho 35471 * seg34AccX95 rho) * (rho 35470 * seg34AccY95 rho)) =
          (-1) * (rho 35471 * seg34AccX95 rho) - rho 35470 * seg34AccY95 rho +
            (seg34AccY95 rho - seg34AccX95 rho * (-1)) * (rho 35470 + rho 35471) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35477 * (1 - rho 35475) = rho 35472 - rho 35473 - rho 35474 := ha5
        _ = (-1) * rho 35473 - rho 35474 + (seg34AccY95 rho - seg34AccX95 rho * (-1)) * (rho 35470 + rho 35471) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX96 rho = seg34AccX95 rho - Bool.toZMod bit * (seg34AccX95 rho - rho 35476) := by
      have hd : rho 35478 = Bool.toZMod bit * (rho 35476 - seg34AccX95 rho) := by
        rw [← hbit, seg34LadderFlatX95_eq]
        unfold seg34LadderFlatX95
        linear_combination -r4206
      unfold seg34AccX96
      linear_combination hd
    have hsely : seg34AccY96 rho = seg34AccY95 rho - Bool.toZMod bit * (seg34AccY95 rho - rho 35477) := by
      have hd : rho 35479 = Bool.toZMod bit * (rho 35477 - seg34AccY95 rho) := by
        rw [← hbit, seg34LadderFlatY95_eq]
        unfold seg34LadderFlatY95
        linear_combination -r4207
      unfold seg34AccY96
      linear_combination hd
    have hd0 : rho 35470 * rho 35471 = rho 35480 := by linear_combination r4208
    have hd1 : rho 35470 * rho 35470 = rho 35481 := by linear_combination r4209
    have hd2 : rho 35471 * rho 35471 = rho 35482 := by linear_combination r4210
    have hd3 : rho 35483 * (rho 35471 * rho 35471 + rho 35470 * rho 35470 * (-1)) = 2 * (rho 35470 * rho 35471) := by
      rw [hd0, hd1, hd2]
      linear_combination r4211
    have hd4 : rho 35484 * (2 - (rho 35471 * rho 35471 + rho 35470 * rho 35470 * (-1))) = rho 35471 * rho 35471 - rho 35470 * rho 35470 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4212
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX95 rho : Seg34.F), (seg34AccY95 rho : Seg34.F)⟩
      ⟨(rho 35470 : Seg34.F), (rho 35471 : Seg34.F)⟩
      ⟨(rho 35476 : Seg34.F), (rho 35477 : Seg34.F)⟩
      ⟨(seg34AccX96 rho : Seg34.F), (seg34AccY96 rho : Seg34.F)⟩
      ⟨(rho 35483 : Seg34.F), (rho 35484 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung95

theorem seg34_hstep_c2 (rho : Nat -> Seg34.F) (h : Seg34.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (33992 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 64 ≤ i → i < 96 →
      EdwardsBridge.onCurve (seg34LadderAccState rho i) →
      EdwardsBridge.onCurve (seg34LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg34LadderAccState rho i) (seg34LadderCurState rho i)
        (seg34LadderAccState rho (i + 1)) (seg34LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg34_rung64 rho h bits[64]! (hbitAt 64 (by omega)) hacc hcur
  · exact seg34_rung65 rho h bits[65]! (hbitAt 65 (by omega)) hacc hcur
  · exact seg34_rung66 rho h bits[66]! (hbitAt 66 (by omega)) hacc hcur
  · exact seg34_rung67 rho h bits[67]! (hbitAt 67 (by omega)) hacc hcur
  · exact seg34_rung68 rho h bits[68]! (hbitAt 68 (by omega)) hacc hcur
  · exact seg34_rung69 rho h bits[69]! (hbitAt 69 (by omega)) hacc hcur
  · exact seg34_rung70 rho h bits[70]! (hbitAt 70 (by omega)) hacc hcur
  · exact seg34_rung71 rho h bits[71]! (hbitAt 71 (by omega)) hacc hcur
  · exact seg34_rung72 rho h bits[72]! (hbitAt 72 (by omega)) hacc hcur
  · exact seg34_rung73 rho h bits[73]! (hbitAt 73 (by omega)) hacc hcur
  · exact seg34_rung74 rho h bits[74]! (hbitAt 74 (by omega)) hacc hcur
  · exact seg34_rung75 rho h bits[75]! (hbitAt 75 (by omega)) hacc hcur
  · exact seg34_rung76 rho h bits[76]! (hbitAt 76 (by omega)) hacc hcur
  · exact seg34_rung77 rho h bits[77]! (hbitAt 77 (by omega)) hacc hcur
  · exact seg34_rung78 rho h bits[78]! (hbitAt 78 (by omega)) hacc hcur
  · exact seg34_rung79 rho h bits[79]! (hbitAt 79 (by omega)) hacc hcur
  · exact seg34_rung80 rho h bits[80]! (hbitAt 80 (by omega)) hacc hcur
  · exact seg34_rung81 rho h bits[81]! (hbitAt 81 (by omega)) hacc hcur
  · exact seg34_rung82 rho h bits[82]! (hbitAt 82 (by omega)) hacc hcur
  · exact seg34_rung83 rho h bits[83]! (hbitAt 83 (by omega)) hacc hcur
  · exact seg34_rung84 rho h bits[84]! (hbitAt 84 (by omega)) hacc hcur
  · exact seg34_rung85 rho h bits[85]! (hbitAt 85 (by omega)) hacc hcur
  · exact seg34_rung86 rho h bits[86]! (hbitAt 86 (by omega)) hacc hcur
  · exact seg34_rung87 rho h bits[87]! (hbitAt 87 (by omega)) hacc hcur
  · exact seg34_rung88 rho h bits[88]! (hbitAt 88 (by omega)) hacc hcur
  · exact seg34_rung89 rho h bits[89]! (hbitAt 89 (by omega)) hacc hcur
  · exact seg34_rung90 rho h bits[90]! (hbitAt 90 (by omega)) hacc hcur
  · exact seg34_rung91 rho h bits[91]! (hbitAt 91 (by omega)) hacc hcur
  · exact seg34_rung92 rho h bits[92]! (hbitAt 92 (by omega)) hacc hcur
  · exact seg34_rung93 rho h bits[93]! (hbitAt 93 (by omega)) hacc hcur
  · exact seg34_rung94 rho h bits[94]! (hbitAt 94 (by omega)) hacc hcur
  · exact seg34_rung95 rho h bits[95]! (hbitAt 95 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
