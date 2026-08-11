import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1AckWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.AckSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem window114 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc114 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[20]! (scalarBits rho)[19]!
        (base rho) (twice rho) (triple rho) (acc114 rho)
        (acc115 rho) ∧
      EdwardsBridge.onCurve (acc115 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p34, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart34 at p34
  rcases p34 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2777, r2778, r2779, r2780, r2781, r2782, r2783, r2784, r2785, r2786, r2787, r2788, r2789, r2790, r2791, r2792, r2793, r2794, r2795, r2796, r2797, r2798, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2777 at r2777
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2778 at r2778
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2779 at r2779
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2780 at r2780
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2781 at r2781
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2782 at r2782
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2783 at r2783
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2784 at r2784
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2785 at r2785
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2786 at r2786
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2787 at r2787
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2788 at r2788
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2789 at r2789
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2790 at r2790
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2791 at r2791
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2792 at r2792
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2793 at r2793
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2794 at r2794
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2795 at r2795
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2796 at r2796
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2797 at r2797
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2798 at r2798
  have hshift1 : EdwardsBridge.doubleSpec (acc114 rho) (shiftOnce114 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2778) (rho 2779) (rho 2780) (rho 2781) (rho 2782) (rho 2783) (rho 2784)
      (by simpa [acc114] using hacc)
      (by linear_combination r2777)
      (by linear_combination r2778)
      (by linear_combination r2779)
      (by linear_combination r2780)
      (by linear_combination r2781)
    simpa [acc114, shiftOnce114] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce114 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc114 rho) (shiftOnce114 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc114 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce114 rho) (shifted114 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2783) (rho 2784) (rho 2785) (rho 2786) (rho 2787) (rho 2788) (rho 2789)
      (by simpa [shiftOnce114] using hshift1On)
      (by linear_combination r2782)
      (by linear_combination r2783)
      (by linear_combination r2784)
      (by linear_combination r2785)
      (by linear_combination r2786)
    simpa [shiftOnce114, shifted114] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted114 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce114 rho) (shifted114 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce114 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 21) (rho 20)
      (base rho) (twice rho) (triple rho) (digit114 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 21) (rho 20)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 2791 + rho 2792, (1 : F) + rho 2794 + rho 2795⟩ := by
      constructor
      · refine ⟨(rho 2790 + (rho 258) - (0)), rho 2791, ?_, ?_, ?_⟩
        · linear_combination r2787 - (rho 20) * order_cast_zero
        · linear_combination r2788
        · linear_combination r2789
      · refine ⟨(rho 2793 + (rho 259) - ((1 : F))), rho 2794, ?_, ?_, ?_⟩
        · linear_combination r2790 - (rho 20) * order_cast_zero
        · linear_combination r2791
        · linear_combination r2792
    simpa [base, twice, triple, digit114] using hraw
  have hhigh : rho 21 =
      Bool.toZMod bits[20]! := by
    simpa only using rho_bit_of_map rho bits hbits 20 (by decide +kernel)
  have hlow : rho 20 =
      Bool.toZMod bits[19]! := by
    simpa only using rho_bit_of_map rho bits hbits 19 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[20]! bits[19]! (base rho) (twice rho) (triple rho)
    (digit114 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit114 rho) := by
    rw [hdigit]
    cases bits[20]! <;> cases bits[19]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted114 rho) (digit114 rho) (acc115 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2788) (rho 2789) (rho 2791 + rho 2792) ((1 : F) + rho 2794 + rho 2795)
      (rho 2796) (rho 2797) (rho 2798) (rho 2799) (rho 2800) (rho 2801)
      (by simpa [shifted114] using hshift2On)
      (by simpa [digit114] using hdigitOn)
      (by linear_combination r2793)
      (by linear_combination r2794)
      (by linear_combination r2795)
      (by linear_combination r2796)
      (by linear_combination r2797)
      (by linear_combination r2798)
    simpa [shifted114, digit114, acc115] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc115 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted114 rho) (digit114 rho) (acc115 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted114 rho) (digit114 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 21) (rho 20)
      (base rho) (twice rho) (triple rho) (acc114 rho)
      (acc115 rho) :=
    ⟨shiftOnce114 rho, shifted114 rho, digit114 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window115 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc115 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[18]! (scalarBits rho)[17]!
        (base rho) (twice rho) (triple rho) (acc115 rho)
        (acc116 rho) ∧
      EdwardsBridge.onCurve (acc116 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p34, p35, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart34 at p34
  rcases p34 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2799⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart35 at p35
  rcases p35 with ⟨r2800, r2801, r2802, r2803, r2804, r2805, r2806, r2807, r2808, r2809, r2810, r2811, r2812, r2813, r2814, r2815, r2816, r2817, r2818, r2819, r2820, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2799 at r2799
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2800 at r2800
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2801 at r2801
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2802 at r2802
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2803 at r2803
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2804 at r2804
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2805 at r2805
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2806 at r2806
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2807 at r2807
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2808 at r2808
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2809 at r2809
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2810 at r2810
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2811 at r2811
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2812 at r2812
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2813 at r2813
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2814 at r2814
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2815 at r2815
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2816 at r2816
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2817 at r2817
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2818 at r2818
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2819 at r2819
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2820 at r2820
  have hshift1 : EdwardsBridge.doubleSpec (acc115 rho) (shiftOnce115 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2800) (rho 2801) (rho 2802) (rho 2803) (rho 2804) (rho 2805) (rho 2806)
      (by simpa [acc115] using hacc)
      (by linear_combination r2799)
      (by linear_combination r2800)
      (by linear_combination r2801)
      (by linear_combination r2802)
      (by linear_combination r2803)
    simpa [acc115, shiftOnce115] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce115 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc115 rho) (shiftOnce115 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc115 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce115 rho) (shifted115 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2805) (rho 2806) (rho 2807) (rho 2808) (rho 2809) (rho 2810) (rho 2811)
      (by simpa [shiftOnce115] using hshift1On)
      (by linear_combination r2804)
      (by linear_combination r2805)
      (by linear_combination r2806)
      (by linear_combination r2807)
      (by linear_combination r2808)
    simpa [shiftOnce115, shifted115] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted115 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce115 rho) (shifted115 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce115 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 19) (rho 18)
      (base rho) (twice rho) (triple rho) (digit115 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 19) (rho 18)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 2813 + rho 2814, (1 : F) + rho 2816 + rho 2817⟩ := by
      constructor
      · refine ⟨(rho 2812 + (rho 258) - (0)), rho 2813, ?_, ?_, ?_⟩
        · linear_combination r2809 - (rho 18) * order_cast_zero
        · linear_combination r2810
        · linear_combination r2811
      · refine ⟨(rho 2815 + (rho 259) - ((1 : F))), rho 2816, ?_, ?_, ?_⟩
        · linear_combination r2812 - (rho 18) * order_cast_zero
        · linear_combination r2813
        · linear_combination r2814
    simpa [base, twice, triple, digit115] using hraw
  have hhigh : rho 19 =
      Bool.toZMod bits[18]! := by
    simpa only using rho_bit_of_map rho bits hbits 18 (by decide +kernel)
  have hlow : rho 18 =
      Bool.toZMod bits[17]! := by
    simpa only using rho_bit_of_map rho bits hbits 17 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[18]! bits[17]! (base rho) (twice rho) (triple rho)
    (digit115 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit115 rho) := by
    rw [hdigit]
    cases bits[18]! <;> cases bits[17]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted115 rho) (digit115 rho) (acc116 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2810) (rho 2811) (rho 2813 + rho 2814) ((1 : F) + rho 2816 + rho 2817)
      (rho 2818) (rho 2819) (rho 2820) (rho 2821) (rho 2822) (rho 2823)
      (by simpa [shifted115] using hshift2On)
      (by simpa [digit115] using hdigitOn)
      (by linear_combination r2815)
      (by linear_combination r2816)
      (by linear_combination r2817)
      (by linear_combination r2818)
      (by linear_combination r2819)
      (by linear_combination r2820)
    simpa [shifted115, digit115, acc116] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc116 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted115 rho) (digit115 rho) (acc116 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted115 rho) (digit115 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 19) (rho 18)
      (base rho) (twice rho) (triple rho) (acc115 rho)
      (acc116 rho) :=
    ⟨shiftOnce115 rho, shifted115 rho, digit115 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window116 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc116 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[16]! (scalarBits rho)[15]!
        (base rho) (twice rho) (triple rho) (acc116 rho)
        (acc117 rho) ∧
      EdwardsBridge.onCurve (acc117 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p35, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart35 at p35
  rcases p35 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2821, r2822, r2823, r2824, r2825, r2826, r2827, r2828, r2829, r2830, r2831, r2832, r2833, r2834, r2835, r2836, r2837, r2838, r2839, r2840, r2841, r2842, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2821 at r2821
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2822 at r2822
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2823 at r2823
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2824 at r2824
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2825 at r2825
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2826 at r2826
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2827 at r2827
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2828 at r2828
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2829 at r2829
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2830 at r2830
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2831 at r2831
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2832 at r2832
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2833 at r2833
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2834 at r2834
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2835 at r2835
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2836 at r2836
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2837 at r2837
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2838 at r2838
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2839 at r2839
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2840 at r2840
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2841 at r2841
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2842 at r2842
  have hshift1 : EdwardsBridge.doubleSpec (acc116 rho) (shiftOnce116 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2822) (rho 2823) (rho 2824) (rho 2825) (rho 2826) (rho 2827) (rho 2828)
      (by simpa [acc116] using hacc)
      (by linear_combination r2821)
      (by linear_combination r2822)
      (by linear_combination r2823)
      (by linear_combination r2824)
      (by linear_combination r2825)
    simpa [acc116, shiftOnce116] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce116 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc116 rho) (shiftOnce116 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc116 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce116 rho) (shifted116 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2827) (rho 2828) (rho 2829) (rho 2830) (rho 2831) (rho 2832) (rho 2833)
      (by simpa [shiftOnce116] using hshift1On)
      (by linear_combination r2826)
      (by linear_combination r2827)
      (by linear_combination r2828)
      (by linear_combination r2829)
      (by linear_combination r2830)
    simpa [shiftOnce116, shifted116] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted116 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce116 rho) (shifted116 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce116 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 17) (rho 16)
      (base rho) (twice rho) (triple rho) (digit116 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 17) (rho 16)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 2835 + rho 2836, (1 : F) + rho 2838 + rho 2839⟩ := by
      constructor
      · refine ⟨(rho 2834 + (rho 258) - (0)), rho 2835, ?_, ?_, ?_⟩
        · linear_combination r2831 - (rho 16) * order_cast_zero
        · linear_combination r2832
        · linear_combination r2833
      · refine ⟨(rho 2837 + (rho 259) - ((1 : F))), rho 2838, ?_, ?_, ?_⟩
        · linear_combination r2834 - (rho 16) * order_cast_zero
        · linear_combination r2835
        · linear_combination r2836
    simpa [base, twice, triple, digit116] using hraw
  have hhigh : rho 17 =
      Bool.toZMod bits[16]! := by
    simpa only using rho_bit_of_map rho bits hbits 16 (by decide +kernel)
  have hlow : rho 16 =
      Bool.toZMod bits[15]! := by
    simpa only using rho_bit_of_map rho bits hbits 15 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[16]! bits[15]! (base rho) (twice rho) (triple rho)
    (digit116 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit116 rho) := by
    rw [hdigit]
    cases bits[16]! <;> cases bits[15]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted116 rho) (digit116 rho) (acc117 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2832) (rho 2833) (rho 2835 + rho 2836) ((1 : F) + rho 2838 + rho 2839)
      (rho 2840) (rho 2841) (rho 2842) (rho 2843) (rho 2844) (rho 2845)
      (by simpa [shifted116] using hshift2On)
      (by simpa [digit116] using hdigitOn)
      (by linear_combination r2837)
      (by linear_combination r2838)
      (by linear_combination r2839)
      (by linear_combination r2840)
      (by linear_combination r2841)
      (by linear_combination r2842)
    simpa [shifted116, digit116, acc117] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc117 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted116 rho) (digit116 rho) (acc117 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted116 rho) (digit116 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 17) (rho 16)
      (base rho) (twice rho) (triple rho) (acc116 rho)
      (acc117 rho) :=
    ⟨shiftOnce116 rho, shifted116 rho, digit116 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window117 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc117 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[14]! (scalarBits rho)[13]!
        (base rho) (twice rho) (triple rho) (acc117 rho)
        (acc118 rho) ∧
      EdwardsBridge.onCurve (acc118 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p35, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart35 at p35
  rcases p35 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2843, r2844, r2845, r2846, r2847, r2848, r2849, r2850, r2851, r2852, r2853, r2854, r2855, r2856, r2857, r2858, r2859, r2860, r2861, r2862, r2863, r2864, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2843 at r2843
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2844 at r2844
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2845 at r2845
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2846 at r2846
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2847 at r2847
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2848 at r2848
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2849 at r2849
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2850 at r2850
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2851 at r2851
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2852 at r2852
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2853 at r2853
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2854 at r2854
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2855 at r2855
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2856 at r2856
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2857 at r2857
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2858 at r2858
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2859 at r2859
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2860 at r2860
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2861 at r2861
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2862 at r2862
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2863 at r2863
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2864 at r2864
  have hshift1 : EdwardsBridge.doubleSpec (acc117 rho) (shiftOnce117 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2844) (rho 2845) (rho 2846) (rho 2847) (rho 2848) (rho 2849) (rho 2850)
      (by simpa [acc117] using hacc)
      (by linear_combination r2843)
      (by linear_combination r2844)
      (by linear_combination r2845)
      (by linear_combination r2846)
      (by linear_combination r2847)
    simpa [acc117, shiftOnce117] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce117 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc117 rho) (shiftOnce117 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc117 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce117 rho) (shifted117 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2849) (rho 2850) (rho 2851) (rho 2852) (rho 2853) (rho 2854) (rho 2855)
      (by simpa [shiftOnce117] using hshift1On)
      (by linear_combination r2848)
      (by linear_combination r2849)
      (by linear_combination r2850)
      (by linear_combination r2851)
      (by linear_combination r2852)
    simpa [shiftOnce117, shifted117] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted117 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce117 rho) (shifted117 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce117 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 15) (rho 14)
      (base rho) (twice rho) (triple rho) (digit117 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 15) (rho 14)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 2857 + rho 2858, (1 : F) + rho 2860 + rho 2861⟩ := by
      constructor
      · refine ⟨(rho 2856 + (rho 258) - (0)), rho 2857, ?_, ?_, ?_⟩
        · linear_combination r2853 - (rho 14) * order_cast_zero
        · linear_combination r2854
        · linear_combination r2855
      · refine ⟨(rho 2859 + (rho 259) - ((1 : F))), rho 2860, ?_, ?_, ?_⟩
        · linear_combination r2856 - (rho 14) * order_cast_zero
        · linear_combination r2857
        · linear_combination r2858
    simpa [base, twice, triple, digit117] using hraw
  have hhigh : rho 15 =
      Bool.toZMod bits[14]! := by
    simpa only using rho_bit_of_map rho bits hbits 14 (by decide +kernel)
  have hlow : rho 14 =
      Bool.toZMod bits[13]! := by
    simpa only using rho_bit_of_map rho bits hbits 13 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[14]! bits[13]! (base rho) (twice rho) (triple rho)
    (digit117 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit117 rho) := by
    rw [hdigit]
    cases bits[14]! <;> cases bits[13]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted117 rho) (digit117 rho) (acc118 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2854) (rho 2855) (rho 2857 + rho 2858) ((1 : F) + rho 2860 + rho 2861)
      (rho 2862) (rho 2863) (rho 2864) (rho 2865) (rho 2866) (rho 2867)
      (by simpa [shifted117] using hshift2On)
      (by simpa [digit117] using hdigitOn)
      (by linear_combination r2859)
      (by linear_combination r2860)
      (by linear_combination r2861)
      (by linear_combination r2862)
      (by linear_combination r2863)
      (by linear_combination r2864)
    simpa [shifted117, digit117, acc118] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc118 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted117 rho) (digit117 rho) (acc118 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted117 rho) (digit117 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 15) (rho 14)
      (base rho) (twice rho) (triple rho) (acc117 rho)
      (acc118 rho) :=
    ⟨shiftOnce117 rho, shifted117 rho, digit117 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window118 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc118 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[12]! (scalarBits rho)[11]!
        (base rho) (twice rho) (triple rho) (acc118 rho)
        (acc119 rho) ∧
      EdwardsBridge.onCurve (acc119 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p35, p36, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart35 at p35
  rcases p35 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2865, r2866, r2867, r2868, r2869, r2870, r2871, r2872, r2873, r2874, r2875, r2876, r2877, r2878, r2879⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart36 at p36
  rcases p36 with ⟨r2880, r2881, r2882, r2883, r2884, r2885, r2886, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2865 at r2865
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2866 at r2866
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2867 at r2867
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2868 at r2868
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2869 at r2869
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2870 at r2870
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2871 at r2871
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2872 at r2872
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2873 at r2873
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2874 at r2874
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2875 at r2875
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2876 at r2876
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2877 at r2877
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2878 at r2878
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2879 at r2879
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2880 at r2880
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2881 at r2881
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2882 at r2882
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2883 at r2883
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2884 at r2884
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2885 at r2885
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2886 at r2886
  have hshift1 : EdwardsBridge.doubleSpec (acc118 rho) (shiftOnce118 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2866) (rho 2867) (rho 2868) (rho 2869) (rho 2870) (rho 2871) (rho 2872)
      (by simpa [acc118] using hacc)
      (by linear_combination r2865)
      (by linear_combination r2866)
      (by linear_combination r2867)
      (by linear_combination r2868)
      (by linear_combination r2869)
    simpa [acc118, shiftOnce118] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce118 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc118 rho) (shiftOnce118 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc118 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce118 rho) (shifted118 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2871) (rho 2872) (rho 2873) (rho 2874) (rho 2875) (rho 2876) (rho 2877)
      (by simpa [shiftOnce118] using hshift1On)
      (by linear_combination r2870)
      (by linear_combination r2871)
      (by linear_combination r2872)
      (by linear_combination r2873)
      (by linear_combination r2874)
    simpa [shiftOnce118, shifted118] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted118 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce118 rho) (shifted118 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce118 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 13) (rho 12)
      (base rho) (twice rho) (triple rho) (digit118 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 13) (rho 12)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 2879 + rho 2880, (1 : F) + rho 2882 + rho 2883⟩ := by
      constructor
      · refine ⟨(rho 2878 + (rho 258) - (0)), rho 2879, ?_, ?_, ?_⟩
        · linear_combination r2875 - (rho 12) * order_cast_zero
        · linear_combination r2876
        · linear_combination r2877
      · refine ⟨(rho 2881 + (rho 259) - ((1 : F))), rho 2882, ?_, ?_, ?_⟩
        · linear_combination r2878 - (rho 12) * order_cast_zero
        · linear_combination r2879
        · linear_combination r2880
    simpa [base, twice, triple, digit118] using hraw
  have hhigh : rho 13 =
      Bool.toZMod bits[12]! := by
    simpa only using rho_bit_of_map rho bits hbits 12 (by decide +kernel)
  have hlow : rho 12 =
      Bool.toZMod bits[11]! := by
    simpa only using rho_bit_of_map rho bits hbits 11 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[12]! bits[11]! (base rho) (twice rho) (triple rho)
    (digit118 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit118 rho) := by
    rw [hdigit]
    cases bits[12]! <;> cases bits[11]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted118 rho) (digit118 rho) (acc119 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2876) (rho 2877) (rho 2879 + rho 2880) ((1 : F) + rho 2882 + rho 2883)
      (rho 2884) (rho 2885) (rho 2886) (rho 2887) (rho 2888) (rho 2889)
      (by simpa [shifted118] using hshift2On)
      (by simpa [digit118] using hdigitOn)
      (by linear_combination r2881)
      (by linear_combination r2882)
      (by linear_combination r2883)
      (by linear_combination r2884)
      (by linear_combination r2885)
      (by linear_combination r2886)
    simpa [shifted118, digit118, acc119] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc119 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted118 rho) (digit118 rho) (acc119 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted118 rho) (digit118 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 13) (rho 12)
      (base rho) (twice rho) (triple rho) (acc118 rho)
      (acc119 rho) :=
    ⟨shiftOnce118 rho, shifted118 rho, digit118 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window119 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc119 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[10]! (scalarBits rho)[9]!
        (base rho) (twice rho) (triple rho) (acc119 rho)
        (acc120 rho) ∧
      EdwardsBridge.onCurve (acc120 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p36, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart36 at p36
  rcases p36 with ⟨_, _, _, _, _, _, _, r2887, r2888, r2889, r2890, r2891, r2892, r2893, r2894, r2895, r2896, r2897, r2898, r2899, r2900, r2901, r2902, r2903, r2904, r2905, r2906, r2907, r2908, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2887 at r2887
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2888 at r2888
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2889 at r2889
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2890 at r2890
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2891 at r2891
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2892 at r2892
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2893 at r2893
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2894 at r2894
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2895 at r2895
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2896 at r2896
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2897 at r2897
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2898 at r2898
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2899 at r2899
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2900 at r2900
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2901 at r2901
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2902 at r2902
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2903 at r2903
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2904 at r2904
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2905 at r2905
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2906 at r2906
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2907 at r2907
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2908 at r2908
  have hshift1 : EdwardsBridge.doubleSpec (acc119 rho) (shiftOnce119 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2888) (rho 2889) (rho 2890) (rho 2891) (rho 2892) (rho 2893) (rho 2894)
      (by simpa [acc119] using hacc)
      (by linear_combination r2887)
      (by linear_combination r2888)
      (by linear_combination r2889)
      (by linear_combination r2890)
      (by linear_combination r2891)
    simpa [acc119, shiftOnce119] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce119 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc119 rho) (shiftOnce119 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc119 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce119 rho) (shifted119 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2893) (rho 2894) (rho 2895) (rho 2896) (rho 2897) (rho 2898) (rho 2899)
      (by simpa [shiftOnce119] using hshift1On)
      (by linear_combination r2892)
      (by linear_combination r2893)
      (by linear_combination r2894)
      (by linear_combination r2895)
      (by linear_combination r2896)
    simpa [shiftOnce119, shifted119] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted119 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce119 rho) (shifted119 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce119 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 11) (rho 10)
      (base rho) (twice rho) (triple rho) (digit119 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 11) (rho 10)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 2901 + rho 2902, (1 : F) + rho 2904 + rho 2905⟩ := by
      constructor
      · refine ⟨(rho 2900 + (rho 258) - (0)), rho 2901, ?_, ?_, ?_⟩
        · linear_combination r2897 - (rho 10) * order_cast_zero
        · linear_combination r2898
        · linear_combination r2899
      · refine ⟨(rho 2903 + (rho 259) - ((1 : F))), rho 2904, ?_, ?_, ?_⟩
        · linear_combination r2900 - (rho 10) * order_cast_zero
        · linear_combination r2901
        · linear_combination r2902
    simpa [base, twice, triple, digit119] using hraw
  have hhigh : rho 11 =
      Bool.toZMod bits[10]! := by
    simpa only using rho_bit_of_map rho bits hbits 10 (by decide +kernel)
  have hlow : rho 10 =
      Bool.toZMod bits[9]! := by
    simpa only using rho_bit_of_map rho bits hbits 9 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[10]! bits[9]! (base rho) (twice rho) (triple rho)
    (digit119 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit119 rho) := by
    rw [hdigit]
    cases bits[10]! <;> cases bits[9]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted119 rho) (digit119 rho) (acc120 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2898) (rho 2899) (rho 2901 + rho 2902) ((1 : F) + rho 2904 + rho 2905)
      (rho 2906) (rho 2907) (rho 2908) (rho 2909) (rho 2910) (rho 2911)
      (by simpa [shifted119] using hshift2On)
      (by simpa [digit119] using hdigitOn)
      (by linear_combination r2903)
      (by linear_combination r2904)
      (by linear_combination r2905)
      (by linear_combination r2906)
      (by linear_combination r2907)
      (by linear_combination r2908)
    simpa [shifted119, digit119, acc120] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc120 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted119 rho) (digit119 rho) (acc120 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted119 rho) (digit119 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 11) (rho 10)
      (base rho) (twice rho) (triple rho) (acc119 rho)
      (acc120 rho) :=
    ⟨shiftOnce119 rho, shifted119 rho, digit119 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.AckSupport
