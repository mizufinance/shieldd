import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg45_rung64 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41012 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX64 rho : Seg45.F), (seg45AccY64 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42023 : Seg45.F), (rho 42024 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX64 rho : Seg45.F), (seg45AccY64 rho : Seg45.F)⟩
        ⟨(rho 42023 : Seg45.F), (rho 42024 : Seg45.F)⟩
        ⟨(seg45AccX65 rho : Seg45.F), (seg45AccY65 rho : Seg45.F)⟩
        ⟨(rho 42036 : Seg45.F), (rho 42037 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart47 at p47
  rcases p47 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3797, r3798, r3799, r3800, r3801, r3802, r3803, r3804, r3805, r3806, r3807, r3808, r3809, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow3797 Seg45.relationLc355 Seg45.relationLc355Part0 Seg45.relationLc355Part1 Seg45.relationLc355Part2 Seg45.relationLc355Part3 Seg45.relationLc355Part4 at r3797
  unfold Seg45.relationRow3798 Seg45.relationLc356 Seg45.relationLc356Part0 Seg45.relationLc356Part1 at r3798
  unfold Seg45.relationRow3799 Seg45.relationLc357 Seg45.relationLc357Part0 Seg45.relationLc357Part1 Seg45.relationLc357Part2 at r3799
  unfold Seg45.relationRow3800 at r3800
  unfold Seg45.relationRow3801 at r3801
  unfold Seg45.relationRow3802 at r3802
  unfold Seg45.relationRow3803 Seg45.relationLc358 Seg45.relationLc358Part0 Seg45.relationLc358Part1 Seg45.relationLc358Part2 at r3803
  unfold Seg45.relationRow3804 Seg45.relationLc359 Seg45.relationLc359Part0 Seg45.relationLc359Part1 Seg45.relationLc359Part2 at r3804
  unfold Seg45.relationRow3805 at r3805
  unfold Seg45.relationRow3806 at r3806
  unfold Seg45.relationRow3807 at r3807
  unfold Seg45.relationRow3808 at r3808
  unfold Seg45.relationRow3809 at r3809
  have hrung64 (bit : Bool) (hbit : rho 41012 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX64 rho : Seg45.F), (seg45AccY64 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42023 : Seg45.F), (rho 42024 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX64 rho : Seg45.F), (seg45AccY64 rho : Seg45.F)⟩
        ⟨(rho 42023 : Seg45.F), (rho 42024 : Seg45.F)⟩
        ⟨(seg45AccX65 rho : Seg45.F), (seg45AccY65 rho : Seg45.F)⟩
        ⟨(rho 42036 : Seg45.F), (rho 42037 : Seg45.F)⟩ := by
    have ha0 : (rho 42023 + rho 42024) * (seg45AccX64 rho + seg45AccY64 rho) = rho 42025 := by
      rw [seg45LadderFlatX64_eq, seg45LadderFlatY64_eq]
      unfold seg45LadderFlatX64 seg45LadderFlatY64
      linear_combination r3797
    have ha1 : rho 42024 * seg45AccX64 rho = rho 42026 := by
      rw [seg45LadderFlatX64_eq]
      unfold seg45LadderFlatX64
      linear_combination r3798
    have ha2 : rho 42023 * seg45AccY64 rho = rho 42027 := by
      rw [seg45LadderFlatY64_eq]
      unfold seg45LadderFlatY64
      linear_combination r3799
    have ha3 : 3021 * rho 42026 * rho 42027 = rho 42028 := by
      linear_combination r3800
    have ha4 : rho 42029 * (1 + rho 42028) = rho 42026 + rho 42027 := by
      linear_combination r3801
    have ha5 : rho 42030 * (1 - rho 42028) = rho 42025 - rho 42026 - rho 42027 := by
      linear_combination r3802
    have haddx :
        rho 42029 * (1 + 3021 * (rho 42024 * seg45AccX64 rho) * (rho 42023 * seg45AccY64 rho)) =
          rho 42024 * seg45AccX64 rho + rho 42023 * seg45AccY64 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42030 * (1 - 3021 * (rho 42024 * seg45AccX64 rho) * (rho 42023 * seg45AccY64 rho)) =
          (-1) * (rho 42024 * seg45AccX64 rho) - rho 42023 * seg45AccY64 rho +
            (seg45AccY64 rho - seg45AccX64 rho * (-1)) * (rho 42023 + rho 42024) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42030 * (1 - rho 42028) = rho 42025 - rho 42026 - rho 42027 := ha5
        _ = (-1) * rho 42026 - rho 42027 + (seg45AccY64 rho - seg45AccX64 rho * (-1)) * (rho 42023 + rho 42024) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX65 rho = seg45AccX64 rho - Bool.toZMod bit * (seg45AccX64 rho - rho 42029) := by
      have hd : rho 42031 = Bool.toZMod bit * (rho 42029 - seg45AccX64 rho) := by
        rw [← hbit, seg45LadderFlatX64_eq]
        unfold seg45LadderFlatX64
        linear_combination -r3803
      unfold seg45AccX65
      linear_combination hd
    have hsely : seg45AccY65 rho = seg45AccY64 rho - Bool.toZMod bit * (seg45AccY64 rho - rho 42030) := by
      have hd : rho 42032 = Bool.toZMod bit * (rho 42030 - seg45AccY64 rho) := by
        rw [← hbit, seg45LadderFlatY64_eq]
        unfold seg45LadderFlatY64
        linear_combination -r3804
      unfold seg45AccY65
      linear_combination hd
    have hd0 : rho 42023 * rho 42024 = rho 42033 := by linear_combination r3805
    have hd1 : rho 42023 * rho 42023 = rho 42034 := by linear_combination r3806
    have hd2 : rho 42024 * rho 42024 = rho 42035 := by linear_combination r3807
    have hd3 : rho 42036 * (rho 42024 * rho 42024 + rho 42023 * rho 42023 * (-1)) = 2 * (rho 42023 * rho 42024) := by
      rw [hd0, hd1, hd2]
      linear_combination r3808
    have hd4 : rho 42037 * (2 - (rho 42024 * rho 42024 + rho 42023 * rho 42023 * (-1))) = rho 42024 * rho 42024 - rho 42023 * rho 42023 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3809
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX64 rho : Seg45.F), (seg45AccY64 rho : Seg45.F)⟩
      ⟨(rho 42023 : Seg45.F), (rho 42024 : Seg45.F)⟩
      ⟨(rho 42029 : Seg45.F), (rho 42030 : Seg45.F)⟩
      ⟨(seg45AccX65 rho : Seg45.F), (seg45AccY65 rho : Seg45.F)⟩
      ⟨(rho 42036 : Seg45.F), (rho 42037 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung64

theorem seg45_rung65 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41013 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX65 rho : Seg45.F), (seg45AccY65 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42036 : Seg45.F), (rho 42037 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX65 rho : Seg45.F), (seg45AccY65 rho : Seg45.F)⟩
        ⟨(rho 42036 : Seg45.F), (rho 42037 : Seg45.F)⟩
        ⟨(seg45AccX66 rho : Seg45.F), (seg45AccY66 rho : Seg45.F)⟩
        ⟨(rho 42049 : Seg45.F), (rho 42050 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart47 at p47
  rcases p47 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3810, r3811, r3812, r3813, r3814, r3815, r3816, r3817, r3818, r3819, r3820, r3821, r3822, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow3810 Seg45.relationLc360 Seg45.relationLc360Part0 Seg45.relationLc360Part1 Seg45.relationLc360Part2 Seg45.relationLc360Part3 Seg45.relationLc360Part4 at r3810
  unfold Seg45.relationRow3811 Seg45.relationLc361 Seg45.relationLc361Part0 Seg45.relationLc361Part1 Seg45.relationLc361Part2 at r3811
  unfold Seg45.relationRow3812 Seg45.relationLc362 Seg45.relationLc362Part0 Seg45.relationLc362Part1 Seg45.relationLc362Part2 at r3812
  unfold Seg45.relationRow3813 at r3813
  unfold Seg45.relationRow3814 at r3814
  unfold Seg45.relationRow3815 at r3815
  unfold Seg45.relationRow3816 Seg45.relationLc363 Seg45.relationLc363Part0 Seg45.relationLc363Part1 Seg45.relationLc363Part2 at r3816
  unfold Seg45.relationRow3817 Seg45.relationLc364 Seg45.relationLc364Part0 Seg45.relationLc364Part1 Seg45.relationLc364Part2 at r3817
  unfold Seg45.relationRow3818 at r3818
  unfold Seg45.relationRow3819 at r3819
  unfold Seg45.relationRow3820 at r3820
  unfold Seg45.relationRow3821 at r3821
  unfold Seg45.relationRow3822 at r3822
  have hrung65 (bit : Bool) (hbit : rho 41013 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX65 rho : Seg45.F), (seg45AccY65 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42036 : Seg45.F), (rho 42037 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX65 rho : Seg45.F), (seg45AccY65 rho : Seg45.F)⟩
        ⟨(rho 42036 : Seg45.F), (rho 42037 : Seg45.F)⟩
        ⟨(seg45AccX66 rho : Seg45.F), (seg45AccY66 rho : Seg45.F)⟩
        ⟨(rho 42049 : Seg45.F), (rho 42050 : Seg45.F)⟩ := by
    have ha0 : (rho 42036 + rho 42037) * (seg45AccX65 rho + seg45AccY65 rho) = rho 42038 := by
      rw [seg45LadderFlatX65_eq, seg45LadderFlatY65_eq]
      unfold seg45LadderFlatX65 seg45LadderFlatY65
      linear_combination r3810
    have ha1 : rho 42037 * seg45AccX65 rho = rho 42039 := by
      rw [seg45LadderFlatX65_eq]
      unfold seg45LadderFlatX65
      linear_combination r3811
    have ha2 : rho 42036 * seg45AccY65 rho = rho 42040 := by
      rw [seg45LadderFlatY65_eq]
      unfold seg45LadderFlatY65
      linear_combination r3812
    have ha3 : 3021 * rho 42039 * rho 42040 = rho 42041 := by
      linear_combination r3813
    have ha4 : rho 42042 * (1 + rho 42041) = rho 42039 + rho 42040 := by
      linear_combination r3814
    have ha5 : rho 42043 * (1 - rho 42041) = rho 42038 - rho 42039 - rho 42040 := by
      linear_combination r3815
    have haddx :
        rho 42042 * (1 + 3021 * (rho 42037 * seg45AccX65 rho) * (rho 42036 * seg45AccY65 rho)) =
          rho 42037 * seg45AccX65 rho + rho 42036 * seg45AccY65 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42043 * (1 - 3021 * (rho 42037 * seg45AccX65 rho) * (rho 42036 * seg45AccY65 rho)) =
          (-1) * (rho 42037 * seg45AccX65 rho) - rho 42036 * seg45AccY65 rho +
            (seg45AccY65 rho - seg45AccX65 rho * (-1)) * (rho 42036 + rho 42037) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42043 * (1 - rho 42041) = rho 42038 - rho 42039 - rho 42040 := ha5
        _ = (-1) * rho 42039 - rho 42040 + (seg45AccY65 rho - seg45AccX65 rho * (-1)) * (rho 42036 + rho 42037) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX66 rho = seg45AccX65 rho - Bool.toZMod bit * (seg45AccX65 rho - rho 42042) := by
      have hd : rho 42044 = Bool.toZMod bit * (rho 42042 - seg45AccX65 rho) := by
        rw [← hbit, seg45LadderFlatX65_eq]
        unfold seg45LadderFlatX65
        linear_combination -r3816
      unfold seg45AccX66
      linear_combination hd
    have hsely : seg45AccY66 rho = seg45AccY65 rho - Bool.toZMod bit * (seg45AccY65 rho - rho 42043) := by
      have hd : rho 42045 = Bool.toZMod bit * (rho 42043 - seg45AccY65 rho) := by
        rw [← hbit, seg45LadderFlatY65_eq]
        unfold seg45LadderFlatY65
        linear_combination -r3817
      unfold seg45AccY66
      linear_combination hd
    have hd0 : rho 42036 * rho 42037 = rho 42046 := by linear_combination r3818
    have hd1 : rho 42036 * rho 42036 = rho 42047 := by linear_combination r3819
    have hd2 : rho 42037 * rho 42037 = rho 42048 := by linear_combination r3820
    have hd3 : rho 42049 * (rho 42037 * rho 42037 + rho 42036 * rho 42036 * (-1)) = 2 * (rho 42036 * rho 42037) := by
      rw [hd0, hd1, hd2]
      linear_combination r3821
    have hd4 : rho 42050 * (2 - (rho 42037 * rho 42037 + rho 42036 * rho 42036 * (-1))) = rho 42037 * rho 42037 - rho 42036 * rho 42036 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3822
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX65 rho : Seg45.F), (seg45AccY65 rho : Seg45.F)⟩
      ⟨(rho 42036 : Seg45.F), (rho 42037 : Seg45.F)⟩
      ⟨(rho 42042 : Seg45.F), (rho 42043 : Seg45.F)⟩
      ⟨(seg45AccX66 rho : Seg45.F), (seg45AccY66 rho : Seg45.F)⟩
      ⟨(rho 42049 : Seg45.F), (rho 42050 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung65

theorem seg45_rung66 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41014 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX66 rho : Seg45.F), (seg45AccY66 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42049 : Seg45.F), (rho 42050 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX66 rho : Seg45.F), (seg45AccY66 rho : Seg45.F)⟩
        ⟨(rho 42049 : Seg45.F), (rho 42050 : Seg45.F)⟩
        ⟨(seg45AccX67 rho : Seg45.F), (seg45AccY67 rho : Seg45.F)⟩
        ⟨(rho 42062 : Seg45.F), (rho 42063 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart47 at p47
  rcases p47 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3823, r3824, r3825, r3826, r3827, r3828, r3829, r3830, r3831, r3832, r3833, r3834, r3835, _, _, _, _⟩
  unfold Seg45.relationRow3823 Seg45.relationLc365 Seg45.relationLc365Part0 Seg45.relationLc365Part1 Seg45.relationLc365Part2 Seg45.relationLc365Part3 Seg45.relationLc365Part4 at r3823
  unfold Seg45.relationRow3824 Seg45.relationLc366 Seg45.relationLc366Part0 Seg45.relationLc366Part1 Seg45.relationLc366Part2 at r3824
  unfold Seg45.relationRow3825 Seg45.relationLc367 Seg45.relationLc367Part0 Seg45.relationLc367Part1 Seg45.relationLc367Part2 at r3825
  unfold Seg45.relationRow3826 at r3826
  unfold Seg45.relationRow3827 at r3827
  unfold Seg45.relationRow3828 at r3828
  unfold Seg45.relationRow3829 Seg45.relationLc368 Seg45.relationLc368Part0 Seg45.relationLc368Part1 Seg45.relationLc368Part2 at r3829
  unfold Seg45.relationRow3830 Seg45.relationLc369 Seg45.relationLc369Part0 Seg45.relationLc369Part1 Seg45.relationLc369Part2 at r3830
  unfold Seg45.relationRow3831 at r3831
  unfold Seg45.relationRow3832 at r3832
  unfold Seg45.relationRow3833 at r3833
  unfold Seg45.relationRow3834 at r3834
  unfold Seg45.relationRow3835 at r3835
  have hrung66 (bit : Bool) (hbit : rho 41014 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX66 rho : Seg45.F), (seg45AccY66 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42049 : Seg45.F), (rho 42050 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX66 rho : Seg45.F), (seg45AccY66 rho : Seg45.F)⟩
        ⟨(rho 42049 : Seg45.F), (rho 42050 : Seg45.F)⟩
        ⟨(seg45AccX67 rho : Seg45.F), (seg45AccY67 rho : Seg45.F)⟩
        ⟨(rho 42062 : Seg45.F), (rho 42063 : Seg45.F)⟩ := by
    have ha0 : (rho 42049 + rho 42050) * (seg45AccX66 rho + seg45AccY66 rho) = rho 42051 := by
      rw [seg45LadderFlatX66_eq, seg45LadderFlatY66_eq]
      unfold seg45LadderFlatX66 seg45LadderFlatY66
      linear_combination r3823
    have ha1 : rho 42050 * seg45AccX66 rho = rho 42052 := by
      rw [seg45LadderFlatX66_eq]
      unfold seg45LadderFlatX66
      linear_combination r3824
    have ha2 : rho 42049 * seg45AccY66 rho = rho 42053 := by
      rw [seg45LadderFlatY66_eq]
      unfold seg45LadderFlatY66
      linear_combination r3825
    have ha3 : 3021 * rho 42052 * rho 42053 = rho 42054 := by
      linear_combination r3826
    have ha4 : rho 42055 * (1 + rho 42054) = rho 42052 + rho 42053 := by
      linear_combination r3827
    have ha5 : rho 42056 * (1 - rho 42054) = rho 42051 - rho 42052 - rho 42053 := by
      linear_combination r3828
    have haddx :
        rho 42055 * (1 + 3021 * (rho 42050 * seg45AccX66 rho) * (rho 42049 * seg45AccY66 rho)) =
          rho 42050 * seg45AccX66 rho + rho 42049 * seg45AccY66 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42056 * (1 - 3021 * (rho 42050 * seg45AccX66 rho) * (rho 42049 * seg45AccY66 rho)) =
          (-1) * (rho 42050 * seg45AccX66 rho) - rho 42049 * seg45AccY66 rho +
            (seg45AccY66 rho - seg45AccX66 rho * (-1)) * (rho 42049 + rho 42050) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42056 * (1 - rho 42054) = rho 42051 - rho 42052 - rho 42053 := ha5
        _ = (-1) * rho 42052 - rho 42053 + (seg45AccY66 rho - seg45AccX66 rho * (-1)) * (rho 42049 + rho 42050) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX67 rho = seg45AccX66 rho - Bool.toZMod bit * (seg45AccX66 rho - rho 42055) := by
      have hd : rho 42057 = Bool.toZMod bit * (rho 42055 - seg45AccX66 rho) := by
        rw [← hbit, seg45LadderFlatX66_eq]
        unfold seg45LadderFlatX66
        linear_combination -r3829
      unfold seg45AccX67
      linear_combination hd
    have hsely : seg45AccY67 rho = seg45AccY66 rho - Bool.toZMod bit * (seg45AccY66 rho - rho 42056) := by
      have hd : rho 42058 = Bool.toZMod bit * (rho 42056 - seg45AccY66 rho) := by
        rw [← hbit, seg45LadderFlatY66_eq]
        unfold seg45LadderFlatY66
        linear_combination -r3830
      unfold seg45AccY67
      linear_combination hd
    have hd0 : rho 42049 * rho 42050 = rho 42059 := by linear_combination r3831
    have hd1 : rho 42049 * rho 42049 = rho 42060 := by linear_combination r3832
    have hd2 : rho 42050 * rho 42050 = rho 42061 := by linear_combination r3833
    have hd3 : rho 42062 * (rho 42050 * rho 42050 + rho 42049 * rho 42049 * (-1)) = 2 * (rho 42049 * rho 42050) := by
      rw [hd0, hd1, hd2]
      linear_combination r3834
    have hd4 : rho 42063 * (2 - (rho 42050 * rho 42050 + rho 42049 * rho 42049 * (-1))) = rho 42050 * rho 42050 - rho 42049 * rho 42049 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3835
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX66 rho : Seg45.F), (seg45AccY66 rho : Seg45.F)⟩
      ⟨(rho 42049 : Seg45.F), (rho 42050 : Seg45.F)⟩
      ⟨(rho 42055 : Seg45.F), (rho 42056 : Seg45.F)⟩
      ⟨(seg45AccX67 rho : Seg45.F), (seg45AccY67 rho : Seg45.F)⟩
      ⟨(rho 42062 : Seg45.F), (rho 42063 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung66

theorem seg45_rung67 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41015 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX67 rho : Seg45.F), (seg45AccY67 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42062 : Seg45.F), (rho 42063 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX67 rho : Seg45.F), (seg45AccY67 rho : Seg45.F)⟩
        ⟨(rho 42062 : Seg45.F), (rho 42063 : Seg45.F)⟩
        ⟨(seg45AccX68 rho : Seg45.F), (seg45AccY68 rho : Seg45.F)⟩
        ⟨(rho 42075 : Seg45.F), (rho 42076 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart47 at p47
  rcases p47 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3836, r3837, r3838, r3839⟩
  unfold Seg45.relationPart48 at p48
  rcases p48 with ⟨r3840, r3841, r3842, r3843, r3844, r3845, r3846, r3847, r3848, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow3836 Seg45.relationLc370 Seg45.relationLc370Part0 Seg45.relationLc370Part1 Seg45.relationLc370Part2 Seg45.relationLc370Part3 Seg45.relationLc370Part4 at r3836
  unfold Seg45.relationRow3837 Seg45.relationLc371 Seg45.relationLc371Part0 Seg45.relationLc371Part1 Seg45.relationLc371Part2 at r3837
  unfold Seg45.relationRow3838 Seg45.relationLc372 Seg45.relationLc372Part0 Seg45.relationLc372Part1 Seg45.relationLc372Part2 at r3838
  unfold Seg45.relationRow3839 at r3839
  unfold Seg45.relationRow3840 at r3840
  unfold Seg45.relationRow3841 at r3841
  unfold Seg45.relationRow3842 Seg45.relationLc373 Seg45.relationLc373Part0 Seg45.relationLc373Part1 Seg45.relationLc373Part2 at r3842
  unfold Seg45.relationRow3843 Seg45.relationLc374 Seg45.relationLc374Part0 Seg45.relationLc374Part1 Seg45.relationLc374Part2 at r3843
  unfold Seg45.relationRow3844 at r3844
  unfold Seg45.relationRow3845 at r3845
  unfold Seg45.relationRow3846 at r3846
  unfold Seg45.relationRow3847 at r3847
  unfold Seg45.relationRow3848 at r3848
  have hrung67 (bit : Bool) (hbit : rho 41015 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX67 rho : Seg45.F), (seg45AccY67 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42062 : Seg45.F), (rho 42063 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX67 rho : Seg45.F), (seg45AccY67 rho : Seg45.F)⟩
        ⟨(rho 42062 : Seg45.F), (rho 42063 : Seg45.F)⟩
        ⟨(seg45AccX68 rho : Seg45.F), (seg45AccY68 rho : Seg45.F)⟩
        ⟨(rho 42075 : Seg45.F), (rho 42076 : Seg45.F)⟩ := by
    have ha0 : (rho 42062 + rho 42063) * (seg45AccX67 rho + seg45AccY67 rho) = rho 42064 := by
      rw [seg45LadderFlatX67_eq, seg45LadderFlatY67_eq]
      unfold seg45LadderFlatX67 seg45LadderFlatY67
      linear_combination r3836
    have ha1 : rho 42063 * seg45AccX67 rho = rho 42065 := by
      rw [seg45LadderFlatX67_eq]
      unfold seg45LadderFlatX67
      linear_combination r3837
    have ha2 : rho 42062 * seg45AccY67 rho = rho 42066 := by
      rw [seg45LadderFlatY67_eq]
      unfold seg45LadderFlatY67
      linear_combination r3838
    have ha3 : 3021 * rho 42065 * rho 42066 = rho 42067 := by
      linear_combination r3839
    have ha4 : rho 42068 * (1 + rho 42067) = rho 42065 + rho 42066 := by
      linear_combination r3840
    have ha5 : rho 42069 * (1 - rho 42067) = rho 42064 - rho 42065 - rho 42066 := by
      linear_combination r3841
    have haddx :
        rho 42068 * (1 + 3021 * (rho 42063 * seg45AccX67 rho) * (rho 42062 * seg45AccY67 rho)) =
          rho 42063 * seg45AccX67 rho + rho 42062 * seg45AccY67 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42069 * (1 - 3021 * (rho 42063 * seg45AccX67 rho) * (rho 42062 * seg45AccY67 rho)) =
          (-1) * (rho 42063 * seg45AccX67 rho) - rho 42062 * seg45AccY67 rho +
            (seg45AccY67 rho - seg45AccX67 rho * (-1)) * (rho 42062 + rho 42063) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42069 * (1 - rho 42067) = rho 42064 - rho 42065 - rho 42066 := ha5
        _ = (-1) * rho 42065 - rho 42066 + (seg45AccY67 rho - seg45AccX67 rho * (-1)) * (rho 42062 + rho 42063) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX68 rho = seg45AccX67 rho - Bool.toZMod bit * (seg45AccX67 rho - rho 42068) := by
      have hd : rho 42070 = Bool.toZMod bit * (rho 42068 - seg45AccX67 rho) := by
        rw [← hbit, seg45LadderFlatX67_eq]
        unfold seg45LadderFlatX67
        linear_combination -r3842
      unfold seg45AccX68
      linear_combination hd
    have hsely : seg45AccY68 rho = seg45AccY67 rho - Bool.toZMod bit * (seg45AccY67 rho - rho 42069) := by
      have hd : rho 42071 = Bool.toZMod bit * (rho 42069 - seg45AccY67 rho) := by
        rw [← hbit, seg45LadderFlatY67_eq]
        unfold seg45LadderFlatY67
        linear_combination -r3843
      unfold seg45AccY68
      linear_combination hd
    have hd0 : rho 42062 * rho 42063 = rho 42072 := by linear_combination r3844
    have hd1 : rho 42062 * rho 42062 = rho 42073 := by linear_combination r3845
    have hd2 : rho 42063 * rho 42063 = rho 42074 := by linear_combination r3846
    have hd3 : rho 42075 * (rho 42063 * rho 42063 + rho 42062 * rho 42062 * (-1)) = 2 * (rho 42062 * rho 42063) := by
      rw [hd0, hd1, hd2]
      linear_combination r3847
    have hd4 : rho 42076 * (2 - (rho 42063 * rho 42063 + rho 42062 * rho 42062 * (-1))) = rho 42063 * rho 42063 - rho 42062 * rho 42062 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3848
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX67 rho : Seg45.F), (seg45AccY67 rho : Seg45.F)⟩
      ⟨(rho 42062 : Seg45.F), (rho 42063 : Seg45.F)⟩
      ⟨(rho 42068 : Seg45.F), (rho 42069 : Seg45.F)⟩
      ⟨(seg45AccX68 rho : Seg45.F), (seg45AccY68 rho : Seg45.F)⟩
      ⟨(rho 42075 : Seg45.F), (rho 42076 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung67

theorem seg45_rung68 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41016 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX68 rho : Seg45.F), (seg45AccY68 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42075 : Seg45.F), (rho 42076 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX68 rho : Seg45.F), (seg45AccY68 rho : Seg45.F)⟩
        ⟨(rho 42075 : Seg45.F), (rho 42076 : Seg45.F)⟩
        ⟨(seg45AccX69 rho : Seg45.F), (seg45AccY69 rho : Seg45.F)⟩
        ⟨(rho 42088 : Seg45.F), (rho 42089 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart48 at p48
  rcases p48 with ⟨_, _, _, _, _, _, _, _, _, r3849, r3850, r3851, r3852, r3853, r3854, r3855, r3856, r3857, r3858, r3859, r3860, r3861, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow3849 Seg45.relationLc375 Seg45.relationLc375Part0 Seg45.relationLc375Part1 Seg45.relationLc375Part2 Seg45.relationLc375Part3 Seg45.relationLc375Part4 at r3849
  unfold Seg45.relationRow3850 Seg45.relationLc376 Seg45.relationLc376Part0 Seg45.relationLc376Part1 Seg45.relationLc376Part2 at r3850
  unfold Seg45.relationRow3851 Seg45.relationLc377 Seg45.relationLc377Part0 Seg45.relationLc377Part1 Seg45.relationLc377Part2 at r3851
  unfold Seg45.relationRow3852 at r3852
  unfold Seg45.relationRow3853 at r3853
  unfold Seg45.relationRow3854 at r3854
  unfold Seg45.relationRow3855 Seg45.relationLc378 Seg45.relationLc378Part0 Seg45.relationLc378Part1 Seg45.relationLc378Part2 at r3855
  unfold Seg45.relationRow3856 Seg45.relationLc379 Seg45.relationLc379Part0 Seg45.relationLc379Part1 Seg45.relationLc379Part2 at r3856
  unfold Seg45.relationRow3857 at r3857
  unfold Seg45.relationRow3858 at r3858
  unfold Seg45.relationRow3859 at r3859
  unfold Seg45.relationRow3860 at r3860
  unfold Seg45.relationRow3861 at r3861
  have hrung68 (bit : Bool) (hbit : rho 41016 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX68 rho : Seg45.F), (seg45AccY68 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42075 : Seg45.F), (rho 42076 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX68 rho : Seg45.F), (seg45AccY68 rho : Seg45.F)⟩
        ⟨(rho 42075 : Seg45.F), (rho 42076 : Seg45.F)⟩
        ⟨(seg45AccX69 rho : Seg45.F), (seg45AccY69 rho : Seg45.F)⟩
        ⟨(rho 42088 : Seg45.F), (rho 42089 : Seg45.F)⟩ := by
    have ha0 : (rho 42075 + rho 42076) * (seg45AccX68 rho + seg45AccY68 rho) = rho 42077 := by
      rw [seg45LadderFlatX68_eq, seg45LadderFlatY68_eq]
      unfold seg45LadderFlatX68 seg45LadderFlatY68
      linear_combination r3849
    have ha1 : rho 42076 * seg45AccX68 rho = rho 42078 := by
      rw [seg45LadderFlatX68_eq]
      unfold seg45LadderFlatX68
      linear_combination r3850
    have ha2 : rho 42075 * seg45AccY68 rho = rho 42079 := by
      rw [seg45LadderFlatY68_eq]
      unfold seg45LadderFlatY68
      linear_combination r3851
    have ha3 : 3021 * rho 42078 * rho 42079 = rho 42080 := by
      linear_combination r3852
    have ha4 : rho 42081 * (1 + rho 42080) = rho 42078 + rho 42079 := by
      linear_combination r3853
    have ha5 : rho 42082 * (1 - rho 42080) = rho 42077 - rho 42078 - rho 42079 := by
      linear_combination r3854
    have haddx :
        rho 42081 * (1 + 3021 * (rho 42076 * seg45AccX68 rho) * (rho 42075 * seg45AccY68 rho)) =
          rho 42076 * seg45AccX68 rho + rho 42075 * seg45AccY68 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42082 * (1 - 3021 * (rho 42076 * seg45AccX68 rho) * (rho 42075 * seg45AccY68 rho)) =
          (-1) * (rho 42076 * seg45AccX68 rho) - rho 42075 * seg45AccY68 rho +
            (seg45AccY68 rho - seg45AccX68 rho * (-1)) * (rho 42075 + rho 42076) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42082 * (1 - rho 42080) = rho 42077 - rho 42078 - rho 42079 := ha5
        _ = (-1) * rho 42078 - rho 42079 + (seg45AccY68 rho - seg45AccX68 rho * (-1)) * (rho 42075 + rho 42076) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX69 rho = seg45AccX68 rho - Bool.toZMod bit * (seg45AccX68 rho - rho 42081) := by
      have hd : rho 42083 = Bool.toZMod bit * (rho 42081 - seg45AccX68 rho) := by
        rw [← hbit, seg45LadderFlatX68_eq]
        unfold seg45LadderFlatX68
        linear_combination -r3855
      unfold seg45AccX69
      linear_combination hd
    have hsely : seg45AccY69 rho = seg45AccY68 rho - Bool.toZMod bit * (seg45AccY68 rho - rho 42082) := by
      have hd : rho 42084 = Bool.toZMod bit * (rho 42082 - seg45AccY68 rho) := by
        rw [← hbit, seg45LadderFlatY68_eq]
        unfold seg45LadderFlatY68
        linear_combination -r3856
      unfold seg45AccY69
      linear_combination hd
    have hd0 : rho 42075 * rho 42076 = rho 42085 := by linear_combination r3857
    have hd1 : rho 42075 * rho 42075 = rho 42086 := by linear_combination r3858
    have hd2 : rho 42076 * rho 42076 = rho 42087 := by linear_combination r3859
    have hd3 : rho 42088 * (rho 42076 * rho 42076 + rho 42075 * rho 42075 * (-1)) = 2 * (rho 42075 * rho 42076) := by
      rw [hd0, hd1, hd2]
      linear_combination r3860
    have hd4 : rho 42089 * (2 - (rho 42076 * rho 42076 + rho 42075 * rho 42075 * (-1))) = rho 42076 * rho 42076 - rho 42075 * rho 42075 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3861
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX68 rho : Seg45.F), (seg45AccY68 rho : Seg45.F)⟩
      ⟨(rho 42075 : Seg45.F), (rho 42076 : Seg45.F)⟩
      ⟨(rho 42081 : Seg45.F), (rho 42082 : Seg45.F)⟩
      ⟨(seg45AccX69 rho : Seg45.F), (seg45AccY69 rho : Seg45.F)⟩
      ⟨(rho 42088 : Seg45.F), (rho 42089 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung68

theorem seg45_rung69 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41017 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX69 rho : Seg45.F), (seg45AccY69 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42088 : Seg45.F), (rho 42089 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX69 rho : Seg45.F), (seg45AccY69 rho : Seg45.F)⟩
        ⟨(rho 42088 : Seg45.F), (rho 42089 : Seg45.F)⟩
        ⟨(seg45AccX70 rho : Seg45.F), (seg45AccY70 rho : Seg45.F)⟩
        ⟨(rho 42101 : Seg45.F), (rho 42102 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart48 at p48
  rcases p48 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3862, r3863, r3864, r3865, r3866, r3867, r3868, r3869, r3870, r3871, r3872, r3873, r3874, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow3862 Seg45.relationLc380 Seg45.relationLc380Part0 Seg45.relationLc380Part1 Seg45.relationLc380Part2 Seg45.relationLc380Part3 Seg45.relationLc380Part4 at r3862
  unfold Seg45.relationRow3863 Seg45.relationLc381 Seg45.relationLc381Part0 Seg45.relationLc381Part1 Seg45.relationLc381Part2 at r3863
  unfold Seg45.relationRow3864 Seg45.relationLc382 Seg45.relationLc382Part0 Seg45.relationLc382Part1 Seg45.relationLc382Part2 at r3864
  unfold Seg45.relationRow3865 at r3865
  unfold Seg45.relationRow3866 at r3866
  unfold Seg45.relationRow3867 at r3867
  unfold Seg45.relationRow3868 Seg45.relationLc383 Seg45.relationLc383Part0 Seg45.relationLc383Part1 Seg45.relationLc383Part2 at r3868
  unfold Seg45.relationRow3869 Seg45.relationLc384 Seg45.relationLc384Part0 Seg45.relationLc384Part1 Seg45.relationLc384Part2 at r3869
  unfold Seg45.relationRow3870 at r3870
  unfold Seg45.relationRow3871 at r3871
  unfold Seg45.relationRow3872 at r3872
  unfold Seg45.relationRow3873 at r3873
  unfold Seg45.relationRow3874 at r3874
  have hrung69 (bit : Bool) (hbit : rho 41017 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX69 rho : Seg45.F), (seg45AccY69 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42088 : Seg45.F), (rho 42089 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX69 rho : Seg45.F), (seg45AccY69 rho : Seg45.F)⟩
        ⟨(rho 42088 : Seg45.F), (rho 42089 : Seg45.F)⟩
        ⟨(seg45AccX70 rho : Seg45.F), (seg45AccY70 rho : Seg45.F)⟩
        ⟨(rho 42101 : Seg45.F), (rho 42102 : Seg45.F)⟩ := by
    have ha0 : (rho 42088 + rho 42089) * (seg45AccX69 rho + seg45AccY69 rho) = rho 42090 := by
      rw [seg45LadderFlatX69_eq, seg45LadderFlatY69_eq]
      unfold seg45LadderFlatX69 seg45LadderFlatY69
      linear_combination r3862
    have ha1 : rho 42089 * seg45AccX69 rho = rho 42091 := by
      rw [seg45LadderFlatX69_eq]
      unfold seg45LadderFlatX69
      linear_combination r3863
    have ha2 : rho 42088 * seg45AccY69 rho = rho 42092 := by
      rw [seg45LadderFlatY69_eq]
      unfold seg45LadderFlatY69
      linear_combination r3864
    have ha3 : 3021 * rho 42091 * rho 42092 = rho 42093 := by
      linear_combination r3865
    have ha4 : rho 42094 * (1 + rho 42093) = rho 42091 + rho 42092 := by
      linear_combination r3866
    have ha5 : rho 42095 * (1 - rho 42093) = rho 42090 - rho 42091 - rho 42092 := by
      linear_combination r3867
    have haddx :
        rho 42094 * (1 + 3021 * (rho 42089 * seg45AccX69 rho) * (rho 42088 * seg45AccY69 rho)) =
          rho 42089 * seg45AccX69 rho + rho 42088 * seg45AccY69 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42095 * (1 - 3021 * (rho 42089 * seg45AccX69 rho) * (rho 42088 * seg45AccY69 rho)) =
          (-1) * (rho 42089 * seg45AccX69 rho) - rho 42088 * seg45AccY69 rho +
            (seg45AccY69 rho - seg45AccX69 rho * (-1)) * (rho 42088 + rho 42089) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42095 * (1 - rho 42093) = rho 42090 - rho 42091 - rho 42092 := ha5
        _ = (-1) * rho 42091 - rho 42092 + (seg45AccY69 rho - seg45AccX69 rho * (-1)) * (rho 42088 + rho 42089) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX70 rho = seg45AccX69 rho - Bool.toZMod bit * (seg45AccX69 rho - rho 42094) := by
      have hd : rho 42096 = Bool.toZMod bit * (rho 42094 - seg45AccX69 rho) := by
        rw [← hbit, seg45LadderFlatX69_eq]
        unfold seg45LadderFlatX69
        linear_combination -r3868
      unfold seg45AccX70
      linear_combination hd
    have hsely : seg45AccY70 rho = seg45AccY69 rho - Bool.toZMod bit * (seg45AccY69 rho - rho 42095) := by
      have hd : rho 42097 = Bool.toZMod bit * (rho 42095 - seg45AccY69 rho) := by
        rw [← hbit, seg45LadderFlatY69_eq]
        unfold seg45LadderFlatY69
        linear_combination -r3869
      unfold seg45AccY70
      linear_combination hd
    have hd0 : rho 42088 * rho 42089 = rho 42098 := by linear_combination r3870
    have hd1 : rho 42088 * rho 42088 = rho 42099 := by linear_combination r3871
    have hd2 : rho 42089 * rho 42089 = rho 42100 := by linear_combination r3872
    have hd3 : rho 42101 * (rho 42089 * rho 42089 + rho 42088 * rho 42088 * (-1)) = 2 * (rho 42088 * rho 42089) := by
      rw [hd0, hd1, hd2]
      linear_combination r3873
    have hd4 : rho 42102 * (2 - (rho 42089 * rho 42089 + rho 42088 * rho 42088 * (-1))) = rho 42089 * rho 42089 - rho 42088 * rho 42088 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3874
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX69 rho : Seg45.F), (seg45AccY69 rho : Seg45.F)⟩
      ⟨(rho 42088 : Seg45.F), (rho 42089 : Seg45.F)⟩
      ⟨(rho 42094 : Seg45.F), (rho 42095 : Seg45.F)⟩
      ⟨(seg45AccX70 rho : Seg45.F), (seg45AccY70 rho : Seg45.F)⟩
      ⟨(rho 42101 : Seg45.F), (rho 42102 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung69

theorem seg45_rung70 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41018 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX70 rho : Seg45.F), (seg45AccY70 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42101 : Seg45.F), (rho 42102 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX70 rho : Seg45.F), (seg45AccY70 rho : Seg45.F)⟩
        ⟨(rho 42101 : Seg45.F), (rho 42102 : Seg45.F)⟩
        ⟨(seg45AccX71 rho : Seg45.F), (seg45AccY71 rho : Seg45.F)⟩
        ⟨(rho 42114 : Seg45.F), (rho 42115 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart48 at p48
  rcases p48 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3875, r3876, r3877, r3878, r3879, r3880, r3881, r3882, r3883, r3884, r3885, r3886, r3887, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow3875 Seg45.relationLc385 Seg45.relationLc385Part0 Seg45.relationLc385Part1 Seg45.relationLc385Part2 Seg45.relationLc385Part3 Seg45.relationLc385Part4 at r3875
  unfold Seg45.relationRow3876 Seg45.relationLc386 Seg45.relationLc386Part0 Seg45.relationLc386Part1 Seg45.relationLc386Part2 at r3876
  unfold Seg45.relationRow3877 Seg45.relationLc387 Seg45.relationLc387Part0 Seg45.relationLc387Part1 Seg45.relationLc387Part2 at r3877
  unfold Seg45.relationRow3878 at r3878
  unfold Seg45.relationRow3879 at r3879
  unfold Seg45.relationRow3880 at r3880
  unfold Seg45.relationRow3881 Seg45.relationLc388 Seg45.relationLc388Part0 Seg45.relationLc388Part1 Seg45.relationLc388Part2 at r3881
  unfold Seg45.relationRow3882 Seg45.relationLc389 Seg45.relationLc389Part0 Seg45.relationLc389Part1 Seg45.relationLc389Part2 at r3882
  unfold Seg45.relationRow3883 at r3883
  unfold Seg45.relationRow3884 at r3884
  unfold Seg45.relationRow3885 at r3885
  unfold Seg45.relationRow3886 at r3886
  unfold Seg45.relationRow3887 at r3887
  have hrung70 (bit : Bool) (hbit : rho 41018 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX70 rho : Seg45.F), (seg45AccY70 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42101 : Seg45.F), (rho 42102 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX70 rho : Seg45.F), (seg45AccY70 rho : Seg45.F)⟩
        ⟨(rho 42101 : Seg45.F), (rho 42102 : Seg45.F)⟩
        ⟨(seg45AccX71 rho : Seg45.F), (seg45AccY71 rho : Seg45.F)⟩
        ⟨(rho 42114 : Seg45.F), (rho 42115 : Seg45.F)⟩ := by
    have ha0 : (rho 42101 + rho 42102) * (seg45AccX70 rho + seg45AccY70 rho) = rho 42103 := by
      rw [seg45LadderFlatX70_eq, seg45LadderFlatY70_eq]
      unfold seg45LadderFlatX70 seg45LadderFlatY70
      linear_combination r3875
    have ha1 : rho 42102 * seg45AccX70 rho = rho 42104 := by
      rw [seg45LadderFlatX70_eq]
      unfold seg45LadderFlatX70
      linear_combination r3876
    have ha2 : rho 42101 * seg45AccY70 rho = rho 42105 := by
      rw [seg45LadderFlatY70_eq]
      unfold seg45LadderFlatY70
      linear_combination r3877
    have ha3 : 3021 * rho 42104 * rho 42105 = rho 42106 := by
      linear_combination r3878
    have ha4 : rho 42107 * (1 + rho 42106) = rho 42104 + rho 42105 := by
      linear_combination r3879
    have ha5 : rho 42108 * (1 - rho 42106) = rho 42103 - rho 42104 - rho 42105 := by
      linear_combination r3880
    have haddx :
        rho 42107 * (1 + 3021 * (rho 42102 * seg45AccX70 rho) * (rho 42101 * seg45AccY70 rho)) =
          rho 42102 * seg45AccX70 rho + rho 42101 * seg45AccY70 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42108 * (1 - 3021 * (rho 42102 * seg45AccX70 rho) * (rho 42101 * seg45AccY70 rho)) =
          (-1) * (rho 42102 * seg45AccX70 rho) - rho 42101 * seg45AccY70 rho +
            (seg45AccY70 rho - seg45AccX70 rho * (-1)) * (rho 42101 + rho 42102) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42108 * (1 - rho 42106) = rho 42103 - rho 42104 - rho 42105 := ha5
        _ = (-1) * rho 42104 - rho 42105 + (seg45AccY70 rho - seg45AccX70 rho * (-1)) * (rho 42101 + rho 42102) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX71 rho = seg45AccX70 rho - Bool.toZMod bit * (seg45AccX70 rho - rho 42107) := by
      have hd : rho 42109 = Bool.toZMod bit * (rho 42107 - seg45AccX70 rho) := by
        rw [← hbit, seg45LadderFlatX70_eq]
        unfold seg45LadderFlatX70
        linear_combination -r3881
      unfold seg45AccX71
      linear_combination hd
    have hsely : seg45AccY71 rho = seg45AccY70 rho - Bool.toZMod bit * (seg45AccY70 rho - rho 42108) := by
      have hd : rho 42110 = Bool.toZMod bit * (rho 42108 - seg45AccY70 rho) := by
        rw [← hbit, seg45LadderFlatY70_eq]
        unfold seg45LadderFlatY70
        linear_combination -r3882
      unfold seg45AccY71
      linear_combination hd
    have hd0 : rho 42101 * rho 42102 = rho 42111 := by linear_combination r3883
    have hd1 : rho 42101 * rho 42101 = rho 42112 := by linear_combination r3884
    have hd2 : rho 42102 * rho 42102 = rho 42113 := by linear_combination r3885
    have hd3 : rho 42114 * (rho 42102 * rho 42102 + rho 42101 * rho 42101 * (-1)) = 2 * (rho 42101 * rho 42102) := by
      rw [hd0, hd1, hd2]
      linear_combination r3886
    have hd4 : rho 42115 * (2 - (rho 42102 * rho 42102 + rho 42101 * rho 42101 * (-1))) = rho 42102 * rho 42102 - rho 42101 * rho 42101 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3887
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX70 rho : Seg45.F), (seg45AccY70 rho : Seg45.F)⟩
      ⟨(rho 42101 : Seg45.F), (rho 42102 : Seg45.F)⟩
      ⟨(rho 42107 : Seg45.F), (rho 42108 : Seg45.F)⟩
      ⟨(seg45AccX71 rho : Seg45.F), (seg45AccY71 rho : Seg45.F)⟩
      ⟨(rho 42114 : Seg45.F), (rho 42115 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung70

theorem seg45_rung71 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41019 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX71 rho : Seg45.F), (seg45AccY71 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42114 : Seg45.F), (rho 42115 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX71 rho : Seg45.F), (seg45AccY71 rho : Seg45.F)⟩
        ⟨(rho 42114 : Seg45.F), (rho 42115 : Seg45.F)⟩
        ⟨(seg45AccX72 rho : Seg45.F), (seg45AccY72 rho : Seg45.F)⟩
        ⟨(rho 42127 : Seg45.F), (rho 42128 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart48 at p48
  rcases p48 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3888, r3889, r3890, r3891, r3892, r3893, r3894, r3895, r3896, r3897, r3898, r3899, r3900, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow3888 Seg45.relationLc390 Seg45.relationLc390Part0 Seg45.relationLc390Part1 Seg45.relationLc390Part2 Seg45.relationLc390Part3 Seg45.relationLc390Part4 at r3888
  unfold Seg45.relationRow3889 Seg45.relationLc391 Seg45.relationLc391Part0 Seg45.relationLc391Part1 Seg45.relationLc391Part2 at r3889
  unfold Seg45.relationRow3890 Seg45.relationLc392 Seg45.relationLc392Part0 Seg45.relationLc392Part1 Seg45.relationLc392Part2 at r3890
  unfold Seg45.relationRow3891 at r3891
  unfold Seg45.relationRow3892 at r3892
  unfold Seg45.relationRow3893 at r3893
  unfold Seg45.relationRow3894 Seg45.relationLc393 Seg45.relationLc393Part0 Seg45.relationLc393Part1 Seg45.relationLc393Part2 at r3894
  unfold Seg45.relationRow3895 Seg45.relationLc394 Seg45.relationLc394Part0 Seg45.relationLc394Part1 Seg45.relationLc394Part2 at r3895
  unfold Seg45.relationRow3896 at r3896
  unfold Seg45.relationRow3897 at r3897
  unfold Seg45.relationRow3898 at r3898
  unfold Seg45.relationRow3899 at r3899
  unfold Seg45.relationRow3900 at r3900
  have hrung71 (bit : Bool) (hbit : rho 41019 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX71 rho : Seg45.F), (seg45AccY71 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42114 : Seg45.F), (rho 42115 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX71 rho : Seg45.F), (seg45AccY71 rho : Seg45.F)⟩
        ⟨(rho 42114 : Seg45.F), (rho 42115 : Seg45.F)⟩
        ⟨(seg45AccX72 rho : Seg45.F), (seg45AccY72 rho : Seg45.F)⟩
        ⟨(rho 42127 : Seg45.F), (rho 42128 : Seg45.F)⟩ := by
    have ha0 : (rho 42114 + rho 42115) * (seg45AccX71 rho + seg45AccY71 rho) = rho 42116 := by
      rw [seg45LadderFlatX71_eq, seg45LadderFlatY71_eq]
      unfold seg45LadderFlatX71 seg45LadderFlatY71
      linear_combination r3888
    have ha1 : rho 42115 * seg45AccX71 rho = rho 42117 := by
      rw [seg45LadderFlatX71_eq]
      unfold seg45LadderFlatX71
      linear_combination r3889
    have ha2 : rho 42114 * seg45AccY71 rho = rho 42118 := by
      rw [seg45LadderFlatY71_eq]
      unfold seg45LadderFlatY71
      linear_combination r3890
    have ha3 : 3021 * rho 42117 * rho 42118 = rho 42119 := by
      linear_combination r3891
    have ha4 : rho 42120 * (1 + rho 42119) = rho 42117 + rho 42118 := by
      linear_combination r3892
    have ha5 : rho 42121 * (1 - rho 42119) = rho 42116 - rho 42117 - rho 42118 := by
      linear_combination r3893
    have haddx :
        rho 42120 * (1 + 3021 * (rho 42115 * seg45AccX71 rho) * (rho 42114 * seg45AccY71 rho)) =
          rho 42115 * seg45AccX71 rho + rho 42114 * seg45AccY71 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42121 * (1 - 3021 * (rho 42115 * seg45AccX71 rho) * (rho 42114 * seg45AccY71 rho)) =
          (-1) * (rho 42115 * seg45AccX71 rho) - rho 42114 * seg45AccY71 rho +
            (seg45AccY71 rho - seg45AccX71 rho * (-1)) * (rho 42114 + rho 42115) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42121 * (1 - rho 42119) = rho 42116 - rho 42117 - rho 42118 := ha5
        _ = (-1) * rho 42117 - rho 42118 + (seg45AccY71 rho - seg45AccX71 rho * (-1)) * (rho 42114 + rho 42115) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX72 rho = seg45AccX71 rho - Bool.toZMod bit * (seg45AccX71 rho - rho 42120) := by
      have hd : rho 42122 = Bool.toZMod bit * (rho 42120 - seg45AccX71 rho) := by
        rw [← hbit, seg45LadderFlatX71_eq]
        unfold seg45LadderFlatX71
        linear_combination -r3894
      unfold seg45AccX72
      linear_combination hd
    have hsely : seg45AccY72 rho = seg45AccY71 rho - Bool.toZMod bit * (seg45AccY71 rho - rho 42121) := by
      have hd : rho 42123 = Bool.toZMod bit * (rho 42121 - seg45AccY71 rho) := by
        rw [← hbit, seg45LadderFlatY71_eq]
        unfold seg45LadderFlatY71
        linear_combination -r3895
      unfold seg45AccY72
      linear_combination hd
    have hd0 : rho 42114 * rho 42115 = rho 42124 := by linear_combination r3896
    have hd1 : rho 42114 * rho 42114 = rho 42125 := by linear_combination r3897
    have hd2 : rho 42115 * rho 42115 = rho 42126 := by linear_combination r3898
    have hd3 : rho 42127 * (rho 42115 * rho 42115 + rho 42114 * rho 42114 * (-1)) = 2 * (rho 42114 * rho 42115) := by
      rw [hd0, hd1, hd2]
      linear_combination r3899
    have hd4 : rho 42128 * (2 - (rho 42115 * rho 42115 + rho 42114 * rho 42114 * (-1))) = rho 42115 * rho 42115 - rho 42114 * rho 42114 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3900
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX71 rho : Seg45.F), (seg45AccY71 rho : Seg45.F)⟩
      ⟨(rho 42114 : Seg45.F), (rho 42115 : Seg45.F)⟩
      ⟨(rho 42120 : Seg45.F), (rho 42121 : Seg45.F)⟩
      ⟨(seg45AccX72 rho : Seg45.F), (seg45AccY72 rho : Seg45.F)⟩
      ⟨(rho 42127 : Seg45.F), (rho 42128 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung71

theorem seg45_rung72 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41020 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX72 rho : Seg45.F), (seg45AccY72 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42127 : Seg45.F), (rho 42128 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX72 rho : Seg45.F), (seg45AccY72 rho : Seg45.F)⟩
        ⟨(rho 42127 : Seg45.F), (rho 42128 : Seg45.F)⟩
        ⟨(seg45AccX73 rho : Seg45.F), (seg45AccY73 rho : Seg45.F)⟩
        ⟨(rho 42140 : Seg45.F), (rho 42141 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart48 at p48
  rcases p48 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3901, r3902, r3903, r3904, r3905, r3906, r3907, r3908, r3909, r3910, r3911, r3912, r3913, _, _, _, _, _, _⟩
  unfold Seg45.relationRow3901 Seg45.relationLc395 Seg45.relationLc395Part0 Seg45.relationLc395Part1 Seg45.relationLc395Part2 Seg45.relationLc395Part3 Seg45.relationLc395Part4 at r3901
  unfold Seg45.relationRow3902 Seg45.relationLc396 Seg45.relationLc396Part0 Seg45.relationLc396Part1 Seg45.relationLc396Part2 at r3902
  unfold Seg45.relationRow3903 Seg45.relationLc397 Seg45.relationLc397Part0 Seg45.relationLc397Part1 Seg45.relationLc397Part2 at r3903
  unfold Seg45.relationRow3904 at r3904
  unfold Seg45.relationRow3905 at r3905
  unfold Seg45.relationRow3906 at r3906
  unfold Seg45.relationRow3907 Seg45.relationLc398 Seg45.relationLc398Part0 Seg45.relationLc398Part1 Seg45.relationLc398Part2 at r3907
  unfold Seg45.relationRow3908 Seg45.relationLc399 Seg45.relationLc399Part0 Seg45.relationLc399Part1 Seg45.relationLc399Part2 at r3908
  unfold Seg45.relationRow3909 at r3909
  unfold Seg45.relationRow3910 at r3910
  unfold Seg45.relationRow3911 at r3911
  unfold Seg45.relationRow3912 at r3912
  unfold Seg45.relationRow3913 at r3913
  have hrung72 (bit : Bool) (hbit : rho 41020 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX72 rho : Seg45.F), (seg45AccY72 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42127 : Seg45.F), (rho 42128 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX72 rho : Seg45.F), (seg45AccY72 rho : Seg45.F)⟩
        ⟨(rho 42127 : Seg45.F), (rho 42128 : Seg45.F)⟩
        ⟨(seg45AccX73 rho : Seg45.F), (seg45AccY73 rho : Seg45.F)⟩
        ⟨(rho 42140 : Seg45.F), (rho 42141 : Seg45.F)⟩ := by
    have ha0 : (rho 42127 + rho 42128) * (seg45AccX72 rho + seg45AccY72 rho) = rho 42129 := by
      rw [seg45LadderFlatX72_eq, seg45LadderFlatY72_eq]
      unfold seg45LadderFlatX72 seg45LadderFlatY72
      linear_combination r3901
    have ha1 : rho 42128 * seg45AccX72 rho = rho 42130 := by
      rw [seg45LadderFlatX72_eq]
      unfold seg45LadderFlatX72
      linear_combination r3902
    have ha2 : rho 42127 * seg45AccY72 rho = rho 42131 := by
      rw [seg45LadderFlatY72_eq]
      unfold seg45LadderFlatY72
      linear_combination r3903
    have ha3 : 3021 * rho 42130 * rho 42131 = rho 42132 := by
      linear_combination r3904
    have ha4 : rho 42133 * (1 + rho 42132) = rho 42130 + rho 42131 := by
      linear_combination r3905
    have ha5 : rho 42134 * (1 - rho 42132) = rho 42129 - rho 42130 - rho 42131 := by
      linear_combination r3906
    have haddx :
        rho 42133 * (1 + 3021 * (rho 42128 * seg45AccX72 rho) * (rho 42127 * seg45AccY72 rho)) =
          rho 42128 * seg45AccX72 rho + rho 42127 * seg45AccY72 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42134 * (1 - 3021 * (rho 42128 * seg45AccX72 rho) * (rho 42127 * seg45AccY72 rho)) =
          (-1) * (rho 42128 * seg45AccX72 rho) - rho 42127 * seg45AccY72 rho +
            (seg45AccY72 rho - seg45AccX72 rho * (-1)) * (rho 42127 + rho 42128) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42134 * (1 - rho 42132) = rho 42129 - rho 42130 - rho 42131 := ha5
        _ = (-1) * rho 42130 - rho 42131 + (seg45AccY72 rho - seg45AccX72 rho * (-1)) * (rho 42127 + rho 42128) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX73 rho = seg45AccX72 rho - Bool.toZMod bit * (seg45AccX72 rho - rho 42133) := by
      have hd : rho 42135 = Bool.toZMod bit * (rho 42133 - seg45AccX72 rho) := by
        rw [← hbit, seg45LadderFlatX72_eq]
        unfold seg45LadderFlatX72
        linear_combination -r3907
      unfold seg45AccX73
      linear_combination hd
    have hsely : seg45AccY73 rho = seg45AccY72 rho - Bool.toZMod bit * (seg45AccY72 rho - rho 42134) := by
      have hd : rho 42136 = Bool.toZMod bit * (rho 42134 - seg45AccY72 rho) := by
        rw [← hbit, seg45LadderFlatY72_eq]
        unfold seg45LadderFlatY72
        linear_combination -r3908
      unfold seg45AccY73
      linear_combination hd
    have hd0 : rho 42127 * rho 42128 = rho 42137 := by linear_combination r3909
    have hd1 : rho 42127 * rho 42127 = rho 42138 := by linear_combination r3910
    have hd2 : rho 42128 * rho 42128 = rho 42139 := by linear_combination r3911
    have hd3 : rho 42140 * (rho 42128 * rho 42128 + rho 42127 * rho 42127 * (-1)) = 2 * (rho 42127 * rho 42128) := by
      rw [hd0, hd1, hd2]
      linear_combination r3912
    have hd4 : rho 42141 * (2 - (rho 42128 * rho 42128 + rho 42127 * rho 42127 * (-1))) = rho 42128 * rho 42128 - rho 42127 * rho 42127 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3913
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX72 rho : Seg45.F), (seg45AccY72 rho : Seg45.F)⟩
      ⟨(rho 42127 : Seg45.F), (rho 42128 : Seg45.F)⟩
      ⟨(rho 42133 : Seg45.F), (rho 42134 : Seg45.F)⟩
      ⟨(seg45AccX73 rho : Seg45.F), (seg45AccY73 rho : Seg45.F)⟩
      ⟨(rho 42140 : Seg45.F), (rho 42141 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung72

theorem seg45_rung73 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41021 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX73 rho : Seg45.F), (seg45AccY73 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42140 : Seg45.F), (rho 42141 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX73 rho : Seg45.F), (seg45AccY73 rho : Seg45.F)⟩
        ⟨(rho 42140 : Seg45.F), (rho 42141 : Seg45.F)⟩
        ⟨(seg45AccX74 rho : Seg45.F), (seg45AccY74 rho : Seg45.F)⟩
        ⟨(rho 42153 : Seg45.F), (rho 42154 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart48 at p48
  rcases p48 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3914, r3915, r3916, r3917, r3918, r3919⟩
  unfold Seg45.relationPart49 at p49
  rcases p49 with ⟨r3920, r3921, r3922, r3923, r3924, r3925, r3926, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow3914 Seg45.relationLc400 Seg45.relationLc400Part0 Seg45.relationLc400Part1 Seg45.relationLc400Part2 Seg45.relationLc400Part3 Seg45.relationLc400Part4 at r3914
  unfold Seg45.relationRow3915 Seg45.relationLc401 Seg45.relationLc401Part0 Seg45.relationLc401Part1 Seg45.relationLc401Part2 at r3915
  unfold Seg45.relationRow3916 Seg45.relationLc402 Seg45.relationLc402Part0 Seg45.relationLc402Part1 Seg45.relationLc402Part2 at r3916
  unfold Seg45.relationRow3917 at r3917
  unfold Seg45.relationRow3918 at r3918
  unfold Seg45.relationRow3919 at r3919
  unfold Seg45.relationRow3920 Seg45.relationLc403 Seg45.relationLc403Part0 Seg45.relationLc403Part1 Seg45.relationLc403Part2 at r3920
  unfold Seg45.relationRow3921 Seg45.relationLc404 Seg45.relationLc404Part0 Seg45.relationLc404Part1 Seg45.relationLc404Part2 at r3921
  unfold Seg45.relationRow3922 at r3922
  unfold Seg45.relationRow3923 at r3923
  unfold Seg45.relationRow3924 at r3924
  unfold Seg45.relationRow3925 at r3925
  unfold Seg45.relationRow3926 at r3926
  have hrung73 (bit : Bool) (hbit : rho 41021 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX73 rho : Seg45.F), (seg45AccY73 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42140 : Seg45.F), (rho 42141 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX73 rho : Seg45.F), (seg45AccY73 rho : Seg45.F)⟩
        ⟨(rho 42140 : Seg45.F), (rho 42141 : Seg45.F)⟩
        ⟨(seg45AccX74 rho : Seg45.F), (seg45AccY74 rho : Seg45.F)⟩
        ⟨(rho 42153 : Seg45.F), (rho 42154 : Seg45.F)⟩ := by
    have ha0 : (rho 42140 + rho 42141) * (seg45AccX73 rho + seg45AccY73 rho) = rho 42142 := by
      rw [seg45LadderFlatX73_eq, seg45LadderFlatY73_eq]
      unfold seg45LadderFlatX73 seg45LadderFlatY73
      linear_combination r3914
    have ha1 : rho 42141 * seg45AccX73 rho = rho 42143 := by
      rw [seg45LadderFlatX73_eq]
      unfold seg45LadderFlatX73
      linear_combination r3915
    have ha2 : rho 42140 * seg45AccY73 rho = rho 42144 := by
      rw [seg45LadderFlatY73_eq]
      unfold seg45LadderFlatY73
      linear_combination r3916
    have ha3 : 3021 * rho 42143 * rho 42144 = rho 42145 := by
      linear_combination r3917
    have ha4 : rho 42146 * (1 + rho 42145) = rho 42143 + rho 42144 := by
      linear_combination r3918
    have ha5 : rho 42147 * (1 - rho 42145) = rho 42142 - rho 42143 - rho 42144 := by
      linear_combination r3919
    have haddx :
        rho 42146 * (1 + 3021 * (rho 42141 * seg45AccX73 rho) * (rho 42140 * seg45AccY73 rho)) =
          rho 42141 * seg45AccX73 rho + rho 42140 * seg45AccY73 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42147 * (1 - 3021 * (rho 42141 * seg45AccX73 rho) * (rho 42140 * seg45AccY73 rho)) =
          (-1) * (rho 42141 * seg45AccX73 rho) - rho 42140 * seg45AccY73 rho +
            (seg45AccY73 rho - seg45AccX73 rho * (-1)) * (rho 42140 + rho 42141) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42147 * (1 - rho 42145) = rho 42142 - rho 42143 - rho 42144 := ha5
        _ = (-1) * rho 42143 - rho 42144 + (seg45AccY73 rho - seg45AccX73 rho * (-1)) * (rho 42140 + rho 42141) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX74 rho = seg45AccX73 rho - Bool.toZMod bit * (seg45AccX73 rho - rho 42146) := by
      have hd : rho 42148 = Bool.toZMod bit * (rho 42146 - seg45AccX73 rho) := by
        rw [← hbit, seg45LadderFlatX73_eq]
        unfold seg45LadderFlatX73
        linear_combination -r3920
      unfold seg45AccX74
      linear_combination hd
    have hsely : seg45AccY74 rho = seg45AccY73 rho - Bool.toZMod bit * (seg45AccY73 rho - rho 42147) := by
      have hd : rho 42149 = Bool.toZMod bit * (rho 42147 - seg45AccY73 rho) := by
        rw [← hbit, seg45LadderFlatY73_eq]
        unfold seg45LadderFlatY73
        linear_combination -r3921
      unfold seg45AccY74
      linear_combination hd
    have hd0 : rho 42140 * rho 42141 = rho 42150 := by linear_combination r3922
    have hd1 : rho 42140 * rho 42140 = rho 42151 := by linear_combination r3923
    have hd2 : rho 42141 * rho 42141 = rho 42152 := by linear_combination r3924
    have hd3 : rho 42153 * (rho 42141 * rho 42141 + rho 42140 * rho 42140 * (-1)) = 2 * (rho 42140 * rho 42141) := by
      rw [hd0, hd1, hd2]
      linear_combination r3925
    have hd4 : rho 42154 * (2 - (rho 42141 * rho 42141 + rho 42140 * rho 42140 * (-1))) = rho 42141 * rho 42141 - rho 42140 * rho 42140 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3926
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX73 rho : Seg45.F), (seg45AccY73 rho : Seg45.F)⟩
      ⟨(rho 42140 : Seg45.F), (rho 42141 : Seg45.F)⟩
      ⟨(rho 42146 : Seg45.F), (rho 42147 : Seg45.F)⟩
      ⟨(seg45AccX74 rho : Seg45.F), (seg45AccY74 rho : Seg45.F)⟩
      ⟨(rho 42153 : Seg45.F), (rho 42154 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung73

theorem seg45_rung74 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41022 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX74 rho : Seg45.F), (seg45AccY74 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42153 : Seg45.F), (rho 42154 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX74 rho : Seg45.F), (seg45AccY74 rho : Seg45.F)⟩
        ⟨(rho 42153 : Seg45.F), (rho 42154 : Seg45.F)⟩
        ⟨(seg45AccX75 rho : Seg45.F), (seg45AccY75 rho : Seg45.F)⟩
        ⟨(rho 42166 : Seg45.F), (rho 42167 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart49 at p49
  rcases p49 with ⟨_, _, _, _, _, _, _, r3927, r3928, r3929, r3930, r3931, r3932, r3933, r3934, r3935, r3936, r3937, r3938, r3939, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow3927 Seg45.relationLc405 Seg45.relationLc405Part0 Seg45.relationLc405Part1 Seg45.relationLc405Part2 Seg45.relationLc405Part3 Seg45.relationLc405Part4 at r3927
  unfold Seg45.relationRow3928 Seg45.relationLc406 Seg45.relationLc406Part0 Seg45.relationLc406Part1 Seg45.relationLc406Part2 at r3928
  unfold Seg45.relationRow3929 Seg45.relationLc407 Seg45.relationLc407Part0 Seg45.relationLc407Part1 Seg45.relationLc407Part2 at r3929
  unfold Seg45.relationRow3930 at r3930
  unfold Seg45.relationRow3931 at r3931
  unfold Seg45.relationRow3932 at r3932
  unfold Seg45.relationRow3933 Seg45.relationLc408 Seg45.relationLc408Part0 Seg45.relationLc408Part1 Seg45.relationLc408Part2 at r3933
  unfold Seg45.relationRow3934 Seg45.relationLc409 Seg45.relationLc409Part0 Seg45.relationLc409Part1 Seg45.relationLc409Part2 at r3934
  unfold Seg45.relationRow3935 at r3935
  unfold Seg45.relationRow3936 at r3936
  unfold Seg45.relationRow3937 at r3937
  unfold Seg45.relationRow3938 at r3938
  unfold Seg45.relationRow3939 at r3939
  have hrung74 (bit : Bool) (hbit : rho 41022 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX74 rho : Seg45.F), (seg45AccY74 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42153 : Seg45.F), (rho 42154 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX74 rho : Seg45.F), (seg45AccY74 rho : Seg45.F)⟩
        ⟨(rho 42153 : Seg45.F), (rho 42154 : Seg45.F)⟩
        ⟨(seg45AccX75 rho : Seg45.F), (seg45AccY75 rho : Seg45.F)⟩
        ⟨(rho 42166 : Seg45.F), (rho 42167 : Seg45.F)⟩ := by
    have ha0 : (rho 42153 + rho 42154) * (seg45AccX74 rho + seg45AccY74 rho) = rho 42155 := by
      rw [seg45LadderFlatX74_eq, seg45LadderFlatY74_eq]
      unfold seg45LadderFlatX74 seg45LadderFlatY74
      linear_combination r3927
    have ha1 : rho 42154 * seg45AccX74 rho = rho 42156 := by
      rw [seg45LadderFlatX74_eq]
      unfold seg45LadderFlatX74
      linear_combination r3928
    have ha2 : rho 42153 * seg45AccY74 rho = rho 42157 := by
      rw [seg45LadderFlatY74_eq]
      unfold seg45LadderFlatY74
      linear_combination r3929
    have ha3 : 3021 * rho 42156 * rho 42157 = rho 42158 := by
      linear_combination r3930
    have ha4 : rho 42159 * (1 + rho 42158) = rho 42156 + rho 42157 := by
      linear_combination r3931
    have ha5 : rho 42160 * (1 - rho 42158) = rho 42155 - rho 42156 - rho 42157 := by
      linear_combination r3932
    have haddx :
        rho 42159 * (1 + 3021 * (rho 42154 * seg45AccX74 rho) * (rho 42153 * seg45AccY74 rho)) =
          rho 42154 * seg45AccX74 rho + rho 42153 * seg45AccY74 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42160 * (1 - 3021 * (rho 42154 * seg45AccX74 rho) * (rho 42153 * seg45AccY74 rho)) =
          (-1) * (rho 42154 * seg45AccX74 rho) - rho 42153 * seg45AccY74 rho +
            (seg45AccY74 rho - seg45AccX74 rho * (-1)) * (rho 42153 + rho 42154) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42160 * (1 - rho 42158) = rho 42155 - rho 42156 - rho 42157 := ha5
        _ = (-1) * rho 42156 - rho 42157 + (seg45AccY74 rho - seg45AccX74 rho * (-1)) * (rho 42153 + rho 42154) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX75 rho = seg45AccX74 rho - Bool.toZMod bit * (seg45AccX74 rho - rho 42159) := by
      have hd : rho 42161 = Bool.toZMod bit * (rho 42159 - seg45AccX74 rho) := by
        rw [← hbit, seg45LadderFlatX74_eq]
        unfold seg45LadderFlatX74
        linear_combination -r3933
      unfold seg45AccX75
      linear_combination hd
    have hsely : seg45AccY75 rho = seg45AccY74 rho - Bool.toZMod bit * (seg45AccY74 rho - rho 42160) := by
      have hd : rho 42162 = Bool.toZMod bit * (rho 42160 - seg45AccY74 rho) := by
        rw [← hbit, seg45LadderFlatY74_eq]
        unfold seg45LadderFlatY74
        linear_combination -r3934
      unfold seg45AccY75
      linear_combination hd
    have hd0 : rho 42153 * rho 42154 = rho 42163 := by linear_combination r3935
    have hd1 : rho 42153 * rho 42153 = rho 42164 := by linear_combination r3936
    have hd2 : rho 42154 * rho 42154 = rho 42165 := by linear_combination r3937
    have hd3 : rho 42166 * (rho 42154 * rho 42154 + rho 42153 * rho 42153 * (-1)) = 2 * (rho 42153 * rho 42154) := by
      rw [hd0, hd1, hd2]
      linear_combination r3938
    have hd4 : rho 42167 * (2 - (rho 42154 * rho 42154 + rho 42153 * rho 42153 * (-1))) = rho 42154 * rho 42154 - rho 42153 * rho 42153 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3939
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX74 rho : Seg45.F), (seg45AccY74 rho : Seg45.F)⟩
      ⟨(rho 42153 : Seg45.F), (rho 42154 : Seg45.F)⟩
      ⟨(rho 42159 : Seg45.F), (rho 42160 : Seg45.F)⟩
      ⟨(seg45AccX75 rho : Seg45.F), (seg45AccY75 rho : Seg45.F)⟩
      ⟨(rho 42166 : Seg45.F), (rho 42167 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung74

theorem seg45_rung75 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41023 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX75 rho : Seg45.F), (seg45AccY75 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42166 : Seg45.F), (rho 42167 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX75 rho : Seg45.F), (seg45AccY75 rho : Seg45.F)⟩
        ⟨(rho 42166 : Seg45.F), (rho 42167 : Seg45.F)⟩
        ⟨(seg45AccX76 rho : Seg45.F), (seg45AccY76 rho : Seg45.F)⟩
        ⟨(rho 42179 : Seg45.F), (rho 42180 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart49 at p49
  rcases p49 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3940, r3941, r3942, r3943, r3944, r3945, r3946, r3947, r3948, r3949, r3950, r3951, r3952, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow3940 Seg45.relationLc410 Seg45.relationLc410Part0 Seg45.relationLc410Part1 Seg45.relationLc410Part2 Seg45.relationLc410Part3 Seg45.relationLc410Part4 at r3940
  unfold Seg45.relationRow3941 Seg45.relationLc411 Seg45.relationLc411Part0 Seg45.relationLc411Part1 Seg45.relationLc411Part2 at r3941
  unfold Seg45.relationRow3942 Seg45.relationLc412 Seg45.relationLc412Part0 Seg45.relationLc412Part1 Seg45.relationLc412Part2 at r3942
  unfold Seg45.relationRow3943 at r3943
  unfold Seg45.relationRow3944 at r3944
  unfold Seg45.relationRow3945 at r3945
  unfold Seg45.relationRow3946 Seg45.relationLc413 Seg45.relationLc413Part0 Seg45.relationLc413Part1 Seg45.relationLc413Part2 at r3946
  unfold Seg45.relationRow3947 Seg45.relationLc414 Seg45.relationLc414Part0 Seg45.relationLc414Part1 Seg45.relationLc414Part2 at r3947
  unfold Seg45.relationRow3948 at r3948
  unfold Seg45.relationRow3949 at r3949
  unfold Seg45.relationRow3950 at r3950
  unfold Seg45.relationRow3951 at r3951
  unfold Seg45.relationRow3952 at r3952
  have hrung75 (bit : Bool) (hbit : rho 41023 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX75 rho : Seg45.F), (seg45AccY75 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42166 : Seg45.F), (rho 42167 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX75 rho : Seg45.F), (seg45AccY75 rho : Seg45.F)⟩
        ⟨(rho 42166 : Seg45.F), (rho 42167 : Seg45.F)⟩
        ⟨(seg45AccX76 rho : Seg45.F), (seg45AccY76 rho : Seg45.F)⟩
        ⟨(rho 42179 : Seg45.F), (rho 42180 : Seg45.F)⟩ := by
    have ha0 : (rho 42166 + rho 42167) * (seg45AccX75 rho + seg45AccY75 rho) = rho 42168 := by
      rw [seg45LadderFlatX75_eq, seg45LadderFlatY75_eq]
      unfold seg45LadderFlatX75 seg45LadderFlatY75
      linear_combination r3940
    have ha1 : rho 42167 * seg45AccX75 rho = rho 42169 := by
      rw [seg45LadderFlatX75_eq]
      unfold seg45LadderFlatX75
      linear_combination r3941
    have ha2 : rho 42166 * seg45AccY75 rho = rho 42170 := by
      rw [seg45LadderFlatY75_eq]
      unfold seg45LadderFlatY75
      linear_combination r3942
    have ha3 : 3021 * rho 42169 * rho 42170 = rho 42171 := by
      linear_combination r3943
    have ha4 : rho 42172 * (1 + rho 42171) = rho 42169 + rho 42170 := by
      linear_combination r3944
    have ha5 : rho 42173 * (1 - rho 42171) = rho 42168 - rho 42169 - rho 42170 := by
      linear_combination r3945
    have haddx :
        rho 42172 * (1 + 3021 * (rho 42167 * seg45AccX75 rho) * (rho 42166 * seg45AccY75 rho)) =
          rho 42167 * seg45AccX75 rho + rho 42166 * seg45AccY75 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42173 * (1 - 3021 * (rho 42167 * seg45AccX75 rho) * (rho 42166 * seg45AccY75 rho)) =
          (-1) * (rho 42167 * seg45AccX75 rho) - rho 42166 * seg45AccY75 rho +
            (seg45AccY75 rho - seg45AccX75 rho * (-1)) * (rho 42166 + rho 42167) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42173 * (1 - rho 42171) = rho 42168 - rho 42169 - rho 42170 := ha5
        _ = (-1) * rho 42169 - rho 42170 + (seg45AccY75 rho - seg45AccX75 rho * (-1)) * (rho 42166 + rho 42167) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX76 rho = seg45AccX75 rho - Bool.toZMod bit * (seg45AccX75 rho - rho 42172) := by
      have hd : rho 42174 = Bool.toZMod bit * (rho 42172 - seg45AccX75 rho) := by
        rw [← hbit, seg45LadderFlatX75_eq]
        unfold seg45LadderFlatX75
        linear_combination -r3946
      unfold seg45AccX76
      linear_combination hd
    have hsely : seg45AccY76 rho = seg45AccY75 rho - Bool.toZMod bit * (seg45AccY75 rho - rho 42173) := by
      have hd : rho 42175 = Bool.toZMod bit * (rho 42173 - seg45AccY75 rho) := by
        rw [← hbit, seg45LadderFlatY75_eq]
        unfold seg45LadderFlatY75
        linear_combination -r3947
      unfold seg45AccY76
      linear_combination hd
    have hd0 : rho 42166 * rho 42167 = rho 42176 := by linear_combination r3948
    have hd1 : rho 42166 * rho 42166 = rho 42177 := by linear_combination r3949
    have hd2 : rho 42167 * rho 42167 = rho 42178 := by linear_combination r3950
    have hd3 : rho 42179 * (rho 42167 * rho 42167 + rho 42166 * rho 42166 * (-1)) = 2 * (rho 42166 * rho 42167) := by
      rw [hd0, hd1, hd2]
      linear_combination r3951
    have hd4 : rho 42180 * (2 - (rho 42167 * rho 42167 + rho 42166 * rho 42166 * (-1))) = rho 42167 * rho 42167 - rho 42166 * rho 42166 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3952
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX75 rho : Seg45.F), (seg45AccY75 rho : Seg45.F)⟩
      ⟨(rho 42166 : Seg45.F), (rho 42167 : Seg45.F)⟩
      ⟨(rho 42172 : Seg45.F), (rho 42173 : Seg45.F)⟩
      ⟨(seg45AccX76 rho : Seg45.F), (seg45AccY76 rho : Seg45.F)⟩
      ⟨(rho 42179 : Seg45.F), (rho 42180 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung75

theorem seg45_rung76 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41024 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX76 rho : Seg45.F), (seg45AccY76 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42179 : Seg45.F), (rho 42180 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX76 rho : Seg45.F), (seg45AccY76 rho : Seg45.F)⟩
        ⟨(rho 42179 : Seg45.F), (rho 42180 : Seg45.F)⟩
        ⟨(seg45AccX77 rho : Seg45.F), (seg45AccY77 rho : Seg45.F)⟩
        ⟨(rho 42192 : Seg45.F), (rho 42193 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart49 at p49
  rcases p49 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3953, r3954, r3955, r3956, r3957, r3958, r3959, r3960, r3961, r3962, r3963, r3964, r3965, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow3953 Seg45.relationLc415 Seg45.relationLc415Part0 Seg45.relationLc415Part1 Seg45.relationLc415Part2 Seg45.relationLc415Part3 Seg45.relationLc415Part4 at r3953
  unfold Seg45.relationRow3954 Seg45.relationLc416 Seg45.relationLc416Part0 Seg45.relationLc416Part1 Seg45.relationLc416Part2 at r3954
  unfold Seg45.relationRow3955 Seg45.relationLc417 Seg45.relationLc417Part0 Seg45.relationLc417Part1 Seg45.relationLc417Part2 at r3955
  unfold Seg45.relationRow3956 at r3956
  unfold Seg45.relationRow3957 at r3957
  unfold Seg45.relationRow3958 at r3958
  unfold Seg45.relationRow3959 Seg45.relationLc418 Seg45.relationLc418Part0 Seg45.relationLc418Part1 Seg45.relationLc418Part2 at r3959
  unfold Seg45.relationRow3960 Seg45.relationLc419 Seg45.relationLc419Part0 Seg45.relationLc419Part1 Seg45.relationLc419Part2 at r3960
  unfold Seg45.relationRow3961 at r3961
  unfold Seg45.relationRow3962 at r3962
  unfold Seg45.relationRow3963 at r3963
  unfold Seg45.relationRow3964 at r3964
  unfold Seg45.relationRow3965 at r3965
  have hrung76 (bit : Bool) (hbit : rho 41024 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX76 rho : Seg45.F), (seg45AccY76 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42179 : Seg45.F), (rho 42180 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX76 rho : Seg45.F), (seg45AccY76 rho : Seg45.F)⟩
        ⟨(rho 42179 : Seg45.F), (rho 42180 : Seg45.F)⟩
        ⟨(seg45AccX77 rho : Seg45.F), (seg45AccY77 rho : Seg45.F)⟩
        ⟨(rho 42192 : Seg45.F), (rho 42193 : Seg45.F)⟩ := by
    have ha0 : (rho 42179 + rho 42180) * (seg45AccX76 rho + seg45AccY76 rho) = rho 42181 := by
      rw [seg45LadderFlatX76_eq, seg45LadderFlatY76_eq]
      unfold seg45LadderFlatX76 seg45LadderFlatY76
      linear_combination r3953
    have ha1 : rho 42180 * seg45AccX76 rho = rho 42182 := by
      rw [seg45LadderFlatX76_eq]
      unfold seg45LadderFlatX76
      linear_combination r3954
    have ha2 : rho 42179 * seg45AccY76 rho = rho 42183 := by
      rw [seg45LadderFlatY76_eq]
      unfold seg45LadderFlatY76
      linear_combination r3955
    have ha3 : 3021 * rho 42182 * rho 42183 = rho 42184 := by
      linear_combination r3956
    have ha4 : rho 42185 * (1 + rho 42184) = rho 42182 + rho 42183 := by
      linear_combination r3957
    have ha5 : rho 42186 * (1 - rho 42184) = rho 42181 - rho 42182 - rho 42183 := by
      linear_combination r3958
    have haddx :
        rho 42185 * (1 + 3021 * (rho 42180 * seg45AccX76 rho) * (rho 42179 * seg45AccY76 rho)) =
          rho 42180 * seg45AccX76 rho + rho 42179 * seg45AccY76 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42186 * (1 - 3021 * (rho 42180 * seg45AccX76 rho) * (rho 42179 * seg45AccY76 rho)) =
          (-1) * (rho 42180 * seg45AccX76 rho) - rho 42179 * seg45AccY76 rho +
            (seg45AccY76 rho - seg45AccX76 rho * (-1)) * (rho 42179 + rho 42180) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42186 * (1 - rho 42184) = rho 42181 - rho 42182 - rho 42183 := ha5
        _ = (-1) * rho 42182 - rho 42183 + (seg45AccY76 rho - seg45AccX76 rho * (-1)) * (rho 42179 + rho 42180) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX77 rho = seg45AccX76 rho - Bool.toZMod bit * (seg45AccX76 rho - rho 42185) := by
      have hd : rho 42187 = Bool.toZMod bit * (rho 42185 - seg45AccX76 rho) := by
        rw [← hbit, seg45LadderFlatX76_eq]
        unfold seg45LadderFlatX76
        linear_combination -r3959
      unfold seg45AccX77
      linear_combination hd
    have hsely : seg45AccY77 rho = seg45AccY76 rho - Bool.toZMod bit * (seg45AccY76 rho - rho 42186) := by
      have hd : rho 42188 = Bool.toZMod bit * (rho 42186 - seg45AccY76 rho) := by
        rw [← hbit, seg45LadderFlatY76_eq]
        unfold seg45LadderFlatY76
        linear_combination -r3960
      unfold seg45AccY77
      linear_combination hd
    have hd0 : rho 42179 * rho 42180 = rho 42189 := by linear_combination r3961
    have hd1 : rho 42179 * rho 42179 = rho 42190 := by linear_combination r3962
    have hd2 : rho 42180 * rho 42180 = rho 42191 := by linear_combination r3963
    have hd3 : rho 42192 * (rho 42180 * rho 42180 + rho 42179 * rho 42179 * (-1)) = 2 * (rho 42179 * rho 42180) := by
      rw [hd0, hd1, hd2]
      linear_combination r3964
    have hd4 : rho 42193 * (2 - (rho 42180 * rho 42180 + rho 42179 * rho 42179 * (-1))) = rho 42180 * rho 42180 - rho 42179 * rho 42179 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3965
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX76 rho : Seg45.F), (seg45AccY76 rho : Seg45.F)⟩
      ⟨(rho 42179 : Seg45.F), (rho 42180 : Seg45.F)⟩
      ⟨(rho 42185 : Seg45.F), (rho 42186 : Seg45.F)⟩
      ⟨(seg45AccX77 rho : Seg45.F), (seg45AccY77 rho : Seg45.F)⟩
      ⟨(rho 42192 : Seg45.F), (rho 42193 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung76

theorem seg45_rung77 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41025 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX77 rho : Seg45.F), (seg45AccY77 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42192 : Seg45.F), (rho 42193 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX77 rho : Seg45.F), (seg45AccY77 rho : Seg45.F)⟩
        ⟨(rho 42192 : Seg45.F), (rho 42193 : Seg45.F)⟩
        ⟨(seg45AccX78 rho : Seg45.F), (seg45AccY78 rho : Seg45.F)⟩
        ⟨(rho 42205 : Seg45.F), (rho 42206 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart49 at p49
  rcases p49 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3966, r3967, r3968, r3969, r3970, r3971, r3972, r3973, r3974, r3975, r3976, r3977, r3978, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow3966 Seg45.relationLc420 Seg45.relationLc420Part0 Seg45.relationLc420Part1 Seg45.relationLc420Part2 Seg45.relationLc420Part3 Seg45.relationLc420Part4 at r3966
  unfold Seg45.relationRow3967 Seg45.relationLc421 Seg45.relationLc421Part0 Seg45.relationLc421Part1 Seg45.relationLc421Part2 at r3967
  unfold Seg45.relationRow3968 Seg45.relationLc422 Seg45.relationLc422Part0 Seg45.relationLc422Part1 Seg45.relationLc422Part2 at r3968
  unfold Seg45.relationRow3969 at r3969
  unfold Seg45.relationRow3970 at r3970
  unfold Seg45.relationRow3971 at r3971
  unfold Seg45.relationRow3972 Seg45.relationLc423 Seg45.relationLc423Part0 Seg45.relationLc423Part1 Seg45.relationLc423Part2 at r3972
  unfold Seg45.relationRow3973 Seg45.relationLc424 Seg45.relationLc424Part0 Seg45.relationLc424Part1 Seg45.relationLc424Part2 at r3973
  unfold Seg45.relationRow3974 at r3974
  unfold Seg45.relationRow3975 at r3975
  unfold Seg45.relationRow3976 at r3976
  unfold Seg45.relationRow3977 at r3977
  unfold Seg45.relationRow3978 at r3978
  have hrung77 (bit : Bool) (hbit : rho 41025 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX77 rho : Seg45.F), (seg45AccY77 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42192 : Seg45.F), (rho 42193 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX77 rho : Seg45.F), (seg45AccY77 rho : Seg45.F)⟩
        ⟨(rho 42192 : Seg45.F), (rho 42193 : Seg45.F)⟩
        ⟨(seg45AccX78 rho : Seg45.F), (seg45AccY78 rho : Seg45.F)⟩
        ⟨(rho 42205 : Seg45.F), (rho 42206 : Seg45.F)⟩ := by
    have ha0 : (rho 42192 + rho 42193) * (seg45AccX77 rho + seg45AccY77 rho) = rho 42194 := by
      rw [seg45LadderFlatX77_eq, seg45LadderFlatY77_eq]
      unfold seg45LadderFlatX77 seg45LadderFlatY77
      linear_combination r3966
    have ha1 : rho 42193 * seg45AccX77 rho = rho 42195 := by
      rw [seg45LadderFlatX77_eq]
      unfold seg45LadderFlatX77
      linear_combination r3967
    have ha2 : rho 42192 * seg45AccY77 rho = rho 42196 := by
      rw [seg45LadderFlatY77_eq]
      unfold seg45LadderFlatY77
      linear_combination r3968
    have ha3 : 3021 * rho 42195 * rho 42196 = rho 42197 := by
      linear_combination r3969
    have ha4 : rho 42198 * (1 + rho 42197) = rho 42195 + rho 42196 := by
      linear_combination r3970
    have ha5 : rho 42199 * (1 - rho 42197) = rho 42194 - rho 42195 - rho 42196 := by
      linear_combination r3971
    have haddx :
        rho 42198 * (1 + 3021 * (rho 42193 * seg45AccX77 rho) * (rho 42192 * seg45AccY77 rho)) =
          rho 42193 * seg45AccX77 rho + rho 42192 * seg45AccY77 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42199 * (1 - 3021 * (rho 42193 * seg45AccX77 rho) * (rho 42192 * seg45AccY77 rho)) =
          (-1) * (rho 42193 * seg45AccX77 rho) - rho 42192 * seg45AccY77 rho +
            (seg45AccY77 rho - seg45AccX77 rho * (-1)) * (rho 42192 + rho 42193) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42199 * (1 - rho 42197) = rho 42194 - rho 42195 - rho 42196 := ha5
        _ = (-1) * rho 42195 - rho 42196 + (seg45AccY77 rho - seg45AccX77 rho * (-1)) * (rho 42192 + rho 42193) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX78 rho = seg45AccX77 rho - Bool.toZMod bit * (seg45AccX77 rho - rho 42198) := by
      have hd : rho 42200 = Bool.toZMod bit * (rho 42198 - seg45AccX77 rho) := by
        rw [← hbit, seg45LadderFlatX77_eq]
        unfold seg45LadderFlatX77
        linear_combination -r3972
      unfold seg45AccX78
      linear_combination hd
    have hsely : seg45AccY78 rho = seg45AccY77 rho - Bool.toZMod bit * (seg45AccY77 rho - rho 42199) := by
      have hd : rho 42201 = Bool.toZMod bit * (rho 42199 - seg45AccY77 rho) := by
        rw [← hbit, seg45LadderFlatY77_eq]
        unfold seg45LadderFlatY77
        linear_combination -r3973
      unfold seg45AccY78
      linear_combination hd
    have hd0 : rho 42192 * rho 42193 = rho 42202 := by linear_combination r3974
    have hd1 : rho 42192 * rho 42192 = rho 42203 := by linear_combination r3975
    have hd2 : rho 42193 * rho 42193 = rho 42204 := by linear_combination r3976
    have hd3 : rho 42205 * (rho 42193 * rho 42193 + rho 42192 * rho 42192 * (-1)) = 2 * (rho 42192 * rho 42193) := by
      rw [hd0, hd1, hd2]
      linear_combination r3977
    have hd4 : rho 42206 * (2 - (rho 42193 * rho 42193 + rho 42192 * rho 42192 * (-1))) = rho 42193 * rho 42193 - rho 42192 * rho 42192 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3978
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX77 rho : Seg45.F), (seg45AccY77 rho : Seg45.F)⟩
      ⟨(rho 42192 : Seg45.F), (rho 42193 : Seg45.F)⟩
      ⟨(rho 42198 : Seg45.F), (rho 42199 : Seg45.F)⟩
      ⟨(seg45AccX78 rho : Seg45.F), (seg45AccY78 rho : Seg45.F)⟩
      ⟨(rho 42205 : Seg45.F), (rho 42206 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung77

theorem seg45_rung78 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41026 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX78 rho : Seg45.F), (seg45AccY78 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42205 : Seg45.F), (rho 42206 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX78 rho : Seg45.F), (seg45AccY78 rho : Seg45.F)⟩
        ⟨(rho 42205 : Seg45.F), (rho 42206 : Seg45.F)⟩
        ⟨(seg45AccX79 rho : Seg45.F), (seg45AccY79 rho : Seg45.F)⟩
        ⟨(rho 42218 : Seg45.F), (rho 42219 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart49 at p49
  rcases p49 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3979, r3980, r3981, r3982, r3983, r3984, r3985, r3986, r3987, r3988, r3989, r3990, r3991, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow3979 Seg45.relationLc425 Seg45.relationLc425Part0 Seg45.relationLc425Part1 Seg45.relationLc425Part2 Seg45.relationLc425Part3 Seg45.relationLc425Part4 at r3979
  unfold Seg45.relationRow3980 Seg45.relationLc426 Seg45.relationLc426Part0 Seg45.relationLc426Part1 Seg45.relationLc426Part2 at r3980
  unfold Seg45.relationRow3981 Seg45.relationLc427 Seg45.relationLc427Part0 Seg45.relationLc427Part1 Seg45.relationLc427Part2 at r3981
  unfold Seg45.relationRow3982 at r3982
  unfold Seg45.relationRow3983 at r3983
  unfold Seg45.relationRow3984 at r3984
  unfold Seg45.relationRow3985 Seg45.relationLc428 Seg45.relationLc428Part0 Seg45.relationLc428Part1 Seg45.relationLc428Part2 at r3985
  unfold Seg45.relationRow3986 Seg45.relationLc429 Seg45.relationLc429Part0 Seg45.relationLc429Part1 Seg45.relationLc429Part2 at r3986
  unfold Seg45.relationRow3987 at r3987
  unfold Seg45.relationRow3988 at r3988
  unfold Seg45.relationRow3989 at r3989
  unfold Seg45.relationRow3990 at r3990
  unfold Seg45.relationRow3991 at r3991
  have hrung78 (bit : Bool) (hbit : rho 41026 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX78 rho : Seg45.F), (seg45AccY78 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42205 : Seg45.F), (rho 42206 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX78 rho : Seg45.F), (seg45AccY78 rho : Seg45.F)⟩
        ⟨(rho 42205 : Seg45.F), (rho 42206 : Seg45.F)⟩
        ⟨(seg45AccX79 rho : Seg45.F), (seg45AccY79 rho : Seg45.F)⟩
        ⟨(rho 42218 : Seg45.F), (rho 42219 : Seg45.F)⟩ := by
    have ha0 : (rho 42205 + rho 42206) * (seg45AccX78 rho + seg45AccY78 rho) = rho 42207 := by
      rw [seg45LadderFlatX78_eq, seg45LadderFlatY78_eq]
      unfold seg45LadderFlatX78 seg45LadderFlatY78
      linear_combination r3979
    have ha1 : rho 42206 * seg45AccX78 rho = rho 42208 := by
      rw [seg45LadderFlatX78_eq]
      unfold seg45LadderFlatX78
      linear_combination r3980
    have ha2 : rho 42205 * seg45AccY78 rho = rho 42209 := by
      rw [seg45LadderFlatY78_eq]
      unfold seg45LadderFlatY78
      linear_combination r3981
    have ha3 : 3021 * rho 42208 * rho 42209 = rho 42210 := by
      linear_combination r3982
    have ha4 : rho 42211 * (1 + rho 42210) = rho 42208 + rho 42209 := by
      linear_combination r3983
    have ha5 : rho 42212 * (1 - rho 42210) = rho 42207 - rho 42208 - rho 42209 := by
      linear_combination r3984
    have haddx :
        rho 42211 * (1 + 3021 * (rho 42206 * seg45AccX78 rho) * (rho 42205 * seg45AccY78 rho)) =
          rho 42206 * seg45AccX78 rho + rho 42205 * seg45AccY78 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42212 * (1 - 3021 * (rho 42206 * seg45AccX78 rho) * (rho 42205 * seg45AccY78 rho)) =
          (-1) * (rho 42206 * seg45AccX78 rho) - rho 42205 * seg45AccY78 rho +
            (seg45AccY78 rho - seg45AccX78 rho * (-1)) * (rho 42205 + rho 42206) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42212 * (1 - rho 42210) = rho 42207 - rho 42208 - rho 42209 := ha5
        _ = (-1) * rho 42208 - rho 42209 + (seg45AccY78 rho - seg45AccX78 rho * (-1)) * (rho 42205 + rho 42206) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX79 rho = seg45AccX78 rho - Bool.toZMod bit * (seg45AccX78 rho - rho 42211) := by
      have hd : rho 42213 = Bool.toZMod bit * (rho 42211 - seg45AccX78 rho) := by
        rw [← hbit, seg45LadderFlatX78_eq]
        unfold seg45LadderFlatX78
        linear_combination -r3985
      unfold seg45AccX79
      linear_combination hd
    have hsely : seg45AccY79 rho = seg45AccY78 rho - Bool.toZMod bit * (seg45AccY78 rho - rho 42212) := by
      have hd : rho 42214 = Bool.toZMod bit * (rho 42212 - seg45AccY78 rho) := by
        rw [← hbit, seg45LadderFlatY78_eq]
        unfold seg45LadderFlatY78
        linear_combination -r3986
      unfold seg45AccY79
      linear_combination hd
    have hd0 : rho 42205 * rho 42206 = rho 42215 := by linear_combination r3987
    have hd1 : rho 42205 * rho 42205 = rho 42216 := by linear_combination r3988
    have hd2 : rho 42206 * rho 42206 = rho 42217 := by linear_combination r3989
    have hd3 : rho 42218 * (rho 42206 * rho 42206 + rho 42205 * rho 42205 * (-1)) = 2 * (rho 42205 * rho 42206) := by
      rw [hd0, hd1, hd2]
      linear_combination r3990
    have hd4 : rho 42219 * (2 - (rho 42206 * rho 42206 + rho 42205 * rho 42205 * (-1))) = rho 42206 * rho 42206 - rho 42205 * rho 42205 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3991
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX78 rho : Seg45.F), (seg45AccY78 rho : Seg45.F)⟩
      ⟨(rho 42205 : Seg45.F), (rho 42206 : Seg45.F)⟩
      ⟨(rho 42211 : Seg45.F), (rho 42212 : Seg45.F)⟩
      ⟨(seg45AccX79 rho : Seg45.F), (seg45AccY79 rho : Seg45.F)⟩
      ⟨(rho 42218 : Seg45.F), (rho 42219 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung78

theorem seg45_rung79 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41027 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX79 rho : Seg45.F), (seg45AccY79 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42218 : Seg45.F), (rho 42219 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX79 rho : Seg45.F), (seg45AccY79 rho : Seg45.F)⟩
        ⟨(rho 42218 : Seg45.F), (rho 42219 : Seg45.F)⟩
        ⟨(seg45AccX80 rho : Seg45.F), (seg45AccY80 rho : Seg45.F)⟩
        ⟨(rho 42231 : Seg45.F), (rho 42232 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart49 at p49
  rcases p49 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3992, r3993, r3994, r3995, r3996, r3997, r3998, r3999⟩
  unfold Seg45.relationPart50 at p50
  rcases p50 with ⟨r4000, r4001, r4002, r4003, r4004, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow3992 Seg45.relationLc430 Seg45.relationLc430Part0 Seg45.relationLc430Part1 Seg45.relationLc430Part2 Seg45.relationLc430Part3 Seg45.relationLc430Part4 at r3992
  unfold Seg45.relationRow3993 Seg45.relationLc431 Seg45.relationLc431Part0 Seg45.relationLc431Part1 Seg45.relationLc431Part2 at r3993
  unfold Seg45.relationRow3994 Seg45.relationLc432 Seg45.relationLc432Part0 Seg45.relationLc432Part1 Seg45.relationLc432Part2 at r3994
  unfold Seg45.relationRow3995 at r3995
  unfold Seg45.relationRow3996 at r3996
  unfold Seg45.relationRow3997 at r3997
  unfold Seg45.relationRow3998 Seg45.relationLc433 Seg45.relationLc433Part0 Seg45.relationLc433Part1 Seg45.relationLc433Part2 at r3998
  unfold Seg45.relationRow3999 Seg45.relationLc434 Seg45.relationLc434Part0 Seg45.relationLc434Part1 Seg45.relationLc434Part2 at r3999
  unfold Seg45.relationRow4000 at r4000
  unfold Seg45.relationRow4001 at r4001
  unfold Seg45.relationRow4002 at r4002
  unfold Seg45.relationRow4003 at r4003
  unfold Seg45.relationRow4004 at r4004
  have hrung79 (bit : Bool) (hbit : rho 41027 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX79 rho : Seg45.F), (seg45AccY79 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42218 : Seg45.F), (rho 42219 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX79 rho : Seg45.F), (seg45AccY79 rho : Seg45.F)⟩
        ⟨(rho 42218 : Seg45.F), (rho 42219 : Seg45.F)⟩
        ⟨(seg45AccX80 rho : Seg45.F), (seg45AccY80 rho : Seg45.F)⟩
        ⟨(rho 42231 : Seg45.F), (rho 42232 : Seg45.F)⟩ := by
    have ha0 : (rho 42218 + rho 42219) * (seg45AccX79 rho + seg45AccY79 rho) = rho 42220 := by
      rw [seg45LadderFlatX79_eq, seg45LadderFlatY79_eq]
      unfold seg45LadderFlatX79 seg45LadderFlatY79
      linear_combination r3992
    have ha1 : rho 42219 * seg45AccX79 rho = rho 42221 := by
      rw [seg45LadderFlatX79_eq]
      unfold seg45LadderFlatX79
      linear_combination r3993
    have ha2 : rho 42218 * seg45AccY79 rho = rho 42222 := by
      rw [seg45LadderFlatY79_eq]
      unfold seg45LadderFlatY79
      linear_combination r3994
    have ha3 : 3021 * rho 42221 * rho 42222 = rho 42223 := by
      linear_combination r3995
    have ha4 : rho 42224 * (1 + rho 42223) = rho 42221 + rho 42222 := by
      linear_combination r3996
    have ha5 : rho 42225 * (1 - rho 42223) = rho 42220 - rho 42221 - rho 42222 := by
      linear_combination r3997
    have haddx :
        rho 42224 * (1 + 3021 * (rho 42219 * seg45AccX79 rho) * (rho 42218 * seg45AccY79 rho)) =
          rho 42219 * seg45AccX79 rho + rho 42218 * seg45AccY79 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42225 * (1 - 3021 * (rho 42219 * seg45AccX79 rho) * (rho 42218 * seg45AccY79 rho)) =
          (-1) * (rho 42219 * seg45AccX79 rho) - rho 42218 * seg45AccY79 rho +
            (seg45AccY79 rho - seg45AccX79 rho * (-1)) * (rho 42218 + rho 42219) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42225 * (1 - rho 42223) = rho 42220 - rho 42221 - rho 42222 := ha5
        _ = (-1) * rho 42221 - rho 42222 + (seg45AccY79 rho - seg45AccX79 rho * (-1)) * (rho 42218 + rho 42219) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX80 rho = seg45AccX79 rho - Bool.toZMod bit * (seg45AccX79 rho - rho 42224) := by
      have hd : rho 42226 = Bool.toZMod bit * (rho 42224 - seg45AccX79 rho) := by
        rw [← hbit, seg45LadderFlatX79_eq]
        unfold seg45LadderFlatX79
        linear_combination -r3998
      unfold seg45AccX80
      linear_combination hd
    have hsely : seg45AccY80 rho = seg45AccY79 rho - Bool.toZMod bit * (seg45AccY79 rho - rho 42225) := by
      have hd : rho 42227 = Bool.toZMod bit * (rho 42225 - seg45AccY79 rho) := by
        rw [← hbit, seg45LadderFlatY79_eq]
        unfold seg45LadderFlatY79
        linear_combination -r3999
      unfold seg45AccY80
      linear_combination hd
    have hd0 : rho 42218 * rho 42219 = rho 42228 := by linear_combination r4000
    have hd1 : rho 42218 * rho 42218 = rho 42229 := by linear_combination r4001
    have hd2 : rho 42219 * rho 42219 = rho 42230 := by linear_combination r4002
    have hd3 : rho 42231 * (rho 42219 * rho 42219 + rho 42218 * rho 42218 * (-1)) = 2 * (rho 42218 * rho 42219) := by
      rw [hd0, hd1, hd2]
      linear_combination r4003
    have hd4 : rho 42232 * (2 - (rho 42219 * rho 42219 + rho 42218 * rho 42218 * (-1))) = rho 42219 * rho 42219 - rho 42218 * rho 42218 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4004
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX79 rho : Seg45.F), (seg45AccY79 rho : Seg45.F)⟩
      ⟨(rho 42218 : Seg45.F), (rho 42219 : Seg45.F)⟩
      ⟨(rho 42224 : Seg45.F), (rho 42225 : Seg45.F)⟩
      ⟨(seg45AccX80 rho : Seg45.F), (seg45AccY80 rho : Seg45.F)⟩
      ⟨(rho 42231 : Seg45.F), (rho 42232 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung79

theorem seg45_rung80 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41028 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX80 rho : Seg45.F), (seg45AccY80 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42231 : Seg45.F), (rho 42232 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX80 rho : Seg45.F), (seg45AccY80 rho : Seg45.F)⟩
        ⟨(rho 42231 : Seg45.F), (rho 42232 : Seg45.F)⟩
        ⟨(seg45AccX81 rho : Seg45.F), (seg45AccY81 rho : Seg45.F)⟩
        ⟨(rho 42244 : Seg45.F), (rho 42245 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart50 at p50
  rcases p50 with ⟨_, _, _, _, _, r4005, r4006, r4007, r4008, r4009, r4010, r4011, r4012, r4013, r4014, r4015, r4016, r4017, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow4005 Seg45.relationLc435 Seg45.relationLc435Part0 Seg45.relationLc435Part1 Seg45.relationLc435Part2 Seg45.relationLc435Part3 Seg45.relationLc435Part4 Seg45.relationLc435Part5 at r4005
  unfold Seg45.relationRow4006 Seg45.relationLc436 Seg45.relationLc436Part0 Seg45.relationLc436Part1 Seg45.relationLc436Part2 at r4006
  unfold Seg45.relationRow4007 Seg45.relationLc437 Seg45.relationLc437Part0 Seg45.relationLc437Part1 Seg45.relationLc437Part2 at r4007
  unfold Seg45.relationRow4008 at r4008
  unfold Seg45.relationRow4009 at r4009
  unfold Seg45.relationRow4010 at r4010
  unfold Seg45.relationRow4011 Seg45.relationLc438 Seg45.relationLc438Part0 Seg45.relationLc438Part1 Seg45.relationLc438Part2 at r4011
  unfold Seg45.relationRow4012 Seg45.relationLc439 Seg45.relationLc439Part0 Seg45.relationLc439Part1 Seg45.relationLc439Part2 at r4012
  unfold Seg45.relationRow4013 at r4013
  unfold Seg45.relationRow4014 at r4014
  unfold Seg45.relationRow4015 at r4015
  unfold Seg45.relationRow4016 at r4016
  unfold Seg45.relationRow4017 at r4017
  have hrung80 (bit : Bool) (hbit : rho 41028 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX80 rho : Seg45.F), (seg45AccY80 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42231 : Seg45.F), (rho 42232 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX80 rho : Seg45.F), (seg45AccY80 rho : Seg45.F)⟩
        ⟨(rho 42231 : Seg45.F), (rho 42232 : Seg45.F)⟩
        ⟨(seg45AccX81 rho : Seg45.F), (seg45AccY81 rho : Seg45.F)⟩
        ⟨(rho 42244 : Seg45.F), (rho 42245 : Seg45.F)⟩ := by
    have ha0 : (rho 42231 + rho 42232) * (seg45AccX80 rho + seg45AccY80 rho) = rho 42233 := by
      rw [seg45LadderFlatX80_eq, seg45LadderFlatY80_eq]
      unfold seg45LadderFlatX80 seg45LadderFlatY80
      linear_combination r4005
    have ha1 : rho 42232 * seg45AccX80 rho = rho 42234 := by
      rw [seg45LadderFlatX80_eq]
      unfold seg45LadderFlatX80
      linear_combination r4006
    have ha2 : rho 42231 * seg45AccY80 rho = rho 42235 := by
      rw [seg45LadderFlatY80_eq]
      unfold seg45LadderFlatY80
      linear_combination r4007
    have ha3 : 3021 * rho 42234 * rho 42235 = rho 42236 := by
      linear_combination r4008
    have ha4 : rho 42237 * (1 + rho 42236) = rho 42234 + rho 42235 := by
      linear_combination r4009
    have ha5 : rho 42238 * (1 - rho 42236) = rho 42233 - rho 42234 - rho 42235 := by
      linear_combination r4010
    have haddx :
        rho 42237 * (1 + 3021 * (rho 42232 * seg45AccX80 rho) * (rho 42231 * seg45AccY80 rho)) =
          rho 42232 * seg45AccX80 rho + rho 42231 * seg45AccY80 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42238 * (1 - 3021 * (rho 42232 * seg45AccX80 rho) * (rho 42231 * seg45AccY80 rho)) =
          (-1) * (rho 42232 * seg45AccX80 rho) - rho 42231 * seg45AccY80 rho +
            (seg45AccY80 rho - seg45AccX80 rho * (-1)) * (rho 42231 + rho 42232) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42238 * (1 - rho 42236) = rho 42233 - rho 42234 - rho 42235 := ha5
        _ = (-1) * rho 42234 - rho 42235 + (seg45AccY80 rho - seg45AccX80 rho * (-1)) * (rho 42231 + rho 42232) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX81 rho = seg45AccX80 rho - Bool.toZMod bit * (seg45AccX80 rho - rho 42237) := by
      have hd : rho 42239 = Bool.toZMod bit * (rho 42237 - seg45AccX80 rho) := by
        rw [← hbit, seg45LadderFlatX80_eq]
        unfold seg45LadderFlatX80
        linear_combination -r4011
      unfold seg45AccX81
      linear_combination hd
    have hsely : seg45AccY81 rho = seg45AccY80 rho - Bool.toZMod bit * (seg45AccY80 rho - rho 42238) := by
      have hd : rho 42240 = Bool.toZMod bit * (rho 42238 - seg45AccY80 rho) := by
        rw [← hbit, seg45LadderFlatY80_eq]
        unfold seg45LadderFlatY80
        linear_combination -r4012
      unfold seg45AccY81
      linear_combination hd
    have hd0 : rho 42231 * rho 42232 = rho 42241 := by linear_combination r4013
    have hd1 : rho 42231 * rho 42231 = rho 42242 := by linear_combination r4014
    have hd2 : rho 42232 * rho 42232 = rho 42243 := by linear_combination r4015
    have hd3 : rho 42244 * (rho 42232 * rho 42232 + rho 42231 * rho 42231 * (-1)) = 2 * (rho 42231 * rho 42232) := by
      rw [hd0, hd1, hd2]
      linear_combination r4016
    have hd4 : rho 42245 * (2 - (rho 42232 * rho 42232 + rho 42231 * rho 42231 * (-1))) = rho 42232 * rho 42232 - rho 42231 * rho 42231 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4017
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX80 rho : Seg45.F), (seg45AccY80 rho : Seg45.F)⟩
      ⟨(rho 42231 : Seg45.F), (rho 42232 : Seg45.F)⟩
      ⟨(rho 42237 : Seg45.F), (rho 42238 : Seg45.F)⟩
      ⟨(seg45AccX81 rho : Seg45.F), (seg45AccY81 rho : Seg45.F)⟩
      ⟨(rho 42244 : Seg45.F), (rho 42245 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung80

theorem seg45_rung81 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41029 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX81 rho : Seg45.F), (seg45AccY81 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42244 : Seg45.F), (rho 42245 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX81 rho : Seg45.F), (seg45AccY81 rho : Seg45.F)⟩
        ⟨(rho 42244 : Seg45.F), (rho 42245 : Seg45.F)⟩
        ⟨(seg45AccX82 rho : Seg45.F), (seg45AccY82 rho : Seg45.F)⟩
        ⟨(rho 42257 : Seg45.F), (rho 42258 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart50 at p50
  rcases p50 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4018, r4019, r4020, r4021, r4022, r4023, r4024, r4025, r4026, r4027, r4028, r4029, r4030, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow4018 Seg45.relationLc440 Seg45.relationLc440Part0 Seg45.relationLc440Part1 Seg45.relationLc440Part2 Seg45.relationLc440Part3 Seg45.relationLc440Part4 Seg45.relationLc440Part5 at r4018
  unfold Seg45.relationRow4019 Seg45.relationLc441 Seg45.relationLc441Part0 Seg45.relationLc441Part1 Seg45.relationLc441Part2 at r4019
  unfold Seg45.relationRow4020 Seg45.relationLc442 Seg45.relationLc442Part0 Seg45.relationLc442Part1 Seg45.relationLc442Part2 at r4020
  unfold Seg45.relationRow4021 at r4021
  unfold Seg45.relationRow4022 at r4022
  unfold Seg45.relationRow4023 at r4023
  unfold Seg45.relationRow4024 Seg45.relationLc443 Seg45.relationLc443Part0 Seg45.relationLc443Part1 Seg45.relationLc443Part2 at r4024
  unfold Seg45.relationRow4025 Seg45.relationLc444 Seg45.relationLc444Part0 Seg45.relationLc444Part1 Seg45.relationLc444Part2 at r4025
  unfold Seg45.relationRow4026 at r4026
  unfold Seg45.relationRow4027 at r4027
  unfold Seg45.relationRow4028 at r4028
  unfold Seg45.relationRow4029 at r4029
  unfold Seg45.relationRow4030 at r4030
  have hrung81 (bit : Bool) (hbit : rho 41029 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX81 rho : Seg45.F), (seg45AccY81 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42244 : Seg45.F), (rho 42245 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX81 rho : Seg45.F), (seg45AccY81 rho : Seg45.F)⟩
        ⟨(rho 42244 : Seg45.F), (rho 42245 : Seg45.F)⟩
        ⟨(seg45AccX82 rho : Seg45.F), (seg45AccY82 rho : Seg45.F)⟩
        ⟨(rho 42257 : Seg45.F), (rho 42258 : Seg45.F)⟩ := by
    have ha0 : (rho 42244 + rho 42245) * (seg45AccX81 rho + seg45AccY81 rho) = rho 42246 := by
      rw [seg45LadderFlatX81_eq, seg45LadderFlatY81_eq]
      unfold seg45LadderFlatX81 seg45LadderFlatY81
      linear_combination r4018
    have ha1 : rho 42245 * seg45AccX81 rho = rho 42247 := by
      rw [seg45LadderFlatX81_eq]
      unfold seg45LadderFlatX81
      linear_combination r4019
    have ha2 : rho 42244 * seg45AccY81 rho = rho 42248 := by
      rw [seg45LadderFlatY81_eq]
      unfold seg45LadderFlatY81
      linear_combination r4020
    have ha3 : 3021 * rho 42247 * rho 42248 = rho 42249 := by
      linear_combination r4021
    have ha4 : rho 42250 * (1 + rho 42249) = rho 42247 + rho 42248 := by
      linear_combination r4022
    have ha5 : rho 42251 * (1 - rho 42249) = rho 42246 - rho 42247 - rho 42248 := by
      linear_combination r4023
    have haddx :
        rho 42250 * (1 + 3021 * (rho 42245 * seg45AccX81 rho) * (rho 42244 * seg45AccY81 rho)) =
          rho 42245 * seg45AccX81 rho + rho 42244 * seg45AccY81 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42251 * (1 - 3021 * (rho 42245 * seg45AccX81 rho) * (rho 42244 * seg45AccY81 rho)) =
          (-1) * (rho 42245 * seg45AccX81 rho) - rho 42244 * seg45AccY81 rho +
            (seg45AccY81 rho - seg45AccX81 rho * (-1)) * (rho 42244 + rho 42245) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42251 * (1 - rho 42249) = rho 42246 - rho 42247 - rho 42248 := ha5
        _ = (-1) * rho 42247 - rho 42248 + (seg45AccY81 rho - seg45AccX81 rho * (-1)) * (rho 42244 + rho 42245) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX82 rho = seg45AccX81 rho - Bool.toZMod bit * (seg45AccX81 rho - rho 42250) := by
      have hd : rho 42252 = Bool.toZMod bit * (rho 42250 - seg45AccX81 rho) := by
        rw [← hbit, seg45LadderFlatX81_eq]
        unfold seg45LadderFlatX81
        linear_combination -r4024
      unfold seg45AccX82
      linear_combination hd
    have hsely : seg45AccY82 rho = seg45AccY81 rho - Bool.toZMod bit * (seg45AccY81 rho - rho 42251) := by
      have hd : rho 42253 = Bool.toZMod bit * (rho 42251 - seg45AccY81 rho) := by
        rw [← hbit, seg45LadderFlatY81_eq]
        unfold seg45LadderFlatY81
        linear_combination -r4025
      unfold seg45AccY82
      linear_combination hd
    have hd0 : rho 42244 * rho 42245 = rho 42254 := by linear_combination r4026
    have hd1 : rho 42244 * rho 42244 = rho 42255 := by linear_combination r4027
    have hd2 : rho 42245 * rho 42245 = rho 42256 := by linear_combination r4028
    have hd3 : rho 42257 * (rho 42245 * rho 42245 + rho 42244 * rho 42244 * (-1)) = 2 * (rho 42244 * rho 42245) := by
      rw [hd0, hd1, hd2]
      linear_combination r4029
    have hd4 : rho 42258 * (2 - (rho 42245 * rho 42245 + rho 42244 * rho 42244 * (-1))) = rho 42245 * rho 42245 - rho 42244 * rho 42244 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4030
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX81 rho : Seg45.F), (seg45AccY81 rho : Seg45.F)⟩
      ⟨(rho 42244 : Seg45.F), (rho 42245 : Seg45.F)⟩
      ⟨(rho 42250 : Seg45.F), (rho 42251 : Seg45.F)⟩
      ⟨(seg45AccX82 rho : Seg45.F), (seg45AccY82 rho : Seg45.F)⟩
      ⟨(rho 42257 : Seg45.F), (rho 42258 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung81

theorem seg45_rung82 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41030 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX82 rho : Seg45.F), (seg45AccY82 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42257 : Seg45.F), (rho 42258 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX82 rho : Seg45.F), (seg45AccY82 rho : Seg45.F)⟩
        ⟨(rho 42257 : Seg45.F), (rho 42258 : Seg45.F)⟩
        ⟨(seg45AccX83 rho : Seg45.F), (seg45AccY83 rho : Seg45.F)⟩
        ⟨(rho 42270 : Seg45.F), (rho 42271 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart50 at p50
  rcases p50 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4031, r4032, r4033, r4034, r4035, r4036, r4037, r4038, r4039, r4040, r4041, r4042, r4043, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow4031 Seg45.relationLc445 Seg45.relationLc445Part0 Seg45.relationLc445Part1 Seg45.relationLc445Part2 Seg45.relationLc445Part3 Seg45.relationLc445Part4 Seg45.relationLc445Part5 at r4031
  unfold Seg45.relationRow4032 Seg45.relationLc446 Seg45.relationLc446Part0 Seg45.relationLc446Part1 Seg45.relationLc446Part2 at r4032
  unfold Seg45.relationRow4033 Seg45.relationLc447 Seg45.relationLc447Part0 Seg45.relationLc447Part1 Seg45.relationLc447Part2 at r4033
  unfold Seg45.relationRow4034 at r4034
  unfold Seg45.relationRow4035 at r4035
  unfold Seg45.relationRow4036 at r4036
  unfold Seg45.relationRow4037 Seg45.relationLc448 Seg45.relationLc448Part0 Seg45.relationLc448Part1 Seg45.relationLc448Part2 at r4037
  unfold Seg45.relationRow4038 Seg45.relationLc449 Seg45.relationLc449Part0 Seg45.relationLc449Part1 Seg45.relationLc449Part2 at r4038
  unfold Seg45.relationRow4039 at r4039
  unfold Seg45.relationRow4040 at r4040
  unfold Seg45.relationRow4041 at r4041
  unfold Seg45.relationRow4042 at r4042
  unfold Seg45.relationRow4043 at r4043
  have hrung82 (bit : Bool) (hbit : rho 41030 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX82 rho : Seg45.F), (seg45AccY82 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42257 : Seg45.F), (rho 42258 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX82 rho : Seg45.F), (seg45AccY82 rho : Seg45.F)⟩
        ⟨(rho 42257 : Seg45.F), (rho 42258 : Seg45.F)⟩
        ⟨(seg45AccX83 rho : Seg45.F), (seg45AccY83 rho : Seg45.F)⟩
        ⟨(rho 42270 : Seg45.F), (rho 42271 : Seg45.F)⟩ := by
    have ha0 : (rho 42257 + rho 42258) * (seg45AccX82 rho + seg45AccY82 rho) = rho 42259 := by
      rw [seg45LadderFlatX82_eq, seg45LadderFlatY82_eq]
      unfold seg45LadderFlatX82 seg45LadderFlatY82
      linear_combination r4031
    have ha1 : rho 42258 * seg45AccX82 rho = rho 42260 := by
      rw [seg45LadderFlatX82_eq]
      unfold seg45LadderFlatX82
      linear_combination r4032
    have ha2 : rho 42257 * seg45AccY82 rho = rho 42261 := by
      rw [seg45LadderFlatY82_eq]
      unfold seg45LadderFlatY82
      linear_combination r4033
    have ha3 : 3021 * rho 42260 * rho 42261 = rho 42262 := by
      linear_combination r4034
    have ha4 : rho 42263 * (1 + rho 42262) = rho 42260 + rho 42261 := by
      linear_combination r4035
    have ha5 : rho 42264 * (1 - rho 42262) = rho 42259 - rho 42260 - rho 42261 := by
      linear_combination r4036
    have haddx :
        rho 42263 * (1 + 3021 * (rho 42258 * seg45AccX82 rho) * (rho 42257 * seg45AccY82 rho)) =
          rho 42258 * seg45AccX82 rho + rho 42257 * seg45AccY82 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42264 * (1 - 3021 * (rho 42258 * seg45AccX82 rho) * (rho 42257 * seg45AccY82 rho)) =
          (-1) * (rho 42258 * seg45AccX82 rho) - rho 42257 * seg45AccY82 rho +
            (seg45AccY82 rho - seg45AccX82 rho * (-1)) * (rho 42257 + rho 42258) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42264 * (1 - rho 42262) = rho 42259 - rho 42260 - rho 42261 := ha5
        _ = (-1) * rho 42260 - rho 42261 + (seg45AccY82 rho - seg45AccX82 rho * (-1)) * (rho 42257 + rho 42258) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX83 rho = seg45AccX82 rho - Bool.toZMod bit * (seg45AccX82 rho - rho 42263) := by
      have hd : rho 42265 = Bool.toZMod bit * (rho 42263 - seg45AccX82 rho) := by
        rw [← hbit, seg45LadderFlatX82_eq]
        unfold seg45LadderFlatX82
        linear_combination -r4037
      unfold seg45AccX83
      linear_combination hd
    have hsely : seg45AccY83 rho = seg45AccY82 rho - Bool.toZMod bit * (seg45AccY82 rho - rho 42264) := by
      have hd : rho 42266 = Bool.toZMod bit * (rho 42264 - seg45AccY82 rho) := by
        rw [← hbit, seg45LadderFlatY82_eq]
        unfold seg45LadderFlatY82
        linear_combination -r4038
      unfold seg45AccY83
      linear_combination hd
    have hd0 : rho 42257 * rho 42258 = rho 42267 := by linear_combination r4039
    have hd1 : rho 42257 * rho 42257 = rho 42268 := by linear_combination r4040
    have hd2 : rho 42258 * rho 42258 = rho 42269 := by linear_combination r4041
    have hd3 : rho 42270 * (rho 42258 * rho 42258 + rho 42257 * rho 42257 * (-1)) = 2 * (rho 42257 * rho 42258) := by
      rw [hd0, hd1, hd2]
      linear_combination r4042
    have hd4 : rho 42271 * (2 - (rho 42258 * rho 42258 + rho 42257 * rho 42257 * (-1))) = rho 42258 * rho 42258 - rho 42257 * rho 42257 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4043
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX82 rho : Seg45.F), (seg45AccY82 rho : Seg45.F)⟩
      ⟨(rho 42257 : Seg45.F), (rho 42258 : Seg45.F)⟩
      ⟨(rho 42263 : Seg45.F), (rho 42264 : Seg45.F)⟩
      ⟨(seg45AccX83 rho : Seg45.F), (seg45AccY83 rho : Seg45.F)⟩
      ⟨(rho 42270 : Seg45.F), (rho 42271 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung82

theorem seg45_rung83 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41031 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX83 rho : Seg45.F), (seg45AccY83 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42270 : Seg45.F), (rho 42271 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX83 rho : Seg45.F), (seg45AccY83 rho : Seg45.F)⟩
        ⟨(rho 42270 : Seg45.F), (rho 42271 : Seg45.F)⟩
        ⟨(seg45AccX84 rho : Seg45.F), (seg45AccY84 rho : Seg45.F)⟩
        ⟨(rho 42283 : Seg45.F), (rho 42284 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart50 at p50
  rcases p50 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4044, r4045, r4046, r4047, r4048, r4049, r4050, r4051, r4052, r4053, r4054, r4055, r4056, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow4044 Seg45.relationLc450 Seg45.relationLc450Part0 Seg45.relationLc450Part1 Seg45.relationLc450Part2 Seg45.relationLc450Part3 Seg45.relationLc450Part4 Seg45.relationLc450Part5 at r4044
  unfold Seg45.relationRow4045 Seg45.relationLc451 Seg45.relationLc451Part0 Seg45.relationLc451Part1 Seg45.relationLc451Part2 at r4045
  unfold Seg45.relationRow4046 Seg45.relationLc452 Seg45.relationLc452Part0 Seg45.relationLc452Part1 Seg45.relationLc452Part2 at r4046
  unfold Seg45.relationRow4047 at r4047
  unfold Seg45.relationRow4048 at r4048
  unfold Seg45.relationRow4049 at r4049
  unfold Seg45.relationRow4050 Seg45.relationLc453 Seg45.relationLc453Part0 Seg45.relationLc453Part1 Seg45.relationLc453Part2 at r4050
  unfold Seg45.relationRow4051 Seg45.relationLc454 Seg45.relationLc454Part0 Seg45.relationLc454Part1 Seg45.relationLc454Part2 at r4051
  unfold Seg45.relationRow4052 at r4052
  unfold Seg45.relationRow4053 at r4053
  unfold Seg45.relationRow4054 at r4054
  unfold Seg45.relationRow4055 at r4055
  unfold Seg45.relationRow4056 at r4056
  have hrung83 (bit : Bool) (hbit : rho 41031 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX83 rho : Seg45.F), (seg45AccY83 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42270 : Seg45.F), (rho 42271 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX83 rho : Seg45.F), (seg45AccY83 rho : Seg45.F)⟩
        ⟨(rho 42270 : Seg45.F), (rho 42271 : Seg45.F)⟩
        ⟨(seg45AccX84 rho : Seg45.F), (seg45AccY84 rho : Seg45.F)⟩
        ⟨(rho 42283 : Seg45.F), (rho 42284 : Seg45.F)⟩ := by
    have ha0 : (rho 42270 + rho 42271) * (seg45AccX83 rho + seg45AccY83 rho) = rho 42272 := by
      rw [seg45LadderFlatX83_eq, seg45LadderFlatY83_eq]
      unfold seg45LadderFlatX83 seg45LadderFlatY83
      linear_combination r4044
    have ha1 : rho 42271 * seg45AccX83 rho = rho 42273 := by
      rw [seg45LadderFlatX83_eq]
      unfold seg45LadderFlatX83
      linear_combination r4045
    have ha2 : rho 42270 * seg45AccY83 rho = rho 42274 := by
      rw [seg45LadderFlatY83_eq]
      unfold seg45LadderFlatY83
      linear_combination r4046
    have ha3 : 3021 * rho 42273 * rho 42274 = rho 42275 := by
      linear_combination r4047
    have ha4 : rho 42276 * (1 + rho 42275) = rho 42273 + rho 42274 := by
      linear_combination r4048
    have ha5 : rho 42277 * (1 - rho 42275) = rho 42272 - rho 42273 - rho 42274 := by
      linear_combination r4049
    have haddx :
        rho 42276 * (1 + 3021 * (rho 42271 * seg45AccX83 rho) * (rho 42270 * seg45AccY83 rho)) =
          rho 42271 * seg45AccX83 rho + rho 42270 * seg45AccY83 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42277 * (1 - 3021 * (rho 42271 * seg45AccX83 rho) * (rho 42270 * seg45AccY83 rho)) =
          (-1) * (rho 42271 * seg45AccX83 rho) - rho 42270 * seg45AccY83 rho +
            (seg45AccY83 rho - seg45AccX83 rho * (-1)) * (rho 42270 + rho 42271) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42277 * (1 - rho 42275) = rho 42272 - rho 42273 - rho 42274 := ha5
        _ = (-1) * rho 42273 - rho 42274 + (seg45AccY83 rho - seg45AccX83 rho * (-1)) * (rho 42270 + rho 42271) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX84 rho = seg45AccX83 rho - Bool.toZMod bit * (seg45AccX83 rho - rho 42276) := by
      have hd : rho 42278 = Bool.toZMod bit * (rho 42276 - seg45AccX83 rho) := by
        rw [← hbit, seg45LadderFlatX83_eq]
        unfold seg45LadderFlatX83
        linear_combination -r4050
      unfold seg45AccX84
      linear_combination hd
    have hsely : seg45AccY84 rho = seg45AccY83 rho - Bool.toZMod bit * (seg45AccY83 rho - rho 42277) := by
      have hd : rho 42279 = Bool.toZMod bit * (rho 42277 - seg45AccY83 rho) := by
        rw [← hbit, seg45LadderFlatY83_eq]
        unfold seg45LadderFlatY83
        linear_combination -r4051
      unfold seg45AccY84
      linear_combination hd
    have hd0 : rho 42270 * rho 42271 = rho 42280 := by linear_combination r4052
    have hd1 : rho 42270 * rho 42270 = rho 42281 := by linear_combination r4053
    have hd2 : rho 42271 * rho 42271 = rho 42282 := by linear_combination r4054
    have hd3 : rho 42283 * (rho 42271 * rho 42271 + rho 42270 * rho 42270 * (-1)) = 2 * (rho 42270 * rho 42271) := by
      rw [hd0, hd1, hd2]
      linear_combination r4055
    have hd4 : rho 42284 * (2 - (rho 42271 * rho 42271 + rho 42270 * rho 42270 * (-1))) = rho 42271 * rho 42271 - rho 42270 * rho 42270 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4056
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX83 rho : Seg45.F), (seg45AccY83 rho : Seg45.F)⟩
      ⟨(rho 42270 : Seg45.F), (rho 42271 : Seg45.F)⟩
      ⟨(rho 42276 : Seg45.F), (rho 42277 : Seg45.F)⟩
      ⟨(seg45AccX84 rho : Seg45.F), (seg45AccY84 rho : Seg45.F)⟩
      ⟨(rho 42283 : Seg45.F), (rho 42284 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung83

theorem seg45_rung84 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41032 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX84 rho : Seg45.F), (seg45AccY84 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42283 : Seg45.F), (rho 42284 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX84 rho : Seg45.F), (seg45AccY84 rho : Seg45.F)⟩
        ⟨(rho 42283 : Seg45.F), (rho 42284 : Seg45.F)⟩
        ⟨(seg45AccX85 rho : Seg45.F), (seg45AccY85 rho : Seg45.F)⟩
        ⟨(rho 42296 : Seg45.F), (rho 42297 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart50 at p50
  rcases p50 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4057, r4058, r4059, r4060, r4061, r4062, r4063, r4064, r4065, r4066, r4067, r4068, r4069, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow4057 Seg45.relationLc455 Seg45.relationLc455Part0 Seg45.relationLc455Part1 Seg45.relationLc455Part2 Seg45.relationLc455Part3 Seg45.relationLc455Part4 Seg45.relationLc455Part5 at r4057
  unfold Seg45.relationRow4058 Seg45.relationLc456 Seg45.relationLc456Part0 Seg45.relationLc456Part1 Seg45.relationLc456Part2 at r4058
  unfold Seg45.relationRow4059 Seg45.relationLc457 Seg45.relationLc457Part0 Seg45.relationLc457Part1 Seg45.relationLc457Part2 at r4059
  unfold Seg45.relationRow4060 at r4060
  unfold Seg45.relationRow4061 at r4061
  unfold Seg45.relationRow4062 at r4062
  unfold Seg45.relationRow4063 Seg45.relationLc458 Seg45.relationLc458Part0 Seg45.relationLc458Part1 Seg45.relationLc458Part2 at r4063
  unfold Seg45.relationRow4064 Seg45.relationLc459 Seg45.relationLc459Part0 Seg45.relationLc459Part1 Seg45.relationLc459Part2 at r4064
  unfold Seg45.relationRow4065 at r4065
  unfold Seg45.relationRow4066 at r4066
  unfold Seg45.relationRow4067 at r4067
  unfold Seg45.relationRow4068 at r4068
  unfold Seg45.relationRow4069 at r4069
  have hrung84 (bit : Bool) (hbit : rho 41032 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX84 rho : Seg45.F), (seg45AccY84 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42283 : Seg45.F), (rho 42284 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX84 rho : Seg45.F), (seg45AccY84 rho : Seg45.F)⟩
        ⟨(rho 42283 : Seg45.F), (rho 42284 : Seg45.F)⟩
        ⟨(seg45AccX85 rho : Seg45.F), (seg45AccY85 rho : Seg45.F)⟩
        ⟨(rho 42296 : Seg45.F), (rho 42297 : Seg45.F)⟩ := by
    have ha0 : (rho 42283 + rho 42284) * (seg45AccX84 rho + seg45AccY84 rho) = rho 42285 := by
      rw [seg45LadderFlatX84_eq, seg45LadderFlatY84_eq]
      unfold seg45LadderFlatX84 seg45LadderFlatY84
      linear_combination r4057
    have ha1 : rho 42284 * seg45AccX84 rho = rho 42286 := by
      rw [seg45LadderFlatX84_eq]
      unfold seg45LadderFlatX84
      linear_combination r4058
    have ha2 : rho 42283 * seg45AccY84 rho = rho 42287 := by
      rw [seg45LadderFlatY84_eq]
      unfold seg45LadderFlatY84
      linear_combination r4059
    have ha3 : 3021 * rho 42286 * rho 42287 = rho 42288 := by
      linear_combination r4060
    have ha4 : rho 42289 * (1 + rho 42288) = rho 42286 + rho 42287 := by
      linear_combination r4061
    have ha5 : rho 42290 * (1 - rho 42288) = rho 42285 - rho 42286 - rho 42287 := by
      linear_combination r4062
    have haddx :
        rho 42289 * (1 + 3021 * (rho 42284 * seg45AccX84 rho) * (rho 42283 * seg45AccY84 rho)) =
          rho 42284 * seg45AccX84 rho + rho 42283 * seg45AccY84 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42290 * (1 - 3021 * (rho 42284 * seg45AccX84 rho) * (rho 42283 * seg45AccY84 rho)) =
          (-1) * (rho 42284 * seg45AccX84 rho) - rho 42283 * seg45AccY84 rho +
            (seg45AccY84 rho - seg45AccX84 rho * (-1)) * (rho 42283 + rho 42284) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42290 * (1 - rho 42288) = rho 42285 - rho 42286 - rho 42287 := ha5
        _ = (-1) * rho 42286 - rho 42287 + (seg45AccY84 rho - seg45AccX84 rho * (-1)) * (rho 42283 + rho 42284) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX85 rho = seg45AccX84 rho - Bool.toZMod bit * (seg45AccX84 rho - rho 42289) := by
      have hd : rho 42291 = Bool.toZMod bit * (rho 42289 - seg45AccX84 rho) := by
        rw [← hbit, seg45LadderFlatX84_eq]
        unfold seg45LadderFlatX84
        linear_combination -r4063
      unfold seg45AccX85
      linear_combination hd
    have hsely : seg45AccY85 rho = seg45AccY84 rho - Bool.toZMod bit * (seg45AccY84 rho - rho 42290) := by
      have hd : rho 42292 = Bool.toZMod bit * (rho 42290 - seg45AccY84 rho) := by
        rw [← hbit, seg45LadderFlatY84_eq]
        unfold seg45LadderFlatY84
        linear_combination -r4064
      unfold seg45AccY85
      linear_combination hd
    have hd0 : rho 42283 * rho 42284 = rho 42293 := by linear_combination r4065
    have hd1 : rho 42283 * rho 42283 = rho 42294 := by linear_combination r4066
    have hd2 : rho 42284 * rho 42284 = rho 42295 := by linear_combination r4067
    have hd3 : rho 42296 * (rho 42284 * rho 42284 + rho 42283 * rho 42283 * (-1)) = 2 * (rho 42283 * rho 42284) := by
      rw [hd0, hd1, hd2]
      linear_combination r4068
    have hd4 : rho 42297 * (2 - (rho 42284 * rho 42284 + rho 42283 * rho 42283 * (-1))) = rho 42284 * rho 42284 - rho 42283 * rho 42283 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4069
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX84 rho : Seg45.F), (seg45AccY84 rho : Seg45.F)⟩
      ⟨(rho 42283 : Seg45.F), (rho 42284 : Seg45.F)⟩
      ⟨(rho 42289 : Seg45.F), (rho 42290 : Seg45.F)⟩
      ⟨(seg45AccX85 rho : Seg45.F), (seg45AccY85 rho : Seg45.F)⟩
      ⟨(rho 42296 : Seg45.F), (rho 42297 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung84

theorem seg45_rung85 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41033 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX85 rho : Seg45.F), (seg45AccY85 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42296 : Seg45.F), (rho 42297 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX85 rho : Seg45.F), (seg45AccY85 rho : Seg45.F)⟩
        ⟨(rho 42296 : Seg45.F), (rho 42297 : Seg45.F)⟩
        ⟨(seg45AccX86 rho : Seg45.F), (seg45AccY86 rho : Seg45.F)⟩
        ⟨(rho 42309 : Seg45.F), (rho 42310 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart50 at p50
  rcases p50 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4070, r4071, r4072, r4073, r4074, r4075, r4076, r4077, r4078, r4079⟩
  unfold Seg45.relationPart51 at p51
  rcases p51 with ⟨r4080, r4081, r4082, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow4070 Seg45.relationLc460 Seg45.relationLc460Part0 Seg45.relationLc460Part1 Seg45.relationLc460Part2 Seg45.relationLc460Part3 Seg45.relationLc460Part4 Seg45.relationLc460Part5 at r4070
  unfold Seg45.relationRow4071 Seg45.relationLc461 Seg45.relationLc461Part0 Seg45.relationLc461Part1 Seg45.relationLc461Part2 at r4071
  unfold Seg45.relationRow4072 Seg45.relationLc462 Seg45.relationLc462Part0 Seg45.relationLc462Part1 Seg45.relationLc462Part2 at r4072
  unfold Seg45.relationRow4073 at r4073
  unfold Seg45.relationRow4074 at r4074
  unfold Seg45.relationRow4075 at r4075
  unfold Seg45.relationRow4076 Seg45.relationLc463 Seg45.relationLc463Part0 Seg45.relationLc463Part1 Seg45.relationLc463Part2 at r4076
  unfold Seg45.relationRow4077 Seg45.relationLc464 Seg45.relationLc464Part0 Seg45.relationLc464Part1 Seg45.relationLc464Part2 at r4077
  unfold Seg45.relationRow4078 at r4078
  unfold Seg45.relationRow4079 at r4079
  unfold Seg45.relationRow4080 at r4080
  unfold Seg45.relationRow4081 at r4081
  unfold Seg45.relationRow4082 at r4082
  have hrung85 (bit : Bool) (hbit : rho 41033 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX85 rho : Seg45.F), (seg45AccY85 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42296 : Seg45.F), (rho 42297 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX85 rho : Seg45.F), (seg45AccY85 rho : Seg45.F)⟩
        ⟨(rho 42296 : Seg45.F), (rho 42297 : Seg45.F)⟩
        ⟨(seg45AccX86 rho : Seg45.F), (seg45AccY86 rho : Seg45.F)⟩
        ⟨(rho 42309 : Seg45.F), (rho 42310 : Seg45.F)⟩ := by
    have ha0 : (rho 42296 + rho 42297) * (seg45AccX85 rho + seg45AccY85 rho) = rho 42298 := by
      rw [seg45LadderFlatX85_eq, seg45LadderFlatY85_eq]
      unfold seg45LadderFlatX85 seg45LadderFlatY85
      linear_combination r4070
    have ha1 : rho 42297 * seg45AccX85 rho = rho 42299 := by
      rw [seg45LadderFlatX85_eq]
      unfold seg45LadderFlatX85
      linear_combination r4071
    have ha2 : rho 42296 * seg45AccY85 rho = rho 42300 := by
      rw [seg45LadderFlatY85_eq]
      unfold seg45LadderFlatY85
      linear_combination r4072
    have ha3 : 3021 * rho 42299 * rho 42300 = rho 42301 := by
      linear_combination r4073
    have ha4 : rho 42302 * (1 + rho 42301) = rho 42299 + rho 42300 := by
      linear_combination r4074
    have ha5 : rho 42303 * (1 - rho 42301) = rho 42298 - rho 42299 - rho 42300 := by
      linear_combination r4075
    have haddx :
        rho 42302 * (1 + 3021 * (rho 42297 * seg45AccX85 rho) * (rho 42296 * seg45AccY85 rho)) =
          rho 42297 * seg45AccX85 rho + rho 42296 * seg45AccY85 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42303 * (1 - 3021 * (rho 42297 * seg45AccX85 rho) * (rho 42296 * seg45AccY85 rho)) =
          (-1) * (rho 42297 * seg45AccX85 rho) - rho 42296 * seg45AccY85 rho +
            (seg45AccY85 rho - seg45AccX85 rho * (-1)) * (rho 42296 + rho 42297) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42303 * (1 - rho 42301) = rho 42298 - rho 42299 - rho 42300 := ha5
        _ = (-1) * rho 42299 - rho 42300 + (seg45AccY85 rho - seg45AccX85 rho * (-1)) * (rho 42296 + rho 42297) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX86 rho = seg45AccX85 rho - Bool.toZMod bit * (seg45AccX85 rho - rho 42302) := by
      have hd : rho 42304 = Bool.toZMod bit * (rho 42302 - seg45AccX85 rho) := by
        rw [← hbit, seg45LadderFlatX85_eq]
        unfold seg45LadderFlatX85
        linear_combination -r4076
      unfold seg45AccX86
      linear_combination hd
    have hsely : seg45AccY86 rho = seg45AccY85 rho - Bool.toZMod bit * (seg45AccY85 rho - rho 42303) := by
      have hd : rho 42305 = Bool.toZMod bit * (rho 42303 - seg45AccY85 rho) := by
        rw [← hbit, seg45LadderFlatY85_eq]
        unfold seg45LadderFlatY85
        linear_combination -r4077
      unfold seg45AccY86
      linear_combination hd
    have hd0 : rho 42296 * rho 42297 = rho 42306 := by linear_combination r4078
    have hd1 : rho 42296 * rho 42296 = rho 42307 := by linear_combination r4079
    have hd2 : rho 42297 * rho 42297 = rho 42308 := by linear_combination r4080
    have hd3 : rho 42309 * (rho 42297 * rho 42297 + rho 42296 * rho 42296 * (-1)) = 2 * (rho 42296 * rho 42297) := by
      rw [hd0, hd1, hd2]
      linear_combination r4081
    have hd4 : rho 42310 * (2 - (rho 42297 * rho 42297 + rho 42296 * rho 42296 * (-1))) = rho 42297 * rho 42297 - rho 42296 * rho 42296 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4082
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX85 rho : Seg45.F), (seg45AccY85 rho : Seg45.F)⟩
      ⟨(rho 42296 : Seg45.F), (rho 42297 : Seg45.F)⟩
      ⟨(rho 42302 : Seg45.F), (rho 42303 : Seg45.F)⟩
      ⟨(seg45AccX86 rho : Seg45.F), (seg45AccY86 rho : Seg45.F)⟩
      ⟨(rho 42309 : Seg45.F), (rho 42310 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung85

theorem seg45_rung86 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41034 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX86 rho : Seg45.F), (seg45AccY86 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42309 : Seg45.F), (rho 42310 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX86 rho : Seg45.F), (seg45AccY86 rho : Seg45.F)⟩
        ⟨(rho 42309 : Seg45.F), (rho 42310 : Seg45.F)⟩
        ⟨(seg45AccX87 rho : Seg45.F), (seg45AccY87 rho : Seg45.F)⟩
        ⟨(rho 42322 : Seg45.F), (rho 42323 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart51 at p51
  rcases p51 with ⟨_, _, _, r4083, r4084, r4085, r4086, r4087, r4088, r4089, r4090, r4091, r4092, r4093, r4094, r4095, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow4083 Seg45.relationLc465 Seg45.relationLc465Part0 Seg45.relationLc465Part1 Seg45.relationLc465Part2 Seg45.relationLc465Part3 Seg45.relationLc465Part4 Seg45.relationLc465Part5 at r4083
  unfold Seg45.relationRow4084 Seg45.relationLc466 Seg45.relationLc466Part0 Seg45.relationLc466Part1 Seg45.relationLc466Part2 at r4084
  unfold Seg45.relationRow4085 Seg45.relationLc467 Seg45.relationLc467Part0 Seg45.relationLc467Part1 Seg45.relationLc467Part2 at r4085
  unfold Seg45.relationRow4086 at r4086
  unfold Seg45.relationRow4087 at r4087
  unfold Seg45.relationRow4088 at r4088
  unfold Seg45.relationRow4089 Seg45.relationLc468 Seg45.relationLc468Part0 Seg45.relationLc468Part1 Seg45.relationLc468Part2 at r4089
  unfold Seg45.relationRow4090 Seg45.relationLc469 Seg45.relationLc469Part0 Seg45.relationLc469Part1 Seg45.relationLc469Part2 at r4090
  unfold Seg45.relationRow4091 at r4091
  unfold Seg45.relationRow4092 at r4092
  unfold Seg45.relationRow4093 at r4093
  unfold Seg45.relationRow4094 at r4094
  unfold Seg45.relationRow4095 at r4095
  have hrung86 (bit : Bool) (hbit : rho 41034 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX86 rho : Seg45.F), (seg45AccY86 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42309 : Seg45.F), (rho 42310 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX86 rho : Seg45.F), (seg45AccY86 rho : Seg45.F)⟩
        ⟨(rho 42309 : Seg45.F), (rho 42310 : Seg45.F)⟩
        ⟨(seg45AccX87 rho : Seg45.F), (seg45AccY87 rho : Seg45.F)⟩
        ⟨(rho 42322 : Seg45.F), (rho 42323 : Seg45.F)⟩ := by
    have ha0 : (rho 42309 + rho 42310) * (seg45AccX86 rho + seg45AccY86 rho) = rho 42311 := by
      rw [seg45LadderFlatX86_eq, seg45LadderFlatY86_eq]
      unfold seg45LadderFlatX86 seg45LadderFlatY86
      linear_combination r4083
    have ha1 : rho 42310 * seg45AccX86 rho = rho 42312 := by
      rw [seg45LadderFlatX86_eq]
      unfold seg45LadderFlatX86
      linear_combination r4084
    have ha2 : rho 42309 * seg45AccY86 rho = rho 42313 := by
      rw [seg45LadderFlatY86_eq]
      unfold seg45LadderFlatY86
      linear_combination r4085
    have ha3 : 3021 * rho 42312 * rho 42313 = rho 42314 := by
      linear_combination r4086
    have ha4 : rho 42315 * (1 + rho 42314) = rho 42312 + rho 42313 := by
      linear_combination r4087
    have ha5 : rho 42316 * (1 - rho 42314) = rho 42311 - rho 42312 - rho 42313 := by
      linear_combination r4088
    have haddx :
        rho 42315 * (1 + 3021 * (rho 42310 * seg45AccX86 rho) * (rho 42309 * seg45AccY86 rho)) =
          rho 42310 * seg45AccX86 rho + rho 42309 * seg45AccY86 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42316 * (1 - 3021 * (rho 42310 * seg45AccX86 rho) * (rho 42309 * seg45AccY86 rho)) =
          (-1) * (rho 42310 * seg45AccX86 rho) - rho 42309 * seg45AccY86 rho +
            (seg45AccY86 rho - seg45AccX86 rho * (-1)) * (rho 42309 + rho 42310) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42316 * (1 - rho 42314) = rho 42311 - rho 42312 - rho 42313 := ha5
        _ = (-1) * rho 42312 - rho 42313 + (seg45AccY86 rho - seg45AccX86 rho * (-1)) * (rho 42309 + rho 42310) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX87 rho = seg45AccX86 rho - Bool.toZMod bit * (seg45AccX86 rho - rho 42315) := by
      have hd : rho 42317 = Bool.toZMod bit * (rho 42315 - seg45AccX86 rho) := by
        rw [← hbit, seg45LadderFlatX86_eq]
        unfold seg45LadderFlatX86
        linear_combination -r4089
      unfold seg45AccX87
      linear_combination hd
    have hsely : seg45AccY87 rho = seg45AccY86 rho - Bool.toZMod bit * (seg45AccY86 rho - rho 42316) := by
      have hd : rho 42318 = Bool.toZMod bit * (rho 42316 - seg45AccY86 rho) := by
        rw [← hbit, seg45LadderFlatY86_eq]
        unfold seg45LadderFlatY86
        linear_combination -r4090
      unfold seg45AccY87
      linear_combination hd
    have hd0 : rho 42309 * rho 42310 = rho 42319 := by linear_combination r4091
    have hd1 : rho 42309 * rho 42309 = rho 42320 := by linear_combination r4092
    have hd2 : rho 42310 * rho 42310 = rho 42321 := by linear_combination r4093
    have hd3 : rho 42322 * (rho 42310 * rho 42310 + rho 42309 * rho 42309 * (-1)) = 2 * (rho 42309 * rho 42310) := by
      rw [hd0, hd1, hd2]
      linear_combination r4094
    have hd4 : rho 42323 * (2 - (rho 42310 * rho 42310 + rho 42309 * rho 42309 * (-1))) = rho 42310 * rho 42310 - rho 42309 * rho 42309 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4095
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX86 rho : Seg45.F), (seg45AccY86 rho : Seg45.F)⟩
      ⟨(rho 42309 : Seg45.F), (rho 42310 : Seg45.F)⟩
      ⟨(rho 42315 : Seg45.F), (rho 42316 : Seg45.F)⟩
      ⟨(seg45AccX87 rho : Seg45.F), (seg45AccY87 rho : Seg45.F)⟩
      ⟨(rho 42322 : Seg45.F), (rho 42323 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung86

theorem seg45_rung87 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41035 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX87 rho : Seg45.F), (seg45AccY87 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42322 : Seg45.F), (rho 42323 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX87 rho : Seg45.F), (seg45AccY87 rho : Seg45.F)⟩
        ⟨(rho 42322 : Seg45.F), (rho 42323 : Seg45.F)⟩
        ⟨(seg45AccX88 rho : Seg45.F), (seg45AccY88 rho : Seg45.F)⟩
        ⟨(rho 42335 : Seg45.F), (rho 42336 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart51 at p51
  rcases p51 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4096, r4097, r4098, r4099, r4100, r4101, r4102, r4103, r4104, r4105, r4106, r4107, r4108, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow4096 Seg45.relationLc470 Seg45.relationLc470Part0 Seg45.relationLc470Part1 Seg45.relationLc470Part2 Seg45.relationLc470Part3 Seg45.relationLc470Part4 Seg45.relationLc470Part5 at r4096
  unfold Seg45.relationRow4097 Seg45.relationLc471 Seg45.relationLc471Part0 Seg45.relationLc471Part1 Seg45.relationLc471Part2 at r4097
  unfold Seg45.relationRow4098 Seg45.relationLc472 Seg45.relationLc472Part0 Seg45.relationLc472Part1 Seg45.relationLc472Part2 at r4098
  unfold Seg45.relationRow4099 at r4099
  unfold Seg45.relationRow4100 at r4100
  unfold Seg45.relationRow4101 at r4101
  unfold Seg45.relationRow4102 Seg45.relationLc473 Seg45.relationLc473Part0 Seg45.relationLc473Part1 Seg45.relationLc473Part2 at r4102
  unfold Seg45.relationRow4103 Seg45.relationLc474 Seg45.relationLc474Part0 Seg45.relationLc474Part1 Seg45.relationLc474Part2 at r4103
  unfold Seg45.relationRow4104 at r4104
  unfold Seg45.relationRow4105 at r4105
  unfold Seg45.relationRow4106 at r4106
  unfold Seg45.relationRow4107 at r4107
  unfold Seg45.relationRow4108 at r4108
  have hrung87 (bit : Bool) (hbit : rho 41035 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX87 rho : Seg45.F), (seg45AccY87 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42322 : Seg45.F), (rho 42323 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX87 rho : Seg45.F), (seg45AccY87 rho : Seg45.F)⟩
        ⟨(rho 42322 : Seg45.F), (rho 42323 : Seg45.F)⟩
        ⟨(seg45AccX88 rho : Seg45.F), (seg45AccY88 rho : Seg45.F)⟩
        ⟨(rho 42335 : Seg45.F), (rho 42336 : Seg45.F)⟩ := by
    have ha0 : (rho 42322 + rho 42323) * (seg45AccX87 rho + seg45AccY87 rho) = rho 42324 := by
      rw [seg45LadderFlatX87_eq, seg45LadderFlatY87_eq]
      unfold seg45LadderFlatX87 seg45LadderFlatY87
      linear_combination r4096
    have ha1 : rho 42323 * seg45AccX87 rho = rho 42325 := by
      rw [seg45LadderFlatX87_eq]
      unfold seg45LadderFlatX87
      linear_combination r4097
    have ha2 : rho 42322 * seg45AccY87 rho = rho 42326 := by
      rw [seg45LadderFlatY87_eq]
      unfold seg45LadderFlatY87
      linear_combination r4098
    have ha3 : 3021 * rho 42325 * rho 42326 = rho 42327 := by
      linear_combination r4099
    have ha4 : rho 42328 * (1 + rho 42327) = rho 42325 + rho 42326 := by
      linear_combination r4100
    have ha5 : rho 42329 * (1 - rho 42327) = rho 42324 - rho 42325 - rho 42326 := by
      linear_combination r4101
    have haddx :
        rho 42328 * (1 + 3021 * (rho 42323 * seg45AccX87 rho) * (rho 42322 * seg45AccY87 rho)) =
          rho 42323 * seg45AccX87 rho + rho 42322 * seg45AccY87 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42329 * (1 - 3021 * (rho 42323 * seg45AccX87 rho) * (rho 42322 * seg45AccY87 rho)) =
          (-1) * (rho 42323 * seg45AccX87 rho) - rho 42322 * seg45AccY87 rho +
            (seg45AccY87 rho - seg45AccX87 rho * (-1)) * (rho 42322 + rho 42323) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42329 * (1 - rho 42327) = rho 42324 - rho 42325 - rho 42326 := ha5
        _ = (-1) * rho 42325 - rho 42326 + (seg45AccY87 rho - seg45AccX87 rho * (-1)) * (rho 42322 + rho 42323) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX88 rho = seg45AccX87 rho - Bool.toZMod bit * (seg45AccX87 rho - rho 42328) := by
      have hd : rho 42330 = Bool.toZMod bit * (rho 42328 - seg45AccX87 rho) := by
        rw [← hbit, seg45LadderFlatX87_eq]
        unfold seg45LadderFlatX87
        linear_combination -r4102
      unfold seg45AccX88
      linear_combination hd
    have hsely : seg45AccY88 rho = seg45AccY87 rho - Bool.toZMod bit * (seg45AccY87 rho - rho 42329) := by
      have hd : rho 42331 = Bool.toZMod bit * (rho 42329 - seg45AccY87 rho) := by
        rw [← hbit, seg45LadderFlatY87_eq]
        unfold seg45LadderFlatY87
        linear_combination -r4103
      unfold seg45AccY88
      linear_combination hd
    have hd0 : rho 42322 * rho 42323 = rho 42332 := by linear_combination r4104
    have hd1 : rho 42322 * rho 42322 = rho 42333 := by linear_combination r4105
    have hd2 : rho 42323 * rho 42323 = rho 42334 := by linear_combination r4106
    have hd3 : rho 42335 * (rho 42323 * rho 42323 + rho 42322 * rho 42322 * (-1)) = 2 * (rho 42322 * rho 42323) := by
      rw [hd0, hd1, hd2]
      linear_combination r4107
    have hd4 : rho 42336 * (2 - (rho 42323 * rho 42323 + rho 42322 * rho 42322 * (-1))) = rho 42323 * rho 42323 - rho 42322 * rho 42322 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4108
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX87 rho : Seg45.F), (seg45AccY87 rho : Seg45.F)⟩
      ⟨(rho 42322 : Seg45.F), (rho 42323 : Seg45.F)⟩
      ⟨(rho 42328 : Seg45.F), (rho 42329 : Seg45.F)⟩
      ⟨(seg45AccX88 rho : Seg45.F), (seg45AccY88 rho : Seg45.F)⟩
      ⟨(rho 42335 : Seg45.F), (rho 42336 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung87

theorem seg45_rung88 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41036 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX88 rho : Seg45.F), (seg45AccY88 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42335 : Seg45.F), (rho 42336 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX88 rho : Seg45.F), (seg45AccY88 rho : Seg45.F)⟩
        ⟨(rho 42335 : Seg45.F), (rho 42336 : Seg45.F)⟩
        ⟨(seg45AccX89 rho : Seg45.F), (seg45AccY89 rho : Seg45.F)⟩
        ⟨(rho 42348 : Seg45.F), (rho 42349 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart51 at p51
  rcases p51 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4109, r4110, r4111, r4112, r4113, r4114, r4115, r4116, r4117, r4118, r4119, r4120, r4121, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow4109 Seg45.relationLc475 Seg45.relationLc475Part0 Seg45.relationLc475Part1 Seg45.relationLc475Part2 Seg45.relationLc475Part3 Seg45.relationLc475Part4 Seg45.relationLc475Part5 at r4109
  unfold Seg45.relationRow4110 Seg45.relationLc476 Seg45.relationLc476Part0 Seg45.relationLc476Part1 Seg45.relationLc476Part2 at r4110
  unfold Seg45.relationRow4111 Seg45.relationLc477 Seg45.relationLc477Part0 Seg45.relationLc477Part1 Seg45.relationLc477Part2 at r4111
  unfold Seg45.relationRow4112 at r4112
  unfold Seg45.relationRow4113 at r4113
  unfold Seg45.relationRow4114 at r4114
  unfold Seg45.relationRow4115 Seg45.relationLc478 Seg45.relationLc478Part0 Seg45.relationLc478Part1 Seg45.relationLc478Part2 at r4115
  unfold Seg45.relationRow4116 Seg45.relationLc479 Seg45.relationLc479Part0 Seg45.relationLc479Part1 Seg45.relationLc479Part2 at r4116
  unfold Seg45.relationRow4117 at r4117
  unfold Seg45.relationRow4118 at r4118
  unfold Seg45.relationRow4119 at r4119
  unfold Seg45.relationRow4120 at r4120
  unfold Seg45.relationRow4121 at r4121
  have hrung88 (bit : Bool) (hbit : rho 41036 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX88 rho : Seg45.F), (seg45AccY88 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42335 : Seg45.F), (rho 42336 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX88 rho : Seg45.F), (seg45AccY88 rho : Seg45.F)⟩
        ⟨(rho 42335 : Seg45.F), (rho 42336 : Seg45.F)⟩
        ⟨(seg45AccX89 rho : Seg45.F), (seg45AccY89 rho : Seg45.F)⟩
        ⟨(rho 42348 : Seg45.F), (rho 42349 : Seg45.F)⟩ := by
    have ha0 : (rho 42335 + rho 42336) * (seg45AccX88 rho + seg45AccY88 rho) = rho 42337 := by
      rw [seg45LadderFlatX88_eq, seg45LadderFlatY88_eq]
      unfold seg45LadderFlatX88 seg45LadderFlatY88
      linear_combination r4109
    have ha1 : rho 42336 * seg45AccX88 rho = rho 42338 := by
      rw [seg45LadderFlatX88_eq]
      unfold seg45LadderFlatX88
      linear_combination r4110
    have ha2 : rho 42335 * seg45AccY88 rho = rho 42339 := by
      rw [seg45LadderFlatY88_eq]
      unfold seg45LadderFlatY88
      linear_combination r4111
    have ha3 : 3021 * rho 42338 * rho 42339 = rho 42340 := by
      linear_combination r4112
    have ha4 : rho 42341 * (1 + rho 42340) = rho 42338 + rho 42339 := by
      linear_combination r4113
    have ha5 : rho 42342 * (1 - rho 42340) = rho 42337 - rho 42338 - rho 42339 := by
      linear_combination r4114
    have haddx :
        rho 42341 * (1 + 3021 * (rho 42336 * seg45AccX88 rho) * (rho 42335 * seg45AccY88 rho)) =
          rho 42336 * seg45AccX88 rho + rho 42335 * seg45AccY88 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42342 * (1 - 3021 * (rho 42336 * seg45AccX88 rho) * (rho 42335 * seg45AccY88 rho)) =
          (-1) * (rho 42336 * seg45AccX88 rho) - rho 42335 * seg45AccY88 rho +
            (seg45AccY88 rho - seg45AccX88 rho * (-1)) * (rho 42335 + rho 42336) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42342 * (1 - rho 42340) = rho 42337 - rho 42338 - rho 42339 := ha5
        _ = (-1) * rho 42338 - rho 42339 + (seg45AccY88 rho - seg45AccX88 rho * (-1)) * (rho 42335 + rho 42336) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX89 rho = seg45AccX88 rho - Bool.toZMod bit * (seg45AccX88 rho - rho 42341) := by
      have hd : rho 42343 = Bool.toZMod bit * (rho 42341 - seg45AccX88 rho) := by
        rw [← hbit, seg45LadderFlatX88_eq]
        unfold seg45LadderFlatX88
        linear_combination -r4115
      unfold seg45AccX89
      linear_combination hd
    have hsely : seg45AccY89 rho = seg45AccY88 rho - Bool.toZMod bit * (seg45AccY88 rho - rho 42342) := by
      have hd : rho 42344 = Bool.toZMod bit * (rho 42342 - seg45AccY88 rho) := by
        rw [← hbit, seg45LadderFlatY88_eq]
        unfold seg45LadderFlatY88
        linear_combination -r4116
      unfold seg45AccY89
      linear_combination hd
    have hd0 : rho 42335 * rho 42336 = rho 42345 := by linear_combination r4117
    have hd1 : rho 42335 * rho 42335 = rho 42346 := by linear_combination r4118
    have hd2 : rho 42336 * rho 42336 = rho 42347 := by linear_combination r4119
    have hd3 : rho 42348 * (rho 42336 * rho 42336 + rho 42335 * rho 42335 * (-1)) = 2 * (rho 42335 * rho 42336) := by
      rw [hd0, hd1, hd2]
      linear_combination r4120
    have hd4 : rho 42349 * (2 - (rho 42336 * rho 42336 + rho 42335 * rho 42335 * (-1))) = rho 42336 * rho 42336 - rho 42335 * rho 42335 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4121
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX88 rho : Seg45.F), (seg45AccY88 rho : Seg45.F)⟩
      ⟨(rho 42335 : Seg45.F), (rho 42336 : Seg45.F)⟩
      ⟨(rho 42341 : Seg45.F), (rho 42342 : Seg45.F)⟩
      ⟨(seg45AccX89 rho : Seg45.F), (seg45AccY89 rho : Seg45.F)⟩
      ⟨(rho 42348 : Seg45.F), (rho 42349 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung88

theorem seg45_rung89 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41037 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX89 rho : Seg45.F), (seg45AccY89 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42348 : Seg45.F), (rho 42349 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX89 rho : Seg45.F), (seg45AccY89 rho : Seg45.F)⟩
        ⟨(rho 42348 : Seg45.F), (rho 42349 : Seg45.F)⟩
        ⟨(seg45AccX90 rho : Seg45.F), (seg45AccY90 rho : Seg45.F)⟩
        ⟨(rho 42361 : Seg45.F), (rho 42362 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart51 at p51
  rcases p51 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4122, r4123, r4124, r4125, r4126, r4127, r4128, r4129, r4130, r4131, r4132, r4133, r4134, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow4122 Seg45.relationLc480 Seg45.relationLc480Part0 Seg45.relationLc480Part1 Seg45.relationLc480Part2 Seg45.relationLc480Part3 Seg45.relationLc480Part4 Seg45.relationLc480Part5 at r4122
  unfold Seg45.relationRow4123 Seg45.relationLc481 Seg45.relationLc481Part0 Seg45.relationLc481Part1 Seg45.relationLc481Part2 at r4123
  unfold Seg45.relationRow4124 Seg45.relationLc482 Seg45.relationLc482Part0 Seg45.relationLc482Part1 Seg45.relationLc482Part2 at r4124
  unfold Seg45.relationRow4125 at r4125
  unfold Seg45.relationRow4126 at r4126
  unfold Seg45.relationRow4127 at r4127
  unfold Seg45.relationRow4128 Seg45.relationLc483 Seg45.relationLc483Part0 Seg45.relationLc483Part1 Seg45.relationLc483Part2 at r4128
  unfold Seg45.relationRow4129 Seg45.relationLc484 Seg45.relationLc484Part0 Seg45.relationLc484Part1 Seg45.relationLc484Part2 at r4129
  unfold Seg45.relationRow4130 at r4130
  unfold Seg45.relationRow4131 at r4131
  unfold Seg45.relationRow4132 at r4132
  unfold Seg45.relationRow4133 at r4133
  unfold Seg45.relationRow4134 at r4134
  have hrung89 (bit : Bool) (hbit : rho 41037 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX89 rho : Seg45.F), (seg45AccY89 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42348 : Seg45.F), (rho 42349 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX89 rho : Seg45.F), (seg45AccY89 rho : Seg45.F)⟩
        ⟨(rho 42348 : Seg45.F), (rho 42349 : Seg45.F)⟩
        ⟨(seg45AccX90 rho : Seg45.F), (seg45AccY90 rho : Seg45.F)⟩
        ⟨(rho 42361 : Seg45.F), (rho 42362 : Seg45.F)⟩ := by
    have ha0 : (rho 42348 + rho 42349) * (seg45AccX89 rho + seg45AccY89 rho) = rho 42350 := by
      rw [seg45LadderFlatX89_eq, seg45LadderFlatY89_eq]
      unfold seg45LadderFlatX89 seg45LadderFlatY89
      linear_combination r4122
    have ha1 : rho 42349 * seg45AccX89 rho = rho 42351 := by
      rw [seg45LadderFlatX89_eq]
      unfold seg45LadderFlatX89
      linear_combination r4123
    have ha2 : rho 42348 * seg45AccY89 rho = rho 42352 := by
      rw [seg45LadderFlatY89_eq]
      unfold seg45LadderFlatY89
      linear_combination r4124
    have ha3 : 3021 * rho 42351 * rho 42352 = rho 42353 := by
      linear_combination r4125
    have ha4 : rho 42354 * (1 + rho 42353) = rho 42351 + rho 42352 := by
      linear_combination r4126
    have ha5 : rho 42355 * (1 - rho 42353) = rho 42350 - rho 42351 - rho 42352 := by
      linear_combination r4127
    have haddx :
        rho 42354 * (1 + 3021 * (rho 42349 * seg45AccX89 rho) * (rho 42348 * seg45AccY89 rho)) =
          rho 42349 * seg45AccX89 rho + rho 42348 * seg45AccY89 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42355 * (1 - 3021 * (rho 42349 * seg45AccX89 rho) * (rho 42348 * seg45AccY89 rho)) =
          (-1) * (rho 42349 * seg45AccX89 rho) - rho 42348 * seg45AccY89 rho +
            (seg45AccY89 rho - seg45AccX89 rho * (-1)) * (rho 42348 + rho 42349) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42355 * (1 - rho 42353) = rho 42350 - rho 42351 - rho 42352 := ha5
        _ = (-1) * rho 42351 - rho 42352 + (seg45AccY89 rho - seg45AccX89 rho * (-1)) * (rho 42348 + rho 42349) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX90 rho = seg45AccX89 rho - Bool.toZMod bit * (seg45AccX89 rho - rho 42354) := by
      have hd : rho 42356 = Bool.toZMod bit * (rho 42354 - seg45AccX89 rho) := by
        rw [← hbit, seg45LadderFlatX89_eq]
        unfold seg45LadderFlatX89
        linear_combination -r4128
      unfold seg45AccX90
      linear_combination hd
    have hsely : seg45AccY90 rho = seg45AccY89 rho - Bool.toZMod bit * (seg45AccY89 rho - rho 42355) := by
      have hd : rho 42357 = Bool.toZMod bit * (rho 42355 - seg45AccY89 rho) := by
        rw [← hbit, seg45LadderFlatY89_eq]
        unfold seg45LadderFlatY89
        linear_combination -r4129
      unfold seg45AccY90
      linear_combination hd
    have hd0 : rho 42348 * rho 42349 = rho 42358 := by linear_combination r4130
    have hd1 : rho 42348 * rho 42348 = rho 42359 := by linear_combination r4131
    have hd2 : rho 42349 * rho 42349 = rho 42360 := by linear_combination r4132
    have hd3 : rho 42361 * (rho 42349 * rho 42349 + rho 42348 * rho 42348 * (-1)) = 2 * (rho 42348 * rho 42349) := by
      rw [hd0, hd1, hd2]
      linear_combination r4133
    have hd4 : rho 42362 * (2 - (rho 42349 * rho 42349 + rho 42348 * rho 42348 * (-1))) = rho 42349 * rho 42349 - rho 42348 * rho 42348 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4134
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX89 rho : Seg45.F), (seg45AccY89 rho : Seg45.F)⟩
      ⟨(rho 42348 : Seg45.F), (rho 42349 : Seg45.F)⟩
      ⟨(rho 42354 : Seg45.F), (rho 42355 : Seg45.F)⟩
      ⟨(seg45AccX90 rho : Seg45.F), (seg45AccY90 rho : Seg45.F)⟩
      ⟨(rho 42361 : Seg45.F), (rho 42362 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung89

theorem seg45_rung90 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41038 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX90 rho : Seg45.F), (seg45AccY90 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42361 : Seg45.F), (rho 42362 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX90 rho : Seg45.F), (seg45AccY90 rho : Seg45.F)⟩
        ⟨(rho 42361 : Seg45.F), (rho 42362 : Seg45.F)⟩
        ⟨(seg45AccX91 rho : Seg45.F), (seg45AccY91 rho : Seg45.F)⟩
        ⟨(rho 42374 : Seg45.F), (rho 42375 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart51 at p51
  rcases p51 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4135, r4136, r4137, r4138, r4139, r4140, r4141, r4142, r4143, r4144, r4145, r4146, r4147, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow4135 Seg45.relationLc485 Seg45.relationLc485Part0 Seg45.relationLc485Part1 Seg45.relationLc485Part2 Seg45.relationLc485Part3 Seg45.relationLc485Part4 Seg45.relationLc485Part5 at r4135
  unfold Seg45.relationRow4136 Seg45.relationLc486 Seg45.relationLc486Part0 Seg45.relationLc486Part1 Seg45.relationLc486Part2 at r4136
  unfold Seg45.relationRow4137 Seg45.relationLc487 Seg45.relationLc487Part0 Seg45.relationLc487Part1 Seg45.relationLc487Part2 at r4137
  unfold Seg45.relationRow4138 at r4138
  unfold Seg45.relationRow4139 at r4139
  unfold Seg45.relationRow4140 at r4140
  unfold Seg45.relationRow4141 Seg45.relationLc488 Seg45.relationLc488Part0 Seg45.relationLc488Part1 Seg45.relationLc488Part2 at r4141
  unfold Seg45.relationRow4142 Seg45.relationLc489 Seg45.relationLc489Part0 Seg45.relationLc489Part1 Seg45.relationLc489Part2 at r4142
  unfold Seg45.relationRow4143 at r4143
  unfold Seg45.relationRow4144 at r4144
  unfold Seg45.relationRow4145 at r4145
  unfold Seg45.relationRow4146 at r4146
  unfold Seg45.relationRow4147 at r4147
  have hrung90 (bit : Bool) (hbit : rho 41038 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX90 rho : Seg45.F), (seg45AccY90 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42361 : Seg45.F), (rho 42362 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX90 rho : Seg45.F), (seg45AccY90 rho : Seg45.F)⟩
        ⟨(rho 42361 : Seg45.F), (rho 42362 : Seg45.F)⟩
        ⟨(seg45AccX91 rho : Seg45.F), (seg45AccY91 rho : Seg45.F)⟩
        ⟨(rho 42374 : Seg45.F), (rho 42375 : Seg45.F)⟩ := by
    have ha0 : (rho 42361 + rho 42362) * (seg45AccX90 rho + seg45AccY90 rho) = rho 42363 := by
      rw [seg45LadderFlatX90_eq, seg45LadderFlatY90_eq]
      unfold seg45LadderFlatX90 seg45LadderFlatY90
      linear_combination r4135
    have ha1 : rho 42362 * seg45AccX90 rho = rho 42364 := by
      rw [seg45LadderFlatX90_eq]
      unfold seg45LadderFlatX90
      linear_combination r4136
    have ha2 : rho 42361 * seg45AccY90 rho = rho 42365 := by
      rw [seg45LadderFlatY90_eq]
      unfold seg45LadderFlatY90
      linear_combination r4137
    have ha3 : 3021 * rho 42364 * rho 42365 = rho 42366 := by
      linear_combination r4138
    have ha4 : rho 42367 * (1 + rho 42366) = rho 42364 + rho 42365 := by
      linear_combination r4139
    have ha5 : rho 42368 * (1 - rho 42366) = rho 42363 - rho 42364 - rho 42365 := by
      linear_combination r4140
    have haddx :
        rho 42367 * (1 + 3021 * (rho 42362 * seg45AccX90 rho) * (rho 42361 * seg45AccY90 rho)) =
          rho 42362 * seg45AccX90 rho + rho 42361 * seg45AccY90 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42368 * (1 - 3021 * (rho 42362 * seg45AccX90 rho) * (rho 42361 * seg45AccY90 rho)) =
          (-1) * (rho 42362 * seg45AccX90 rho) - rho 42361 * seg45AccY90 rho +
            (seg45AccY90 rho - seg45AccX90 rho * (-1)) * (rho 42361 + rho 42362) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42368 * (1 - rho 42366) = rho 42363 - rho 42364 - rho 42365 := ha5
        _ = (-1) * rho 42364 - rho 42365 + (seg45AccY90 rho - seg45AccX90 rho * (-1)) * (rho 42361 + rho 42362) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX91 rho = seg45AccX90 rho - Bool.toZMod bit * (seg45AccX90 rho - rho 42367) := by
      have hd : rho 42369 = Bool.toZMod bit * (rho 42367 - seg45AccX90 rho) := by
        rw [← hbit, seg45LadderFlatX90_eq]
        unfold seg45LadderFlatX90
        linear_combination -r4141
      unfold seg45AccX91
      linear_combination hd
    have hsely : seg45AccY91 rho = seg45AccY90 rho - Bool.toZMod bit * (seg45AccY90 rho - rho 42368) := by
      have hd : rho 42370 = Bool.toZMod bit * (rho 42368 - seg45AccY90 rho) := by
        rw [← hbit, seg45LadderFlatY90_eq]
        unfold seg45LadderFlatY90
        linear_combination -r4142
      unfold seg45AccY91
      linear_combination hd
    have hd0 : rho 42361 * rho 42362 = rho 42371 := by linear_combination r4143
    have hd1 : rho 42361 * rho 42361 = rho 42372 := by linear_combination r4144
    have hd2 : rho 42362 * rho 42362 = rho 42373 := by linear_combination r4145
    have hd3 : rho 42374 * (rho 42362 * rho 42362 + rho 42361 * rho 42361 * (-1)) = 2 * (rho 42361 * rho 42362) := by
      rw [hd0, hd1, hd2]
      linear_combination r4146
    have hd4 : rho 42375 * (2 - (rho 42362 * rho 42362 + rho 42361 * rho 42361 * (-1))) = rho 42362 * rho 42362 - rho 42361 * rho 42361 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4147
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX90 rho : Seg45.F), (seg45AccY90 rho : Seg45.F)⟩
      ⟨(rho 42361 : Seg45.F), (rho 42362 : Seg45.F)⟩
      ⟨(rho 42367 : Seg45.F), (rho 42368 : Seg45.F)⟩
      ⟨(seg45AccX91 rho : Seg45.F), (seg45AccY91 rho : Seg45.F)⟩
      ⟨(rho 42374 : Seg45.F), (rho 42375 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung90

theorem seg45_rung91 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41039 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX91 rho : Seg45.F), (seg45AccY91 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42374 : Seg45.F), (rho 42375 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX91 rho : Seg45.F), (seg45AccY91 rho : Seg45.F)⟩
        ⟨(rho 42374 : Seg45.F), (rho 42375 : Seg45.F)⟩
        ⟨(seg45AccX92 rho : Seg45.F), (seg45AccY92 rho : Seg45.F)⟩
        ⟨(rho 42387 : Seg45.F), (rho 42388 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart51 at p51
  rcases p51 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4148, r4149, r4150, r4151, r4152, r4153, r4154, r4155, r4156, r4157, r4158, r4159⟩
  unfold Seg45.relationPart52 at p52
  rcases p52 with ⟨r4160, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow4148 Seg45.relationLc490 Seg45.relationLc490Part0 Seg45.relationLc490Part1 Seg45.relationLc490Part2 Seg45.relationLc490Part3 Seg45.relationLc490Part4 Seg45.relationLc490Part5 at r4148
  unfold Seg45.relationRow4149 Seg45.relationLc491 Seg45.relationLc491Part0 Seg45.relationLc491Part1 Seg45.relationLc491Part2 at r4149
  unfold Seg45.relationRow4150 Seg45.relationLc492 Seg45.relationLc492Part0 Seg45.relationLc492Part1 Seg45.relationLc492Part2 at r4150
  unfold Seg45.relationRow4151 at r4151
  unfold Seg45.relationRow4152 at r4152
  unfold Seg45.relationRow4153 at r4153
  unfold Seg45.relationRow4154 Seg45.relationLc493 Seg45.relationLc493Part0 Seg45.relationLc493Part1 Seg45.relationLc493Part2 at r4154
  unfold Seg45.relationRow4155 Seg45.relationLc494 Seg45.relationLc494Part0 Seg45.relationLc494Part1 Seg45.relationLc494Part2 at r4155
  unfold Seg45.relationRow4156 at r4156
  unfold Seg45.relationRow4157 at r4157
  unfold Seg45.relationRow4158 at r4158
  unfold Seg45.relationRow4159 at r4159
  unfold Seg45.relationRow4160 at r4160
  have hrung91 (bit : Bool) (hbit : rho 41039 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX91 rho : Seg45.F), (seg45AccY91 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42374 : Seg45.F), (rho 42375 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX91 rho : Seg45.F), (seg45AccY91 rho : Seg45.F)⟩
        ⟨(rho 42374 : Seg45.F), (rho 42375 : Seg45.F)⟩
        ⟨(seg45AccX92 rho : Seg45.F), (seg45AccY92 rho : Seg45.F)⟩
        ⟨(rho 42387 : Seg45.F), (rho 42388 : Seg45.F)⟩ := by
    have ha0 : (rho 42374 + rho 42375) * (seg45AccX91 rho + seg45AccY91 rho) = rho 42376 := by
      rw [seg45LadderFlatX91_eq, seg45LadderFlatY91_eq]
      unfold seg45LadderFlatX91 seg45LadderFlatY91
      linear_combination r4148
    have ha1 : rho 42375 * seg45AccX91 rho = rho 42377 := by
      rw [seg45LadderFlatX91_eq]
      unfold seg45LadderFlatX91
      linear_combination r4149
    have ha2 : rho 42374 * seg45AccY91 rho = rho 42378 := by
      rw [seg45LadderFlatY91_eq]
      unfold seg45LadderFlatY91
      linear_combination r4150
    have ha3 : 3021 * rho 42377 * rho 42378 = rho 42379 := by
      linear_combination r4151
    have ha4 : rho 42380 * (1 + rho 42379) = rho 42377 + rho 42378 := by
      linear_combination r4152
    have ha5 : rho 42381 * (1 - rho 42379) = rho 42376 - rho 42377 - rho 42378 := by
      linear_combination r4153
    have haddx :
        rho 42380 * (1 + 3021 * (rho 42375 * seg45AccX91 rho) * (rho 42374 * seg45AccY91 rho)) =
          rho 42375 * seg45AccX91 rho + rho 42374 * seg45AccY91 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42381 * (1 - 3021 * (rho 42375 * seg45AccX91 rho) * (rho 42374 * seg45AccY91 rho)) =
          (-1) * (rho 42375 * seg45AccX91 rho) - rho 42374 * seg45AccY91 rho +
            (seg45AccY91 rho - seg45AccX91 rho * (-1)) * (rho 42374 + rho 42375) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42381 * (1 - rho 42379) = rho 42376 - rho 42377 - rho 42378 := ha5
        _ = (-1) * rho 42377 - rho 42378 + (seg45AccY91 rho - seg45AccX91 rho * (-1)) * (rho 42374 + rho 42375) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX92 rho = seg45AccX91 rho - Bool.toZMod bit * (seg45AccX91 rho - rho 42380) := by
      have hd : rho 42382 = Bool.toZMod bit * (rho 42380 - seg45AccX91 rho) := by
        rw [← hbit, seg45LadderFlatX91_eq]
        unfold seg45LadderFlatX91
        linear_combination -r4154
      unfold seg45AccX92
      linear_combination hd
    have hsely : seg45AccY92 rho = seg45AccY91 rho - Bool.toZMod bit * (seg45AccY91 rho - rho 42381) := by
      have hd : rho 42383 = Bool.toZMod bit * (rho 42381 - seg45AccY91 rho) := by
        rw [← hbit, seg45LadderFlatY91_eq]
        unfold seg45LadderFlatY91
        linear_combination -r4155
      unfold seg45AccY92
      linear_combination hd
    have hd0 : rho 42374 * rho 42375 = rho 42384 := by linear_combination r4156
    have hd1 : rho 42374 * rho 42374 = rho 42385 := by linear_combination r4157
    have hd2 : rho 42375 * rho 42375 = rho 42386 := by linear_combination r4158
    have hd3 : rho 42387 * (rho 42375 * rho 42375 + rho 42374 * rho 42374 * (-1)) = 2 * (rho 42374 * rho 42375) := by
      rw [hd0, hd1, hd2]
      linear_combination r4159
    have hd4 : rho 42388 * (2 - (rho 42375 * rho 42375 + rho 42374 * rho 42374 * (-1))) = rho 42375 * rho 42375 - rho 42374 * rho 42374 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4160
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX91 rho : Seg45.F), (seg45AccY91 rho : Seg45.F)⟩
      ⟨(rho 42374 : Seg45.F), (rho 42375 : Seg45.F)⟩
      ⟨(rho 42380 : Seg45.F), (rho 42381 : Seg45.F)⟩
      ⟨(seg45AccX92 rho : Seg45.F), (seg45AccY92 rho : Seg45.F)⟩
      ⟨(rho 42387 : Seg45.F), (rho 42388 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung91

theorem seg45_rung92 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41040 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX92 rho : Seg45.F), (seg45AccY92 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42387 : Seg45.F), (rho 42388 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX92 rho : Seg45.F), (seg45AccY92 rho : Seg45.F)⟩
        ⟨(rho 42387 : Seg45.F), (rho 42388 : Seg45.F)⟩
        ⟨(seg45AccX93 rho : Seg45.F), (seg45AccY93 rho : Seg45.F)⟩
        ⟨(rho 42400 : Seg45.F), (rho 42401 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart52 at p52
  rcases p52 with ⟨_, r4161, r4162, r4163, r4164, r4165, r4166, r4167, r4168, r4169, r4170, r4171, r4172, r4173, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow4161 Seg45.relationLc495 Seg45.relationLc495Part0 Seg45.relationLc495Part1 Seg45.relationLc495Part2 Seg45.relationLc495Part3 Seg45.relationLc495Part4 Seg45.relationLc495Part5 at r4161
  unfold Seg45.relationRow4162 Seg45.relationLc496 Seg45.relationLc496Part0 Seg45.relationLc496Part1 Seg45.relationLc496Part2 at r4162
  unfold Seg45.relationRow4163 Seg45.relationLc497 Seg45.relationLc497Part0 Seg45.relationLc497Part1 Seg45.relationLc497Part2 at r4163
  unfold Seg45.relationRow4164 at r4164
  unfold Seg45.relationRow4165 at r4165
  unfold Seg45.relationRow4166 at r4166
  unfold Seg45.relationRow4167 Seg45.relationLc498 Seg45.relationLc498Part0 Seg45.relationLc498Part1 Seg45.relationLc498Part2 at r4167
  unfold Seg45.relationRow4168 Seg45.relationLc499 Seg45.relationLc499Part0 Seg45.relationLc499Part1 Seg45.relationLc499Part2 at r4168
  unfold Seg45.relationRow4169 at r4169
  unfold Seg45.relationRow4170 at r4170
  unfold Seg45.relationRow4171 at r4171
  unfold Seg45.relationRow4172 at r4172
  unfold Seg45.relationRow4173 at r4173
  have hrung92 (bit : Bool) (hbit : rho 41040 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX92 rho : Seg45.F), (seg45AccY92 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42387 : Seg45.F), (rho 42388 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX92 rho : Seg45.F), (seg45AccY92 rho : Seg45.F)⟩
        ⟨(rho 42387 : Seg45.F), (rho 42388 : Seg45.F)⟩
        ⟨(seg45AccX93 rho : Seg45.F), (seg45AccY93 rho : Seg45.F)⟩
        ⟨(rho 42400 : Seg45.F), (rho 42401 : Seg45.F)⟩ := by
    have ha0 : (rho 42387 + rho 42388) * (seg45AccX92 rho + seg45AccY92 rho) = rho 42389 := by
      rw [seg45LadderFlatX92_eq, seg45LadderFlatY92_eq]
      unfold seg45LadderFlatX92 seg45LadderFlatY92
      linear_combination r4161
    have ha1 : rho 42388 * seg45AccX92 rho = rho 42390 := by
      rw [seg45LadderFlatX92_eq]
      unfold seg45LadderFlatX92
      linear_combination r4162
    have ha2 : rho 42387 * seg45AccY92 rho = rho 42391 := by
      rw [seg45LadderFlatY92_eq]
      unfold seg45LadderFlatY92
      linear_combination r4163
    have ha3 : 3021 * rho 42390 * rho 42391 = rho 42392 := by
      linear_combination r4164
    have ha4 : rho 42393 * (1 + rho 42392) = rho 42390 + rho 42391 := by
      linear_combination r4165
    have ha5 : rho 42394 * (1 - rho 42392) = rho 42389 - rho 42390 - rho 42391 := by
      linear_combination r4166
    have haddx :
        rho 42393 * (1 + 3021 * (rho 42388 * seg45AccX92 rho) * (rho 42387 * seg45AccY92 rho)) =
          rho 42388 * seg45AccX92 rho + rho 42387 * seg45AccY92 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42394 * (1 - 3021 * (rho 42388 * seg45AccX92 rho) * (rho 42387 * seg45AccY92 rho)) =
          (-1) * (rho 42388 * seg45AccX92 rho) - rho 42387 * seg45AccY92 rho +
            (seg45AccY92 rho - seg45AccX92 rho * (-1)) * (rho 42387 + rho 42388) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42394 * (1 - rho 42392) = rho 42389 - rho 42390 - rho 42391 := ha5
        _ = (-1) * rho 42390 - rho 42391 + (seg45AccY92 rho - seg45AccX92 rho * (-1)) * (rho 42387 + rho 42388) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX93 rho = seg45AccX92 rho - Bool.toZMod bit * (seg45AccX92 rho - rho 42393) := by
      have hd : rho 42395 = Bool.toZMod bit * (rho 42393 - seg45AccX92 rho) := by
        rw [← hbit, seg45LadderFlatX92_eq]
        unfold seg45LadderFlatX92
        linear_combination -r4167
      unfold seg45AccX93
      linear_combination hd
    have hsely : seg45AccY93 rho = seg45AccY92 rho - Bool.toZMod bit * (seg45AccY92 rho - rho 42394) := by
      have hd : rho 42396 = Bool.toZMod bit * (rho 42394 - seg45AccY92 rho) := by
        rw [← hbit, seg45LadderFlatY92_eq]
        unfold seg45LadderFlatY92
        linear_combination -r4168
      unfold seg45AccY93
      linear_combination hd
    have hd0 : rho 42387 * rho 42388 = rho 42397 := by linear_combination r4169
    have hd1 : rho 42387 * rho 42387 = rho 42398 := by linear_combination r4170
    have hd2 : rho 42388 * rho 42388 = rho 42399 := by linear_combination r4171
    have hd3 : rho 42400 * (rho 42388 * rho 42388 + rho 42387 * rho 42387 * (-1)) = 2 * (rho 42387 * rho 42388) := by
      rw [hd0, hd1, hd2]
      linear_combination r4172
    have hd4 : rho 42401 * (2 - (rho 42388 * rho 42388 + rho 42387 * rho 42387 * (-1))) = rho 42388 * rho 42388 - rho 42387 * rho 42387 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4173
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX92 rho : Seg45.F), (seg45AccY92 rho : Seg45.F)⟩
      ⟨(rho 42387 : Seg45.F), (rho 42388 : Seg45.F)⟩
      ⟨(rho 42393 : Seg45.F), (rho 42394 : Seg45.F)⟩
      ⟨(seg45AccX93 rho : Seg45.F), (seg45AccY93 rho : Seg45.F)⟩
      ⟨(rho 42400 : Seg45.F), (rho 42401 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung92

theorem seg45_rung93 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41041 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX93 rho : Seg45.F), (seg45AccY93 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42400 : Seg45.F), (rho 42401 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX93 rho : Seg45.F), (seg45AccY93 rho : Seg45.F)⟩
        ⟨(rho 42400 : Seg45.F), (rho 42401 : Seg45.F)⟩
        ⟨(seg45AccX94 rho : Seg45.F), (seg45AccY94 rho : Seg45.F)⟩
        ⟨(rho 42413 : Seg45.F), (rho 42414 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart52 at p52
  rcases p52 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, r4174, r4175, r4176, r4177, r4178, r4179, r4180, r4181, r4182, r4183, r4184, r4185, r4186, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow4174 Seg45.relationLc500 Seg45.relationLc500Part0 Seg45.relationLc500Part1 Seg45.relationLc500Part2 Seg45.relationLc500Part3 Seg45.relationLc500Part4 Seg45.relationLc500Part5 at r4174
  unfold Seg45.relationRow4175 Seg45.relationLc501 Seg45.relationLc501Part0 Seg45.relationLc501Part1 Seg45.relationLc501Part2 at r4175
  unfold Seg45.relationRow4176 Seg45.relationLc502 Seg45.relationLc502Part0 Seg45.relationLc502Part1 Seg45.relationLc502Part2 at r4176
  unfold Seg45.relationRow4177 at r4177
  unfold Seg45.relationRow4178 at r4178
  unfold Seg45.relationRow4179 at r4179
  unfold Seg45.relationRow4180 Seg45.relationLc503 Seg45.relationLc503Part0 Seg45.relationLc503Part1 Seg45.relationLc503Part2 at r4180
  unfold Seg45.relationRow4181 Seg45.relationLc504 Seg45.relationLc504Part0 Seg45.relationLc504Part1 Seg45.relationLc504Part2 at r4181
  unfold Seg45.relationRow4182 at r4182
  unfold Seg45.relationRow4183 at r4183
  unfold Seg45.relationRow4184 at r4184
  unfold Seg45.relationRow4185 at r4185
  unfold Seg45.relationRow4186 at r4186
  have hrung93 (bit : Bool) (hbit : rho 41041 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX93 rho : Seg45.F), (seg45AccY93 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42400 : Seg45.F), (rho 42401 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX93 rho : Seg45.F), (seg45AccY93 rho : Seg45.F)⟩
        ⟨(rho 42400 : Seg45.F), (rho 42401 : Seg45.F)⟩
        ⟨(seg45AccX94 rho : Seg45.F), (seg45AccY94 rho : Seg45.F)⟩
        ⟨(rho 42413 : Seg45.F), (rho 42414 : Seg45.F)⟩ := by
    have ha0 : (rho 42400 + rho 42401) * (seg45AccX93 rho + seg45AccY93 rho) = rho 42402 := by
      rw [seg45LadderFlatX93_eq, seg45LadderFlatY93_eq]
      unfold seg45LadderFlatX93 seg45LadderFlatY93
      linear_combination r4174
    have ha1 : rho 42401 * seg45AccX93 rho = rho 42403 := by
      rw [seg45LadderFlatX93_eq]
      unfold seg45LadderFlatX93
      linear_combination r4175
    have ha2 : rho 42400 * seg45AccY93 rho = rho 42404 := by
      rw [seg45LadderFlatY93_eq]
      unfold seg45LadderFlatY93
      linear_combination r4176
    have ha3 : 3021 * rho 42403 * rho 42404 = rho 42405 := by
      linear_combination r4177
    have ha4 : rho 42406 * (1 + rho 42405) = rho 42403 + rho 42404 := by
      linear_combination r4178
    have ha5 : rho 42407 * (1 - rho 42405) = rho 42402 - rho 42403 - rho 42404 := by
      linear_combination r4179
    have haddx :
        rho 42406 * (1 + 3021 * (rho 42401 * seg45AccX93 rho) * (rho 42400 * seg45AccY93 rho)) =
          rho 42401 * seg45AccX93 rho + rho 42400 * seg45AccY93 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42407 * (1 - 3021 * (rho 42401 * seg45AccX93 rho) * (rho 42400 * seg45AccY93 rho)) =
          (-1) * (rho 42401 * seg45AccX93 rho) - rho 42400 * seg45AccY93 rho +
            (seg45AccY93 rho - seg45AccX93 rho * (-1)) * (rho 42400 + rho 42401) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42407 * (1 - rho 42405) = rho 42402 - rho 42403 - rho 42404 := ha5
        _ = (-1) * rho 42403 - rho 42404 + (seg45AccY93 rho - seg45AccX93 rho * (-1)) * (rho 42400 + rho 42401) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX94 rho = seg45AccX93 rho - Bool.toZMod bit * (seg45AccX93 rho - rho 42406) := by
      have hd : rho 42408 = Bool.toZMod bit * (rho 42406 - seg45AccX93 rho) := by
        rw [← hbit, seg45LadderFlatX93_eq]
        unfold seg45LadderFlatX93
        linear_combination -r4180
      unfold seg45AccX94
      linear_combination hd
    have hsely : seg45AccY94 rho = seg45AccY93 rho - Bool.toZMod bit * (seg45AccY93 rho - rho 42407) := by
      have hd : rho 42409 = Bool.toZMod bit * (rho 42407 - seg45AccY93 rho) := by
        rw [← hbit, seg45LadderFlatY93_eq]
        unfold seg45LadderFlatY93
        linear_combination -r4181
      unfold seg45AccY94
      linear_combination hd
    have hd0 : rho 42400 * rho 42401 = rho 42410 := by linear_combination r4182
    have hd1 : rho 42400 * rho 42400 = rho 42411 := by linear_combination r4183
    have hd2 : rho 42401 * rho 42401 = rho 42412 := by linear_combination r4184
    have hd3 : rho 42413 * (rho 42401 * rho 42401 + rho 42400 * rho 42400 * (-1)) = 2 * (rho 42400 * rho 42401) := by
      rw [hd0, hd1, hd2]
      linear_combination r4185
    have hd4 : rho 42414 * (2 - (rho 42401 * rho 42401 + rho 42400 * rho 42400 * (-1))) = rho 42401 * rho 42401 - rho 42400 * rho 42400 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4186
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX93 rho : Seg45.F), (seg45AccY93 rho : Seg45.F)⟩
      ⟨(rho 42400 : Seg45.F), (rho 42401 : Seg45.F)⟩
      ⟨(rho 42406 : Seg45.F), (rho 42407 : Seg45.F)⟩
      ⟨(seg45AccX94 rho : Seg45.F), (seg45AccY94 rho : Seg45.F)⟩
      ⟨(rho 42413 : Seg45.F), (rho 42414 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung93

theorem seg45_rung94 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41042 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX94 rho : Seg45.F), (seg45AccY94 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42413 : Seg45.F), (rho 42414 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX94 rho : Seg45.F), (seg45AccY94 rho : Seg45.F)⟩
        ⟨(rho 42413 : Seg45.F), (rho 42414 : Seg45.F)⟩
        ⟨(seg45AccX95 rho : Seg45.F), (seg45AccY95 rho : Seg45.F)⟩
        ⟨(rho 42426 : Seg45.F), (rho 42427 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart52 at p52
  rcases p52 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4187, r4188, r4189, r4190, r4191, r4192, r4193, r4194, r4195, r4196, r4197, r4198, r4199, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow4187 Seg45.relationLc505 Seg45.relationLc505Part0 Seg45.relationLc505Part1 Seg45.relationLc505Part2 Seg45.relationLc505Part3 Seg45.relationLc505Part4 Seg45.relationLc505Part5 at r4187
  unfold Seg45.relationRow4188 Seg45.relationLc506 Seg45.relationLc506Part0 Seg45.relationLc506Part1 Seg45.relationLc506Part2 at r4188
  unfold Seg45.relationRow4189 Seg45.relationLc507 Seg45.relationLc507Part0 Seg45.relationLc507Part1 Seg45.relationLc507Part2 at r4189
  unfold Seg45.relationRow4190 at r4190
  unfold Seg45.relationRow4191 at r4191
  unfold Seg45.relationRow4192 at r4192
  unfold Seg45.relationRow4193 Seg45.relationLc508 Seg45.relationLc508Part0 Seg45.relationLc508Part1 Seg45.relationLc508Part2 at r4193
  unfold Seg45.relationRow4194 Seg45.relationLc509 Seg45.relationLc509Part0 Seg45.relationLc509Part1 Seg45.relationLc509Part2 at r4194
  unfold Seg45.relationRow4195 at r4195
  unfold Seg45.relationRow4196 at r4196
  unfold Seg45.relationRow4197 at r4197
  unfold Seg45.relationRow4198 at r4198
  unfold Seg45.relationRow4199 at r4199
  have hrung94 (bit : Bool) (hbit : rho 41042 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX94 rho : Seg45.F), (seg45AccY94 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42413 : Seg45.F), (rho 42414 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX94 rho : Seg45.F), (seg45AccY94 rho : Seg45.F)⟩
        ⟨(rho 42413 : Seg45.F), (rho 42414 : Seg45.F)⟩
        ⟨(seg45AccX95 rho : Seg45.F), (seg45AccY95 rho : Seg45.F)⟩
        ⟨(rho 42426 : Seg45.F), (rho 42427 : Seg45.F)⟩ := by
    have ha0 : (rho 42413 + rho 42414) * (seg45AccX94 rho + seg45AccY94 rho) = rho 42415 := by
      rw [seg45LadderFlatX94_eq, seg45LadderFlatY94_eq]
      unfold seg45LadderFlatX94 seg45LadderFlatY94
      linear_combination r4187
    have ha1 : rho 42414 * seg45AccX94 rho = rho 42416 := by
      rw [seg45LadderFlatX94_eq]
      unfold seg45LadderFlatX94
      linear_combination r4188
    have ha2 : rho 42413 * seg45AccY94 rho = rho 42417 := by
      rw [seg45LadderFlatY94_eq]
      unfold seg45LadderFlatY94
      linear_combination r4189
    have ha3 : 3021 * rho 42416 * rho 42417 = rho 42418 := by
      linear_combination r4190
    have ha4 : rho 42419 * (1 + rho 42418) = rho 42416 + rho 42417 := by
      linear_combination r4191
    have ha5 : rho 42420 * (1 - rho 42418) = rho 42415 - rho 42416 - rho 42417 := by
      linear_combination r4192
    have haddx :
        rho 42419 * (1 + 3021 * (rho 42414 * seg45AccX94 rho) * (rho 42413 * seg45AccY94 rho)) =
          rho 42414 * seg45AccX94 rho + rho 42413 * seg45AccY94 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42420 * (1 - 3021 * (rho 42414 * seg45AccX94 rho) * (rho 42413 * seg45AccY94 rho)) =
          (-1) * (rho 42414 * seg45AccX94 rho) - rho 42413 * seg45AccY94 rho +
            (seg45AccY94 rho - seg45AccX94 rho * (-1)) * (rho 42413 + rho 42414) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42420 * (1 - rho 42418) = rho 42415 - rho 42416 - rho 42417 := ha5
        _ = (-1) * rho 42416 - rho 42417 + (seg45AccY94 rho - seg45AccX94 rho * (-1)) * (rho 42413 + rho 42414) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX95 rho = seg45AccX94 rho - Bool.toZMod bit * (seg45AccX94 rho - rho 42419) := by
      have hd : rho 42421 = Bool.toZMod bit * (rho 42419 - seg45AccX94 rho) := by
        rw [← hbit, seg45LadderFlatX94_eq]
        unfold seg45LadderFlatX94
        linear_combination -r4193
      unfold seg45AccX95
      linear_combination hd
    have hsely : seg45AccY95 rho = seg45AccY94 rho - Bool.toZMod bit * (seg45AccY94 rho - rho 42420) := by
      have hd : rho 42422 = Bool.toZMod bit * (rho 42420 - seg45AccY94 rho) := by
        rw [← hbit, seg45LadderFlatY94_eq]
        unfold seg45LadderFlatY94
        linear_combination -r4194
      unfold seg45AccY95
      linear_combination hd
    have hd0 : rho 42413 * rho 42414 = rho 42423 := by linear_combination r4195
    have hd1 : rho 42413 * rho 42413 = rho 42424 := by linear_combination r4196
    have hd2 : rho 42414 * rho 42414 = rho 42425 := by linear_combination r4197
    have hd3 : rho 42426 * (rho 42414 * rho 42414 + rho 42413 * rho 42413 * (-1)) = 2 * (rho 42413 * rho 42414) := by
      rw [hd0, hd1, hd2]
      linear_combination r4198
    have hd4 : rho 42427 * (2 - (rho 42414 * rho 42414 + rho 42413 * rho 42413 * (-1))) = rho 42414 * rho 42414 - rho 42413 * rho 42413 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4199
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX94 rho : Seg45.F), (seg45AccY94 rho : Seg45.F)⟩
      ⟨(rho 42413 : Seg45.F), (rho 42414 : Seg45.F)⟩
      ⟨(rho 42419 : Seg45.F), (rho 42420 : Seg45.F)⟩
      ⟨(seg45AccX95 rho : Seg45.F), (seg45AccY95 rho : Seg45.F)⟩
      ⟨(rho 42426 : Seg45.F), (rho 42427 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung94

theorem seg45_rung95 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41043 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX95 rho : Seg45.F), (seg45AccY95 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42426 : Seg45.F), (rho 42427 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX95 rho : Seg45.F), (seg45AccY95 rho : Seg45.F)⟩
        ⟨(rho 42426 : Seg45.F), (rho 42427 : Seg45.F)⟩
        ⟨(seg45AccX96 rho : Seg45.F), (seg45AccY96 rho : Seg45.F)⟩
        ⟨(rho 42439 : Seg45.F), (rho 42440 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart52 at p52
  rcases p52 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4200, r4201, r4202, r4203, r4204, r4205, r4206, r4207, r4208, r4209, r4210, r4211, r4212, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow4200 Seg45.relationLc510 Seg45.relationLc510Part0 Seg45.relationLc510Part1 Seg45.relationLc510Part2 Seg45.relationLc510Part3 Seg45.relationLc510Part4 Seg45.relationLc510Part5 at r4200
  unfold Seg45.relationRow4201 Seg45.relationLc511 Seg45.relationLc511Part0 Seg45.relationLc511Part1 Seg45.relationLc511Part2 at r4201
  unfold Seg45.relationRow4202 Seg45.relationLc512 Seg45.relationLc512Part0 Seg45.relationLc512Part1 Seg45.relationLc512Part2 at r4202
  unfold Seg45.relationRow4203 at r4203
  unfold Seg45.relationRow4204 at r4204
  unfold Seg45.relationRow4205 at r4205
  unfold Seg45.relationRow4206 Seg45.relationLc513 Seg45.relationLc513Part0 Seg45.relationLc513Part1 Seg45.relationLc513Part2 at r4206
  unfold Seg45.relationRow4207 Seg45.relationLc514 Seg45.relationLc514Part0 Seg45.relationLc514Part1 Seg45.relationLc514Part2 Seg45.relationLc514Part3 at r4207
  unfold Seg45.relationRow4208 at r4208
  unfold Seg45.relationRow4209 at r4209
  unfold Seg45.relationRow4210 at r4210
  unfold Seg45.relationRow4211 at r4211
  unfold Seg45.relationRow4212 at r4212
  have hrung95 (bit : Bool) (hbit : rho 41043 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX95 rho : Seg45.F), (seg45AccY95 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42426 : Seg45.F), (rho 42427 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX95 rho : Seg45.F), (seg45AccY95 rho : Seg45.F)⟩
        ⟨(rho 42426 : Seg45.F), (rho 42427 : Seg45.F)⟩
        ⟨(seg45AccX96 rho : Seg45.F), (seg45AccY96 rho : Seg45.F)⟩
        ⟨(rho 42439 : Seg45.F), (rho 42440 : Seg45.F)⟩ := by
    have ha0 : (rho 42426 + rho 42427) * (seg45AccX95 rho + seg45AccY95 rho) = rho 42428 := by
      rw [seg45LadderFlatX95_eq, seg45LadderFlatY95_eq]
      unfold seg45LadderFlatX95 seg45LadderFlatY95
      linear_combination r4200
    have ha1 : rho 42427 * seg45AccX95 rho = rho 42429 := by
      rw [seg45LadderFlatX95_eq]
      unfold seg45LadderFlatX95
      linear_combination r4201
    have ha2 : rho 42426 * seg45AccY95 rho = rho 42430 := by
      rw [seg45LadderFlatY95_eq]
      unfold seg45LadderFlatY95
      linear_combination r4202
    have ha3 : 3021 * rho 42429 * rho 42430 = rho 42431 := by
      linear_combination r4203
    have ha4 : rho 42432 * (1 + rho 42431) = rho 42429 + rho 42430 := by
      linear_combination r4204
    have ha5 : rho 42433 * (1 - rho 42431) = rho 42428 - rho 42429 - rho 42430 := by
      linear_combination r4205
    have haddx :
        rho 42432 * (1 + 3021 * (rho 42427 * seg45AccX95 rho) * (rho 42426 * seg45AccY95 rho)) =
          rho 42427 * seg45AccX95 rho + rho 42426 * seg45AccY95 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42433 * (1 - 3021 * (rho 42427 * seg45AccX95 rho) * (rho 42426 * seg45AccY95 rho)) =
          (-1) * (rho 42427 * seg45AccX95 rho) - rho 42426 * seg45AccY95 rho +
            (seg45AccY95 rho - seg45AccX95 rho * (-1)) * (rho 42426 + rho 42427) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42433 * (1 - rho 42431) = rho 42428 - rho 42429 - rho 42430 := ha5
        _ = (-1) * rho 42429 - rho 42430 + (seg45AccY95 rho - seg45AccX95 rho * (-1)) * (rho 42426 + rho 42427) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX96 rho = seg45AccX95 rho - Bool.toZMod bit * (seg45AccX95 rho - rho 42432) := by
      have hd : rho 42434 = Bool.toZMod bit * (rho 42432 - seg45AccX95 rho) := by
        rw [← hbit, seg45LadderFlatX95_eq]
        unfold seg45LadderFlatX95
        linear_combination -r4206
      unfold seg45AccX96
      linear_combination hd
    have hsely : seg45AccY96 rho = seg45AccY95 rho - Bool.toZMod bit * (seg45AccY95 rho - rho 42433) := by
      have hd : rho 42435 = Bool.toZMod bit * (rho 42433 - seg45AccY95 rho) := by
        rw [← hbit, seg45LadderFlatY95_eq]
        unfold seg45LadderFlatY95
        linear_combination -r4207
      unfold seg45AccY96
      linear_combination hd
    have hd0 : rho 42426 * rho 42427 = rho 42436 := by linear_combination r4208
    have hd1 : rho 42426 * rho 42426 = rho 42437 := by linear_combination r4209
    have hd2 : rho 42427 * rho 42427 = rho 42438 := by linear_combination r4210
    have hd3 : rho 42439 * (rho 42427 * rho 42427 + rho 42426 * rho 42426 * (-1)) = 2 * (rho 42426 * rho 42427) := by
      rw [hd0, hd1, hd2]
      linear_combination r4211
    have hd4 : rho 42440 * (2 - (rho 42427 * rho 42427 + rho 42426 * rho 42426 * (-1))) = rho 42427 * rho 42427 - rho 42426 * rho 42426 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4212
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX95 rho : Seg45.F), (seg45AccY95 rho : Seg45.F)⟩
      ⟨(rho 42426 : Seg45.F), (rho 42427 : Seg45.F)⟩
      ⟨(rho 42432 : Seg45.F), (rho 42433 : Seg45.F)⟩
      ⟨(seg45AccX96 rho : Seg45.F), (seg45AccY96 rho : Seg45.F)⟩
      ⟨(rho 42439 : Seg45.F), (rho 42440 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung95

theorem seg45_hstep_c2 (rho : Nat -> Seg45.F) (h : Seg45.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (40948 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 64 ≤ i → i < 96 →
      EdwardsBridge.onCurve (seg45LadderAccState rho i) →
      EdwardsBridge.onCurve (seg45LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg45LadderAccState rho i) (seg45LadderCurState rho i)
        (seg45LadderAccState rho (i + 1)) (seg45LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg45_rung64 rho h bits[64]! (hbitAt 64 (by omega)) hacc hcur
  · exact seg45_rung65 rho h bits[65]! (hbitAt 65 (by omega)) hacc hcur
  · exact seg45_rung66 rho h bits[66]! (hbitAt 66 (by omega)) hacc hcur
  · exact seg45_rung67 rho h bits[67]! (hbitAt 67 (by omega)) hacc hcur
  · exact seg45_rung68 rho h bits[68]! (hbitAt 68 (by omega)) hacc hcur
  · exact seg45_rung69 rho h bits[69]! (hbitAt 69 (by omega)) hacc hcur
  · exact seg45_rung70 rho h bits[70]! (hbitAt 70 (by omega)) hacc hcur
  · exact seg45_rung71 rho h bits[71]! (hbitAt 71 (by omega)) hacc hcur
  · exact seg45_rung72 rho h bits[72]! (hbitAt 72 (by omega)) hacc hcur
  · exact seg45_rung73 rho h bits[73]! (hbitAt 73 (by omega)) hacc hcur
  · exact seg45_rung74 rho h bits[74]! (hbitAt 74 (by omega)) hacc hcur
  · exact seg45_rung75 rho h bits[75]! (hbitAt 75 (by omega)) hacc hcur
  · exact seg45_rung76 rho h bits[76]! (hbitAt 76 (by omega)) hacc hcur
  · exact seg45_rung77 rho h bits[77]! (hbitAt 77 (by omega)) hacc hcur
  · exact seg45_rung78 rho h bits[78]! (hbitAt 78 (by omega)) hacc hcur
  · exact seg45_rung79 rho h bits[79]! (hbitAt 79 (by omega)) hacc hcur
  · exact seg45_rung80 rho h bits[80]! (hbitAt 80 (by omega)) hacc hcur
  · exact seg45_rung81 rho h bits[81]! (hbitAt 81 (by omega)) hacc hcur
  · exact seg45_rung82 rho h bits[82]! (hbitAt 82 (by omega)) hacc hcur
  · exact seg45_rung83 rho h bits[83]! (hbitAt 83 (by omega)) hacc hcur
  · exact seg45_rung84 rho h bits[84]! (hbitAt 84 (by omega)) hacc hcur
  · exact seg45_rung85 rho h bits[85]! (hbitAt 85 (by omega)) hacc hcur
  · exact seg45_rung86 rho h bits[86]! (hbitAt 86 (by omega)) hacc hcur
  · exact seg45_rung87 rho h bits[87]! (hbitAt 87 (by omega)) hacc hcur
  · exact seg45_rung88 rho h bits[88]! (hbitAt 88 (by omega)) hacc hcur
  · exact seg45_rung89 rho h bits[89]! (hbitAt 89 (by omega)) hacc hcur
  · exact seg45_rung90 rho h bits[90]! (hbitAt 90 (by omega)) hacc hcur
  · exact seg45_rung91 rho h bits[91]! (hbitAt 91 (by omega)) hacc hcur
  · exact seg45_rung92 rho h bits[92]! (hbitAt 92 (by omega)) hacc hcur
  · exact seg45_rung93 rho h bits[93]! (hbitAt 93 (by omega)) hacc hcur
  · exact seg45_rung94 rho h bits[94]! (hbitAt 94 (by omega)) hacc hcur
  · exact seg45_rung95 rho h bits[95]! (hbitAt 95 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
