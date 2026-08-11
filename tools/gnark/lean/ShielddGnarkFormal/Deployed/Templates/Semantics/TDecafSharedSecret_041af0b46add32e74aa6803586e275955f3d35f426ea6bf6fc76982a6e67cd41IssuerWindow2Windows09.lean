import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41IssuerWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.IssuerWindowSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem window54 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc54 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[140]! (scalarBits rho)[139]!
        (base rho) (twice rho) (triple rho) (acc54 rho)
        (acc55 rho) ∧
      EdwardsBridge.onCurve (acc55 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p72, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart72 at p72
  rcases p72 with ⟨_, _, _, _, _, _, _, _, _, _, _, r5771, r5772, r5773, r5774, r5775, r5776, r5777, r5778, r5779, r5780, r5781, r5782, r5783, r5784, r5785, r5786, r5787, r5788, r5789, r5790, r5791, r5792, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5771 at r5771
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5772 at r5772
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5773 at r5773
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5774 at r5774
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5775 at r5775
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5776 at r5776
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5777 at r5777
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5778 at r5778
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5779 at r5779
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5780 at r5780
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5781 at r5781
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5782 at r5782
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5783 at r5783
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5784 at r5784
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5785 at r5785
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5786 at r5786
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5787 at r5787
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5788 at r5788
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5789 at r5789
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5790 at r5790
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5791 at r5791
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5792 at r5792
  have hshift1 : EdwardsBridge.doubleSpec (acc54 rho) (shiftOnce54 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 5777) (rho 5778) (rho 5779) (rho 5780) (rho 5781) (rho 5782) (rho 5783)
      (by simpa [acc54] using hacc)
      (by linear_combination r5771)
      (by linear_combination r5772)
      (by linear_combination r5773)
      (by linear_combination r5774)
      (by linear_combination r5775)
    simpa [acc54, shiftOnce54] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce54 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc54 rho) (shiftOnce54 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc54 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce54 rho) (shifted54 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 5782) (rho 5783) (rho 5784) (rho 5785) (rho 5786) (rho 5787) (rho 5788)
      (by simpa [shiftOnce54] using hshift1On)
      (by linear_combination r5776)
      (by linear_combination r5777)
      (by linear_combination r5778)
      (by linear_combination r5779)
      (by linear_combination r5780)
    simpa [shiftOnce54, shifted54] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted54 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce54 rho) (shifted54 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce54 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 141) (rho 140)
      (base rho) (twice rho) (triple rho) (digit54 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 141) (rho 140)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4572, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4573⟩ ⟨rho 4577, rho 4578⟩
        ⟨rho 4583, rho 4584⟩ ⟨rho 5790 + rho 5791, (1 : F) + rho 5793 + rho 5794⟩ := by
      constructor
      · refine ⟨(rho 5789 + (rho 4577) - (0)), rho 5790, ?_, ?_, ?_⟩
        · linear_combination r5781 - (rho 140) * order_cast_zero
        · linear_combination r5782
        · linear_combination r5783
      · refine ⟨(rho 5792 + (rho 4578) - ((1 : F))), rho 5793, ?_, ?_, ?_⟩
        · linear_combination r5784 - (rho 140) * order_cast_zero
        · linear_combination r5785
        · linear_combination r5786
    simpa [base, twice, triple, digit54] using hraw
  have hhigh : rho 141 =
      Bool.toZMod bits[140]! := by
    simpa only using rho_bit_of_map rho bits hbits 140 (by decide +kernel)
  have hlow : rho 140 =
      Bool.toZMod bits[139]! := by
    simpa only using rho_bit_of_map rho bits hbits 139 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[140]! bits[139]! (base rho) (twice rho) (triple rho)
    (digit54 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit54 rho) := by
    rw [hdigit]
    cases bits[140]! <;> cases bits[139]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted54 rho) (digit54 rho) (acc55 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 5787) (rho 5788) (rho 5790 + rho 5791) ((1 : F) + rho 5793 + rho 5794)
      (rho 5795) (rho 5796) (rho 5797) (rho 5798) (rho 5799) (rho 5800)
      (by simpa [shifted54] using hshift2On)
      (by simpa [digit54] using hdigitOn)
      (by linear_combination r5787)
      (by linear_combination r5788)
      (by linear_combination r5789)
      (by linear_combination r5790)
      (by linear_combination r5791)
      (by linear_combination r5792)
    simpa [shifted54, digit54, acc55] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc55 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted54 rho) (digit54 rho) (acc55 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted54 rho) (digit54 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 141) (rho 140)
      (base rho) (twice rho) (triple rho) (acc54 rho)
      (acc55 rho) :=
    ⟨shiftOnce54 rho, shifted54 rho, digit54 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window55 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc55 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[138]! (scalarBits rho)[137]!
        (base rho) (twice rho) (triple rho) (acc55 rho)
        (acc56 rho) ∧
      EdwardsBridge.onCurve (acc56 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p72, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart72 at p72
  rcases p72 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5793, r5794, r5795, r5796, r5797, r5798, r5799, r5800, r5801, r5802, r5803, r5804, r5805, r5806, r5807, r5808, r5809, r5810, r5811, r5812, r5813, r5814, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5793 at r5793
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5794 at r5794
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5795 at r5795
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5796 at r5796
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5797 at r5797
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5798 at r5798
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5799 at r5799
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5800 at r5800
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5801 at r5801
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5802 at r5802
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5803 at r5803
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5804 at r5804
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5805 at r5805
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5806 at r5806
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5807 at r5807
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5808 at r5808
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5809 at r5809
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5810 at r5810
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5811 at r5811
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5812 at r5812
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5813 at r5813
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5814 at r5814
  have hshift1 : EdwardsBridge.doubleSpec (acc55 rho) (shiftOnce55 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 5799) (rho 5800) (rho 5801) (rho 5802) (rho 5803) (rho 5804) (rho 5805)
      (by simpa [acc55] using hacc)
      (by linear_combination r5793)
      (by linear_combination r5794)
      (by linear_combination r5795)
      (by linear_combination r5796)
      (by linear_combination r5797)
    simpa [acc55, shiftOnce55] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce55 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc55 rho) (shiftOnce55 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc55 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce55 rho) (shifted55 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 5804) (rho 5805) (rho 5806) (rho 5807) (rho 5808) (rho 5809) (rho 5810)
      (by simpa [shiftOnce55] using hshift1On)
      (by linear_combination r5798)
      (by linear_combination r5799)
      (by linear_combination r5800)
      (by linear_combination r5801)
      (by linear_combination r5802)
    simpa [shiftOnce55, shifted55] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted55 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce55 rho) (shifted55 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce55 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 139) (rho 138)
      (base rho) (twice rho) (triple rho) (digit55 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 139) (rho 138)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4572, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4573⟩ ⟨rho 4577, rho 4578⟩
        ⟨rho 4583, rho 4584⟩ ⟨rho 5812 + rho 5813, (1 : F) + rho 5815 + rho 5816⟩ := by
      constructor
      · refine ⟨(rho 5811 + (rho 4577) - (0)), rho 5812, ?_, ?_, ?_⟩
        · linear_combination r5803 - (rho 138) * order_cast_zero
        · linear_combination r5804
        · linear_combination r5805
      · refine ⟨(rho 5814 + (rho 4578) - ((1 : F))), rho 5815, ?_, ?_, ?_⟩
        · linear_combination r5806 - (rho 138) * order_cast_zero
        · linear_combination r5807
        · linear_combination r5808
    simpa [base, twice, triple, digit55] using hraw
  have hhigh : rho 139 =
      Bool.toZMod bits[138]! := by
    simpa only using rho_bit_of_map rho bits hbits 138 (by decide +kernel)
  have hlow : rho 138 =
      Bool.toZMod bits[137]! := by
    simpa only using rho_bit_of_map rho bits hbits 137 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[138]! bits[137]! (base rho) (twice rho) (triple rho)
    (digit55 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit55 rho) := by
    rw [hdigit]
    cases bits[138]! <;> cases bits[137]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted55 rho) (digit55 rho) (acc56 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 5809) (rho 5810) (rho 5812 + rho 5813) ((1 : F) + rho 5815 + rho 5816)
      (rho 5817) (rho 5818) (rho 5819) (rho 5820) (rho 5821) (rho 5822)
      (by simpa [shifted55] using hshift2On)
      (by simpa [digit55] using hdigitOn)
      (by linear_combination r5809)
      (by linear_combination r5810)
      (by linear_combination r5811)
      (by linear_combination r5812)
      (by linear_combination r5813)
      (by linear_combination r5814)
    simpa [shifted55, digit55, acc56] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc56 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted55 rho) (digit55 rho) (acc56 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted55 rho) (digit55 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 139) (rho 138)
      (base rho) (twice rho) (triple rho) (acc55 rho)
      (acc56 rho) :=
    ⟨shiftOnce55 rho, shifted55 rho, digit55 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window56 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc56 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[136]! (scalarBits rho)[135]!
        (base rho) (twice rho) (triple rho) (acc56 rho)
        (acc57 rho) ∧
      EdwardsBridge.onCurve (acc57 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p72, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart72 at p72
  rcases p72 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5815, r5816, r5817, r5818, r5819, r5820, r5821, r5822, r5823, r5824, r5825, r5826, r5827, r5828, r5829, r5830, r5831, r5832, r5833, r5834, r5835, r5836, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5815 at r5815
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5816 at r5816
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5817 at r5817
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5818 at r5818
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5819 at r5819
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5820 at r5820
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5821 at r5821
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5822 at r5822
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5823 at r5823
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5824 at r5824
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5825 at r5825
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5826 at r5826
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5827 at r5827
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5828 at r5828
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5829 at r5829
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5830 at r5830
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5831 at r5831
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5832 at r5832
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5833 at r5833
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5834 at r5834
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5835 at r5835
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5836 at r5836
  have hshift1 : EdwardsBridge.doubleSpec (acc56 rho) (shiftOnce56 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 5821) (rho 5822) (rho 5823) (rho 5824) (rho 5825) (rho 5826) (rho 5827)
      (by simpa [acc56] using hacc)
      (by linear_combination r5815)
      (by linear_combination r5816)
      (by linear_combination r5817)
      (by linear_combination r5818)
      (by linear_combination r5819)
    simpa [acc56, shiftOnce56] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce56 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc56 rho) (shiftOnce56 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc56 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce56 rho) (shifted56 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 5826) (rho 5827) (rho 5828) (rho 5829) (rho 5830) (rho 5831) (rho 5832)
      (by simpa [shiftOnce56] using hshift1On)
      (by linear_combination r5820)
      (by linear_combination r5821)
      (by linear_combination r5822)
      (by linear_combination r5823)
      (by linear_combination r5824)
    simpa [shiftOnce56, shifted56] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted56 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce56 rho) (shifted56 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce56 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 137) (rho 136)
      (base rho) (twice rho) (triple rho) (digit56 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 137) (rho 136)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4572, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4573⟩ ⟨rho 4577, rho 4578⟩
        ⟨rho 4583, rho 4584⟩ ⟨rho 5834 + rho 5835, (1 : F) + rho 5837 + rho 5838⟩ := by
      constructor
      · refine ⟨(rho 5833 + (rho 4577) - (0)), rho 5834, ?_, ?_, ?_⟩
        · linear_combination r5825 - (rho 136) * order_cast_zero
        · linear_combination r5826
        · linear_combination r5827
      · refine ⟨(rho 5836 + (rho 4578) - ((1 : F))), rho 5837, ?_, ?_, ?_⟩
        · linear_combination r5828 - (rho 136) * order_cast_zero
        · linear_combination r5829
        · linear_combination r5830
    simpa [base, twice, triple, digit56] using hraw
  have hhigh : rho 137 =
      Bool.toZMod bits[136]! := by
    simpa only using rho_bit_of_map rho bits hbits 136 (by decide +kernel)
  have hlow : rho 136 =
      Bool.toZMod bits[135]! := by
    simpa only using rho_bit_of_map rho bits hbits 135 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[136]! bits[135]! (base rho) (twice rho) (triple rho)
    (digit56 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit56 rho) := by
    rw [hdigit]
    cases bits[136]! <;> cases bits[135]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted56 rho) (digit56 rho) (acc57 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 5831) (rho 5832) (rho 5834 + rho 5835) ((1 : F) + rho 5837 + rho 5838)
      (rho 5839) (rho 5840) (rho 5841) (rho 5842) (rho 5843) (rho 5844)
      (by simpa [shifted56] using hshift2On)
      (by simpa [digit56] using hdigitOn)
      (by linear_combination r5831)
      (by linear_combination r5832)
      (by linear_combination r5833)
      (by linear_combination r5834)
      (by linear_combination r5835)
      (by linear_combination r5836)
    simpa [shifted56, digit56, acc57] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc57 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted56 rho) (digit56 rho) (acc57 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted56 rho) (digit56 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 137) (rho 136)
      (base rho) (twice rho) (triple rho) (acc56 rho)
      (acc57 rho) :=
    ⟨shiftOnce56 rho, shifted56 rho, digit56 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window57 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc57 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[134]! (scalarBits rho)[133]!
        (base rho) (twice rho) (triple rho) (acc57 rho)
        (acc58 rho) ∧
      EdwardsBridge.onCurve (acc58 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p72, p73, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart72 at p72
  rcases p72 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5837, r5838, r5839⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart73 at p73
  rcases p73 with ⟨r5840, r5841, r5842, r5843, r5844, r5845, r5846, r5847, r5848, r5849, r5850, r5851, r5852, r5853, r5854, r5855, r5856, r5857, r5858, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5837 at r5837
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5838 at r5838
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5839 at r5839
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5840 at r5840
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5841 at r5841
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5842 at r5842
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5843 at r5843
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5844 at r5844
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5845 at r5845
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5846 at r5846
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5847 at r5847
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5848 at r5848
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5849 at r5849
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5850 at r5850
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5851 at r5851
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5852 at r5852
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5853 at r5853
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5854 at r5854
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5855 at r5855
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5856 at r5856
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5857 at r5857
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5858 at r5858
  have hshift1 : EdwardsBridge.doubleSpec (acc57 rho) (shiftOnce57 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 5843) (rho 5844) (rho 5845) (rho 5846) (rho 5847) (rho 5848) (rho 5849)
      (by simpa [acc57] using hacc)
      (by linear_combination r5837)
      (by linear_combination r5838)
      (by linear_combination r5839)
      (by linear_combination r5840)
      (by linear_combination r5841)
    simpa [acc57, shiftOnce57] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce57 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc57 rho) (shiftOnce57 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc57 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce57 rho) (shifted57 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 5848) (rho 5849) (rho 5850) (rho 5851) (rho 5852) (rho 5853) (rho 5854)
      (by simpa [shiftOnce57] using hshift1On)
      (by linear_combination r5842)
      (by linear_combination r5843)
      (by linear_combination r5844)
      (by linear_combination r5845)
      (by linear_combination r5846)
    simpa [shiftOnce57, shifted57] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted57 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce57 rho) (shifted57 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce57 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 135) (rho 134)
      (base rho) (twice rho) (triple rho) (digit57 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 135) (rho 134)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4572, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4573⟩ ⟨rho 4577, rho 4578⟩
        ⟨rho 4583, rho 4584⟩ ⟨rho 5856 + rho 5857, (1 : F) + rho 5859 + rho 5860⟩ := by
      constructor
      · refine ⟨(rho 5855 + (rho 4577) - (0)), rho 5856, ?_, ?_, ?_⟩
        · linear_combination r5847 - (rho 134) * order_cast_zero
        · linear_combination r5848
        · linear_combination r5849
      · refine ⟨(rho 5858 + (rho 4578) - ((1 : F))), rho 5859, ?_, ?_, ?_⟩
        · linear_combination r5850 - (rho 134) * order_cast_zero
        · linear_combination r5851
        · linear_combination r5852
    simpa [base, twice, triple, digit57] using hraw
  have hhigh : rho 135 =
      Bool.toZMod bits[134]! := by
    simpa only using rho_bit_of_map rho bits hbits 134 (by decide +kernel)
  have hlow : rho 134 =
      Bool.toZMod bits[133]! := by
    simpa only using rho_bit_of_map rho bits hbits 133 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[134]! bits[133]! (base rho) (twice rho) (triple rho)
    (digit57 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit57 rho) := by
    rw [hdigit]
    cases bits[134]! <;> cases bits[133]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted57 rho) (digit57 rho) (acc58 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 5853) (rho 5854) (rho 5856 + rho 5857) ((1 : F) + rho 5859 + rho 5860)
      (rho 5861) (rho 5862) (rho 5863) (rho 5864) (rho 5865) (rho 5866)
      (by simpa [shifted57] using hshift2On)
      (by simpa [digit57] using hdigitOn)
      (by linear_combination r5853)
      (by linear_combination r5854)
      (by linear_combination r5855)
      (by linear_combination r5856)
      (by linear_combination r5857)
      (by linear_combination r5858)
    simpa [shifted57, digit57, acc58] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc58 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted57 rho) (digit57 rho) (acc58 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted57 rho) (digit57 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 135) (rho 134)
      (base rho) (twice rho) (triple rho) (acc57 rho)
      (acc58 rho) :=
    ⟨shiftOnce57 rho, shifted57 rho, digit57 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window58 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc58 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[132]! (scalarBits rho)[131]!
        (base rho) (twice rho) (triple rho) (acc58 rho)
        (acc59 rho) ∧
      EdwardsBridge.onCurve (acc59 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p73, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart73 at p73
  rcases p73 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5859, r5860, r5861, r5862, r5863, r5864, r5865, r5866, r5867, r5868, r5869, r5870, r5871, r5872, r5873, r5874, r5875, r5876, r5877, r5878, r5879, r5880, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5859 at r5859
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5860 at r5860
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5861 at r5861
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5862 at r5862
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5863 at r5863
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5864 at r5864
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5865 at r5865
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5866 at r5866
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5867 at r5867
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5868 at r5868
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5869 at r5869
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5870 at r5870
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5871 at r5871
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5872 at r5872
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5873 at r5873
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5874 at r5874
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5875 at r5875
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5876 at r5876
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5877 at r5877
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5878 at r5878
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5879 at r5879
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5880 at r5880
  have hshift1 : EdwardsBridge.doubleSpec (acc58 rho) (shiftOnce58 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 5865) (rho 5866) (rho 5867) (rho 5868) (rho 5869) (rho 5870) (rho 5871)
      (by simpa [acc58] using hacc)
      (by linear_combination r5859)
      (by linear_combination r5860)
      (by linear_combination r5861)
      (by linear_combination r5862)
      (by linear_combination r5863)
    simpa [acc58, shiftOnce58] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce58 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc58 rho) (shiftOnce58 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc58 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce58 rho) (shifted58 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 5870) (rho 5871) (rho 5872) (rho 5873) (rho 5874) (rho 5875) (rho 5876)
      (by simpa [shiftOnce58] using hshift1On)
      (by linear_combination r5864)
      (by linear_combination r5865)
      (by linear_combination r5866)
      (by linear_combination r5867)
      (by linear_combination r5868)
    simpa [shiftOnce58, shifted58] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted58 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce58 rho) (shifted58 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce58 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 133) (rho 132)
      (base rho) (twice rho) (triple rho) (digit58 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 133) (rho 132)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4572, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4573⟩ ⟨rho 4577, rho 4578⟩
        ⟨rho 4583, rho 4584⟩ ⟨rho 5878 + rho 5879, (1 : F) + rho 5881 + rho 5882⟩ := by
      constructor
      · refine ⟨(rho 5877 + (rho 4577) - (0)), rho 5878, ?_, ?_, ?_⟩
        · linear_combination r5869 - (rho 132) * order_cast_zero
        · linear_combination r5870
        · linear_combination r5871
      · refine ⟨(rho 5880 + (rho 4578) - ((1 : F))), rho 5881, ?_, ?_, ?_⟩
        · linear_combination r5872 - (rho 132) * order_cast_zero
        · linear_combination r5873
        · linear_combination r5874
    simpa [base, twice, triple, digit58] using hraw
  have hhigh : rho 133 =
      Bool.toZMod bits[132]! := by
    simpa only using rho_bit_of_map rho bits hbits 132 (by decide +kernel)
  have hlow : rho 132 =
      Bool.toZMod bits[131]! := by
    simpa only using rho_bit_of_map rho bits hbits 131 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[132]! bits[131]! (base rho) (twice rho) (triple rho)
    (digit58 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit58 rho) := by
    rw [hdigit]
    cases bits[132]! <;> cases bits[131]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted58 rho) (digit58 rho) (acc59 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 5875) (rho 5876) (rho 5878 + rho 5879) ((1 : F) + rho 5881 + rho 5882)
      (rho 5883) (rho 5884) (rho 5885) (rho 5886) (rho 5887) (rho 5888)
      (by simpa [shifted58] using hshift2On)
      (by simpa [digit58] using hdigitOn)
      (by linear_combination r5875)
      (by linear_combination r5876)
      (by linear_combination r5877)
      (by linear_combination r5878)
      (by linear_combination r5879)
      (by linear_combination r5880)
    simpa [shifted58, digit58, acc59] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc59 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted58 rho) (digit58 rho) (acc59 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted58 rho) (digit58 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 133) (rho 132)
      (base rho) (twice rho) (triple rho) (acc58 rho)
      (acc59 rho) :=
    ⟨shiftOnce58 rho, shifted58 rho, digit58 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window59 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc59 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[130]! (scalarBits rho)[129]!
        (base rho) (twice rho) (triple rho) (acc59 rho)
        (acc60 rho) ∧
      EdwardsBridge.onCurve (acc60 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p73, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart73 at p73
  rcases p73 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5881, r5882, r5883, r5884, r5885, r5886, r5887, r5888, r5889, r5890, r5891, r5892, r5893, r5894, r5895, r5896, r5897, r5898, r5899, r5900, r5901, r5902, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5881 at r5881
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5882 at r5882
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5883 at r5883
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5884 at r5884
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5885 at r5885
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5886 at r5886
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5887 at r5887
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5888 at r5888
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5889 at r5889
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5890 at r5890
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5891 at r5891
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5892 at r5892
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5893 at r5893
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5894 at r5894
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5895 at r5895
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5896 at r5896
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5897 at r5897
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5898 at r5898
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5899 at r5899
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5900 at r5900
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5901 at r5901
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5902 at r5902
  have hshift1 : EdwardsBridge.doubleSpec (acc59 rho) (shiftOnce59 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 5887) (rho 5888) (rho 5889) (rho 5890) (rho 5891) (rho 5892) (rho 5893)
      (by simpa [acc59] using hacc)
      (by linear_combination r5881)
      (by linear_combination r5882)
      (by linear_combination r5883)
      (by linear_combination r5884)
      (by linear_combination r5885)
    simpa [acc59, shiftOnce59] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce59 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc59 rho) (shiftOnce59 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc59 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce59 rho) (shifted59 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 5892) (rho 5893) (rho 5894) (rho 5895) (rho 5896) (rho 5897) (rho 5898)
      (by simpa [shiftOnce59] using hshift1On)
      (by linear_combination r5886)
      (by linear_combination r5887)
      (by linear_combination r5888)
      (by linear_combination r5889)
      (by linear_combination r5890)
    simpa [shiftOnce59, shifted59] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted59 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce59 rho) (shifted59 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce59 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 131) (rho 130)
      (base rho) (twice rho) (triple rho) (digit59 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 131) (rho 130)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4572, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4573⟩ ⟨rho 4577, rho 4578⟩
        ⟨rho 4583, rho 4584⟩ ⟨rho 5900 + rho 5901, (1 : F) + rho 5903 + rho 5904⟩ := by
      constructor
      · refine ⟨(rho 5899 + (rho 4577) - (0)), rho 5900, ?_, ?_, ?_⟩
        · linear_combination r5891 - (rho 130) * order_cast_zero
        · linear_combination r5892
        · linear_combination r5893
      · refine ⟨(rho 5902 + (rho 4578) - ((1 : F))), rho 5903, ?_, ?_, ?_⟩
        · linear_combination r5894 - (rho 130) * order_cast_zero
        · linear_combination r5895
        · linear_combination r5896
    simpa [base, twice, triple, digit59] using hraw
  have hhigh : rho 131 =
      Bool.toZMod bits[130]! := by
    simpa only using rho_bit_of_map rho bits hbits 130 (by decide +kernel)
  have hlow : rho 130 =
      Bool.toZMod bits[129]! := by
    simpa only using rho_bit_of_map rho bits hbits 129 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[130]! bits[129]! (base rho) (twice rho) (triple rho)
    (digit59 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit59 rho) := by
    rw [hdigit]
    cases bits[130]! <;> cases bits[129]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted59 rho) (digit59 rho) (acc60 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 5897) (rho 5898) (rho 5900 + rho 5901) ((1 : F) + rho 5903 + rho 5904)
      (rho 5905) (rho 5906) (rho 5907) (rho 5908) (rho 5909) (rho 5910)
      (by simpa [shifted59] using hshift2On)
      (by simpa [digit59] using hdigitOn)
      (by linear_combination r5897)
      (by linear_combination r5898)
      (by linear_combination r5899)
      (by linear_combination r5900)
      (by linear_combination r5901)
      (by linear_combination r5902)
    simpa [shifted59, digit59, acc60] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc60 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted59 rho) (digit59 rho) (acc60 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted59 rho) (digit59 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 131) (rho 130)
      (base rho) (twice rho) (triple rho) (acc59 rho)
      (acc60 rho) :=
    ⟨shiftOnce59 rho, shifted59 rho, digit59 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.IssuerWindowSupport
