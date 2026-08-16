import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042cDtkWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.DtkWindowSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem window0 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc0 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[248]! (scalarBits rho)[247]!
        (base rho) (twice rho) (triple rho) (acc0 rho)
        (acc1 rho) ∧
      EdwardsBridge.onCurve (acc1 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p34, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart34 at p34
  rcases p34 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2736, r2737, r2738, r2739, r2740, r2741, r2742, r2743, r2744, r2745, r2746, r2747, r2748, r2749, r2750, r2751, r2752, r2753, r2754, r2755, r2756, r2757, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2736 at r2736
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2737 at r2737
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2738 at r2738
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2739 at r2739
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2740 at r2740
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2741 at r2741
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2742 at r2742
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2743 at r2743
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2744 at r2744
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2745 at r2745
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2746 at r2746
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2747 at r2747
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2748 at r2748
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2749 at r2749
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2750 at r2750
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2751 at r2751
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2752 at r2752
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2753 at r2753
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2754 at r2754
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2755 at r2755
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2756 at r2756
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2757 at r2757
  have hshift1 : EdwardsBridge.doubleSpec (acc0 rho) (shiftOnce0 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2225 + rho 2226) ((1 : F) + rho 2228 + rho 2229) (rho 2230) (rho 2231) (rho 2232) (rho 2233) (rho 2234)
      (by simpa [acc0] using hacc)
      (by linear_combination r2736)
      (by linear_combination r2737)
      (by linear_combination r2738)
      (by linear_combination r2739)
      (by linear_combination r2740)
    simpa [acc0, shiftOnce0] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce0 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc0 rho) (shiftOnce0 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc0 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce0 rho) (shifted0 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2233) (rho 2234) (rho 2235) (rho 2236) (rho 2237) (rho 2238) (rho 2239)
      (by simpa [shiftOnce0] using hshift1On)
      (by linear_combination r2741)
      (by linear_combination r2742)
      (by linear_combination r2743)
      (by linear_combination r2744)
      (by linear_combination r2745)
    simpa [shiftOnce0, shifted0] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted0 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce0 rho) (shifted0 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce0 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1231) (rho 1230)
      (base rho) (twice rho) (triple rho) (digit0 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1231) (rho 1230)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 2241 + rho 2242, (1 : F) + rho 2244 + rho 2245⟩ := by
      constructor
      · refine ⟨(rho 2240 + (rho 2216) - (0)), rho 2241, ?_, ?_, ?_⟩
        · linear_combination r2746
        · linear_combination r2747
        · linear_combination r2748
      · refine ⟨(rho 2243 + (rho 2217) - ((1 : F))), rho 2244, ?_, ?_, ?_⟩
        · linear_combination r2749
        · linear_combination r2750
        · linear_combination r2751
    simpa [base, twice, triple, digit0] using hraw
  have hhigh : rho 1231 =
      Bool.toZMod bits[248]! := by
    simpa only using rho_bit_of_map rho bits hbits 248 (by decide +kernel)
  have hlow : rho 1230 =
      Bool.toZMod bits[247]! := by
    simpa only using rho_bit_of_map rho bits hbits 247 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[248]! bits[247]! (base rho) (twice rho) (triple rho)
    (digit0 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit0 rho) := by
    rw [hdigit]
    cases bits[248]! <;> cases bits[247]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted0 rho) (digit0 rho) (acc1 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2238) (rho 2239) (rho 2241 + rho 2242) ((1 : F) + rho 2244 + rho 2245)
      (rho 2246) (rho 2247) (rho 2248) (rho 2249) (rho 2250) (rho 2251)
      (by simpa [shifted0] using hshift2On)
      (by simpa [digit0] using hdigitOn)
      (by linear_combination r2752)
      (by linear_combination r2753)
      (by linear_combination r2754)
      (by linear_combination r2755)
      (by linear_combination r2756)
      (by linear_combination r2757)
    simpa [shifted0, digit0, acc1] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc1 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted0 rho) (digit0 rho) (acc1 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted0 rho) (digit0 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1231) (rho 1230)
      (base rho) (twice rho) (triple rho) (acc0 rho)
      (acc1 rho) :=
    ⟨shiftOnce0 rho, shifted0 rho, digit0 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window1 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc1 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[246]! (scalarBits rho)[245]!
        (base rho) (twice rho) (triple rho) (acc1 rho)
        (acc2 rho) ∧
      EdwardsBridge.onCurve (acc2 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p34, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart34 at p34
  rcases p34 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2758, r2759, r2760, r2761, r2762, r2763, r2764, r2765, r2766, r2767, r2768, r2769, r2770, r2771, r2772, r2773, r2774, r2775, r2776, r2777, r2778, r2779, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2758 at r2758
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2759 at r2759
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2760 at r2760
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2761 at r2761
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2762 at r2762
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2763 at r2763
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2764 at r2764
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2765 at r2765
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2766 at r2766
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2767 at r2767
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2768 at r2768
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2769 at r2769
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2770 at r2770
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2771 at r2771
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2772 at r2772
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2773 at r2773
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2774 at r2774
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2775 at r2775
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2776 at r2776
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2777 at r2777
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2778 at r2778
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2779 at r2779
  have hshift1 : EdwardsBridge.doubleSpec (acc1 rho) (shiftOnce1 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2250) (rho 2251) (rho 2252) (rho 2253) (rho 2254) (rho 2255) (rho 2256)
      (by simpa [acc1] using hacc)
      (by linear_combination r2758)
      (by linear_combination r2759)
      (by linear_combination r2760)
      (by linear_combination r2761)
      (by linear_combination r2762)
    simpa [acc1, shiftOnce1] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce1 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc1 rho) (shiftOnce1 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc1 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce1 rho) (shifted1 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2255) (rho 2256) (rho 2257) (rho 2258) (rho 2259) (rho 2260) (rho 2261)
      (by simpa [shiftOnce1] using hshift1On)
      (by linear_combination r2763)
      (by linear_combination r2764)
      (by linear_combination r2765)
      (by linear_combination r2766)
      (by linear_combination r2767)
    simpa [shiftOnce1, shifted1] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted1 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce1 rho) (shifted1 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce1 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1229) (rho 1228)
      (base rho) (twice rho) (triple rho) (digit1 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1229) (rho 1228)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 2263 + rho 2264, (1 : F) + rho 2266 + rho 2267⟩ := by
      constructor
      · refine ⟨(rho 2262 + (rho 2216) - (0)), rho 2263, ?_, ?_, ?_⟩
        · linear_combination r2768
        · linear_combination r2769
        · linear_combination r2770
      · refine ⟨(rho 2265 + (rho 2217) - ((1 : F))), rho 2266, ?_, ?_, ?_⟩
        · linear_combination r2771
        · linear_combination r2772
        · linear_combination r2773
    simpa [base, twice, triple, digit1] using hraw
  have hhigh : rho 1229 =
      Bool.toZMod bits[246]! := by
    simpa only using rho_bit_of_map rho bits hbits 246 (by decide +kernel)
  have hlow : rho 1228 =
      Bool.toZMod bits[245]! := by
    simpa only using rho_bit_of_map rho bits hbits 245 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[246]! bits[245]! (base rho) (twice rho) (triple rho)
    (digit1 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit1 rho) := by
    rw [hdigit]
    cases bits[246]! <;> cases bits[245]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted1 rho) (digit1 rho) (acc2 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2260) (rho 2261) (rho 2263 + rho 2264) ((1 : F) + rho 2266 + rho 2267)
      (rho 2268) (rho 2269) (rho 2270) (rho 2271) (rho 2272) (rho 2273)
      (by simpa [shifted1] using hshift2On)
      (by simpa [digit1] using hdigitOn)
      (by linear_combination r2774)
      (by linear_combination r2775)
      (by linear_combination r2776)
      (by linear_combination r2777)
      (by linear_combination r2778)
      (by linear_combination r2779)
    simpa [shifted1, digit1, acc2] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc2 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted1 rho) (digit1 rho) (acc2 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted1 rho) (digit1 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1229) (rho 1228)
      (base rho) (twice rho) (triple rho) (acc1 rho)
      (acc2 rho) :=
    ⟨shiftOnce1 rho, shifted1 rho, digit1 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window2 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc2 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[244]! (scalarBits rho)[243]!
        (base rho) (twice rho) (triple rho) (acc2 rho)
        (acc3 rho) ∧
      EdwardsBridge.onCurve (acc3 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p34, p35, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart34 at p34
  rcases p34 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2780, r2781, r2782, r2783, r2784, r2785, r2786, r2787, r2788, r2789, r2790, r2791, r2792, r2793, r2794, r2795, r2796, r2797, r2798, r2799⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart35 at p35
  rcases p35 with ⟨r2800, r2801, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2780 at r2780
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2781 at r2781
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2782 at r2782
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2783 at r2783
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2784 at r2784
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2785 at r2785
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2786 at r2786
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2787 at r2787
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2788 at r2788
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2789 at r2789
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2790 at r2790
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2791 at r2791
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2792 at r2792
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2793 at r2793
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2794 at r2794
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2795 at r2795
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2796 at r2796
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2797 at r2797
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2798 at r2798
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2799 at r2799
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2800 at r2800
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2801 at r2801
  have hshift1 : EdwardsBridge.doubleSpec (acc2 rho) (shiftOnce2 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2272) (rho 2273) (rho 2274) (rho 2275) (rho 2276) (rho 2277) (rho 2278)
      (by simpa [acc2] using hacc)
      (by linear_combination r2780)
      (by linear_combination r2781)
      (by linear_combination r2782)
      (by linear_combination r2783)
      (by linear_combination r2784)
    simpa [acc2, shiftOnce2] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce2 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc2 rho) (shiftOnce2 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc2 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce2 rho) (shifted2 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2277) (rho 2278) (rho 2279) (rho 2280) (rho 2281) (rho 2282) (rho 2283)
      (by simpa [shiftOnce2] using hshift1On)
      (by linear_combination r2785)
      (by linear_combination r2786)
      (by linear_combination r2787)
      (by linear_combination r2788)
      (by linear_combination r2789)
    simpa [shiftOnce2, shifted2] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted2 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce2 rho) (shifted2 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce2 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1227) (rho 1226)
      (base rho) (twice rho) (triple rho) (digit2 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1227) (rho 1226)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 2285 + rho 2286, (1 : F) + rho 2288 + rho 2289⟩ := by
      constructor
      · refine ⟨(rho 2284 + (rho 2216) - (0)), rho 2285, ?_, ?_, ?_⟩
        · linear_combination r2790
        · linear_combination r2791
        · linear_combination r2792
      · refine ⟨(rho 2287 + (rho 2217) - ((1 : F))), rho 2288, ?_, ?_, ?_⟩
        · linear_combination r2793
        · linear_combination r2794
        · linear_combination r2795
    simpa [base, twice, triple, digit2] using hraw
  have hhigh : rho 1227 =
      Bool.toZMod bits[244]! := by
    simpa only using rho_bit_of_map rho bits hbits 244 (by decide +kernel)
  have hlow : rho 1226 =
      Bool.toZMod bits[243]! := by
    simpa only using rho_bit_of_map rho bits hbits 243 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[244]! bits[243]! (base rho) (twice rho) (triple rho)
    (digit2 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit2 rho) := by
    rw [hdigit]
    cases bits[244]! <;> cases bits[243]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted2 rho) (digit2 rho) (acc3 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2282) (rho 2283) (rho 2285 + rho 2286) ((1 : F) + rho 2288 + rho 2289)
      (rho 2290) (rho 2291) (rho 2292) (rho 2293) (rho 2294) (rho 2295)
      (by simpa [shifted2] using hshift2On)
      (by simpa [digit2] using hdigitOn)
      (by linear_combination r2796)
      (by linear_combination r2797)
      (by linear_combination r2798)
      (by linear_combination r2799)
      (by linear_combination r2800)
      (by linear_combination r2801)
    simpa [shifted2, digit2, acc3] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc3 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted2 rho) (digit2 rho) (acc3 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted2 rho) (digit2 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1227) (rho 1226)
      (base rho) (twice rho) (triple rho) (acc2 rho)
      (acc3 rho) :=
    ⟨shiftOnce2 rho, shifted2 rho, digit2 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window3 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc3 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[242]! (scalarBits rho)[241]!
        (base rho) (twice rho) (triple rho) (acc3 rho)
        (acc4 rho) ∧
      EdwardsBridge.onCurve (acc4 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p35, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart35 at p35
  rcases p35 with ⟨_, _, r2802, r2803, r2804, r2805, r2806, r2807, r2808, r2809, r2810, r2811, r2812, r2813, r2814, r2815, r2816, r2817, r2818, r2819, r2820, r2821, r2822, r2823, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2802 at r2802
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2803 at r2803
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2804 at r2804
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2805 at r2805
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2806 at r2806
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2807 at r2807
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2808 at r2808
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2809 at r2809
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2810 at r2810
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2811 at r2811
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2812 at r2812
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2813 at r2813
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2814 at r2814
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2815 at r2815
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2816 at r2816
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2817 at r2817
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2818 at r2818
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2819 at r2819
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2820 at r2820
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2821 at r2821
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2822 at r2822
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2823 at r2823
  have hshift1 : EdwardsBridge.doubleSpec (acc3 rho) (shiftOnce3 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2294) (rho 2295) (rho 2296) (rho 2297) (rho 2298) (rho 2299) (rho 2300)
      (by simpa [acc3] using hacc)
      (by linear_combination r2802)
      (by linear_combination r2803)
      (by linear_combination r2804)
      (by linear_combination r2805)
      (by linear_combination r2806)
    simpa [acc3, shiftOnce3] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce3 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc3 rho) (shiftOnce3 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc3 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce3 rho) (shifted3 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2299) (rho 2300) (rho 2301) (rho 2302) (rho 2303) (rho 2304) (rho 2305)
      (by simpa [shiftOnce3] using hshift1On)
      (by linear_combination r2807)
      (by linear_combination r2808)
      (by linear_combination r2809)
      (by linear_combination r2810)
      (by linear_combination r2811)
    simpa [shiftOnce3, shifted3] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted3 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce3 rho) (shifted3 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce3 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1225) (rho 1224)
      (base rho) (twice rho) (triple rho) (digit3 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1225) (rho 1224)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 2307 + rho 2308, (1 : F) + rho 2310 + rho 2311⟩ := by
      constructor
      · refine ⟨(rho 2306 + (rho 2216) - (0)), rho 2307, ?_, ?_, ?_⟩
        · linear_combination r2812
        · linear_combination r2813
        · linear_combination r2814
      · refine ⟨(rho 2309 + (rho 2217) - ((1 : F))), rho 2310, ?_, ?_, ?_⟩
        · linear_combination r2815
        · linear_combination r2816
        · linear_combination r2817
    simpa [base, twice, triple, digit3] using hraw
  have hhigh : rho 1225 =
      Bool.toZMod bits[242]! := by
    simpa only using rho_bit_of_map rho bits hbits 242 (by decide +kernel)
  have hlow : rho 1224 =
      Bool.toZMod bits[241]! := by
    simpa only using rho_bit_of_map rho bits hbits 241 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[242]! bits[241]! (base rho) (twice rho) (triple rho)
    (digit3 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit3 rho) := by
    rw [hdigit]
    cases bits[242]! <;> cases bits[241]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted3 rho) (digit3 rho) (acc4 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2304) (rho 2305) (rho 2307 + rho 2308) ((1 : F) + rho 2310 + rho 2311)
      (rho 2312) (rho 2313) (rho 2314) (rho 2315) (rho 2316) (rho 2317)
      (by simpa [shifted3] using hshift2On)
      (by simpa [digit3] using hdigitOn)
      (by linear_combination r2818)
      (by linear_combination r2819)
      (by linear_combination r2820)
      (by linear_combination r2821)
      (by linear_combination r2822)
      (by linear_combination r2823)
    simpa [shifted3, digit3, acc4] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc4 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted3 rho) (digit3 rho) (acc4 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted3 rho) (digit3 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1225) (rho 1224)
      (base rho) (twice rho) (triple rho) (acc3 rho)
      (acc4 rho) :=
    ⟨shiftOnce3 rho, shifted3 rho, digit3 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window4 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc4 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[240]! (scalarBits rho)[239]!
        (base rho) (twice rho) (triple rho) (acc4 rho)
        (acc5 rho) ∧
      EdwardsBridge.onCurve (acc5 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p35, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart35 at p35
  rcases p35 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2824, r2825, r2826, r2827, r2828, r2829, r2830, r2831, r2832, r2833, r2834, r2835, r2836, r2837, r2838, r2839, r2840, r2841, r2842, r2843, r2844, r2845, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2824 at r2824
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2825 at r2825
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2826 at r2826
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2827 at r2827
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2828 at r2828
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2829 at r2829
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2830 at r2830
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2831 at r2831
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2832 at r2832
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2833 at r2833
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2834 at r2834
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2835 at r2835
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2836 at r2836
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2837 at r2837
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2838 at r2838
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2839 at r2839
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2840 at r2840
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2841 at r2841
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2842 at r2842
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2843 at r2843
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2844 at r2844
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2845 at r2845
  have hshift1 : EdwardsBridge.doubleSpec (acc4 rho) (shiftOnce4 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2316) (rho 2317) (rho 2318) (rho 2319) (rho 2320) (rho 2321) (rho 2322)
      (by simpa [acc4] using hacc)
      (by linear_combination r2824)
      (by linear_combination r2825)
      (by linear_combination r2826)
      (by linear_combination r2827)
      (by linear_combination r2828)
    simpa [acc4, shiftOnce4] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce4 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc4 rho) (shiftOnce4 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc4 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce4 rho) (shifted4 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2321) (rho 2322) (rho 2323) (rho 2324) (rho 2325) (rho 2326) (rho 2327)
      (by simpa [shiftOnce4] using hshift1On)
      (by linear_combination r2829)
      (by linear_combination r2830)
      (by linear_combination r2831)
      (by linear_combination r2832)
      (by linear_combination r2833)
    simpa [shiftOnce4, shifted4] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted4 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce4 rho) (shifted4 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce4 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1223) (rho 1222)
      (base rho) (twice rho) (triple rho) (digit4 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1223) (rho 1222)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 2329 + rho 2330, (1 : F) + rho 2332 + rho 2333⟩ := by
      constructor
      · refine ⟨(rho 2328 + (rho 2216) - (0)), rho 2329, ?_, ?_, ?_⟩
        · linear_combination r2834
        · linear_combination r2835
        · linear_combination r2836
      · refine ⟨(rho 2331 + (rho 2217) - ((1 : F))), rho 2332, ?_, ?_, ?_⟩
        · linear_combination r2837
        · linear_combination r2838
        · linear_combination r2839
    simpa [base, twice, triple, digit4] using hraw
  have hhigh : rho 1223 =
      Bool.toZMod bits[240]! := by
    simpa only using rho_bit_of_map rho bits hbits 240 (by decide +kernel)
  have hlow : rho 1222 =
      Bool.toZMod bits[239]! := by
    simpa only using rho_bit_of_map rho bits hbits 239 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[240]! bits[239]! (base rho) (twice rho) (triple rho)
    (digit4 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit4 rho) := by
    rw [hdigit]
    cases bits[240]! <;> cases bits[239]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted4 rho) (digit4 rho) (acc5 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2326) (rho 2327) (rho 2329 + rho 2330) ((1 : F) + rho 2332 + rho 2333)
      (rho 2334) (rho 2335) (rho 2336) (rho 2337) (rho 2338) (rho 2339)
      (by simpa [shifted4] using hshift2On)
      (by simpa [digit4] using hdigitOn)
      (by linear_combination r2840)
      (by linear_combination r2841)
      (by linear_combination r2842)
      (by linear_combination r2843)
      (by linear_combination r2844)
      (by linear_combination r2845)
    simpa [shifted4, digit4, acc5] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc5 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted4 rho) (digit4 rho) (acc5 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted4 rho) (digit4 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1223) (rho 1222)
      (base rho) (twice rho) (triple rho) (acc4 rho)
      (acc5 rho) :=
    ⟨shiftOnce4 rho, shifted4 rho, digit4 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window5 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc5 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[238]! (scalarBits rho)[237]!
        (base rho) (twice rho) (triple rho) (acc5 rho)
        (acc6 rho) ∧
      EdwardsBridge.onCurve (acc6 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p35, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart35 at p35
  rcases p35 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2846, r2847, r2848, r2849, r2850, r2851, r2852, r2853, r2854, r2855, r2856, r2857, r2858, r2859, r2860, r2861, r2862, r2863, r2864, r2865, r2866, r2867, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2846 at r2846
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2847 at r2847
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2848 at r2848
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2849 at r2849
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2850 at r2850
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2851 at r2851
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2852 at r2852
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2853 at r2853
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2854 at r2854
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2855 at r2855
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2856 at r2856
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2857 at r2857
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2858 at r2858
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2859 at r2859
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2860 at r2860
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2861 at r2861
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2862 at r2862
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2863 at r2863
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2864 at r2864
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2865 at r2865
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2866 at r2866
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2867 at r2867
  have hshift1 : EdwardsBridge.doubleSpec (acc5 rho) (shiftOnce5 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2338) (rho 2339) (rho 2340) (rho 2341) (rho 2342) (rho 2343) (rho 2344)
      (by simpa [acc5] using hacc)
      (by linear_combination r2846)
      (by linear_combination r2847)
      (by linear_combination r2848)
      (by linear_combination r2849)
      (by linear_combination r2850)
    simpa [acc5, shiftOnce5] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce5 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc5 rho) (shiftOnce5 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc5 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce5 rho) (shifted5 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2343) (rho 2344) (rho 2345) (rho 2346) (rho 2347) (rho 2348) (rho 2349)
      (by simpa [shiftOnce5] using hshift1On)
      (by linear_combination r2851)
      (by linear_combination r2852)
      (by linear_combination r2853)
      (by linear_combination r2854)
      (by linear_combination r2855)
    simpa [shiftOnce5, shifted5] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted5 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce5 rho) (shifted5 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce5 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1221) (rho 1220)
      (base rho) (twice rho) (triple rho) (digit5 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1221) (rho 1220)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 2351 + rho 2352, (1 : F) + rho 2354 + rho 2355⟩ := by
      constructor
      · refine ⟨(rho 2350 + (rho 2216) - (0)), rho 2351, ?_, ?_, ?_⟩
        · linear_combination r2856
        · linear_combination r2857
        · linear_combination r2858
      · refine ⟨(rho 2353 + (rho 2217) - ((1 : F))), rho 2354, ?_, ?_, ?_⟩
        · linear_combination r2859
        · linear_combination r2860
        · linear_combination r2861
    simpa [base, twice, triple, digit5] using hraw
  have hhigh : rho 1221 =
      Bool.toZMod bits[238]! := by
    simpa only using rho_bit_of_map rho bits hbits 238 (by decide +kernel)
  have hlow : rho 1220 =
      Bool.toZMod bits[237]! := by
    simpa only using rho_bit_of_map rho bits hbits 237 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[238]! bits[237]! (base rho) (twice rho) (triple rho)
    (digit5 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit5 rho) := by
    rw [hdigit]
    cases bits[238]! <;> cases bits[237]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted5 rho) (digit5 rho) (acc6 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2348) (rho 2349) (rho 2351 + rho 2352) ((1 : F) + rho 2354 + rho 2355)
      (rho 2356) (rho 2357) (rho 2358) (rho 2359) (rho 2360) (rho 2361)
      (by simpa [shifted5] using hshift2On)
      (by simpa [digit5] using hdigitOn)
      (by linear_combination r2862)
      (by linear_combination r2863)
      (by linear_combination r2864)
      (by linear_combination r2865)
      (by linear_combination r2866)
      (by linear_combination r2867)
    simpa [shifted5, digit5, acc6] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc6 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted5 rho) (digit5 rho) (acc6 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted5 rho) (digit5 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1221) (rho 1220)
      (base rho) (twice rho) (triple rho) (acc5 rho)
      (acc6 rho) :=
    ⟨shiftOnce5 rho, shifted5 rho, digit5 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.DtkWindowSupport
