import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681InputsWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.InputsWindowSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem window60 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation rho)
    (bits : List.Vector Bool 129)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc60 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[6]! (scalarBits rho)[5]!
        (base rho) (twice rho) (triple rho) (acc60 rho)
        (acc61 rho) ∧
      EdwardsBridge.onCurve (acc61 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p34, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart34 at p34
  rcases p34 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2759, r2760, r2761, r2762, r2763, r2764, r2765, r2766, r2767, r2768, r2769, r2770, r2771, r2772, r2773, r2774, r2775, r2776, r2777, r2778, r2779, r2780, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2759 at r2759
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2760 at r2760
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2761 at r2761
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2762 at r2762
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2763 at r2763
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2764 at r2764
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2765 at r2765
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2766 at r2766
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2767 at r2767
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2768 at r2768
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2769 at r2769
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2770 at r2770
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2771 at r2771
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2772 at r2772
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2773 at r2773
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2774 at r2774
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2775 at r2775
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2776 at r2776
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2777 at r2777
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2778 at r2778
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2779 at r2779
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2780 at r2780
  have hshift1 : EdwardsBridge.doubleSpec (acc60 rho) (shiftOnce60 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2584) (rho 2585) (rho 2586) (rho 2587) (rho 2588) (rho 2589) (rho 2590)
      (by simpa [acc60] using hacc)
      (by linear_combination r2759)
      (by linear_combination r2760)
      (by linear_combination r2761)
      (by linear_combination r2762)
      (by linear_combination r2763)
    simpa [acc60, shiftOnce60] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce60 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc60 rho) (shiftOnce60 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc60 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce60 rho) (shifted60 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2589) (rho 2590) (rho 2591) (rho 2592) (rho 2593) (rho 2594) (rho 2595)
      (by simpa [shiftOnce60] using hshift1On)
      (by linear_combination r2764)
      (by linear_combination r2765)
      (by linear_combination r2766)
      (by linear_combination r2767)
      (by linear_combination r2768)
    simpa [shiftOnce60, shifted60] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted60 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce60 rho) (shifted60 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce60 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1126) (rho 1125)
      (base rho) (twice rho) (triple rho) (digit60 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1126) (rho 1125)
        ⟨rho 598, rho 600⟩ ⟨rho 1252, rho 1253⟩
        ⟨rho 1258, rho 1259⟩ ⟨rho 2597 + rho 2598, (1 : F) + rho 2600 + rho 2601⟩ := by
      constructor
      · refine ⟨(rho 2596 + (rho 1252) - (0)), rho 2597, ?_, ?_, ?_⟩
        · linear_combination r2769
        · linear_combination r2770
        · linear_combination r2771
      · refine ⟨(rho 2599 + (rho 1253) - ((1 : F))), rho 2600, ?_, ?_, ?_⟩
        · linear_combination r2772
        · linear_combination r2773
        · linear_combination r2774
    simpa [base, twice, triple, digit60] using hraw
  have hhigh : rho 1126 =
      Bool.toZMod bits[6]! := by
    simpa only using rho_bit_of_map rho bits hbits 6 (by decide +kernel)
  have hlow : rho 1125 =
      Bool.toZMod bits[5]! := by
    simpa only using rho_bit_of_map rho bits hbits 5 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[6]! bits[5]! (base rho) (twice rho) (triple rho)
    (digit60 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit60 rho) := by
    rw [hdigit]
    cases bits[6]! <;> cases bits[5]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted60 rho) (digit60 rho) (acc61 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2594) (rho 2595) (rho 2597 + rho 2598) ((1 : F) + rho 2600 + rho 2601)
      (rho 2602) (rho 2603) (rho 2604) (rho 2605) (rho 2606) (rho 2607)
      (by simpa [shifted60] using hshift2On)
      (by simpa [digit60] using hdigitOn)
      (by linear_combination r2775)
      (by linear_combination r2776)
      (by linear_combination r2777)
      (by linear_combination r2778)
      (by linear_combination r2779)
      (by linear_combination r2780)
    simpa [shifted60, digit60, acc61] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc61 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted60 rho) (digit60 rho) (acc61 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted60 rho) (digit60 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1126) (rho 1125)
      (base rho) (twice rho) (triple rho) (acc60 rho)
      (acc61 rho) :=
    ⟨shiftOnce60 rho, shifted60 rho, digit60 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window61 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation rho)
    (bits : List.Vector Bool 129)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc61 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[4]! (scalarBits rho)[3]!
        (base rho) (twice rho) (triple rho) (acc61 rho)
        (acc62 rho) ∧
      EdwardsBridge.onCurve (acc62 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p34, p35, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart34 at p34
  rcases p34 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2781, r2782, r2783, r2784, r2785, r2786, r2787, r2788, r2789, r2790, r2791, r2792, r2793, r2794, r2795, r2796, r2797, r2798, r2799⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart35 at p35
  rcases p35 with ⟨r2800, r2801, r2802, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2781 at r2781
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2782 at r2782
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2783 at r2783
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2784 at r2784
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2785 at r2785
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2786 at r2786
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2787 at r2787
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2788 at r2788
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2789 at r2789
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2790 at r2790
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2791 at r2791
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2792 at r2792
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2793 at r2793
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2794 at r2794
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2795 at r2795
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2796 at r2796
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2797 at r2797
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2798 at r2798
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2799 at r2799
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2800 at r2800
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2801 at r2801
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2802 at r2802
  have hshift1 : EdwardsBridge.doubleSpec (acc61 rho) (shiftOnce61 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2606) (rho 2607) (rho 2608) (rho 2609) (rho 2610) (rho 2611) (rho 2612)
      (by simpa [acc61] using hacc)
      (by linear_combination r2781)
      (by linear_combination r2782)
      (by linear_combination r2783)
      (by linear_combination r2784)
      (by linear_combination r2785)
    simpa [acc61, shiftOnce61] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce61 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc61 rho) (shiftOnce61 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc61 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce61 rho) (shifted61 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2611) (rho 2612) (rho 2613) (rho 2614) (rho 2615) (rho 2616) (rho 2617)
      (by simpa [shiftOnce61] using hshift1On)
      (by linear_combination r2786)
      (by linear_combination r2787)
      (by linear_combination r2788)
      (by linear_combination r2789)
      (by linear_combination r2790)
    simpa [shiftOnce61, shifted61] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted61 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce61 rho) (shifted61 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce61 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1124) (rho 1123)
      (base rho) (twice rho) (triple rho) (digit61 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1124) (rho 1123)
        ⟨rho 598, rho 600⟩ ⟨rho 1252, rho 1253⟩
        ⟨rho 1258, rho 1259⟩ ⟨rho 2619 + rho 2620, (1 : F) + rho 2622 + rho 2623⟩ := by
      constructor
      · refine ⟨(rho 2618 + (rho 1252) - (0)), rho 2619, ?_, ?_, ?_⟩
        · linear_combination r2791
        · linear_combination r2792
        · linear_combination r2793
      · refine ⟨(rho 2621 + (rho 1253) - ((1 : F))), rho 2622, ?_, ?_, ?_⟩
        · linear_combination r2794
        · linear_combination r2795
        · linear_combination r2796
    simpa [base, twice, triple, digit61] using hraw
  have hhigh : rho 1124 =
      Bool.toZMod bits[4]! := by
    simpa only using rho_bit_of_map rho bits hbits 4 (by decide +kernel)
  have hlow : rho 1123 =
      Bool.toZMod bits[3]! := by
    simpa only using rho_bit_of_map rho bits hbits 3 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[4]! bits[3]! (base rho) (twice rho) (triple rho)
    (digit61 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit61 rho) := by
    rw [hdigit]
    cases bits[4]! <;> cases bits[3]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted61 rho) (digit61 rho) (acc62 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2616) (rho 2617) (rho 2619 + rho 2620) ((1 : F) + rho 2622 + rho 2623)
      (rho 2624) (rho 2625) (rho 2626) (rho 2627) (rho 2628) (rho 2629)
      (by simpa [shifted61] using hshift2On)
      (by simpa [digit61] using hdigitOn)
      (by linear_combination r2797)
      (by linear_combination r2798)
      (by linear_combination r2799)
      (by linear_combination r2800)
      (by linear_combination r2801)
      (by linear_combination r2802)
    simpa [shifted61, digit61, acc62] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc62 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted61 rho) (digit61 rho) (acc62 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted61 rho) (digit61 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1124) (rho 1123)
      (base rho) (twice rho) (triple rho) (acc61 rho)
      (acc62 rho) :=
    ⟨shiftOnce61 rho, shifted61 rho, digit61 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window62 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation rho)
    (bits : List.Vector Bool 129)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc62 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[2]! (scalarBits rho)[1]!
        (base rho) (twice rho) (triple rho) (acc62 rho)
        (acc63 rho) ∧
      EdwardsBridge.onCurve (acc63 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p35, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart35 at p35
  rcases p35 with ⟨_, _, _, r2803, r2804, r2805, r2806, r2807, r2808, r2809, r2810, r2811, r2812, r2813, r2814, r2815, r2816, r2817, r2818, r2819, r2820, r2821, r2822, r2823, r2824, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2803 at r2803
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2804 at r2804
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2805 at r2805
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2806 at r2806
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2807 at r2807
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2808 at r2808
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2809 at r2809
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2810 at r2810
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2811 at r2811
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2812 at r2812
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2813 at r2813
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2814 at r2814
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2815 at r2815
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2816 at r2816
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2817 at r2817
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2818 at r2818
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2819 at r2819
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2820 at r2820
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2821 at r2821
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2822 at r2822
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2823 at r2823
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2824 at r2824
  have hshift1 : EdwardsBridge.doubleSpec (acc62 rho) (shiftOnce62 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2628) (rho 2629) (rho 2630) (rho 2631) (rho 2632) (rho 2633) (rho 2634)
      (by simpa [acc62] using hacc)
      (by linear_combination r2803)
      (by linear_combination r2804)
      (by linear_combination r2805)
      (by linear_combination r2806)
      (by linear_combination r2807)
    simpa [acc62, shiftOnce62] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce62 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc62 rho) (shiftOnce62 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc62 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce62 rho) (shifted62 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2633) (rho 2634) (rho 2635) (rho 2636) (rho 2637) (rho 2638) (rho 2639)
      (by simpa [shiftOnce62] using hshift1On)
      (by linear_combination r2808)
      (by linear_combination r2809)
      (by linear_combination r2810)
      (by linear_combination r2811)
      (by linear_combination r2812)
    simpa [shiftOnce62, shifted62] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted62 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce62 rho) (shifted62 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce62 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1122) (rho 1121)
      (base rho) (twice rho) (triple rho) (digit62 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1122) (rho 1121)
        ⟨rho 598, rho 600⟩ ⟨rho 1252, rho 1253⟩
        ⟨rho 1258, rho 1259⟩ ⟨rho 2641 + rho 2642, (1 : F) + rho 2644 + rho 2645⟩ := by
      constructor
      · refine ⟨(rho 2640 + (rho 1252) - (0)), rho 2641, ?_, ?_, ?_⟩
        · linear_combination r2813
        · linear_combination r2814
        · linear_combination r2815
      · refine ⟨(rho 2643 + (rho 1253) - ((1 : F))), rho 2644, ?_, ?_, ?_⟩
        · linear_combination r2816
        · linear_combination r2817
        · linear_combination r2818
    simpa [base, twice, triple, digit62] using hraw
  have hhigh : rho 1122 =
      Bool.toZMod bits[2]! := by
    simpa only using rho_bit_of_map rho bits hbits 2 (by decide +kernel)
  have hlow : rho 1121 =
      Bool.toZMod bits[1]! := by
    simpa only using rho_bit_of_map rho bits hbits 1 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[2]! bits[1]! (base rho) (twice rho) (triple rho)
    (digit62 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit62 rho) := by
    rw [hdigit]
    cases bits[2]! <;> cases bits[1]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted62 rho) (digit62 rho) (acc63 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2638) (rho 2639) (rho 2641 + rho 2642) ((1 : F) + rho 2644 + rho 2645)
      (rho 2646) (rho 2647) (rho 2648) (rho 2649) (rho 2650) (rho 2651)
      (by simpa [shifted62] using hshift2On)
      (by simpa [digit62] using hdigitOn)
      (by linear_combination r2819)
      (by linear_combination r2820)
      (by linear_combination r2821)
      (by linear_combination r2822)
      (by linear_combination r2823)
      (by linear_combination r2824)
    simpa [shifted62, digit62, acc63] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc63 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted62 rho) (digit62 rho) (acc63 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted62 rho) (digit62 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1122) (rho 1121)
      (base rho) (twice rho) (triple rho) (acc62 rho)
      (acc63 rho) :=
    ⟨shiftOnce62 rho, shifted62 rho, digit62 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.InputsWindowSupport
