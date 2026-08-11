import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41UserWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.UserWindowSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem window42 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc42 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[164]! (scalarBits rho)[163]!
        (base rho) (twice rho) (triple rho) (acc42 rho)
        (acc43 rho) ∧
      EdwardsBridge.onCurve (acc43 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p34, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart34 at p34
  rcases p34 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2749, r2750, r2751, r2752, r2753, r2754, r2755, r2756, r2757, r2758, r2759, r2760, r2761, r2762, r2763, r2764, r2765, r2766, r2767, r2768, r2769, r2770, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2749 at r2749
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2750 at r2750
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2751 at r2751
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2752 at r2752
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2753 at r2753
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2754 at r2754
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2755 at r2755
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2756 at r2756
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2757 at r2757
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2758 at r2758
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2759 at r2759
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2760 at r2760
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2761 at r2761
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2762 at r2762
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2763 at r2763
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2764 at r2764
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2765 at r2765
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2766 at r2766
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2767 at r2767
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2768 at r2768
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2769 at r2769
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2770 at r2770
  have hshift1 : EdwardsBridge.doubleSpec (acc42 rho) (shiftOnce42 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2753) (rho 2754) (rho 2755) (rho 2756) (rho 2757) (rho 2758) (rho 2759)
      (by simpa [acc42] using hacc)
      (by linear_combination r2749)
      (by linear_combination r2750)
      (by linear_combination r2751)
      (by linear_combination r2752)
      (by linear_combination r2753)
    simpa [acc42, shiftOnce42] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce42 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc42 rho) (shiftOnce42 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc42 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce42 rho) (shifted42 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2758) (rho 2759) (rho 2760) (rho 2761) (rho 2762) (rho 2763) (rho 2764)
      (by simpa [shiftOnce42] using hshift1On)
      (by linear_combination r2754)
      (by linear_combination r2755)
      (by linear_combination r2756)
      (by linear_combination r2757)
      (by linear_combination r2758)
    simpa [shiftOnce42, shifted42] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted42 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce42 rho) (shifted42 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce42 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 165) (rho 164)
      (base rho) (twice rho) (triple rho) (digit42 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 165) (rho 164)
        ⟨rho 1810 + rho 1811, rho 1812 + rho 1813⟩ ⟨rho 1817, rho 1818⟩
        ⟨rho 1823, rho 1824⟩ ⟨rho 2766 + rho 2767, (1 : F) + rho 2769 + rho 2770⟩ := by
      constructor
      · refine ⟨(rho 2765 + (rho 1817) - (0)), rho 2766, ?_, ?_, ?_⟩
        · linear_combination r2759
        · linear_combination r2760
        · linear_combination r2761
      · refine ⟨(rho 2768 + (rho 1818) - ((1 : F))), rho 2769, ?_, ?_, ?_⟩
        · linear_combination r2762
        · linear_combination r2763
        · linear_combination r2764
    simpa [base, twice, triple, digit42] using hraw
  have hhigh : rho 165 =
      Bool.toZMod bits[164]! := by
    simpa only using rho_bit_of_map rho bits hbits 164 (by decide +kernel)
  have hlow : rho 164 =
      Bool.toZMod bits[163]! := by
    simpa only using rho_bit_of_map rho bits hbits 163 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[164]! bits[163]! (base rho) (twice rho) (triple rho)
    (digit42 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit42 rho) := by
    rw [hdigit]
    cases bits[164]! <;> cases bits[163]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted42 rho) (digit42 rho) (acc43 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2763) (rho 2764) (rho 2766 + rho 2767) ((1 : F) + rho 2769 + rho 2770)
      (rho 2771) (rho 2772) (rho 2773) (rho 2774) (rho 2775) (rho 2776)
      (by simpa [shifted42] using hshift2On)
      (by simpa [digit42] using hdigitOn)
      (by linear_combination r2765)
      (by linear_combination r2766)
      (by linear_combination r2767)
      (by linear_combination r2768)
      (by linear_combination r2769)
      (by linear_combination r2770)
    simpa [shifted42, digit42, acc43] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc43 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted42 rho) (digit42 rho) (acc43 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted42 rho) (digit42 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 165) (rho 164)
      (base rho) (twice rho) (triple rho) (acc42 rho)
      (acc43 rho) :=
    ⟨shiftOnce42 rho, shifted42 rho, digit42 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window43 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc43 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[162]! (scalarBits rho)[161]!
        (base rho) (twice rho) (triple rho) (acc43 rho)
        (acc44 rho) ∧
      EdwardsBridge.onCurve (acc44 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p34, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart34 at p34
  rcases p34 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2771, r2772, r2773, r2774, r2775, r2776, r2777, r2778, r2779, r2780, r2781, r2782, r2783, r2784, r2785, r2786, r2787, r2788, r2789, r2790, r2791, r2792, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2771 at r2771
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2772 at r2772
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2773 at r2773
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2774 at r2774
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2775 at r2775
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2776 at r2776
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2777 at r2777
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2778 at r2778
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2779 at r2779
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2780 at r2780
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2781 at r2781
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2782 at r2782
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2783 at r2783
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2784 at r2784
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2785 at r2785
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2786 at r2786
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2787 at r2787
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2788 at r2788
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2789 at r2789
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2790 at r2790
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2791 at r2791
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2792 at r2792
  have hshift1 : EdwardsBridge.doubleSpec (acc43 rho) (shiftOnce43 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2775) (rho 2776) (rho 2777) (rho 2778) (rho 2779) (rho 2780) (rho 2781)
      (by simpa [acc43] using hacc)
      (by linear_combination r2771)
      (by linear_combination r2772)
      (by linear_combination r2773)
      (by linear_combination r2774)
      (by linear_combination r2775)
    simpa [acc43, shiftOnce43] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce43 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc43 rho) (shiftOnce43 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc43 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce43 rho) (shifted43 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2780) (rho 2781) (rho 2782) (rho 2783) (rho 2784) (rho 2785) (rho 2786)
      (by simpa [shiftOnce43] using hshift1On)
      (by linear_combination r2776)
      (by linear_combination r2777)
      (by linear_combination r2778)
      (by linear_combination r2779)
      (by linear_combination r2780)
    simpa [shiftOnce43, shifted43] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted43 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce43 rho) (shifted43 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce43 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 163) (rho 162)
      (base rho) (twice rho) (triple rho) (digit43 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 163) (rho 162)
        ⟨rho 1810 + rho 1811, rho 1812 + rho 1813⟩ ⟨rho 1817, rho 1818⟩
        ⟨rho 1823, rho 1824⟩ ⟨rho 2788 + rho 2789, (1 : F) + rho 2791 + rho 2792⟩ := by
      constructor
      · refine ⟨(rho 2787 + (rho 1817) - (0)), rho 2788, ?_, ?_, ?_⟩
        · linear_combination r2781
        · linear_combination r2782
        · linear_combination r2783
      · refine ⟨(rho 2790 + (rho 1818) - ((1 : F))), rho 2791, ?_, ?_, ?_⟩
        · linear_combination r2784
        · linear_combination r2785
        · linear_combination r2786
    simpa [base, twice, triple, digit43] using hraw
  have hhigh : rho 163 =
      Bool.toZMod bits[162]! := by
    simpa only using rho_bit_of_map rho bits hbits 162 (by decide +kernel)
  have hlow : rho 162 =
      Bool.toZMod bits[161]! := by
    simpa only using rho_bit_of_map rho bits hbits 161 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[162]! bits[161]! (base rho) (twice rho) (triple rho)
    (digit43 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit43 rho) := by
    rw [hdigit]
    cases bits[162]! <;> cases bits[161]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted43 rho) (digit43 rho) (acc44 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2785) (rho 2786) (rho 2788 + rho 2789) ((1 : F) + rho 2791 + rho 2792)
      (rho 2793) (rho 2794) (rho 2795) (rho 2796) (rho 2797) (rho 2798)
      (by simpa [shifted43] using hshift2On)
      (by simpa [digit43] using hdigitOn)
      (by linear_combination r2787)
      (by linear_combination r2788)
      (by linear_combination r2789)
      (by linear_combination r2790)
      (by linear_combination r2791)
      (by linear_combination r2792)
    simpa [shifted43, digit43, acc44] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc44 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted43 rho) (digit43 rho) (acc44 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted43 rho) (digit43 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 163) (rho 162)
      (base rho) (twice rho) (triple rho) (acc43 rho)
      (acc44 rho) :=
    ⟨shiftOnce43 rho, shifted43 rho, digit43 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window44 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc44 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[160]! (scalarBits rho)[159]!
        (base rho) (twice rho) (triple rho) (acc44 rho)
        (acc45 rho) ∧
      EdwardsBridge.onCurve (acc45 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p34, p35, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart34 at p34
  rcases p34 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2793, r2794, r2795, r2796, r2797, r2798, r2799⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart35 at p35
  rcases p35 with ⟨r2800, r2801, r2802, r2803, r2804, r2805, r2806, r2807, r2808, r2809, r2810, r2811, r2812, r2813, r2814, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2793 at r2793
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2794 at r2794
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2795 at r2795
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2796 at r2796
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2797 at r2797
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2798 at r2798
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2799 at r2799
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2800 at r2800
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2801 at r2801
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2802 at r2802
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2803 at r2803
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2804 at r2804
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2805 at r2805
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2806 at r2806
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2807 at r2807
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2808 at r2808
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2809 at r2809
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2810 at r2810
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2811 at r2811
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2812 at r2812
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2813 at r2813
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2814 at r2814
  have hshift1 : EdwardsBridge.doubleSpec (acc44 rho) (shiftOnce44 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2797) (rho 2798) (rho 2799) (rho 2800) (rho 2801) (rho 2802) (rho 2803)
      (by simpa [acc44] using hacc)
      (by linear_combination r2793)
      (by linear_combination r2794)
      (by linear_combination r2795)
      (by linear_combination r2796)
      (by linear_combination r2797)
    simpa [acc44, shiftOnce44] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce44 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc44 rho) (shiftOnce44 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc44 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce44 rho) (shifted44 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2802) (rho 2803) (rho 2804) (rho 2805) (rho 2806) (rho 2807) (rho 2808)
      (by simpa [shiftOnce44] using hshift1On)
      (by linear_combination r2798)
      (by linear_combination r2799)
      (by linear_combination r2800)
      (by linear_combination r2801)
      (by linear_combination r2802)
    simpa [shiftOnce44, shifted44] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted44 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce44 rho) (shifted44 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce44 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 161) (rho 160)
      (base rho) (twice rho) (triple rho) (digit44 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 161) (rho 160)
        ⟨rho 1810 + rho 1811, rho 1812 + rho 1813⟩ ⟨rho 1817, rho 1818⟩
        ⟨rho 1823, rho 1824⟩ ⟨rho 2810 + rho 2811, (1 : F) + rho 2813 + rho 2814⟩ := by
      constructor
      · refine ⟨(rho 2809 + (rho 1817) - (0)), rho 2810, ?_, ?_, ?_⟩
        · linear_combination r2803
        · linear_combination r2804
        · linear_combination r2805
      · refine ⟨(rho 2812 + (rho 1818) - ((1 : F))), rho 2813, ?_, ?_, ?_⟩
        · linear_combination r2806
        · linear_combination r2807
        · linear_combination r2808
    simpa [base, twice, triple, digit44] using hraw
  have hhigh : rho 161 =
      Bool.toZMod bits[160]! := by
    simpa only using rho_bit_of_map rho bits hbits 160 (by decide +kernel)
  have hlow : rho 160 =
      Bool.toZMod bits[159]! := by
    simpa only using rho_bit_of_map rho bits hbits 159 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[160]! bits[159]! (base rho) (twice rho) (triple rho)
    (digit44 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit44 rho) := by
    rw [hdigit]
    cases bits[160]! <;> cases bits[159]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted44 rho) (digit44 rho) (acc45 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2807) (rho 2808) (rho 2810 + rho 2811) ((1 : F) + rho 2813 + rho 2814)
      (rho 2815) (rho 2816) (rho 2817) (rho 2818) (rho 2819) (rho 2820)
      (by simpa [shifted44] using hshift2On)
      (by simpa [digit44] using hdigitOn)
      (by linear_combination r2809)
      (by linear_combination r2810)
      (by linear_combination r2811)
      (by linear_combination r2812)
      (by linear_combination r2813)
      (by linear_combination r2814)
    simpa [shifted44, digit44, acc45] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc45 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted44 rho) (digit44 rho) (acc45 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted44 rho) (digit44 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 161) (rho 160)
      (base rho) (twice rho) (triple rho) (acc44 rho)
      (acc45 rho) :=
    ⟨shiftOnce44 rho, shifted44 rho, digit44 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window45 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc45 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[158]! (scalarBits rho)[157]!
        (base rho) (twice rho) (triple rho) (acc45 rho)
        (acc46 rho) ∧
      EdwardsBridge.onCurve (acc46 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p35, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart35 at p35
  rcases p35 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2815, r2816, r2817, r2818, r2819, r2820, r2821, r2822, r2823, r2824, r2825, r2826, r2827, r2828, r2829, r2830, r2831, r2832, r2833, r2834, r2835, r2836, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2815 at r2815
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2816 at r2816
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2817 at r2817
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2818 at r2818
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2819 at r2819
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2820 at r2820
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2821 at r2821
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2822 at r2822
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2823 at r2823
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2824 at r2824
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2825 at r2825
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2826 at r2826
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2827 at r2827
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2828 at r2828
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2829 at r2829
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2830 at r2830
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2831 at r2831
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2832 at r2832
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2833 at r2833
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2834 at r2834
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2835 at r2835
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2836 at r2836
  have hshift1 : EdwardsBridge.doubleSpec (acc45 rho) (shiftOnce45 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2819) (rho 2820) (rho 2821) (rho 2822) (rho 2823) (rho 2824) (rho 2825)
      (by simpa [acc45] using hacc)
      (by linear_combination r2815)
      (by linear_combination r2816)
      (by linear_combination r2817)
      (by linear_combination r2818)
      (by linear_combination r2819)
    simpa [acc45, shiftOnce45] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce45 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc45 rho) (shiftOnce45 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc45 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce45 rho) (shifted45 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2824) (rho 2825) (rho 2826) (rho 2827) (rho 2828) (rho 2829) (rho 2830)
      (by simpa [shiftOnce45] using hshift1On)
      (by linear_combination r2820)
      (by linear_combination r2821)
      (by linear_combination r2822)
      (by linear_combination r2823)
      (by linear_combination r2824)
    simpa [shiftOnce45, shifted45] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted45 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce45 rho) (shifted45 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce45 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 159) (rho 158)
      (base rho) (twice rho) (triple rho) (digit45 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 159) (rho 158)
        ⟨rho 1810 + rho 1811, rho 1812 + rho 1813⟩ ⟨rho 1817, rho 1818⟩
        ⟨rho 1823, rho 1824⟩ ⟨rho 2832 + rho 2833, (1 : F) + rho 2835 + rho 2836⟩ := by
      constructor
      · refine ⟨(rho 2831 + (rho 1817) - (0)), rho 2832, ?_, ?_, ?_⟩
        · linear_combination r2825
        · linear_combination r2826
        · linear_combination r2827
      · refine ⟨(rho 2834 + (rho 1818) - ((1 : F))), rho 2835, ?_, ?_, ?_⟩
        · linear_combination r2828
        · linear_combination r2829
        · linear_combination r2830
    simpa [base, twice, triple, digit45] using hraw
  have hhigh : rho 159 =
      Bool.toZMod bits[158]! := by
    simpa only using rho_bit_of_map rho bits hbits 158 (by decide +kernel)
  have hlow : rho 158 =
      Bool.toZMod bits[157]! := by
    simpa only using rho_bit_of_map rho bits hbits 157 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[158]! bits[157]! (base rho) (twice rho) (triple rho)
    (digit45 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit45 rho) := by
    rw [hdigit]
    cases bits[158]! <;> cases bits[157]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted45 rho) (digit45 rho) (acc46 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2829) (rho 2830) (rho 2832 + rho 2833) ((1 : F) + rho 2835 + rho 2836)
      (rho 2837) (rho 2838) (rho 2839) (rho 2840) (rho 2841) (rho 2842)
      (by simpa [shifted45] using hshift2On)
      (by simpa [digit45] using hdigitOn)
      (by linear_combination r2831)
      (by linear_combination r2832)
      (by linear_combination r2833)
      (by linear_combination r2834)
      (by linear_combination r2835)
      (by linear_combination r2836)
    simpa [shifted45, digit45, acc46] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc46 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted45 rho) (digit45 rho) (acc46 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted45 rho) (digit45 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 159) (rho 158)
      (base rho) (twice rho) (triple rho) (acc45 rho)
      (acc46 rho) :=
    ⟨shiftOnce45 rho, shifted45 rho, digit45 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window46 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc46 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[156]! (scalarBits rho)[155]!
        (base rho) (twice rho) (triple rho) (acc46 rho)
        (acc47 rho) ∧
      EdwardsBridge.onCurve (acc47 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p35, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart35 at p35
  rcases p35 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2837, r2838, r2839, r2840, r2841, r2842, r2843, r2844, r2845, r2846, r2847, r2848, r2849, r2850, r2851, r2852, r2853, r2854, r2855, r2856, r2857, r2858, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2837 at r2837
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2838 at r2838
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2839 at r2839
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2840 at r2840
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2841 at r2841
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2842 at r2842
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2843 at r2843
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2844 at r2844
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2845 at r2845
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2846 at r2846
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2847 at r2847
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2848 at r2848
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2849 at r2849
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2850 at r2850
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2851 at r2851
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2852 at r2852
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2853 at r2853
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2854 at r2854
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2855 at r2855
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2856 at r2856
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2857 at r2857
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2858 at r2858
  have hshift1 : EdwardsBridge.doubleSpec (acc46 rho) (shiftOnce46 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2841) (rho 2842) (rho 2843) (rho 2844) (rho 2845) (rho 2846) (rho 2847)
      (by simpa [acc46] using hacc)
      (by linear_combination r2837)
      (by linear_combination r2838)
      (by linear_combination r2839)
      (by linear_combination r2840)
      (by linear_combination r2841)
    simpa [acc46, shiftOnce46] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce46 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc46 rho) (shiftOnce46 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc46 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce46 rho) (shifted46 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2846) (rho 2847) (rho 2848) (rho 2849) (rho 2850) (rho 2851) (rho 2852)
      (by simpa [shiftOnce46] using hshift1On)
      (by linear_combination r2842)
      (by linear_combination r2843)
      (by linear_combination r2844)
      (by linear_combination r2845)
      (by linear_combination r2846)
    simpa [shiftOnce46, shifted46] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted46 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce46 rho) (shifted46 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce46 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 157) (rho 156)
      (base rho) (twice rho) (triple rho) (digit46 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 157) (rho 156)
        ⟨rho 1810 + rho 1811, rho 1812 + rho 1813⟩ ⟨rho 1817, rho 1818⟩
        ⟨rho 1823, rho 1824⟩ ⟨rho 2854 + rho 2855, (1 : F) + rho 2857 + rho 2858⟩ := by
      constructor
      · refine ⟨(rho 2853 + (rho 1817) - (0)), rho 2854, ?_, ?_, ?_⟩
        · linear_combination r2847
        · linear_combination r2848
        · linear_combination r2849
      · refine ⟨(rho 2856 + (rho 1818) - ((1 : F))), rho 2857, ?_, ?_, ?_⟩
        · linear_combination r2850
        · linear_combination r2851
        · linear_combination r2852
    simpa [base, twice, triple, digit46] using hraw
  have hhigh : rho 157 =
      Bool.toZMod bits[156]! := by
    simpa only using rho_bit_of_map rho bits hbits 156 (by decide +kernel)
  have hlow : rho 156 =
      Bool.toZMod bits[155]! := by
    simpa only using rho_bit_of_map rho bits hbits 155 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[156]! bits[155]! (base rho) (twice rho) (triple rho)
    (digit46 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit46 rho) := by
    rw [hdigit]
    cases bits[156]! <;> cases bits[155]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted46 rho) (digit46 rho) (acc47 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2851) (rho 2852) (rho 2854 + rho 2855) ((1 : F) + rho 2857 + rho 2858)
      (rho 2859) (rho 2860) (rho 2861) (rho 2862) (rho 2863) (rho 2864)
      (by simpa [shifted46] using hshift2On)
      (by simpa [digit46] using hdigitOn)
      (by linear_combination r2853)
      (by linear_combination r2854)
      (by linear_combination r2855)
      (by linear_combination r2856)
      (by linear_combination r2857)
      (by linear_combination r2858)
    simpa [shifted46, digit46, acc47] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc47 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted46 rho) (digit46 rho) (acc47 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted46 rho) (digit46 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 157) (rho 156)
      (base rho) (twice rho) (triple rho) (acc46 rho)
      (acc47 rho) :=
    ⟨shiftOnce46 rho, shifted46 rho, digit46 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window47 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc47 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[154]! (scalarBits rho)[153]!
        (base rho) (twice rho) (triple rho) (acc47 rho)
        (acc48 rho) ∧
      EdwardsBridge.onCurve (acc48 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p35, p36, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart35 at p35
  rcases p35 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2859, r2860, r2861, r2862, r2863, r2864, r2865, r2866, r2867, r2868, r2869, r2870, r2871, r2872, r2873, r2874, r2875, r2876, r2877, r2878, r2879⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart36 at p36
  rcases p36 with ⟨r2880, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2859 at r2859
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2860 at r2860
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2861 at r2861
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2862 at r2862
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2863 at r2863
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2864 at r2864
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2865 at r2865
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2866 at r2866
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2867 at r2867
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2868 at r2868
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2869 at r2869
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2870 at r2870
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2871 at r2871
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2872 at r2872
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2873 at r2873
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2874 at r2874
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2875 at r2875
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2876 at r2876
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2877 at r2877
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2878 at r2878
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2879 at r2879
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2880 at r2880
  have hshift1 : EdwardsBridge.doubleSpec (acc47 rho) (shiftOnce47 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2863) (rho 2864) (rho 2865) (rho 2866) (rho 2867) (rho 2868) (rho 2869)
      (by simpa [acc47] using hacc)
      (by linear_combination r2859)
      (by linear_combination r2860)
      (by linear_combination r2861)
      (by linear_combination r2862)
      (by linear_combination r2863)
    simpa [acc47, shiftOnce47] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce47 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc47 rho) (shiftOnce47 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc47 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce47 rho) (shifted47 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2868) (rho 2869) (rho 2870) (rho 2871) (rho 2872) (rho 2873) (rho 2874)
      (by simpa [shiftOnce47] using hshift1On)
      (by linear_combination r2864)
      (by linear_combination r2865)
      (by linear_combination r2866)
      (by linear_combination r2867)
      (by linear_combination r2868)
    simpa [shiftOnce47, shifted47] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted47 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce47 rho) (shifted47 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce47 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 155) (rho 154)
      (base rho) (twice rho) (triple rho) (digit47 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 155) (rho 154)
        ⟨rho 1810 + rho 1811, rho 1812 + rho 1813⟩ ⟨rho 1817, rho 1818⟩
        ⟨rho 1823, rho 1824⟩ ⟨rho 2876 + rho 2877, (1 : F) + rho 2879 + rho 2880⟩ := by
      constructor
      · refine ⟨(rho 2875 + (rho 1817) - (0)), rho 2876, ?_, ?_, ?_⟩
        · linear_combination r2869
        · linear_combination r2870
        · linear_combination r2871
      · refine ⟨(rho 2878 + (rho 1818) - ((1 : F))), rho 2879, ?_, ?_, ?_⟩
        · linear_combination r2872
        · linear_combination r2873
        · linear_combination r2874
    simpa [base, twice, triple, digit47] using hraw
  have hhigh : rho 155 =
      Bool.toZMod bits[154]! := by
    simpa only using rho_bit_of_map rho bits hbits 154 (by decide +kernel)
  have hlow : rho 154 =
      Bool.toZMod bits[153]! := by
    simpa only using rho_bit_of_map rho bits hbits 153 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[154]! bits[153]! (base rho) (twice rho) (triple rho)
    (digit47 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit47 rho) := by
    rw [hdigit]
    cases bits[154]! <;> cases bits[153]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted47 rho) (digit47 rho) (acc48 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2873) (rho 2874) (rho 2876 + rho 2877) ((1 : F) + rho 2879 + rho 2880)
      (rho 2881) (rho 2882) (rho 2883) (rho 2884) (rho 2885) (rho 2886)
      (by simpa [shifted47] using hshift2On)
      (by simpa [digit47] using hdigitOn)
      (by linear_combination r2875)
      (by linear_combination r2876)
      (by linear_combination r2877)
      (by linear_combination r2878)
      (by linear_combination r2879)
      (by linear_combination r2880)
    simpa [shifted47, digit47, acc48] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc48 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted47 rho) (digit47 rho) (acc48 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted47 rho) (digit47 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 155) (rho 154)
      (base rho) (twice rho) (triple rho) (acc47 rho)
      (acc48 rho) :=
    ⟨shiftOnce47 rho, shifted47 rho, digit47 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.UserWindowSupport
