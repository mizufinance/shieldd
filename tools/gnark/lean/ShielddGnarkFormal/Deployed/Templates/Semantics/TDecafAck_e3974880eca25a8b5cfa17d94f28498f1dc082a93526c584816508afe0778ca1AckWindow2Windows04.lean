import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1AckWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.AckSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem window24 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc24 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[200]! (scalarBits rho)[199]!
        (base rho) (twice rho) (triple rho) (acc24 rho)
        (acc25 rho) ∧
      EdwardsBridge.onCurve (acc25 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, p9,
    p10, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart9 at p9
  rcases p9 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r797, r798, r799⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart10 at p10
  rcases p10 with ⟨r800, r801, r802, r803, r804, r805, r806, r807, r808, r809, r810, r811, r812, r813, r814, r815, r816, r817, r818, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow797 at r797
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow798 at r798
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow799 at r799
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow800 at r800
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow801 at r801
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow802 at r802
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow803 at r803
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow804 at r804
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow805 at r805
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow806 at r806
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow807 at r807
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow808 at r808
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow809 at r809
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow810 at r810
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow811 at r811
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow812 at r812
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow813 at r813
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow814 at r814
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow815 at r815
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow816 at r816
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow817 at r817
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow818 at r818
  have hshift1 : EdwardsBridge.doubleSpec (acc24 rho) (shiftOnce24 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 798) (rho 799) (rho 800) (rho 801) (rho 802) (rho 803) (rho 804)
      (by simpa [acc24] using hacc)
      (by linear_combination r797)
      (by linear_combination r798)
      (by linear_combination r799)
      (by linear_combination r800)
      (by linear_combination r801)
    simpa [acc24, shiftOnce24] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce24 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc24 rho) (shiftOnce24 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc24 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce24 rho) (shifted24 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 803) (rho 804) (rho 805) (rho 806) (rho 807) (rho 808) (rho 809)
      (by simpa [shiftOnce24] using hshift1On)
      (by linear_combination r802)
      (by linear_combination r803)
      (by linear_combination r804)
      (by linear_combination r805)
      (by linear_combination r806)
    simpa [shiftOnce24, shifted24] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted24 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce24 rho) (shifted24 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce24 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 201) (rho 200)
      (base rho) (twice rho) (triple rho) (digit24 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 201) (rho 200)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 811 + rho 812, (1 : F) + rho 814 + rho 815⟩ := by
      constructor
      · refine ⟨(rho 810 + (rho 258) - (0)), rho 811, ?_, ?_, ?_⟩
        · linear_combination r807 - (rho 200) * order_cast_zero
        · linear_combination r808
        · linear_combination r809
      · refine ⟨(rho 813 + (rho 259) - ((1 : F))), rho 814, ?_, ?_, ?_⟩
        · linear_combination r810 - (rho 200) * order_cast_zero
        · linear_combination r811
        · linear_combination r812
    simpa [base, twice, triple, digit24] using hraw
  have hhigh : rho 201 =
      Bool.toZMod bits[200]! := by
    simpa only using rho_bit_of_map rho bits hbits 200 (by decide +kernel)
  have hlow : rho 200 =
      Bool.toZMod bits[199]! := by
    simpa only using rho_bit_of_map rho bits hbits 199 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[200]! bits[199]! (base rho) (twice rho) (triple rho)
    (digit24 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit24 rho) := by
    rw [hdigit]
    cases bits[200]! <;> cases bits[199]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted24 rho) (digit24 rho) (acc25 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 808) (rho 809) (rho 811 + rho 812) ((1 : F) + rho 814 + rho 815)
      (rho 816) (rho 817) (rho 818) (rho 819) (rho 820) (rho 821)
      (by simpa [shifted24] using hshift2On)
      (by simpa [digit24] using hdigitOn)
      (by linear_combination r813)
      (by linear_combination r814)
      (by linear_combination r815)
      (by linear_combination r816)
      (by linear_combination r817)
      (by linear_combination r818)
    simpa [shifted24, digit24, acc25] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc25 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted24 rho) (digit24 rho) (acc25 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted24 rho) (digit24 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 201) (rho 200)
      (base rho) (twice rho) (triple rho) (acc24 rho)
      (acc25 rho) :=
    ⟨shiftOnce24 rho, shifted24 rho, digit24 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window25 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc25 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[198]! (scalarBits rho)[197]!
        (base rho) (twice rho) (triple rho) (acc25 rho)
        (acc26 rho) ∧
      EdwardsBridge.onCurve (acc26 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    p10, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart10 at p10
  rcases p10 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r819, r820, r821, r822, r823, r824, r825, r826, r827, r828, r829, r830, r831, r832, r833, r834, r835, r836, r837, r838, r839, r840, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow819 at r819
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow820 at r820
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow821 at r821
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow822 at r822
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow823 at r823
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow824 at r824
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow825 at r825
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow826 at r826
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow827 at r827
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow828 at r828
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow829 at r829
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow830 at r830
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow831 at r831
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow832 at r832
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow833 at r833
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow834 at r834
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow835 at r835
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow836 at r836
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow837 at r837
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow838 at r838
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow839 at r839
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow840 at r840
  have hshift1 : EdwardsBridge.doubleSpec (acc25 rho) (shiftOnce25 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 820) (rho 821) (rho 822) (rho 823) (rho 824) (rho 825) (rho 826)
      (by simpa [acc25] using hacc)
      (by linear_combination r819)
      (by linear_combination r820)
      (by linear_combination r821)
      (by linear_combination r822)
      (by linear_combination r823)
    simpa [acc25, shiftOnce25] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce25 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc25 rho) (shiftOnce25 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc25 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce25 rho) (shifted25 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 825) (rho 826) (rho 827) (rho 828) (rho 829) (rho 830) (rho 831)
      (by simpa [shiftOnce25] using hshift1On)
      (by linear_combination r824)
      (by linear_combination r825)
      (by linear_combination r826)
      (by linear_combination r827)
      (by linear_combination r828)
    simpa [shiftOnce25, shifted25] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted25 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce25 rho) (shifted25 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce25 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 199) (rho 198)
      (base rho) (twice rho) (triple rho) (digit25 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 199) (rho 198)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 833 + rho 834, (1 : F) + rho 836 + rho 837⟩ := by
      constructor
      · refine ⟨(rho 832 + (rho 258) - (0)), rho 833, ?_, ?_, ?_⟩
        · linear_combination r829 - (rho 198) * order_cast_zero
        · linear_combination r830
        · linear_combination r831
      · refine ⟨(rho 835 + (rho 259) - ((1 : F))), rho 836, ?_, ?_, ?_⟩
        · linear_combination r832 - (rho 198) * order_cast_zero
        · linear_combination r833
        · linear_combination r834
    simpa [base, twice, triple, digit25] using hraw
  have hhigh : rho 199 =
      Bool.toZMod bits[198]! := by
    simpa only using rho_bit_of_map rho bits hbits 198 (by decide +kernel)
  have hlow : rho 198 =
      Bool.toZMod bits[197]! := by
    simpa only using rho_bit_of_map rho bits hbits 197 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[198]! bits[197]! (base rho) (twice rho) (triple rho)
    (digit25 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit25 rho) := by
    rw [hdigit]
    cases bits[198]! <;> cases bits[197]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted25 rho) (digit25 rho) (acc26 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 830) (rho 831) (rho 833 + rho 834) ((1 : F) + rho 836 + rho 837)
      (rho 838) (rho 839) (rho 840) (rho 841) (rho 842) (rho 843)
      (by simpa [shifted25] using hshift2On)
      (by simpa [digit25] using hdigitOn)
      (by linear_combination r835)
      (by linear_combination r836)
      (by linear_combination r837)
      (by linear_combination r838)
      (by linear_combination r839)
      (by linear_combination r840)
    simpa [shifted25, digit25, acc26] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc26 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted25 rho) (digit25 rho) (acc26 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted25 rho) (digit25 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 199) (rho 198)
      (base rho) (twice rho) (triple rho) (acc25 rho)
      (acc26 rho) :=
    ⟨shiftOnce25 rho, shifted25 rho, digit25 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window26 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc26 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[196]! (scalarBits rho)[195]!
        (base rho) (twice rho) (triple rho) (acc26 rho)
        (acc27 rho) ∧
      EdwardsBridge.onCurve (acc27 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    p10, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart10 at p10
  rcases p10 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r841, r842, r843, r844, r845, r846, r847, r848, r849, r850, r851, r852, r853, r854, r855, r856, r857, r858, r859, r860, r861, r862, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow841 at r841
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow842 at r842
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow843 at r843
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow844 at r844
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow845 at r845
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow846 at r846
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow847 at r847
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow848 at r848
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow849 at r849
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow850 at r850
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow851 at r851
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow852 at r852
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow853 at r853
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow854 at r854
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow855 at r855
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow856 at r856
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow857 at r857
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow858 at r858
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow859 at r859
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow860 at r860
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow861 at r861
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow862 at r862
  have hshift1 : EdwardsBridge.doubleSpec (acc26 rho) (shiftOnce26 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 842) (rho 843) (rho 844) (rho 845) (rho 846) (rho 847) (rho 848)
      (by simpa [acc26] using hacc)
      (by linear_combination r841)
      (by linear_combination r842)
      (by linear_combination r843)
      (by linear_combination r844)
      (by linear_combination r845)
    simpa [acc26, shiftOnce26] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce26 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc26 rho) (shiftOnce26 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc26 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce26 rho) (shifted26 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 847) (rho 848) (rho 849) (rho 850) (rho 851) (rho 852) (rho 853)
      (by simpa [shiftOnce26] using hshift1On)
      (by linear_combination r846)
      (by linear_combination r847)
      (by linear_combination r848)
      (by linear_combination r849)
      (by linear_combination r850)
    simpa [shiftOnce26, shifted26] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted26 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce26 rho) (shifted26 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce26 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 197) (rho 196)
      (base rho) (twice rho) (triple rho) (digit26 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 197) (rho 196)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 855 + rho 856, (1 : F) + rho 858 + rho 859⟩ := by
      constructor
      · refine ⟨(rho 854 + (rho 258) - (0)), rho 855, ?_, ?_, ?_⟩
        · linear_combination r851 - (rho 196) * order_cast_zero
        · linear_combination r852
        · linear_combination r853
      · refine ⟨(rho 857 + (rho 259) - ((1 : F))), rho 858, ?_, ?_, ?_⟩
        · linear_combination r854 - (rho 196) * order_cast_zero
        · linear_combination r855
        · linear_combination r856
    simpa [base, twice, triple, digit26] using hraw
  have hhigh : rho 197 =
      Bool.toZMod bits[196]! := by
    simpa only using rho_bit_of_map rho bits hbits 196 (by decide +kernel)
  have hlow : rho 196 =
      Bool.toZMod bits[195]! := by
    simpa only using rho_bit_of_map rho bits hbits 195 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[196]! bits[195]! (base rho) (twice rho) (triple rho)
    (digit26 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit26 rho) := by
    rw [hdigit]
    cases bits[196]! <;> cases bits[195]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted26 rho) (digit26 rho) (acc27 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 852) (rho 853) (rho 855 + rho 856) ((1 : F) + rho 858 + rho 859)
      (rho 860) (rho 861) (rho 862) (rho 863) (rho 864) (rho 865)
      (by simpa [shifted26] using hshift2On)
      (by simpa [digit26] using hdigitOn)
      (by linear_combination r857)
      (by linear_combination r858)
      (by linear_combination r859)
      (by linear_combination r860)
      (by linear_combination r861)
      (by linear_combination r862)
    simpa [shifted26, digit26, acc27] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc27 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted26 rho) (digit26 rho) (acc27 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted26 rho) (digit26 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 197) (rho 196)
      (base rho) (twice rho) (triple rho) (acc26 rho)
      (acc27 rho) :=
    ⟨shiftOnce26 rho, shifted26 rho, digit26 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window27 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc27 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[194]! (scalarBits rho)[193]!
        (base rho) (twice rho) (triple rho) (acc27 rho)
        (acc28 rho) ∧
      EdwardsBridge.onCurve (acc28 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    p10, p11, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart10 at p10
  rcases p10 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r863, r864, r865, r866, r867, r868, r869, r870, r871, r872, r873, r874, r875, r876, r877, r878, r879⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart11 at p11
  rcases p11 with ⟨r880, r881, r882, r883, r884, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow863 at r863
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow864 at r864
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow865 at r865
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow866 at r866
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow867 at r867
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow868 at r868
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow869 at r869
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow870 at r870
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow871 at r871
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow872 at r872
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow873 at r873
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow874 at r874
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow875 at r875
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow876 at r876
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow877 at r877
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow878 at r878
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow879 at r879
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow880 at r880
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow881 at r881
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow882 at r882
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow883 at r883
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow884 at r884
  have hshift1 : EdwardsBridge.doubleSpec (acc27 rho) (shiftOnce27 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 864) (rho 865) (rho 866) (rho 867) (rho 868) (rho 869) (rho 870)
      (by simpa [acc27] using hacc)
      (by linear_combination r863)
      (by linear_combination r864)
      (by linear_combination r865)
      (by linear_combination r866)
      (by linear_combination r867)
    simpa [acc27, shiftOnce27] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce27 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc27 rho) (shiftOnce27 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc27 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce27 rho) (shifted27 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 869) (rho 870) (rho 871) (rho 872) (rho 873) (rho 874) (rho 875)
      (by simpa [shiftOnce27] using hshift1On)
      (by linear_combination r868)
      (by linear_combination r869)
      (by linear_combination r870)
      (by linear_combination r871)
      (by linear_combination r872)
    simpa [shiftOnce27, shifted27] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted27 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce27 rho) (shifted27 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce27 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 195) (rho 194)
      (base rho) (twice rho) (triple rho) (digit27 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 195) (rho 194)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 877 + rho 878, (1 : F) + rho 880 + rho 881⟩ := by
      constructor
      · refine ⟨(rho 876 + (rho 258) - (0)), rho 877, ?_, ?_, ?_⟩
        · linear_combination r873 - (rho 194) * order_cast_zero
        · linear_combination r874
        · linear_combination r875
      · refine ⟨(rho 879 + (rho 259) - ((1 : F))), rho 880, ?_, ?_, ?_⟩
        · linear_combination r876 - (rho 194) * order_cast_zero
        · linear_combination r877
        · linear_combination r878
    simpa [base, twice, triple, digit27] using hraw
  have hhigh : rho 195 =
      Bool.toZMod bits[194]! := by
    simpa only using rho_bit_of_map rho bits hbits 194 (by decide +kernel)
  have hlow : rho 194 =
      Bool.toZMod bits[193]! := by
    simpa only using rho_bit_of_map rho bits hbits 193 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[194]! bits[193]! (base rho) (twice rho) (triple rho)
    (digit27 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit27 rho) := by
    rw [hdigit]
    cases bits[194]! <;> cases bits[193]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted27 rho) (digit27 rho) (acc28 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 874) (rho 875) (rho 877 + rho 878) ((1 : F) + rho 880 + rho 881)
      (rho 882) (rho 883) (rho 884) (rho 885) (rho 886) (rho 887)
      (by simpa [shifted27] using hshift2On)
      (by simpa [digit27] using hdigitOn)
      (by linear_combination r879)
      (by linear_combination r880)
      (by linear_combination r881)
      (by linear_combination r882)
      (by linear_combination r883)
      (by linear_combination r884)
    simpa [shifted27, digit27, acc28] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc28 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted27 rho) (digit27 rho) (acc28 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted27 rho) (digit27 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 195) (rho 194)
      (base rho) (twice rho) (triple rho) (acc27 rho)
      (acc28 rho) :=
    ⟨shiftOnce27 rho, shifted27 rho, digit27 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window28 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc28 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[192]! (scalarBits rho)[191]!
        (base rho) (twice rho) (triple rho) (acc28 rho)
        (acc29 rho) ∧
      EdwardsBridge.onCurve (acc29 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, p11, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart11 at p11
  rcases p11 with ⟨_, _, _, _, _, r885, r886, r887, r888, r889, r890, r891, r892, r893, r894, r895, r896, r897, r898, r899, r900, r901, r902, r903, r904, r905, r906, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow885 at r885
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow886 at r886
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow887 at r887
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow888 at r888
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow889 at r889
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow890 at r890
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow891 at r891
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow892 at r892
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow893 at r893
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow894 at r894
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow895 at r895
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow896 at r896
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow897 at r897
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow898 at r898
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow899 at r899
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow900 at r900
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow901 at r901
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow902 at r902
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow903 at r903
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow904 at r904
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow905 at r905
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow906 at r906
  have hshift1 : EdwardsBridge.doubleSpec (acc28 rho) (shiftOnce28 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 886) (rho 887) (rho 888) (rho 889) (rho 890) (rho 891) (rho 892)
      (by simpa [acc28] using hacc)
      (by linear_combination r885)
      (by linear_combination r886)
      (by linear_combination r887)
      (by linear_combination r888)
      (by linear_combination r889)
    simpa [acc28, shiftOnce28] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce28 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc28 rho) (shiftOnce28 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc28 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce28 rho) (shifted28 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 891) (rho 892) (rho 893) (rho 894) (rho 895) (rho 896) (rho 897)
      (by simpa [shiftOnce28] using hshift1On)
      (by linear_combination r890)
      (by linear_combination r891)
      (by linear_combination r892)
      (by linear_combination r893)
      (by linear_combination r894)
    simpa [shiftOnce28, shifted28] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted28 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce28 rho) (shifted28 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce28 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 193) (rho 192)
      (base rho) (twice rho) (triple rho) (digit28 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 193) (rho 192)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 899 + rho 900, (1 : F) + rho 902 + rho 903⟩ := by
      constructor
      · refine ⟨(rho 898 + (rho 258) - (0)), rho 899, ?_, ?_, ?_⟩
        · linear_combination r895 - (rho 192) * order_cast_zero
        · linear_combination r896
        · linear_combination r897
      · refine ⟨(rho 901 + (rho 259) - ((1 : F))), rho 902, ?_, ?_, ?_⟩
        · linear_combination r898 - (rho 192) * order_cast_zero
        · linear_combination r899
        · linear_combination r900
    simpa [base, twice, triple, digit28] using hraw
  have hhigh : rho 193 =
      Bool.toZMod bits[192]! := by
    simpa only using rho_bit_of_map rho bits hbits 192 (by decide +kernel)
  have hlow : rho 192 =
      Bool.toZMod bits[191]! := by
    simpa only using rho_bit_of_map rho bits hbits 191 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[192]! bits[191]! (base rho) (twice rho) (triple rho)
    (digit28 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit28 rho) := by
    rw [hdigit]
    cases bits[192]! <;> cases bits[191]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted28 rho) (digit28 rho) (acc29 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 896) (rho 897) (rho 899 + rho 900) ((1 : F) + rho 902 + rho 903)
      (rho 904) (rho 905) (rho 906) (rho 907) (rho 908) (rho 909)
      (by simpa [shifted28] using hshift2On)
      (by simpa [digit28] using hdigitOn)
      (by linear_combination r901)
      (by linear_combination r902)
      (by linear_combination r903)
      (by linear_combination r904)
      (by linear_combination r905)
      (by linear_combination r906)
    simpa [shifted28, digit28, acc29] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc29 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted28 rho) (digit28 rho) (acc29 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted28 rho) (digit28 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 193) (rho 192)
      (base rho) (twice rho) (triple rho) (acc28 rho)
      (acc29 rho) :=
    ⟨shiftOnce28 rho, shifted28 rho, digit28 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window29 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc29 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[190]! (scalarBits rho)[189]!
        (base rho) (twice rho) (triple rho) (acc29 rho)
        (acc30 rho) ∧
      EdwardsBridge.onCurve (acc30 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, p11, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart11 at p11
  rcases p11 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r907, r908, r909, r910, r911, r912, r913, r914, r915, r916, r917, r918, r919, r920, r921, r922, r923, r924, r925, r926, r927, r928, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow907 at r907
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow908 at r908
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow909 at r909
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow910 at r910
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow911 at r911
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow912 at r912
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow913 at r913
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow914 at r914
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow915 at r915
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow916 at r916
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow917 at r917
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow918 at r918
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow919 at r919
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow920 at r920
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow921 at r921
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow922 at r922
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow923 at r923
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow924 at r924
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow925 at r925
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow926 at r926
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow927 at r927
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow928 at r928
  have hshift1 : EdwardsBridge.doubleSpec (acc29 rho) (shiftOnce29 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 908) (rho 909) (rho 910) (rho 911) (rho 912) (rho 913) (rho 914)
      (by simpa [acc29] using hacc)
      (by linear_combination r907)
      (by linear_combination r908)
      (by linear_combination r909)
      (by linear_combination r910)
      (by linear_combination r911)
    simpa [acc29, shiftOnce29] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce29 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc29 rho) (shiftOnce29 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc29 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce29 rho) (shifted29 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 913) (rho 914) (rho 915) (rho 916) (rho 917) (rho 918) (rho 919)
      (by simpa [shiftOnce29] using hshift1On)
      (by linear_combination r912)
      (by linear_combination r913)
      (by linear_combination r914)
      (by linear_combination r915)
      (by linear_combination r916)
    simpa [shiftOnce29, shifted29] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted29 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce29 rho) (shifted29 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce29 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 191) (rho 190)
      (base rho) (twice rho) (triple rho) (digit29 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 191) (rho 190)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 921 + rho 922, (1 : F) + rho 924 + rho 925⟩ := by
      constructor
      · refine ⟨(rho 920 + (rho 258) - (0)), rho 921, ?_, ?_, ?_⟩
        · linear_combination r917 - (rho 190) * order_cast_zero
        · linear_combination r918
        · linear_combination r919
      · refine ⟨(rho 923 + (rho 259) - ((1 : F))), rho 924, ?_, ?_, ?_⟩
        · linear_combination r920 - (rho 190) * order_cast_zero
        · linear_combination r921
        · linear_combination r922
    simpa [base, twice, triple, digit29] using hraw
  have hhigh : rho 191 =
      Bool.toZMod bits[190]! := by
    simpa only using rho_bit_of_map rho bits hbits 190 (by decide +kernel)
  have hlow : rho 190 =
      Bool.toZMod bits[189]! := by
    simpa only using rho_bit_of_map rho bits hbits 189 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[190]! bits[189]! (base rho) (twice rho) (triple rho)
    (digit29 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit29 rho) := by
    rw [hdigit]
    cases bits[190]! <;> cases bits[189]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted29 rho) (digit29 rho) (acc30 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 918) (rho 919) (rho 921 + rho 922) ((1 : F) + rho 924 + rho 925)
      (rho 926) (rho 927) (rho 928) (rho 929) (rho 930) (rho 931)
      (by simpa [shifted29] using hshift2On)
      (by simpa [digit29] using hdigitOn)
      (by linear_combination r923)
      (by linear_combination r924)
      (by linear_combination r925)
      (by linear_combination r926)
      (by linear_combination r927)
      (by linear_combination r928)
    simpa [shifted29, digit29, acc30] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc30 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted29 rho) (digit29 rho) (acc30 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted29 rho) (digit29 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 191) (rho 190)
      (base rho) (twice rho) (triple rho) (acc29 rho)
      (acc30 rho) :=
    ⟨shiftOnce29 rho, shifted29 rho, digit29 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.AckSupport
