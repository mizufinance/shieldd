import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1AckWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.AckSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem window18 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc18 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[212]! (scalarBits rho)[211]!
        (base rho) (twice rho) (triple rho) (acc18 rho)
        (acc19 rho) ∧
      EdwardsBridge.onCurve (acc19 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, p8, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart8 at p8
  rcases p8 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r665, r666, r667, r668, r669, r670, r671, r672, r673, r674, r675, r676, r677, r678, r679, r680, r681, r682, r683, r684, r685, r686, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow665 at r665
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow666 at r666
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow667 at r667
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow668 at r668
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow669 at r669
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow670 at r670
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow671 at r671
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow672 at r672
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow673 at r673
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow674 at r674
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow675 at r675
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow676 at r676
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow677 at r677
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow678 at r678
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow679 at r679
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow680 at r680
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow681 at r681
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow682 at r682
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow683 at r683
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow684 at r684
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow685 at r685
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow686 at r686
  have hshift1 : EdwardsBridge.doubleSpec (acc18 rho) (shiftOnce18 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 666) (rho 667) (rho 668) (rho 669) (rho 670) (rho 671) (rho 672)
      (by simpa [acc18] using hacc)
      (by linear_combination r665)
      (by linear_combination r666)
      (by linear_combination r667)
      (by linear_combination r668)
      (by linear_combination r669)
    simpa [acc18, shiftOnce18] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce18 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc18 rho) (shiftOnce18 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc18 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce18 rho) (shifted18 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 671) (rho 672) (rho 673) (rho 674) (rho 675) (rho 676) (rho 677)
      (by simpa [shiftOnce18] using hshift1On)
      (by linear_combination r670)
      (by linear_combination r671)
      (by linear_combination r672)
      (by linear_combination r673)
      (by linear_combination r674)
    simpa [shiftOnce18, shifted18] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted18 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce18 rho) (shifted18 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce18 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 213) (rho 212)
      (base rho) (twice rho) (triple rho) (digit18 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 213) (rho 212)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 679 + rho 680, (1 : F) + rho 682 + rho 683⟩ := by
      constructor
      · refine ⟨(rho 678 + (rho 258) - (0)), rho 679, ?_, ?_, ?_⟩
        · linear_combination r675 - (rho 212) * order_cast_zero
        · linear_combination r676
        · linear_combination r677
      · refine ⟨(rho 681 + (rho 259) - ((1 : F))), rho 682, ?_, ?_, ?_⟩
        · linear_combination r678 - (rho 212) * order_cast_zero
        · linear_combination r679
        · linear_combination r680
    simpa [base, twice, triple, digit18] using hraw
  have hhigh : rho 213 =
      Bool.toZMod bits[212]! := by
    simpa only using rho_bit_of_map rho bits hbits 212 (by decide +kernel)
  have hlow : rho 212 =
      Bool.toZMod bits[211]! := by
    simpa only using rho_bit_of_map rho bits hbits 211 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[212]! bits[211]! (base rho) (twice rho) (triple rho)
    (digit18 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit18 rho) := by
    rw [hdigit]
    cases bits[212]! <;> cases bits[211]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted18 rho) (digit18 rho) (acc19 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 676) (rho 677) (rho 679 + rho 680) ((1 : F) + rho 682 + rho 683)
      (rho 684) (rho 685) (rho 686) (rho 687) (rho 688) (rho 689)
      (by simpa [shifted18] using hshift2On)
      (by simpa [digit18] using hdigitOn)
      (by linear_combination r681)
      (by linear_combination r682)
      (by linear_combination r683)
      (by linear_combination r684)
      (by linear_combination r685)
      (by linear_combination r686)
    simpa [shifted18, digit18, acc19] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc19 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted18 rho) (digit18 rho) (acc19 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted18 rho) (digit18 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 213) (rho 212)
      (base rho) (twice rho) (triple rho) (acc18 rho)
      (acc19 rho) :=
    ⟨shiftOnce18 rho, shifted18 rho, digit18 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window19 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc19 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[210]! (scalarBits rho)[209]!
        (base rho) (twice rho) (triple rho) (acc19 rho)
        (acc20 rho) ∧
      EdwardsBridge.onCurve (acc20 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, p8, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart8 at p8
  rcases p8 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r687, r688, r689, r690, r691, r692, r693, r694, r695, r696, r697, r698, r699, r700, r701, r702, r703, r704, r705, r706, r707, r708, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow687 at r687
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow688 at r688
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow689 at r689
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow690 at r690
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow691 at r691
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow692 at r692
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow693 at r693
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow694 at r694
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow695 at r695
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow696 at r696
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow697 at r697
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow698 at r698
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow699 at r699
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow700 at r700
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow701 at r701
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow702 at r702
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow703 at r703
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow704 at r704
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow705 at r705
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow706 at r706
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow707 at r707
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow708 at r708
  have hshift1 : EdwardsBridge.doubleSpec (acc19 rho) (shiftOnce19 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 688) (rho 689) (rho 690) (rho 691) (rho 692) (rho 693) (rho 694)
      (by simpa [acc19] using hacc)
      (by linear_combination r687)
      (by linear_combination r688)
      (by linear_combination r689)
      (by linear_combination r690)
      (by linear_combination r691)
    simpa [acc19, shiftOnce19] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce19 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc19 rho) (shiftOnce19 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc19 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce19 rho) (shifted19 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 693) (rho 694) (rho 695) (rho 696) (rho 697) (rho 698) (rho 699)
      (by simpa [shiftOnce19] using hshift1On)
      (by linear_combination r692)
      (by linear_combination r693)
      (by linear_combination r694)
      (by linear_combination r695)
      (by linear_combination r696)
    simpa [shiftOnce19, shifted19] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted19 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce19 rho) (shifted19 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce19 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 211) (rho 210)
      (base rho) (twice rho) (triple rho) (digit19 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 211) (rho 210)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 701 + rho 702, (1 : F) + rho 704 + rho 705⟩ := by
      constructor
      · refine ⟨(rho 700 + (rho 258) - (0)), rho 701, ?_, ?_, ?_⟩
        · linear_combination r697 - (rho 210) * order_cast_zero
        · linear_combination r698
        · linear_combination r699
      · refine ⟨(rho 703 + (rho 259) - ((1 : F))), rho 704, ?_, ?_, ?_⟩
        · linear_combination r700 - (rho 210) * order_cast_zero
        · linear_combination r701
        · linear_combination r702
    simpa [base, twice, triple, digit19] using hraw
  have hhigh : rho 211 =
      Bool.toZMod bits[210]! := by
    simpa only using rho_bit_of_map rho bits hbits 210 (by decide +kernel)
  have hlow : rho 210 =
      Bool.toZMod bits[209]! := by
    simpa only using rho_bit_of_map rho bits hbits 209 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[210]! bits[209]! (base rho) (twice rho) (triple rho)
    (digit19 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit19 rho) := by
    rw [hdigit]
    cases bits[210]! <;> cases bits[209]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted19 rho) (digit19 rho) (acc20 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 698) (rho 699) (rho 701 + rho 702) ((1 : F) + rho 704 + rho 705)
      (rho 706) (rho 707) (rho 708) (rho 709) (rho 710) (rho 711)
      (by simpa [shifted19] using hshift2On)
      (by simpa [digit19] using hdigitOn)
      (by linear_combination r703)
      (by linear_combination r704)
      (by linear_combination r705)
      (by linear_combination r706)
      (by linear_combination r707)
      (by linear_combination r708)
    simpa [shifted19, digit19, acc20] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc20 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted19 rho) (digit19 rho) (acc20 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted19 rho) (digit19 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 211) (rho 210)
      (base rho) (twice rho) (triple rho) (acc19 rho)
      (acc20 rho) :=
    ⟨shiftOnce19 rho, shifted19 rho, digit19 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window20 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc20 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[208]! (scalarBits rho)[207]!
        (base rho) (twice rho) (triple rho) (acc20 rho)
        (acc21 rho) ∧
      EdwardsBridge.onCurve (acc21 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, p8, p9,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart8 at p8
  rcases p8 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r709, r710, r711, r712, r713, r714, r715, r716, r717, r718, r719⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart9 at p9
  rcases p9 with ⟨r720, r721, r722, r723, r724, r725, r726, r727, r728, r729, r730, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow709 at r709
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow710 at r710
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow711 at r711
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow712 at r712
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow713 at r713
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow714 at r714
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow715 at r715
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow716 at r716
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow717 at r717
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow718 at r718
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow719 at r719
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow720 at r720
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow721 at r721
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow722 at r722
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow723 at r723
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow724 at r724
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow725 at r725
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow726 at r726
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow727 at r727
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow728 at r728
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow729 at r729
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow730 at r730
  have hshift1 : EdwardsBridge.doubleSpec (acc20 rho) (shiftOnce20 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 710) (rho 711) (rho 712) (rho 713) (rho 714) (rho 715) (rho 716)
      (by simpa [acc20] using hacc)
      (by linear_combination r709)
      (by linear_combination r710)
      (by linear_combination r711)
      (by linear_combination r712)
      (by linear_combination r713)
    simpa [acc20, shiftOnce20] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce20 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc20 rho) (shiftOnce20 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc20 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce20 rho) (shifted20 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 715) (rho 716) (rho 717) (rho 718) (rho 719) (rho 720) (rho 721)
      (by simpa [shiftOnce20] using hshift1On)
      (by linear_combination r714)
      (by linear_combination r715)
      (by linear_combination r716)
      (by linear_combination r717)
      (by linear_combination r718)
    simpa [shiftOnce20, shifted20] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted20 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce20 rho) (shifted20 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce20 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 209) (rho 208)
      (base rho) (twice rho) (triple rho) (digit20 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 209) (rho 208)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 723 + rho 724, (1 : F) + rho 726 + rho 727⟩ := by
      constructor
      · refine ⟨(rho 722 + (rho 258) - (0)), rho 723, ?_, ?_, ?_⟩
        · linear_combination r719 - (rho 208) * order_cast_zero
        · linear_combination r720
        · linear_combination r721
      · refine ⟨(rho 725 + (rho 259) - ((1 : F))), rho 726, ?_, ?_, ?_⟩
        · linear_combination r722 - (rho 208) * order_cast_zero
        · linear_combination r723
        · linear_combination r724
    simpa [base, twice, triple, digit20] using hraw
  have hhigh : rho 209 =
      Bool.toZMod bits[208]! := by
    simpa only using rho_bit_of_map rho bits hbits 208 (by decide +kernel)
  have hlow : rho 208 =
      Bool.toZMod bits[207]! := by
    simpa only using rho_bit_of_map rho bits hbits 207 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[208]! bits[207]! (base rho) (twice rho) (triple rho)
    (digit20 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit20 rho) := by
    rw [hdigit]
    cases bits[208]! <;> cases bits[207]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted20 rho) (digit20 rho) (acc21 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 720) (rho 721) (rho 723 + rho 724) ((1 : F) + rho 726 + rho 727)
      (rho 728) (rho 729) (rho 730) (rho 731) (rho 732) (rho 733)
      (by simpa [shifted20] using hshift2On)
      (by simpa [digit20] using hdigitOn)
      (by linear_combination r725)
      (by linear_combination r726)
      (by linear_combination r727)
      (by linear_combination r728)
      (by linear_combination r729)
      (by linear_combination r730)
    simpa [shifted20, digit20, acc21] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc21 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted20 rho) (digit20 rho) (acc21 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted20 rho) (digit20 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 209) (rho 208)
      (base rho) (twice rho) (triple rho) (acc20 rho)
      (acc21 rho) :=
    ⟨shiftOnce20 rho, shifted20 rho, digit20 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window21 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc21 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[206]! (scalarBits rho)[205]!
        (base rho) (twice rho) (triple rho) (acc21 rho)
        (acc22 rho) ∧
      EdwardsBridge.onCurve (acc22 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, p9,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart9 at p9
  rcases p9 with ⟨_, _, _, _, _, _, _, _, _, _, _, r731, r732, r733, r734, r735, r736, r737, r738, r739, r740, r741, r742, r743, r744, r745, r746, r747, r748, r749, r750, r751, r752, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow731 at r731
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow732 at r732
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow733 at r733
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow734 at r734
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow735 at r735
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow736 at r736
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow737 at r737
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow738 at r738
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow739 at r739
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow740 at r740
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow741 at r741
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow742 at r742
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow743 at r743
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow744 at r744
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow745 at r745
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow746 at r746
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow747 at r747
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow748 at r748
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow749 at r749
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow750 at r750
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow751 at r751
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow752 at r752
  have hshift1 : EdwardsBridge.doubleSpec (acc21 rho) (shiftOnce21 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 732) (rho 733) (rho 734) (rho 735) (rho 736) (rho 737) (rho 738)
      (by simpa [acc21] using hacc)
      (by linear_combination r731)
      (by linear_combination r732)
      (by linear_combination r733)
      (by linear_combination r734)
      (by linear_combination r735)
    simpa [acc21, shiftOnce21] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce21 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc21 rho) (shiftOnce21 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc21 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce21 rho) (shifted21 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 737) (rho 738) (rho 739) (rho 740) (rho 741) (rho 742) (rho 743)
      (by simpa [shiftOnce21] using hshift1On)
      (by linear_combination r736)
      (by linear_combination r737)
      (by linear_combination r738)
      (by linear_combination r739)
      (by linear_combination r740)
    simpa [shiftOnce21, shifted21] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted21 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce21 rho) (shifted21 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce21 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 207) (rho 206)
      (base rho) (twice rho) (triple rho) (digit21 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 207) (rho 206)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 745 + rho 746, (1 : F) + rho 748 + rho 749⟩ := by
      constructor
      · refine ⟨(rho 744 + (rho 258) - (0)), rho 745, ?_, ?_, ?_⟩
        · linear_combination r741 - (rho 206) * order_cast_zero
        · linear_combination r742
        · linear_combination r743
      · refine ⟨(rho 747 + (rho 259) - ((1 : F))), rho 748, ?_, ?_, ?_⟩
        · linear_combination r744 - (rho 206) * order_cast_zero
        · linear_combination r745
        · linear_combination r746
    simpa [base, twice, triple, digit21] using hraw
  have hhigh : rho 207 =
      Bool.toZMod bits[206]! := by
    simpa only using rho_bit_of_map rho bits hbits 206 (by decide +kernel)
  have hlow : rho 206 =
      Bool.toZMod bits[205]! := by
    simpa only using rho_bit_of_map rho bits hbits 205 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[206]! bits[205]! (base rho) (twice rho) (triple rho)
    (digit21 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit21 rho) := by
    rw [hdigit]
    cases bits[206]! <;> cases bits[205]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted21 rho) (digit21 rho) (acc22 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 742) (rho 743) (rho 745 + rho 746) ((1 : F) + rho 748 + rho 749)
      (rho 750) (rho 751) (rho 752) (rho 753) (rho 754) (rho 755)
      (by simpa [shifted21] using hshift2On)
      (by simpa [digit21] using hdigitOn)
      (by linear_combination r747)
      (by linear_combination r748)
      (by linear_combination r749)
      (by linear_combination r750)
      (by linear_combination r751)
      (by linear_combination r752)
    simpa [shifted21, digit21, acc22] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc22 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted21 rho) (digit21 rho) (acc22 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted21 rho) (digit21 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 207) (rho 206)
      (base rho) (twice rho) (triple rho) (acc21 rho)
      (acc22 rho) :=
    ⟨shiftOnce21 rho, shifted21 rho, digit21 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window22 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc22 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[204]! (scalarBits rho)[203]!
        (base rho) (twice rho) (triple rho) (acc22 rho)
        (acc23 rho) ∧
      EdwardsBridge.onCurve (acc23 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, p9,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart9 at p9
  rcases p9 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r753, r754, r755, r756, r757, r758, r759, r760, r761, r762, r763, r764, r765, r766, r767, r768, r769, r770, r771, r772, r773, r774, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow753 at r753
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow754 at r754
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow755 at r755
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow756 at r756
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow757 at r757
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow758 at r758
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow759 at r759
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow760 at r760
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow761 at r761
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow762 at r762
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow763 at r763
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow764 at r764
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow765 at r765
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow766 at r766
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow767 at r767
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow768 at r768
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow769 at r769
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow770 at r770
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow771 at r771
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow772 at r772
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow773 at r773
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow774 at r774
  have hshift1 : EdwardsBridge.doubleSpec (acc22 rho) (shiftOnce22 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 754) (rho 755) (rho 756) (rho 757) (rho 758) (rho 759) (rho 760)
      (by simpa [acc22] using hacc)
      (by linear_combination r753)
      (by linear_combination r754)
      (by linear_combination r755)
      (by linear_combination r756)
      (by linear_combination r757)
    simpa [acc22, shiftOnce22] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce22 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc22 rho) (shiftOnce22 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc22 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce22 rho) (shifted22 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 759) (rho 760) (rho 761) (rho 762) (rho 763) (rho 764) (rho 765)
      (by simpa [shiftOnce22] using hshift1On)
      (by linear_combination r758)
      (by linear_combination r759)
      (by linear_combination r760)
      (by linear_combination r761)
      (by linear_combination r762)
    simpa [shiftOnce22, shifted22] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted22 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce22 rho) (shifted22 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce22 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 205) (rho 204)
      (base rho) (twice rho) (triple rho) (digit22 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 205) (rho 204)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 767 + rho 768, (1 : F) + rho 770 + rho 771⟩ := by
      constructor
      · refine ⟨(rho 766 + (rho 258) - (0)), rho 767, ?_, ?_, ?_⟩
        · linear_combination r763 - (rho 204) * order_cast_zero
        · linear_combination r764
        · linear_combination r765
      · refine ⟨(rho 769 + (rho 259) - ((1 : F))), rho 770, ?_, ?_, ?_⟩
        · linear_combination r766 - (rho 204) * order_cast_zero
        · linear_combination r767
        · linear_combination r768
    simpa [base, twice, triple, digit22] using hraw
  have hhigh : rho 205 =
      Bool.toZMod bits[204]! := by
    simpa only using rho_bit_of_map rho bits hbits 204 (by decide +kernel)
  have hlow : rho 204 =
      Bool.toZMod bits[203]! := by
    simpa only using rho_bit_of_map rho bits hbits 203 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[204]! bits[203]! (base rho) (twice rho) (triple rho)
    (digit22 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit22 rho) := by
    rw [hdigit]
    cases bits[204]! <;> cases bits[203]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted22 rho) (digit22 rho) (acc23 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 764) (rho 765) (rho 767 + rho 768) ((1 : F) + rho 770 + rho 771)
      (rho 772) (rho 773) (rho 774) (rho 775) (rho 776) (rho 777)
      (by simpa [shifted22] using hshift2On)
      (by simpa [digit22] using hdigitOn)
      (by linear_combination r769)
      (by linear_combination r770)
      (by linear_combination r771)
      (by linear_combination r772)
      (by linear_combination r773)
      (by linear_combination r774)
    simpa [shifted22, digit22, acc23] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc23 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted22 rho) (digit22 rho) (acc23 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted22 rho) (digit22 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 205) (rho 204)
      (base rho) (twice rho) (triple rho) (acc22 rho)
      (acc23 rho) :=
    ⟨shiftOnce22 rho, shifted22 rho, digit22 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window23 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc23 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[202]! (scalarBits rho)[201]!
        (base rho) (twice rho) (triple rho) (acc23 rho)
        (acc24 rho) ∧
      EdwardsBridge.onCurve (acc24 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, p9,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart9 at p9
  rcases p9 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r775, r776, r777, r778, r779, r780, r781, r782, r783, r784, r785, r786, r787, r788, r789, r790, r791, r792, r793, r794, r795, r796, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow775 at r775
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow776 at r776
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow777 at r777
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow778 at r778
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow779 at r779
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow780 at r780
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow781 at r781
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow782 at r782
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow783 at r783
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow784 at r784
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow785 at r785
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow786 at r786
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow787 at r787
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow788 at r788
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow789 at r789
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow790 at r790
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow791 at r791
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow792 at r792
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow793 at r793
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow794 at r794
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow795 at r795
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow796 at r796
  have hshift1 : EdwardsBridge.doubleSpec (acc23 rho) (shiftOnce23 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 776) (rho 777) (rho 778) (rho 779) (rho 780) (rho 781) (rho 782)
      (by simpa [acc23] using hacc)
      (by linear_combination r775)
      (by linear_combination r776)
      (by linear_combination r777)
      (by linear_combination r778)
      (by linear_combination r779)
    simpa [acc23, shiftOnce23] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce23 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc23 rho) (shiftOnce23 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc23 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce23 rho) (shifted23 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 781) (rho 782) (rho 783) (rho 784) (rho 785) (rho 786) (rho 787)
      (by simpa [shiftOnce23] using hshift1On)
      (by linear_combination r780)
      (by linear_combination r781)
      (by linear_combination r782)
      (by linear_combination r783)
      (by linear_combination r784)
    simpa [shiftOnce23, shifted23] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted23 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce23 rho) (shifted23 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce23 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 203) (rho 202)
      (base rho) (twice rho) (triple rho) (digit23 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 203) (rho 202)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 789 + rho 790, (1 : F) + rho 792 + rho 793⟩ := by
      constructor
      · refine ⟨(rho 788 + (rho 258) - (0)), rho 789, ?_, ?_, ?_⟩
        · linear_combination r785 - (rho 202) * order_cast_zero
        · linear_combination r786
        · linear_combination r787
      · refine ⟨(rho 791 + (rho 259) - ((1 : F))), rho 792, ?_, ?_, ?_⟩
        · linear_combination r788 - (rho 202) * order_cast_zero
        · linear_combination r789
        · linear_combination r790
    simpa [base, twice, triple, digit23] using hraw
  have hhigh : rho 203 =
      Bool.toZMod bits[202]! := by
    simpa only using rho_bit_of_map rho bits hbits 202 (by decide +kernel)
  have hlow : rho 202 =
      Bool.toZMod bits[201]! := by
    simpa only using rho_bit_of_map rho bits hbits 201 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[202]! bits[201]! (base rho) (twice rho) (triple rho)
    (digit23 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit23 rho) := by
    rw [hdigit]
    cases bits[202]! <;> cases bits[201]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted23 rho) (digit23 rho) (acc24 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 786) (rho 787) (rho 789 + rho 790) ((1 : F) + rho 792 + rho 793)
      (rho 794) (rho 795) (rho 796) (rho 797) (rho 798) (rho 799)
      (by simpa [shifted23] using hshift2On)
      (by simpa [digit23] using hdigitOn)
      (by linear_combination r791)
      (by linear_combination r792)
      (by linear_combination r793)
      (by linear_combination r794)
      (by linear_combination r795)
      (by linear_combination r796)
    simpa [shifted23, digit23, acc24] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc24 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted23 rho) (digit23 rho) (acc24 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted23 rho) (digit23 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 203) (rho 202)
      (base rho) (twice rho) (triple rho) (acc23 rho)
      (acc24 rho) :=
    ⟨shiftOnce23 rho, shifted23 rho, digit23 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.AckSupport
