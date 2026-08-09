import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41UserWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.UserWindowSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem window90 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc90 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[68]! (scalarBits rho)[67]!
        (base rho) (twice rho) (triple rho) (acc90 rho)
        (acc91 rho) ∧
      EdwardsBridge.onCurve (acc91 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p47, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart47 at p47
  rcases p47 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3805, r3806, r3807, r3808, r3809, r3810, r3811, r3812, r3813, r3814, r3815, r3816, r3817, r3818, r3819, r3820, r3821, r3822, r3823, r3824, r3825, r3826, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3805 at r3805
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3806 at r3806
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3807 at r3807
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3808 at r3808
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3809 at r3809
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3810 at r3810
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3811 at r3811
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3812 at r3812
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3813 at r3813
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3814 at r3814
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3815 at r3815
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3816 at r3816
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3817 at r3817
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3818 at r3818
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3819 at r3819
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3820 at r3820
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3821 at r3821
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3822 at r3822
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3823 at r3823
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3824 at r3824
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3825 at r3825
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3826 at r3826
  have hshift1 : EdwardsBridge.doubleSpec (acc90 rho) (shiftOnce90 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3809) (rho 3810) (rho 3811) (rho 3812) (rho 3813) (rho 3814) (rho 3815)
      (by simpa [acc90] using hacc)
      (by linear_combination r3805)
      (by linear_combination r3806)
      (by linear_combination r3807)
      (by linear_combination r3808)
      (by linear_combination r3809)
    simpa [acc90, shiftOnce90] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce90 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc90 rho) (shiftOnce90 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc90 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce90 rho) (shifted90 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3814) (rho 3815) (rho 3816) (rho 3817) (rho 3818) (rho 3819) (rho 3820)
      (by simpa [shiftOnce90] using hshift1On)
      (by linear_combination r3810)
      (by linear_combination r3811)
      (by linear_combination r3812)
      (by linear_combination r3813)
      (by linear_combination r3814)
    simpa [shiftOnce90, shifted90] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted90 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce90 rho) (shifted90 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce90 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 69) (rho 68)
      (base rho) (twice rho) (triple rho) (digit90 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 69) (rho 68)
        ⟨rho 1810 + rho 1811, rho 1812 + rho 1813⟩ ⟨rho 1817, rho 1818⟩
        ⟨rho 1823, rho 1824⟩ ⟨rho 3822 + rho 3823, (1 : F) + rho 3825 + rho 3826⟩ := by
      constructor
      · refine ⟨(rho 3821 + (rho 1817) - (0)), rho 3822, ?_, ?_, ?_⟩
        · linear_combination r3815
        · linear_combination r3816
        · linear_combination r3817
      · refine ⟨(rho 3824 + (rho 1818) - ((1 : F))), rho 3825, ?_, ?_, ?_⟩
        · linear_combination r3818
        · linear_combination r3819
        · linear_combination r3820
    simpa [base, twice, triple, digit90] using hraw
  have hhigh : rho 69 =
      Bool.toZMod bits[68]! := by
    simpa only using rho_bit_of_map rho bits hbits 68 (by decide +kernel)
  have hlow : rho 68 =
      Bool.toZMod bits[67]! := by
    simpa only using rho_bit_of_map rho bits hbits 67 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[68]! bits[67]! (base rho) (twice rho) (triple rho)
    (digit90 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit90 rho) := by
    rw [hdigit]
    cases bits[68]! <;> cases bits[67]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted90 rho) (digit90 rho) (acc91 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3819) (rho 3820) (rho 3822 + rho 3823) ((1 : F) + rho 3825 + rho 3826)
      (rho 3827) (rho 3828) (rho 3829) (rho 3830) (rho 3831) (rho 3832)
      (by simpa [shifted90] using hshift2On)
      (by simpa [digit90] using hdigitOn)
      (by linear_combination r3821)
      (by linear_combination r3822)
      (by linear_combination r3823)
      (by linear_combination r3824)
      (by linear_combination r3825)
      (by linear_combination r3826)
    simpa [shifted90, digit90, acc91] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc91 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted90 rho) (digit90 rho) (acc91 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted90 rho) (digit90 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 69) (rho 68)
      (base rho) (twice rho) (triple rho) (acc90 rho)
      (acc91 rho) :=
    ⟨shiftOnce90 rho, shifted90 rho, digit90 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window91 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc91 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[66]! (scalarBits rho)[65]!
        (base rho) (twice rho) (triple rho) (acc91 rho)
        (acc92 rho) ∧
      EdwardsBridge.onCurve (acc92 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p47, p48, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart47 at p47
  rcases p47 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3827, r3828, r3829, r3830, r3831, r3832, r3833, r3834, r3835, r3836, r3837, r3838, r3839⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart48 at p48
  rcases p48 with ⟨r3840, r3841, r3842, r3843, r3844, r3845, r3846, r3847, r3848, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3827 at r3827
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3828 at r3828
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3829 at r3829
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3830 at r3830
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3831 at r3831
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3832 at r3832
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3833 at r3833
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3834 at r3834
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3835 at r3835
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3836 at r3836
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3837 at r3837
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3838 at r3838
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3839 at r3839
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3840 at r3840
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3841 at r3841
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3842 at r3842
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3843 at r3843
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3844 at r3844
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3845 at r3845
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3846 at r3846
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3847 at r3847
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3848 at r3848
  have hshift1 : EdwardsBridge.doubleSpec (acc91 rho) (shiftOnce91 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3831) (rho 3832) (rho 3833) (rho 3834) (rho 3835) (rho 3836) (rho 3837)
      (by simpa [acc91] using hacc)
      (by linear_combination r3827)
      (by linear_combination r3828)
      (by linear_combination r3829)
      (by linear_combination r3830)
      (by linear_combination r3831)
    simpa [acc91, shiftOnce91] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce91 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc91 rho) (shiftOnce91 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc91 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce91 rho) (shifted91 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3836) (rho 3837) (rho 3838) (rho 3839) (rho 3840) (rho 3841) (rho 3842)
      (by simpa [shiftOnce91] using hshift1On)
      (by linear_combination r3832)
      (by linear_combination r3833)
      (by linear_combination r3834)
      (by linear_combination r3835)
      (by linear_combination r3836)
    simpa [shiftOnce91, shifted91] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted91 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce91 rho) (shifted91 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce91 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 67) (rho 66)
      (base rho) (twice rho) (triple rho) (digit91 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 67) (rho 66)
        ⟨rho 1810 + rho 1811, rho 1812 + rho 1813⟩ ⟨rho 1817, rho 1818⟩
        ⟨rho 1823, rho 1824⟩ ⟨rho 3844 + rho 3845, (1 : F) + rho 3847 + rho 3848⟩ := by
      constructor
      · refine ⟨(rho 3843 + (rho 1817) - (0)), rho 3844, ?_, ?_, ?_⟩
        · linear_combination r3837
        · linear_combination r3838
        · linear_combination r3839
      · refine ⟨(rho 3846 + (rho 1818) - ((1 : F))), rho 3847, ?_, ?_, ?_⟩
        · linear_combination r3840
        · linear_combination r3841
        · linear_combination r3842
    simpa [base, twice, triple, digit91] using hraw
  have hhigh : rho 67 =
      Bool.toZMod bits[66]! := by
    simpa only using rho_bit_of_map rho bits hbits 66 (by decide +kernel)
  have hlow : rho 66 =
      Bool.toZMod bits[65]! := by
    simpa only using rho_bit_of_map rho bits hbits 65 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[66]! bits[65]! (base rho) (twice rho) (triple rho)
    (digit91 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit91 rho) := by
    rw [hdigit]
    cases bits[66]! <;> cases bits[65]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted91 rho) (digit91 rho) (acc92 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3841) (rho 3842) (rho 3844 + rho 3845) ((1 : F) + rho 3847 + rho 3848)
      (rho 3849) (rho 3850) (rho 3851) (rho 3852) (rho 3853) (rho 3854)
      (by simpa [shifted91] using hshift2On)
      (by simpa [digit91] using hdigitOn)
      (by linear_combination r3843)
      (by linear_combination r3844)
      (by linear_combination r3845)
      (by linear_combination r3846)
      (by linear_combination r3847)
      (by linear_combination r3848)
    simpa [shifted91, digit91, acc92] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc92 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted91 rho) (digit91 rho) (acc92 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted91 rho) (digit91 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 67) (rho 66)
      (base rho) (twice rho) (triple rho) (acc91 rho)
      (acc92 rho) :=
    ⟨shiftOnce91 rho, shifted91 rho, digit91 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window92 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc92 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[64]! (scalarBits rho)[63]!
        (base rho) (twice rho) (triple rho) (acc92 rho)
        (acc93 rho) ∧
      EdwardsBridge.onCurve (acc93 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p48, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart48 at p48
  rcases p48 with ⟨_, _, _, _, _, _, _, _, _, r3849, r3850, r3851, r3852, r3853, r3854, r3855, r3856, r3857, r3858, r3859, r3860, r3861, r3862, r3863, r3864, r3865, r3866, r3867, r3868, r3869, r3870, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3849 at r3849
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3850 at r3850
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3851 at r3851
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3852 at r3852
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3853 at r3853
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3854 at r3854
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3855 at r3855
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3856 at r3856
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3857 at r3857
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3858 at r3858
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3859 at r3859
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3860 at r3860
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3861 at r3861
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3862 at r3862
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3863 at r3863
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3864 at r3864
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3865 at r3865
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3866 at r3866
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3867 at r3867
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3868 at r3868
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3869 at r3869
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3870 at r3870
  have hshift1 : EdwardsBridge.doubleSpec (acc92 rho) (shiftOnce92 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3853) (rho 3854) (rho 3855) (rho 3856) (rho 3857) (rho 3858) (rho 3859)
      (by simpa [acc92] using hacc)
      (by linear_combination r3849)
      (by linear_combination r3850)
      (by linear_combination r3851)
      (by linear_combination r3852)
      (by linear_combination r3853)
    simpa [acc92, shiftOnce92] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce92 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc92 rho) (shiftOnce92 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc92 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce92 rho) (shifted92 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3858) (rho 3859) (rho 3860) (rho 3861) (rho 3862) (rho 3863) (rho 3864)
      (by simpa [shiftOnce92] using hshift1On)
      (by linear_combination r3854)
      (by linear_combination r3855)
      (by linear_combination r3856)
      (by linear_combination r3857)
      (by linear_combination r3858)
    simpa [shiftOnce92, shifted92] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted92 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce92 rho) (shifted92 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce92 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 65) (rho 64)
      (base rho) (twice rho) (triple rho) (digit92 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 65) (rho 64)
        ⟨rho 1810 + rho 1811, rho 1812 + rho 1813⟩ ⟨rho 1817, rho 1818⟩
        ⟨rho 1823, rho 1824⟩ ⟨rho 3866 + rho 3867, (1 : F) + rho 3869 + rho 3870⟩ := by
      constructor
      · refine ⟨(rho 3865 + (rho 1817) - (0)), rho 3866, ?_, ?_, ?_⟩
        · linear_combination r3859
        · linear_combination r3860
        · linear_combination r3861
      · refine ⟨(rho 3868 + (rho 1818) - ((1 : F))), rho 3869, ?_, ?_, ?_⟩
        · linear_combination r3862
        · linear_combination r3863
        · linear_combination r3864
    simpa [base, twice, triple, digit92] using hraw
  have hhigh : rho 65 =
      Bool.toZMod bits[64]! := by
    simpa only using rho_bit_of_map rho bits hbits 64 (by decide +kernel)
  have hlow : rho 64 =
      Bool.toZMod bits[63]! := by
    simpa only using rho_bit_of_map rho bits hbits 63 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[64]! bits[63]! (base rho) (twice rho) (triple rho)
    (digit92 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit92 rho) := by
    rw [hdigit]
    cases bits[64]! <;> cases bits[63]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted92 rho) (digit92 rho) (acc93 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3863) (rho 3864) (rho 3866 + rho 3867) ((1 : F) + rho 3869 + rho 3870)
      (rho 3871) (rho 3872) (rho 3873) (rho 3874) (rho 3875) (rho 3876)
      (by simpa [shifted92] using hshift2On)
      (by simpa [digit92] using hdigitOn)
      (by linear_combination r3865)
      (by linear_combination r3866)
      (by linear_combination r3867)
      (by linear_combination r3868)
      (by linear_combination r3869)
      (by linear_combination r3870)
    simpa [shifted92, digit92, acc93] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc93 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted92 rho) (digit92 rho) (acc93 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted92 rho) (digit92 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 65) (rho 64)
      (base rho) (twice rho) (triple rho) (acc92 rho)
      (acc93 rho) :=
    ⟨shiftOnce92 rho, shifted92 rho, digit92 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window93 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc93 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[62]! (scalarBits rho)[61]!
        (base rho) (twice rho) (triple rho) (acc93 rho)
        (acc94 rho) ∧
      EdwardsBridge.onCurve (acc94 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p48, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart48 at p48
  rcases p48 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3871, r3872, r3873, r3874, r3875, r3876, r3877, r3878, r3879, r3880, r3881, r3882, r3883, r3884, r3885, r3886, r3887, r3888, r3889, r3890, r3891, r3892, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3871 at r3871
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3872 at r3872
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3873 at r3873
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3874 at r3874
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3875 at r3875
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3876 at r3876
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3877 at r3877
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3878 at r3878
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3879 at r3879
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3880 at r3880
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3881 at r3881
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3882 at r3882
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3883 at r3883
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3884 at r3884
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3885 at r3885
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3886 at r3886
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3887 at r3887
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3888 at r3888
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3889 at r3889
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3890 at r3890
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3891 at r3891
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3892 at r3892
  have hshift1 : EdwardsBridge.doubleSpec (acc93 rho) (shiftOnce93 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3875) (rho 3876) (rho 3877) (rho 3878) (rho 3879) (rho 3880) (rho 3881)
      (by simpa [acc93] using hacc)
      (by linear_combination r3871)
      (by linear_combination r3872)
      (by linear_combination r3873)
      (by linear_combination r3874)
      (by linear_combination r3875)
    simpa [acc93, shiftOnce93] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce93 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc93 rho) (shiftOnce93 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc93 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce93 rho) (shifted93 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3880) (rho 3881) (rho 3882) (rho 3883) (rho 3884) (rho 3885) (rho 3886)
      (by simpa [shiftOnce93] using hshift1On)
      (by linear_combination r3876)
      (by linear_combination r3877)
      (by linear_combination r3878)
      (by linear_combination r3879)
      (by linear_combination r3880)
    simpa [shiftOnce93, shifted93] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted93 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce93 rho) (shifted93 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce93 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 63) (rho 62)
      (base rho) (twice rho) (triple rho) (digit93 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 63) (rho 62)
        ⟨rho 1810 + rho 1811, rho 1812 + rho 1813⟩ ⟨rho 1817, rho 1818⟩
        ⟨rho 1823, rho 1824⟩ ⟨rho 3888 + rho 3889, (1 : F) + rho 3891 + rho 3892⟩ := by
      constructor
      · refine ⟨(rho 3887 + (rho 1817) - (0)), rho 3888, ?_, ?_, ?_⟩
        · linear_combination r3881
        · linear_combination r3882
        · linear_combination r3883
      · refine ⟨(rho 3890 + (rho 1818) - ((1 : F))), rho 3891, ?_, ?_, ?_⟩
        · linear_combination r3884
        · linear_combination r3885
        · linear_combination r3886
    simpa [base, twice, triple, digit93] using hraw
  have hhigh : rho 63 =
      Bool.toZMod bits[62]! := by
    simpa only using rho_bit_of_map rho bits hbits 62 (by decide +kernel)
  have hlow : rho 62 =
      Bool.toZMod bits[61]! := by
    simpa only using rho_bit_of_map rho bits hbits 61 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[62]! bits[61]! (base rho) (twice rho) (triple rho)
    (digit93 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit93 rho) := by
    rw [hdigit]
    cases bits[62]! <;> cases bits[61]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted93 rho) (digit93 rho) (acc94 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3885) (rho 3886) (rho 3888 + rho 3889) ((1 : F) + rho 3891 + rho 3892)
      (rho 3893) (rho 3894) (rho 3895) (rho 3896) (rho 3897) (rho 3898)
      (by simpa [shifted93] using hshift2On)
      (by simpa [digit93] using hdigitOn)
      (by linear_combination r3887)
      (by linear_combination r3888)
      (by linear_combination r3889)
      (by linear_combination r3890)
      (by linear_combination r3891)
      (by linear_combination r3892)
    simpa [shifted93, digit93, acc94] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc94 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted93 rho) (digit93 rho) (acc94 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted93 rho) (digit93 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 63) (rho 62)
      (base rho) (twice rho) (triple rho) (acc93 rho)
      (acc94 rho) :=
    ⟨shiftOnce93 rho, shifted93 rho, digit93 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window94 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc94 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[60]! (scalarBits rho)[59]!
        (base rho) (twice rho) (triple rho) (acc94 rho)
        (acc95 rho) ∧
      EdwardsBridge.onCurve (acc95 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p48, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart48 at p48
  rcases p48 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3893, r3894, r3895, r3896, r3897, r3898, r3899, r3900, r3901, r3902, r3903, r3904, r3905, r3906, r3907, r3908, r3909, r3910, r3911, r3912, r3913, r3914, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3893 at r3893
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3894 at r3894
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3895 at r3895
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3896 at r3896
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3897 at r3897
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3898 at r3898
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3899 at r3899
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3900 at r3900
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3901 at r3901
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3902 at r3902
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3903 at r3903
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3904 at r3904
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3905 at r3905
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3906 at r3906
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3907 at r3907
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3908 at r3908
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3909 at r3909
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3910 at r3910
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3911 at r3911
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3912 at r3912
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3913 at r3913
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3914 at r3914
  have hshift1 : EdwardsBridge.doubleSpec (acc94 rho) (shiftOnce94 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3897) (rho 3898) (rho 3899) (rho 3900) (rho 3901) (rho 3902) (rho 3903)
      (by simpa [acc94] using hacc)
      (by linear_combination r3893)
      (by linear_combination r3894)
      (by linear_combination r3895)
      (by linear_combination r3896)
      (by linear_combination r3897)
    simpa [acc94, shiftOnce94] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce94 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc94 rho) (shiftOnce94 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc94 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce94 rho) (shifted94 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3902) (rho 3903) (rho 3904) (rho 3905) (rho 3906) (rho 3907) (rho 3908)
      (by simpa [shiftOnce94] using hshift1On)
      (by linear_combination r3898)
      (by linear_combination r3899)
      (by linear_combination r3900)
      (by linear_combination r3901)
      (by linear_combination r3902)
    simpa [shiftOnce94, shifted94] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted94 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce94 rho) (shifted94 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce94 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 61) (rho 60)
      (base rho) (twice rho) (triple rho) (digit94 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 61) (rho 60)
        ⟨rho 1810 + rho 1811, rho 1812 + rho 1813⟩ ⟨rho 1817, rho 1818⟩
        ⟨rho 1823, rho 1824⟩ ⟨rho 3910 + rho 3911, (1 : F) + rho 3913 + rho 3914⟩ := by
      constructor
      · refine ⟨(rho 3909 + (rho 1817) - (0)), rho 3910, ?_, ?_, ?_⟩
        · linear_combination r3903
        · linear_combination r3904
        · linear_combination r3905
      · refine ⟨(rho 3912 + (rho 1818) - ((1 : F))), rho 3913, ?_, ?_, ?_⟩
        · linear_combination r3906
        · linear_combination r3907
        · linear_combination r3908
    simpa [base, twice, triple, digit94] using hraw
  have hhigh : rho 61 =
      Bool.toZMod bits[60]! := by
    simpa only using rho_bit_of_map rho bits hbits 60 (by decide +kernel)
  have hlow : rho 60 =
      Bool.toZMod bits[59]! := by
    simpa only using rho_bit_of_map rho bits hbits 59 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[60]! bits[59]! (base rho) (twice rho) (triple rho)
    (digit94 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit94 rho) := by
    rw [hdigit]
    cases bits[60]! <;> cases bits[59]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted94 rho) (digit94 rho) (acc95 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3907) (rho 3908) (rho 3910 + rho 3911) ((1 : F) + rho 3913 + rho 3914)
      (rho 3915) (rho 3916) (rho 3917) (rho 3918) (rho 3919) (rho 3920)
      (by simpa [shifted94] using hshift2On)
      (by simpa [digit94] using hdigitOn)
      (by linear_combination r3909)
      (by linear_combination r3910)
      (by linear_combination r3911)
      (by linear_combination r3912)
      (by linear_combination r3913)
      (by linear_combination r3914)
    simpa [shifted94, digit94, acc95] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc95 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted94 rho) (digit94 rho) (acc95 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted94 rho) (digit94 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 61) (rho 60)
      (base rho) (twice rho) (triple rho) (acc94 rho)
      (acc95 rho) :=
    ⟨shiftOnce94 rho, shifted94 rho, digit94 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window95 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc95 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[58]! (scalarBits rho)[57]!
        (base rho) (twice rho) (triple rho) (acc95 rho)
        (acc96 rho) ∧
      EdwardsBridge.onCurve (acc96 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p48, p49,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart48 at p48
  rcases p48 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3915, r3916, r3917, r3918, r3919⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart49 at p49
  rcases p49 with ⟨r3920, r3921, r3922, r3923, r3924, r3925, r3926, r3927, r3928, r3929, r3930, r3931, r3932, r3933, r3934, r3935, r3936, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3915 at r3915
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3916 at r3916
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3917 at r3917
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3918 at r3918
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3919 at r3919
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3920 at r3920
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3921 at r3921
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3922 at r3922
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3923 at r3923
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3924 at r3924
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3925 at r3925
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3926 at r3926
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3927 at r3927
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3928 at r3928
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3929 at r3929
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3930 at r3930
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3931 at r3931
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3932 at r3932
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3933 at r3933
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3934 at r3934
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3935 at r3935
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3936 at r3936
  have hshift1 : EdwardsBridge.doubleSpec (acc95 rho) (shiftOnce95 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3919) (rho 3920) (rho 3921) (rho 3922) (rho 3923) (rho 3924) (rho 3925)
      (by simpa [acc95] using hacc)
      (by linear_combination r3915)
      (by linear_combination r3916)
      (by linear_combination r3917)
      (by linear_combination r3918)
      (by linear_combination r3919)
    simpa [acc95, shiftOnce95] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce95 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc95 rho) (shiftOnce95 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc95 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce95 rho) (shifted95 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3924) (rho 3925) (rho 3926) (rho 3927) (rho 3928) (rho 3929) (rho 3930)
      (by simpa [shiftOnce95] using hshift1On)
      (by linear_combination r3920)
      (by linear_combination r3921)
      (by linear_combination r3922)
      (by linear_combination r3923)
      (by linear_combination r3924)
    simpa [shiftOnce95, shifted95] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted95 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce95 rho) (shifted95 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce95 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 59) (rho 58)
      (base rho) (twice rho) (triple rho) (digit95 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 59) (rho 58)
        ⟨rho 1810 + rho 1811, rho 1812 + rho 1813⟩ ⟨rho 1817, rho 1818⟩
        ⟨rho 1823, rho 1824⟩ ⟨rho 3932 + rho 3933, (1 : F) + rho 3935 + rho 3936⟩ := by
      constructor
      · refine ⟨(rho 3931 + (rho 1817) - (0)), rho 3932, ?_, ?_, ?_⟩
        · linear_combination r3925
        · linear_combination r3926
        · linear_combination r3927
      · refine ⟨(rho 3934 + (rho 1818) - ((1 : F))), rho 3935, ?_, ?_, ?_⟩
        · linear_combination r3928
        · linear_combination r3929
        · linear_combination r3930
    simpa [base, twice, triple, digit95] using hraw
  have hhigh : rho 59 =
      Bool.toZMod bits[58]! := by
    simpa only using rho_bit_of_map rho bits hbits 58 (by decide +kernel)
  have hlow : rho 58 =
      Bool.toZMod bits[57]! := by
    simpa only using rho_bit_of_map rho bits hbits 57 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[58]! bits[57]! (base rho) (twice rho) (triple rho)
    (digit95 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit95 rho) := by
    rw [hdigit]
    cases bits[58]! <;> cases bits[57]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted95 rho) (digit95 rho) (acc96 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3929) (rho 3930) (rho 3932 + rho 3933) ((1 : F) + rho 3935 + rho 3936)
      (rho 3937) (rho 3938) (rho 3939) (rho 3940) (rho 3941) (rho 3942)
      (by simpa [shifted95] using hshift2On)
      (by simpa [digit95] using hdigitOn)
      (by linear_combination r3931)
      (by linear_combination r3932)
      (by linear_combination r3933)
      (by linear_combination r3934)
      (by linear_combination r3935)
      (by linear_combination r3936)
    simpa [shifted95, digit95, acc96] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc96 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted95 rho) (digit95 rho) (acc96 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted95 rho) (digit95 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 59) (rho 58)
      (base rho) (twice rho) (triple rho) (acc95 rho)
      (acc96 rho) :=
    ⟨shiftOnce95 rho, shifted95 rho, digit95 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.UserWindowSupport
