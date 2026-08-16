import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042cDtkWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.DtkWindowSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem window48 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc48 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[152]! (scalarBits rho)[151]!
        (base rho) (twice rho) (triple rho) (acc48 rho)
        (acc49 rho) ∧
      EdwardsBridge.onCurve (acc49 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p47, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart47 at p47
  rcases p47 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3792, r3793, r3794, r3795, r3796, r3797, r3798, r3799, r3800, r3801, r3802, r3803, r3804, r3805, r3806, r3807, r3808, r3809, r3810, r3811, r3812, r3813, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3792 at r3792
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3793 at r3793
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3794 at r3794
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3795 at r3795
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3796 at r3796
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3797 at r3797
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3798 at r3798
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3799 at r3799
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3800 at r3800
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3801 at r3801
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3802 at r3802
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3803 at r3803
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3804 at r3804
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3805 at r3805
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3806 at r3806
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3807 at r3807
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3808 at r3808
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3809 at r3809
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3810 at r3810
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3811 at r3811
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3812 at r3812
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3813 at r3813
  have hshift1 : EdwardsBridge.doubleSpec (acc48 rho) (shiftOnce48 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3284) (rho 3285) (rho 3286) (rho 3287) (rho 3288) (rho 3289) (rho 3290)
      (by simpa [acc48] using hacc)
      (by linear_combination r3792)
      (by linear_combination r3793)
      (by linear_combination r3794)
      (by linear_combination r3795)
      (by linear_combination r3796)
    simpa [acc48, shiftOnce48] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce48 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc48 rho) (shiftOnce48 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc48 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce48 rho) (shifted48 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3289) (rho 3290) (rho 3291) (rho 3292) (rho 3293) (rho 3294) (rho 3295)
      (by simpa [shiftOnce48] using hshift1On)
      (by linear_combination r3797)
      (by linear_combination r3798)
      (by linear_combination r3799)
      (by linear_combination r3800)
      (by linear_combination r3801)
    simpa [shiftOnce48, shifted48] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted48 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce48 rho) (shifted48 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce48 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1135) (rho 1134)
      (base rho) (twice rho) (triple rho) (digit48 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1135) (rho 1134)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 3297 + rho 3298, (1 : F) + rho 3300 + rho 3301⟩ := by
      constructor
      · refine ⟨(rho 3296 + (rho 2216) - (0)), rho 3297, ?_, ?_, ?_⟩
        · linear_combination r3802
        · linear_combination r3803
        · linear_combination r3804
      · refine ⟨(rho 3299 + (rho 2217) - ((1 : F))), rho 3300, ?_, ?_, ?_⟩
        · linear_combination r3805
        · linear_combination r3806
        · linear_combination r3807
    simpa [base, twice, triple, digit48] using hraw
  have hhigh : rho 1135 =
      Bool.toZMod bits[152]! := by
    simpa only using rho_bit_of_map rho bits hbits 152 (by decide +kernel)
  have hlow : rho 1134 =
      Bool.toZMod bits[151]! := by
    simpa only using rho_bit_of_map rho bits hbits 151 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[152]! bits[151]! (base rho) (twice rho) (triple rho)
    (digit48 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit48 rho) := by
    rw [hdigit]
    cases bits[152]! <;> cases bits[151]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted48 rho) (digit48 rho) (acc49 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3294) (rho 3295) (rho 3297 + rho 3298) ((1 : F) + rho 3300 + rho 3301)
      (rho 3302) (rho 3303) (rho 3304) (rho 3305) (rho 3306) (rho 3307)
      (by simpa [shifted48] using hshift2On)
      (by simpa [digit48] using hdigitOn)
      (by linear_combination r3808)
      (by linear_combination r3809)
      (by linear_combination r3810)
      (by linear_combination r3811)
      (by linear_combination r3812)
      (by linear_combination r3813)
    simpa [shifted48, digit48, acc49] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc49 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted48 rho) (digit48 rho) (acc49 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted48 rho) (digit48 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1135) (rho 1134)
      (base rho) (twice rho) (triple rho) (acc48 rho)
      (acc49 rho) :=
    ⟨shiftOnce48 rho, shifted48 rho, digit48 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window49 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc49 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[150]! (scalarBits rho)[149]!
        (base rho) (twice rho) (triple rho) (acc49 rho)
        (acc50 rho) ∧
      EdwardsBridge.onCurve (acc50 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p47, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart47 at p47
  rcases p47 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3814, r3815, r3816, r3817, r3818, r3819, r3820, r3821, r3822, r3823, r3824, r3825, r3826, r3827, r3828, r3829, r3830, r3831, r3832, r3833, r3834, r3835, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3814 at r3814
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3815 at r3815
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3816 at r3816
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3817 at r3817
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3818 at r3818
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3819 at r3819
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3820 at r3820
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3821 at r3821
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3822 at r3822
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3823 at r3823
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3824 at r3824
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3825 at r3825
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3826 at r3826
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3827 at r3827
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3828 at r3828
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3829 at r3829
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3830 at r3830
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3831 at r3831
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3832 at r3832
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3833 at r3833
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3834 at r3834
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3835 at r3835
  have hshift1 : EdwardsBridge.doubleSpec (acc49 rho) (shiftOnce49 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3306) (rho 3307) (rho 3308) (rho 3309) (rho 3310) (rho 3311) (rho 3312)
      (by simpa [acc49] using hacc)
      (by linear_combination r3814)
      (by linear_combination r3815)
      (by linear_combination r3816)
      (by linear_combination r3817)
      (by linear_combination r3818)
    simpa [acc49, shiftOnce49] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce49 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc49 rho) (shiftOnce49 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc49 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce49 rho) (shifted49 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3311) (rho 3312) (rho 3313) (rho 3314) (rho 3315) (rho 3316) (rho 3317)
      (by simpa [shiftOnce49] using hshift1On)
      (by linear_combination r3819)
      (by linear_combination r3820)
      (by linear_combination r3821)
      (by linear_combination r3822)
      (by linear_combination r3823)
    simpa [shiftOnce49, shifted49] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted49 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce49 rho) (shifted49 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce49 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1133) (rho 1132)
      (base rho) (twice rho) (triple rho) (digit49 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1133) (rho 1132)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 3319 + rho 3320, (1 : F) + rho 3322 + rho 3323⟩ := by
      constructor
      · refine ⟨(rho 3318 + (rho 2216) - (0)), rho 3319, ?_, ?_, ?_⟩
        · linear_combination r3824
        · linear_combination r3825
        · linear_combination r3826
      · refine ⟨(rho 3321 + (rho 2217) - ((1 : F))), rho 3322, ?_, ?_, ?_⟩
        · linear_combination r3827
        · linear_combination r3828
        · linear_combination r3829
    simpa [base, twice, triple, digit49] using hraw
  have hhigh : rho 1133 =
      Bool.toZMod bits[150]! := by
    simpa only using rho_bit_of_map rho bits hbits 150 (by decide +kernel)
  have hlow : rho 1132 =
      Bool.toZMod bits[149]! := by
    simpa only using rho_bit_of_map rho bits hbits 149 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[150]! bits[149]! (base rho) (twice rho) (triple rho)
    (digit49 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit49 rho) := by
    rw [hdigit]
    cases bits[150]! <;> cases bits[149]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted49 rho) (digit49 rho) (acc50 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3316) (rho 3317) (rho 3319 + rho 3320) ((1 : F) + rho 3322 + rho 3323)
      (rho 3324) (rho 3325) (rho 3326) (rho 3327) (rho 3328) (rho 3329)
      (by simpa [shifted49] using hshift2On)
      (by simpa [digit49] using hdigitOn)
      (by linear_combination r3830)
      (by linear_combination r3831)
      (by linear_combination r3832)
      (by linear_combination r3833)
      (by linear_combination r3834)
      (by linear_combination r3835)
    simpa [shifted49, digit49, acc50] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc50 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted49 rho) (digit49 rho) (acc50 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted49 rho) (digit49 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1133) (rho 1132)
      (base rho) (twice rho) (triple rho) (acc49 rho)
      (acc50 rho) :=
    ⟨shiftOnce49 rho, shifted49 rho, digit49 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window50 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc50 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[148]! (scalarBits rho)[147]!
        (base rho) (twice rho) (triple rho) (acc50 rho)
        (acc51 rho) ∧
      EdwardsBridge.onCurve (acc51 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p47, p48, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart47 at p47
  rcases p47 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3836, r3837, r3838, r3839⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart48 at p48
  rcases p48 with ⟨r3840, r3841, r3842, r3843, r3844, r3845, r3846, r3847, r3848, r3849, r3850, r3851, r3852, r3853, r3854, r3855, r3856, r3857, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3836 at r3836
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3837 at r3837
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3838 at r3838
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3839 at r3839
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3840 at r3840
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3841 at r3841
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3842 at r3842
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3843 at r3843
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3844 at r3844
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3845 at r3845
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3846 at r3846
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3847 at r3847
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3848 at r3848
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3849 at r3849
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3850 at r3850
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3851 at r3851
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3852 at r3852
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3853 at r3853
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3854 at r3854
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3855 at r3855
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3856 at r3856
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3857 at r3857
  have hshift1 : EdwardsBridge.doubleSpec (acc50 rho) (shiftOnce50 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3328) (rho 3329) (rho 3330) (rho 3331) (rho 3332) (rho 3333) (rho 3334)
      (by simpa [acc50] using hacc)
      (by linear_combination r3836)
      (by linear_combination r3837)
      (by linear_combination r3838)
      (by linear_combination r3839)
      (by linear_combination r3840)
    simpa [acc50, shiftOnce50] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce50 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc50 rho) (shiftOnce50 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc50 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce50 rho) (shifted50 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3333) (rho 3334) (rho 3335) (rho 3336) (rho 3337) (rho 3338) (rho 3339)
      (by simpa [shiftOnce50] using hshift1On)
      (by linear_combination r3841)
      (by linear_combination r3842)
      (by linear_combination r3843)
      (by linear_combination r3844)
      (by linear_combination r3845)
    simpa [shiftOnce50, shifted50] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted50 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce50 rho) (shifted50 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce50 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1131) (rho 1130)
      (base rho) (twice rho) (triple rho) (digit50 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1131) (rho 1130)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 3341 + rho 3342, (1 : F) + rho 3344 + rho 3345⟩ := by
      constructor
      · refine ⟨(rho 3340 + (rho 2216) - (0)), rho 3341, ?_, ?_, ?_⟩
        · linear_combination r3846
        · linear_combination r3847
        · linear_combination r3848
      · refine ⟨(rho 3343 + (rho 2217) - ((1 : F))), rho 3344, ?_, ?_, ?_⟩
        · linear_combination r3849
        · linear_combination r3850
        · linear_combination r3851
    simpa [base, twice, triple, digit50] using hraw
  have hhigh : rho 1131 =
      Bool.toZMod bits[148]! := by
    simpa only using rho_bit_of_map rho bits hbits 148 (by decide +kernel)
  have hlow : rho 1130 =
      Bool.toZMod bits[147]! := by
    simpa only using rho_bit_of_map rho bits hbits 147 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[148]! bits[147]! (base rho) (twice rho) (triple rho)
    (digit50 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit50 rho) := by
    rw [hdigit]
    cases bits[148]! <;> cases bits[147]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted50 rho) (digit50 rho) (acc51 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3338) (rho 3339) (rho 3341 + rho 3342) ((1 : F) + rho 3344 + rho 3345)
      (rho 3346) (rho 3347) (rho 3348) (rho 3349) (rho 3350) (rho 3351)
      (by simpa [shifted50] using hshift2On)
      (by simpa [digit50] using hdigitOn)
      (by linear_combination r3852)
      (by linear_combination r3853)
      (by linear_combination r3854)
      (by linear_combination r3855)
      (by linear_combination r3856)
      (by linear_combination r3857)
    simpa [shifted50, digit50, acc51] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc51 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted50 rho) (digit50 rho) (acc51 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted50 rho) (digit50 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1131) (rho 1130)
      (base rho) (twice rho) (triple rho) (acc50 rho)
      (acc51 rho) :=
    ⟨shiftOnce50 rho, shifted50 rho, digit50 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window51 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc51 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[146]! (scalarBits rho)[145]!
        (base rho) (twice rho) (triple rho) (acc51 rho)
        (acc52 rho) ∧
      EdwardsBridge.onCurve (acc52 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p48, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart48 at p48
  rcases p48 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3858, r3859, r3860, r3861, r3862, r3863, r3864, r3865, r3866, r3867, r3868, r3869, r3870, r3871, r3872, r3873, r3874, r3875, r3876, r3877, r3878, r3879, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3858 at r3858
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3859 at r3859
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3860 at r3860
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3861 at r3861
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3862 at r3862
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3863 at r3863
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3864 at r3864
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3865 at r3865
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3866 at r3866
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3867 at r3867
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3868 at r3868
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3869 at r3869
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3870 at r3870
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3871 at r3871
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3872 at r3872
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3873 at r3873
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3874 at r3874
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3875 at r3875
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3876 at r3876
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3877 at r3877
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3878 at r3878
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3879 at r3879
  have hshift1 : EdwardsBridge.doubleSpec (acc51 rho) (shiftOnce51 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3350) (rho 3351) (rho 3352) (rho 3353) (rho 3354) (rho 3355) (rho 3356)
      (by simpa [acc51] using hacc)
      (by linear_combination r3858)
      (by linear_combination r3859)
      (by linear_combination r3860)
      (by linear_combination r3861)
      (by linear_combination r3862)
    simpa [acc51, shiftOnce51] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce51 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc51 rho) (shiftOnce51 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc51 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce51 rho) (shifted51 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3355) (rho 3356) (rho 3357) (rho 3358) (rho 3359) (rho 3360) (rho 3361)
      (by simpa [shiftOnce51] using hshift1On)
      (by linear_combination r3863)
      (by linear_combination r3864)
      (by linear_combination r3865)
      (by linear_combination r3866)
      (by linear_combination r3867)
    simpa [shiftOnce51, shifted51] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted51 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce51 rho) (shifted51 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce51 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1129) (rho 1128)
      (base rho) (twice rho) (triple rho) (digit51 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1129) (rho 1128)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 3363 + rho 3364, (1 : F) + rho 3366 + rho 3367⟩ := by
      constructor
      · refine ⟨(rho 3362 + (rho 2216) - (0)), rho 3363, ?_, ?_, ?_⟩
        · linear_combination r3868
        · linear_combination r3869
        · linear_combination r3870
      · refine ⟨(rho 3365 + (rho 2217) - ((1 : F))), rho 3366, ?_, ?_, ?_⟩
        · linear_combination r3871
        · linear_combination r3872
        · linear_combination r3873
    simpa [base, twice, triple, digit51] using hraw
  have hhigh : rho 1129 =
      Bool.toZMod bits[146]! := by
    simpa only using rho_bit_of_map rho bits hbits 146 (by decide +kernel)
  have hlow : rho 1128 =
      Bool.toZMod bits[145]! := by
    simpa only using rho_bit_of_map rho bits hbits 145 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[146]! bits[145]! (base rho) (twice rho) (triple rho)
    (digit51 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit51 rho) := by
    rw [hdigit]
    cases bits[146]! <;> cases bits[145]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted51 rho) (digit51 rho) (acc52 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3360) (rho 3361) (rho 3363 + rho 3364) ((1 : F) + rho 3366 + rho 3367)
      (rho 3368) (rho 3369) (rho 3370) (rho 3371) (rho 3372) (rho 3373)
      (by simpa [shifted51] using hshift2On)
      (by simpa [digit51] using hdigitOn)
      (by linear_combination r3874)
      (by linear_combination r3875)
      (by linear_combination r3876)
      (by linear_combination r3877)
      (by linear_combination r3878)
      (by linear_combination r3879)
    simpa [shifted51, digit51, acc52] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc52 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted51 rho) (digit51 rho) (acc52 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted51 rho) (digit51 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1129) (rho 1128)
      (base rho) (twice rho) (triple rho) (acc51 rho)
      (acc52 rho) :=
    ⟨shiftOnce51 rho, shifted51 rho, digit51 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window52 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc52 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[144]! (scalarBits rho)[143]!
        (base rho) (twice rho) (triple rho) (acc52 rho)
        (acc53 rho) ∧
      EdwardsBridge.onCurve (acc53 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p48, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart48 at p48
  rcases p48 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3880, r3881, r3882, r3883, r3884, r3885, r3886, r3887, r3888, r3889, r3890, r3891, r3892, r3893, r3894, r3895, r3896, r3897, r3898, r3899, r3900, r3901, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3880 at r3880
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3881 at r3881
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3882 at r3882
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3883 at r3883
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3884 at r3884
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3885 at r3885
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3886 at r3886
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3887 at r3887
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3888 at r3888
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3889 at r3889
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3890 at r3890
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3891 at r3891
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3892 at r3892
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3893 at r3893
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3894 at r3894
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3895 at r3895
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3896 at r3896
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3897 at r3897
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3898 at r3898
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3899 at r3899
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3900 at r3900
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3901 at r3901
  have hshift1 : EdwardsBridge.doubleSpec (acc52 rho) (shiftOnce52 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3372) (rho 3373) (rho 3374) (rho 3375) (rho 3376) (rho 3377) (rho 3378)
      (by simpa [acc52] using hacc)
      (by linear_combination r3880)
      (by linear_combination r3881)
      (by linear_combination r3882)
      (by linear_combination r3883)
      (by linear_combination r3884)
    simpa [acc52, shiftOnce52] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce52 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc52 rho) (shiftOnce52 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc52 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce52 rho) (shifted52 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3377) (rho 3378) (rho 3379) (rho 3380) (rho 3381) (rho 3382) (rho 3383)
      (by simpa [shiftOnce52] using hshift1On)
      (by linear_combination r3885)
      (by linear_combination r3886)
      (by linear_combination r3887)
      (by linear_combination r3888)
      (by linear_combination r3889)
    simpa [shiftOnce52, shifted52] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted52 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce52 rho) (shifted52 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce52 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1127) (rho 1126)
      (base rho) (twice rho) (triple rho) (digit52 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1127) (rho 1126)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 3385 + rho 3386, (1 : F) + rho 3388 + rho 3389⟩ := by
      constructor
      · refine ⟨(rho 3384 + (rho 2216) - (0)), rho 3385, ?_, ?_, ?_⟩
        · linear_combination r3890
        · linear_combination r3891
        · linear_combination r3892
      · refine ⟨(rho 3387 + (rho 2217) - ((1 : F))), rho 3388, ?_, ?_, ?_⟩
        · linear_combination r3893
        · linear_combination r3894
        · linear_combination r3895
    simpa [base, twice, triple, digit52] using hraw
  have hhigh : rho 1127 =
      Bool.toZMod bits[144]! := by
    simpa only using rho_bit_of_map rho bits hbits 144 (by decide +kernel)
  have hlow : rho 1126 =
      Bool.toZMod bits[143]! := by
    simpa only using rho_bit_of_map rho bits hbits 143 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[144]! bits[143]! (base rho) (twice rho) (triple rho)
    (digit52 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit52 rho) := by
    rw [hdigit]
    cases bits[144]! <;> cases bits[143]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted52 rho) (digit52 rho) (acc53 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3382) (rho 3383) (rho 3385 + rho 3386) ((1 : F) + rho 3388 + rho 3389)
      (rho 3390) (rho 3391) (rho 3392) (rho 3393) (rho 3394) (rho 3395)
      (by simpa [shifted52] using hshift2On)
      (by simpa [digit52] using hdigitOn)
      (by linear_combination r3896)
      (by linear_combination r3897)
      (by linear_combination r3898)
      (by linear_combination r3899)
      (by linear_combination r3900)
      (by linear_combination r3901)
    simpa [shifted52, digit52, acc53] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc53 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted52 rho) (digit52 rho) (acc53 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted52 rho) (digit52 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1127) (rho 1126)
      (base rho) (twice rho) (triple rho) (acc52 rho)
      (acc53 rho) :=
    ⟨shiftOnce52 rho, shifted52 rho, digit52 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window53 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc53 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[142]! (scalarBits rho)[141]!
        (base rho) (twice rho) (triple rho) (acc53 rho)
        (acc54 rho) ∧
      EdwardsBridge.onCurve (acc54 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p48, p49,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart48 at p48
  rcases p48 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3902, r3903, r3904, r3905, r3906, r3907, r3908, r3909, r3910, r3911, r3912, r3913, r3914, r3915, r3916, r3917, r3918, r3919⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart49 at p49
  rcases p49 with ⟨r3920, r3921, r3922, r3923, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3902 at r3902
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3903 at r3903
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3904 at r3904
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3905 at r3905
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3906 at r3906
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3907 at r3907
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3908 at r3908
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3909 at r3909
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3910 at r3910
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3911 at r3911
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3912 at r3912
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3913 at r3913
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3914 at r3914
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3915 at r3915
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3916 at r3916
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3917 at r3917
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3918 at r3918
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3919 at r3919
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3920 at r3920
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3921 at r3921
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3922 at r3922
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3923 at r3923
  have hshift1 : EdwardsBridge.doubleSpec (acc53 rho) (shiftOnce53 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3394) (rho 3395) (rho 3396) (rho 3397) (rho 3398) (rho 3399) (rho 3400)
      (by simpa [acc53] using hacc)
      (by linear_combination r3902)
      (by linear_combination r3903)
      (by linear_combination r3904)
      (by linear_combination r3905)
      (by linear_combination r3906)
    simpa [acc53, shiftOnce53] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce53 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc53 rho) (shiftOnce53 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc53 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce53 rho) (shifted53 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3399) (rho 3400) (rho 3401) (rho 3402) (rho 3403) (rho 3404) (rho 3405)
      (by simpa [shiftOnce53] using hshift1On)
      (by linear_combination r3907)
      (by linear_combination r3908)
      (by linear_combination r3909)
      (by linear_combination r3910)
      (by linear_combination r3911)
    simpa [shiftOnce53, shifted53] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted53 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce53 rho) (shifted53 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce53 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1125) (rho 1124)
      (base rho) (twice rho) (triple rho) (digit53 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1125) (rho 1124)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 3407 + rho 3408, (1 : F) + rho 3410 + rho 3411⟩ := by
      constructor
      · refine ⟨(rho 3406 + (rho 2216) - (0)), rho 3407, ?_, ?_, ?_⟩
        · linear_combination r3912
        · linear_combination r3913
        · linear_combination r3914
      · refine ⟨(rho 3409 + (rho 2217) - ((1 : F))), rho 3410, ?_, ?_, ?_⟩
        · linear_combination r3915
        · linear_combination r3916
        · linear_combination r3917
    simpa [base, twice, triple, digit53] using hraw
  have hhigh : rho 1125 =
      Bool.toZMod bits[142]! := by
    simpa only using rho_bit_of_map rho bits hbits 142 (by decide +kernel)
  have hlow : rho 1124 =
      Bool.toZMod bits[141]! := by
    simpa only using rho_bit_of_map rho bits hbits 141 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[142]! bits[141]! (base rho) (twice rho) (triple rho)
    (digit53 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit53 rho) := by
    rw [hdigit]
    cases bits[142]! <;> cases bits[141]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted53 rho) (digit53 rho) (acc54 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3404) (rho 3405) (rho 3407 + rho 3408) ((1 : F) + rho 3410 + rho 3411)
      (rho 3412) (rho 3413) (rho 3414) (rho 3415) (rho 3416) (rho 3417)
      (by simpa [shifted53] using hshift2On)
      (by simpa [digit53] using hdigitOn)
      (by linear_combination r3918)
      (by linear_combination r3919)
      (by linear_combination r3920)
      (by linear_combination r3921)
      (by linear_combination r3922)
      (by linear_combination r3923)
    simpa [shifted53, digit53, acc54] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc54 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted53 rho) (digit53 rho) (acc54 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted53 rho) (digit53 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1125) (rho 1124)
      (base rho) (twice rho) (triple rho) (acc53 rho)
      (acc54 rho) :=
    ⟨shiftOnce53 rho, shifted53 rho, digit53 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.DtkWindowSupport
